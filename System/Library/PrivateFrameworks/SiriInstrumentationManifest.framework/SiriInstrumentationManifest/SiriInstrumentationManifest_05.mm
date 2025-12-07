uint64_t sub_266F9E584(uint64_t a1)
{
  v2 = sub_266F9E688(&qword_2800F1488, &protocol conformance descriptor for FLOWSchemaFLOWMediaType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F9E5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F9E688(&qword_2800F1488, &protocol conformance descriptor for FLOWSchemaFLOWMediaType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F9E688(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMediaType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWMessageType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267436A10, isUniquelyReferenced_nonNull_native);
  *v3 = v29;

  v1(v35, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267436A30, v8);
  *v7 = v30;

  v5(v35, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267436A50, v12);
  *v11 = v31;

  v9(v35, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267436A70, v16);
  *v15 = v32;

  v13(v35, 0);
  v17 = sub_266ECB128(&unk_287885CE8);
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
  sub_266ECD368(4, 0xD000000000000018, 0x8000000267436A90, v27);
  *v26 = v34;

  return v24(v35, 0);
}

uint64_t sub_266F9EA34(uint64_t a1)
{
  v2 = sub_266F9EB38(&qword_2800F1498, &protocol conformance descriptor for FLOWSchemaFLOWMessageType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F9EA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F9EB38(&qword_2800F1498, &protocol conformance descriptor for FLOWSchemaFLOWMessageType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F9EB38(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWMessageType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWNotificationContext.makeTypeManifestAndEnsureFields(in:)()
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
  v17 = "ificationContext";
  v18 = *MEMORY[0x277D3E4E8];
  v19 = *(v1 + 104);
  v16 = v0;
  v19(v3);
  v21[0] = 1;
  sub_26738114C();
  v20 = sub_26738116C();
  v7 = *(*(v20 - 8) + 56);
  v7(v6, 0, 1, v20);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, v17 | 0x8000000000000000);
  v8(v21, 0);
  v9 = v18;
  v10 = v0;
  v11 = v19;
  (v19)(v3, v18, v10);
  v21[0] = 1;
  sub_26738114C();
  v7(v6, 0, 1, v20);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x72616D6D75537369, 0xEC00000064657A69);
  v12(v21, 0);
  (v11)(v3, v9, v16);
  v21[0] = 1;
  sub_26738114C();
  v7(v6, 0, 1, v20);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x696C686769487369, 0xEB00000000746867);
  return v13(v21, 0);
}

uint64_t sub_266F9EF74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F9EFD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F9F03C()
{
  result = qword_2800F10D0;
  if (!qword_2800F10D0)
  {
    sub_266F9F094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F10D0);
  }

  return result;
}

unint64_t sub_266F9F094()
{
  result = qword_2800F10C8;
  if (!qword_2800F10C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F10C8);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPegasusContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v22 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496B6E696CLL, 0xE600000000000000);
  v9(v25, 0);
  type metadata accessor for FLOWSchemaFLOWPegasusProductArea(0);
  sub_266F9FBEC(&qword_2800F14A0, type metadata accessor for FLOWSchemaFLOWPegasusProductArea, &protocol conformance descriptor for FLOWSchemaFLOWPegasusProductArea);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x41746375646F7270, 0xEB00000000616572);
  v10(v25, 0);
  type metadata accessor for FLOWSchemaFLOWPegasusProvider(0);
  sub_266F9FBEC(&qword_2800F14A8, type metadata accessor for FLOWSchemaFLOWPegasusProvider, &protocol conformance descriptor for FLOWSchemaFLOWPegasusProvider);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x507972616D697270, 0xEF72656469766F72);
  v11(v25, 0);
  v21 = a1;
  sub_26738122C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F7250726568746FLL, 0xEE00737265646976);
  v12(v25, 0);
  sub_266ECB294(0, &qword_2800F14B0, 0x277D59950);
  sub_266ECAF2C(&qword_2800F14B8, &qword_2800F14B0, 0x277D59950, &protocol conformance descriptor for PEGASUSSchemaPEGASUSIntent);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x746E65746E69, 0xE600000000000000);
  v13(v25, 0);
  (*(v23 + 104))(v22, *MEMORY[0x277D3E4E8], v24);
  v25[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267436B40);
  v14(v25, 0);
  sub_266ECB294(0, &qword_2800F12C8, 0x277D575C0);
  sub_266ECAF2C(&qword_2800F12C0, &qword_2800F12C8, 0x277D575C0, &protocol conformance descriptor for FLOWSchemaFLOWKGQAExecution);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x636578454151676BLL, 0xED00006E6F697475);
  v15(v25, 0);
  sub_266ECB294(0, &qword_2800F14C0, 0x277D57730);
  sub_266ECAF2C(&qword_2800F14C8, &qword_2800F14C0, 0x277D57730, &protocol conformance descriptor for FLOWSchemaFLOWWebAnswerExecution);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267436B60);
  v16(v25, 0);
  sub_266ECB294(0, &qword_2800F14D0, 0x277D576B0);
  sub_266ECAF2C(&qword_2800F14D8, &qword_2800F14D0, 0x277D576B0, &protocol conformance descriptor for FLOWSchemaFLOWSPORTSExecution);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x78457374726F7073, 0xEF6E6F6974756365);
  v17(v25, 0);
  sub_266ECB294(0, &qword_2800F1030, 0x277D57518);
  sub_266ECAF2C(&qword_2800F1028, &qword_2800F1030, 0x277D57518, &protocol conformance descriptor for FLOWSchemaFLOWCrossIntentRankerResponse);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x8000000267436B80);
  v18(v25, 0);
  sub_266ECB294(0, &qword_2800F1398, 0x277D57618);
  sub_266ECAF2C(&qword_2800F1390, &qword_2800F1398, 0x277D57618, &protocol conformance descriptor for FLOWSchemaFLOWMapsExecution);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0x636578457370616DLL, 0xED00006E6F697475);
  return v19(v25, 0);
}

uint64_t sub_266F9FB28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F9FB8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F9FBEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static FLOWSchemaFLOWPegasusContextTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13[-v2];
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
  v6(v13, 0);
  sub_266ECB294(0, &qword_2800F14E0, 0x277D59960);
  sub_266ECAF2C(&qword_2800F14E8, &qword_2800F14E0, 0x277D59960, &protocol conformance descriptor for PEGASUSSchemaPEGASUSIntentTier1);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6954746E65746E69, 0xEB00000000317265);
  v7(v13, 0);
  sub_266ECB294(0, &qword_2800F12D8, 0x277D575C8);
  sub_266ECAF2C(&qword_2800F12D0, &qword_2800F12D8, 0x277D575C8, &protocol conformance descriptor for FLOWSchemaFLOWKGQAExecutionTier1);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267436BE0);
  v8(v13, 0);
  sub_266ECB294(0, &qword_2800F14F0, 0x277D57738);
  sub_266ECAF2C(&qword_2800F14F8, &qword_2800F14F0, 0x277D57738, &protocol conformance descriptor for FLOWSchemaFLOWWebAnswerExecutionTier1);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x8000000267436C00);
  v9(v13, 0);
  sub_266ECB294(0, &qword_2800F1500, 0x277D576F8);
  sub_266ECAF2C(&qword_2800F1508, &qword_2800F1500, 0x277D576F8, &protocol conformance descriptor for FLOWSchemaFLOWSportsExecutionTier1);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x8000000267436C20);
  v10(v13, 0);
  sub_266ECB294(0, &qword_2800F13A8, 0x277D57620);
  sub_266ECAF2C(&qword_2800F13A0, &qword_2800F13A8, 0x277D57620, &protocol conformance descriptor for FLOWSchemaFLOWMapsExecutionTier1);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v11 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267436C40);
  return v11(v13, 0);
}

uint64_t sub_266FA0294(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA02F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWPegasusProductArea.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267436C90, isUniquelyReferenced_nonNull_native);
  *v3 = v66;

  v1(v82, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267436CB0, v8);
  *v7 = v67;

  v5(v82, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x8000000267436CE0, v12);
  *v11 = v68;

  v9(v82, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x8000000267436D10, v16);
  *v15 = v69;

  v13(v82, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000026, 0x8000000267436D40, v20);
  *v19 = v70;

  v17(v82, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x8000000267436D70, v24);
  *v23 = v71;

  v21(v82, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x8000000267436DA0, v28);
  *v27 = v72;

  v25(v82, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001DLL, 0x8000000267436DC0, v32);
  *v31 = v73;

  v29(v82, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001BLL, 0x8000000267436DE0, v36);
  *v35 = v74;

  v33(v82, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ELL, 0x8000000267436E00, v40);
  *v39 = v75;

  v37(v82, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001DLL, 0x8000000267436E20, v44);
  *v43 = v76;

  v41(v82, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001ALL, 0x8000000267436E40, v48);
  *v47 = v77;

  v45(v82, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000021, 0x8000000267436E60, v52);
  *v51 = v78;

  v49(v82, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001CLL, 0x8000000267436E90, v56);
  *v55 = v79;

  v53(v82, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001CLL, 0x8000000267436EB0, v60);
  *v59 = v80;

  v57(v82, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000022, 0x8000000267436ED0, v64);
  *v63 = v81;

  return v61(v82, 0);
}

uint64_t sub_266FA0B9C(uint64_t a1)
{
  v2 = sub_266FA0CA0(&qword_2800F1510, &protocol conformance descriptor for FLOWSchemaFLOWPegasusProductArea);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA0C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA0CA0(&qword_2800F1510, &protocol conformance descriptor for FLOWSchemaFLOWPegasusProductArea);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA0CA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWPegasusProductArea(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPegasusProvider.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267436F30, isUniquelyReferenced_nonNull_native);
  *v3 = v70;

  v1(v87, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x8000000267436F50, v8);
  *v7 = v71;

  v5(v87, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267436F80, v12);
  *v11 = v72;

  v9(v87, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x8000000267436FA0, v16);
  *v15 = v73;

  v13(v87, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x8000000267436FD0, v20);
  *v19 = v74;

  v17(v87, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x8000000267437000, v24);
  *v23 = v75;

  v21(v87, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x8000000267437030, v28);
  *v27 = v76;

  v25(v87, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ALL, 0x8000000267437050, v32);
  *v31 = v77;

  v29(v87, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001BLL, 0x8000000267437070, v36);
  *v35 = v78;

  v33(v87, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000018, 0x8000000267437090, v40);
  *v39 = v79;

  v37(v87, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000019, 0x80000002674370B0, v44);
  *v43 = v80;

  v41(v87, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000019, 0x80000002674370D0, v48);
  *v47 = v81;

  v45(v87, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000027, 0x80000002674370F0, v52);
  *v51 = v82;

  v49(v87, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001FLL, 0x8000000267437120, v56);
  *v55 = v83;

  v53(v87, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001CLL, 0x8000000267437140, v60);
  *v59 = v84;

  v57(v87, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000019, 0x8000000267437160, v64);
  *v63 = v85;

  v61(v87, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000019, 0x8000000267437180, v68);
  *v67 = v86;

  return v65(v87, 0);
}

uint64_t sub_266FA1524(uint64_t a1)
{
  v2 = sub_266FA1628(&qword_2800F1518, &protocol conformance descriptor for FLOWSchemaFLOWPegasusProvider);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA158C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA1628(&qword_2800F1518, &protocol conformance descriptor for FLOWSchemaFLOWPegasusProvider);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA1628(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWPegasusProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPersonType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x80000002674371D0, isUniquelyReferenced_nonNull_native);
  *v3 = v62;

  v1(v77, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x80000002674371F0, v8);
  *v7 = v63;

  v5(v77, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267437210, v12);
  *v11 = v64;

  v9(v77, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267437230, v16);
  *v15 = v65;

  v13(v77, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x8000000267437250, v20);
  *v19 = v66;

  v17(v77, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000017, 0x8000000267437270, v24);
  *v23 = v67;

  v21(v77, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x8000000267437290, v28);
  *v27 = v68;

  v25(v77, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000016, 0x80000002674372B0, v32);
  *v31 = v69;

  v29(v77, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001FLL, 0x80000002674372D0, v36);
  *v35 = v70;

  v33(v77, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001BLL, 0x80000002674372F0, v40);
  *v39 = v71;

  v37(v77, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001FLL, 0x8000000267437310, v44);
  *v43 = v72;

  v41(v77, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000021, 0x8000000267437330, v48);
  *v47 = v73;

  v45(v77, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000014, 0x8000000267437360, v52);
  *v51 = v74;

  v49(v77, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000019, 0x8000000267437380, v56);
  *v55 = v75;

  v53(v77, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001CLL, 0x80000002674373A0, v60);
  *v59 = v76;

  return v57(v77, 0);
}

uint64_t sub_266FA1DD0(uint64_t a1)
{
  v2 = sub_266FA1ED4(&qword_2800F1528, &protocol conformance descriptor for FLOWSchemaFLOWPersonType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA1E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA1ED4(&qword_2800F1528, &protocol conformance descriptor for FLOWSchemaFLOWPersonType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA1ED4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWPersonType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPhoneCallAppType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x80000002674373F0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x8000000267437410, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x8000000267437440, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267437470, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266FA219C(uint64_t a1)
{
  v2 = sub_266FA22A0(&qword_2800F1538, &protocol conformance descriptor for FLOWSchemaFLOWPhoneCallAppType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA2204(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA22A0(&qword_2800F1538, &protocol conformance descriptor for FLOWSchemaFLOWPhoneCallAppType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA22A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWPhoneCallAppType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPhoneCallContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWPhoneCallType(0);
  sub_266FA2D24(&qword_2800F1540, type metadata accessor for FLOWSchemaFLOWPhoneCallType, &protocol conformance descriptor for FLOWSchemaFLOWPhoneCallType);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C6143656E6F6870, 0xED0000657079546CLL);
  v12(v35, 0);
  type metadata accessor for FLOWSchemaFLOWRecipientType(0);
  sub_266FA2D24(&qword_2800F1548, type metadata accessor for FLOWSchemaFLOWRecipientType, &protocol conformance descriptor for FLOWSchemaFLOWRecipientType);
  v33 = a1;
  sub_26738122C();
  v31 = v10 + 56;
  v32 = v11;
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65697069636572, 0xED00006570795474);
  v13(v35, 0);
  v30 = a2;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v34, 0x6E65697069636572, 0xED00006570795474);
  if (!(*(v10 + 48))(v16, 1, v9))
  {
    sub_266ECB128(&unk_287885D10);
    sub_26738115C();
  }

  (v15)(v34, 0);
  v14(v35, 0);
  type metadata accessor for FLOWSchemaFLOWPhoneCallAppType(0);
  sub_266FA2D24(&qword_2800F1530, type metadata accessor for FLOWSchemaFLOWPhoneCallAppType, &protocol conformance descriptor for FLOWSchemaFLOWPhoneCallAppType);
  sub_26738120C();
  v17 = v32;
  v32(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x80000002674374D0);
  v18(v35, 0);
  sub_266ECB294(0, &qword_2800F1550, 0x277D57688);
  sub_266ECAF2C(&qword_2800F1558, &qword_2800F1550, 0x277D57688, &protocol conformance descriptor for FLOWSchemaFLOWPhoneCallEmergencyContext);
  sub_26738120C();
  v17(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x80000002674374F0);
  v19(v35, 0);
  type metadata accessor for FLOWSchemaFLOWPersonType(0);
  sub_266FA2D24(&qword_2800F1520, type metadata accessor for FLOWSchemaFLOWPersonType, &protocol conformance descriptor for FLOWSchemaFLOWPersonType);
  sub_26738122C();
  v17(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x79546E6F73726570, 0xEA00000000006570);
  v20(v35, 0);
  (*(v28 + 104))(v27, *MEMORY[0x277D3E4E8], v29);
  v35[0] = 1;
  sub_26738114C();
  v17(v8, 0, 1, v9);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267437510);
  v21(v35, 0);
  type metadata accessor for FLOWSchemaFLOWSearchCallHistoryIntent(0);
  sub_266FA2D24(&qword_2800F1560, type metadata accessor for FLOWSchemaFLOWSearchCallHistoryIntent, &protocol conformance descriptor for FLOWSchemaFLOWSearchCallHistoryIntent);
  sub_26738120C();
  v17(v8, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267437530);
  v22(v35, 0);
  type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona(0);
  sub_266FA2D24(&qword_2800F1410, type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona, &protocol conformance descriptor for INFERENCESchemaINFERENCEAppSelectionUserPersona);
  sub_26738120C();
  v17(v8, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x7372655072657375, 0xEB00000000616E6FLL);
  v23(v35, 0);
  sub_266ECB294(0, &qword_2800F1020, 0x277D57508);
  sub_266ECAF2C(&qword_2800F1018, &qword_2800F1020, 0x277D57508, &protocol conformance descriptor for FLOWSchemaFLOWContact);
  sub_26738120C();
  v17(v8, 0, 1, v9);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x746361746E6F63, 0xE700000000000000);
  return v24(v35, 0);
}

uint64_t sub_266FA2C60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA2CC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FA2D24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static FLOWSchemaFLOWPhoneCallEmergencyContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWEmergencyCallType(0);
  sub_266FA30A0(&qword_2800F1158, type metadata accessor for FLOWSchemaFLOWEmergencyCallType, &protocol conformance descriptor for FLOWSchemaFLOWEmergencyCallType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267437590);
  return v5(v7, 0);
}

uint64_t sub_266FA2F94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA2FF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FA30A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FA30E8()
{
  result = qword_2800F1550;
  if (!qword_2800F1550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1550);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPhoneCallType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x80000002674375E0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x8000000267437600, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267437620, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266FA334C(uint64_t a1)
{
  v2 = sub_266FA3450(&qword_2800F1568, &protocol conformance descriptor for FLOWSchemaFLOWPhoneCallType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA33B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA3450(&qword_2800F1568, &protocol conformance descriptor for FLOWSchemaFLOWPhoneCallType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA3450(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWPhoneCallType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPhotosContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWPhotosTaskType(0);
  sub_266FA3904(&qword_2800F1570, type metadata accessor for FLOWSchemaFLOWPhotosTaskType, &protocol conformance descriptor for FLOWSchemaFLOWPhotosTaskType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x657079546B736174, 0xE800000000000000);
  v6(v10, 0);
  type metadata accessor for FLOWSchemaFLOWPhotosEntityType(0);
  sub_266FA3904(&qword_2800F1578, type metadata accessor for FLOWSchemaFLOWPhotosEntityType, &protocol conformance descriptor for FLOWSchemaFLOWPhotosEntityType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954797469746E65, 0xEA00000000006570);
  v7(v10, 0);
  type metadata accessor for FLOWSchemaFLOWPhotosFaceType(0);
  sub_266FA3904(&qword_2800F1580, type metadata accessor for FLOWSchemaFLOWPhotosFaceType, &protocol conformance descriptor for FLOWSchemaFLOWPhotosFaceType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6570795465636166, 0xE800000000000000);
  return v8(v10, 0);
}

uint64_t sub_266FA37F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA385C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FA3904(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FA394C()
{
  result = qword_2800F10D8;
  if (!qword_2800F10D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F10D8);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPhotosEntityType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x80000002674376A0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674376C0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x80000002674376E0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266FA3BAC(uint64_t a1)
{
  v2 = sub_266FA3CB0(&qword_2800F1588, &protocol conformance descriptor for FLOWSchemaFLOWPhotosEntityType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA3C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA3CB0(&qword_2800F1588, &protocol conformance descriptor for FLOWSchemaFLOWPhotosEntityType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA3CB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWPhotosEntityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPhotosFaceType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267437730, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x8000000267437750, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x8000000267437770, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x8000000267437790, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266FA3F7C(uint64_t a1)
{
  v2 = sub_266FA4080(&qword_2800F1590, &protocol conformance descriptor for FLOWSchemaFLOWPhotosFaceType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA3FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA4080(&qword_2800F1590, &protocol conformance descriptor for FLOWSchemaFLOWPhotosFaceType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA4080(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWPhotosFaceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPhotosTaskType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x80000002674377E0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267437800, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267437820, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x8000000267437850, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266FA4348(uint64_t a1)
{
  v2 = sub_266FA444C(&qword_2800F1598, &protocol conformance descriptor for FLOWSchemaFLOWPhotosTaskType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA43B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA444C(&qword_2800F1598, &protocol conformance descriptor for FLOWSchemaFLOWPhotosTaskType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA444C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWPhotosTaskType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWPlatformContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1170, 0x277D57550);
  v27 = sub_266ECAF2C(&qword_2800F1168, &qword_2800F1170, 0x277D57550, &protocol conformance descriptor for FLOWSchemaFLOWEntityContext);
  v28 = a1;
  sub_26738121C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v26 = *(v10 + 56);
  v26(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F43797469746E65, 0xED0000747865746ELL);
  v11(v34, 0);
  v29 = a2;
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v33, 0x6F43797469746E65, 0xED0000747865746ELL);
  if (!(*(v10 + 48))(v14, 1, v9))
  {
    sub_266ECB128(&unk_287885D38);
    sub_26738115C();
  }

  (v13)(v33, 0);
  v12(v34, 0);
  sub_26738120C();
  v26(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x80000002674378A0);
  v15(v34, 0);
  v16 = v30;
  sub_26738117C();
  v17 = sub_2673811BC();
  v19 = v18;
  v20 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_266ECAD54(0, v20[2] + 1, 1, v20);
    *v19 = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_266ECAD54((v22 > 1), v23 + 1, 1, v20);
    *v19 = v20;
  }

  v20[2] = v23 + 1;
  (*(v31 + 32))(v20 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v23, v16, v32);
  return v17(v34, 0);
}

uint64_t sub_266FA4954(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA49B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWProfileSwitchByNameType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267437900, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002FLL, 0x8000000267437930, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000032, 0x8000000267437960, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x80000002674379A0, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000026, 0x80000002674379D0, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000027, 0x8000000267437A00, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000027, 0x8000000267437A30, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x8000000267437A60, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000021, 0x8000000267437A90, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_266FA4F14(uint64_t a1)
{
  v2 = sub_266FA5018(&qword_2800F15B8, &protocol conformance descriptor for FLOWSchemaFLOWProfileSwitchByNameType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA4F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA5018(&qword_2800F15B8, &protocol conformance descriptor for FLOWSchemaFLOWProfileSwitchByNameType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA5018(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWProfileSwitchByNameType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWProfileSwitchContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v16 = *(v1 - 8);
  v17 = v1;
  MEMORY[0x28223BE20](v1);
  v15 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWProfileSwitchMethod(0);
  sub_266FA56CC(&qword_2800F15C0, type metadata accessor for FLOWSchemaFLOWProfileSwitchMethod, &protocol conformance descriptor for FLOWSchemaFLOWProfileSwitchMethod);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x8000000267437B00);
  v8(v18, 0);
  type metadata accessor for FLOWSchemaFLOWProfileSwitchByNameType(0);
  sub_266FA56CC(&qword_2800F15B0, type metadata accessor for FLOWSchemaFLOWProfileSwitchByNameType, &protocol conformance descriptor for FLOWSchemaFLOWProfileSwitchByNameType);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000017, 0x8000000267437B20);
  v9(v18, 0);
  type metadata accessor for FLOWSchemaFLOWProfileSwitchOutcome(0);
  sub_266FA56CC(&qword_2800F15C8, type metadata accessor for FLOWSchemaFLOWProfileSwitchOutcome, &protocol conformance descriptor for FLOWSchemaFLOWProfileSwitchOutcome);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x8000000267437B40);
  v10(v18, 0);
  type metadata accessor for FLOWSchemaFLOWProfileSwitchFailureReason(0);
  sub_266FA56CC(&qword_2800F15D0, type metadata accessor for FLOWSchemaFLOWProfileSwitchFailureReason, &protocol conformance descriptor for FLOWSchemaFLOWProfileSwitchFailureReason);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001ALL, 0x8000000267437B60);
  v11(v18, 0);
  (*(v16 + 104))(v15, *MEMORY[0x277D3E538], v17);
  v18[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000019, 0x8000000267437B80);
  return v12(v18, 0);
}

uint64_t sub_266FA55C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA5624(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FA56CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FA5714()
{
  result = qword_2800F1288;
  if (!qword_2800F1288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1288);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWProfileSwitchFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267437BE0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x8000000267437C10, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x8000000267437C40, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000037, 0x8000000267437C70, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000035, 0x8000000267437CB0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_266FA5A58(uint64_t a1)
{
  v2 = sub_266FA5B5C(&qword_2800F15D8, &protocol conformance descriptor for FLOWSchemaFLOWProfileSwitchFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA5AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA5B5C(&qword_2800F15D8, &protocol conformance descriptor for FLOWSchemaFLOWProfileSwitchFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA5B5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWProfileSwitchFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWProfileSwitchMethod.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x8000000267437D30, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x8000000267437D50, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267437D80, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x8000000267437DA0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266FA5E28(uint64_t a1)
{
  v2 = sub_266FA5F2C(&qword_2800F15E0, &protocol conformance descriptor for FLOWSchemaFLOWProfileSwitchMethod);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA5E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA5F2C(&qword_2800F15E0, &protocol conformance descriptor for FLOWSchemaFLOWProfileSwitchMethod);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA5F2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWProfileSwitchMethod(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWProfileSwitchOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267437E00, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267437E30, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267437E60, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266FA6184(uint64_t a1)
{
  v2 = sub_266FA6288(&qword_2800F15E8, &protocol conformance descriptor for FLOWSchemaFLOWProfileSwitchOutcome);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA61EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA6288(&qword_2800F15E8, &protocol conformance descriptor for FLOWSchemaFLOWProfileSwitchOutcome);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA6288(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWProfileSwitchOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWProtectedAppType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x8000000267437EC0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267437EE0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x8000000267437F10, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267437F30, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266FA6554(uint64_t a1)
{
  v2 = sub_266FA6658(&qword_2800F15F0, &protocol conformance descriptor for FLOWSchemaFLOWProtectedAppType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA65BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA6658(&qword_2800F15F0, &protocol conformance descriptor for FLOWSchemaFLOWProtectedAppType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA6658(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWProtectedAppType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWReadMessageType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267437F80, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267437FA0, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267437FC0, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267437FE0, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x8000000267438000, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000018, 0x8000000267438020, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001CLL, 0x8000000267438040, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000019, 0x8000000267438060, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000019, 0x8000000267438080, v36);
  *v35 = v46;

  v33(v47, 0);
  sub_266ECB128(&unk_287885D60);
  return sub_26738112C();
}

uint64_t sub_266FA6B78(uint64_t a1)
{
  v2 = sub_266FA6C7C(&qword_2800F1600, &protocol conformance descriptor for FLOWSchemaFLOWReadMessageType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA6BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA6C7C(&qword_2800F1600, &protocol conformance descriptor for FLOWSchemaFLOWReadMessageType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA6C7C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWReadMessageType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWRecipientType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x80000002674380D0, isUniquelyReferenced_nonNull_native);
  *v3 = v50;

  v1(v62, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x80000002674380F0, v8);
  *v7 = v51;

  v5(v62, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267438110, v12);
  *v11 = v52;

  v9(v62, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x8000000267438140, v16);
  *v15 = v53;

  v13(v62, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267438170, v20);
  *v19 = v54;

  v17(v62, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x80000002674381A0, v24);
  *v23 = v55;

  v21(v62, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000025, 0x80000002674381D0, v28);
  *v27 = v56;

  v25(v62, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000020, 0x8000000267438200, v32);
  *v31 = v57;

  v29(v62, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000022, 0x8000000267438230, v36);
  *v35 = v58;

  v33(v62, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ELL, 0x8000000267438260, v40);
  *v39 = v59;

  v37(v62, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000022, 0x8000000267438280, v44);
  *v43 = v60;

  v41(v62, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000024, 0x80000002674382B0, v48);
  *v47 = v61;

  v45(v62, 0);
  sub_266ECB128(&unk_287885D90);
  return sub_26738112C();
}

uint64_t sub_266FA72E4(uint64_t a1)
{
  v2 = sub_266FA73E8(&qword_2800F1608, &protocol conformance descriptor for FLOWSchemaFLOWRecipientType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA734C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA73E8(&qword_2800F1608, &protocol conformance descriptor for FLOWSchemaFLOWRecipientType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA73E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWRecipientType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "ligenceFeatureUsage";
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x8000000267438350);
  return v14(v19, 0);
}

uint64_t sub_266FA7760(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA77C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FA7828()
{
  result = qword_2800F1610;
  if (!qword_2800F1610)
  {
    sub_266FA7880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1610);
  }

  return result;
}

unint64_t sub_266FA7880()
{
  result = qword_2800F1618;
  if (!qword_2800F1618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1618);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWSafariContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWSafariTaskType(0);
  sub_266FA7D20(&qword_2800F1620, type metadata accessor for FLOWSchemaFLOWSafariTaskType, &protocol conformance descriptor for FLOWSchemaFLOWSafariTaskType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x657079546B736174, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_266FA7A8C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWSafariTaskType(0);
  sub_266FA7D20(&qword_2800F1620, type metadata accessor for FLOWSchemaFLOWSafariTaskType, &protocol conformance descriptor for FLOWSchemaFLOWSafariTaskType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x657079546B736174, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_266FA7C14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA7C78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FA7D20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FA7D68()
{
  result = qword_2800F10E8;
  if (!qword_2800F10E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F10E8);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWSafariTaskType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x80000002674383D0, isUniquelyReferenced_nonNull_native);
  *v3 = v46;

  v1(v57, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x80000002674383F0, v8);
  *v7 = v47;

  v5(v57, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x8000000267438420, v12);
  *v11 = v48;

  v9(v57, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x8000000267438450, v16);
  *v15 = v49;

  v13(v57, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x8000000267438480, v20);
  *v19 = v50;

  v17(v57, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x80000002674384B0, v24);
  *v23 = v51;

  v21(v57, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000028, 0x80000002674384E0, v28);
  *v27 = v52;

  v25(v57, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002CLL, 0x8000000267438510, v32);
  *v31 = v53;

  v29(v57, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002CLL, 0x8000000267438540, v36);
  *v35 = v54;

  v33(v57, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002ELL, 0x8000000267438570, v40);
  *v39 = v55;

  v37(v57, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000002ELL, 0x80000002674385A0, v44);
  *v43 = v56;

  return v41(v57, 0);
}

uint64_t sub_266FA8358(uint64_t a1)
{
  v2 = sub_266FA845C(&qword_2800F1628, &protocol conformance descriptor for FLOWSchemaFLOWSafariTaskType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA83C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA845C(&qword_2800F1628, &protocol conformance descriptor for FLOWSchemaFLOWSafariTaskType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA845C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWSafariTaskType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWSearchCallHistoryIntent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267438610, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267438640, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x8000000267438670, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266FA86B4(uint64_t a1)
{
  v2 = sub_266FA87B8(&qword_2800F1630, &protocol conformance descriptor for FLOWSchemaFLOWSearchCallHistoryIntent);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA871C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA87B8(&qword_2800F1630, &protocol conformance descriptor for FLOWSchemaFLOWSearchCallHistoryIntent);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA87B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWSearchCallHistoryIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWServerEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F0E78, 0x277D57568);
  sub_266ECAF2C(&qword_2800F0E80, &qword_2800F0E78, 0x277D57568, &protocol conformance descriptor for FLOWSchemaFLOWEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v21, 0);
  sub_266ECB294(0, &qword_2800F0F60, 0x277D57710);
  sub_266ECAF2C(&qword_2800F0F68, &qword_2800F0F60, 0x277D57710, &protocol conformance descriptor for FLOWSchemaFLOWStep);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v19;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x70657453776F6C66, 0xE800000000000000);
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
  sub_266ECB128(&unk_287885DB8);
  return sub_2673811CC();
}

uint64_t sub_266FA8C2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FA8CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FA8D90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA8DF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FA8E54(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F1638, &qword_2800F1640, 0x277D576C0, &protocol conformance descriptor for FLOWSchemaFLOWServerEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F1648, &qword_2800F1640, 0x277D576C0, &protocol conformance descriptor for FLOWSchemaFLOWServerEvent);
  result = sub_266ECAF2C(&qword_2800F1650, &qword_2800F1640, 0x277D576C0, &protocol conformance descriptor for FLOWSchemaFLOWServerEvent);
  a1[3] = result;
  return result;
}

uint64_t static FLOWSchemaFLOWSmsAttachmentMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWSmsAttachmentType(0);
  sub_266FA92A0();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267438710);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_266FA91DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA9240(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FA92A0()
{
  result = qword_2800F1660;
  if (!qword_2800F1660)
  {
    type metadata accessor for FLOWSchemaFLOWSmsAttachmentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1660);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWSmsAttachmentMetadataTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v6, 0xD000000000000015, 0x8000000267438770);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0xD000000000000015, 0x8000000267438770);
  if (!(*(v8 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_287885DE8);
    sub_26738115C();
  }

  (v13)(v18, 0);
  return v12(v19, 0);
}

uint64_t sub_266FA9714(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FA9778(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWSmsAttachmentType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x80000002674387C0, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674387E0, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x8000000267438800, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267438820, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x8000000267438840, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x8000000267438870, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ELL, 0x80000002674388A0, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x80000002674388C0, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000024, 0x80000002674388F0, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_266FA9CD4(uint64_t a1)
{
  v2 = sub_266FA9DD8(&qword_2800F1678, &protocol conformance descriptor for FLOWSchemaFLOWSmsAttachmentType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FA9D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FA9DD8(&qword_2800F1678, &protocol conformance descriptor for FLOWSchemaFLOWSmsAttachmentType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FA9DD8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWSmsAttachmentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWSmsAudioContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000011, 0x8000000267438950);
  return v8(v10, 0);
}

uint64_t sub_266FAA06C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FAA0D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FAA134()
{
  result = qword_2800F1680;
  if (!qword_2800F1680)
  {
    sub_266FAA18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1680);
  }

  return result;
}

unint64_t sub_266FAA18C()
{
  result = qword_2800F1688;
  if (!qword_2800F1688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1688);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWSmsContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = sub_26738118C();
  v122 = *(v123 - 8);
  v4 = MEMORY[0x28223BE20](v123);
  v126 = v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v125 = v121 - v6;
  v136 = sub_26738113C();
  v7 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v9 = v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v121 - v11;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWMessageType(0);
  sub_266FAC0E0(&qword_2800F1490, type metadata accessor for FLOWSchemaFLOWMessageType, &protocol conformance descriptor for FLOWSchemaFLOWMessageType);
  v128 = a1;
  sub_26738120C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = v14 + 56;
  v16 = *(v14 + 56);
  v16(v12, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v12, 0x546567617373656DLL, 0xEB00000000657079);
  v17(v138, 0);
  v18 = *(v7 + 104);
  v130 = *MEMORY[0x277D3E4E8];
  v133 = v18;
  v134 = v7 + 104;
  v18(v9);
  v19 = a2;
  v138[0] = 1;
  v131 = v9;
  sub_26738114C();
  v135 = v16;
  v16(v12, 0, 1, v13);
  v20 = v14;
  v21 = sub_2673811AC();
  sub_266EC637C(v12, 0x657355696A6F6D65, 0xE900000000000064);
  v21(v138, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v137, 0x657355696A6F6D65, 0xE900000000000064);
  v25 = *(v20 + 48);
  v24 = v20 + 48;
  v132 = v13;
  v129 = v25;
  if (!(v25)(v26, 1, v13))
  {
    sub_266ECB128(&unk_287885E18);
    sub_26738115C();
  }

  (v23)(v137, 0);
  v22(v138, 0);
  v133(v131, v130, v136);
  v138[0] = 1;
  sub_26738114C();
  v27 = v132;
  v28 = v135;
  v135(v12, 0, 1, v132);
  v29 = sub_2673811AC();
  sub_266EC637C(v12, 0x6472616F6279656BLL, 0xEC00000064657355);
  v29(v138, 0);
  type metadata accessor for FLOWSchemaFLOWRecipientType(0);
  sub_266FAC0E0(&qword_2800F1548, type metadata accessor for FLOWSchemaFLOWRecipientType, &protocol conformance descriptor for FLOWSchemaFLOWRecipientType);
  sub_26738122C();
  v28(v12, 0, 1, v27);
  v30 = sub_2673811AC();
  sub_266EC637C(v12, 0x6E65697069636572, 0xED00006570795474);
  v30(v138, 0);
  v31 = sub_2673811AC();
  v32 = sub_266ECB6CC(v137, 0x6E65697069636572, 0xED00006570795474);
  if (!(v129)(v33, 1, v27))
  {
    sub_266ECB128(&unk_287885E40);
    sub_26738115C();
  }

  (v32)(v137, 0);
  v31(v138, 0);
  v133(v131, *MEMORY[0x277D3E538], v136);
  v138[0] = 0;
  sub_26738114C();
  v34 = v132;
  v135(v12, 0, 1, v132);
  v35 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000011, 0x8000000267438950);
  v35(v138, 0);
  v36 = sub_2673811AC();
  v37 = sub_266ECB6CC(v137, 0xD000000000000011, 0x8000000267438950);
  if (!(v129)(v38, 1, v34))
  {
    sub_266ECB128(&unk_287885E68);
    sub_26738115C();
  }

  (v37)(v137, 0);
  v36(v138, 0);
  sub_266ECB294(0, &qword_2800F1690, 0x277D57718);
  sub_266ECAF2C(&qword_2800F1698, &qword_2800F1690, 0x277D57718, &protocol conformance descriptor for FLOWSchemaFLOWTextMessageLength);
  sub_26738121C();
  v39 = v132;
  v135(v12, 0, 1, v132);
  v40 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000011, 0x80000002674389A0);
  v40(v138, 0);
  v41 = sub_2673811AC();
  v42 = sub_266ECB6CC(v137, 0xD000000000000011, 0x80000002674389A0);
  v44 = (v129)(v43, 1, v39);
  v127 = v15;
  v124 = v24;
  if (!v44)
  {
    sub_266ECB128(&unk_287885E90);
    sub_26738115C();
  }

  (v42)(v137, 0);
  v41(v138, 0);
  sub_266ECB294(0, &qword_2800F16A0, 0x277D576F0);
  sub_266ECAF2C(&qword_2800F16A8, &qword_2800F16A0, 0x277D576F0, &protocol conformance descriptor for FLOWSchemaFLOWSmsTextContext);
  sub_26738121C();
  v45 = v132;
  v46 = v135;
  v135(v12, 0, 1, v132);
  v47 = sub_2673811AC();
  sub_266EC637C(v12, 0x746E6F4374786574, 0xEB00000000747865);
  v47(v138, 0);
  sub_266ECB294(0, &qword_2800F1688, 0x277D576D8);
  sub_266ECAF2C(&qword_2800F1680, &qword_2800F1688, 0x277D576D8, &protocol conformance descriptor for FLOWSchemaFLOWSmsAudioContext);
  sub_26738121C();
  v46(v12, 0, 1, v45);
  v48 = sub_2673811AC();
  sub_266EC637C(v12, 0x6E6F436F69647561, 0xEC00000074786574);
  v48(v138, 0);
  type metadata accessor for FLOWSchemaFLOWPersonType(0);
  sub_266FAC0E0(&qword_2800F1520, type metadata accessor for FLOWSchemaFLOWPersonType, &protocol conformance descriptor for FLOWSchemaFLOWPersonType);
  sub_26738122C();
  v46(v12, 0, 1, v45);
  v49 = sub_2673811AC();
  sub_266EC637C(v12, 0x79546E6F73726570, 0xEA00000000006570);
  v49(v138, 0);
  type metadata accessor for FLOWSchemaFLOWReadMessageType(0);
  sub_266FAC0E0(&qword_2800F15F8, type metadata accessor for FLOWSchemaFLOWReadMessageType, &protocol conformance descriptor for FLOWSchemaFLOWReadMessageType);
  sub_26738122C();
  v46(v12, 0, 1, v45);
  v50 = sub_2673811AC();
  sub_266EC637C(v12, 0x7373654D64616572, 0xEF65707954656761);
  v50(v138, 0);
  v133(v131, v130, v136);
  v138[0] = 1;
  sub_26738114C();
  v46(v12, 0, 1, v45);
  v51 = sub_2673811AC();
  sub_266EC637C(v12, 0x4C69746C754D7369, 0xEE006C6175676E69);
  v51(v138, 0);
  v52 = sub_2673811AC();
  v53 = sub_266ECB6CC(v137, 0x4C69746C754D7369, 0xEE006C6175676E69);
  if (!(v129)(v54, 1, v45))
  {
    sub_266ECB128(&unk_287885EB8);
    sub_26738115C();
  }

  (v53)(v137, 0);
  v52(v138, 0);
  v133(v131, v130, v136);
  v138[0] = 1;
  sub_26738114C();
  v55 = v132;
  v135(v12, 0, 1, v132);
  v56 = sub_2673811AC();
  sub_266EC637C(v12, 0x6261646165527369, 0xEA0000000000656CLL);
  v56(v138, 0);
  v57 = sub_2673811AC();
  v58 = sub_266ECB6CC(v137, 0x6261646165527369, 0xEA0000000000656CLL);
  if (!(v129)(v59, 1, v55))
  {
    sub_266ECB128(&unk_287885EE8);
    sub_26738115C();
  }

  (v58)(v137, 0);
  v57(v138, 0);
  v133(v131, v130, v136);
  v138[0] = 1;
  sub_26738114C();
  v60 = v132;
  v61 = v135;
  v135(v12, 0, 1, v132);
  v62 = sub_2673811AC();
  sub_266EC637C(v12, 0x4D70756F72477369, 0xEE00656761737365);
  v62(v138, 0);
  sub_266ECB294(0, &qword_2800F1318, 0x277D575E8);
  sub_266ECAF2C(&qword_2800F1310, &qword_2800F1318, 0x277D575E8, &protocol conformance descriptor for FLOWSchemaFLOWLanguageConfidenceMatrix);
  sub_26738120C();
  v61(v12, 0, 1, v60);
  v63 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000018, 0x80000002674389C0);
  v63(v138, 0);
  v64 = sub_2673811AC();
  v65 = sub_266ECB6CC(v137, 0xD000000000000018, 0x80000002674389C0);
  if (!(v129)(v66, 1, v60))
  {
    sub_266ECB128(&unk_287885F18);
    sub_26738115C();
  }

  (v65)(v137, 0);
  v64(v138, 0);
  v133(v131, v130, v136);
  v138[0] = 1;
  sub_26738114C();
  v67 = v132;
  v135(v12, 0, 1, v132);
  v68 = sub_2673811AC();
  sub_266EC637C(v12, 0xD000000000000011, 0x80000002674389E0);
  v68(v138, 0);
  v69 = sub_2673811AC();
  v70 = sub_266ECB6CC(v137, 0xD000000000000011, 0x80000002674389E0);
  if (!(v129)(v71, 1, v67))
  {
    sub_266ECB128(&unk_287885F48);
    sub_26738115C();
  }

  (v70)(v137, 0);
  v69(v138, 0);
  v133(v131, v130, v136);
  v138[0] = 1;
  sub_26738114C();
  v72 = v132;
  v135(v12, 0, 1, v132);
  v73 = sub_2673811AC();
  sub_266EC637C(v12, 0x654D676E6F4C7369, 0xED00006567617373);
  v73(v138, 0);
  v74 = sub_2673811AC();
  v75 = sub_266ECB6CC(v137, 0x654D676E6F4C7369, 0xED00006567617373);
  v77 = v19;
  v78 = v12;
  if (!(v129)(v76, 1, v72))
  {
    sub_266ECB128(&unk_287885F70);
    sub_26738115C();
  }

  (v75)(v137, 0);
  v74(v138, 0);
  v79 = v131;
  v80 = v136;
  v81 = v133;
  v133(v131, v130, v136);
  v138[0] = 1;
  sub_26738114C();
  v82 = v132;
  v135(v78, 0, 1, v132);
  v121[1] = v77;
  v83 = sub_2673811AC();
  sub_266EC637C(v78, 0x796C7065527369, 0xE700000000000000);
  v83(v138, 0);
  v81(v79, *MEMORY[0x277D3E508], v80);
  v138[0] = 1;
  sub_26738114C();
  v84 = v135;
  v135(v78, 0, 1, v82);
  v85 = sub_2673811AC();
  sub_266EC637C(v78, 0xD000000000000020, 0x8000000267438A00);
  v85(v138, 0);
  v129 = "eadMessagesCount";
  v86 = v130;
  v81(v79, v130, v80);
  v138[0] = 1;
  sub_26738114C();
  v87 = v132;
  v84(v78, 0, 1, v132);
  v88 = sub_2673811AC();
  sub_266EC637C(v78, 0xD000000000000015, v129 | 0x8000000000000000);
  v88(v138, 0);
  v129 = "isSenderShortCodeList";
  v81(v79, v86, v136);
  v138[0] = 1;
  sub_26738114C();
  v89 = v135;
  v135(v78, 0, 1, v87);
  v90 = sub_2673811AC();
  sub_266EC637C(v78, 0xD000000000000011, v129 | 0x8000000000000000);
  v90(v138, 0);
  sub_266ECB294(0, &qword_2800F1618, 0x277D576A8);
  sub_266ECAF2C(&qword_2800F1610, &qword_2800F1618, 0x277D576A8, &protocol conformance descriptor for FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage);
  sub_26738120C();
  v91 = v87;
  v89(v78, 0, 1, v87);
  v92 = sub_2673811AC();
  sub_266EC637C(v78, 0xD000000000000026, 0x8000000267438A70);
  v92(v138, 0);
  v93 = v131;
  v133(v131, *MEMORY[0x277D3E540], v136);
  v138[0] = 1;
  sub_26738114C();
  v89(v78, 0, 1, v91);
  v94 = sub_2673811AC();
  sub_266EC637C(v78, 0xD000000000000019, 0x8000000267438AA0);
  v94(v138, 0);
  type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona(0);
  sub_266FAC0E0(&qword_2800F1410, type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona, &protocol conformance descriptor for INFERENCESchemaINFERENCEAppSelectionUserPersona);
  sub_26738120C();
  v89(v78, 0, 1, v91);
  v95 = sub_2673811AC();
  sub_266EC637C(v78, 0x7372655072657375, 0xEB00000000616E6FLL);
  v95(v138, 0);
  v133(v93, v130, v136);
  v138[0] = 1;
  sub_26738114C();
  v89(v78, 0, 1, v91);
  v96 = sub_2673811AC();
  sub_266EC637C(v78, 0x72616D6D75537369, 0xEC00000064657A69);
  v96(v138, 0);
  type metadata accessor for FLOWSchemaFLOWSummarySourceType(0);
  sub_266FAC0E0(&qword_2800F16B0, type metadata accessor for FLOWSchemaFLOWSummarySourceType, &protocol conformance descriptor for FLOWSchemaFLOWSummarySourceType);
  sub_26738120C();
  v89(v78, 0, 1, v91);
  v97 = sub_2673811AC();
  sub_266EC637C(v78, 0xD000000000000011, 0x8000000267438AC0);
  v97(v138, 0);
  sub_266ECB294(0, &qword_2800F1020, 0x277D57508);
  sub_266ECAF2C(&qword_2800F1018, &qword_2800F1020, 0x277D57508, &protocol conformance descriptor for FLOWSchemaFLOWContact);
  sub_26738120C();
  v89(v78, 0, 1, v91);
  v98 = sub_2673811AC();
  sub_266EC637C(v78, 0x746361746E6F63, 0xE700000000000000);
  v98(v138, 0);
  sub_26738117C();
  v99 = sub_2673811BC();
  v101 = v100;
  v102 = *v100;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v101 = v102;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v102 = sub_266ECAD54(0, *(v102 + 2) + 1, 1, v102);
    *v101 = v102;
  }

  v104 = v123;
  v105 = v122;
  v107 = *(v102 + 2);
  v106 = *(v102 + 3);
  if (v107 >= v106 >> 1)
  {
    v102 = sub_266ECAD54((v106 > 1), v107 + 1, 1, v102);
    *v101 = v102;
  }

  *(v102 + 2) = v107 + 1;
  v110 = *(v105 + 32);
  v109 = v105 + 32;
  v108 = v110;
  v111 = (*(v109 + 48) + 32) & ~*(v109 + 48);
  v112 = *(v109 + 40);
  v110(&v102[v111 + v112 * v107], v125, v104);
  v99(v138, 0);
  sub_26738117C();
  v113 = sub_2673811BC();
  v115 = v114;
  v116 = *v114;
  v117 = swift_isUniquelyReferenced_nonNull_native();
  *v115 = v116;
  if ((v117 & 1) == 0)
  {
    v116 = sub_266ECAD54(0, *(v116 + 2) + 1, 1, v116);
    *v115 = v116;
  }

  v119 = *(v116 + 2);
  v118 = *(v116 + 3);
  if (v119 >= v118 >> 1)
  {
    v116 = sub_266ECAD54((v118 > 1), v119 + 1, 1, v116);
    *v115 = v116;
  }

  *(v116 + 2) = v119 + 1;
  v108(&v116[v111 + v119 * v112], v126, v104);
  return v113(v138, 0);
}

uint64_t sub_266FAC01C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FAC080(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FAC0E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static FLOWSchemaFLOWSmsTextContentMetadata.makeTypeManifestAndEnsureFields(in:)(const char *a1)
{
  v27 = a1;
  v1 = sub_26738113C();
  v28 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E538];
  v9 = *(v2 + 104);
  v9(v4, v8, v1);
  v25 = v2 + 104;
  v26 = v9;
  v29[0] = 1;
  sub_26738114C();
  v23 = sub_26738116C();
  v10 = *(v23 - 8);
  v11 = *(v10 + 56);
  v24 = v10 + 56;
  v11(v7, 0, 1, v23);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267438B20);
  v12(v29, 0);
  v9(v4, v8, v28);
  v29[0] = 1;
  sub_26738114C();
  v13 = v23;
  v11(v7, 0, 1, v23);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267438B40);
  v14(v29, 0);
  v21 = "messageWordLength";
  sub_266ECB294(0, &qword_2800F12B0, 0x277D575D0);
  sub_266ECAF2C(&qword_2800F12A8, &qword_2800F12B0, 0x277D575D0, &protocol conformance descriptor for FLOWSchemaFLOWKeyboardUsageMetadata);
  sub_26738120C();
  v22 = v11;
  v11(v7, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, v21 | 0x8000000000000000);
  v15(v29, 0);
  v27 = "flowKeyboardUsageMetadata";
  v16 = *MEMORY[0x277D3E4E8];
  v17 = v26;
  v26(v4, v16, v28);
  v29[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, v27 | 0x8000000000000000);
  v18(v29, 0);
  v17(v4, v16, v28);
  v29[0] = 1;
  sub_26738114C();
  v22(v7, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x8000000267438BA0);
  return v19(v29, 0);
}

uint64_t sub_266FAC720(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FAC784(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWSmsTextContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F16C0, 0x277D576E8);
  sub_266ECAF2C(&qword_2800F16B8, &qword_2800F16C0, 0x277D576E8, &protocol conformance descriptor for FLOWSchemaFLOWSmsTextContentMetadata);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x8000000267438BF0);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F1670, 0x277D576C8);
  sub_266ECAF2C(&qword_2800F1668, &qword_2800F1670, 0x277D576C8, &protocol conformance descriptor for FLOWSchemaFLOWSmsAttachmentMetadata);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267438C10);
  return v7(v9, 0);
}

uint64_t sub_266FACB00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FACB64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWSportName.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267438C60, isUniquelyReferenced_nonNull_native);
  *v3 = v46;

  v1(v57, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x8000000267438C80, v8);
  *v7 = v47;

  v5(v57, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x8000000267438CA0, v12);
  *v11 = v48;

  v9(v57, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000015, 0x8000000267438CC0, v16);
  *v15 = v49;

  v13(v57, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000016, 0x8000000267438CE0, v20);
  *v19 = v50;

  v17(v57, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000014, 0x8000000267438D00, v24);
  *v23 = v51;

  v21(v57, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000014, 0x8000000267438D20, v28);
  *v27 = v52;

  v25(v57, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000018, 0x8000000267438D40, v32);
  *v31 = v53;

  v29(v57, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000013, 0x8000000267438D60, v36);
  *v35 = v54;

  v33(v57, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000012, 0x8000000267438D80, v40);
  *v39 = v55;

  v37(v57, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000014, 0x8000000267438DA0, v44);
  *v43 = v56;

  v41(v57, 0);
  sub_266ECB128(&unk_287885F98);
  return sub_26738112C();
}

uint64_t sub_266FAD1B8(uint64_t a1)
{
  v2 = sub_266FAD2BC(&qword_2800F16D0, &protocol conformance descriptor for FLOWSchemaFLOWSportName);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FAD220(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FAD2BC(&qword_2800F16D0, &protocol conformance descriptor for FLOWSchemaFLOWSportName);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FAD2BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWSportName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWSPORTSExecution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWSPORTSUsecase(0);
  sub_266FADAA4(&qword_2800F16D8, type metadata accessor for FLOWSchemaFLOWSPORTSUsecase, &protocol conformance descriptor for FLOWSchemaFLOWSPORTSUsecase);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v33 = a2;
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x73557374726F7073, 0xED00006573616365);
  v12(v38, 0);
  v35 = *MEMORY[0x277D3E4E8];
  v13 = v36;
  v14 = *(v37 + 104);
  v37 += 104;
  v34 = v14;
  (v14)(v6);
  v38[0] = 1;
  sub_26738114C();
  v31 = v10;
  v32 = v11;
  v11(v9, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x8000000267438DF0);
  v15(v38, 0);
  v29 = v6;
  v30 = "isSportsWatchFaceRequest";
  v16 = v35;
  v17 = v34;
  v34(v6, v35, v13);
  v38[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v30 | 0x8000000000000000);
  v18(v38, 0);
  v30 = "isSnippetNextCardRequest";
  v19 = v29;
  v20 = v36;
  v17(v29, v16, v36);
  v38[0] = 1;
  sub_26738114C();
  v21 = v31;
  v22 = v32;
  v32(v9, 0, 1, v31);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v30 | 0x8000000000000000);
  v23(v38, 0);
  v30 = "isMachineUtterance";
  v24 = v34;
  v34(v19, v35, v20);
  v38[0] = 1;
  sub_26738114C();
  v22(v9, 0, 1, v21);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v30 | 0x8000000000000000);
  v25(v38, 0);
  v24(v19, v35, v36);
  v38[0] = 1;
  sub_26738114C();
  v22(v9, 0, 1, v21);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267438E70);
  v26(v38, 0);
  sub_266ECB128(&unk_287885FC8);
  return sub_2673811CC();
}

uint64_t sub_266FAD998(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FAD9FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FADAA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FADAEC()
{
  result = qword_2800F14D0;
  if (!qword_2800F14D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F14D0);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWSportsExecutionTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v40 = v1;
  v41 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWSportName(0);
  sub_266FAE4D8(&qword_2800F16C8, type metadata accessor for FLOWSchemaFLOWSportName, &protocol conformance descriptor for FLOWSchemaFLOWSportName);
  sub_26738122C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v34 = v9 + 56;
  v38 = v10;
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D614E74726F7073, 0xE900000000000065);
  v11(v43, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v42, 0x6D614E74726F7073, 0xE900000000000065);
  v14 = *(v9 + 48);
  v39 = v9 + 48;
  v37 = v14;
  if (!v14(v15, 1, v8))
  {
    sub_266ECB128(&unk_287885FF8);
    sub_26738115C();
  }

  (v13)(v42, 0);
  v12(v43, 0);
  v16 = *(v41 + 104);
  v36 = *MEMORY[0x277D3E530];
  v41 += 104;
  v35 = v16;
  v16(v4);
  v43[0] = 1;
  sub_26738114C();
  v38(v7, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x65756761656CLL, 0xE600000000000000);
  v17(v43, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v42, 0x65756761656CLL, 0xE600000000000000);
  if (!v37(v20, 1, v8))
  {
    sub_266ECB128(&unk_287886020);
    sub_26738115C();
  }

  (v19)(v42, 0);
  v18(v43, 0);
  v35(v4, v36, v40);
  v43[0] = 1;
  sub_26738114C();
  v38(v7, 0, 1, v8);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0x456574656C687461, 0xEF7365697469746ELL);
  v21(v43, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v42, 0x456574656C687461, 0xEF7365697469746ELL);
  if (!v37(v24, 1, v8))
  {
    sub_266ECB128(&unk_287886048);
    sub_26738115C();
  }

  (v23)(v42, 0);
  v22(v43, 0);
  v35(v4, v36, v40);
  v43[0] = 1;
  sub_26738114C();
  v38(v7, 0, 1, v8);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0x69746E456D616574, 0xEC00000073656974);
  v25(v43, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v42, 0x69746E456D616574, 0xEC00000073656974);
  if (!v37(v28, 1, v8))
  {
    sub_266ECB128(&unk_287886070);
    sub_26738115C();
  }

  (v27)(v42, 0);
  v26(v43, 0);
  v35(v4, v36, v40);
  v43[0] = 1;
  sub_26738114C();
  v38(v7, 0, 1, v8);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0x746E45746E657665, 0xED00007365697469);
  v29(v43, 0);
  v30 = sub_2673811AC();
  v31 = sub_266ECB6CC(v42, 0x746E45746E657665, 0xED00007365697469);
  if (!v37(v32, 1, v8))
  {
    sub_266ECB128(&unk_287886098);
    sub_26738115C();
  }

  (v31)(v42, 0);
  v30(v43, 0);
  sub_266ECB128(&unk_2878860C0);
  return sub_2673811CC();
}

uint64_t sub_266FAE3CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FAE430(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FAE4D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FAE520()
{
  result = qword_2800F1500;
  if (!qword_2800F1500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1500);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWSPORTSUsecase.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267438F00, isUniquelyReferenced_nonNull_native);
  *v3 = v130;

  v1(v162, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x8000000267438F20, v8);
  *v7 = v131;

  v5(v162, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v132 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267438F50, v12);
  *v11 = v132;

  v9(v162, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v133 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267438F80, v16);
  *v15 = v133;

  v13(v162, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x8000000267438FB0, v20);
  *v19 = v134;

  v17(v162, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v135 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001BLL, 0x8000000267438FD0, v24);
  *v23 = v135;

  v21(v162, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v136 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x8000000267438FF0, v28);
  *v27 = v136;

  v25(v162, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v137 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ELL, 0x8000000267439010, v32);
  *v31 = v137;

  v29(v162, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v138 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001BLL, 0x8000000267439030, v36);
  *v35 = v138;

  v33(v162, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v139 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000025, 0x8000000267439050, v40);
  *v39 = v139;

  v37(v162, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v140 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000020, 0x8000000267439080, v44);
  *v43 = v140;

  v41(v162, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000002DLL, 0x80000002674390B0, v48);
  *v47 = v141;

  v45(v162, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000018, 0x80000002674390E0, v52);
  *v51 = v142;

  v49(v162, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001ALL, 0x8000000267439100, v56);
  *v55 = v143;

  v53(v162, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v144 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000024, 0x8000000267439120, v60);
  *v59 = v144;

  v57(v162, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v145 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000017, 0x8000000267439150, v64);
  *v63 = v145;

  v61(v162, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v146 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000021, 0x8000000267439170, v68);
  *v67 = v146;

  v65(v162, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v147 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000022, 0x80000002674391A0, v72);
  *v71 = v147;

  v69(v162, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v148 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000001ELL, 0x80000002674391D0, v76);
  *v75 = v148;

  v73(v162, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v149 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000023, 0x80000002674391F0, v80);
  *v79 = v149;

  v77(v162, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v150 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000001FLL, 0x8000000267439220, v84);
  *v83 = v150;

  v81(v162, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v151 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001BLL, 0x8000000267439240, v88);
  *v87 = v151;

  v85(v162, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v152 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000025, 0x8000000267439260, v92);
  *v91 = v152;

  v89(v162, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v153 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001FLL, 0x8000000267439290, v96);
  *v95 = v153;

  v93(v162, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v154 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000018, 0x80000002674392B0, v100);
  *v99 = v154;

  v97(v162, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v155 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001CLL, 0x80000002674392D0, v104);
  *v103 = v155;

  v101(v162, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v156 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001FLL, 0x80000002674392F0, v108);
  *v107 = v156;

  v105(v162, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v157 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000020, 0x8000000267439310, v112);
  *v111 = v157;

  v109(v162, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000020, 0x8000000267439340, v116);
  *v115 = v158;

  v113(v162, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000001ELL, 0x8000000267439370, v120);
  *v119 = v159;

  v117(v162, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000022, 0x8000000267439390, v124);
  *v123 = v160;

  v121(v162, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000024, 0x80000002674393C0, v128);
  *v127 = v161;

  v125(v162, 0);
  sub_266ECB128(&unk_2878860F0);
  return sub_26738112C();
}

uint64_t sub_266FAF468(uint64_t a1)
{
  v2 = sub_266FAF56C(&qword_2800F16E0, &protocol conformance descriptor for FLOWSchemaFLOWSPORTSUsecase);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FAF4D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FAF56C(&qword_2800F16E0, &protocol conformance descriptor for FLOWSchemaFLOWSPORTSUsecase);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FAF56C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWSPORTSUsecase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWState.makeTypeManifestAndEnsureFields(in:)(char *a1)
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
  v9 = *(v2 + 104);
  v27 = *MEMORY[0x277D3E530];
  v8 = v27;
  v28 = v1;
  v9(v4, v27, v1);
  v29 = v2 + 104;
  v30 = v9;
  v34[0] = 1;
  sub_26738114C();
  v32 = sub_26738116C();
  v10 = *(v32 - 8);
  v33 = *(v10 + 56);
  v11 = v10 + 56;
  v33(v7, 0, 1, v32);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x54746E6572727563, 0xEF656D614E6B7361);
  v12(v34, 0);
  v9(v4, v8, v1);
  v34[0] = 1;
  sub_26738114C();
  v13 = v32;
  v14 = v33;
  v33(v7, 0, 1, v32);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x54746E6572727563, 0xEF657079546B7361);
  v15(v34, 0);
  type metadata accessor for FLOWSchemaFLOWStateType(0);
  sub_266FAFCCC();
  sub_26738120C();
  v16 = v13;
  v14(v7, 0, 1, v13);
  v17 = v14;
  v26 = v11;
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x74617453776F6C66, 0xED00006570795465);
  v18(v34, 0);
  sub_266ECB294(0, &qword_2800F16F0, 0x277D57708);
  sub_266ECAF2C(&qword_2800F16F8, &qword_2800F16F0, 0x277D57708, &protocol conformance descriptor for FLOWSchemaFLOWStateReason);
  sub_26738120C();
  v17(v7, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x74617453776F6C66, 0xEF6E6F7361655265);
  v19(v34, 0);
  v31 = "iri.flow.FLOWState";
  v20 = v27;
  v21 = v28;
  v22 = v30;
  v30(v4, v27, v28);
  v34[0] = 1;
  sub_26738114C();
  v33(v7, 0, 1, v16);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, v31 | 0x8000000000000000);
  v23(v34, 0);
  v22(v4, v20, v21);
  v34[0] = 1;
  sub_26738114C();
  v33(v7, 0, 1, v32);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x8000000267439440);
  return v24(v34, 0);
}

uint64_t sub_266FAFC08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FAFC6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FAFCCC()
{
  result = qword_2800F16E8;
  if (!qword_2800F16E8)
  {
    type metadata accessor for FLOWSchemaFLOWStateType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F16E8);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWStateReason.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWStatusReason(0);
  sub_266FB01CC(&qword_2800F1710, type metadata accessor for FLOWSchemaFLOWStatusReason, &protocol conformance descriptor for FLOWSchemaFLOWStatusReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6552737574617473, 0xEC0000006E6F7361);
  return v5(v7, 0);
}

uint64_t sub_266FAFF30(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWSchemaFLOWStatusReason(0);
  sub_266FB01CC(&qword_2800F1710, type metadata accessor for FLOWSchemaFLOWStatusReason, &protocol conformance descriptor for FLOWSchemaFLOWStatusReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6552737574617473, 0xEC0000006E6F7361);
  return v5(v7, 0);
}

uint64_t sub_266FB00C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FB0124(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FB01CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FB0214()
{
  result = qword_2800F16F0;
  if (!qword_2800F16F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F16F0);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWStateType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v625 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000015, 0x80000002674394C0, isUniquelyReferenced_nonNull_native);
  *v3 = v625;

  v1(v780, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v626 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x80000002674394E0, v8);
  *v7 = v626;

  v5(v780, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v627 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267439500, v12);
  *v11 = v627;

  v9(v780, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v628 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000015, 0x8000000267439520, v16);
  *v15 = v628;

  v13(v780, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v629 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000014, 0x8000000267439540, v20);
  *v19 = v629;

  v17(v780, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v630 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000016, 0x8000000267439560, v24);
  *v23 = v630;

  v21(v780, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v631 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000014, 0x8000000267439580, v28);
  *v27 = v631;

  v25(v780, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v632 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001CLL, 0x80000002674395A0, v32);
  *v31 = v632;

  v29(v780, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v633 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000012, 0x80000002674395C0, v36);
  *v35 = v633;

  v33(v780, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v634 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000014, 0x80000002674395E0, v40);
  *v39 = v634;

  v37(v780, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v635 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ALL, 0x8000000267439600, v44);
  *v43 = v635;

  v41(v780, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v636 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000019, 0x8000000267439620, v48);
  *v47 = v636;

  v45(v780, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v637 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001BLL, 0x8000000267439640, v52);
  *v51 = v637;

  v49(v780, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v638 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001CLL, 0x8000000267439660, v56);
  *v55 = v638;

  v53(v780, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v639 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000014, 0x8000000267439680, v60);
  *v59 = v639;

  v57(v780, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v640 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000018, 0x80000002674396A0, v64);
  *v63 = v640;

  v61(v780, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v641 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000019, 0x80000002674396C0, v68);
  *v67 = v641;

  v65(v780, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v642 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000001ELL, 0x80000002674396E0, v72);
  *v71 = v642;

  v69(v780, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v643 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000019, 0x8000000267439700, v76);
  *v75 = v643;

  v73(v780, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v644 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD00000000000001BLL, 0x8000000267439720, v80);
  *v79 = v644;

  v77(v780, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v645 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000001DLL, 0x8000000267439740, v84);
  *v83 = v645;

  v81(v780, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v646 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000021, 0x8000000267439760, v88);
  *v87 = v646;

  v85(v780, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v647 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000026, 0x8000000267439790, v92);
  *v91 = v647;

  v89(v780, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v648 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001ALL, 0x80000002674397C0, v96);
  *v95 = v648;

  v93(v780, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v649 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000001BLL, 0x80000002674397E0, v100);
  *v99 = v649;

  v97(v780, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v650 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000029, 0x8000000267439800, v104);
  *v103 = v650;

  v101(v780, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v651 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001FLL, 0x8000000267439830, v108);
  *v107 = v651;

  v105(v780, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v652 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD00000000000001ELL, 0x8000000267439850, v112);
  *v111 = v652;

  v109(v780, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v653 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000020, 0x8000000267439870, v116);
  *v115 = v653;

  v113(v780, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v654 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000022, 0x80000002674398A0, v120);
  *v119 = v654;

  v117(v780, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v655 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000020, 0x80000002674398D0, v124);
  *v123 = v655;

  v121(v780, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v656 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000020, 0x8000000267439900, v128);
  *v127 = v656;

  v125(v780, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v657 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000020, 0x8000000267439930, v132);
  *v131 = v657;

  v129(v780, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v658 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(33, 0xD00000000000001ELL, 0x8000000267439960, v136);
  *v135 = v658;

  v133(v780, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v659 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000014, 0x8000000267439980, v140);
  *v139 = v659;

  v137(v780, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v660 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(35, 0xD00000000000001ALL, 0x80000002674399A0, v144);
  *v143 = v660;

  v141(v780, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v661 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(36, 0xD00000000000001FLL, 0x80000002674399C0, v148);
  *v147 = v661;

  v145(v780, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v662 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(37, 0xD00000000000002BLL, 0x80000002674399E0, v152);
  *v151 = v662;

  v149(v780, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v663 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000025, 0x8000000267439A10, v156);
  *v155 = v663;

  v153(v780, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = swift_isUniquelyReferenced_nonNull_native();
  v664 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(39, 0xD000000000000035, 0x8000000267439A40, v160);
  *v159 = v664;

  v157(v780, 0);
  v161 = sub_26738111C();
  v163 = v162;
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v665 = *v163;
  *v163 = 0x8000000000000000;
  sub_266ECD368(40, 0xD00000000000001ELL, 0x8000000267439A80, v164);
  *v163 = v665;

  v161(v780, 0);
  v165 = sub_26738111C();
  v167 = v166;
  v168 = swift_isUniquelyReferenced_nonNull_native();
  v666 = *v167;
  *v167 = 0x8000000000000000;
  sub_266ECD368(41, 0xD00000000000001DLL, 0x8000000267439AA0, v168);
  *v167 = v666;

  v165(v780, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = swift_isUniquelyReferenced_nonNull_native();
  v667 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(42, 0xD00000000000001ELL, 0x8000000267439AC0, v172);
  *v171 = v667;

  v169(v780, 0);
  v173 = sub_26738111C();
  v175 = v174;
  v176 = swift_isUniquelyReferenced_nonNull_native();
  v668 = *v175;
  *v175 = 0x8000000000000000;
  sub_266ECD368(43, 0xD000000000000022, 0x8000000267439AE0, v176);
  *v175 = v668;

  v173(v780, 0);
  v177 = sub_26738111C();
  v179 = v178;
  v180 = swift_isUniquelyReferenced_nonNull_native();
  v669 = *v179;
  *v179 = 0x8000000000000000;
  sub_266ECD368(44, 0xD000000000000031, 0x8000000267439B10, v180);
  *v179 = v669;

  v177(v780, 0);
  v181 = sub_266ECB128(&unk_287886120);
  v183 = v182;
  v184 = sub_2673810FC();
  v186 = v185;
  v187 = swift_isUniquelyReferenced_nonNull_native();
  v670 = *v186;
  *v186 = 0x8000000000000000;
  sub_266ECD4CC(v181, v183, 44, v187);
  *v186 = v670;
  v184(v780, 0);
  v188 = sub_26738111C();
  v190 = v189;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v671 = *v190;
  *v190 = 0x8000000000000000;
  sub_266ECD368(100, 0xD000000000000021, 0x8000000267439B50, v191);
  *v190 = v671;

  v188(v780, 0);
  v192 = sub_26738111C();
  v194 = v193;
  v195 = swift_isUniquelyReferenced_nonNull_native();
  v672 = *v194;
  *v194 = 0x8000000000000000;
  sub_266ECD368(101, 0xD000000000000027, 0x8000000267439B80, v195);
  *v194 = v672;

  v192(v780, 0);
  v196 = sub_26738111C();
  v198 = v197;
  v199 = swift_isUniquelyReferenced_nonNull_native();
  v673 = *v198;
  *v198 = 0x8000000000000000;
  sub_266ECD368(102, 0xD00000000000002BLL, 0x8000000267439BB0, v199);
  *v198 = v673;

  v196(v780, 0);
  v200 = sub_26738111C();
  v202 = v201;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v674 = *v202;
  *v202 = 0x8000000000000000;
  sub_266ECD368(103, 0xD000000000000025, 0x8000000267439BE0, v203);
  *v202 = v674;

  v200(v780, 0);
  v204 = sub_26738111C();
  v206 = v205;
  v207 = swift_isUniquelyReferenced_nonNull_native();
  v675 = *v206;
  *v206 = 0x8000000000000000;
  sub_266ECD368(104, 0xD000000000000024, 0x8000000267439C10, v207);
  *v206 = v675;

  v204(v780, 0);
  v208 = sub_26738111C();
  v210 = v209;
  v211 = swift_isUniquelyReferenced_nonNull_native();
  v676 = *v210;
  *v210 = 0x8000000000000000;
  sub_266ECD368(105, 0xD000000000000027, 0x8000000267439C40, v211);
  *v210 = v676;

  v208(v780, 0);
  v212 = sub_26738111C();
  v214 = v213;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v677 = *v214;
  *v214 = 0x8000000000000000;
  sub_266ECD368(106, 0xD00000000000002ALL, 0x8000000267439C70, v215);
  *v214 = v677;

  v212(v780, 0);
  v216 = sub_26738111C();
  v218 = v217;
  v219 = swift_isUniquelyReferenced_nonNull_native();
  v678 = *v218;
  *v218 = 0x8000000000000000;
  sub_266ECD368(107, 0xD00000000000002CLL, 0x8000000267439CA0, v219);
  *v218 = v678;

  v216(v780, 0);
  v220 = sub_26738111C();
  v222 = v221;
  v223 = swift_isUniquelyReferenced_nonNull_native();
  v679 = *v222;
  *v222 = 0x8000000000000000;
  sub_266ECD368(108, 0xD000000000000024, 0x8000000267439CD0, v223);
  *v222 = v679;

  v220(v780, 0);
  v224 = sub_26738111C();
  v226 = v225;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v680 = *v226;
  *v226 = 0x8000000000000000;
  sub_266ECD368(109, 0xD00000000000002ALL, 0x8000000267439D00, v227);
  *v226 = v680;

  v224(v780, 0);
  v228 = sub_26738111C();
  v230 = v229;
  v231 = swift_isUniquelyReferenced_nonNull_native();
  v681 = *v230;
  *v230 = 0x8000000000000000;
  sub_266ECD368(110, 0xD000000000000021, 0x8000000267439D30, v231);
  *v230 = v681;

  v228(v780, 0);
  v232 = sub_26738111C();
  v234 = v233;
  v235 = swift_isUniquelyReferenced_nonNull_native();
  v682 = *v234;
  *v234 = 0x8000000000000000;
  sub_266ECD368(111, 0xD000000000000021, 0x8000000267439D60, v235);
  *v234 = v682;

  v232(v780, 0);
  v236 = sub_26738111C();
  v238 = v237;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v683 = *v238;
  *v238 = 0x8000000000000000;
  sub_266ECD368(112, 0xD000000000000023, 0x8000000267439D90, v239);
  *v238 = v683;

  v236(v780, 0);
  v240 = sub_26738111C();
  v242 = v241;
  v243 = swift_isUniquelyReferenced_nonNull_native();
  v684 = *v242;
  *v242 = 0x8000000000000000;
  sub_266ECD368(113, 0xD000000000000025, 0x8000000267439DC0, v243);
  *v242 = v684;

  v240(v780, 0);
  v244 = sub_26738111C();
  v246 = v245;
  v247 = swift_isUniquelyReferenced_nonNull_native();
  v685 = *v246;
  *v246 = 0x8000000000000000;
  sub_266ECD368(114, 0xD000000000000023, 0x8000000267439DF0, v247);
  *v246 = v685;

  v244(v780, 0);
  v248 = sub_26738111C();
  v250 = v249;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  v686 = *v250;
  *v250 = 0x8000000000000000;
  sub_266ECD368(115, 0xD000000000000028, 0x8000000267439E20, v251);
  *v250 = v686;

  v248(v780, 0);
  v252 = sub_26738111C();
  v254 = v253;
  v255 = swift_isUniquelyReferenced_nonNull_native();
  v687 = *v254;
  *v254 = 0x8000000000000000;
  sub_266ECD368(116, 0xD000000000000024, 0x8000000267439E50, v255);
  *v254 = v687;

  v252(v780, 0);
  v256 = sub_26738111C();
  v258 = v257;
  v259 = swift_isUniquelyReferenced_nonNull_native();
  v688 = *v258;
  *v258 = 0x8000000000000000;
  sub_266ECD368(117, 0xD000000000000021, 0x8000000267439E80, v259);
  *v258 = v688;

  v256(v780, 0);
  v260 = sub_26738111C();
  v262 = v261;
  v263 = swift_isUniquelyReferenced_nonNull_native();
  v689 = *v262;
  *v262 = 0x8000000000000000;
  sub_266ECD368(118, 0xD000000000000024, 0x8000000267439EB0, v263);
  *v262 = v689;

  v260(v780, 0);
  v264 = sub_26738111C();
  v266 = v265;
  v267 = swift_isUniquelyReferenced_nonNull_native();
  v690 = *v266;
  *v266 = 0x8000000000000000;
  sub_266ECD368(119, 0xD000000000000025, 0x8000000267439EE0, v267);
  *v266 = v690;

  v264(v780, 0);
  v268 = sub_26738111C();
  v270 = v269;
  v271 = swift_isUniquelyReferenced_nonNull_native();
  v691 = *v270;
  *v270 = 0x8000000000000000;
  sub_266ECD368(120, 0xD000000000000012, 0x8000000267439F10, v271);
  *v270 = v691;

  v268(v780, 0);
  v272 = sub_26738111C();
  v274 = v273;
  v275 = swift_isUniquelyReferenced_nonNull_native();
  v692 = *v274;
  *v274 = 0x8000000000000000;
  sub_266ECD368(121, 0xD000000000000012, 0x8000000267439F30, v275);
  *v274 = v692;

  v272(v780, 0);
  v276 = sub_26738111C();
  v278 = v277;
  v279 = swift_isUniquelyReferenced_nonNull_native();
  v693 = *v278;
  *v278 = 0x8000000000000000;
  sub_266ECD368(122, 0xD000000000000013, 0x8000000267439F50, v279);
  *v278 = v693;

  v276(v780, 0);
  v280 = sub_26738111C();
  v282 = v281;
  v283 = swift_isUniquelyReferenced_nonNull_native();
  v694 = *v282;
  *v282 = 0x8000000000000000;
  sub_266ECD368(123, 0xD000000000000019, 0x8000000267439F70, v283);
  *v282 = v694;

  v280(v780, 0);
  v284 = sub_26738111C();
  v286 = v285;
  v287 = swift_isUniquelyReferenced_nonNull_native();
  v695 = *v286;
  *v286 = 0x8000000000000000;
  sub_266ECD368(124, 0xD000000000000018, 0x8000000267439F90, v287);
  *v286 = v695;

  v284(v780, 0);
  v288 = sub_26738111C();
  v290 = v289;
  v291 = swift_isUniquelyReferenced_nonNull_native();
  v696 = *v290;
  *v290 = 0x8000000000000000;
  sub_266ECD368(125, 0xD00000000000001CLL, 0x8000000267439FB0, v291);
  *v290 = v696;

  v288(v780, 0);
  v292 = sub_26738111C();
  v294 = v293;
  v295 = swift_isUniquelyReferenced_nonNull_native();
  v697 = *v294;
  *v294 = 0x8000000000000000;
  sub_266ECD368(126, 0xD00000000000001DLL, 0x8000000267439FD0, v295);
  *v294 = v697;

  v292(v780, 0);
  v296 = sub_26738111C();
  v298 = v297;
  v299 = swift_isUniquelyReferenced_nonNull_native();
  v698 = *v298;
  *v298 = 0x8000000000000000;
  sub_266ECD368(127, 0xD00000000000001ALL, 0x8000000267439FF0, v299);
  *v298 = v698;

  v296(v780, 0);
  v300 = sub_26738111C();
  v302 = v301;
  v303 = swift_isUniquelyReferenced_nonNull_native();
  v699 = *v302;
  *v302 = 0x8000000000000000;
  sub_266ECD368(128, 0xD00000000000001ALL, 0x800000026743A010, v303);
  *v302 = v699;

  v300(v780, 0);
  v304 = sub_26738111C();
  v306 = v305;
  v307 = swift_isUniquelyReferenced_nonNull_native();
  v700 = *v306;
  *v306 = 0x8000000000000000;
  sub_266ECD368(129, 0xD00000000000001FLL, 0x800000026743A030, v307);
  *v306 = v700;

  v304(v780, 0);
  v308 = sub_26738111C();
  v310 = v309;
  v311 = swift_isUniquelyReferenced_nonNull_native();
  v701 = *v310;
  *v310 = 0x8000000000000000;
  sub_266ECD368(130, 0xD000000000000019, 0x800000026743A050, v311);
  *v310 = v701;

  v308(v780, 0);
  v312 = sub_26738111C();
  v314 = v313;
  v315 = swift_isUniquelyReferenced_nonNull_native();
  v702 = *v314;
  *v314 = 0x8000000000000000;
  sub_266ECD368(131, 0xD000000000000018, 0x800000026743A070, v315);
  *v314 = v702;

  v312(v780, 0);
  v316 = sub_26738111C();
  v318 = v317;
  v319 = swift_isUniquelyReferenced_nonNull_native();
  v703 = *v318;
  *v318 = 0x8000000000000000;
  sub_266ECD368(132, 0xD000000000000014, 0x800000026743A090, v319);
  *v318 = v703;

  v316(v780, 0);
  v320 = sub_26738111C();
  v322 = v321;
  v323 = swift_isUniquelyReferenced_nonNull_native();
  v704 = *v322;
  *v322 = 0x8000000000000000;
  sub_266ECD368(133, 0xD00000000000001ELL, 0x800000026743A0B0, v323);
  *v322 = v704;

  v320(v780, 0);
  v324 = sub_26738111C();
  v326 = v325;
  v327 = swift_isUniquelyReferenced_nonNull_native();
  v705 = *v326;
  *v326 = 0x8000000000000000;
  sub_266ECD368(134, 0xD000000000000029, 0x800000026743A0D0, v327);
  *v326 = v705;

  v324(v780, 0);
  v328 = sub_26738111C();
  v330 = v329;
  v331 = swift_isUniquelyReferenced_nonNull_native();
  v706 = *v330;
  *v330 = 0x8000000000000000;
  sub_266ECD368(135, 0xD000000000000024, 0x800000026743A100, v331);
  *v330 = v706;

  v328(v780, 0);
  v332 = sub_26738111C();
  v334 = v333;
  v335 = swift_isUniquelyReferenced_nonNull_native();
  v707 = *v334;
  *v334 = 0x8000000000000000;
  sub_266ECD368(136, 0xD000000000000023, 0x800000026743A130, v335);
  *v334 = v707;

  v332(v780, 0);
  v336 = sub_26738111C();
  v338 = v337;
  v339 = swift_isUniquelyReferenced_nonNull_native();
  v708 = *v338;
  *v338 = 0x8000000000000000;
  sub_266ECD368(137, 0xD000000000000021, 0x800000026743A160, v339);
  *v338 = v708;

  v336(v780, 0);
  v340 = sub_26738111C();
  v342 = v341;
  v343 = swift_isUniquelyReferenced_nonNull_native();
  v709 = *v342;
  *v342 = 0x8000000000000000;
  sub_266ECD368(138, 0xD000000000000021, 0x800000026743A190, v343);
  *v342 = v709;

  v340(v780, 0);
  v344 = sub_26738111C();
  v346 = v345;
  v347 = swift_isUniquelyReferenced_nonNull_native();
  v710 = *v346;
  *v346 = 0x8000000000000000;
  sub_266ECD368(139, 0xD00000000000001FLL, 0x800000026743A1C0, v347);
  *v346 = v710;

  v344(v780, 0);
  v348 = sub_26738111C();
  v350 = v349;
  v351 = swift_isUniquelyReferenced_nonNull_native();
  v711 = *v350;
  *v350 = 0x8000000000000000;
  sub_266ECD368(140, 0xD00000000000001FLL, 0x800000026743A1E0, v351);
  *v350 = v711;

  v348(v780, 0);
  v352 = sub_26738111C();
  v354 = v353;
  v355 = swift_isUniquelyReferenced_nonNull_native();
  v712 = *v354;
  *v354 = 0x8000000000000000;
  sub_266ECD368(141, 0xD000000000000027, 0x800000026743A200, v355);
  *v354 = v712;

  v352(v780, 0);
  v356 = sub_26738111C();
  v358 = v357;
  v359 = swift_isUniquelyReferenced_nonNull_native();
  v713 = *v358;
  *v358 = 0x8000000000000000;
  sub_266ECD368(142, 0xD00000000000001ELL, 0x800000026743A230, v359);
  *v358 = v713;

  v356(v780, 0);
  v360 = sub_26738111C();
  v362 = v361;
  v363 = swift_isUniquelyReferenced_nonNull_native();
  v714 = *v362;
  *v362 = 0x8000000000000000;
  sub_266ECD368(143, 0xD00000000000001CLL, 0x800000026743A250, v363);
  *v362 = v714;

  v360(v780, 0);
  v364 = sub_26738111C();
  v366 = v365;
  v367 = swift_isUniquelyReferenced_nonNull_native();
  v715 = *v366;
  *v366 = 0x8000000000000000;
  sub_266ECD368(144, 0xD000000000000026, 0x800000026743A270, v367);
  *v366 = v715;

  v364(v780, 0);
  v368 = sub_26738111C();
  v370 = v369;
  v371 = swift_isUniquelyReferenced_nonNull_native();
  v716 = *v370;
  *v370 = 0x8000000000000000;
  sub_266ECD368(145, 0xD00000000000002DLL, 0x800000026743A2A0, v371);
  *v370 = v716;

  v368(v780, 0);
  v372 = sub_26738111C();
  v374 = v373;
  v375 = swift_isUniquelyReferenced_nonNull_native();
  v717 = *v374;
  *v374 = 0x8000000000000000;
  sub_266ECD368(146, 0xD000000000000030, 0x800000026743A2D0, v375);
  *v374 = v717;

  v372(v780, 0);
  v376 = sub_26738111C();
  v378 = v377;
  v379 = swift_isUniquelyReferenced_nonNull_native();
  v718 = *v378;
  *v378 = 0x8000000000000000;
  sub_266ECD368(147, 0xD000000000000030, 0x800000026743A310, v379);
  *v378 = v718;

  v376(v780, 0);
  v380 = sub_26738111C();
  v382 = v381;
  v383 = swift_isUniquelyReferenced_nonNull_native();
  v719 = *v382;
  *v382 = 0x8000000000000000;
  sub_266ECD368(148, 0xD000000000000033, 0x800000026743A350, v383);
  *v382 = v719;

  v380(v780, 0);
  v384 = sub_26738111C();
  v386 = v385;
  v387 = swift_isUniquelyReferenced_nonNull_native();
  v720 = *v386;
  *v386 = 0x8000000000000000;
  sub_266ECD368(149, 0xD00000000000003BLL, 0x800000026743A390, v387);
  *v386 = v720;

  v384(v780, 0);
  v388 = sub_26738111C();
  v390 = v389;
  v391 = swift_isUniquelyReferenced_nonNull_native();
  v721 = *v390;
  *v390 = 0x8000000000000000;
  sub_266ECD368(150, 0xD00000000000003ALL, 0x800000026743A3D0, v391);
  *v390 = v721;

  v388(v780, 0);
  v392 = sub_26738111C();
  v394 = v393;
  v395 = swift_isUniquelyReferenced_nonNull_native();
  v722 = *v394;
  *v394 = 0x8000000000000000;
  sub_266ECD368(151, 0xD00000000000003ALL, 0x800000026743A410, v395);
  *v394 = v722;

  v392(v780, 0);
  v396 = sub_26738111C();
  v398 = v397;
  v399 = swift_isUniquelyReferenced_nonNull_native();
  v723 = *v398;
  *v398 = 0x8000000000000000;
  sub_266ECD368(166, 0xD000000000000037, 0x800000026743A450, v399);
  *v398 = v723;

  v396(v780, 0);
  v400 = sub_26738111C();
  v402 = v401;
  v403 = swift_isUniquelyReferenced_nonNull_native();
  v724 = *v402;
  *v402 = 0x8000000000000000;
  sub_266ECD368(152, 0xD00000000000002BLL, 0x800000026743A490, v403);
  *v402 = v724;

  v400(v780, 0);
  v404 = sub_26738111C();
  v406 = v405;
  v407 = swift_isUniquelyReferenced_nonNull_native();
  v725 = *v406;
  *v406 = 0x8000000000000000;
  sub_266ECD368(153, 0xD00000000000001BLL, 0x800000026743A4C0, v407);
  *v406 = v725;

  v404(v780, 0);
  v408 = sub_26738111C();
  v410 = v409;
  v411 = swift_isUniquelyReferenced_nonNull_native();
  v726 = *v410;
  *v410 = 0x8000000000000000;
  sub_266ECD368(154, 0xD000000000000016, 0x800000026743A4E0, v411);
  *v410 = v726;

  v408(v780, 0);
  v412 = sub_26738111C();
  v414 = v413;
  v415 = swift_isUniquelyReferenced_nonNull_native();
  v727 = *v414;
  *v414 = 0x8000000000000000;
  sub_266ECD368(155, 0xD00000000000001DLL, 0x800000026743A500, v415);
  *v414 = v727;

  v412(v780, 0);
  v416 = sub_26738111C();
  v418 = v417;
  v419 = swift_isUniquelyReferenced_nonNull_native();
  v728 = *v418;
  *v418 = 0x8000000000000000;
  sub_266ECD368(156, 0xD000000000000018, 0x800000026743A520, v419);
  *v418 = v728;

  v416(v780, 0);
  v420 = sub_26738111C();
  v422 = v421;
  v423 = swift_isUniquelyReferenced_nonNull_native();
  v729 = *v422;
  *v422 = 0x8000000000000000;
  sub_266ECD368(157, 0xD00000000000001FLL, 0x800000026743A540, v423);
  *v422 = v729;

  v420(v780, 0);
  v424 = sub_26738111C();
  v426 = v425;
  v427 = swift_isUniquelyReferenced_nonNull_native();
  v730 = *v426;
  *v426 = 0x8000000000000000;
  sub_266ECD368(158, 0xD00000000000002CLL, 0x800000026743A560, v427);
  *v426 = v730;

  v424(v780, 0);
  v428 = sub_26738111C();
  v430 = v429;
  v431 = swift_isUniquelyReferenced_nonNull_native();
  v731 = *v430;
  *v430 = 0x8000000000000000;
  sub_266ECD368(159, 0xD00000000000001FLL, 0x800000026743A590, v431);
  *v430 = v731;

  v428(v780, 0);
  v432 = sub_26738111C();
  v434 = v433;
  v435 = swift_isUniquelyReferenced_nonNull_native();
  v732 = *v434;
  *v434 = 0x8000000000000000;
  sub_266ECD368(160, 0xD000000000000024, 0x800000026743A5B0, v435);
  *v434 = v732;

  v432(v780, 0);
  v436 = sub_26738111C();
  v438 = v437;
  v439 = swift_isUniquelyReferenced_nonNull_native();
  v733 = *v438;
  *v438 = 0x8000000000000000;
  sub_266ECD368(161, 0xD00000000000002BLL, 0x800000026743A5E0, v439);
  *v438 = v733;

  v436(v780, 0);
  v440 = sub_26738111C();
  v442 = v441;
  v443 = swift_isUniquelyReferenced_nonNull_native();
  v734 = *v442;
  *v442 = 0x8000000000000000;
  sub_266ECD368(162, 0xD000000000000034, 0x800000026743A610, v443);
  *v442 = v734;

  v440(v780, 0);
  v444 = sub_26738111C();
  v446 = v445;
  v447 = swift_isUniquelyReferenced_nonNull_native();
  v735 = *v446;
  *v446 = 0x8000000000000000;
  sub_266ECD368(163, 0xD00000000000001ELL, 0x800000026743A650, v447);
  *v446 = v735;

  v444(v780, 0);
  v448 = sub_26738111C();
  v450 = v449;
  v451 = swift_isUniquelyReferenced_nonNull_native();
  v736 = *v450;
  *v450 = 0x8000000000000000;
  sub_266ECD368(164, 0xD00000000000001ELL, 0x800000026743A670, v451);
  *v450 = v736;

  v448(v780, 0);
  v452 = sub_26738111C();
  v454 = v453;
  v455 = swift_isUniquelyReferenced_nonNull_native();
  v737 = *v454;
  *v454 = 0x8000000000000000;
  sub_266ECD368(165, 0xD00000000000002BLL, 0x800000026743A690, v455);
  *v454 = v737;

  v452(v780, 0);
  v456 = sub_26738111C();
  v458 = v457;
  v459 = swift_isUniquelyReferenced_nonNull_native();
  v738 = *v458;
  *v458 = 0x8000000000000000;
  sub_266ECD368(167, 0xD000000000000023, 0x800000026743A6C0, v459);
  *v458 = v738;

  v456(v780, 0);
  v460 = sub_26738111C();
  v462 = v461;
  v463 = swift_isUniquelyReferenced_nonNull_native();
  v739 = *v462;
  *v462 = 0x8000000000000000;
  sub_266ECD368(168, 0xD00000000000002ALL, 0x800000026743A6F0, v463);
  *v462 = v739;

  v460(v780, 0);
  v464 = sub_26738111C();
  v466 = v465;
  v467 = swift_isUniquelyReferenced_nonNull_native();
  v740 = *v466;
  *v466 = 0x8000000000000000;
  sub_266ECD368(169, 0xD000000000000036, 0x800000026743A720, v467);
  *v466 = v740;

  v464(v780, 0);
  v468 = sub_26738111C();
  v470 = v469;
  v471 = swift_isUniquelyReferenced_nonNull_native();
  v741 = *v470;
  *v470 = 0x8000000000000000;
  sub_266ECD368(170, 0xD000000000000035, 0x800000026743A760, v471);
  *v470 = v741;

  v468(v780, 0);
  v472 = sub_26738111C();
  v474 = v473;
  v475 = swift_isUniquelyReferenced_nonNull_native();
  v742 = *v474;
  *v474 = 0x8000000000000000;
  sub_266ECD368(171, 0xD000000000000020, 0x800000026743A7A0, v475);
  *v474 = v742;

  v472(v780, 0);
  v476 = sub_26738111C();
  v478 = v477;
  v479 = swift_isUniquelyReferenced_nonNull_native();
  v743 = *v478;
  *v478 = 0x8000000000000000;
  sub_266ECD368(172, 0xD000000000000027, 0x800000026743A7D0, v479);
  *v478 = v743;

  v476(v780, 0);
  v480 = sub_26738111C();
  v482 = v481;
  v483 = swift_isUniquelyReferenced_nonNull_native();
  v744 = *v482;
  *v482 = 0x8000000000000000;
  sub_266ECD368(173, 0xD000000000000021, 0x800000026743A800, v483);
  *v482 = v744;

  v480(v780, 0);
  v484 = sub_26738111C();
  v486 = v485;
  v487 = swift_isUniquelyReferenced_nonNull_native();
  v745 = *v486;
  *v486 = 0x8000000000000000;
  sub_266ECD368(174, 0xD000000000000027, 0x800000026743A830, v487);
  *v486 = v745;

  v484(v780, 0);
  v488 = sub_26738111C();
  v490 = v489;
  v491 = swift_isUniquelyReferenced_nonNull_native();
  v746 = *v490;
  *v490 = 0x8000000000000000;
  sub_266ECD368(175, 0xD000000000000038, 0x800000026743A860, v491);
  *v490 = v746;

  v488(v780, 0);
  v492 = sub_26738111C();
  v494 = v493;
  v495 = swift_isUniquelyReferenced_nonNull_native();
  v747 = *v494;
  *v494 = 0x8000000000000000;
  sub_266ECD368(176, 0xD00000000000002FLL, 0x800000026743A8A0, v495);
  *v494 = v747;

  v492(v780, 0);
  v496 = sub_26738111C();
  v498 = v497;
  v499 = swift_isUniquelyReferenced_nonNull_native();
  v748 = *v498;
  *v498 = 0x8000000000000000;
  sub_266ECD368(177, 0xD00000000000001FLL, 0x800000026743A8D0, v499);
  *v498 = v748;

  v496(v780, 0);
  v500 = sub_26738111C();
  v502 = v501;
  v503 = swift_isUniquelyReferenced_nonNull_native();
  v749 = *v502;
  *v502 = 0x8000000000000000;
  sub_266ECD368(178, 0xD00000000000002CLL, 0x800000026743A8F0, v503);
  *v502 = v749;

  v500(v780, 0);
  v504 = sub_26738111C();
  v506 = v505;
  v507 = swift_isUniquelyReferenced_nonNull_native();
  v750 = *v506;
  *v506 = 0x8000000000000000;
  sub_266ECD368(179, 0xD00000000000001FLL, 0x800000026743A920, v507);
  *v506 = v750;

  v504(v780, 0);
  v508 = sub_26738111C();
  v510 = v509;
  v511 = swift_isUniquelyReferenced_nonNull_native();
  v751 = *v510;
  *v510 = 0x8000000000000000;
  sub_266ECD368(180, 0xD00000000000002BLL, 0x800000026743A940, v511);
  *v510 = v751;

  v508(v780, 0);
  v512 = sub_26738111C();
  v514 = v513;
  v515 = swift_isUniquelyReferenced_nonNull_native();
  v752 = *v514;
  *v514 = 0x8000000000000000;
  sub_266ECD368(181, 0xD000000000000029, 0x800000026743A970, v515);
  *v514 = v752;

  v512(v780, 0);
  v516 = sub_26738111C();
  v518 = v517;
  v519 = swift_isUniquelyReferenced_nonNull_native();
  v753 = *v518;
  *v518 = 0x8000000000000000;
  sub_266ECD368(182, 0xD000000000000029, 0x800000026743A9A0, v519);
  *v518 = v753;

  v516(v780, 0);
  v520 = sub_26738111C();
  v522 = v521;
  v523 = swift_isUniquelyReferenced_nonNull_native();
  v754 = *v522;
  *v522 = 0x8000000000000000;
  sub_266ECD368(183, 0xD00000000000002ALL, 0x800000026743A9D0, v523);
  *v522 = v754;

  v520(v780, 0);
  v524 = sub_26738111C();
  v526 = v525;
  v527 = swift_isUniquelyReferenced_nonNull_native();
  v755 = *v526;
  *v526 = 0x8000000000000000;
  sub_266ECD368(184, 0xD000000000000024, 0x800000026743AA00, v527);
  *v526 = v755;

  v524(v780, 0);
  v528 = sub_26738111C();
  v530 = v529;
  v531 = swift_isUniquelyReferenced_nonNull_native();
  v756 = *v530;
  *v530 = 0x8000000000000000;
  sub_266ECD368(185, 0xD00000000000002CLL, 0x800000026743AA30, v531);
  *v530 = v756;

  v528(v780, 0);
  v532 = sub_26738111C();
  v534 = v533;
  v535 = swift_isUniquelyReferenced_nonNull_native();
  v757 = *v534;
  *v534 = 0x8000000000000000;
  sub_266ECD368(186, 0xD00000000000002CLL, 0x800000026743AA60, v535);
  *v534 = v757;

  v532(v780, 0);
  v536 = sub_26738111C();
  v538 = v537;
  v539 = swift_isUniquelyReferenced_nonNull_native();
  v758 = *v538;
  *v538 = 0x8000000000000000;
  sub_266ECD368(187, 0xD000000000000023, 0x800000026743AA90, v539);
  *v538 = v758;

  v536(v780, 0);
  v540 = sub_26738111C();
  v542 = v541;
  v543 = swift_isUniquelyReferenced_nonNull_native();
  v759 = *v542;
  *v542 = 0x8000000000000000;
  sub_266ECD368(188, 0xD000000000000024, 0x800000026743AAC0, v543);
  *v542 = v759;

  v540(v780, 0);
  v544 = sub_26738111C();
  v546 = v545;
  v547 = swift_isUniquelyReferenced_nonNull_native();
  v760 = *v546;
  *v546 = 0x8000000000000000;
  sub_266ECD368(189, 0xD000000000000022, 0x800000026743AAF0, v547);
  *v546 = v760;

  v544(v780, 0);
  v548 = sub_26738111C();
  v550 = v549;
  v551 = swift_isUniquelyReferenced_nonNull_native();
  v761 = *v550;
  *v550 = 0x8000000000000000;
  sub_266ECD368(190, 0xD00000000000002DLL, 0x800000026743AB20, v551);
  *v550 = v761;

  v548(v780, 0);
  v552 = sub_26738111C();
  v554 = v553;
  v555 = swift_isUniquelyReferenced_nonNull_native();
  v762 = *v554;
  *v554 = 0x8000000000000000;
  sub_266ECD368(191, 0xD000000000000023, 0x800000026743AB50, v555);
  *v554 = v762;

  v552(v780, 0);
  v556 = sub_26738111C();
  v558 = v557;
  v559 = swift_isUniquelyReferenced_nonNull_native();
  v763 = *v558;
  *v558 = 0x8000000000000000;
  sub_266ECD368(192, 0xD000000000000021, 0x800000026743AB80, v559);
  *v558 = v763;

  v556(v780, 0);
  v560 = sub_26738111C();
  v562 = v561;
  v563 = swift_isUniquelyReferenced_nonNull_native();
  v764 = *v562;
  *v562 = 0x8000000000000000;
  sub_266ECD368(193, 0xD00000000000002CLL, 0x800000026743ABB0, v563);
  *v562 = v764;

  v560(v780, 0);
  v564 = sub_26738111C();
  v566 = v565;
  v567 = swift_isUniquelyReferenced_nonNull_native();
  v765 = *v566;
  *v566 = 0x8000000000000000;
  sub_266ECD368(194, 0xD000000000000021, 0x800000026743ABE0, v567);
  *v566 = v765;

  v564(v780, 0);
  v568 = sub_26738111C();
  v570 = v569;
  v571 = swift_isUniquelyReferenced_nonNull_native();
  v766 = *v570;
  *v570 = 0x8000000000000000;
  sub_266ECD368(195, 0xD00000000000002CLL, 0x800000026743AC10, v571);
  *v570 = v766;

  v568(v780, 0);
  v572 = sub_26738111C();
  v574 = v573;
  v575 = swift_isUniquelyReferenced_nonNull_native();
  v767 = *v574;
  *v574 = 0x8000000000000000;
  sub_266ECD368(196, 0xD00000000000002BLL, 0x800000026743AC40, v575);
  *v574 = v767;

  v572(v780, 0);
  v576 = sub_26738111C();
  v578 = v577;
  v579 = swift_isUniquelyReferenced_nonNull_native();
  v768 = *v578;
  *v578 = 0x8000000000000000;
  sub_266ECD368(197, 0xD000000000000029, 0x800000026743AC70, v579);
  *v578 = v768;

  v576(v780, 0);
  v580 = sub_26738111C();
  v582 = v581;
  v583 = swift_isUniquelyReferenced_nonNull_native();
  v769 = *v582;
  *v582 = 0x8000000000000000;
  sub_266ECD368(198, 0xD000000000000034, 0x800000026743ACA0, v583);
  *v582 = v769;

  v580(v780, 0);
  v584 = sub_26738111C();
  v586 = v585;
  v587 = swift_isUniquelyReferenced_nonNull_native();
  v770 = *v586;
  *v586 = 0x8000000000000000;
  sub_266ECD368(199, 0xD000000000000025, 0x800000026743ACE0, v587);
  *v586 = v770;

  v584(v780, 0);
  v588 = sub_26738111C();
  v590 = v589;
  v591 = swift_isUniquelyReferenced_nonNull_native();
  v771 = *v590;
  *v590 = 0x8000000000000000;
  sub_266ECD368(200, 0xD000000000000023, 0x800000026743AD10, v591);
  *v590 = v771;

  v588(v780, 0);
  v592 = sub_26738111C();
  v594 = v593;
  v595 = swift_isUniquelyReferenced_nonNull_native();
  v772 = *v594;
  *v594 = 0x8000000000000000;
  sub_266ECD368(201, 0xD00000000000002ELL, 0x800000026743AD40, v595);
  *v594 = v772;

  v592(v780, 0);
  v596 = sub_26738111C();
  v598 = v597;
  v599 = swift_isUniquelyReferenced_nonNull_native();
  v773 = *v598;
  *v598 = 0x8000000000000000;
  sub_266ECD368(202, 0xD000000000000022, 0x800000026743AD70, v599);
  *v598 = v773;

  v596(v780, 0);
  v600 = sub_26738111C();
  v602 = v601;
  v603 = swift_isUniquelyReferenced_nonNull_native();
  v774 = *v602;
  *v602 = 0x8000000000000000;
  sub_266ECD368(203, 0xD000000000000020, 0x800000026743ADA0, v603);
  *v602 = v774;

  v600(v780, 0);
  v604 = sub_26738111C();
  v606 = v605;
  v607 = swift_isUniquelyReferenced_nonNull_native();
  v775 = *v606;
  *v606 = 0x8000000000000000;
  sub_266ECD368(204, 0xD00000000000002BLL, 0x800000026743ADD0, v607);
  *v606 = v775;

  v604(v780, 0);
  v608 = sub_26738111C();
  v610 = v609;
  v611 = swift_isUniquelyReferenced_nonNull_native();
  v776 = *v610;
  *v610 = 0x8000000000000000;
  sub_266ECD368(205, 0xD00000000000001FLL, 0x800000026743AE00, v611);
  *v610 = v776;

  v608(v780, 0);
  v612 = sub_26738111C();
  v614 = v613;
  v615 = swift_isUniquelyReferenced_nonNull_native();
  v777 = *v614;
  *v614 = 0x8000000000000000;
  sub_266ECD368(206, 0xD000000000000024, 0x800000026743AE20, v615);
  *v614 = v777;

  v612(v780, 0);
  v616 = sub_26738111C();
  v618 = v617;
  v619 = swift_isUniquelyReferenced_nonNull_native();
  v778 = *v618;
  *v618 = 0x8000000000000000;
  sub_266ECD368(207, 0xD000000000000023, 0x800000026743AE50, v619);
  *v618 = v778;

  v616(v780, 0);
  v620 = sub_26738111C();
  v622 = v621;
  v623 = swift_isUniquelyReferenced_nonNull_native();
  v779 = *v622;
  *v622 = 0x8000000000000000;
  sub_266ECD368(208, 0xD000000000000019, 0x800000026743AE80, v623);
  *v622 = v779;

  return v620(v780, 0);
}

uint64_t sub_266FB4810(uint64_t a1)
{
  v2 = sub_266FB4914(&qword_2800F1718, &protocol conformance descriptor for FLOWSchemaFLOWStateType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FB4878(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FB4914(&qword_2800F1718, &protocol conformance descriptor for FLOWSchemaFLOWStateType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FB4914(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWStateType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWStatusReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v398 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000018, 0x800000026743AED0, isUniquelyReferenced_nonNull_native);
  *v3 = v398;

  v1(v497, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v399 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x800000026743AEF0, v8);
  *v7 = v399;

  v5(v497, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v400 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x800000026743AF10, v12);
  *v11 = v400;

  v9(v497, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v401 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002FLL, 0x800000026743AF40, v16);
  *v15 = v401;

  v13(v497, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v402 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002FLL, 0x800000026743AF70, v20);
  *v19 = v402;

  v17(v497, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v403 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000030, 0x800000026743AFA0, v24);
  *v23 = v403;

  v21(v497, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v404 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002CLL, 0x800000026743AFE0, v28);
  *v27 = v404;

  v25(v497, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v405 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000021, 0x800000026743B010, v32);
  *v31 = v405;

  v29(v497, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v406 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000026, 0x800000026743B040, v36);
  *v35 = v406;

  v33(v497, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v407 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000027, 0x800000026743B070, v40);
  *v39 = v407;

  v37(v497, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v408 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000025, 0x800000026743B0A0, v44);
  *v43 = v408;

  v41(v497, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v409 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000028, 0x800000026743B0D0, v48);
  *v47 = v409;

  v45(v497, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v410 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000026, 0x800000026743B100, v52);
  *v51 = v410;

  v49(v497, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v411 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000027, 0x800000026743B130, v56);
  *v55 = v411;

  v53(v497, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v412 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000028, 0x800000026743B160, v60);
  *v59 = v412;

  v57(v497, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v413 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000002CLL, 0x800000026743B190, v64);
  *v63 = v413;

  v61(v497, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v414 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000002FLL, 0x800000026743B1C0, v68);
  *v67 = v414;

  v65(v497, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v415 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD00000000000001BLL, 0x800000026743B1F0, v72);
  *v71 = v415;

  v69(v497, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v416 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000024, 0x800000026743B210, v76);
  *v75 = v416;

  v73(v497, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v417 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000020, 0x800000026743B240, v80);
  *v79 = v417;

  v77(v497, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v418 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000028, 0x800000026743B270, v84);
  *v83 = v418;

  v81(v497, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v419 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001FLL, 0x800000026743B2A0, v88);
  *v87 = v419;

  v85(v497, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v420 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000022, 0x800000026743B2C0, v92);
  *v91 = v420;

  v89(v497, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v421 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001DLL, 0x800000026743B2F0, v96);
  *v95 = v421;

  v93(v497, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v422 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000001DLL, 0x800000026743B310, v100);
  *v99 = v422;

  v97(v497, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v423 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000029, 0x800000026743B330, v104);
  *v103 = v423;

  v101(v497, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v424 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000031, 0x800000026743B360, v108);
  *v107 = v424;

  v105(v497, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v425 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000027, 0x800000026743B3A0, v112);
  *v111 = v425;

  v109(v497, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v426 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000002BLL, 0x800000026743B3D0, v116);
  *v115 = v426;

  v113(v497, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v427 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000029, 0x800000026743B400, v120);
  *v119 = v427;

  v117(v497, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v428 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD00000000000002ALL, 0x800000026743B430, v124);
  *v123 = v428;

  v121(v497, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v429 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000017, 0x800000026743B460, v128);
  *v127 = v429;

  v125(v497, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v430 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000028, 0x800000026743B480, v132);
  *v131 = v430;

  v129(v497, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v431 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000020, 0x800000026743B4B0, v136);
  *v135 = v431;

  v133(v497, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v432 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000021, 0x800000026743B4E0, v140);
  *v139 = v432;

  v137(v497, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v433 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(35, 0xD00000000000001FLL, 0x800000026743B510, v144);
  *v143 = v433;

  v141(v497, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v434 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000026, 0x800000026743B530, v148);
  *v147 = v434;

  v145(v497, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v435 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(37, 0xD00000000000002FLL, 0x800000026743B560, v152);
  *v151 = v435;

  v149(v497, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v436 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000021, 0x800000026743B590, v156);
  *v155 = v436;

  v153(v497, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = swift_isUniquelyReferenced_nonNull_native();
  v437 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(39, 0xD000000000000025, 0x800000026743B5C0, v160);
  *v159 = v437;

  v157(v497, 0);
  v161 = sub_26738111C();
  v163 = v162;
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v438 = *v163;
  *v163 = 0x8000000000000000;
  sub_266ECD368(40, 0xD00000000000002ALL, 0x800000026743B5F0, v164);
  *v163 = v438;

  v161(v497, 0);
  v165 = sub_26738111C();
  v167 = v166;
  v168 = swift_isUniquelyReferenced_nonNull_native();
  v439 = *v167;
  *v167 = 0x8000000000000000;
  sub_266ECD368(41, 0xD00000000000001ALL, 0x800000026743B620, v168);
  *v167 = v439;

  v165(v497, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = swift_isUniquelyReferenced_nonNull_native();
  v440 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(42, 0xD000000000000025, 0x800000026743B640, v172);
  *v171 = v440;

  v169(v497, 0);
  v173 = sub_26738111C();
  v175 = v174;
  v176 = swift_isUniquelyReferenced_nonNull_native();
  v441 = *v175;
  *v175 = 0x8000000000000000;
  sub_266ECD368(43, 0xD000000000000028, 0x800000026743B670, v176);
  *v175 = v441;

  v173(v497, 0);
  v177 = sub_26738111C();
  v179 = v178;
  v180 = swift_isUniquelyReferenced_nonNull_native();
  v442 = *v179;
  *v179 = 0x8000000000000000;
  sub_266ECD368(44, 0xD000000000000039, 0x800000026743B6A0, v180);
  *v179 = v442;

  v177(v497, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = swift_isUniquelyReferenced_nonNull_native();
  v443 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(45, 0xD000000000000030, 0x800000026743B6E0, v184);
  *v183 = v443;

  v181(v497, 0);
  v185 = sub_26738111C();
  v187 = v186;
  v188 = swift_isUniquelyReferenced_nonNull_native();
  v444 = *v187;
  *v187 = 0x8000000000000000;
  sub_266ECD368(46, 0xD00000000000003CLL, 0x800000026743B720, v188);
  *v187 = v444;

  v185(v497, 0);
  v189 = sub_26738111C();
  v191 = v190;
  v192 = swift_isUniquelyReferenced_nonNull_native();
  v445 = *v191;
  *v191 = 0x8000000000000000;
  sub_266ECD368(47, 0xD00000000000001BLL, 0x800000026743B760, v192);
  *v191 = v445;

  v189(v497, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = swift_isUniquelyReferenced_nonNull_native();
  v446 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(48, 0xD00000000000001FLL, 0x800000026743B780, v196);
  *v195 = v446;

  v193(v497, 0);
  v197 = sub_26738111C();
  v199 = v198;
  v200 = swift_isUniquelyReferenced_nonNull_native();
  v447 = *v199;
  *v199 = 0x8000000000000000;
  sub_266ECD368(49, 0xD000000000000025, 0x800000026743B7A0, v200);
  *v199 = v447;

  v197(v497, 0);
  v201 = sub_26738111C();
  v203 = v202;
  v204 = swift_isUniquelyReferenced_nonNull_native();
  v448 = *v203;
  *v203 = 0x8000000000000000;
  sub_266ECD368(50, 0xD000000000000026, 0x800000026743B7D0, v204);
  *v203 = v448;

  v201(v497, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = swift_isUniquelyReferenced_nonNull_native();
  v449 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(51, 0xD000000000000026, 0x800000026743B800, v208);
  *v207 = v449;

  v205(v497, 0);
  v209 = sub_26738111C();
  v211 = v210;
  v212 = swift_isUniquelyReferenced_nonNull_native();
  v450 = *v211;
  *v211 = 0x8000000000000000;
  sub_266ECD368(52, 0xD00000000000002ALL, 0x800000026743B830, v212);
  *v211 = v450;

  v209(v497, 0);
  v213 = sub_26738111C();
  v215 = v214;
  v216 = swift_isUniquelyReferenced_nonNull_native();
  v451 = *v215;
  *v215 = 0x8000000000000000;
  sub_266ECD368(53, 0xD00000000000001FLL, 0x800000026743B860, v216);
  *v215 = v451;

  v213(v497, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = swift_isUniquelyReferenced_nonNull_native();
  v452 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(54, 0xD000000000000027, 0x800000026743B880, v220);
  *v219 = v452;

  v217(v497, 0);
  v221 = sub_26738111C();
  v223 = v222;
  v224 = swift_isUniquelyReferenced_nonNull_native();
  v453 = *v223;
  *v223 = 0x8000000000000000;
  sub_266ECD368(55, 0xD00000000000002DLL, 0x800000026743B8B0, v224);
  *v223 = v453;

  v221(v497, 0);
  v225 = sub_26738111C();
  v227 = v226;
  v228 = swift_isUniquelyReferenced_nonNull_native();
  v454 = *v227;
  *v227 = 0x8000000000000000;
  sub_266ECD368(56, 0xD000000000000031, 0x800000026743B8E0, v228);
  *v227 = v454;

  v225(v497, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = swift_isUniquelyReferenced_nonNull_native();
  v455 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(57, 0xD000000000000024, 0x800000026743B920, v232);
  *v231 = v455;

  v229(v497, 0);
  v233 = sub_26738111C();
  v235 = v234;
  v236 = swift_isUniquelyReferenced_nonNull_native();
  v456 = *v235;
  *v235 = 0x8000000000000000;
  sub_266ECD368(58, 0xD000000000000026, 0x800000026743B950, v236);
  *v235 = v456;

  v233(v497, 0);
  v237 = sub_26738111C();
  v239 = v238;
  v240 = swift_isUniquelyReferenced_nonNull_native();
  v457 = *v239;
  *v239 = 0x8000000000000000;
  sub_266ECD368(59, 0xD000000000000020, 0x800000026743B980, v240);
  *v239 = v457;

  v237(v497, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = swift_isUniquelyReferenced_nonNull_native();
  v458 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(60, 0xD00000000000002CLL, 0x800000026743B9B0, v244);
  *v243 = v458;

  v241(v497, 0);
  v245 = sub_26738111C();
  v247 = v246;
  v248 = swift_isUniquelyReferenced_nonNull_native();
  v459 = *v247;
  *v247 = 0x8000000000000000;
  sub_266ECD368(61, 0xD000000000000024, 0x800000026743B9E0, v248);
  *v247 = v459;

  v245(v497, 0);
  v249 = sub_26738111C();
  v251 = v250;
  v252 = swift_isUniquelyReferenced_nonNull_native();
  v460 = *v251;
  *v251 = 0x8000000000000000;
  sub_266ECD368(62, 0xD000000000000026, 0x800000026743BA10, v252);
  *v251 = v460;

  v249(v497, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = swift_isUniquelyReferenced_nonNull_native();
  v461 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(63, 0xD000000000000025, 0x800000026743BA40, v256);
  *v255 = v461;

  v253(v497, 0);
  v257 = sub_26738111C();
  v259 = v258;
  v260 = swift_isUniquelyReferenced_nonNull_native();
  v462 = *v259;
  *v259 = 0x8000000000000000;
  sub_266ECD368(64, 0xD00000000000001BLL, 0x800000026743BA70, v260);
  *v259 = v462;

  v257(v497, 0);
  v261 = sub_26738111C();
  v263 = v262;
  v264 = swift_isUniquelyReferenced_nonNull_native();
  v463 = *v263;
  *v263 = 0x8000000000000000;
  sub_266ECD368(65, 0xD00000000000001FLL, 0x800000026743BA90, v264);
  *v263 = v463;

  v261(v497, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = swift_isUniquelyReferenced_nonNull_native();
  v464 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(66, 0xD000000000000027, 0x800000026743BAB0, v268);
  *v267 = v464;

  v265(v497, 0);
  v269 = sub_26738111C();
  v271 = v270;
  v272 = swift_isUniquelyReferenced_nonNull_native();
  v465 = *v271;
  *v271 = 0x8000000000000000;
  sub_266ECD368(67, 0xD000000000000025, 0x800000026743BAE0, v272);
  *v271 = v465;

  v269(v497, 0);
  v273 = sub_26738111C();
  v275 = v274;
  v276 = swift_isUniquelyReferenced_nonNull_native();
  v466 = *v275;
  *v275 = 0x8000000000000000;
  sub_266ECD368(68, 0xD000000000000022, 0x800000026743BB10, v276);
  *v275 = v466;

  v273(v497, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = swift_isUniquelyReferenced_nonNull_native();
  v467 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(69, 0xD000000000000027, 0x800000026743BB40, v280);
  *v279 = v467;

  v277(v497, 0);
  v281 = sub_26738111C();
  v283 = v282;
  v284 = swift_isUniquelyReferenced_nonNull_native();
  v468 = *v283;
  *v283 = 0x8000000000000000;
  sub_266ECD368(70, 0xD000000000000026, 0x800000026743BB70, v284);
  *v283 = v468;

  v281(v497, 0);
  v285 = sub_26738111C();
  v287 = v286;
  v288 = swift_isUniquelyReferenced_nonNull_native();
  v469 = *v287;
  *v287 = 0x8000000000000000;
  sub_266ECD368(71, 0xD000000000000022, 0x800000026743BBA0, v288);
  *v287 = v469;

  v285(v497, 0);
  v289 = sub_26738111C();
  v291 = v290;
  v292 = swift_isUniquelyReferenced_nonNull_native();
  v470 = *v291;
  *v291 = 0x8000000000000000;
  sub_266ECD368(72, 0xD00000000000002CLL, 0x800000026743BBD0, v292);
  *v291 = v470;

  v289(v497, 0);
  v293 = sub_26738111C();
  v295 = v294;
  v296 = swift_isUniquelyReferenced_nonNull_native();
  v471 = *v295;
  *v295 = 0x8000000000000000;
  sub_266ECD368(73, 0xD00000000000002CLL, 0x800000026743BC00, v296);
  *v295 = v471;

  v293(v497, 0);
  v297 = sub_26738111C();
  v299 = v298;
  v300 = swift_isUniquelyReferenced_nonNull_native();
  v472 = *v299;
  *v299 = 0x8000000000000000;
  sub_266ECD368(74, 0xD000000000000028, 0x800000026743BC30, v300);
  *v299 = v472;

  v297(v497, 0);
  v301 = sub_26738111C();
  v303 = v302;
  v304 = swift_isUniquelyReferenced_nonNull_native();
  v473 = *v303;
  *v303 = 0x8000000000000000;
  sub_266ECD368(75, 0xD000000000000020, 0x800000026743BC60, v304);
  *v303 = v473;

  v301(v497, 0);
  v305 = sub_26738111C();
  v307 = v306;
  v308 = swift_isUniquelyReferenced_nonNull_native();
  v474 = *v307;
  *v307 = 0x8000000000000000;
  sub_266ECD368(76, 0xD00000000000002ALL, 0x800000026743BC90, v308);
  *v307 = v474;

  v305(v497, 0);
  v309 = sub_26738111C();
  v311 = v310;
  v312 = swift_isUniquelyReferenced_nonNull_native();
  v475 = *v311;
  *v311 = 0x8000000000000000;
  sub_266ECD368(77, 0xD00000000000002CLL, 0x800000026743BCC0, v312);
  *v311 = v475;

  v309(v497, 0);
  v313 = sub_26738111C();
  v315 = v314;
  v316 = swift_isUniquelyReferenced_nonNull_native();
  v476 = *v315;
  *v315 = 0x8000000000000000;
  sub_266ECD368(78, 0xD00000000000002ELL, 0x800000026743BCF0, v316);
  *v315 = v476;

  v313(v497, 0);
  v317 = sub_26738111C();
  v319 = v318;
  v320 = swift_isUniquelyReferenced_nonNull_native();
  v477 = *v319;
  *v319 = 0x8000000000000000;
  sub_266ECD368(79, 0xD000000000000038, 0x800000026743BD20, v320);
  *v319 = v477;

  v317(v497, 0);
  v321 = sub_26738111C();
  v323 = v322;
  v324 = swift_isUniquelyReferenced_nonNull_native();
  v478 = *v323;
  *v323 = 0x8000000000000000;
  sub_266ECD368(80, 0xD000000000000029, 0x800000026743BD60, v324);
  *v323 = v478;

  v321(v497, 0);
  v325 = sub_26738111C();
  v327 = v326;
  v328 = swift_isUniquelyReferenced_nonNull_native();
  v479 = *v327;
  *v327 = 0x8000000000000000;
  sub_266ECD368(81, 0xD00000000000002ALL, 0x800000026743BD90, v328);
  *v327 = v479;

  v325(v497, 0);
  v329 = sub_26738111C();
  v331 = v330;
  v332 = swift_isUniquelyReferenced_nonNull_native();
  v480 = *v331;
  *v331 = 0x8000000000000000;
  sub_266ECD368(82, 0xD000000000000035, 0x800000026743BDC0, v332);
  *v331 = v480;

  v329(v497, 0);
  v333 = sub_26738111C();
  v335 = v334;
  v336 = swift_isUniquelyReferenced_nonNull_native();
  v481 = *v335;
  *v335 = 0x8000000000000000;
  sub_266ECD368(83, 0xD000000000000027, 0x800000026743BE00, v336);
  *v335 = v481;

  v333(v497, 0);
  v337 = sub_26738111C();
  v339 = v338;
  v340 = swift_isUniquelyReferenced_nonNull_native();
  v482 = *v339;
  *v339 = 0x8000000000000000;
  sub_266ECD368(84, 0xD00000000000003CLL, 0x800000026743BE30, v340);
  *v339 = v482;

  v337(v497, 0);
  v341 = sub_26738111C();
  v343 = v342;
  v344 = swift_isUniquelyReferenced_nonNull_native();
  v483 = *v343;
  *v343 = 0x8000000000000000;
  sub_266ECD368(85, 0xD000000000000033, 0x800000026743BE70, v344);
  *v343 = v483;

  v341(v497, 0);
  v345 = sub_26738111C();
  v347 = v346;
  v348 = swift_isUniquelyReferenced_nonNull_native();
  v484 = *v347;
  *v347 = 0x8000000000000000;
  sub_266ECD368(86, 0xD000000000000037, 0x800000026743BEB0, v348);
  *v347 = v484;

  v345(v497, 0);
  v349 = sub_26738111C();
  v351 = v350;
  v352 = swift_isUniquelyReferenced_nonNull_native();
  v485 = *v351;
  *v351 = 0x8000000000000000;
  sub_266ECD368(87, 0xD00000000000002ALL, 0x800000026743BEF0, v352);
  *v351 = v485;

  v349(v497, 0);
  v353 = sub_26738111C();
  v355 = v354;
  v356 = swift_isUniquelyReferenced_nonNull_native();
  v486 = *v355;
  *v355 = 0x8000000000000000;
  sub_266ECD368(88, 0xD000000000000033, 0x800000026743BF20, v356);
  *v355 = v486;

  v353(v497, 0);
  v357 = sub_26738111C();
  v359 = v358;
  v360 = swift_isUniquelyReferenced_nonNull_native();
  v487 = *v359;
  *v359 = 0x8000000000000000;
  sub_266ECD368(89, 0xD000000000000041, 0x800000026743BF60, v360);
  *v359 = v487;

  v357(v497, 0);
  v361 = sub_26738111C();
  v363 = v362;
  v364 = swift_isUniquelyReferenced_nonNull_native();
  v488 = *v363;
  *v363 = 0x8000000000000000;
  sub_266ECD368(90, 0xD000000000000026, 0x800000026743BFB0, v364);
  *v363 = v488;

  v361(v497, 0);
  v365 = sub_26738111C();
  v367 = v366;
  v368 = swift_isUniquelyReferenced_nonNull_native();
  v489 = *v367;
  *v367 = 0x8000000000000000;
  sub_266ECD368(91, 0xD000000000000023, 0x800000026743BFE0, v368);
  *v367 = v489;

  v365(v497, 0);
  v369 = sub_26738111C();
  v371 = v370;
  v372 = swift_isUniquelyReferenced_nonNull_native();
  v490 = *v371;
  *v371 = 0x8000000000000000;
  sub_266ECD368(92, 0xD000000000000020, 0x800000026743C010, v372);
  *v371 = v490;

  v369(v497, 0);
  v373 = sub_26738111C();
  v375 = v374;
  v376 = swift_isUniquelyReferenced_nonNull_native();
  v491 = *v375;
  *v375 = 0x8000000000000000;
  sub_266ECD368(93, 0xD000000000000049, 0x800000026743C040, v376);
  *v375 = v491;

  v373(v497, 0);
  v377 = sub_26738111C();
  v379 = v378;
  v380 = swift_isUniquelyReferenced_nonNull_native();
  v492 = *v379;
  *v379 = 0x8000000000000000;
  sub_266ECD368(94, 0xD000000000000039, 0x800000026743C090, v380);
  *v379 = v492;

  v377(v497, 0);
  v381 = sub_26738111C();
  v383 = v382;
  v384 = swift_isUniquelyReferenced_nonNull_native();
  v493 = *v383;
  *v383 = 0x8000000000000000;
  sub_266ECD368(95, 0xD00000000000003ELL, 0x800000026743C0D0, v384);
  *v383 = v493;

  v381(v497, 0);
  v385 = sub_26738111C();
  v387 = v386;
  v388 = swift_isUniquelyReferenced_nonNull_native();
  v494 = *v387;
  *v387 = 0x8000000000000000;
  sub_266ECD368(96, 0xD000000000000035, 0x800000026743C110, v388);
  *v387 = v494;

  v385(v497, 0);
  v389 = sub_26738111C();
  v391 = v390;
  v392 = swift_isUniquelyReferenced_nonNull_native();
  v495 = *v391;
  *v391 = 0x8000000000000000;
  sub_266ECD368(97, 0xD000000000000021, 0x800000026743C150, v392);
  *v391 = v495;

  v389(v497, 0);
  v393 = sub_26738111C();
  v395 = v394;
  v396 = swift_isUniquelyReferenced_nonNull_native();
  v496 = *v395;
  *v395 = 0x8000000000000000;
  sub_266ECD368(98, 0xD00000000000001BLL, 0x800000026743C180, v396);
  *v395 = v496;

  return v393(v497, 0);
}

uint64_t sub_266FB7604(uint64_t a1)
{
  v2 = sub_266FB7708(&qword_2800F1720, &protocol conformance descriptor for FLOWSchemaFLOWStatusReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FB766C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FB7708(&qword_2800F1720, &protocol conformance descriptor for FLOWSchemaFLOWStatusReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FB7708(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWStatusReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWStep.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v32 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v28 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E538];
  v9 = *(v2 + 104);
  v28[1] = v2 + 104;
  v29 = v1;
  v28[0] = v9;
  v9(v4, v8, v1);
  v36[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v33 = *(v11 + 56);
  v34 = v11 + 56;
  v33(v7, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x65636E6575716573, 0xEB000000006D754ELL);
  v12(v36, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v35, 0x65636E6575716573, 0xEB000000006D754ELL);
  v30 = *(v11 + 48);
  v31 = v11 + 48;
  if (!v30(v15, 1, v10))
  {
    sub_266ECB128(&unk_287886148);
    sub_26738115C();
  }

  (v14)(v35, 0);
  v13(v36, 0);
  (v28[0])(v4, *MEMORY[0x277D3E510], v29);
  v36[0] = 1;
  sub_26738114C();
  v16 = v10;
  v17 = v33;
  v33(v7, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D617473656D6974, 0xEB00000000734D70);
  v18(v36, 0);
  sub_266ECB294(0, &qword_2800F1708, 0x277D57700);
  sub_266ECAF2C(&qword_2800F1700, &qword_2800F1708, 0x277D57700, &protocol conformance descriptor for FLOWSchemaFLOWState);
  sub_26738120C();
  v17(v7, 0, 1, v16);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x74617453776F6C66, 0xE900000000000065);
  v19(v36, 0);
  sub_266ECB294(0, &qword_2800F0F20, 0x277D574F0);
  sub_266ECAF2C(&qword_2800F0F18, &qword_2800F0F20, 0x277D574F0, &protocol conformance descriptor for FLOWSchemaFLOWAppContext);
  sub_26738120C();
  v17(v7, 0, 1, v16);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x65746E6F43707061, 0xEA00000000007478);
  v20(v36, 0);
  sub_266ECB294(0, &qword_2800F1100, 0x277D57520);
  sub_266ECAF2C(&qword_2800F10F8, &qword_2800F1100, 0x277D57520, &protocol conformance descriptor for FLOWSchemaFLOWDomainContext);
  sub_26738122C();
  v17(v7, 0, 1, v16);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F436E69616D6F64, 0xED0000747865746ELL);
  v21(v36, 0);
  sub_266ECB294(0, &qword_2800F15A8, 0x277D57698);
  sub_266ECAF2C(&qword_2800F15A0, &qword_2800F15A8, 0x277D57698, &protocol conformance descriptor for FLOWSchemaFLOWPlatformContext);
  sub_26738122C();
  v17(v7, 0, 1, v16);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D726F6674616C70, 0xEF747865746E6F43);
  v22(v36, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v35, 0x6D726F6674616C70, 0xEF747865746E6F43);
  if (!v30(v25, 1, v16))
  {
    sub_266ECB128(&unk_287886170);
    sub_26738115C();
  }

  (v24)(v35, 0);
  v23(v36, 0);
  sub_26738120C();
  v33(v7, 0, 1, v16);
  v26 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x800000026743C1D0);
  return v26(v36, 0);
}

uint64_t sub_266FB7FB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FB8014(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWSummarySourceType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026743C220, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x800000026743C240, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x800000026743C270, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266FB82CC(uint64_t a1)
{
  v2 = sub_266FB83D0(&qword_2800F1728, &protocol conformance descriptor for FLOWSchemaFLOWSummarySourceType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FB8334(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FB83D0(&qword_2800F1728, &protocol conformance descriptor for FLOWSchemaFLOWSummarySourceType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FB83D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWSchemaFLOWSummarySourceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWTextMessageLength.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "TextContentMetadata";
  v9 = *MEMORY[0x277D3E538];
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
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267438B40);
  v14(v19, 0);
  sub_266ECB128(&unk_287886198);
  return sub_2673811CC();
}

uint64_t sub_266FB875C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FB87C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FB8824()
{
  result = qword_2800F1698;
  if (!qword_2800F1698)
  {
    sub_266FB887C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1698);
  }

  return result;
}

unint64_t sub_266FB887C()
{
  result = qword_2800F1690;
  if (!qword_2800F1690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1690);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWVoiceShortcutAction.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x6449707061, 0xE500000000000000);
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
  sub_266EC637C(v6, 0x6143746E65746E69, 0xEE0079726F676574);
  v15(v27, 0);
  v14(v3, v13, v0);
  v27[0] = 1;
  sub_26738114C();
  v16 = v23;
  v10(v6, 0, 1, v23);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x614E746E65746E69, 0xEA0000000000656DLL);
  v17(v27, 0);
  v14(v3, v21, v22);
  v27[0] = 1;
  sub_26738114C();
  v10(v6, 0, 1, v16);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x4C4E746E65746E69, 0xEE006E69616D6F44);
  return v18(v27, 0);
}

uint64_t sub_266FB8D88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FB8DEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FB8E50()
{
  result = qword_2800F1730;
  if (!qword_2800F1730)
  {
    sub_266FB8EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1730);
  }

  return result;
}

unint64_t sub_266FB8EA8()
{
  result = qword_2800F1738;
  if (!qword_2800F1738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1738);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWVoiceShortcutContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1738, 0x277D57720);
  sub_266ECAF2C(&qword_2800F1730, &qword_2800F1738, 0x277D57720, &protocol conformance descriptor for FLOWSchemaFLOWVoiceShortcutAction);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x800000026743C350);
  return v5(v7, 0);
}

uint64_t sub_266FB90EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FB9150(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWSchemaFLOWWebAnswerExecution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v27 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E538];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v31 = v3 + 104;
  v32[0] = 1;
  sub_26738114C();
  v26 = sub_26738116C();
  v11 = *(v26 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v8, 0, 1, v26);
  v29 = v12;
  v30 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x7954726577736E61, 0xEA00000000006570);
  v14(v32, 0);
  v25 = v2;
  v10(v5, v9, v2);
  v32[0] = 1;
  sub_26738114C();
  v15 = v26;
  v12(v8, 0, 1, v26);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x73694C776F6C6C61, 0xED00006570795474);
  v16(v32, 0);
  v28 = v9;
  v10(v5, v9, v2);
  v32[0] = 1;
  sub_26738114C();
  v29(v8, 0, 1, v15);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x74614D797A7A7566, 0xEE00657079546863);
  v17(v32, 0);
  v10(v5, v9, v2);
  v32[0] = 1;
  sub_26738114C();
  v18 = v29;
  v29(v8, 0, 1, v15);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x69616D6F44627573, 0xE90000000000006ELL);
  v19(v32, 0);
  v20 = v25;
  v10(v5, v28, v25);
  v32[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v15);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x7974696C617571, 0xE700000000000000);
  v21(v32, 0);
  v10(v5, v28, v20);
  v32[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v15);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C43726577736E61, 0xEB00000000737361);
  return v22(v32, 0);
}

uint64_t sub_266FB9834(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FB9898(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FB98FC()
{
  result = qword_2800F14C8;
  if (!qword_2800F14C8)
  {
    sub_266FB9954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F14C8);
  }

  return result;
}

unint64_t sub_266FB9954()
{
  result = qword_2800F14C0;
  if (!qword_2800F14C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F14C0);
  }

  return result;
}

uint64_t static FLOWSchemaFLOWWebAnswerExecutionTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x6449726577736E61, 0xE800000000000000);
  v9(v15, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v14, 0x6449726577736E61, 0xE800000000000000);
  if (!(*(v8 + 48))(v12, 1, v7))
  {
    sub_266ECB128(&unk_2878861C0);
    sub_26738115C();
  }

  (v11)(v14, 0);
  return v10(v15, 0);
}

uint64_t sub_266FB9CA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FB9D04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FB9D68()
{
  result = qword_2800F14F8;
  if (!qword_2800F14F8)
  {
    sub_266FB9DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F14F8);
  }

  return result;
}

unint64_t sub_266FB9DC0()
{
  result = qword_2800F14F0;
  if (!qword_2800F14F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F14F0);
  }

  return result;
}

uint64_t static FLSchemaFLActionEvaluationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F1740, 0x277D57760);
  sub_266ECAF2C(&qword_2800F1748, &qword_2800F1740, 0x277D57760, &protocol conformance descriptor for FLSchemaFLActionEvaluationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800F1750, 0x277D57750);
  sub_266ECAF2C(&qword_2800F1758, &qword_2800F1750, 0x277D57750, &protocol conformance descriptor for FLSchemaFLActionEvaluationEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F1760, 0x277D57758);
  sub_266ECAF2C(&qword_2800F1768, &qword_2800F1760, 0x277D57758, &protocol conformance descriptor for FLSchemaFLActionEvaluationFailed);
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
  sub_266EC637C(v4, 0x49747865746E6F63, 0xE900000000000064);
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

uint64_t sub_266FBA3EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBA450(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLSchemaFLActionEvaluationEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v15 = a1;
  v16 = sub_26738113C();
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F69737365536669, 0xEB0000000064496ELL);
  v9(v17, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E538], v16);
  v17[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x800000026743C450);
  v10(v17, 0);
  sub_266ECB294(0, &qword_2800F1780, 0x277D577B8);
  sub_266ECAF2C(&qword_2800F1788, &qword_2800F1780, 0x277D577B8, &protocol conformance descriptor for FLSchemaFLTaskEvaluation);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6C6176456B736174, 0xEE006E6F69746175);
  v11(v17, 0);
  sub_266ECB294(0, &qword_2800F1790, 0x277D57770);
  sub_266ECAF2C(&qword_2800F1798, &qword_2800F1790, 0x277D57770, &protocol conformance descriptor for FLSchemaFLCandidateEvaluation);
  sub_26738122C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x800000026743C470);
  v12(v17, 0);
  type metadata accessor for FLSchemaFLEvaluationType(0);
  sub_266FBAB3C();
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x697461756C617665, 0xEE00657079546E6FLL);
  return v13(v17, 0);
}

uint64_t sub_266FBAA78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBAADC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FBAB3C()
{
  result = qword_2800F17A0;
  if (!qword_2800F17A0)
  {
    type metadata accessor for FLSchemaFLEvaluationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F17A0);
  }

  return result;
}

uint64_t static FLSchemaFLActionEvaluationFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FBAE20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBAE84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FBAEE8()
{
  result = qword_2800F1768;
  if (!qword_2800F1768)
  {
    sub_266FBAF40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1768);
  }

  return result;
}

unint64_t sub_266FBAF40()
{
  result = qword_2800F1760;
  if (!qword_2800F1760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1760);
  }

  return result;
}

uint64_t static FLSchemaFLActionEvaluationStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FBB1D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBB238(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FBB29C()
{
  result = qword_2800F1748;
  if (!qword_2800F1748)
  {
    sub_266FBB2F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1748);
  }

  return result;
}

unint64_t sub_266FBB2F4()
{
  result = qword_2800F1740;
  if (!qword_2800F1740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1740);
  }

  return result;
}

uint64_t static FLSchemaFLActionResolutionState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026743C530, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x800000026743C550, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x800000026743C580, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266FBB554(uint64_t a1)
{
  v2 = sub_266FBB658(&qword_2800F17B0, &protocol conformance descriptor for FLSchemaFLActionResolutionState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FBB5BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FBB658(&qword_2800F17B0, &protocol conformance descriptor for FLSchemaFLActionResolutionState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FBB658(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLActionResolutionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLCandidateCategory.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F17B8, 0x277D577D0);
  sub_266ECAF2C(&qword_2800F17C0, &qword_2800F17B8, 0x277D577D0, &protocol conformance descriptor for FLSchemaFLToolCandidateCategory);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 1819242356, 0xE400000000000000);
  v8(v21, 0);
  sub_266ECB294(0, &qword_2800F17C8, 0x277D577B0);
  sub_266ECAF2C(&qword_2800F17D0, &qword_2800F17C8, 0x277D577B0, &protocol conformance descriptor for FLSchemaFLParameterCandidateCategory);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v19;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6574656D61726170, 0xE900000000000072);
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

uint64_t sub_266FBBADC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBBB40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLSchemaFLCandidateEvaluation.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F17E0, 0x277D57768);
  sub_266ECAF2C(&qword_2800F17D8, &qword_2800F17E0, 0x277D57768, &protocol conformance descriptor for FLSchemaFLCandidateCategory);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x800000026743C610);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F17E8, 0x277D57778);
  sub_266ECAF2C(&qword_2800F17F0, &qword_2800F17E8, 0x277D57778, &protocol conformance descriptor for FLSchemaFLCandidateIdentifier);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x800000026743C630);
  v7(v11, 0);
  type metadata accessor for FLSchemaFLCandidateResolution(0);
  sub_266FBC0F8(&qword_2800F17F8, type metadata accessor for FLSchemaFLCandidateResolution, &protocol conformance descriptor for FLSchemaFLCandidateResolution);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6974756C6F736572, 0xEA00000000006E6FLL);
  v8(v11, 0);
  type metadata accessor for FLSchemaFLCandidateOutcome(0);
  sub_266FBC0F8(&qword_2800F1800, type metadata accessor for FLSchemaFLCandidateOutcome, &protocol conformance descriptor for FLSchemaFLCandidateOutcome);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x656D6F6374756FLL, 0xE700000000000000);
  return v9(v11, 0);
}

uint64_t sub_266FBC034(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBC098(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FBC0F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static FLSchemaFLCandidateIdentifier.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x74616469646E6163, 0xEB00000000644965);
  return v5(v7, 0);
}

uint64_t sub_266FBC360(uint64_t a1)
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
  sub_266EC637C(v3, 0x74616469646E6163, 0xEB00000000644965);
  return v5(v7, 0);
}

uint64_t sub_266FBC504(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBC568(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLSchemaFLCandidateInteraction.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F17E8, 0x277D57778);
  sub_266ECAF2C(&qword_2800F17F0, &qword_2800F17E8, 0x277D57778, &protocol conformance descriptor for FLSchemaFLCandidateIdentifier);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x696669746E656469, 0xEA00000000007265);
  v6(v9, 0);
  type metadata accessor for FLSchemaFLUserAlignmentCategory(0);
  sub_266FBC960();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6E67696C61, 0xE900000000000074);
  return v7(v9, 0);
}

uint64_t sub_266FBC89C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBC900(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FBC960()
{
  result = qword_2800F1808;
  if (!qword_2800F1808)
  {
    type metadata accessor for FLSchemaFLUserAlignmentCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1808);
  }

  return result;
}

uint64_t static FLSchemaFLCandidateOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026743C6E0, isUniquelyReferenced_nonNull_native);
  *v3 = v50;

  v1(v62, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000029, 0x800000026743C700, v8);
  *v7 = v51;

  v5(v62, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026743C730, v12);
  *v11 = v52;

  v9(v62, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x800000026743C760, v16);
  *v15 = v53;

  v13(v62, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002BLL, 0x800000026743C790, v20);
  *v19 = v54;

  v17(v62, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000034, 0x800000026743C7C0, v24);
  *v23 = v55;

  v21(v62, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000003ALL, 0x800000026743C800, v28);
  *v27 = v56;

  v25(v62, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002ALL, 0x800000026743C840, v32);
  *v31 = v57;

  v29(v62, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000023, 0x800000026743C870, v36);
  *v35 = v58;

  v33(v62, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000023, 0x800000026743C8A0, v40);
  *v39 = v59;

  v37(v62, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000002BLL, 0x800000026743C8D0, v44);
  *v43 = v60;

  v41(v62, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000025, 0x800000026743C900, v48);
  *v47 = v61;

  return v45(v62, 0);
}

uint64_t sub_266FBD004(uint64_t a1)
{
  v2 = sub_266FBD108(&qword_2800F1820, &protocol conformance descriptor for FLSchemaFLCandidateOutcome);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FBD06C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FBD108(&qword_2800F1820, &protocol conformance descriptor for FLSchemaFLCandidateOutcome);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FBD108(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLCandidateOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLCandidateResolution.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026743C960, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x800000026743C980, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x800000026743C9B0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x800000026743C9E0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x800000026743CA10, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_266FBD440(uint64_t a1)
{
  v2 = sub_266FBD544(&qword_2800F1828, &protocol conformance descriptor for FLSchemaFLCandidateResolution);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FBD4A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FBD544(&qword_2800F1828, &protocol conformance descriptor for FLSchemaFLCandidateResolution);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FBD544(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLCandidateResolution(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x28223BE20](v1);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1830, 0x277D57790);
  sub_266ECAF2C(&qword_2800F1838, &qword_2800F1830, 0x277D57790, &protocol conformance descriptor for FLSchemaFLClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F1778, 0x277D57748);
  sub_266ECAF2C(&qword_2800F1770, &qword_2800F1778, 0x277D57748, &protocol conformance descriptor for FLSchemaFLActionEvaluationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x800000026743CA60);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F1840, 0x277D57798);
  sub_266ECAF2C(&qword_2800F1848, &qword_2800F1840, 0x277D57798, &protocol conformance descriptor for FLSchemaFLInteractionDonationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = v21;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x6E6F6974616E6F64, 0xEF747865746E6F43);
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
  (*(v22 + 32))(v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, v10, v23);
  v12(v24, 0);
  sub_266ECB128(&unk_2878861E8);
  return sub_2673811CC();
}

uint64_t sub_266FBDA94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FBDB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FBDBF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBDC5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FBDCBC(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F1850, &qword_2800F1858, 0x277D57788, &protocol conformance descriptor for FLSchemaFLClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F1860, &qword_2800F1858, 0x277D57788, &protocol conformance descriptor for FLSchemaFLClientEvent);
  result = sub_266ECAF2C(&qword_2800F1868, &qword_2800F1858, 0x277D57788, &protocol conformance descriptor for FLSchemaFLClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static FLSchemaFLClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 1682533478, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682533478, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287886220);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266FBE050(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBE0B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLSchemaFLEvaluationSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026743CAE0, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002FLL, 0x800000026743CB00, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x800000026743CB30, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ALL, 0x800000026743CB60, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ALL, 0x800000026743CB90, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x800000026743CBC0, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002ALL, 0x800000026743CBF0, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000029, 0x800000026743CC20, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ELL, 0x800000026743CC50, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_266FBE618(uint64_t a1)
{
  v2 = sub_266FBE71C(&qword_2800F1880, &protocol conformance descriptor for FLSchemaFLEvaluationSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FBE680(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FBE71C(&qword_2800F1880, &protocol conformance descriptor for FLSchemaFLEvaluationSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FBE71C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLEvaluationSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLEvaluationType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026743CCB0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x800000026743CCD0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x800000026743CCF0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266FBE978(uint64_t a1)
{
  v2 = sub_266FBEA7C(&qword_2800F1888, &protocol conformance descriptor for FLSchemaFLEvaluationType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FBE9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FBEA7C(&qword_2800F1888, &protocol conformance descriptor for FLSchemaFLEvaluationType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FBEA7C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLEvaluationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLEvaluationVote.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026743CD40, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x800000026743CD60, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x800000026743CD80, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x800000026743CDA0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266FBED48(uint64_t a1)
{
  v2 = sub_266FBEE4C(&qword_2800F1898, &protocol conformance descriptor for FLSchemaFLEvaluationVote);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FBEDB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FBEE4C(&qword_2800F1898, &protocol conformance descriptor for FLSchemaFLEvaluationVote);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FBEE4C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLEvaluationVote(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLEvaluator.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x800000026743CDF0, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026743CE10, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x800000026743CE30, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x800000026743CE50, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x800000026743CE70, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ELL, 0x800000026743CE90, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_266FBF1F8(uint64_t a1)
{
  v2 = sub_266FBF2FC(&qword_2800F18A8, &protocol conformance descriptor for FLSchemaFLEvaluator);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FBF260(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FBF2FC(&qword_2800F18A8, &protocol conformance descriptor for FLSchemaFLEvaluator);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FBF2FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLEvaluator(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLInteractionDonationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F18B0, 0x277D577A8);
  sub_266ECAF2C(&qword_2800F18B8, &qword_2800F18B0, 0x277D577A8, &protocol conformance descriptor for FLSchemaFLInteractionDonationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F18C0, 0x277D577A0);
  sub_266ECAF2C(&qword_2800F18C8, &qword_2800F18C0, 0x277D577A0, &protocol conformance descriptor for FLSchemaFLInteractionDonationEnded);
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
  sub_266EC637C(v4, 0x49747865746E6F63, 0xE900000000000064);
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

uint64_t sub_266FBF85C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FBF8C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLSchemaFLInteractionDonationEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v30 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E518];
  v9 = *(v2 + 104);
  v29 = v1;
  v9(v4, v8, v1);
  v27 = v2 + 104;
  v28 = v9;
  v31[0] = 1;
  sub_26738114C();
  v24 = sub_26738116C();
  v10 = *(v24 - 8);
  v11 = *(v10 + 56);
  v25 = v10 + 56;
  v11(v7, 0, 1, v24);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6574756C6F736261, 0xEC000000656D6954);
  v12(v31, 0);
  v9(v4, v8, v1);
  v31[0] = 1;
  sub_26738114C();
  v13 = v24;
  v26 = v11;
  v11(v7, 0, 1, v24);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6F6974616E6F64, 0xEC000000656D6954);
  v14(v31, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v11(v7, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F69737365536669, 0xEB0000000064496ELL);
  v15(v31, 0);
  v28(v4, *MEMORY[0x277D3E538], v29);
  v31[0] = 1;
  sub_26738114C();
  v16 = v26;
  v26(v7, 0, 1, v13);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x800000026743C450);
  v17(v31, 0);
  type metadata accessor for FLSchemaFLTrigger(0);
  sub_266FC0208();
  sub_26738120C();
  v16(v7, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6F6974616E6F64, 0xEF72656767697254);
  v18(v31, 0);
  v28(v4, *MEMORY[0x277D3E4E8], v29);
  v31[0] = 1;
  sub_26738114C();
  v16(v7, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x656C707554736177, 0xEF646574616E6F44);
  v19(v31, 0);
  sub_266ECB294(0, &qword_2800F18D8, 0x277D577D8);
  sub_266ECAF2C(&qword_2800F18E0, &qword_2800F18D8, 0x277D577D8, &protocol conformance descriptor for FLSchemaFLTupleInteraction);
  sub_26738120C();
  v16(v7, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x656C707574, 0xE500000000000000);
  v20(v31, 0);
  sub_266ECB294(0, &qword_2800F1818, 0x277D57780);
  sub_266ECAF2C(&qword_2800F1810, &qword_2800F1818, 0x277D57780, &protocol conformance descriptor for FLSchemaFLCandidateInteraction);
  sub_26738122C();
  v16(v7, 0, 1, v13);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0x74616469646E6163, 0xEA00000000007365);
  return v21(v31, 0);
}

uint64_t sub_266FC0144(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC01A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FC0208()
{
  result = qword_2800F18D0;
  if (!qword_2800F18D0)
  {
    type metadata accessor for FLSchemaFLTrigger(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F18D0);
  }

  return result;
}

uint64_t static FLSchemaFLInteractionDonationStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FC04EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC0550(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FC05B4()
{
  result = qword_2800F18B8;
  if (!qword_2800F18B8)
  {
    sub_266FC060C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F18B8);
  }

  return result;
}

unint64_t sub_266FC060C()
{
  result = qword_2800F18B0;
  if (!qword_2800F18B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F18B0);
  }

  return result;
}

uint64_t static FLSchemaFLParameterCandidateCategory.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6574656D61726170, 0xEF6449656D614E72);
  return v5(v7, 0);
}

uint64_t sub_266FC0838(uint64_t a1)
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
  sub_266EC637C(v3, 0x6574656D61726170, 0xEF6449656D614E72);
  return v5(v7, 0);
}

uint64_t sub_266FC09E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC0A44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLSchemaFLTaskEvaluation.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLSchemaFLActionResolutionState(0);
  sub_266FC0F14();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x800000026743CFE0);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F18E8, 0x277D577C8);
  sub_266ECAF2C(&qword_2800F18F0, &qword_2800F18E8, 0x277D577C8, &protocol conformance descriptor for FLSchemaFLTaskOutcome);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6374754F6B736174, 0xEB00000000656D6FLL);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F18F8, 0x277D577C0);
  sub_266ECAF2C(&qword_2800F1900, &qword_2800F18F8, 0x277D577C0, &protocol conformance descriptor for FLSchemaFLTaskEvaluationNode);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461756C617665, 0xEF7365646F4E6E6FLL);
  return v8(v10, 0);
}

uint64_t sub_266FC0E50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC0EB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FC0F14()
{
  result = qword_2800F17A8;
  if (!qword_2800F17A8)
  {
    type metadata accessor for FLSchemaFLActionResolutionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F17A8);
  }

  return result;
}

uint64_t static FLSchemaFLTaskEvaluationNode.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLSchemaFLEvaluator(0);
  sub_266FC141C(&qword_2800F18A0, type metadata accessor for FLSchemaFLEvaluator, &protocol conformance descriptor for FLSchemaFLEvaluator);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F7461756C617665, 0xE900000000000072);
  v6(v10, 0);
  type metadata accessor for FLSchemaFLEvaluationVote(0);
  sub_266FC141C(&qword_2800F1890, type metadata accessor for FLSchemaFLEvaluationVote, &protocol conformance descriptor for FLSchemaFLEvaluationVote);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x746C75736572, 0xE600000000000000);
  v7(v10, 0);
  type metadata accessor for FLSchemaFLEvaluationSource(0);
  sub_266FC141C(&qword_2800F1878, type metadata accessor for FLSchemaFLEvaluationSource, &protocol conformance descriptor for FLSchemaFLEvaluationSource);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x73656372756F73, 0xE700000000000000);
  return v8(v10, 0);
}

uint64_t sub_266FC1310(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC1374(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC141C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FC1464()
{
  result = qword_2800F18F8;
  if (!qword_2800F18F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F18F8);
  }

  return result;
}

uint64_t static FLSchemaFLTaskOutcome.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLSchemaFLTaskStatus(0);
  sub_266FC1870(&qword_2800F1908, type metadata accessor for FLSchemaFLTaskStatus, &protocol conformance descriptor for FLSchemaFLTaskStatus);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x746174536B736174, 0xEA00000000007375);
  v6(v9, 0);
  type metadata accessor for FLSchemaFLTaskPromptStatus(0);
  sub_266FC1870(&qword_2800F1910, type metadata accessor for FLSchemaFLTaskPromptStatus, &protocol conformance descriptor for FLSchemaFLTaskPromptStatus);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x745374706D6F7270, 0xEC00000073757461);
  return v7(v9, 0);
}

uint64_t sub_266FC1764(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC17C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC1870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FC18B8()
{
  result = qword_2800F18E8;
  if (!qword_2800F18E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F18E8);
  }

  return result;
}

uint64_t static FLSchemaFLTaskPromptStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026743D090, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x800000026743D0B0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x800000026743D0D0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x800000026743D100, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000027, 0x800000026743D130, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_266FC1BF8(uint64_t a1)
{
  v2 = sub_266FC1CFC(&qword_2800F1918, &protocol conformance descriptor for FLSchemaFLTaskPromptStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FC1C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FC1CFC(&qword_2800F1918, &protocol conformance descriptor for FLSchemaFLTaskPromptStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FC1CFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLTaskPromptStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLTaskStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x800000026743D190, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x800000026743D1B0, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x800000026743D1D0, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000025, 0x800000026743D1F0, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002FLL, 0x800000026743D220, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ELL, 0x800000026743D250, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000016, 0x800000026743D280, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000016, 0x800000026743D2A0, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001CLL, 0x800000026743D2C0, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_266FC21F8(uint64_t a1)
{
  v2 = sub_266FC22FC(&qword_2800F1920, &protocol conformance descriptor for FLSchemaFLTaskStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FC2260(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FC22FC(&qword_2800F1920, &protocol conformance descriptor for FLSchemaFLTaskStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FC22FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLTaskStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLToolCandidateCategory.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FC2588(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC25EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FC2650()
{
  result = qword_2800F17C0;
  if (!qword_2800F17C0)
  {
    sub_266FC26A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F17C0);
  }

  return result;
}

unint64_t sub_266FC26A8()
{
  result = qword_2800F17B8;
  if (!qword_2800F17B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F17B8);
  }

  return result;
}

uint64_t static FLSchemaFLTrigger.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000011, 0x800000026743D340, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026743D360, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x800000026743D380, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x800000026743D3A0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266FC2978(uint64_t a1)
{
  v2 = sub_266FC2A7C(&qword_2800F1928, &protocol conformance descriptor for FLSchemaFLTrigger);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FC29E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FC2A7C(&qword_2800F1928, &protocol conformance descriptor for FLSchemaFLTrigger);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FC2A7C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLTrigger(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLSchemaFLTupleInteraction.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F17E8, 0x277D57778);
  sub_266ECAF2C(&qword_2800F17F0, &qword_2800F17E8, 0x277D57778, &protocol conformance descriptor for FLSchemaFLCandidateIdentifier);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x696669746E656469, 0xEB00000000737265);
  v6(v9, 0);
  type metadata accessor for FLSchemaFLUserAlignmentCategory(0);
  sub_266FBC960();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6E67696C61, 0xE900000000000074);
  return v7(v9, 0);
}

uint64_t sub_266FC2D54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC2DB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLSchemaFLUserAlignmentCategory.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026743D420, isUniquelyReferenced_nonNull_native);
  *v3 = v46;

  v1(v57, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026743D440, v8);
  *v7 = v47;

  v5(v57, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x800000026743D470, v12);
  *v11 = v48;

  v9(v57, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002BLL, 0x800000026743D4A0, v16);
  *v15 = v49;

  v13(v57, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x800000026743D4D0, v20);
  *v19 = v50;

  v17(v57, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002BLL, 0x800000026743D500, v24);
  *v23 = v51;

  v21(v57, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002BLL, 0x800000026743D530, v28);
  *v27 = v52;

  v25(v57, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000003ELL, 0x800000026743D560, v32);
  *v31 = v53;

  v29(v57, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000024, 0x800000026743D5A0, v36);
  *v35 = v54;

  v33(v57, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000028, 0x800000026743D5D0, v40);
  *v39 = v55;

  v37(v57, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000028, 0x800000026743D600, v44);
  *v43 = v56;

  return v41(v57, 0);
}

uint64_t sub_266FC3408(uint64_t a1)
{
  v2 = sub_266FC350C(&qword_2800F1930, &protocol conformance descriptor for FLSchemaFLUserAlignmentCategory);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FC3470(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FC350C(&qword_2800F1930, &protocol conformance descriptor for FLSchemaFLUserAlignmentCategory);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FC350C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLSchemaFLUserAlignmentCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GATSchemaGATAccountType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x800000026743D660, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x800000026743D680, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x800000026743D6A0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x800000026743D6C0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266FC37D8(uint64_t a1)
{
  v2 = sub_266FC38DC(&qword_2800F1940, &protocol conformance descriptor for GATSchemaGATAccountType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FC3840(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FC38DC(&qword_2800F1940, &protocol conformance descriptor for GATSchemaGATAccountType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FC38DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GATSchemaGATAccountType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GATSchemaGATAppIntentName.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026743D710, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000038, 0x800000026743D730, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002DLL, 0x800000026743D770, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000033, 0x800000026743D7A0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266FC3BA4(uint64_t a1)
{
  v2 = sub_266FC3CA8(&qword_2800F1950, &protocol conformance descriptor for GATSchemaGATAppIntentName);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FC3C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FC3CA8(&qword_2800F1950, &protocol conformance descriptor for GATSchemaGATAppIntentName);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FC3CA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GATSchemaGATAppIntentName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GATSchemaGATClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1958, 0x277D577E8);
  sub_266ECAF2C(&qword_2800F1960, &qword_2800F1958, 0x277D577E8, &protocol conformance descriptor for GATSchemaGATClientEventMetadata);
  sub_26738120C();
  v7 = sub_26738116C();
  v42 = *(v7 - 8);
  v8 = *(v42 + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v44, 0);
  sub_266ECB294(0, &qword_2800F1968, 0x277D578D0);
  sub_266ECAF2C(&qword_2800F1970, &qword_2800F1968, 0x277D578D0, &protocol conformance descriptor for GATSchemaGATRequestContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x4374736575716572, 0xEE00747865746E6FLL);
  v10(v44, 0);
  sub_266ECB294(0, &qword_2800F1978, 0x277D57868);
  sub_266ECAF2C(&qword_2800F1980, &qword_2800F1978, 0x277D57868, &protocol conformance descriptor for GATSchemaGATLoadScreenContentContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x800000026743D810);
  v11(v44, 0);
  sub_266ECB294(0, &qword_2800F1988, 0x277D57808);
  sub_266ECAF2C(&qword_2800F1990, &qword_2800F1988, 0x277D57808, &protocol conformance descriptor for GATSchemaGATCreateSessionContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x800000026743D830);
  v12(v44, 0);
  sub_266ECB294(0, &qword_2800F1998, 0x277D57828);
  sub_266ECAF2C(&qword_2800F19A0, &qword_2800F1998, 0x277D57828, &protocol conformance descriptor for GATSchemaGATGenerativeRequestContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x800000026743D850);
  v13(v44, 0);
  sub_266ECB294(0, &qword_2800F19A8, 0x277D57848);
  sub_266ECAF2C(&qword_2800F19B0, &qword_2800F19A8, 0x277D57848, &protocol conformance descriptor for GATSchemaGATImageResizingContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x800000026743D870);
  v14(v44, 0);
  sub_266ECB294(0, &qword_2800F19B8, 0x277D578A8);
  sub_266ECAF2C(&qword_2800F19C0, &qword_2800F19B8, 0x277D578A8, &protocol conformance descriptor for GATSchemaGATRegisterMediaContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x800000026743D890);
  v15(v44, 0);
  sub_266ECB294(0, &qword_2800F19C8, 0x277D578A0);
  sub_266ECAF2C(&qword_2800F19D0, &qword_2800F19C8, 0x277D578A0, &protocol conformance descriptor for GATSchemaGATPresentConfirmationSnippetEvent);
  v41 = a1;
  sub_26738121C();
  v40 = v8;
  v8(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x800000026743D8B0);
  v16(v44, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v43, 0xD000000000000013, 0x800000026743D8B0);
  v19 = *(v42 + 48);
  v42 += 48;
  if (!v19(v20, 1, v7))
  {
    sub_266ECB128(&unk_287886250);
    sub_26738115C();
  }

  (v18)(v43, 0);
  v17(v44, 0);
  sub_266ECB294(0, &qword_2800F19D8, 0x277D577F8);
  sub_266ECAF2C(&qword_2800F19E0, &qword_2800F19D8, 0x277D577F8, &protocol conformance descriptor for GATSchemaGATConfirmationSnippetUserActionEvent);
  sub_26738121C();
  v40(v6, 0, 1, v7);
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001DLL, 0x800000026743D8D0);
  v21(v44, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v43, 0xD00000000000001DLL, 0x800000026743D8D0);
  if (!v19(v24, 1, v7))
  {
    sub_266ECB128(&unk_287886278);
    sub_26738115C();
  }

  (v23)(v43, 0);
  v22(v44, 0);
  sub_266ECB294(0, &qword_2800F19E8, 0x277D577F0);
  sub_266ECAF2C(&qword_2800F19F0, &qword_2800F19E8, 0x277D577F0, &protocol conformance descriptor for GATSchemaGATConfirmationSnippetPresented);
  sub_26738121C();
  v25 = v40;
  v40(v6, 0, 1, v7);
  v26 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001CLL, 0x800000026743D8F0);
  v26(v44, 0);
  sub_266ECB294(0, &qword_2800F19F8, 0x277D57800);
  sub_266ECAF2C(&qword_2800F1A00, &qword_2800F19F8, 0x277D57800, &protocol conformance descriptor for GATSchemaGATConfirmationSnippetUserActioned);
  sub_26738121C();
  v25(v6, 0, 1, v7);
  v27 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001FLL, 0x800000026743D910);
  v27(v44, 0);
  v28 = v37;
  sub_26738117C();
  v29 = sub_2673811BC();
  v31 = v30;
  v32 = *v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v31 = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = sub_266ECAD54(0, v32[2] + 1, 1, v32);
    *v31 = v32;
  }

  v35 = v32[2];
  v34 = v32[3];
  if (v35 >= v34 >> 1)
  {
    v32 = sub_266ECAD54((v34 > 1), v35 + 1, 1, v32);
    *v31 = v32;
  }

  v32[2] = v35 + 1;
  (*(v38 + 32))(v32 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v35, v28, v39);
  v29(v44, 0);
  sub_266ECB128(&unk_2878862A0);
  return sub_2673811CC();
}

uint64_t sub_266FC4A00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FC4A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FC4B64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC4BC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}