uint64_t sub_26704EA8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26704EAF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26704EB54()
{
  result = qword_2800F3568;
  if (!qword_2800F3568)
  {
    sub_26704EBAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3568);
  }

  return result;
}

unint64_t sub_26704EBAC()
{
  result = qword_2800F3570;
  if (!qword_2800F3570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3570);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCECommonAppDependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v3 = sub_26738113C();
  v43 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v4 + 104);
  v10(v6, *MEMORY[0x277D3E530], v3);
  v41 = v4 + 104;
  v45[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v39 = *(v12 + 56);
  v13 = v12 + 56;
  v42 = v11;
  v39(v9, 0, 1, v11);
  v44 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C646E7542707061, 0xEB00000000644965);
  v14(v45, 0);
  v35 = "DependentSignals";
  LODWORD(v36) = *MEMORY[0x277D3E4E8];
  v15 = v36;
  v16 = v43;
  v10(v6, v36, v43);
  v45[0] = 1;
  sub_26738114C();
  v17 = v11;
  v18 = v39;
  v39(v9, 0, 1, v17);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v35 | 0x8000000000000000);
  v19(v45, 0);
  v20 = v16;
  v10(v6, v15, v16);
  v45[0] = 1;
  sub_26738114C();
  v21 = v42;
  v18(v9, 0, 1, v42);
  v37 = a2;
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x726765726F467369, 0xEF707041646E756FLL);
  v22(v45, 0);
  v10(v6, v36, v20);
  v45[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x766C6F7365527369, 0xED00007070416465);
  v23(v45, 0);
  v36 = "isFirstPartyBundle";
  v10(v6, *MEMORY[0x277D3E500], v20);
  v45[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v21);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v36 | 0x8000000000000000);
  v24(v45, 0);
  v36 = "appScoreFromModel";
  v10(v6, *MEMORY[0x277D3E518], v43);
  v45[0] = 1;
  sub_26738114C();
  v25 = v42;
  v18(v9, 0, 1, v42);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v36 | 0x8000000000000000);
  v26(v45, 0);
  v35 = "compoundActiveBundleScore";
  LODWORD(v36) = *MEMORY[0x277D3E538];
  v38 = v10;
  (v10)(v6);
  v45[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v25);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, v35 | 0x8000000000000000);
  v27(v45, 0);
  v35 = "totalTimeSpentByUserInAppPerDay";
  v28 = v43;
  v10(v6, v36, v43);
  v45[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v25);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v35 | 0x8000000000000000);
  v29(v45, 0);
  v38(v6, *MEMORY[0x277D3E508], v28);
  v45[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v25);
  v30 = v18;
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, 0x800000026744A310);
  v31(v45, 0);
  sub_266ECB294(0, &qword_2800F3570, 0x277D58208);
  sub_266ECAF2C(&qword_2800F3568, &qword_2800F3570, 0x277D58208, &protocol conformance descriptor for INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals);
  sub_26738120C();
  v30(v9, 0, 1, v25);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000026, 0x800000026744A330);
  v32(v45, 0);
  sub_266ECB294(0, &qword_2800F3560, 0x277D58200);
  sub_266ECAF2C(&qword_2800F3558, &qword_2800F3560, 0x277D58200, &protocol conformance descriptor for INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals);
  sub_26738120C();
  v30(v9, 0, 1, v42);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002CLL, 0x800000026744A360);
  return v33(v45, 0);
}

uint64_t sub_26704F6A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26704F70C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCECommonAppIndependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v3 = sub_26738113C();
  v59 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v51 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E510];
  v11 = *(v4 + 104);
  v57 = v4 + 104;
  v58 = v11;
  v55 = v10;
  v11(v6, v10, v3);
  v61[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v9, 0, 1, v12);
  v56 = v14;
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x75676E614C776172, 0xEB00000000656761);
  v16(v61, 0);
  v60 = v6;
  v17 = v10;
  v18 = v59;
  v58(v6, v17, v59);
  v61[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v53 = a2;
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C61636F4C776172, 0xE900000000000065);
  v19(v61, 0);
  v51 = "IndependentSignals";
  v20 = v55;
  v21 = v18;
  v22 = v58;
  v58(v60, v55, v21);
  v61[0] = 1;
  sub_26738114C();
  v23 = v12;
  v24 = v12;
  v25 = v56;
  v56(v9, 0, 1, v24);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v51 | 0x8000000000000000);
  v26(v61, 0);
  v27 = v60;
  v28 = v20;
  v29 = v59;
  v22(v60, v28, v59);
  v61[0] = 1;
  sub_26738114C();
  v25(v9, 0, 1, v23);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0x746E756F43776172, 0xEA00000000007972);
  v30(v61, 0);
  v51 = "rawStateOrProvince";
  v22(v27, v55, v29);
  v61[0] = 1;
  sub_26738114C();
  v25(v9, 0, 1, v23);
  v54 = v15;
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v51 | 0x8000000000000000);
  v31(v61, 0);
  v55 = *MEMORY[0x277D3E508];
  v32 = v55;
  v34 = v58;
  v33 = v59;
  v58(v27, v55, v59);
  v61[0] = 1;
  sub_26738114C();
  v35 = v23;
  v36 = v23;
  v37 = v56;
  v56(v9, 0, 1, v35);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0x6144746E65696C63, 0xEF6B656557664F79);
  v38(v61, 0);
  v51 = "rawRequestDeviceCategory";
  v34(v60, v32, v33);
  v61[0] = 1;
  sub_26738114C();
  v37(v9, 0, 1, v36);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v51 | 0x8000000000000000);
  v39(v61, 0);
  v51 = "rawClientHourOfDay";
  v34(v60, *MEMORY[0x277D3E4E8], v33);
  v61[0] = 1;
  sub_26738114C();
  v40 = v36;
  v37(v9, 0, 1, v36);
  v41 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v51 | 0x8000000000000000);
  v41(v61, 0);
  type metadata accessor for INFERENCESchemaINFERENCEAppResolutionType(0);
  sub_26705040C(&qword_2800F33B0, type metadata accessor for INFERENCESchemaINFERENCEAppResolutionType, &protocol conformance descriptor for INFERENCESchemaINFERENCEAppResolutionType);
  sub_26738120C();
  v37(v9, 0, 1, v36);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267430CC0);
  v42(v61, 0);
  v52 = "isClientDaylight";
  v43 = v59;
  v44 = v58;
  v58(v60, v55, v59);
  v61[0] = 1;
  sub_26738114C();
  v45 = v56;
  v56(v9, 0, 1, v40);
  v46 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v52 | 0x8000000000000000);
  v46(v61, 0);
  v52 = "sirikitResponseCode";
  v47 = v60;
  v44(v60, v55, v43);
  v61[0] = 1;
  sub_26738114C();
  v45(v9, 0, 1, v40);
  v48 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v52 | 0x8000000000000000);
  v48(v61, 0);
  v44(v47, *MEMORY[0x277D3E538], v59);
  v61[0] = 1;
  sub_26738114C();
  v45(v9, 0, 1, v40);
  v49 = sub_2673811AC();
  sub_266EC637C(v9, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  return v49(v61, 0);
}

uint64_t sub_267050300(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267050364(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26705040C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267050454()
{
  result = qword_2800F3590;
  if (!qword_2800F3590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3590);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3598, 0x277D58240);
  sub_266ECAF2C(&qword_2800F35A0, &qword_2800F3598, 0x277D58240, &protocol conformance descriptor for INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000037, 0x800000026744A4F0);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F35A8, 0x277D58238);
  sub_266ECAF2C(&qword_2800F35B0, &qword_2800F35A8, 0x277D58238, &protocol conformance descriptor for INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000035, 0x800000026744A530);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001BLL, 0x800000026744A570);
  return v8(v10, 0);
}

uint64_t sub_26705084C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670508B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v37 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v31 = a1;
  sub_26738119C();
  v34 = "AppDependentMessageSignals";
  v9 = *MEMORY[0x277D3E500];
  v10 = *(v3 + 104);
  v35 = v3 + 104;
  LODWORD(v30) = v9;
  v10(v5, v9, v2);
  v38 = v10;
  v39[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v36 = *(v12 + 56);
  v13 = v12 + 56;
  v36(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v34 | 0x8000000000000000);
  v14(v39, 0);
  v34 = "appAffinityScoreForMessages";
  v15 = v37;
  v10(v5, v9, v37);
  v39[0] = 1;
  sub_26738114C();
  v16 = v36;
  v36(v8, 0, 1, v11);
  v33 = v13;
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, v34 | 0x8000000000000000);
  v17(v39, 0);
  v18 = v15;
  v19 = v38;
  (v38)(v5, v30, v18);
  v39[0] = 1;
  sub_26738114C();
  v32 = v11;
  v16(v8, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, 0x800000026744A640);
  v20(v39, 0);
  v30 = "ForMessagesReceived";
  LODWORD(v34) = *MEMORY[0x277D3E508];
  v21 = v37;
  v19(v5);
  v39[0] = 1;
  sub_26738114C();
  v22 = v36;
  v36(v8, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v30 | 0x8000000000000000);
  v23(v39, 0);
  v30 = "appFreqForMessages";
  v24 = v34;
  (v38)(v5, v34, v21);
  v39[0] = 1;
  sub_26738114C();
  v25 = v32;
  v22(v8, 0, 1, v32);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v30 | 0x8000000000000000);
  v26(v39, 0);
  (v38)(v5, v24, v37);
  v39[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v25);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x800000026744A6B0);
  return v27(v39, 0);
}

uint64_t sub_267050FD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26705103C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670510A0()
{
  result = qword_2800F35B8;
  if (!qword_2800F35B8)
  {
    sub_2670510F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F35B8);
  }

  return result;
}

unint64_t sub_2670510F8()
{
  result = qword_2800F35C0;
  if (!qword_2800F35C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F35C0);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v37 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v31 = a1;
  sub_26738119C();
  v34 = "AppDependentPhoneCallSignals";
  v9 = *MEMORY[0x277D3E500];
  v10 = *(v3 + 104);
  v35 = v3 + 104;
  LODWORD(v30) = v9;
  v10(v5, v9, v2);
  v38 = v10;
  v39[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v36 = *(v12 + 56);
  v13 = v12 + 56;
  v36(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v34 | 0x8000000000000000);
  v14(v39, 0);
  v34 = "appAffinityScoreForPhoneCall";
  v15 = v37;
  v10(v5, v9, v37);
  v39[0] = 1;
  sub_26738114C();
  v16 = v36;
  v36(v8, 0, 1, v11);
  v33 = v13;
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, v34 | 0x8000000000000000);
  v17(v39, 0);
  v18 = v15;
  v19 = v38;
  (v38)(v5, v30, v18);
  v39[0] = 1;
  sub_26738114C();
  v32 = v11;
  v16(v8, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, 0x800000026744A790);
  v20(v39, 0);
  v30 = "ForPhoneCallReceived";
  LODWORD(v34) = *MEMORY[0x277D3E508];
  v21 = v37;
  v19(v5);
  v39[0] = 1;
  sub_26738114C();
  v22 = v36;
  v36(v8, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, v30 | 0x8000000000000000);
  v23(v39, 0);
  v30 = "appFreqForPhoneCall";
  v24 = v34;
  (v38)(v5, v34, v21);
  v39[0] = 1;
  sub_26738114C();
  v25 = v32;
  v22(v8, 0, 1, v32);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v30 | 0x8000000000000000);
  v26(v39, 0);
  (v38)(v5, v24, v37);
  v39[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v25);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x800000026744A800);
  return v27(v39, 0);
}

uint64_t sub_2670517C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26705182C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267051890()
{
  result = qword_2800F35C8;
  if (!qword_2800F35C8)
  {
    sub_2670518E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F35C8);
  }

  return result;
}

unint64_t sub_2670518E8()
{
  result = qword_2800F35D0;
  if (!qword_2800F35D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F35D0);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v3 = sub_26738113C();
  v65 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v57 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v10 = a2;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v4 + 104);
  v63 = v6;
  v67 = v11;
  v12(v6, v11, v3);
  v66 = v4 + 104;
  v69[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v9, 0, 1, v13);
  v17 = v15;
  v18 = v10;
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x766C6F7365527369, 0xED00007070416465);
  v19(v69, 0);
  v58 = "AppDependentSignals";
  v20 = v63;
  v21 = v11;
  v22 = v65;
  v12(v63, v21, v65);
  v64 = v12;
  v69[0] = 1;
  sub_26738114C();
  v62 = v17;
  v17(v9, 0, 1, v13);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v58 | 0x8000000000000000);
  v23(v69, 0);
  v58 = "isResolvedContactInApp";
  v12(v20, *MEMORY[0x277D3E500], v22);
  v69[0] = 1;
  sub_26738114C();
  v68 = v13;
  v61 = v16;
  v17(v9, 0, 1, v13);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v58 | 0x8000000000000000);
  v24(v69, 0);
  v25 = v64;
  (v64)(v20, v67, v65);
  v69[0] = 1;
  sub_26738114C();
  v26 = v62;
  v62(v9, 0, 1, v13);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x726765726F467369, 0xEF707041646E756FLL);
  v27(v69, 0);
  LODWORD(v58) = *MEMORY[0x277D3E508];
  v25(v20);
  v69[0] = 1;
  sub_26738114C();
  v28 = v68;
  v26(v9, 0, 1, v68);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, 0x800000026744A310);
  v29(v69, 0);
  sub_266ECB294(0, &qword_2800F35C0, 0x277D58228);
  sub_266ECAF2C(&qword_2800F35B8, &qword_2800F35C0, 0x277D58228, &protocol conformance descriptor for INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals);
  sub_26738120C();
  v26(v9, 0, 1, v28);
  v30 = v18;
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0x536567617373656DLL, 0xEE00736C616E6769);
  v31(v69, 0);
  v57 = "appTimeSpentAffinityScore";
  sub_266ECB294(0, &qword_2800F35D0, 0x277D58230);
  sub_266ECAF2C(&qword_2800F35C8, &qword_2800F35D0, 0x277D58230, &protocol conformance descriptor for INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals);
  sub_26738120C();
  v32 = v68;
  v33 = v62;
  v62(v9, 0, 1, v68);
  v60 = v30;
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v57 | 0x8000000000000000);
  v34(v69, 0);
  v57 = "phoneCallSignals";
  sub_266ECB294(0, &qword_2800F35D8, 0x277D58258);
  sub_266ECAF2C(&qword_2800F35E0, &qword_2800F35D8, 0x277D58258, &protocol conformance descriptor for INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals);
  sub_26738120C();
  v33(v9, 0, 1, v32);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v57 | 0x8000000000000000);
  v35(v69, 0);
  v37 = v63;
  v36 = v64;
  v38 = v65;
  (v64)(v63, v67, v65);
  v69[0] = 1;
  sub_26738114C();
  v39 = v68;
  v33(v9, 0, 1, v68);
  v40 = sub_2673811AC();
  sub_266EC637C(v9, 0x5074737269467369, 0xEF70704179747261);
  v40(v69, 0);
  v59 = "contactDependentSignals";
  (v36)(v37, *MEMORY[0x277D3E510], v38);
  v69[0] = 1;
  sub_26738114C();
  v41 = v39;
  v42 = v62;
  v62(v9, 0, 1, v41);
  v43 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v59 | 0x8000000000000000);
  v43(v69, 0);
  v59 = "appTimeSpentInSec";
  v44 = v37;
  v45 = v37;
  v46 = v65;
  (v36)(v45, v58, v65);
  v69[0] = 1;
  sub_26738114C();
  v47 = v68;
  v42(v9, 0, 1, v68);
  v48 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, v59 | 0x8000000000000000);
  v48(v69, 0);
  v49 = v67;
  v50 = v64;
  (v64)(v44, v67, v46);
  v69[0] = 1;
  sub_26738114C();
  v42(v9, 0, 1, v47);
  v51 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C75616665447369, 0xEC00000070704174);
  v51(v69, 0);
  v59 = "actLastLaunchedInSec";
  v52 = v63;
  v50(v63, v49, v46);
  v69[0] = 1;
  sub_26738114C();
  v53 = v68;
  v42(v9, 0, 1, v68);
  v54 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v59 | 0x8000000000000000);
  v54(v69, 0);
  v50(v52, v67, v46);
  v69[0] = 1;
  sub_26738114C();
  v42(v9, 0, 1, v53);
  v55 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026744A980);
  return v55(v69, 0);
}

uint64_t sub_267052698(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670526FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v26 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v24 = "AppIndependentSignals";
  v8 = *MEMORY[0x277D3E510];
  v25 = *(v2 + 104);
  v21 = v8;
  v22 = v1;
  v25(v4, v8, v1);
  v27[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v23 = v10 + 56;
  v11(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v24 | 0x8000000000000000);
  v12(v27, 0);
  v24 = "requestOriginLocale";
  v13 = v1;
  v14 = v25;
  v25(v4, v8, v13);
  v27[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, v24 | 0x8000000000000000);
  v15(v27, 0);
  v14(v4, v21, v22);
  v27[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x800000026744AA40);
  v16(v27, 0);
  type metadata accessor for INFERENCESchemaINFERENCEAppResolutionType(0);
  sub_267052E48(&qword_2800F33B0, type metadata accessor for INFERENCESchemaINFERENCEAppResolutionType, &protocol conformance descriptor for INFERENCESchemaINFERENCEAppResolutionType);
  sub_26738120C();
  v11(v7, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267430CC0);
  v17(v27, 0);
  type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona(0);
  sub_267052E48(&qword_2800F1410, type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona, &protocol conformance descriptor for INFERENCESchemaINFERENCEAppSelectionUserPersona);
  sub_26738120C();
  v11(v7, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x7372655072657375, 0xEB00000000616E6FLL);
  return v18(v27, 0);
}

uint64_t sub_267052D3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267052DA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267052E48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267052E90()
{
  result = qword_2800F3598;
  if (!qword_2800F3598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3598);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v63 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v56 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E500];
  v10 = *(v3 + 104);
  v64 = v3 + 104;
  v65 = v10;
  v61 = v9;
  v10(v5, v9, v2);
  v66[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v58 = *(v12 + 56);
  v13 = v12 + 56;
  v58(v8, 0, 1, v11);
  v62 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x800000026744AAC0);
  v14(v66, 0);
  v57 = "tyScoreForMessages";
  v15 = v63;
  v65(v5, v9, v63);
  v66[0] = 1;
  sub_26738114C();
  v16 = v58;
  v58(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002BLL, v57 | 0x8000000000000000);
  v17(v66, 0);
  v57 = "tyScoreForMessagesUsingSiri";
  v18 = v15;
  v19 = v65;
  v65(v5, v61, v18);
  v66[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v11);
  v60 = a1;
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002ALL, v57 | 0x8000000000000000);
  v20(v66, 0);
  v57 = "tyScoreForMessagesReceived";
  v61 = *MEMORY[0x277D3E508];
  v21 = v61;
  v22 = v63;
  v19(v5, v61, v63);
  v66[0] = 1;
  sub_26738114C();
  v23 = v11;
  v59 = v11;
  v24 = v58;
  v58(v8, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v57 | 0x8000000000000000);
  v25(v66, 0);
  v57 = "appContactFreqForMessages2Min";
  v26 = v65;
  v65(v5, v21, v22);
  v66[0] = 1;
  sub_26738114C();
  v24(v8, 0, 1, v23);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v57 | 0x8000000000000000);
  v27(v66, 0);
  v57 = "appContactFreqForMessages10Min";
  v28 = v61;
  v29 = v63;
  v26(v5, v61, v63);
  v66[0] = 1;
  sub_26738114C();
  v30 = v59;
  v24(v8, 0, 1, v59);
  v31 = v24;
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v57 | 0x8000000000000000);
  v32(v66, 0);
  v57 = "appContactFreqForMessages1Hr";
  v33 = v28;
  v34 = v65;
  v65(v5, v33, v29);
  v66[0] = 1;
  sub_26738114C();
  v24(v8, 0, 1, v30);
  v35 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v57 | 0x8000000000000000);
  v35(v66, 0);
  v57 = "appContactFreqForMessages6Hr";
  v36 = v63;
  v34(v5, v61, v63);
  v66[0] = 1;
  sub_26738114C();
  v24(v8, 0, 1, v30);
  v37 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v57 | 0x8000000000000000);
  v37(v66, 0);
  v57 = "appContactFreqForMessages1Day";
  v38 = v61;
  v39 = v36;
  v34(v5, v61, v36);
  v66[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v59);
  v40 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v57 | 0x8000000000000000);
  v40(v66, 0);
  v57 = "appContactFreqForMessages7Day";
  v41 = v38;
  v34(v5, v38, v39);
  v66[0] = 1;
  sub_26738114C();
  v43 = v58;
  v42 = v59;
  v58(v8, 0, 1, v59);
  v44 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v57 | 0x8000000000000000);
  v44(v66, 0);
  v57 = "appContactFreqForMessages28Day";
  v45 = v41;
  v46 = v63;
  v65(v5, v45, v63);
  v66[0] = 1;
  sub_26738114C();
  v43(v8, 0, 1, v42);
  v47 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v57 | 0x8000000000000000);
  v47(v66, 0);
  v57 = "appContactFreqForMessagesInf";
  v48 = v61;
  v49 = v65;
  v65(v5, v61, v46);
  v66[0] = 1;
  sub_26738114C();
  v50 = v58;
  v58(v8, 0, 1, v42);
  v51 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v57 | 0x8000000000000000);
  v51(v66, 0);
  v57 = "appContactFreqForMessages";
  v49(v5, v48, v46);
  v66[0] = 1;
  sub_26738114C();
  v52 = v59;
  v50(v8, 0, 1, v59);
  v53 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, v57 | 0x8000000000000000);
  v53(v66, 0);
  v49(v5, v61, v63);
  v66[0] = 1;
  sub_26738114C();
  v50(v8, 0, 1, v52);
  v54 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x800000026744ACA0);
  return v54(v66, 0);
}

uint64_t sub_267053BC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267053C2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267053C90()
{
  result = qword_2800F35E8;
  if (!qword_2800F35E8)
  {
    sub_267053CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F35E8);
  }

  return result;
}

unint64_t sub_267053CE8()
{
  result = qword_2800F35F0;
  if (!qword_2800F35F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F35F0);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v63 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v56 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E500];
  v10 = *(v3 + 104);
  v64 = v3 + 104;
  v65 = v10;
  v61 = v9;
  v10(v5, v9, v2);
  v66[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v58 = *(v12 + 56);
  v13 = v12 + 56;
  v58(v8, 0, 1, v11);
  v62 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, 0x800000026744AD30);
  v14(v66, 0);
  v57 = "tyScoreForPhoneCall";
  v15 = v63;
  v65(v5, v9, v63);
  v66[0] = 1;
  sub_26738114C();
  v16 = v58;
  v58(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002CLL, v57 | 0x8000000000000000);
  v17(v66, 0);
  v57 = "tyScoreForPhoneCallUsingSiri";
  v18 = v15;
  v19 = v65;
  v65(v5, v61, v18);
  v66[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v11);
  v60 = a1;
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002BLL, v57 | 0x8000000000000000);
  v20(v66, 0);
  v57 = "tyScoreForPhoneCallReceived";
  v61 = *MEMORY[0x277D3E508];
  v21 = v61;
  v22 = v63;
  v19(v5, v61, v63);
  v66[0] = 1;
  sub_26738114C();
  v23 = v11;
  v59 = v11;
  v24 = v58;
  v58(v8, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v57 | 0x8000000000000000);
  v25(v66, 0);
  v57 = "appContactFreqForPhoneCall2Min";
  v26 = v65;
  v65(v5, v21, v22);
  v66[0] = 1;
  sub_26738114C();
  v24(v8, 0, 1, v23);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, v57 | 0x8000000000000000);
  v27(v66, 0);
  v57 = "appContactFreqForPhoneCall10Min";
  v28 = v61;
  v29 = v63;
  v26(v5, v61, v63);
  v66[0] = 1;
  sub_26738114C();
  v30 = v59;
  v24(v8, 0, 1, v59);
  v31 = v24;
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v57 | 0x8000000000000000);
  v32(v66, 0);
  v57 = "appContactFreqForPhoneCall1Hr";
  v33 = v28;
  v34 = v65;
  v65(v5, v33, v29);
  v66[0] = 1;
  sub_26738114C();
  v24(v8, 0, 1, v30);
  v35 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v57 | 0x8000000000000000);
  v35(v66, 0);
  v57 = "appContactFreqForPhoneCall6Hr";
  v36 = v63;
  v34(v5, v61, v63);
  v66[0] = 1;
  sub_26738114C();
  v24(v8, 0, 1, v30);
  v37 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v57 | 0x8000000000000000);
  v37(v66, 0);
  v57 = "appContactFreqForPhoneCall1Day";
  v38 = v61;
  v39 = v36;
  v34(v5, v61, v36);
  v66[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v59);
  v40 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v57 | 0x8000000000000000);
  v40(v66, 0);
  v57 = "appContactFreqForPhoneCall7Day";
  v41 = v38;
  v34(v5, v38, v39);
  v66[0] = 1;
  sub_26738114C();
  v43 = v58;
  v42 = v59;
  v58(v8, 0, 1, v59);
  v44 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, v57 | 0x8000000000000000);
  v44(v66, 0);
  v57 = "appContactFreqForPhoneCall28Day";
  v45 = v41;
  v46 = v63;
  v65(v5, v45, v63);
  v66[0] = 1;
  sub_26738114C();
  v43(v8, 0, 1, v42);
  v47 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v57 | 0x8000000000000000);
  v47(v66, 0);
  v57 = "appContactFreqForPhoneCallInf";
  v48 = v61;
  v49 = v65;
  v65(v5, v61, v46);
  v66[0] = 1;
  sub_26738114C();
  v50 = v58;
  v58(v8, 0, 1, v42);
  v51 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v57 | 0x8000000000000000);
  v51(v66, 0);
  v57 = "appContactFreqForPhoneCall";
  v49(v5, v48, v46);
  v66[0] = 1;
  sub_26738114C();
  v52 = v59;
  v50(v8, 0, 1, v59);
  v53 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, v57 | 0x8000000000000000);
  v53(v66, 0);
  v49(v5, v61, v63);
  v66[0] = 1;
  sub_26738114C();
  v50(v8, 0, 1, v52);
  v54 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x800000026744AF10);
  return v54(v66, 0);
}

uint64_t sub_267054A20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267054A84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267054AE8()
{
  result = qword_2800F35F8;
  if (!qword_2800F35F8)
  {
    sub_267054B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F35F8);
  }

  return result;
}

unint64_t sub_267054B40()
{
  result = qword_2800F3600;
  if (!qword_2800F3600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3600);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F35F0, 0x277D58248);
  sub_266ECAF2C(&qword_2800F35E8, &qword_2800F35F0, 0x277D58248, &protocol conformance descriptor for INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001ELL, 0x800000026744AFA0);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F3600, 0x277D58250);
  sub_266ECAF2C(&qword_2800F35F8, &qword_2800F3600, 0x277D58250, &protocol conformance descriptor for INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000020, 0x800000026744AFC0);
  return v7(v9, 0);
}

uint64_t sub_267054E64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267054EC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEConfirmationPromptContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0xD000000000000019, 0x800000026744B040);
  v10(v13, 0);
  type metadata accessor for INFERENCESchemaINFERENCEConfirmationResolutionType(0);
  sub_2670553A0(&qword_2800F3608, type metadata accessor for INFERENCESchemaINFERENCEConfirmationResolutionType, &protocol conformance descriptor for INFERENCESchemaINFERENCEConfirmationResolutionType);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6974756C6F736572, 0xEA00000000006E6FLL);
  return v11(v13, 0);
}

uint64_t sub_267055294(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670552F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670553A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670553E8()
{
  result = qword_2800F3618;
  if (!qword_2800F3618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3618);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEConfirmationResolutionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x800000026744B0B0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x800000026744B0E0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x800000026744B110, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x800000026744B140, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x800000026744B170, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_26705572C(uint64_t a1)
{
  v2 = sub_267055830(&qword_2800F3620, &protocol conformance descriptor for INFERENCESchemaINFERENCEConfirmationResolutionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267055794(uint64_t a1, uint64_t a2)
{
  v4 = sub_267055830(&qword_2800F3620, &protocol conformance descriptor for INFERENCESchemaINFERENCEConfirmationResolutionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267055830(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEConfirmationResolutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContact.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "iri.inference.INFERENCEContact";
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x800000026744B1F0);
  return v14(v19, 0);
}

uint64_t sub_267055BA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267055C0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267055C70()
{
  result = qword_2800F3628;
  if (!qword_2800F3628)
  {
    sub_267055CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3628);
  }

  return result;
}

unint64_t sub_267055CC8()
{
  result = qword_2800F3630;
  if (!qword_2800F3630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3630);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContactActionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x800000026744B250, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000029, 0x800000026744B280, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026744B2B0, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000025, 0x800000026744B2E0, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x800000026744B310, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x800000026744B340, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_26705607C(uint64_t a1)
{
  v2 = sub_267056180(&qword_2800F3640, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactActionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670560E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267056180(&qword_2800F3640, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactActionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267056180(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEContactActionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContactCandidatesInfoGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v20 = *(v1 - 8);
  v21 = v1;
  MEMORY[0x28223BE20](v1);
  v19 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v18 = "ndidatesInfoGenerated";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v17 = v7;
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001BLL, v18 | 0x8000000000000000);
  v8(v22, 0);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x64497972657571, 0xE700000000000000);
  v9(v22, 0);
  sub_266ECB294(0, &qword_2800F3648, 0x277D58290);
  sub_266ECAF2C(&qword_2800F3650, &qword_2800F3648, 0x277D58290, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactQueryMetadata);
  sub_26738120C();
  v10 = v17;
  v17(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x800000026744B3E0);
  v11(v22, 0);
  type metadata accessor for INFERENCESchemaINFERENCEOntologySource(0);
  sub_2670568A8();
  sub_26738120C();
  v10(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x79676F6C6F746E6FLL, 0xEE00656372756F53);
  v12(v22, 0);
  sub_266ECB294(0, &qword_2800F3440, 0x277D581E8);
  sub_266ECAF2C(&qword_2800F3438, &qword_2800F3440, 0x277D581E8, &protocol conformance descriptor for INFERENCESchemaINFERENCECandidateInfo);
  sub_26738122C();
  v10(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x74616469646E6163, 0xEA00000000007365);
  v13(v22, 0);
  (*(v20 + 104))(v19, *MEMORY[0x277D3E4E8], v21);
  v22[0] = 1;
  sub_26738114C();
  v10(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000021, 0x800000026744B400);
  return v14(v22, 0);
}

uint64_t sub_2670567E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267056848(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670568A8()
{
  result = qword_2800F3658;
  if (!qword_2800F3658)
  {
    type metadata accessor for INFERENCESchemaINFERENCEOntologySource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3658);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContactFeatureSet.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v192 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v182 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v182 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E500];
  v193 = *(v3 + 104);
  v194 = v9;
  v193(v5, v9, v2);
  v190 = v3 + 104;
  v196[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v195 = *(v11 + 56);
  v12 = v11 + 56;
  v195(v8, 0, 1, v10);
  v188 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E656365527369, 0xE800000000000000);
  v13(v196, 0);
  v186 = "FERENCEContactFeatureSet";
  v14 = v9;
  v16 = v192;
  v15 = v193;
  v193(v5, v14, v192);
  v196[0] = 1;
  sub_26738114C();
  v17 = v195;
  v195(v8, 0, 1, v10);
  v187 = a1;
  v18 = sub_2673811AC();
  v183 = 0xD000000000000014;
  sub_266EC637C(v8, 0xD000000000000014, v186 | 0x8000000000000000);
  v18(v196, 0);
  v186 = "isRecentInSameDomain";
  v15(v5, v194, v16);
  v196[0] = 1;
  sub_26738114C();
  v17(v8, 0, 1, v10);
  v19 = sub_2673811AC();
  v184 = 0xD000000000000015;
  sub_266EC637C(v8, 0xD000000000000015, v186 | 0x8000000000000000);
  v19(v196, 0);
  v186 = "isRecentInSiriRequest";
  v20 = v194;
  v22 = v192;
  v21 = v193;
  v193(v5, v194, v192);
  v196[0] = 1;
  sub_26738114C();
  v195(v8, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, v186 | 0x8000000000000000);
  v23(v196, 0);
  v24 = v5;
  v21(v5, v20, v22);
  v25 = v21;
  v196[0] = 1;
  sub_26738114C();
  v191 = v10;
  v26 = v195;
  v195(v8, 0, 1, v10);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0x5279636E65636572, 0xEB000000006B6E61);
  v27(v196, 0);
  v186 = "isRecentlyCorrected";
  v28 = v194;
  v29 = v192;
  v25(v24, v194, v192);
  v196[0] = 1;
  sub_26738114C();
  v26(v8, 0, 1, v10);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v186 | 0x8000000000000000);
  v30(v196, 0);
  v186 = "recencyRankInSameDomain";
  v31 = v28;
  v32 = v29;
  v33 = v193;
  v193(v24, v31, v29);
  v196[0] = 1;
  sub_26738114C();
  v195(v8, 0, 1, v191);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v186 | 0x8000000000000000);
  v34(v196, 0);
  v186 = "recencyRankInSiriRequest";
  v35 = v194;
  v33(v24, v194, v32);
  v196[0] = 1;
  sub_26738114C();
  v36 = v191;
  v37 = v195;
  v195(v8, 0, 1, v191);
  v38 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v186 | 0x8000000000000000);
  v38(v196, 0);
  v189 = v24;
  v39 = v192;
  v193(v24, v35, v192);
  v196[0] = 1;
  sub_26738114C();
  v40 = v36;
  v37(v8, 0, 1, v36);
  v41 = sub_2673811AC();
  sub_266EC637C(v8, 0x69726F7661467369, 0xEA00000000006574);
  v41(v196, 0);
  v186 = "isHighQualityRequestMatch";
  v42 = v194;
  v43 = v193;
  v193(v189, v194, v39);
  v196[0] = 1;
  sub_26738114C();
  v44 = v195;
  v195(v8, 0, 1, v40);
  v45 = sub_2673811AC();
  v185 = 0xD000000000000010;
  sub_266EC637C(v8, 0xD000000000000010, v186 | 0x8000000000000000);
  v45(v196, 0);
  v186 = "isMeCardRelation";
  v46 = v189;
  v47 = v42;
  v48 = v192;
  v43(v189, v47, v192);
  v196[0] = 1;
  sub_26738114C();
  v49 = v191;
  v44(v8, 0, 1, v191);
  v50 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v186 | 0x8000000000000000);
  v50(v196, 0);
  v186 = "isWeakOrganizationMatch";
  v51 = v46;
  v52 = v194;
  v53 = v193;
  v193(v51, v194, v48);
  v196[0] = 1;
  sub_26738114C();
  v54 = v195;
  v195(v8, 0, 1, v49);
  v55 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, v186 | 0x8000000000000000);
  v55(v196, 0);
  v186 = "eRanksGivenNameRank";
  v56 = v189;
  v53(v189, v52, v48);
  v196[0] = 1;
  sub_26738114C();
  v54(v8, 0, 1, v49);
  v57 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, v186 | 0x8000000000000000);
  v57(v196, 0);
  v186 = "eRanksMiddleNameRank";
  v58 = v194;
  v53(v56, v194, v48);
  v196[0] = 1;
  sub_26738114C();
  v54(v8, 0, 1, v49);
  v59 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, v186 | 0x8000000000000000);
  v59(v196, 0);
  v182 = "eRanksFamilyNameRank";
  v60 = v48;
  v61 = v193;
  v193(v56, v58, v60);
  v196[0] = 1;
  sub_26738114C();
  v54(v8, 0, 1, v49);
  v62 = sub_2673811AC();
  v186 = 0xD000000000000016;
  sub_266EC637C(v8, 0xD000000000000016, v182 | 0x8000000000000000);
  v62(v196, 0);
  v182 = "freqAnyGroup0MinTo2Min";
  v63 = v192;
  v61(v56, v58, v192);
  v196[0] = 1;
  sub_26738114C();
  v64 = v191;
  v54(v8, 0, 1, v191);
  v65 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v182 | 0x8000000000000000);
  v65(v196, 0);
  v182 = "freqAnyGroup2MinTo10Min";
  v66 = v193;
  v193(v56, v194, v63);
  v196[0] = 1;
  sub_26738114C();
  v54(v8, 0, 1, v64);
  v67 = sub_2673811AC();
  sub_266EC637C(v8, v186, v182 | 0x8000000000000000);
  v67(v196, 0);
  v182 = "freqAnyGroup10MinTo1Hr";
  v68 = v194;
  v66(v56, v194, v63);
  v196[0] = 1;
  sub_26738114C();
  v69 = v191;
  v54(v8, 0, 1, v191);
  v70 = sub_2673811AC();
  sub_266EC637C(v8, v183, v182 | 0x8000000000000000);
  v70(v196, 0);
  v183 = "freqAnyGroup1HrTo6Hr";
  v71 = v189;
  v72 = v192;
  v66(v189, v68, v192);
  v196[0] = 1;
  sub_26738114C();
  v73 = v195;
  v195(v8, 0, 1, v69);
  v74 = sub_2673811AC();
  sub_266EC637C(v8, v184, v183 | 0x8000000000000000);
  v74(v196, 0);
  v183 = "freqAnyGroup6HrTo1Day";
  v75 = v71;
  v76 = v71;
  v77 = v72;
  v78 = v72;
  v79 = v193;
  v193(v76, v68, v77);
  v196[0] = 1;
  sub_26738114C();
  v80 = v191;
  v73(v8, 0, 1, v191);
  v81 = sub_2673811AC();
  sub_266EC637C(v8, v186, v183 | 0x8000000000000000);
  v81(v196, 0);
  v183 = "freqAnyGroup1DayTo7Day";
  v82 = v194;
  v79(v75, v194, v78);
  v196[0] = 1;
  sub_26738114C();
  v195(v8, 0, 1, v80);
  v83 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v183 | 0x8000000000000000);
  v83(v196, 0);
  v183 = "freqAnyGroup7DayTo28Day";
  v84 = v82;
  v85 = v193;
  v193(v75, v82, v78);
  v196[0] = 1;
  sub_26738114C();
  v86 = v191;
  v87 = v195;
  v195(v8, 0, 1, v191);
  v88 = sub_2673811AC();
  sub_266EC637C(v8, v186, v183 | 0x8000000000000000);
  v88(v196, 0);
  v183 = "freqAnyGroup28DayToInf";
  v89 = v189;
  v90 = v192;
  v85(v189, v84, v192);
  v196[0] = 1;
  sub_26738114C();
  v87(v8, 0, 1, v86);
  v91 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v183 | 0x8000000000000000);
  v91(v196, 0);
  v183 = "freqSameGroup0MinTo2Min";
  v92 = v194;
  v93 = v193;
  v193(v89, v194, v90);
  v196[0] = 1;
  sub_26738114C();
  v94 = v195;
  v195(v8, 0, 1, v86);
  v95 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v183 | 0x8000000000000000);
  v95(v196, 0);
  v183 = "freqSameGroup2MinTo10Min";
  v96 = v189;
  v97 = v92;
  v98 = v192;
  v93(v189, v97, v192);
  v196[0] = 1;
  sub_26738114C();
  v94(v8, 0, 1, v86);
  v99 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v183 | 0x8000000000000000);
  v99(v196, 0);
  v183 = "freqSameGroup10MinTo1Hr";
  v100 = v194;
  v101 = v98;
  v102 = v193;
  v193(v96, v194, v98);
  v196[0] = 1;
  sub_26738114C();
  v103 = v191;
  v104 = v195;
  v195(v8, 0, 1, v191);
  v105 = sub_2673811AC();
  sub_266EC637C(v8, v184, v183 | 0x8000000000000000);
  v105(v196, 0);
  v184 = "freqSameGroup1HrTo6Hr";
  v106 = v189;
  v102(v189, v100, v101);
  v196[0] = 1;
  sub_26738114C();
  v104(v8, 0, 1, v103);
  v107 = sub_2673811AC();
  sub_266EC637C(v8, v186, v184 | 0x8000000000000000);
  v107(v196, 0);
  v184 = "freqSameGroup6HrTo1Day";
  v108 = v194;
  v109 = v101;
  v110 = v193;
  v193(v106, v194, v109);
  v196[0] = 1;
  sub_26738114C();
  v111 = v191;
  v104(v8, 0, 1, v191);
  v112 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v184 | 0x8000000000000000);
  v112(v196, 0);
  v184 = "freqSameGroup1DayTo7Day";
  v113 = v192;
  v110(v189, v108, v192);
  v196[0] = 1;
  sub_26738114C();
  v114 = v111;
  v115 = v111;
  v116 = v195;
  v195(v8, 0, 1, v115);
  v117 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v184 | 0x8000000000000000);
  v117(v196, 0);
  v184 = "freqSameGroup7DayTo28Day";
  v118 = v189;
  v119 = v194;
  v120 = v193;
  v193(v189, v194, v113);
  v196[0] = 1;
  sub_26738114C();
  v116(v8, 0, 1, v114);
  v121 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v184 | 0x8000000000000000);
  v121(v196, 0);
  v122 = v192;
  v123 = v120;
  v120(v118, v119, v192);
  v196[0] = 1;
  sub_26738114C();
  v124 = v191;
  v195(v8, 0, 1, v191);
  v125 = sub_2673811AC();
  sub_266EC637C(v8, 0x7365676775537369, 0xEB00000000646574);
  v125(v196, 0);
  v126 = v189;
  v123(v189, v119, v122);
  v196[0] = 1;
  sub_26738114C();
  v127 = v124;
  v128 = v195;
  v195(v8, 0, 1, v127);
  v129 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F636F7079487369, 0xEC0000006D736972);
  v129(v196, 0);
  v184 = "freqSameGroup28DayToInf";
  v130 = v126;
  v131 = v126;
  v132 = v192;
  v123(v131, v119, v192);
  v196[0] = 1;
  sub_26738114C();
  v133 = v191;
  v128(v8, 0, 1, v191);
  v134 = sub_2673811AC();
  sub_266EC637C(v8, v186, v184 | 0x8000000000000000);
  v134(v196, 0);
  v186 = "hasSuggestedProperties";
  v135 = v194;
  v136 = v193;
  v193(v130, v194, v132);
  v196[0] = 1;
  sub_26738114C();
  v128(v8, 0, 1, v133);
  v137 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v186 | 0x8000000000000000);
  v137(v196, 0);
  v186 = "isPartialNameMatch";
  v138 = v192;
  v136(v130, v135, v192);
  v196[0] = 1;
  sub_26738114C();
  v139 = v195;
  v195(v8, 0, 1, v133);
  v140 = sub_2673811AC();
  sub_266EC637C(v8, v185, v186 | 0x8000000000000000);
  v140(v196, 0);
  v136(v130, v135, v138);
  v196[0] = 1;
  sub_26738114C();
  v141 = v191;
  v139(v8, 0, 1, v191);
  v142 = sub_2673811AC();
  sub_266EC637C(v8, 0x79726575516C6C61, 0xEF6465686374614DLL);
  v142(v196, 0);
  v186 = "numPrimaryTokens";
  v143 = v189;
  v144 = v192;
  v136(v189, v135, v192);
  v196[0] = 1;
  sub_26738114C();
  v145 = v141;
  v146 = v195;
  v195(v8, 0, 1, v145);
  v147 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v186 | 0x8000000000000000);
  v147(v196, 0);
  v186 = "allPrimaryNameTokensAreInQuery";
  v148 = v194;
  v149 = v193;
  v193(v143, v194, v144);
  v196[0] = 1;
  sub_26738114C();
  v146(v8, 0, 1, v191);
  v150 = sub_2673811AC();
  sub_266EC637C(v8, v185, v186 | 0x8000000000000000);
  v150(v196, 0);
  v185 = "isGivenNameMatch";
  v151 = v192;
  v149(v143, v148, v192);
  v196[0] = 1;
  sub_26738114C();
  v152 = v191;
  v153 = v195;
  v195(v8, 0, 1, v191);
  v154 = sub_2673811AC();
  v186 = 0xD000000000000011;
  sub_266EC637C(v8, 0xD000000000000011, v185 | 0x8000000000000000);
  v154(v196, 0);
  v185 = "isMiddleNameMatch";
  v155 = v193;
  v193(v189, v148, v151);
  v196[0] = 1;
  sub_26738114C();
  v153(v8, 0, 1, v152);
  v156 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v185 | 0x8000000000000000);
  v156(v196, 0);
  v185 = "isFamilyNameMatch";
  v157 = v189;
  v158 = v194;
  v159 = v192;
  v155(v189, v194, v192);
  v196[0] = 1;
  sub_26738114C();
  v160 = v191;
  v161 = v195;
  v195(v8, 0, 1, v191);
  v162 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v185 | 0x8000000000000000);
  v162(v196, 0);
  v163 = v159;
  v164 = v193;
  v193(v157, v158, v163);
  v196[0] = 1;
  sub_26738114C();
  v161(v8, 0, 1, v160);
  v165 = sub_2673811AC();
  sub_266EC637C(v8, 0x616E6B63694E7369, 0xEF686374614D656DLL);
  v165(v196, 0);
  v185 = "isOrganizationNameMatch";
  v166 = v194;
  v167 = v192;
  v164(v189, v194, v192);
  v196[0] = 1;
  sub_26738114C();
  v168 = v195;
  v195(v8, 0, 1, v160);
  v169 = sub_2673811AC();
  v170 = v186;
  sub_266EC637C(v8, v186, v185 | 0x8000000000000000);
  v169(v196, 0);
  v171 = v189;
  v172 = v166;
  v173 = v193;
  v193(v189, v172, v167);
  v196[0] = 1;
  sub_26738114C();
  v174 = v191;
  v168(v8, 0, 1, v191);
  v175 = sub_2673811AC();
  sub_266EC637C(v8, v170, 0x800000026744B920);
  v175(v196, 0);
  v185 = "isNameSuffixMatch";
  v176 = v192;
  v173(v171, v194, v192);
  v196[0] = 1;
  sub_26738114C();
  v177 = v174;
  v178 = v195;
  v195(v8, 0, 1, v177);
  v179 = sub_2673811AC();
  sub_266EC637C(v8, v186, v185 | 0x8000000000000000);
  v179(v196, 0);
  v173(v171, v194, v176);
  v196[0] = 1;
  sub_26738114C();
  v178(v8, 0, 1, v191);
  v180 = sub_2673811AC();
  sub_266EC637C(v8, 0x6974616C65527369, 0xEF7361696C416E6FLL);
  return v180(v196, 0);
}

uint64_t sub_26705902C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267059090(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670590F4()
{
  result = qword_2800F3660;
  if (!qword_2800F3660)
  {
    sub_26705914C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3660);
  }

  return result;
}

unint64_t sub_26705914C()
{
  result = qword_2800F3668;
  if (!qword_2800F3668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3668);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContactHandleSignalSet.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v3 = sub_26738113C();
  v55 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v50 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v10 = a2;
  sub_26738119C();
  v51 = "FERENCEContactHandleSignalSet";
  v12 = *(v4 + 104);
  v60 = *MEMORY[0x277D3E4E8];
  v11 = v60;
  v12(v6, v60, v3);
  v61 = v4 + 104;
  v62[0] = 1;
  sub_26738114C();
  v57 = sub_26738116C();
  v13 = *(v57 - 8);
  v14 = *(v13 + 56);
  v54 = v13 + 56;
  v14(v9, 0, 1, v57);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v51 | 0x8000000000000000);
  v15(v62, 0);
  v16 = v55;
  v12(v6, v11, v55);
  v62[0] = 1;
  sub_26738114C();
  v17 = v57;
  v14(v9, 0, 1, v57);
  v56 = v10;
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x69726F7661467369, 0xEA00000000006574);
  v18(v62, 0);
  v51 = "isSuggestedHandle";
  v19 = v6;
  v20 = v6;
  v21 = v60;
  v59 = v12;
  v12(v20, v60, v16);
  v62[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v17);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v51 | 0x8000000000000000);
  v22(v62, 0);
  v58 = v19;
  v23 = v21;
  v24 = v59;
  v59(v19, v23, v16);
  v62[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v17);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x4D79726575517369, 0xEC00000068637461);
  v25(v62, 0);
  v51 = "isQueryExactMatch";
  v24(v58, v60, v16);
  v62[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v17);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v51 | 0x8000000000000000);
  v26(v62, 0);
  sub_266ECB294(0, &qword_2800F3670, 0x277D58328);
  sub_266ECAF2C(&qword_2800F3678, &qword_2800F3670, 0x277D58328, &protocol conformance descriptor for INFERENCESchemaINFERENCEPrivatizedHistoryStats);
  sub_26738120C();
  v14(v9, 0, 1, v17);
  v27 = v14;
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0x5379726F74736968, 0xEC00000073746174);
  v28(v62, 0);
  v52 = "isPartialQueryValueMatch";
  v29 = v60;
  v30 = v55;
  v59(v58, v60, v55);
  v62[0] = 1;
  sub_26738114C();
  v27(v9, 0, 1, v17);
  v31 = v27;
  v53 = v27;
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v52 | 0x8000000000000000);
  v32(v62, 0);
  v52 = "isRecentInAnyGroup";
  v33 = v59;
  v59(v58, v29, v30);
  v62[0] = 1;
  sub_26738114C();
  v34 = v57;
  v31(v9, 0, 1, v57);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v52 | 0x8000000000000000);
  v35(v62, 0);
  v36 = v58;
  v37 = v60;
  v33(v58, v60, v30);
  v62[0] = 1;
  sub_26738114C();
  v38 = v53;
  v53(v9, 0, 1, v34);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0x7265666572507369, 0xEF65707954646572);
  v39(v62, 0);
  v40 = v30;
  v41 = v30;
  v42 = v59;
  v59(v36, v37, v41);
  v62[0] = 1;
  sub_26738114C();
  v43 = v57;
  v38(v9, 0, 1, v57);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0x65776F6C6C417369, 0xED00006570795464);
  v44(v62, 0);
  v45 = v60;
  v42(v36, v60, v40);
  v62[0] = 1;
  sub_26738114C();
  v46 = v53;
  v53(v9, 0, 1, v43);
  v47 = sub_2673811AC();
  sub_266EC637C(v9, 0x6954656361467369, 0xEE00656C6261656DLL);
  v47(v62, 0);
  v42(v36, v45, v40);
  v62[0] = 1;
  sub_26738114C();
  v46(v9, 0, 1, v57);
  v48 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x800000026744BA40);
  return v48(v62, 0);
}

uint64_t sub_267059CF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267059D5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEContactMatch.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v22 = v1;
  v23 = v2;
  MEMORY[0x28223BE20](v1);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3630, 0x277D58268);
  sub_266ECAF2C(&qword_2800F3628, &qword_2800F3630, 0x277D58268, &protocol conformance descriptor for INFERENCESchemaINFERENCEContact);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x56746361746E6F63, 0xEC00000065756C61);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F3690, 0x277D582A0);
  sub_266ECAF2C(&qword_2800F3698, &qword_2800F3690, 0x277D582A0, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactSignalSet);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026744BAA0);
  v10(v24, 0);
  sub_266ECB294(0, &qword_2800F3420, 0x277D581D8);
  sub_266ECAF2C(&qword_2800F3418, &qword_2800F3420, 0x277D581D8, &protocol conformance descriptor for INFERENCESchemaINFERENCEBackgroundContactSignalSet);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x800000026744BAC0);
  v11(v24, 0);
  sub_266ECB294(0, &qword_2800F3668, 0x277D58278);
  sub_266ECAF2C(&qword_2800F3660, &qword_2800F3668, 0x277D58278, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactFeatureSet);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x5365727574616566, 0xEA00000000007465);
  v12(v24, 0);
  v13 = *MEMORY[0x277D3E500];
  v14 = v22;
  v15 = *(v23 + 104);
  v23 += 104;
  v16 = v21;
  v15(v21, v13, v22);
  v24[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x65726F6373, 0xE500000000000000);
  v17(v24, 0);
  v15(v16, *MEMORY[0x277D3E4E8], v14);
  v24[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x546E776F68537369, 0xED0000726573556FLL);
  return v18(v24, 0);
}

uint64_t sub_26705A48C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26705A4F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEContactQueryMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v29 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v29[1] = a1;
  sub_26738119C();
  v33 = *MEMORY[0x277D3E4E8];
  v35 = *(v3 + 104);
  v35(v5);
  v36[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v30 = v9;
  v11(v8, 0, 1, v9);
  v31 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D614E736168, 0xE700000000000000);
  v13(v36, 0);
  v14 = v33;
  v34 = v2;
  v15 = v35;
  v32 = v3 + 104;
  (v35)(v5, v33, v2);
  v36[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x74616C6552736168, 0xEF706968736E6F69);
  v16(v36, 0);
  v17 = v34;
  v15(v5, v14, v34);
  v36[0] = 1;
  sub_26738114C();
  v18 = v30;
  v29[0] = v11;
  v11(v8, 0, 1, v30);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C646E6148736168, 0xEE006C6562614C65);
  v19(v36, 0);
  (v35)(v5, v14, v17);
  v36[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v18);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C646E6148736168, 0xEE0065756C615665);
  v20(v36, 0);
  v21 = v35;
  (v35)(v5, v14, v34);
  v36[0] = 1;
  sub_26738114C();
  v22 = v29[0];
  (v29[0])(v8, 0, 1, v18);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x666552654D736168, 0xEE0065636E657265);
  v23(v36, 0);
  v24 = v33;
  (v21)(v5, v33, v34);
  v36[0] = 1;
  sub_26738114C();
  v25 = v30;
  v22(v8, 0, 1, v30);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0x61746E6F43736168, 0xEC00000064497463);
  v26(v36, 0);
  (v35)(v5, v24, v34);
  v36[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v25);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026744BB20);
  return v27(v36, 0);
}

uint64_t sub_26705ACBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26705AD20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26705AD84()
{
  result = qword_2800F3650;
  if (!qword_2800F3650)
  {
    sub_26705ADDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3650);
  }

  return result;
}

unint64_t sub_26705ADDC()
{
  result = qword_2800F3648;
  if (!qword_2800F3648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3648);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContactResolutionDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000028, 0x800000026744BB80, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x800000026744BBB0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x800000026744BBE0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ELL, 0x800000026744BC10, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26705B0B0(uint64_t a1)
{
  v2 = sub_26705B1B4(&qword_2800F36B8, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactResolutionDomain);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26705B118(uint64_t a1, uint64_t a2)
{
  v4 = sub_26705B1B4(&qword_2800F36B8, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactResolutionDomain);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26705B1B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEContactResolutionDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContactResolutionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x800000026744BC80, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x800000026744BCB0, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x800000026744BCE0, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000029, 0x800000026744BD10, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000026, 0x800000026744BD40, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002CLL, 0x800000026744BD70, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_26705B564(uint64_t a1)
{
  v2 = sub_26705B668(&qword_2800F36C8, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactResolutionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26705B5CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26705B668(&qword_2800F36C8, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactResolutionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26705B668(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEContactResolutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContactResolverConfig.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v18[1] = a1;
  v1 = sub_26738113C();
  v21 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E4E8];
  v9 = *(v2 + 104);
  v19 = v4;
  v20 = v2 + 104;
  v22 = v9;
  v9(v4, v8, v1);
  v23[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, 0x800000026744BDE0);
  v12(v23, 0);
  type metadata accessor for INFERENCESchemaINFERENCEContactSearchSuggestedType(0);
  sub_26705BD34(&qword_2800F36D0, type metadata accessor for INFERENCESchemaINFERENCEContactSearchSuggestedType, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactSearchSuggestedType);
  sub_26738120C();
  v11(v7, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x800000026744BE00);
  v13(v23, 0);
  type metadata accessor for INFERENCESchemaINFERENCEContactResolutionDomain(0);
  sub_26705BD34(&qword_2800F36B0, type metadata accessor for INFERENCESchemaINFERENCEContactResolutionDomain, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactResolutionDomain);
  sub_26738120C();
  v11(v7, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, 0x800000026744BE20);
  v14(v23, 0);
  type metadata accessor for INFERENCESchemaINFERENCEContactActionType(0);
  sub_26705BD34(&qword_2800F3638, type metadata accessor for INFERENCESchemaINFERENCEContactActionType, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactActionType);
  sub_26738120C();
  v11(v7, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x79546E6F69746361, 0xEA00000000006570);
  v15(v23, 0);
  v22(v19, *MEMORY[0x277D3E530], v21);
  v23[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x6C646E7542707061, 0xEC00000073644965);
  return v16(v23, 0);
}

uint64_t sub_26705BC28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26705BC8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26705BD34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26705BD7C()
{
  result = qword_2800F36E0;
  if (!qword_2800F36E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F36E0);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContactSearchSuggestedType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x800000026744BE90, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x800000026744BEC0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026744BEF0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003BLL, 0x800000026744BF20, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26705C050(uint64_t a1)
{
  v2 = sub_26705C154(&qword_2800F36E8, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactSearchSuggestedType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26705C0B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26705C154(&qword_2800F36E8, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactSearchSuggestedType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26705C154(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEContactSearchSuggestedType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEContactSignalSet.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a1;
  v150 = sub_26738113C();
  v153 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v4 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v139 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F36F0, 0x277D58388);
  sub_266ECAF2C(&qword_2800F36F8, &qword_2800F36F0, 0x277D58388, &protocol conformance descriptor for INFERENCESchemaINFERENCESpeechAlternativeRanks);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v152 = v9 + 56;
  v10(v7, 0, 1, v8);
  v149 = a2;
  v11 = sub_2673811AC();
  v144 = 0xD000000000000016;
  sub_266EC637C(v7, 0xD000000000000016, 0x800000026744BFA0);
  v11(v154, 0);
  v142 = "speechAlternativeRanks";
  v147 = *MEMORY[0x277D3E4E8];
  v12 = v153 + 104;
  v148 = *(v153 + 104);
  v13 = v150;
  v148(v4);
  v153 = v12;
  v154[0] = 1;
  sub_26738114C();
  v151 = v8;
  v146 = v10;
  v10(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  v140 = 0xD000000000000017;
  sub_266EC637C(v7, 0xD000000000000017, v142 | 0x8000000000000000);
  v14(v154, 0);
  v141 = "isQueryStrippedOfTitles";
  v15 = v147;
  v16 = v13;
  v17 = v148;
  (v148)(v4, v147, v16);
  v154[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v18 = sub_2673811AC();
  v142 = 0xD000000000000012;
  sub_266EC637C(v7, 0xD000000000000012, v141 | 0x8000000000000000);
  v18(v154, 0);
  v141 = "isSuggestedContact";
  v19 = v150;
  v17(v4, v15, v150);
  v154[0] = 1;
  sub_26738114C();
  v20 = v146;
  v146(v7, 0, 1, v151);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, v141 | 0x8000000000000000);
  v21(v154, 0);
  v141 = "areAllQueryTokensInContact";
  v17(v4, v147, v19);
  v154[0] = 1;
  sub_26738114C();
  v22 = v151;
  v20(v7, 0, 1, v151);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000021, v141 | 0x8000000000000000);
  v23(v154, 0);
  v24 = v147;
  v25 = v19;
  v26 = v19;
  v27 = v148;
  (v148)(v4, v147, v26);
  v154[0] = 1;
  sub_26738114C();
  v20(v7, 0, 1, v22);
  v28 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F636F7079487369, 0xEC0000006D736972);
  v28(v154, 0);
  v141 = "freqSameGroup28DayToInf";
  v27(v4, v24, v25);
  v154[0] = 1;
  sub_26738114C();
  v20(v7, 0, 1, v22);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, v144, v141 | 0x8000000000000000);
  v29(v154, 0);
  v144 = "hasSuggestedProperties";
  v27(v4, v24, v25);
  v154[0] = 1;
  sub_26738114C();
  v30 = v151;
  v146(v7, 0, 1, v151);
  v31 = sub_2673811AC();
  sub_266EC637C(v7, v142, v144 | 0x8000000000000000);
  v31(v154, 0);
  v142 = "tactTokensInQuery";
  v32 = v150;
  v33 = v148;
  (v148)(v4, v24, v150);
  v154[0] = 1;
  sub_26738114C();
  v34 = v146;
  v146(v7, 0, 1, v30);
  v35 = sub_2673811AC();
  v144 = 0xD000000000000014;
  sub_266EC637C(v7, 0xD000000000000014, v142 | 0x8000000000000000);
  v35(v154, 0);
  v33(v4, v24, v32);
  v154[0] = 1;
  sub_26738114C();
  v34(v7, 0, 1, v151);
  v36 = sub_2673811AC();
  sub_266EC637C(v7, 0x4C4E6D6F72467369, 0xEF68637261655358);
  v36(v154, 0);
  v37 = v150;
  v33(v4, v24, v150);
  v38 = v33;
  v154[0] = 1;
  sub_26738114C();
  v39 = v151;
  v34(v7, 0, 1, v151);
  v40 = sub_2673811AC();
  sub_266EC637C(v7, 0x52536D6F72467369, 0xEF68637261655352);
  v40(v154, 0);
  LODWORD(v141) = *MEMORY[0x277D3E500];
  v41 = v141;
  v38(v4, v141, v37);
  v154[0] = 1;
  sub_26738114C();
  v34(v7, 0, 1, v39);
  v42 = sub_2673811AC();
  sub_266EC637C(v7, 0x65726F6353786C6ELL, 0xE800000000000000);
  v42(v154, 0);
  v43 = v41;
  v44 = v150;
  v38(v4, v43, v150);
  v154[0] = 1;
  v45 = v4;
  sub_26738114C();
  v46 = v146;
  v146(v7, 0, 1, v39);
  v47 = sub_2673811AC();
  sub_266EC637C(v7, 0x65726F6353727273, 0xE800000000000000);
  v47(v154, 0);
  v145 = v45;
  v48 = v147;
  v49 = v44;
  v50 = v148;
  (v148)(v45, v147, v49);
  v154[0] = 1;
  sub_26738114C();
  v46(v7, 0, 1, v39);
  v51 = sub_2673811AC();
  sub_266EC637C(v7, 0x746E656365527369, 0xE800000000000000);
  v51(v154, 0);
  v142 = "FERENCEContactFeatureSet";
  v52 = v145;
  v53 = v48;
  v54 = v150;
  v50(v145, v53, v150);
  v154[0] = 1;
  sub_26738114C();
  v55 = v146;
  v146(v7, 0, 1, v39);
  v56 = sub_2673811AC();
  sub_266EC637C(v7, v144, v142 | 0x8000000000000000);
  v56(v154, 0);
  v142 = "isRecentInSameDomain";
  v57 = v147;
  v50(v52, v147, v54);
  v154[0] = 1;
  sub_26738114C();
  v55(v7, 0, 1, v39);
  v58 = sub_2673811AC();
  v144 = 0xD000000000000015;
  sub_266EC637C(v7, 0xD000000000000015, v142 | 0x8000000000000000);
  v58(v154, 0);
  v142 = "isRecentInSiriRequest";
  v50(v52, v57, v150);
  v154[0] = 1;
  sub_26738114C();
  v59 = v151;
  v60 = v146;
  v146(v7, 0, 1, v151);
  v61 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v142 | 0x8000000000000000);
  v61(v154, 0);
  LODWORD(v142) = *MEMORY[0x277D3E508];
  v62 = v145;
  (v50)(v145);
  v154[0] = 1;
  sub_26738114C();
  v63 = v60;
  v60(v7, 0, 1, v59);
  v64 = sub_2673811AC();
  sub_266EC637C(v7, 0x5279636E65636572, 0xEB000000006B6E61);
  v64(v154, 0);
  v139 = "isRecentlyCorrected";
  v65 = v150;
  v66 = v148;
  (v148)(v62, v142, v150);
  v154[0] = 1;
  sub_26738114C();
  v63(v7, 0, 1, v59);
  v67 = sub_2673811AC();
  sub_266EC637C(v7, v140, v139 | 0x8000000000000000);
  v67(v154, 0);
  v140 = "recencyRankInSameDomain";
  (v66)(v62, v142, v65);
  v154[0] = 1;
  sub_26738114C();
  v68 = v151;
  v63(v7, 0, 1, v151);
  v69 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, v140 | 0x8000000000000000);
  v69(v154, 0);
  sub_266ECB294(0, &qword_2800F3670, 0x277D58328);
  v142 = sub_266ECAF2C(&qword_2800F3678, &qword_2800F3670, 0x277D58328, &protocol conformance descriptor for INFERENCESchemaINFERENCEPrivatizedHistoryStats);
  sub_26738120C();
  v63(v7, 0, 1, v68);
  v70 = v63;
  v71 = sub_2673811AC();
  sub_266EC637C(v7, 0x5379726F74736968, 0xEC00000073746174);
  v71(v154, 0);
  sub_26738120C();
  v72 = v151;
  v70(v7, 0, 1, v151);
  v73 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x800000026744C070);
  v73(v154, 0);
  v140 = "historyStatsInSameDomain";
  sub_26738120C();
  v70(v7, 0, 1, v72);
  v74 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, v140 | 0x8000000000000000);
  v74(v154, 0);
  v75 = v145;
  v76 = v147;
  v77 = v150;
  v78 = v148;
  (v148)(v145, v147, v150);
  v154[0] = 1;
  sub_26738114C();
  v146(v7, 0, 1, v72);
  v79 = sub_2673811AC();
  sub_266EC637C(v7, 0x64726143654D7369, 0xE800000000000000);
  v79(v154, 0);
  v78(v75, v76, v77);
  v154[0] = 1;
  sub_26738114C();
  v80 = v151;
  v81 = v146;
  v146(v7, 0, 1, v151);
  v82 = sub_2673811AC();
  v140 = 0xD000000000000010;
  sub_266EC637C(v7, 0xD000000000000010, 0x800000026744B530);
  v82(v154, 0);
  v142 = "historyStatsInSiriRequests";
  v83 = v147;
  (v148)(v75, v147, v77);
  v154[0] = 1;
  sub_26738114C();
  v81(v7, 0, 1, v80);
  v84 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, v142 | 0x8000000000000000);
  v84(v154, 0);
  v85 = v148;
  (v148)(v75, v83, v77);
  v154[0] = 1;
  sub_26738114C();
  v81(v7, 0, 1, v80);
  v86 = sub_2673811AC();
  sub_266EC637C(v7, 0x6974616C65527369, 0xEF7361696C416E6FLL);
  v86(v154, 0);
  v142 = "isMeCardRelationExactMatch";
  (v85)(v75, v147, v77);
  v154[0] = 1;
  sub_26738114C();
  v81(v7, 0, 1, v80);
  v87 = v81;
  v88 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, v142 | 0x8000000000000000);
  v88(v154, 0);
  v89 = v147;
  v90 = v150;
  v91 = v148;
  (v148)(v75, v147, v150);
  v154[0] = 1;
  sub_26738114C();
  v87(v7, 0, 1, v151);
  v92 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000027, 0x800000026744C0F0);
  v92(v154, 0);
  v142 = "edFromRelationshipLabel";
  v91(v75, v89, v90);
  v154[0] = 1;
  sub_26738114C();
  v93 = v151;
  v87(v7, 0, 1, v151);
  v94 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000027, v142 | 0x8000000000000000);
  v94(v154, 0);
  v139 = "hipLabelDerivedFromName";
  v95 = v147;
  v96 = v150;
  (v148)(v75, v147, v150);
  v154[0] = 1;
  sub_26738114C();
  v87(v7, 0, 1, v93);
  v97 = sub_2673811AC();
  v142 = 0xD000000000000011;
  sub_266EC637C(v7, 0xD000000000000011, v139 | 0x8000000000000000);
  v97(v154, 0);
  v98 = v148;
  (v148)(v75, v95, v96);
  v154[0] = 1;
  sub_26738114C();
  v87(v7, 0, 1, v151);
  v99 = sub_2673811AC();
  sub_266EC637C(v7, 0x69726F7661467369, 0xEA00000000006574);
  v99(v154, 0);
  v98(v145, v95, v96);
  v154[0] = 1;
  sub_26738114C();
  v100 = v151;
  v101 = v146;
  v146(v7, 0, 1, v151);
  v102 = sub_2673811AC();
  sub_266EC637C(v7, v140, 0x800000026744C170);
  v102(v154, 0);
  sub_266ECB294(0, &qword_2800F3700, 0x277D58340);
  sub_266ECAF2C(&qword_2800F3708, &qword_2800F3700, 0x277D58340, &protocol conformance descriptor for INFERENCESchemaINFERENCERequestMatchSignalSet);
  sub_26738120C();
  v101(v7, 0, 1, v100);
  v103 = sub_2673811AC();
  sub_266EC637C(v7, v144, 0x800000026744C190);
  v103(v154, 0);
  v140 = "requestMatchSignalSet";
  sub_266ECB294(0, &qword_2800F3688, 0x277D58280);
  sub_266ECAF2C(&qword_2800F3680, &qword_2800F3688, 0x277D58280, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactHandleSignalSet);
  sub_26738122C();
  v101(v7, 0, 1, v100);
  v104 = v101;
  v105 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, v140 | 0x8000000000000000);
  v105(v154, 0);
  v143 = "handlesWithPrivacySignalSets";
  v106 = v147;
  v107 = v150;
  v108 = v148;
  (v148)(v145, v147, v150);
  v154[0] = 1;
  sub_26738114C();
  v109 = v151;
  v101(v7, 0, 1, v151);
  v110 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, v143 | 0x8000000000000000);
  v110(v154, 0);
  v143 = "hasHandleWithPreferredType";
  v111 = v145;
  v108(v145, v106, v107);
  v154[0] = 1;
  sub_26738114C();
  v101(v7, 0, 1, v109);
  v112 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, v143 | 0x8000000000000000);
  v112(v154, 0);
  v143 = "hasHandleWithAllowedType";
  v113 = v150;
  v108(v111, v147, v150);
  v154[0] = 1;
  sub_26738114C();
  v101(v7, 0, 1, v151);
  v114 = sub_2673811AC();
  sub_266EC637C(v7, v142, v143 | 0x8000000000000000);
  v114(v154, 0);
  v143 = "isCommunalRequest";
  v115 = v113;
  v108(v111, v141, v113);
  v154[0] = 1;
  sub_26738114C();
  v116 = v151;
  v104(v7, 0, 1, v151);
  v117 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000002ALL, v143 | 0x8000000000000000);
  v117(v154, 0);
  v118 = v147;
  v108(v111, v147, v115);
  v154[0] = 1;
  sub_26738114C();
  v104(v7, 0, 1, v116);
  v119 = sub_2673811AC();
  sub_266EC637C(v7, 0x695373756C507369, 0xEC0000006C616E67);
  v119(v154, 0);
  v120 = v118;
  v121 = v148;
  (v148)(v111, v120, v150);
  v154[0] = 1;
  sub_26738114C();
  v104(v7, 0, 1, v116);
  v122 = sub_2673811AC();
  sub_266EC637C(v7, 0x6143796C6E4F7369, 0xEF6574616469646ELL);
  v122(v154, 0);
  v143 = "alDevicesMatchingCandidate";
  v123 = v150;
  (v121)(v111, *MEMORY[0x277D3E530], v150);
  v154[0] = 1;
  sub_26738114C();
  v124 = v151;
  v104(v7, 0, 1, v151);
  v125 = sub_2673811AC();
  sub_266EC637C(v7, v144, v143 | 0x8000000000000000);
  v125(v154, 0);
  v144 = "thirdPartyAppBundleId";
  v126 = v147;
  (v148)(v111, v147, v123);
  v154[0] = 1;
  sub_26738114C();
  v104(v7, 0, 1, v124);
  v127 = sub_2673811AC();
  sub_266EC637C(v7, v142, v144 | 0x8000000000000000);
  v127(v154, 0);
  v144 = "isQueryNormalized";
  v128 = v123;
  v129 = v148;
  (v148)(v111, v126, v128);
  v154[0] = 1;
  sub_26738114C();
  v104(v7, 0, 1, v124);
  v130 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, v144 | 0x8000000000000000);
  v130(v154, 0);
  v144 = "isQueryStrippedOfPunctuation";
  v131 = v150;
  v129(v111, v126, v150);
  v154[0] = 1;
  sub_26738114C();
  v104(v7, 0, 1, v124);
  v132 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, v144 | 0x8000000000000000);
  v132(v154, 0);
  v144 = "isQueryStrippedOfWhitespace";
  v133 = v147;
  v134 = v148;
  (v148)(v111, v147, v131);
  v154[0] = 1;
  sub_26738114C();
  v135 = v151;
  v104(v7, 0, 1, v151);
  v136 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, v144 | 0x8000000000000000);
  v136(v154, 0);
  v134(v111, v133, v150);
  v154[0] = 1;
  sub_26738114C();
  v104(v7, 0, 1, v135);
  v137 = sub_2673811AC();
  sub_266EC637C(v7, 0x5333457273417369, 0xED00006C616E6769);
  return v137(v154, 0);
}

uint64_t sub_26705E86C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26705E8D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCECRRTrainingSampleCollected.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = sub_26738113C();
  v4 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v52 = *MEMORY[0x277D3E530];
  v56 = *(v4 + 104);
  v57 = v4 + 104;
  v56(v6);
  v59[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x7954746E65746E69, 0xEE00656D614E6570);
  v14(v59, 0);
  sub_266ECB294(0, &qword_2800F36E0, 0x277D58298);
  sub_266ECAF2C(&qword_2800F36D8, &qword_2800F36E0, 0x277D58298, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactResolverConfig);
  v55 = a1;
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x7265766C6F736572, 0xEE006769666E6F43);
  v15(v59, 0);
  sub_266ECB294(0, &qword_2800F3710, 0x277D58398);
  sub_266ECAF2C(&qword_2800F3718, &qword_2800F3710, 0x277D58398, &protocol conformance descriptor for INFERENCESchemaINFERENCETrialEnrollment);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x726E456C61697274, 0xEF746E656D6C6C6FLL);
  v16(v59, 0);
  v54 = v6;
  (v56)(v6, v52, v58);
  v59[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v17(v59, 0);
  sub_266ECB294(0, &qword_2800F36A8, 0x277D58288);
  sub_266ECAF2C(&qword_2800F36A0, &qword_2800F36A8, 0x277D58288, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactMatch);
  sub_26738122C();
  v12(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x7365686374616DLL, 0xE700000000000000);
  v18(v59, 0);
  type metadata accessor for INFERENCESchemaINFERENCEResolutionState(0);
  sub_26705F904(&qword_2800F3720, type metadata accessor for INFERENCESchemaINFERENCEResolutionState, &protocol conformance descriptor for INFERENCESchemaINFERENCEResolutionState);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x6974756C6F736572, 0xEF65746174536E6FLL);
  v19(v59, 0);
  type metadata accessor for INFERENCESchemaINFERENCEContactResolutionType(0);
  sub_26705F904(&qword_2800F36C0, type metadata accessor for INFERENCESchemaINFERENCEContactResolutionType, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactResolutionType);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x6974756C6F736572, 0xEE00657079546E6FLL);
  v20(v59, 0);
  sub_266ECB294(0, &qword_2800F3728, 0x277D58330);
  sub_266ECAF2C(&qword_2800F3730, &qword_2800F3728, 0x277D58330, &protocol conformance descriptor for INFERENCESchemaINFERENCEPromptContext);
  sub_26738120C();
  v50 = v13;
  v51 = v12;
  v12(v9, 0, 1, v10);
  v21 = a2;
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F72506563726F66, 0xEB0000000074706DLL);
  v22(v59, 0);
  v48 = "ngSampleCollected";
  v23 = v58;
  v24 = v56;
  (v56)(v54, v52, v58);
  v59[0] = 1;
  sub_26738114C();
  v53 = v10;
  v12(v9, 0, 1, v10);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, v48 | 0x8000000000000000);
  v25(v59, 0);
  v48 = "anonymizedContactIdentifiers";
  v27 = v54;
  v52 = *MEMORY[0x277D3E4E8];
  v26 = v52;
  v28 = v23;
  v29 = v24;
  (v24)(v54, v52, v28);
  v59[0] = 1;
  sub_26738114C();
  v30 = v51;
  v51(v9, 0, 1, v10);
  v49 = v21;
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v48 | 0x8000000000000000);
  v31(v59, 0);
  v48 = "isInteractionExecuted";
  v32 = v26;
  v33 = v58;
  v29(v27, v32, v58);
  v59[0] = 1;
  sub_26738114C();
  v34 = v53;
  v30(v9, 0, 1, v53);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v48 | 0x8000000000000000);
  v35(v59, 0);
  v29(v27, *MEMORY[0x277D3E538], v33);
  v59[0] = 1;
  sub_26738114C();
  v30(v9, 0, 1, v34);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, 0x800000026744C3B0);
  v36(v59, 0);
  sub_266ECB294(0, &qword_2800F3738, 0x277D58320);
  sub_266ECAF2C(&qword_2800F3740, &qword_2800F3738, 0x277D58320, &protocol conformance descriptor for INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext);
  sub_26738120C();
  v30(v9, 0, 1, v34);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026744C3D0);
  v37(v59, 0);
  v48 = "interactionContext";
  v38 = v54;
  v39 = v52;
  v40 = v58;
  v41 = v56;
  (v56)(v54, v52, v58);
  v59[0] = 1;
  sub_26738114C();
  v30(v9, 0, 1, v53);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, v48 | 0x8000000000000000);
  v42(v59, 0);
  v41(v38, v39, v40);
  v59[0] = 1;
  sub_26738114C();
  v43 = v53;
  v30(v9, 0, 1, v53);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, 0x800000026744B400);
  v44(v59, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v51(v9, 0, 1, v43);
  v45 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x800000026744A570);
  return v45(v59, 0);
}

uint64_t sub_26705F840(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26705F8A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26705F904(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static INFERENCESchemaINFERENCEDisambiguationPromptContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "ationPromptContext";
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026744C480);
  return v14(v19, 0);
}

uint64_t sub_26705FCC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26705FD28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26705FD8C()
{
  result = qword_2800F3748;
  if (!qword_2800F3748)
  {
    sub_26705FDE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3748);
  }

  return result;
}

unint64_t sub_26705FDE4()
{
  result = qword_2800F3750;
  if (!qword_2800F3750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3750);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEDisambiguationResolutionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002DLL, 0x800000026744C4F0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x800000026744C520, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000034, 0x800000026744C550, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002FLL, 0x800000026744C590, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2670600B4(uint64_t a1)
{
  v2 = sub_2670601B8(&qword_2800F3760, &protocol conformance descriptor for INFERENCESchemaINFERENCEDisambiguationResolutionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26706011C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670601B8(&qword_2800F3760, &protocol conformance descriptor for INFERENCESchemaINFERENCEDisambiguationResolutionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670601B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEDisambiguationResolutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEEntityResolutionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x800000026744C600, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026744C630, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003CLL, 0x800000026744C660, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000039, 0x800000026744C6A0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267060480(uint64_t a1)
{
  v2 = sub_267060584(&qword_2800F3770, &protocol conformance descriptor for INFERENCESchemaINFERENCEEntityResolutionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670604E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267060584(&qword_2800F3770, &protocol conformance descriptor for INFERENCESchemaINFERENCEEntityResolutionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267060584(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEEntityResolutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEEuclidDebugMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v32 = sub_26738113C();
  v28 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v27 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v26 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v8 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v29 = v7;
  v30 = v8;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6574616C706D6574, 0xEA00000000006449);
  v11(v33, 0);
  sub_266ECB294(0, &qword_2800F3778, 0x277D582B8);
  sub_266ECAF2C(&qword_2800F3780, &qword_2800F3778, 0x277D582B8, &protocol conformance descriptor for INFERENCESchemaINFERENCEEuclidScoreStatistics);
  sub_26738120C();
  v10(v6, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x800000026744C720);
  v12(v33, 0);
  sub_266ECB294(0, &qword_2800F3788, 0x277D582C8);
  sub_266ECAF2C(&qword_2800F3790, &qword_2800F3788, 0x277D582C8, &protocol conformance descriptor for INFERENCESchemaINFERENCEEuclidTrialParameters);
  sub_26738120C();
  v13 = v10;
  v10(v6, 0, 1, v9);
  v26[1] = a2;
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x800000026744C740);
  v14(v33, 0);
  type metadata accessor for INFERENCESchemaINFERENCEEuclidEntityType(0);
  sub_267060E3C();
  sub_26738122C();
  v10(v6, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x800000026744C760);
  v15(v33, 0);
  v16 = *MEMORY[0x277D3E4E8];
  v17 = v27;
  v28 = *(v28 + 104);
  v18 = v32;
  (v28)(v27, v16, v32);
  v33[0] = 1;
  sub_26738114C();
  v13(v6, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0x657250656D4C7369, 0xEC000000746E6573);
  v19(v33, 0);
  v26[0] = "euclidEntityTypeMatched";
  v20 = v18;
  v21 = v28;
  (v28)(v17, *MEMORY[0x277D3E508], v20);
  v33[0] = 1;
  sub_26738114C();
  v13(v6, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, v26[0] | 0x8000000000000000);
  v22(v33, 0);
  v21(v17, *MEMORY[0x277D3E538], v32);
  v33[0] = 1;
  sub_26738114C();
  v13(v6, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v6, 0x5673776F526D756ELL, 0xEF6244726F746365);
  v23(v33, 0);
  sub_26738122C();
  v13(v6, 0, 1, v9);
  v24 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x800000026744C7A0);
  return v24(v33, 0);
}

uint64_t sub_267060D78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267060DDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267060E3C()
{
  result = qword_2800F3798;
  if (!qword_2800F3798)
  {
    type metadata accessor for INFERENCESchemaINFERENCEEuclidEntityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3798);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEEuclidEntityType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x800000026744C800, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x800000026744C830, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x800000026744C860, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x800000026744C890, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267061160(uint64_t a1)
{
  v2 = sub_267061264(&qword_2800F37A0, &protocol conformance descriptor for INFERENCESchemaINFERENCEEuclidEntityType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670611C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267061264(&qword_2800F37A0, &protocol conformance descriptor for INFERENCESchemaINFERENCEEuclidEntityType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267061264(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEEuclidEntityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEEuclidScoreStatistics.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *MEMORY[0x277D3E500];
  v24 = *(v1 + 104);
  v25 = v1 + 104;
  v24(v3, v7, v0);
  v26[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v22 = v9 + 56;
  v20 = v8;
  v10(v6, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x65726F63536E696DLL, 0xE800000000000000);
  v11(v26, 0);
  v12 = v7;
  v13 = v7;
  v21 = v7;
  v23 = v0;
  v14 = v24;
  v24(v3, v12, v0);
  v26[0] = 1;
  sub_26738114C();
  v10(v6, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x65726F635378616DLL, 0xE800000000000000);
  v15(v26, 0);
  v14(v3, v13, v0);
  v26[0] = 1;
  sub_26738114C();
  v16 = v20;
  v10(v6, 0, 1, v20);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x63536E616964656DLL, 0xEB0000000065726FLL);
  v17(v26, 0);
  v14(v3, v21, v23);
  v26[0] = 1;
  sub_26738114C();
  v10(v6, 0, 1, v16);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x726F63536E61656DLL, 0xE900000000000065);
  return v18(v26, 0);
}

uint64_t sub_267061754(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670617B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26706181C()
{
  result = qword_2800F3780;
  if (!qword_2800F3780)
  {
    sub_267061874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3780);
  }

  return result;
}

unint64_t sub_267061874()
{
  result = qword_2800F3778;
  if (!qword_2800F3778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3778);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEEuclidServiceMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v8, 0x4933457273417369, 0xEE0064656B6F766ELL);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E538], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026744C940);
  return v13(v16, 0);
}

uint64_t sub_267061BF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267061C54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267061CB8()
{
  result = qword_2800F33E0;
  if (!qword_2800F33E0)
  {
    sub_267061D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F33E0);
  }

  return result;
}

unint64_t sub_267061D10()
{
  result = qword_2800F33D8;
  if (!qword_2800F33D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F33D8);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEEuclidTrialParameters.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v24 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v23 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v3 + 104);
  v25 = v3 + 104;
  v10(v5, v9, v2);
  v22 = v10;
  v26[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v21 = v11;
  v12(v8, 0, 1, v11);
  v13 = v12;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026744C9A0);
  v14(v26, 0);
  v20 = "euclidModelVersion";
  v15 = *MEMORY[0x277D3E500];
  v16 = v24;
  v10(v5, v15, v24);
  v26[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, v20 | 0x8000000000000000);
  v17(v26, 0);
  v22(v5, v15, v16);
  v26[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v21);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x800000026744C9E0);
  return v18(v26, 0);
}

uint64_t sub_26706216C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670621D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267062234()
{
  result = qword_2800F3790;
  if (!qword_2800F3790)
  {
    sub_26706228C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3790);
  }

  return result;
}

unint64_t sub_26706228C()
{
  result = qword_2800F3788;
  if (!qword_2800F3788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3788);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEForcePromptType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026744CA40, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x800000026744CA70, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x800000026744CA90, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x800000026744CAC0, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ELL, 0x800000026744CAF0, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ELL, 0x800000026744CB20, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000039, 0x800000026744CB50, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002ELL, 0x800000026744CB90, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000031, 0x800000026744CBC0, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_267062794(uint64_t a1)
{
  v2 = sub_267062898(&qword_2800F37B0, &protocol conformance descriptor for INFERENCESchemaINFERENCEForcePromptType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670627FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267062898(&qword_2800F37B0, &protocol conformance descriptor for INFERENCESchemaINFERENCEForcePromptType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267062898(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEForcePromptType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCELongRunningTaskInfo.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v3, *MEMORY[0x277D3E540], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E6F697461727564, 0xEC000000734D6E49);
  return v8(v10, 0);
}

uint64_t sub_267062B30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267062B94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267062BF8()
{
  result = qword_2800F37B8;
  if (!qword_2800F37B8)
  {
    sub_267062C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F37B8);
  }

  return result;
}

unint64_t sub_267062C50()
{
  result = qword_2800F37C0;
  if (!qword_2800F37C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F37C0);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEMediaSubscriptionStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000028, 0x800000026744CC80, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002FLL, 0x800000026744CCB0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x800000026744CCE0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267062EB0(uint64_t a1)
{
  v2 = sub_267062FB4(&qword_2800F37D0, &protocol conformance descriptor for INFERENCESchemaINFERENCEMediaSubscriptionStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267062F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_267062FB4(&qword_2800F37D0, &protocol conformance descriptor for INFERENCESchemaINFERENCEMediaSubscriptionStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267062FB4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEMediaSubscriptionStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEMusicAppSelectionGroundTruthGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F37D8, 0x277D582E8);
  sub_266ECAF2C(&qword_2800F37E0, &qword_2800F37D8, 0x277D582E8, &protocol conformance descriptor for INFERENCESchemaINFERENCEMusicTrainingIndependentSignals);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000028, 0x800000026744CD60);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F37E8, 0x277D582E0);
  sub_266ECAF2C(&qword_2800F37F0, &qword_2800F37E8, 0x277D582E0, &protocol conformance descriptor for INFERENCESchemaINFERENCEMusicTrainingDependentSignals);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000026, 0x800000026744CD90);
  return v7(v9, 0);
}

uint64_t sub_2670632D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267063334(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEMusicTrainingDependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v250 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v248 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v248 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v264 = a2;
  sub_26738119C();
  LODWORD(v257) = *MEMORY[0x277D3E4E8];
  v258 = *(v4 + 104);
  v262 = v4 + 104;
  v258(v6);
  v266[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v251 = *(v10 - 8);
  v11 = v251 + 56;
  v260 = *(v251 + 56);
  v260(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, 0x800000026744CE10);
  v12(v266, 0);
  v255 = *MEMORY[0x277D3E518];
  v258(v6);
  v266[0] = 1;
  sub_26738114C();
  v259 = v10;
  v13 = v260;
  v260(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x800000026744A2B0);
  v14(v266, 0);
  v256 = "isClientForegroundActiveBundle";
  v15 = v255;
  v263 = v3;
  (v258)(v6, v255, v3);
  v266[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v10);
  v261 = v11;
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, v256 | 0x8000000000000000);
  v16(v266, 0);
  v256 = "compoundMediaTypeBundleScore";
  v17 = v3;
  v18 = v258;
  (v258)(v6, v15, v17);
  v266[0] = 1;
  sub_26738114C();
  v19 = v259;
  v13(v9, 0, 1, v259);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v256 | 0x8000000000000000);
  v20(v266, 0);
  v256 = "entitySearchBundleRecencyS";
  v21 = v15;
  v22 = v263;
  v18(v6, v21, v263);
  v266[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v19);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v256 | 0x8000000000000000);
  v23(v266, 0);
  v256 = "entitySearchBundleScore";
  v24 = v257;
  v18(v6, v257, v22);
  v266[0] = 1;
  sub_26738114C();
  v25 = v259;
  v13(v9, 0, 1, v259);
  v26 = sub_2673811AC();
  v253 = 0xD000000000000012;
  sub_266EC637C(v9, 0xD000000000000012, v256 | 0x8000000000000000);
  v26(v266, 0);
  v256 = "isForegroundBundle";
  v27 = v24;
  v28 = v258;
  (v258)(v6, v27, v263);
  v266[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v25);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v256 | 0x8000000000000000);
  v29(v266, 0);
  v252 = "isNowPlayingBundle";
  LODWORD(v256) = *MEMORY[0x277D3E508];
  v28(v6);
  v266[0] = 1;
  sub_26738114C();
  v30 = v259;
  v13(v9, 0, 1, v259);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v252 | 0x8000000000000000);
  v31(v266, 0);
  v252 = "nowPlayingBundleCount";
  v32 = v255;
  (v28)(v6, v255, v263);
  v266[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v30);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v252 | 0x8000000000000000);
  v33(v266, 0);
  v252 = "nowPlayingBundleRecencyS";
  v34 = v32;
  v35 = v263;
  (v28)(v6, v34, v263);
  v266[0] = 1;
  sub_26738114C();
  v260(v9, 0, 1, v30);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v252 | 0x8000000000000000);
  v36(v266, 0);
  (v28)(v6, v257, v35);
  v266[0] = 1;
  sub_26738114C();
  v37 = v30;
  v38 = v260;
  v260(v9, 0, 1, v37);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x800000026744CF30);
  v39(v266, 0);
  v249 = "isNowPlayingLastBundle";
  v40 = v256;
  (v28)(v6, v256, v263);
  v266[0] = 1;
  sub_26738114C();
  v41 = v259;
  v38(v9, 0, 1, v259);
  v42 = sub_2673811AC();
  v252 = 0xD000000000000013;
  sub_266EC637C(v9, 0xD000000000000013, v249 | 0x8000000000000000);
  v42(v266, 0);
  v249 = "nowPlayingUsage1Day";
  v43 = v263;
  v44 = v258;
  (v258)(v6, v40, v263);
  v266[0] = 1;
  sub_26738114C();
  v45 = v41;
  v46 = v260;
  v260(v9, 0, 1, v45);
  v47 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v249 | 0x8000000000000000);
  v47(v266, 0);
  v249 = "nowPlayingUsage7Days";
  v44(v6, v40, v43);
  v266[0] = 1;
  sub_26738114C();
  v48 = v259;
  v46(v9, 0, 1, v259);
  v49 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v249 | 0x8000000000000000);
  v49(v266, 0);
  v249 = "nowPlayingUsage14Days";
  v50 = v257;
  v44(v6, v257, v263);
  v51 = v44;
  v266[0] = 1;
  sub_26738114C();
  v52 = v48;
  v53 = v260;
  v260(v9, 0, 1, v48);
  v54 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v249 | 0x8000000000000000);
  v54(v266, 0);
  v249 = "isRawLastNowPlayingCoreDuet";
  v55 = v50;
  v56 = v263;
  v51(v6, v55, v263);
  v266[0] = 1;
  sub_26738114C();
  v53(v9, 0, 1, v48);
  v57 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, v249 | 0x8000000000000000);
  v57(v266, 0);
  v249 = "ryAudiobookSignal";
  v51(v6, v257, v56);
  v58 = v51;
  v266[0] = 1;
  sub_26738114C();
  v59 = v260;
  v260(v9, 0, 1, v48);
  v60 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, v249 | 0x8000000000000000);
  v60(v266, 0);
  v249 = "isRawMediaCategoryMusicSignal";
  v58(v6, v257, v56);
  v266[0] = 1;
  sub_26738114C();
  v59(v9, 0, 1, v48);
  v61 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, v249 | 0x8000000000000000);
  v61(v266, 0);
  v249 = "isRawMediaCategoryPodcastSignal";
  v62 = v257;
  v58(v6, v257, v56);
  v266[0] = 1;
  sub_26738114C();
  v63 = v260;
  v260(v9, 0, 1, v52);
  v64 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, v249 | 0x8000000000000000);
  v64(v266, 0);
  v249 = "isRawMediaCategoryRadioSignal";
  v65 = v62;
  v66 = v258;
  (v258)(v6, v65, v56);
  v266[0] = 1;
  sub_26738114C();
  v63(v9, 0, 1, v52);
  v67 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, v249 | 0x8000000000000000);
  v67(v266, 0);
  v249 = "isRawMediaCategoryVideoSignal";
  v68 = v256;
  (v66)(v6, v256, v263);
  v266[0] = 1;
  sub_26738114C();
  v69 = v259;
  v63(v9, 0, 1, v259);
  v70 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v249 | 0x8000000000000000);
  v70(v266, 0);
  v249 = "rawMediaTypeUsageSignalBook";
  v71 = v263;
  (v66)(v6, v68, v263);
  v266[0] = 1;
  sub_26738114C();
  v72 = v260;
  v260(v9, 0, 1, v69);
  v73 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, v249 | 0x8000000000000000);
  v73(v266, 0);
  v249 = "rawMediaTypeUsageSignalMusic";
  (v66)(v6, v256, v71);
  v266[0] = 1;
  sub_26738114C();
  v72(v9, 0, 1, v69);
  v74 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, v249 | 0x8000000000000000);
  v74(v266, 0);
  v249 = "rawMediaTypeUsageSignalPodcast";
  v75 = v263;
  (v66)(v6, v256, v263);
  v266[0] = 1;
  sub_26738114C();
  v76 = v260;
  v260(v9, 0, 1, v69);
  v77 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, v249 | 0x8000000000000000);
  v77(v266, 0);
  v249 = "rawMediaTypeUsageSignalVideo";
  v78 = v256;
  (v66)(v6, v256, v75);
  v266[0] = 1;
  sub_26738114C();
  v79 = v259;
  v76(v9, 0, 1, v259);
  v80 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, v249 | 0x8000000000000000);
  v80(v266, 0);
  v249 = "rawNowPlayingCountCoreDuet10Min";
  v81 = v263;
  (v258)(v6, v78, v263);
  v266[0] = 1;
  sub_26738114C();
  v82 = v79;
  v83 = v79;
  v84 = v260;
  v260(v9, 0, 1, v83);
  v85 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, v249 | 0x8000000000000000);
  v85(v266, 0);
  v249 = "rawNowPlayingCountCoreDuet1Day";
  v86 = v258;
  (v258)(v6, v78, v81);
  v266[0] = 1;
  sub_26738114C();
  v84(v9, 0, 1, v82);
  v87 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, v249 | 0x8000000000000000);
  v87(v266, 0);
  v249 = "rawNowPlayingCountCoreDuet1Hr";
  v88 = v256;
  (v86)(v6, v256, v81);
  v266[0] = 1;
  sub_26738114C();
  v89 = v82;
  v260(v9, 0, 1, v82);
  v90 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, v249 | 0x8000000000000000);
  v90(v266, 0);
  v249 = "rawNowPlayingCountCoreDuet28Day";
  v91 = v88;
  v92 = v263;
  v93 = v258;
  (v258)(v6, v88, v263);
  v266[0] = 1;
  sub_26738114C();
  v94 = v89;
  v95 = v260;
  v260(v9, 0, 1, v94);
  v96 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, v249 | 0x8000000000000000);
  v96(v266, 0);
  v249 = "rawNowPlayingCountCoreDuet2Min";
  v93(v6, v88, v92);
  v266[0] = 1;
  v97 = v6;
  sub_26738114C();
  v98 = v259;
  v95(v9, 0, 1, v259);
  v99 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, v249 | 0x8000000000000000);
  v99(v266, 0);
  v249 = "rawNowPlayingCountCoreDuet6Hr";
  v254 = v97;
  v100 = v97;
  v101 = v92;
  v102 = v92;
  v103 = v258;
  (v258)(v100, v88, v102);
  v266[0] = 1;
  sub_26738114C();
  v95(v9, 0, 1, v98);
  v104 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, v249 | 0x8000000000000000);
  v104(v266, 0);
  v249 = "rawNowPlayingCountCoreDuet7Day";
  v105 = v254;
  v103(v254, v91, v101);
  v266[0] = 1;
  sub_26738114C();
  v106 = v259;
  v107 = v260;
  v260(v9, 0, 1, v259);
  v108 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v249 | 0x8000000000000000);
  v108(v266, 0);
  v249 = "rawNowPlayingRecencyCD";
  v109 = v105;
  v110 = v105;
  v111 = v258;
  (v258)(v110, v91, v101);
  v266[0] = 1;
  sub_26738114C();
  v107(v9, 0, 1, v106);
  v112 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v249 | 0x8000000000000000);
  v112(v266, 0);
  v113 = v255;
  (v111)(v109, v255, v263);
  v266[0] = 1;
  sub_26738114C();
  v114 = v259;
  v107(v9, 0, 1, v259);
  v115 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F63536567617375, 0xEF736B6F6F426572);
  v115(v266, 0);
  v116 = v263;
  v117 = v258;
  (v258)(v109, v113, v263);
  v266[0] = 1;
  sub_26738114C();
  v260(v9, 0, 1, v114);
  v118 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F63536567617375, 0xEF636973754D6572);
  v118(v266, 0);
  v249 = "rawEntitySearchRecency";
  v119 = v116;
  v117(v109, v113, v116);
  v266[0] = 1;
  sub_26738114C();
  v120 = v260;
  v260(v9, 0, 1, v114);
  v121 = sub_2673811AC();
  sub_266EC637C(v9, v253, v249 | 0x8000000000000000);
  v121(v266, 0);
  v122 = v257;
  v117(v109, v257, v119);
  v266[0] = 1;
  sub_26738114C();
  v123 = v259;
  v120(v9, 0, 1, v259);
  v124 = sub_2673811AC();
  sub_266EC637C(v9, 0x7269467070417369, 0xEF79747261507473);
  v124(v266, 0);
  v125 = v119;
  (v258)(v109, v122, v119);
  v266[0] = 1;
  sub_26738114C();
  v120(v9, 0, 1, v123);
  v126 = sub_2673811AC();
  sub_266EC637C(v9, 0x7365757165527369, 0xEE00707041646574);
  v126(v266, 0);
  v249 = "usageScorePodcasts";
  v127 = v257;
  v128 = v258;
  (v258)(v109, v257, v125);
  v266[0] = 1;
  sub_26738114C();
  v129 = v259;
  v120(v9, 0, 1, v259);
  v130 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v249 | 0x8000000000000000);
  v130(v266, 0);
  v249 = "isNowPlayingBundlePSE1";
  v131 = v263;
  v128(v109, v127, v263);
  v266[0] = 1;
  sub_26738114C();
  v132 = v129;
  v133 = v260;
  v260(v9, 0, 1, v132);
  v134 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v249 | 0x8000000000000000);
  v134(v266, 0);
  v135 = v131;
  v136 = v131;
  v137 = v128;
  v128(v109, v255, v135);
  v266[0] = 1;
  sub_26738114C();
  v138 = v259;
  v133(v9, 0, 1, v259);
  v139 = sub_2673811AC();
  sub_266EC637C(v9, 0x726F635331327176, 0xE900000000000065);
  v139(v266, 0);
  v140 = v257;
  v137(v109, v257, v136);
  v266[0] = 1;
  sub_26738114C();
  v141 = v260;
  v260(v9, 0, 1, v138);
  v142 = sub_2673811AC();
  sub_266EC637C(v9, 0x726F707075537369, 0xEF67616C46646574);
  v142(v266, 0);
  v143 = v140;
  v144 = v140;
  v145 = v263;
  v146 = v258;
  (v258)(v109, v143, v263);
  v266[0] = 1;
  sub_26738114C();
  v141(v9, 0, 1, v259);
  v147 = sub_2673811AC();
  sub_266EC637C(v9, 0x726F63696E557369, 0xED000067616C466ELL);
  v147(v266, 0);
  v249 = "isNowPlayingBundlePSE2";
  v148 = v144;
  v149 = v146;
  (v146)(v109, v148, v145);
  v266[0] = 1;
  sub_26738114C();
  v151 = v259;
  v150 = v260;
  v260(v9, 0, 1, v259);
  v152 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v249 | 0x8000000000000000);
  v152(v266, 0);
  v249 = "isSupportedUnicornMatchFlag";
  v153 = v257;
  (v149)(v109, v257, v263);
  v266[0] = 1;
  sub_26738114C();
  v150(v9, 0, 1, v151);
  v154 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v249 | 0x8000000000000000);
  v154(v266, 0);
  v249 = "isDisambiguationSelectedApp";
  v155 = v153;
  v156 = v263;
  v157 = v258;
  (v258)(v109, v155, v263);
  v266[0] = 1;
  sub_26738114C();
  v158 = v259;
  v159 = v260;
  v260(v9, 0, 1, v259);
  v160 = sub_2673811AC();
  sub_266EC637C(v9, v252, v249 | 0x8000000000000000);
  v160(v266, 0);
  v161 = v255;
  (v157)(v109, v255, v156);
  v266[0] = 1;
  sub_26738114C();
  v159(v9, 0, 1, v158);
  v162 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F63536567617375, 0xEF6F696461526572);
  v162(v266, 0);
  v249 = "isModelPredictedApp";
  v163 = v263;
  v164 = v157;
  (v157)(v109, v161, v263);
  v266[0] = 1;
  sub_26738114C();
  v165 = v260;
  v260(v9, 0, 1, v158);
  v166 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v249 | 0x8000000000000000);
  v166(v266, 0);
  v249 = "usageScoreMusicWithoutRadio";
  v167 = v254;
  v168 = v256;
  (v164)(v254, v256, v163);
  v266[0] = 1;
  sub_26738114C();
  v165(v9, 0, 1, v158);
  v169 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, v249 | 0x8000000000000000);
  v169(v266, 0);
  v249 = "rawMediaTypeUsageSignalRadio";
  (v164)(v167, v168, v163);
  v266[0] = 1;
  sub_26738114C();
  v170 = v165;
  v165(v9, 0, 1, v158);
  v171 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000028, v249 | 0x8000000000000000);
  v171(v266, 0);
  type metadata accessor for INFERENCESchemaINFERENCEMediaSubscriptionStatus(0);
  sub_26706730C(&qword_2800F37C8, type metadata accessor for INFERENCESchemaINFERENCEMediaSubscriptionStatus, &protocol conformance descriptor for INFERENCESchemaINFERENCEMediaSubscriptionStatus);
  sub_26738120C();
  v165(v9, 0, 1, v158);
  v172 = sub_2673811AC();
  sub_266EC637C(v9, v253, 0x800000026744D350);
  v172(v266, 0);
  v250 = "subscriptionStatus";
  v173 = v254;
  v174 = v263;
  v175 = v258;
  (v258)(v254, v257, v263);
  v266[0] = 1;
  sub_26738114C();
  v170(v9, 0, 1, v158);
  v176 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v250 | 0x8000000000000000);
  v176(v266, 0);
  v250 = "isRawNowPlayingBundle";
  (v175)(v173, v256, v174);
  v177 = v175;
  v266[0] = 1;
  sub_26738114C();
  v178 = v260;
  v260(v9, 0, 1, v158);
  v179 = sub_2673811AC();
  sub_266EC637C(v9, v253, v250 | 0x8000000000000000);
  v179(v266, 0);
  v250 = "rawNowPlayingTotal";
  v180 = v255;
  (v177)(v173, v255, v263);
  v266[0] = 1;
  sub_26738114C();
  v178(v9, 0, 1, v158);
  v181 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v250 | 0x8000000000000000);
  v181(v266, 0);
  (v258)(v173, v180, v263);
  v266[0] = 1;
  sub_26738114C();
  v182 = v259;
  v178(v9, 0, 1, v259);
  v183 = sub_2673811AC();
  v184 = v252;
  sub_266EC637C(v9, v252, 0x800000026744D3D0);
  v183(v266, 0);
  v185 = sub_2673811AC();
  v186 = sub_266ECB6CC(v265, v184, 0x800000026744D3D0);
  v187 = *(v251 + 48);
  v251 += 48;
  v250 = v187;
  if (!(v187)(v188, 1, v182))
  {
    sub_266ECB128(&unk_287887BD0);
    sub_26738115C();
  }

  (v186)(v265, 0);
  v185(v266, 0);
  v189 = v254;
  v190 = v256;
  (v258)(v254, v256, v263);
  v266[0] = 1;
  sub_26738114C();
  v191 = v259;
  v260(v9, 0, 1, v259);
  v192 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026744D3F0);
  v192(v266, 0);
  v249 = "rawNowPlaying2Minutes";
  v193 = v263;
  v194 = v258;
  (v258)(v189, v190, v263);
  v266[0] = 1;
  sub_26738114C();
  v195 = v260;
  v260(v9, 0, 1, v191);
  v196 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v249 | 0x8000000000000000);
  v196(v266, 0);
  v249 = "rawNowPlaying10Minutes";
  v194(v189, v190, v193);
  v266[0] = 1;
  sub_26738114C();
  v197 = v259;
  v195(v9, 0, 1, v259);
  v198 = sub_2673811AC();
  sub_266EC637C(v9, v253, v249 | 0x8000000000000000);
  v198(v266, 0);
  v249 = "rawNowPlaying1Hour";
  v194(v189, v190, v263);
  v199 = v194;
  v266[0] = 1;
  sub_26738114C();
  v195(v9, 0, 1, v197);
  v200 = sub_2673811AC();
  sub_266EC637C(v9, v252, v249 | 0x8000000000000000);
  v200(v266, 0);
  v249 = "rawNowPlaying6Hours";
  v201 = v263;
  v194(v189, v256, v263);
  v266[0] = 1;
  sub_26738114C();
  v195(v9, 0, 1, v197);
  v202 = v195;
  v203 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v249 | 0x8000000000000000);
  v203(v266, 0);
  v249 = "rawNowPlaying1Day";
  v204 = v256;
  v205 = v199;
  v199(v189, v256, v201);
  v266[0] = 1;
  sub_26738114C();
  v206 = v259;
  v202(v9, 0, 1, v259);
  v207 = sub_2673811AC();
  sub_266EC637C(v9, v253, v249 | 0x8000000000000000);
  v207(v266, 0);
  v253 = "rawNowPlaying7Days";
  v208 = v263;
  v205(v189, v204, v263);
  v209 = v205;
  v266[0] = 1;
  sub_26738114C();
  v202(v9, 0, 1, v206);
  v210 = sub_2673811AC();
  sub_266EC637C(v9, v252, v253 | 0x8000000000000000);
  v210(v266, 0);
  v253 = "rawNowPlaying28Days";
  v211 = v256;
  v209(v189, v256, v208);
  v266[0] = 1;
  sub_26738114C();
  v202(v9, 0, 1, v259);
  v212 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v253 | 0x8000000000000000);
  v212(v266, 0);
  v209(v189, v211, v263);
  v266[0] = 1;
  sub_26738114C();
  v213 = v259;
  v260(v9, 0, 1, v259);
  v214 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x800000026744D4F0);
  v214(v266, 0);
  v215 = sub_2673811AC();
  v216 = sub_266ECB6CC(v265, 0xD000000000000019, 0x800000026744D4F0);
  if (!(v250)(v217, 1, v213))
  {
    sub_266ECB128(&unk_287887BF8);
    sub_26738115C();
  }

  (v216)(v265, 0);
  v215(v266, 0);
  v218 = v254;
  v219 = v257;
  v220 = v258;
  (v258)(v254, v257, v263);
  v266[0] = 1;
  sub_26738114C();
  v222 = v259;
  v221 = v260;
  v260(v9, 0, 1, v259);
  v223 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, 0x800000026744D510);
  v223(v266, 0);
  v220(v218, v219, v263);
  v266[0] = 1;
  sub_26738114C();
  v221(v9, 0, 1, v222);
  v224 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026744D530);
  v224(v266, 0);
  v225 = v219;
  v226 = v263;
  v227 = v258;
  (v258)(v218, v225, v263);
  v266[0] = 1;
  sub_26738114C();
  v228 = v222;
  v229 = v260;
  v260(v9, 0, 1, v228);
  v230 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E45746C6F427369, 0xED000064656C6261);
  v230(v266, 0);
  v257 = "isCommonForegroundApp";
  (v227)(v218, v255, v226);
  v266[0] = 1;
  sub_26738114C();
  v231 = v259;
  v229(v9, 0, 1, v259);
  v232 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, v257 | 0x8000000000000000);
  v232(v266, 0);
  v257 = "ithoutRadioRemote";
  (v227)(v218, v255, v263);
  v266[0] = 1;
  sub_26738114C();
  v229(v9, 0, 1, v231);
  v233 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v257 | 0x8000000000000000);
  v233(v266, 0);
  v234 = v255;
  (v227)(v218, v255, v263);
  v266[0] = 1;
  sub_26738114C();
  v235 = v259;
  v229(v9, 0, 1, v259);
  v236 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026744D5A0);
  v236(v266, 0);
  v257 = "usageScoreRadioRemote";
  v237 = v263;
  v238 = v258;
  (v258)(v218, v234, v263);
  v266[0] = 1;
  sub_26738114C();
  v239 = v235;
  v240 = v235;
  v241 = v260;
  v260(v9, 0, 1, v240);
  v242 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v257 | 0x8000000000000000);
  v242(v266, 0);
  v257 = "usageScorePodcastsRemote";
  v243 = v254;
  v244 = v255;
  (v238)(v254, v255, v237);
  v266[0] = 1;
  sub_26738114C();
  v241(v9, 0, 1, v239);
  v245 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, v257 | 0x8000000000000000);
  v245(v266, 0);
  (v258)(v243, v244, v263);
  v266[0] = 1;
  sub_26738114C();
  v241(v9, 0, 1, v239);
  v246 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026744D600);
  return v246(v266, 0);
}

uint64_t sub_267067200(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267067264(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26706730C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267067354()
{
  result = qword_2800F37E8;
  if (!qword_2800F37E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F37E8);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEMusicTrainingIndependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a1;
  v3 = sub_26738113C();
  v118 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v107 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v10 = a2;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E508];
  v119 = *(v4 + 104);
  v114 = v4 + 104;
  v113 = v11;
  v119(v6, v11, v3);
  v121[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v116 = v12;
  v14(v9, 0, 1, v12);
  v120 = v10;
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6144746E65696C63, 0xEF6B656557664F79);
  v16(v121, 0);
  v112 = "rawRequestDeviceCategory";
  v115 = v6;
  v17 = v6;
  v19 = v118;
  v18 = v119;
  v119(v17, v11, v118);
  v121[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v112 | 0x8000000000000000);
  v20(v121, 0);
  v110 = "ningIndependentSignals";
  LODWORD(v112) = *MEMORY[0x277D3E4E8];
  v21 = v112;
  v18(v115, v112, v19);
  v121[0] = 1;
  sub_26738114C();
  v22 = v116;
  v14(v9, 0, 1, v116);
  v117 = v15;
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v110 | 0x8000000000000000);
  v23(v121, 0);
  v110 = "isMediaAlbumPresent";
  v24 = v115;
  v25 = v19;
  v26 = v119;
  v119(v115, v21, v25);
  v121[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v22);
  v27 = v14;
  v111 = v14;
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v110 | 0x8000000000000000);
  v28(v121, 0);
  v110 = "isMediaArtistPresent";
  v29 = v112;
  v30 = v118;
  v26(v24, v112, v118);
  v121[0] = 1;
  sub_26738114C();
  v31 = v22;
  v27(v9, 0, 1, v22);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v110 | 0x8000000000000000);
  v32(v121, 0);
  v110 = "isMediaGenrePresent";
  v33 = v115;
  v34 = v119;
  v119(v115, v29, v30);
  v121[0] = 1;
  sub_26738114C();
  v35 = v111;
  v111(v9, 0, 1, v31);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v110 | 0x8000000000000000);
  v36(v121, 0);
  v110 = "isMediaMoodPresent";
  v37 = v112;
  v38 = v118;
  v34(v33, v112, v118);
  v121[0] = 1;
  sub_26738114C();
  v39 = v116;
  v35(v9, 0, 1, v116);
  v40 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v110 | 0x8000000000000000);
  v40(v121, 0);
  v110 = "isMediaNamePresent";
  v34(v115, v37, v38);
  v121[0] = 1;
  sub_26738114C();
  v41 = v39;
  v35(v9, 0, 1, v39);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v110 | 0x8000000000000000);
  v42(v121, 0);
  v110 = "isMediaReleaseDatePresent";
  v43 = v115;
  v34(v115, v113, v118);
  v121[0] = 1;
  sub_26738114C();
  v35(v9, 0, 1, v39);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, v110 | 0x8000000000000000);
  v44(v121, 0);
  LODWORD(v110) = *MEMORY[0x277D3E510];
  v45 = v119;
  (v119)(v43);
  v121[0] = 1;
  sub_26738114C();
  v35(v9, 0, 1, v39);
  v46 = sub_2673811AC();
  sub_266EC637C(v9, 0x75676E614C776172, 0xEB00000000656761);
  v46(v121, 0);
  v47 = v118;
  v48 = v45;
  v45(v43, v110, v118);
  v121[0] = 1;
  sub_26738114C();
  v49 = v111;
  v111(v9, 0, 1, v41);
  v50 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C61636F4C776172, 0xE900000000000065);
  v50(v121, 0);
  v48(v43, v110, v47);
  v51 = v48;
  v121[0] = 1;
  sub_26738114C();
  v49(v9, 0, 1, v41);
  v52 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F69676552776172, 0xE90000000000006ELL);
  v52(v121, 0);
  v108 = "rawClientHourOfDay";
  v53 = v112;
  v48(v43, v112, v47);
  v121[0] = 1;
  sub_26738114C();
  v54 = v116;
  v49(v9, 0, 1, v116);
  v55 = sub_2673811AC();
  v110 = 0xD000000000000010;
  sub_266EC637C(v9, 0xD000000000000010, v108 | 0x8000000000000000);
  v55(v121, 0);
  v108 = "nowPlayingLastBundleRecencyS";
  v56 = v53;
  v57 = v53;
  v58 = v118;
  v51(v43, v56, v118);
  v121[0] = 1;
  sub_26738114C();
  v59 = v111;
  v111(v9, 0, 1, v54);
  v60 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v108 | 0x8000000000000000);
  v60(v121, 0);
  v61 = v115;
  v62 = v57;
  v63 = v58;
  v64 = v119;
  v119(v115, v62, v58);
  v121[0] = 1;
  sub_26738114C();
  v59(v9, 0, 1, v54);
  v65 = sub_2673811AC();
  sub_266EC637C(v9, 0x746E65696C437369, 0xEF74756F6B726F57);
  v65(v121, 0);
  v66 = v113;
  v64(v61, v113, v63);
  v121[0] = 1;
  sub_26738114C();
  v67 = v59;
  v59(v9, 0, 1, v54);
  v68 = sub_2673811AC();
  sub_266EC637C(v9, 0x707954616964656DLL, 0xE900000000000065);
  v68(v121, 0);
  v70 = v118;
  v69 = v119;
  v119(v61, v66, v118);
  v121[0] = 1;
  sub_26738114C();
  v71 = v67;
  v67(v9, 0, 1, v116);
  v72 = sub_2673811AC();
  sub_266EC637C(v9, 0x6979616C50776F6ELL, 0xEF6574617453676ELL);
  v72(v121, 0);
  v73 = v115;
  v69(v115, v112, v70);
  v121[0] = 1;
  sub_26738114C();
  v74 = v116;
  v71(v9, 0, 1, v116);
  v75 = sub_2673811AC();
  sub_266EC637C(v9, 0x656E657269507369, 0xEF74736575716552);
  v75(v121, 0);
  v108 = "isClientNavigating";
  v76 = v118;
  v77 = v119;
  v119(v73, *MEMORY[0x277D3E518], v118);
  v121[0] = 1;
  sub_26738114C();
  v71(v9, 0, 1, v74);
  v78 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v108 | 0x8000000000000000);
  v78(v121, 0);
  v108 = "foregroundBundleRecencyS";
  v79 = v113;
  v77(v73, v113, v76);
  v121[0] = 1;
  sub_26738114C();
  v80 = v116;
  v71(v9, 0, 1, v116);
  v81 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v108 | 0x8000000000000000);
  v81(v121, 0);
  v108 = "isClientDaylight";
  v83 = v118;
  v82 = v119;
  v119(v73, v79, v118);
  v121[0] = 1;
  sub_26738114C();
  v71(v9, 0, 1, v80);
  v84 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v108 | 0x8000000000000000);
  v84(v121, 0);
  v108 = "sirikitResponseCode";
  v85 = v115;
  v82(v115, v113, v83);
  v121[0] = 1;
  sub_26738114C();
  v71(v9, 0, 1, v80);
  v86 = sub_2673811AC();
  sub_266EC637C(v9, v110, v108 | 0x8000000000000000);
  v86(v121, 0);
  v82(v85, *MEMORY[0x277D3E538], v83);
  v121[0] = 1;
  sub_26738114C();
  v87 = v116;
  v71(v9, 0, 1, v116);
  v88 = sub_2673811AC();
  sub_266EC637C(v9, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v88(v121, 0);
  type metadata accessor for INFERENCESchemaINFERENCEAppResolutionType(0);
  sub_267068DD0(&qword_2800F33B0, type metadata accessor for INFERENCESchemaINFERENCEAppResolutionType, &protocol conformance descriptor for INFERENCESchemaINFERENCEAppResolutionType);
  sub_26738120C();
  v71(v9, 0, 1, v87);
  v89 = sub_2673811AC();
  sub_266EC637C(v9, 0x6974756C6F736572, 0xEE00657079546E6FLL);
  v89(v121, 0);
  v109 = "mediaParsecCategory";
  v90 = v113;
  v91 = v118;
  v92 = v119;
  v119(v85, v113, v118);
  v121[0] = 1;
  sub_26738114C();
  v71(v9, 0, 1, v87);
  v93 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v109 | 0x8000000000000000);
  v93(v121, 0);
  v109 = "rawNowPlayingState";
  v94 = v91;
  v92(v85, v90, v91);
  v121[0] = 1;
  sub_26738114C();
  v95 = v116;
  v71(v9, 0, 1, v116);
  v96 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v109 | 0x8000000000000000);
  v96(v121, 0);
  v92(v85, v112, v94);
  v121[0] = 1;
  sub_26738114C();
  v97 = v95;
  v98 = v95;
  v99 = v111;
  v111(v9, 0, 1, v97);
  v100 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E65746E6F437369, 0xED00006565724674);
  v100(v121, 0);
  v109 = "commonForegroundAppRecency";
  v101 = v94;
  v102 = v94;
  v103 = v119;
  v119(v85, v112, v102);
  v121[0] = 1;
  sub_26738114C();
  v99(v9, 0, 1, v98);
  v104 = sub_2673811AC();
  sub_266EC637C(v9, v110, v109 | 0x8000000000000000);
  v104(v121, 0);
  v103(v85, v113, v101);
  v121[0] = 1;
  sub_26738114C();
  v99(v9, 0, 1, v116);
  v105 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, 0x800000026744D810);
  return v105(v121, 0);
}

uint64_t sub_267068CC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267068D28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267068DD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267068E18()
{
  result = qword_2800F37D8;
  if (!qword_2800F37D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F37D8);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCENotebookAppSelectionGroundTruthGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F37F8, 0x277D58300);
  sub_266ECAF2C(&qword_2800F3800, &qword_2800F37F8, 0x277D58300, &protocol conformance descriptor for INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000003ALL, 0x800000026744D880);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F3808, 0x277D582F8);
  sub_266ECAF2C(&qword_2800F3810, &qword_2800F3808, 0x277D582F8, &protocol conformance descriptor for INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000038, 0x800000026744D8C0);
  return v7(v9, 0);
}

uint64_t sub_26706913C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670691A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3580, 0x277D58210);
  sub_266ECAF2C(&qword_2800F3578, &qword_2800F3580, 0x277D58210, &protocol conformance descriptor for INFERENCESchemaINFERENCECommonAppDependentSignals);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x65446E6F6D6D6F63, 0xEF746E65646E6570);
  return v5(v7, 0);
}

uint64_t sub_267069424(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3580, 0x277D58210);
  sub_266ECAF2C(&qword_2800F3578, &qword_2800F3580, 0x277D58210, &protocol conformance descriptor for INFERENCESchemaINFERENCECommonAppDependentSignals);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x65446E6F6D6D6F63, 0xEF746E65646E6570);
  return v5(v7, 0);
}

uint64_t sub_2670695CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267069630(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26738113C();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3590, 0x277D58218);
  sub_266ECAF2C(&qword_2800F3588, &qword_2800F3590, 0x277D58218, &protocol conformance descriptor for INFERENCESchemaINFERENCECommonAppIndependentSignals);
  sub_26738120C();
  v25 = sub_26738116C();
  v9 = *(v25 - 8);
  v10 = *(v9 + 56);
  v26 = v9 + 56;
  v10(v8, 0, 1, v25);
  v24 = a2;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026744D9C0);
  v11(v29, 0);
  v22 = "commonIndependent";
  v12 = *MEMORY[0x277D3E4E8];
  v13 = v28;
  v27 = *(v27 + 104);
  v23 = v12;
  (v27)(v5, v12, v28);
  v29[0] = 1;
  sub_26738114C();
  v14 = v25;
  v10(v8, 0, 1, v25);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v22 | 0x8000000000000000);
  v15(v29, 0);
  v22 = "isNotebookTitlePresent";
  v16 = v13;
  v17 = v27;
  (v27)(v5, v12, v16);
  v29[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v22 | 0x8000000000000000);
  v18(v29, 0);
  v17(v5, v23, v28);
  v29[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x800000026744DA20);
  return v19(v29, 0);
}

uint64_t sub_267069BB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267069C18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEOntologySource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026744DA80, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x800000026744DAA0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x800000026744DAD0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x800000026744DB00, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x800000026744DB30, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267069FB4(uint64_t a1)
{
  v2 = sub_26706A0B8(&qword_2800F3818, &protocol conformance descriptor for INFERENCESchemaINFERENCEOntologySource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26706A01C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26706A0B8(&qword_2800F3818, &protocol conformance descriptor for INFERENCESchemaINFERENCEOntologySource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26706A0B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEOntologySource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v60 = sub_26738113C();
  v2 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v53 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v64 = a1;
  sub_26738119C();
  v58 = *MEMORY[0x277D3E510];
  v8 = *(v2 + 104);
  v59 = v2 + 104;
  v63 = v8;
  v8(v4);
  v65[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v7, 0, 1, v9);
  v62 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6563696F6863, 0xE600000000000000);
  v13(v65, 0);
  v57 = "ChoiceDependentSignals";
  LODWORD(v56) = *MEMORY[0x277D3E508];
  v14 = v56;
  v15 = v60;
  (v63)(v4, v56, v60);
  v65[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v16 = v11;
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, v57 | 0x8000000000000000);
  v17(v65, 0);
  v57 = "isUserSelectedChoice";
  v54 = v4;
  v18 = v15;
  v19 = v63;
  (v63)(v4, v14, v18);
  v65[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, v57 | 0x8000000000000000);
  v20(v65, 0);
  LODWORD(v57) = *MEMORY[0x277D3E500];
  v21 = v54;
  v19(v54);
  v65[0] = 1;
  sub_26738114C();
  v16(v7, 0, 1, v9);
  v22 = v16;
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x800000026744DC00);
  v23(v65, 0);
  v24 = v21;
  v25 = v56;
  v26 = v60;
  v27 = v63;
  (v63)(v24, v56, v60);
  v65[0] = 1;
  sub_26738114C();
  v22(v7, 0, 1, v9);
  v28 = sub_2673811AC();
  sub_266EC637C(v7, 0x5379636E65636572, 0xEE0073646E6F6365);
  v28(v65, 0);
  v29 = v54;
  v27(v54, v25, v26);
  v30 = v27;
  v65[0] = 1;
  sub_26738114C();
  v61 = v9;
  v22(v7, 0, 1, v9);
  v31 = sub_2673811AC();
  sub_266EC637C(v7, 0x5279636E65636572, 0xEB000000006B6E61);
  v31(v65, 0);
  v53 = "frequencyPercentage";
  v32 = v60;
  v30(v29, v56, v60);
  v65[0] = 1;
  sub_26738114C();
  v22(v7, 0, 1, v9);
  v55 = v22;
  v33 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v53 | 0x8000000000000000);
  v33(v65, 0);
  v56 = "lastContiguousCount";
  v34 = v57;
  v35 = v63;
  (v63)(v29, v57, v32);
  v65[0] = 1;
  sub_26738114C();
  v22(v7, 0, 1, v61);
  v36 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, v56 | 0x8000000000000000);
  v36(v65, 0);
  v56 = "locationAffinity300Meters";
  v37 = v35;
  v35(v29, v34, v32);
  v65[0] = 1;
  sub_26738114C();
  v38 = v61;
  v39 = v55;
  v55(v7, 0, 1, v61);
  v40 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, v56 | 0x8000000000000000);
  v40(v65, 0);
  v41 = v32;
  v37(v29, v57, v32);
  v65[0] = 1;
  sub_26738114C();
  v42 = v39;
  v39(v7, 0, 1, v38);
  v43 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, 0x800000026744DC80);
  v43(v65, 0);
  v57 = "locationAffinity156Kilometers";
  v44 = v58;
  v45 = v63;
  (v63)(v29, v58, v41);
  v65[0] = 1;
  sub_26738114C();
  v42(v7, 0, 1, v61);
  v46 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001FLL, v57 | 0x8000000000000000);
  v46(v65, 0);
  v57 = "locationFrequencyCount300Meters";
  v47 = v60;
  v45(v29, v44, v60);
  v65[0] = 1;
  sub_26738114C();
  v48 = v61;
  v49 = v55;
  v55(v7, 0, 1, v61);
  v50 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000020, v57 | 0x8000000000000000);
  v50(v65, 0);
  (v63)(v29, v58, v47);
  v65[0] = 1;
  sub_26738114C();
  v49(v7, 0, 1, v48);
  v51 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000023, 0x800000026744DCF0);
  return v51(v65, 0);
}

uint64_t sub_26706AD3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26706ADA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26706AE04()
{
  result = qword_2800F3820;
  if (!qword_2800F3820)
  {
    sub_26706AE5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3820);
  }

  return result;
}

unint64_t sub_26706AE5C()
{
  result = qword_2800F3828;
  if (!qword_2800F3828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3828);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a1;
  v3 = sub_26738113C();
  v91 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v85 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v96 = *(v4 + 104);
  v96(v6, v10, v3);
  v97[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v89 = v11;
  v13(v9, 0, 1, v11);
  v90 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x65736163657375, 0xE700000000000000);
  v15(v97, 0);
  v95 = *MEMORY[0x277D3E508];
  v16 = v91;
  v17 = v96;
  (v96)(v6);
  v97[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v93 = v13;
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x43736563696F6863, 0xEC000000746E756FLL);
  v18(v97, 0);
  v19 = *MEMORY[0x277D3E510];
  v94 = v4 + 104;
  v17(v6, v19, v16);
  v97[0] = 1;
  sub_26738114C();
  v20 = v89;
  v13(v9, 0, 1, v89);
  v88 = a2;
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D617473656D6974, 0xEC00000063655370);
  v21(v97, 0);
  v22 = v95;
  v23 = v91;
  v96(v6, v95, v91);
  v97[0] = 1;
  v24 = v6;
  sub_26738114C();
  v25 = v93;
  v93(v9, 0, 1, v20);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x75676E614C776172, 0xEB00000000656761);
  v26(v97, 0);
  v92 = v24;
  v27 = v24;
  v28 = v23;
  v29 = v23;
  v30 = v96;
  v96(v27, v22, v29);
  v97[0] = 1;
  sub_26738114C();
  v25(v9, 0, 1, v20);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C61636F4C776172, 0xE900000000000065);
  v31(v97, 0);
  v86 = "IndependentSignals";
  v32 = v95;
  v30(v92, v95, v28);
  v97[0] = 1;
  sub_26738114C();
  v33 = v89;
  v25(v9, 0, 1, v89);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v86 | 0x8000000000000000);
  v34(v97, 0);
  v35 = v92;
  v36 = v32;
  v37 = v91;
  v30(v92, v36, v91);
  v97[0] = 1;
  sub_26738114C();
  v38 = v33;
  v39 = v93;
  v93(v9, 0, 1, v33);
  v40 = sub_2673811AC();
  sub_266EC637C(v9, 0x746E756F43776172, 0xEA00000000007972);
  v40(v97, 0);
  v86 = "rawStateOrProvince";
  v41 = v95;
  v42 = v37;
  v43 = v37;
  v44 = v96;
  v96(v35, v95, v43);
  v97[0] = 1;
  sub_26738114C();
  v39(v9, 0, 1, v38);
  v45 = v39;
  v46 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v86 | 0x8000000000000000);
  v46(v97, 0);
  v86 = "EntityResolutionCommonSignals";
  v47 = v92;
  v44(v92, v41, v42);
  v97[0] = 1;
  sub_26738114C();
  v48 = v89;
  v45(v9, 0, 1, v89);
  v49 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v86 | 0x8000000000000000);
  v49(v97, 0);
  v86 = "calendarHourOfDay";
  v50 = v95;
  v51 = v42;
  v52 = v96;
  v96(v47, v95, v51);
  v97[0] = 1;
  sub_26738114C();
  v53 = v48;
  v54 = v93;
  v93(v9, 0, 1, v53);
  v55 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v86 | 0x8000000000000000);
  v55(v97, 0);
  v86 = "calendarDayOfWeek";
  v57 = v91;
  v56 = v92;
  v52(v92, v50, v91);
  v97[0] = 1;
  sub_26738114C();
  v58 = v89;
  v54(v9, 0, 1, v89);
  v59 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v86 | 0x8000000000000000);
  v59(v97, 0);
  v86 = "calendarWeekOfMonth";
  v60 = v50;
  v61 = v57;
  v62 = v96;
  v96(v56, v60, v57);
  v97[0] = 1;
  sub_26738114C();
  v63 = v93;
  v93(v9, 0, 1, v58);
  v64 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v86 | 0x8000000000000000);
  v64(v97, 0);
  v85 = "rawClientHourOfDay";
  v65 = v92;
  v66 = v95;
  v62(v92, v95, v57);
  v97[0] = 1;
  sub_26738114C();
  v63(v9, 0, 1, v58);
  v67 = sub_2673811AC();
  v86 = 0xD000000000000010;
  sub_266EC637C(v9, 0xD000000000000010, v85 | 0x8000000000000000);
  v67(v97, 0);
  v85 = "calendarMonthOfYear";
  v68 = v96;
  v96(v65, v66, v61);
  v97[0] = 1;
  sub_26738114C();
  v69 = v93;
  v93(v9, 0, 1, v58);
  v70 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v85 | 0x8000000000000000);
  v70(v97, 0);
  v85 = "isDeviceLockStatus";
  v71 = v92;
  v72 = v91;
  v68(v92, v66, v91);
  v97[0] = 1;
  sub_26738114C();
  v69(v9, 0, 1, v58);
  v73 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v85 | 0x8000000000000000);
  v73(v97, 0);
  v85 = "nowPlayingLastBundleRecencyS";
  v74 = v95;
  v75 = v96;
  v96(v71, v95, v72);
  v97[0] = 1;
  sub_26738114C();
  v93(v9, 0, 1, v58);
  v76 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v85 | 0x8000000000000000);
  v76(v97, 0);
  v77 = v92;
  v75(v92, v74, v72);
  v97[0] = 1;
  sub_26738114C();
  v78 = v93;
  v93(v9, 0, 1, v58);
  v79 = sub_2673811AC();
  sub_266EC637C(v9, 0x616C507261437369, 0xE900000000000079);
  v79(v97, 0);
  v96(v77, v95, v91);
  v97[0] = 1;
  sub_26738114C();
  v78(v9, 0, 1, v58);
  v80 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x800000026744DE30);
  v80(v97, 0);
  type metadata accessor for INFERENCESchemaINFERENCEEntityResolutionType(0);
  sub_26706C228();
  sub_26738120C();
  v78(v9, 0, 1, v58);
  v81 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x800000026744DE50);
  v81(v97, 0);
  sub_266ECB294(0, &qword_2800EF8F8, 0x277D5ACA0);
  sub_266ECAF2C(&qword_2800EF900, &qword_2800EF8F8, 0x277D5ACA0, &protocol conformance descriptor for SISchemaVersion);
  sub_26738120C();
  v78(v9, 0, 1, v58);
  v82 = sub_2673811AC();
  sub_266EC637C(v9, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v82(v97, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v78(v9, 0, 1, v58);
  v83 = sub_2673811AC();
  sub_266EC637C(v9, v86, 0x800000026742D000);
  return v83(v97, 0);
}

uint64_t sub_26706C164(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26706C1C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26706C228()
{
  result = qword_2800F3768;
  if (!qword_2800F3768)
  {
    type metadata accessor for INFERENCESchemaINFERENCEEntityResolutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3768);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3838, 0x277D58310);
  sub_266ECAF2C(&qword_2800F3830, &qword_2800F3838, 0x277D58310, &protocol conformance descriptor for INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x69536E6F6D6D6F63, 0xED0000736C616E67);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F3828, 0x277D58308);
  sub_266ECAF2C(&qword_2800F3820, &qword_2800F3828, 0x277D58308, &protocol conformance descriptor for INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x800000026744DED0);
  return v7(v9, 0);
}

uint64_t sub_26706C5A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26706C604(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v38 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v31 = a1;
  sub_26738119C();
  v34 = "RetryContactInteractionContext";
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v35 = v3 + 104;
  v30 = v10;
  v39[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v36 = *(v12 + 56);
  v13 = v12 + 56;
  v36(v8, 0, 1, v11);
  v37 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, v34 | 0x8000000000000000);
  v14(v39, 0);
  v34 = "rSiriContactGivenName";
  v15 = v38;
  v10(v5, v9, v38);
  v39[0] = 1;
  sub_26738114C();
  v16 = v36;
  v36(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000026, v34 | 0x8000000000000000);
  v17(v39, 0);
  v34 = "rSiriContactFamilyName";
  LODWORD(v32) = v9;
  v18 = v15;
  v19 = v30;
  v30(v5, v9, v18);
  v39[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000027, v34 | 0x8000000000000000);
  v20(v39, 0);
  v34 = "rSiriContactDisplayName";
  v21 = v38;
  v19(v5, v9, v38);
  v39[0] = 1;
  sub_26738114C();
  v33 = v11;
  v22 = v36;
  v36(v8, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v34 | 0x8000000000000000);
  v23(v39, 0);
  v34 = "isExactMatchPriorSiriContactId";
  v19(v5, v32, v21);
  v39[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000027, v34 | 0x8000000000000000);
  v24(v39, 0);
  v32 = "isInteractionSuccess";
  LODWORD(v34) = *MEMORY[0x277D3E538];
  (v19)(v5);
  v39[0] = 1;
  sub_26738114C();
  v25 = v33;
  v22(v8, 0, 1, v33);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v32 | 0x8000000000000000);
  v26(v39, 0);
  v19(v5, v34, v38);
  v39[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v25);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x800000026744E020);
  return v27(v39, 0);
}

uint64_t sub_26706CDFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26706CE60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26706CEC4()
{
  result = qword_2800F3740;
  if (!qword_2800F3740)
  {
    sub_26706CF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3740);
  }

  return result;
}

unint64_t sub_26706CF1C()
{
  result = qword_2800F3738;
  if (!qword_2800F3738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3738);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEPrivatizedHistoryStats.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v9 = *MEMORY[0x277D3E538];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v18[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x79636E65636572, 0xE700000000000000);
  v13(v18, 0);
  v10(v5, v9, v17);
  v18[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x636E657571657266, 0xEB00000000736569);
  return v14(v18, 0);
}

uint64_t sub_26706D290(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26706D2F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26706D358()
{
  result = qword_2800F3678;
  if (!qword_2800F3678)
  {
    sub_26706D3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3678);
  }

  return result;
}

unint64_t sub_26706D3B0()
{
  result = qword_2800F3670;
  if (!qword_2800F3670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3670);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEProjectIntent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026744E0D0, isUniquelyReferenced_nonNull_native);
  *v3 = v54;

  v1(v67, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x800000026744E0F0, v8);
  *v7 = v55;

  v5(v67, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x800000026744E120, v12);
  *v11 = v56;

  v9(v67, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x800000026744E150, v16);
  *v15 = v57;

  v13(v67, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000031, 0x800000026744E180, v20);
  *v19 = v58;

  v17(v67, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000031, 0x800000026744E1C0, v24);
  *v23 = v59;

  v21(v67, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002DLL, 0x800000026744E200, v28);
  *v27 = v60;

  v25(v67, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002DLL, 0x800000026744E230, v32);
  *v31 = v61;

  v29(v67, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000034, 0x800000026744E260, v36);
  *v35 = v62;

  v33(v67, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002CLL, 0x800000026744E2A0, v40);
  *v39 = v63;

  v37(v67, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000032, 0x800000026744E2D0, v44);
  *v43 = v64;

  v41(v67, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000003ELL, 0x800000026744E310, v48);
  *v47 = v65;

  v45(v67, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000032, 0x800000026744E350, v52);
  *v51 = v66;

  return v49(v67, 0);
}

uint64_t sub_26706DA84(uint64_t a1)
{
  v2 = sub_26706DB88(&qword_2800F3840, &protocol conformance descriptor for INFERENCESchemaINFERENCEProjectIntent);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26706DAEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26706DB88(&qword_2800F3840, &protocol conformance descriptor for INFERENCESchemaINFERENCEProjectIntent);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26706DB88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEProjectIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEPromptContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v22 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for INFERENCESchemaINFERENCEPromptTag(0);
  sub_26706E170();
  v21 = a1;
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 6775156, 0xE300000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F3618, 0x277D58260);
  sub_266ECAF2C(&qword_2800F3610, &qword_2800F3618, 0x277D58260, &protocol conformance descriptor for INFERENCESchemaINFERENCEConfirmationPromptContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x800000026744E3D0);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F3750, 0x277D582A8);
  sub_266ECAF2C(&qword_2800F3748, &qword_2800F3750, 0x277D582A8, &protocol conformance descriptor for INFERENCESchemaINFERENCEDisambiguationPromptContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x800000026744E3F0);
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

uint64_t sub_26706E0AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26706E110(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26706E170()
{
  result = qword_2800F3848;
  if (!qword_2800F3848)
  {
    type metadata accessor for INFERENCESchemaINFERENCEPromptTag(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3848);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEPromptTag.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026744E450, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x800000026744E470, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026744E490, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x800000026744E4C0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26706E494(uint64_t a1)
{
  v2 = sub_26706E598(&qword_2800F3850, &protocol conformance descriptor for INFERENCESchemaINFERENCEPromptTag);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26706E4FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26706E598(&qword_2800F3850, &protocol conformance descriptor for INFERENCESchemaINFERENCEPromptTag);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26706E598(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEPromptTag(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x28223BE20](v1);
  v29 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26738113C();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v25 = "ndidatesInfoGenerated";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, v25 | 0x8000000000000000);
  v10(v32, 0);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x64497972657571, 0xE700000000000000);
  v11(v32, 0);
  type metadata accessor for INFERENCESchemaINFERENCEDisambiguationResolutionType(0);
  sub_26706ED74(&qword_2800F3758, type metadata accessor for INFERENCESchemaINFERENCEDisambiguationResolutionType, &protocol conformance descriptor for INFERENCESchemaINFERENCEDisambiguationResolutionType);
  sub_26738121C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x800000026744E540);
  v12(v32, 0);
  type metadata accessor for INFERENCESchemaINFERENCEConfirmationResolutionType(0);
  sub_26706ED74(&qword_2800F3608, type metadata accessor for INFERENCESchemaINFERENCEConfirmationResolutionType, &protocol conformance descriptor for INFERENCESchemaINFERENCEConfirmationResolutionType);
  sub_26738121C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x800000026744E560);
  v13(v32, 0);
  (*(v27 + 104))(v26, *MEMORY[0x277D3E530], v28);
  v32[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v14 = v29;
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000022, 0x800000026744E580);
  v15(v32, 0);
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
  (*(v30 + 32))(v19 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v22, v14, v31);
  return v16(v32, 0);
}

uint64_t sub_26706ECB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26706ED14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26706ED74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static INFERENCESchemaINFERENCERequestMatchSignalSet.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v65 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v55 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v66 = "isPartialNameMatch";
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E538], v2);
  v10 = v3 + 104;
  v59 = v9;
  v67[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v64 = *(v12 + 56);
  v13 = v12 + 56;
  v64(v8, 0, 1, v11);
  v63 = a1;
  v14 = sub_2673811AC();
  v58 = 0xD000000000000010;
  sub_266EC637C(v8, 0xD000000000000010, v66 | 0x8000000000000000);
  v14(v67, 0);
  v57 = "isSuggestedContact";
  LODWORD(v66) = *MEMORY[0x277D3E4E8];
  v15 = v65;
  (v9)(v5);
  v16 = v10;
  v67[0] = 1;
  sub_26738114C();
  v61 = v13;
  v62 = v11;
  v17 = v64;
  v64(v8, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v57 | 0x8000000000000000);
  v18(v67, 0);
  v57 = "areAllQueryTokensInContact";
  v19 = v66;
  v20 = v15;
  v21 = v59;
  v59(v5, v66, v20);
  v60 = v16;
  v67[0] = 1;
  sub_26738114C();
  v17(v8, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, v57 | 0x8000000000000000);
  v22(v67, 0);
  v57 = "allPrimaryNameTokensAreInQuery";
  v23 = v65;
  v21(v5, v19, v65);
  v67[0] = 1;
  sub_26738114C();
  v24 = v62;
  v17(v8, 0, 1, v62);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, v58, v57 | 0x8000000000000000);
  v25(v67, 0);
  v58 = "isGivenNameMatch";
  v26 = v66;
  v27 = v59;
  v59(v5, v66, v23);
  v67[0] = 1;
  sub_26738114C();
  v17(v8, 0, 1, v24);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v58 | 0x8000000000000000);
  v28(v67, 0);
  v58 = "isMiddleNameMatch";
  v29 = v26;
  v30 = v65;
  v31 = v27;
  v27(v5, v29, v65);
  v67[0] = 1;
  sub_26738114C();
  v32 = v64;
  v64(v8, 0, 1, v24);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v58 | 0x8000000000000000);
  v33(v67, 0);
  v58 = "isFamilyNameMatch";
  v31(v5, v66, v30);
  v67[0] = 1;
  sub_26738114C();
  v32(v8, 0, 1, v24);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v58 | 0x8000000000000000);
  v34(v67, 0);
  v58 = "isMeCardRelation";
  v56 = v5;
  v35 = v5;
  v36 = v66;
  v37 = v65;
  v38 = v59;
  v59(v35, v66, v65);
  v67[0] = 1;
  sub_26738114C();
  v39 = v64;
  v64(v8, 0, 1, v62);
  v40 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v58 | 0x8000000000000000);
  v40(v67, 0);
  v41 = v56;
  v38(v56, v36, v37);
  v67[0] = 1;
  sub_26738114C();
  v42 = v62;
  v39(v8, 0, 1, v62);
  v43 = sub_2673811AC();
  sub_266EC637C(v8, 0x616E6B63694E7369, 0xEF686374614D656DLL);
  v43(v67, 0);
  v58 = "isOrganizationNameMatch";
  v44 = v66;
  v38(v41, v66, v37);
  v67[0] = 1;
  sub_26738114C();
  v45 = v42;
  v46 = v64;
  v64(v8, 0, 1, v45);
  v47 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v58 | 0x8000000000000000);
  v47(v67, 0);
  v58 = "isNamePrefixMatch";
  v48 = v65;
  v38(v41, v44, v65);
  v67[0] = 1;
  sub_26738114C();
  v49 = v62;
  v46(v8, 0, 1, v62);
  v50 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v58 | 0x8000000000000000);
  v50(v67, 0);
  v58 = "FERENCERequestMatchSignalSet";
  v38(v41, v66, v48);
  v67[0] = 1;
  sub_26738114C();
  v51 = v64;
  v64(v8, 0, 1, v49);
  v52 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v58 | 0x8000000000000000);
  v52(v67, 0);
  v38(v41, v66, v65);
  v67[0] = 1;
  sub_26738114C();
  v51(v8, 0, 1, v49);
  v53 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x800000026744E610);
  return v53(v67, 0);
}

uint64_t sub_26706FA1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26706FA80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26706FAE4()
{
  result = qword_2800F3708;
  if (!qword_2800F3708)
  {
    sub_26706FB3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3708);
  }

  return result;
}

unint64_t sub_26706FB3C()
{
  result = qword_2800F3700;
  if (!qword_2800F3700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3700);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEResolutionQueryInfoGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738113C();
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v23 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v21 = "ndidatesInfoGenerated";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v7 = v5;
  v6(v4, 0, 1);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0xD00000000000001BLL, v21 | 0x8000000000000000);
  v8(v25, 0);
  sub_26738120C();
  (v6)(v4, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64497972657571, 0xE700000000000000);
  v9(v25, 0);
  type metadata accessor for INFERENCESchemaINFERENCEResolutionState(0);
  sub_26707029C(&qword_2800F3720, type metadata accessor for INFERENCESchemaINFERENCEResolutionState, &protocol conformance descriptor for INFERENCESchemaINFERENCEResolutionState);
  sub_26738120C();
  (v6)(v4, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x6974756C6F736572, 0xEF65746174536E6FLL);
  v10(v25, 0);
  type metadata accessor for INFERENCESchemaINFERENCEForcePromptType(0);
  sub_26707029C(&qword_2800F37A8, type metadata accessor for INFERENCESchemaINFERENCEForcePromptType, &protocol conformance descriptor for INFERENCESchemaINFERENCEForcePromptType);
  sub_26738120C();
  v11 = v6;
  v20 = v6;
  (v6)(v4, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x6F72506563726F66, 0xEF6570795474706DLL);
  v12(v25, 0);
  v21 = "nQueryInfoGenerated";
  v13 = *MEMORY[0x277D3E530];
  v14 = v23;
  v24 = *(v24 + 104);
  v15 = v22;
  (v24)(v23, v13, v22);
  v25[0] = 1;
  sub_26738114C();
  v11(v4, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000017, v21 | 0x8000000000000000);
  v16(v25, 0);
  (v24)(v14, v13, v15);
  v25[0] = 1;
  sub_26738114C();
  v20(v4, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000025, 0x800000026744E6A0);
  return v17(v25, 0);
}

uint64_t sub_2670701D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707023C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26707029C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static INFERENCESchemaINFERENCEResolutionRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F3858, 0x277D58368);
  sub_266ECAF2C(&qword_2800F3860, &qword_2800F3858, 0x277D58368, &protocol conformance descriptor for INFERENCESchemaINFERENCEResolutionRequestStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F3868, 0x277D58358);
  sub_266ECAF2C(&qword_2800F3870, &qword_2800F3868, 0x277D58358, &protocol conformance descriptor for INFERENCESchemaINFERENCEResolutionRequestEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F3878, 0x277D58360);
  sub_266ECAF2C(&qword_2800F3880, &qword_2800F3878, 0x277D58360, &protocol conformance descriptor for INFERENCESchemaINFERENCEResolutionRequestFailed);
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

uint64_t sub_267070904(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267070968(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEResolutionRequestEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267070C54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267070CB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267070D1C()
{
  result = qword_2800F3870;
  if (!qword_2800F3870)
  {
    sub_267070D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3870);
  }

  return result;
}

unint64_t sub_267070D74()
{
  result = qword_2800F3868;
  if (!qword_2800F3868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3868);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEResolutionRequestFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267071010(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267071074(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670710D8()
{
  result = qword_2800F3880;
  if (!qword_2800F3880)
  {
    sub_267071130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3880);
  }

  return result;
}

unint64_t sub_267071130()
{
  result = qword_2800F3878;
  if (!qword_2800F3878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3878);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEResolutionRequestStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for INFERENCESchemaINFERENCESlotType(0);
  sub_2670714D4();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x65707954746F6C73, 0xE800000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F3890, 0x277D58370);
  sub_266ECAF2C(&qword_2800F3898, &qword_2800F3890, 0x277D58370, &protocol conformance descriptor for INFERENCESchemaINFERENCEResolverConfig);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7265766C6F736572, 0xEE006769666E6F43);
  return v7(v9, 0);
}

uint64_t sub_267071410(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267071474(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670714D4()
{
  result = qword_2800F3888;
  if (!qword_2800F3888)
  {
    type metadata accessor for INFERENCESchemaINFERENCESlotType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3888);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEResolutionState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026744E810, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x800000026744E840, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x800000026744E870, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x800000026744E8A0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x800000026744E8D0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267071864(uint64_t a1)
{
  v2 = sub_267071968(&qword_2800F38A0, &protocol conformance descriptor for INFERENCESchemaINFERENCEResolutionState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670718CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267071968(&qword_2800F38A0, &protocol conformance descriptor for INFERENCESchemaINFERENCEResolutionState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267071968(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEResolutionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEResolverConfig.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F36E0, 0x277D58298);
  sub_266ECAF2C(&qword_2800F36D8, &qword_2800F36E0, 0x277D58298, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactResolverConfig);
  sub_26738121C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0x43746361746E6F63, 0xED00006769666E6FLL);
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

uint64_t sub_267071D24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267071D88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCESearchProvider.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026744E990, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x800000026744E9B0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x800000026744E9E0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x800000026744EA10, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x800000026744EA30, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267072120(uint64_t a1)
{
  v2 = sub_267072224(&qword_2800F38A8, &protocol conformance descriptor for INFERENCESchemaINFERENCESearchProvider);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267072188(uint64_t a1, uint64_t a2)
{
  v4 = sub_267072224(&qword_2800F38A8, &protocol conformance descriptor for INFERENCESchemaINFERENCESearchProvider);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267072224(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCESearchProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCESimpleTaskInfoGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v28 = sub_26738113C();
  v24 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v25 = a1;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v9 = v7 + 56;
  v8(v5, 0, 1, v6);
  v26 = v9;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001BLL, 0x800000026744B3C0);
  v10(v29, 0);
  type metadata accessor for INFERENCESchemaINFERENCETaskSuccessType(0);
  sub_267072980();
  sub_26738120C();
  v11 = v6;
  v8(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x636375536B736174, 0xEF65707954737365);
  v12(v29, 0);
  v27 = *MEMORY[0x277D3E4E8];
  v13 = v23;
  v24 = *(v24 + 104);
  v14 = v28;
  (v24)(v23);
  v29[0] = 1;
  sub_26738114C();
  v8(v5, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0x7365636375537369, 0xE900000000000073);
  v15(v29, 0);
  v16 = v14;
  v17 = v24;
  (v24)(v13, v27, v16);
  v29[0] = 1;
  sub_26738114C();
  v8(v5, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v5, 0x7475636578457369, 0xEA00000000006465);
  v18(v29, 0);
  v17(v13, v27, v28);
  v29[0] = 1;
  sub_26738114C();
  v19 = v11;
  v8(v5, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001BLL, 0x800000026744EA90);
  v20(v29, 0);
  sub_266ECB294(0, &qword_2800F38B8, 0x277D58390);
  sub_266ECAF2C(&qword_2800F38C0, &qword_2800F38B8, 0x277D58390, &protocol conformance descriptor for INFERENCESchemaINFERENCETaskSpecificInfo);
  sub_26738120C();
  v8(v5, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026744EAB0);
  return v21(v29, 0);
}

uint64_t sub_2670728BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267072920(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267072980()
{
  result = qword_2800F38B0;
  if (!qword_2800F38B0)
  {
    type metadata accessor for INFERENCESchemaINFERENCETaskSuccessType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F38B0);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCESlotType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x800000026744EB00, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x800000026744EB20, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x800000026744EB40, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x800000026744EB60, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x800000026744EB80, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267072D18(uint64_t a1)
{
  v2 = sub_267072E1C(&qword_2800F38C8, &protocol conformance descriptor for INFERENCESchemaINFERENCESlotType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267072D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_267072E1C(&qword_2800F38C8, &protocol conformance descriptor for INFERENCESchemaINFERENCESlotType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267072E1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCESlotType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPath.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000035, 0x800000026744EBF0, isUniquelyReferenced_nonNull_native);
  *v3 = v54;

  v1(v67, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000004BLL, 0x800000026744EC30, v8);
  *v7 = v55;

  v5(v67, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000044, 0x800000026744EC80, v12);
  *v11 = v56;

  v9(v67, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000004BLL, 0x800000026744ECD0, v16);
  *v15 = v57;

  v13(v67, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000004DLL, 0x800000026744ED20, v20);
  *v19 = v58;

  v17(v67, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000050, 0x800000026744ED70, v24);
  *v23 = v59;

  v21(v67, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000057, 0x800000026744EDD0, v28);
  *v27 = v60;

  v25(v67, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000057, 0x800000026744EE30, v32);
  *v31 = v61;

  v29(v67, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000058, 0x800000026744EE90, v36);
  *v35 = v62;

  v33(v67, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000004ALL, 0x800000026744EEF0, v40);
  *v39 = v63;

  v37(v67, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000004BLL, 0x800000026744EF40, v44);
  *v43 = v64;

  v41(v67, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000043, 0x800000026744EF90, v48);
  *v47 = v65;

  v45(v67, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000053, 0x800000026744EFE0, v52);
  *v51 = v66;

  return v49(v67, 0);
}

uint64_t sub_2670734DC(uint64_t a1)
{
  v2 = sub_2670735E0(&qword_2800F38D8, &protocol conformance descriptor for INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPath);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267073544(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670735E0(&qword_2800F38D8, &protocol conformance descriptor for INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPath);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670735E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPath(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPath(0);
  sub_2670739F0(&qword_2800F38D0, type metadata accessor for INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPath, &protocol conformance descriptor for INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPath);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69747563657865, 0xED0000687461506ELL);
  v6(v9, 0);
  type metadata accessor for INFERENCESchemaINFERENCEProjectIntent(0);
  sub_2670739F0(&qword_2800F3398, type metadata accessor for INFERENCESchemaINFERENCEProjectIntent, &protocol conformance descriptor for INFERENCESchemaINFERENCEProjectIntent);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x497463656A6F7270, 0xED0000746E65746ELL);
  return v7(v9, 0);
}

uint64_t sub_2670738E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267073948(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670739F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267073A38()
{
  result = qword_2800F3530;
  if (!qword_2800F3530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3530);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCESpeechAlternativeRanks.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v30 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v26 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E4E8], v2);
  v32 = v9;
  v33[0] = 1;
  sub_26738114C();
  v29 = sub_26738116C();
  v10 = *(*(v29 - 8) + 56);
  v10(v8, 0, 1, v29);
  v26[1] = a1;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x726F7272457369, 0xE700000000000000);
  v11(v33, 0);
  v12 = *MEMORY[0x277D3E538];
  v13 = v30;
  v9(v5, v12, v30);
  v33[0] = 1;
  sub_26738114C();
  v14 = v29;
  v10(v8, 0, 1, v29);
  v27 = v10;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F6973726576, 0xE700000000000000);
  v15(v33, 0);
  v31 = v12;
  v16 = v13;
  v17 = v32;
  v32(v5, v12, v16);
  v28 = v3 + 104;
  v33[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D614E6E65766967, 0xED00006B6E615265);
  v18(v33, 0);
  v19 = v12;
  v20 = v30;
  v17(v5, v19, v30);
  v33[0] = 1;
  sub_26738114C();
  v21 = v27;
  v27(v8, 0, 1, v14);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x614E656C6464696DLL, 0xEE006B6E6152656DLL);
  v22(v33, 0);
  v32(v5, v31, v20);
  v33[0] = 1;
  sub_26738114C();
  v21(v8, 0, 1, v14);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x614E796C696D6166, 0xEE006B6E6152656DLL);
  v23(v33, 0);
  v32(v5, v31, v20);
  v33[0] = 1;
  sub_26738114C();
  v21(v8, 0, 1, v14);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D614E6C6C7566, 0xEC0000006B6E6152);
  return v24(v33, 0);
}

uint64_t sub_2670740D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267074138(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26707419C()
{
  result = qword_2800F36F8;
  if (!qword_2800F36F8)
  {
    sub_2670741F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F36F8);
  }

  return result;
}

unint64_t sub_2670741F4()
{
  result = qword_2800F36F0;
  if (!qword_2800F36F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F36F0);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCETaskSpecificInfo.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F37C0, 0x277D582D0);
  sub_266ECAF2C(&qword_2800F37B8, &qword_2800F37C0, 0x277D582D0, &protocol conformance descriptor for INFERENCESchemaINFERENCELongRunningTaskInfo);
  sub_26738121C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x800000026744F120);
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

uint64_t sub_2670745AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267074610(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCETaskSuccessType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026744F180, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x800000026744F1B0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x800000026744F1E0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x800000026744F210, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000027, 0x800000026744F240, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2670749AC(uint64_t a1)
{
  v2 = sub_267074AB0(&qword_2800F38E0, &protocol conformance descriptor for INFERENCESchemaINFERENCETaskSuccessType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267074A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_267074AB0(&qword_2800F38E0, &protocol conformance descriptor for INFERENCESchemaINFERENCETaskSuccessType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267074AB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCETaskSuccessType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCETrialEnrollment.makeTypeManifestAndEnsureFields(in:)()
{
  v23 = sub_26738113C();
  v0 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v2 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v6 = *MEMORY[0x277D3E530];
  v7 = v0 + 104;
  v21 = *(v0 + 104);
  v8 = v6;
  v22 = v6;
  v21(v2);
  v20[2] = v7;
  v24[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v20[1] = v10 + 56;
  v11(v5, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x656D697265707865, 0xEC0000006449746ELL);
  v12(v24, 0);
  v13 = v8;
  v14 = v23;
  v15 = v21;
  (v21)(v2, v13, v23);
  v24[0] = 1;
  sub_26738114C();
  v11(v5, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v5, 0x6E656D7461657274, 0xEB00000000644974);
  v16(v24, 0);
  (v15)(v2, *MEMORY[0x277D3E510], v14);
  v24[0] = 1;
  sub_26738114C();
  v11(v5, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 0x656D796F6C706564, 0xEC0000006449746ELL);
  v17(v24, 0);
  (v15)(v2, v22, v23);
  v24[0] = 1;
  sub_26738114C();
  v11(v5, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v5, 0x4974756F6C6C6F72, 0xE900000000000064);
  return v18(v24, 0);
}

uint64_t sub_267074FBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267075020(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267075084()
{
  result = qword_2800F3718;
  if (!qword_2800F3718)
  {
    sub_2670750DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3718);
  }

  return result;
}

unint64_t sub_2670750DC()
{
  result = qword_2800F3710;
  if (!qword_2800F3710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3710);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v204 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v192 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v203 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E508];
  v200 = *(v3 + 104);
  v201 = v3 + 104;
  v202 = v9;
  v200(v5, v9, v2);
  v206[0] = 1;
  sub_26738114C();
  v197 = sub_26738116C();
  v195 = *(v197 - 8);
  v10 = v195 + 56;
  v11 = *(v195 + 7);
  v11(v8, 0, 1, v197);
  v199 = v11;
  v12 = sub_2673811AC();
  v194 = 0xD000000000000014;
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026744F300);
  v12(v206, 0);
  v193 = "relativeAppUsage1Day";
  v13 = v9;
  v14 = v204;
  v15 = v200;
  v200(v5, v13, v204);
  v206[0] = 1;
  sub_26738114C();
  v16 = v197;
  v11(v8, 0, 1, v197);
  v196 = v10;
  v17 = sub_2673811AC();
  sub_266EC637C(v8, v194, v193 | 0x8000000000000000);
  v17(v206, 0);
  v194 = "relativeAppUsage7Day";
  v15(v5, v202, v14);
  v18 = v5;
  v206[0] = 1;
  sub_26738114C();
  v19 = v199;
  v199(v8, 0, 1, v16);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v194 | 0x8000000000000000);
  v20(v206, 0);
  v194 = "relativeAppUsage14Day";
  v21 = v202;
  v22 = v204;
  v23 = v200;
  v200(v18, v202, v204);
  v206[0] = 1;
  sub_26738114C();
  v19(v8, 0, 1, v16);
  v24 = sub_2673811AC();
  v193 = 0xD000000000000017;
  sub_266EC637C(v8, 0xD000000000000017, v194 | 0x8000000000000000);
  v24(v206, 0);
  v194 = "entityAbsoluteCount2Min";
  v25 = v21;
  v26 = v23;
  v23(v18, v25, v22);
  v206[0] = 1;
  sub_26738114C();
  v27 = v197;
  v199(v8, 0, 1, v197);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v194 | 0x8000000000000000);
  v28(v206, 0);
  v194 = "entityAbsoluteCount10Min";
  v29 = v202;
  v30 = v204;
  v26(v18, v202, v204);
  v206[0] = 1;
  sub_26738114C();
  v31 = v199;
  v199(v8, 0, 1, v27);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v194 | 0x8000000000000000);
  v32(v206, 0);
  v194 = "entityAbsoluteCount1Hr";
  v33 = v30;
  v200(v18, v29, v30);
  v206[0] = 1;
  sub_26738114C();
  v34 = v197;
  v31(v8, 0, 1, v197);
  v35 = sub_2673811AC();
  v36 = v194 | 0x8000000000000000;
  v194 = 0xD000000000000016;
  sub_266EC637C(v8, 0xD000000000000016, v36);
  v35(v206, 0);
  v192 = "entityAbsoluteCount6Hr";
  v198 = v18;
  v37 = v18;
  v38 = v202;
  v39 = v33;
  v40 = v200;
  v200(v37, v202, v39);
  v206[0] = 1;
  sub_26738114C();
  v41 = v34;
  v42 = v34;
  v43 = v199;
  v199(v8, 0, 1, v42);
  v44 = sub_2673811AC();
  v45 = v193;
  sub_266EC637C(v8, v193, v192 | 0x8000000000000000);
  v44(v206, 0);
  v192 = "entityAbsoluteCount1Day";
  v46 = v198;
  v40(v198, v38, v204);
  v206[0] = 1;
  sub_26738114C();
  v43(v8, 0, 1, v41);
  v47 = sub_2673811AC();
  sub_266EC637C(v8, v45, v192 | 0x8000000000000000);
  v47(v206, 0);
  v40(v46, v202, v204);
  v206[0] = 1;
  sub_26738114C();
  v48 = v197;
  v199(v8, 0, 1, v197);
  v49 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026744F420);
  v49(v206, 0);
  v50 = sub_2673811AC();
  v51 = sub_266ECB6CC(v205, 0xD000000000000018, 0x800000026744F420);
  if (!(*(v195 + 6))(v52, 1, v48))
  {
    sub_266ECB128(&unk_287887C20);
    sub_26738115C();
  }

  (v51)(v205, 0);
  v50(v206, 0);
  v200(v46, v202, v204);
  v206[0] = 1;
  sub_26738114C();
  v53 = v197;
  v54 = v199;
  v199(v8, 0, 1, v197);
  v55 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026744F440);
  v55(v206, 0);
  v56 = v202;
  v57 = v204;
  v200(v46, v202, v204);
  v206[0] = 1;
  sub_26738114C();
  v54(v8, 0, 1, v53);
  v58 = v54;
  v59 = sub_2673811AC();
  sub_266EC637C(v8, 0x6552797469746E65, 0xED000079636E6563);
  v59(v206, 0);
  v195 = "entityAbsoluteCount28Day";
  v60 = v200;
  v200(v198, v56, v57);
  v206[0] = 1;
  sub_26738114C();
  v61 = v197;
  v58(v8, 0, 1, v197);
  v62 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, v195 | 0x8000000000000000);
  v62(v206, 0);
  v195 = "NumberOfLibraryItems";
  v63 = v198;
  v60(v198, v56, v204);
  v206[0] = 1;
  sub_26738114C();
  v58(v8, 0, 1, v61);
  v64 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, v195 | 0x8000000000000000);
  v64(v206, 0);
  v192 = "SubscriptionStatus";
  LODWORD(v195) = *MEMORY[0x277D3E4E8];
  v65 = v195;
  v66 = v204;
  v67 = v60;
  v60(v63, v195, v204);
  v206[0] = 1;
  sub_26738114C();
  v68 = v199;
  v199(v8, 0, 1, v61);
  v69 = sub_2673811AC();
  v193 = 0xD000000000000013;
  sub_266EC637C(v8, 0xD000000000000013, v192 | 0x8000000000000000);
  v69(v206, 0);
  v192 = "isLastForegroundApp";
  v70 = v198;
  v67(v198, v65, v66);
  v206[0] = 1;
  sub_26738114C();
  v68(v8, 0, 1, v61);
  v71 = sub_2673811AC();
  sub_266EC637C(v8, v193, v192 | 0x8000000000000000);
  v71(v206, 0);
  v193 = "isLastNowPlayingApp";
  v72 = v202;
  v73 = v204;
  v67(v70, v202, v204);
  v206[0] = 1;
  sub_26738114C();
  v68(v8, 0, 1, v61);
  v74 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v193 | 0x8000000000000000);
  v74(v206, 0);
  v193 = "nowPlayingAbsoluteCount2Min";
  v75 = v198;
  v76 = v200;
  v200(v198, v72, v73);
  v206[0] = 1;
  sub_26738114C();
  v77 = v199;
  v199(v8, 0, 1, v61);
  v78 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v193 | 0x8000000000000000);
  v78(v206, 0);
  v193 = "nowPlayingAbsoluteCount10Min";
  v79 = v75;
  v80 = v202;
  v76(v79, v202, v73);
  v206[0] = 1;
  sub_26738114C();
  v77(v8, 0, 1, v61);
  v81 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v193 | 0x8000000000000000);
  v81(v206, 0);
  v193 = "nowPlayingAbsoluteCount1Hr";
  v82 = v198;
  v76(v198, v80, v204);
  v206[0] = 1;
  sub_26738114C();
  v77(v8, 0, 1, v61);
  v83 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v193 | 0x8000000000000000);
  v83(v206, 0);
  v193 = "nowPlayingAbsoluteCount6Hr";
  v84 = v202;
  v85 = v204;
  v76(v82, v202, v204);
  v206[0] = 1;
  sub_26738114C();
  v86 = v197;
  v77(v8, 0, 1, v197);
  v87 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v193 | 0x8000000000000000);
  v87(v206, 0);
  v193 = "nowPlayingAbsoluteCount1Day";
  v88 = v198;
  v89 = v84;
  v90 = v85;
  v91 = v200;
  v200(v198, v89, v85);
  v206[0] = 1;
  sub_26738114C();
  v92 = v199;
  v199(v8, 0, 1, v86);
  v93 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v193 | 0x8000000000000000);
  v93(v206, 0);
  v193 = "nowPlayingAbsoluteCount7Day";
  v94 = v88;
  v95 = v202;
  v91(v94, v202, v90);
  v206[0] = 1;
  sub_26738114C();
  v92(v8, 0, 1, v86);
  v96 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v193 | 0x8000000000000000);
  v96(v206, 0);
  v193 = "nowPlayingAbsoluteCount14Day";
  v97 = v198;
  v98 = v204;
  v99 = v200;
  v200(v198, v95, v204);
  v206[0] = 1;
  sub_26738114C();
  v100 = v86;
  v101 = v199;
  v199(v8, 0, 1, v100);
  v102 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v193 | 0x8000000000000000);
  v102(v206, 0);
  v103 = v97;
  v104 = v195;
  v99(v103, v195, v98);
  v105 = v99;
  v206[0] = 1;
  sub_26738114C();
  v106 = v197;
  v101(v8, 0, 1, v197);
  v107 = sub_2673811AC();
  sub_266EC637C(v8, 0x616C50776F4E7369, 0xEF707041676E6979);
  v107(v206, 0);
  v108 = v198;
  v109 = v204;
  v105(v198, v104, v204);
  v206[0] = 1;
  sub_26738114C();
  v101(v8, 0, 1, v106);
  v110 = sub_2673811AC();
  sub_266EC637C(v8, 0x7463656C65537369, 0xED00007070416465);
  v110(v206, 0);
  v193 = "nowPlayingAbsoluteCount28Day";
  v111 = v202;
  v112 = v200;
  v200(v108, v202, v109);
  v206[0] = 1;
  sub_26738114C();
  v113 = v197;
  v101(v8, 0, 1, v197);
  v114 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, v193 | 0x8000000000000000);
  v114(v206, 0);
  v193 = "egroundAppStartInSec";
  v115 = v198;
  v116 = v204;
  v112(v198, v111, v204);
  v206[0] = 1;
  sub_26738114C();
  v117 = v199;
  v199(v8, 0, 1, v113);
  v118 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, v193 | 0x8000000000000000);
  v118(v206, 0);
  v193 = "egroundAppEndInSec";
  v119 = v202;
  v120 = v116;
  v121 = v200;
  v200(v115, v202, v120);
  v206[0] = 1;
  sub_26738114C();
  v117(v8, 0, 1, v113);
  v122 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, v193 | 0x8000000000000000);
  v122(v206, 0);
  v193 = "PlayingAppStartInSec";
  v121(v115, v119, v204);
  v206[0] = 1;
  sub_26738114C();
  v123 = v197;
  v117(v8, 0, 1, v197);
  v124 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, v193 | 0x8000000000000000);
  v124(v206, 0);
  v193 = "PlayingAppEndInSec";
  v125 = v204;
  v121(v115, v119, v204);
  v206[0] = 1;
  sub_26738114C();
  v126 = v123;
  v127 = v123;
  v128 = v199;
  v199(v8, 0, 1, v126);
  v129 = sub_2673811AC();
  sub_266EC637C(v8, v194, v193 | 0x8000000000000000);
  v129(v206, 0);
  v194 = "spotlightRelativeCount";
  v130 = v200;
  v200(v115, *MEMORY[0x277D3E540], v125);
  v206[0] = 1;
  sub_26738114C();
  v128(v8, 0, 1, v127);
  v131 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v194 | 0x8000000000000000);
  v131(v206, 0);
  v130(v115, v195, v125);
  v206[0] = 1;
  sub_26738114C();
  v132 = v199;
  v199(v8, 0, 1, v127);
  v133 = sub_2673811AC();
  sub_266EC637C(v8, 0x726765726F467369, 0xEF707041646E756FLL);
  v133(v206, 0);
  v195 = "supportedMediaCategories";
  v134 = v202;
  v135 = v204;
  v136 = v200;
  v200(v115, v202, v204);
  v206[0] = 1;
  sub_26738114C();
  v137 = v197;
  v132(v8, 0, 1, v197);
  v138 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v195 | 0x8000000000000000);
  v138(v206, 0);
  v195 = "entityPartialSiriCount2Min";
  v139 = v135;
  v136(v198, v134, v135);
  v206[0] = 1;
  sub_26738114C();
  v140 = v137;
  v141 = v137;
  v142 = v199;
  v199(v8, 0, 1, v141);
  v143 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v195 | 0x8000000000000000);
  v143(v206, 0);
  v195 = "entityPartialSiriCount10Min";
  v144 = v198;
  v145 = v202;
  v146 = v139;
  v147 = v200;
  v200(v198, v202, v146);
  v206[0] = 1;
  sub_26738114C();
  v142(v8, 0, 1, v140);
  v148 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v195 | 0x8000000000000000);
  v148(v206, 0);
  v195 = "entityPartialSiriCount1Hr";
  v149 = v145;
  v150 = v204;
  v151 = v147;
  v147(v144, v145, v204);
  v206[0] = 1;
  sub_26738114C();
  v152 = v197;
  v153 = v199;
  v199(v8, 0, 1, v197);
  v154 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v195 | 0x8000000000000000);
  v154(v206, 0);
  v195 = "entityPartialSiriCount6Hr";
  v151(v198, v149, v150);
  v206[0] = 1;
  sub_26738114C();
  v155 = v152;
  v156 = v153;
  v153(v8, 0, 1, v152);
  v157 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v195 | 0x8000000000000000);
  v157(v206, 0);
  v195 = "entityPartialSiriCount1Day";
  v158 = v198;
  v159 = v202;
  v151(v198, v202, v204);
  v206[0] = 1;
  sub_26738114C();
  v153(v8, 0, 1, v155);
  v160 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v195 | 0x8000000000000000);
  v160(v206, 0);
  v195 = "entityPartialSiriCount7Day";
  v161 = v159;
  v162 = v204;
  v163 = v200;
  v200(v158, v159, v204);
  v206[0] = 1;
  sub_26738114C();
  v164 = v197;
  v156(v8, 0, 1, v197);
  v165 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v195 | 0x8000000000000000);
  v165(v206, 0);
  v195 = "entityPartialSiriCount28Day";
  v166 = v198;
  v167 = v162;
  v168 = v163;
  v163(v198, v161, v167);
  v206[0] = 1;
  sub_26738114C();
  v156(v8, 0, 1, v164);
  v169 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v195 | 0x8000000000000000);
  v169(v206, 0);
  v195 = "entityPartialAppCount2Min";
  v170 = v204;
  v168(v166, v202, v204);
  v206[0] = 1;
  sub_26738114C();
  v171 = v199;
  v199(v8, 0, 1, v164);
  v172 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v195 | 0x8000000000000000);
  v172(v206, 0);
  v195 = "entityPartialAppCount10Min";
  v173 = v198;
  v174 = v202;
  v168(v198, v202, v170);
  v206[0] = 1;
  sub_26738114C();
  v171(v8, 0, 1, v164);
  v175 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v195 | 0x8000000000000000);
  v175(v206, 0);
  v195 = "entityPartialAppCount1Hr";
  v176 = v173;
  v177 = v173;
  v178 = v174;
  v179 = v204;
  v180 = v200;
  v200(v177, v178, v204);
  v206[0] = 1;
  sub_26738114C();
  v181 = v197;
  v171(v8, 0, 1, v197);
  v182 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v195 | 0x8000000000000000);
  v182(v206, 0);
  v195 = "entityPartialAppCount6Hr";
  v183 = v202;
  v180(v176, v202, v179);
  v206[0] = 1;
  sub_26738114C();
  v184 = v199;
  v199(v8, 0, 1, v181);
  v185 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v195 | 0x8000000000000000);
  v185(v206, 0);
  v195 = "entityPartialAppCount1Day";
  v186 = v183;
  v187 = v204;
  v180(v176, v186, v204);
  v206[0] = 1;
  sub_26738114C();
  v188 = v197;
  v184(v8, 0, 1, v197);
  v189 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v195 | 0x8000000000000000);
  v189(v206, 0);
  v180(v176, v202, v187);
  v206[0] = 1;
  sub_26738114C();
  v184(v8, 0, 1, v188);
  v190 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x800000026744F8A0);
  return v190(v206, 0);
}

uint64_t sub_2670779D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267077A34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267077A98()
{
  result = qword_2800F38E8;
  if (!qword_2800F38E8)
  {
    sub_267077AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F38E8);
  }

  return result;
}

unint64_t sub_267077AF0()
{
  result = qword_2800F38F0;
  if (!qword_2800F38F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F38F0);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppGroundTruthGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F38F8, 0x277D583B0);
  sub_266ECAF2C(&qword_2800F3900, &qword_2800F38F8, 0x277D583B0, &protocol conformance descriptor for INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x800000026744F920);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F38F0, 0x277D583A0);
  sub_266ECAF2C(&qword_2800F38E8, &qword_2800F38F0, 0x277D583A0, &protocol conformance descriptor for INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppDependentSignals);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x800000026744F940);
  return v7(v9, 0);
}

uint64_t sub_267077E14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267077E78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppIndependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v47 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v46 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E4E8];
  v48 = *(v3 + 104);
  v48(v5, v9, v2);
  v44 = v3 + 104;
  v49[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v8, 0, 1, v10);
  v45 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026744DDF0);
  v14(v49, 0);
  v41 = *MEMORY[0x277D3E508];
  v16 = v47;
  v15 = v48;
  (v48)(v5);
  v49[0] = 1;
  sub_26738114C();
  v43 = v10;
  v12(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026744DE10);
  v17(v49, 0);
  v18 = v41;
  v15(v5, v41, v16);
  v49[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x7954746E65746E69, 0xEA00000000006570);
  v19(v49, 0);
  v42 = v5;
  v20 = v47;
  v15(v5, v18, v47);
  v49[0] = 1;
  sub_26738114C();
  v21 = v43;
  v22 = v12;
  v12(v8, 0, 1, v43);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x6979616C50776F6ELL, 0xEF6574617453676ELL);
  v23(v49, 0);
  v48(v42, v18, v20);
  v49[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v21);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C43656369766564, 0xEB00000000737361);
  v24(v49, 0);
  v25 = v48;
  v48(v42, v18, v20);
  v49[0] = 1;
  sub_26738114C();
  v26 = v43;
  v39 = v22;
  v22(v8, 0, 1, v43);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F48746E65696C63, 0xEF796144664F7275);
  v27(v49, 0);
  v29 = v42;
  v40 = *MEMORY[0x277D3E510];
  v28 = v40;
  v25(v42, v40, v20);
  v49[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v26);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F4C746E65696C63, 0xEC000000656C6163);
  v30(v49, 0);
  v31 = v48;
  v48(v29, v28, v20);
  v49[0] = 1;
  sub_26738114C();
  v32 = v39;
  v39(v8, 0, 1, v26);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0x614C746E65696C63, 0xEE0065676175676ELL);
  v33(v49, 0);
  v31(v29, v40, v20);
  v49[0] = 1;
  sub_26738114C();
  v34 = v43;
  v32(v8, 0, 1, v43);
  v35 = sub_2673811AC();
  sub_266EC637C(v8, 0x6552746E65696C63, 0xEC0000006E6F6967);
  v35(v49, 0);
  v31(v29, v41, v47);
  v49[0] = 1;
  sub_26738114C();
  v32(v8, 0, 1, v34);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x800000026744F9C0);
  return v36(v49, 0);
}

uint64_t sub_2670788C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267078924(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267078988()
{
  result = qword_2800F3900;
  if (!qword_2800F3900)
  {
    sub_2670789E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3900);
  }

  return result;
}

unint64_t sub_2670789E0()
{
  result = qword_2800F38F8;
  if (!qword_2800F38F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F38F8);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationDependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v24 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v23 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v3 + 104);
  v25 = v3 + 104;
  v10(v5, v9, v2);
  v22 = v10;
  v26[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v21 = v11;
  v12(v8, 0, 1, v11);
  v13 = v12;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026744FA40);
  v14(v26, 0);
  v20 = "isDisambiguatedApp";
  v15 = *MEMORY[0x277D3E508];
  v16 = v24;
  v10(v5, v15, v24);
  v26[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v20 | 0x8000000000000000);
  v17(v26, 0);
  v22(v5, v15, v16);
  v26[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v21);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026744FA80);
  return v18(v26, 0);
}

uint64_t sub_267078E38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267078E9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267078F00()
{
  result = qword_2800F3908;
  if (!qword_2800F3908)
  {
    sub_267078F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3908);
  }

  return result;
}

unint64_t sub_267078F58()
{
  result = qword_2800F3910;
  if (!qword_2800F3910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3910);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v3 = sub_26738113C();
  v42 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v33 = a2;
  sub_26738119C();
  v40 = "ambiguationIndependentSignals";
  v11 = *(v4 + 104);
  v39 = *MEMORY[0x277D3E508];
  v10 = v39;
  v11(v6, v39, v3);
  v36 = v4 + 104;
  v43[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v37 = v12;
  v14(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v40 | 0x8000000000000000);
  v16(v43, 0);
  v40 = "disambiguationAppsOrder";
  v17 = v10;
  v18 = v42;
  v11(v6, v17, v42);
  v35 = v11;
  v43[0] = 1;
  sub_26738114C();
  v34 = v15;
  v14(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v40 | 0x8000000000000000);
  v19(v43, 0);
  LODWORD(v40) = *MEMORY[0x277D3E510];
  v20 = v18;
  (v11)(v6);
  v43[0] = 1;
  sub_26738114C();
  v21 = v37;
  v22 = v14;
  v14(v9, 0, 1, v37);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v23(v43, 0);
  v32 = "disambiguationReasons";
  v24 = v35;
  v35(v6, v39, v20);
  v43[0] = 1;
  sub_26738114C();
  v25 = v21;
  v22(v9, 0, 1, v21);
  v26 = v22;
  v38 = v22;
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v32 | 0x8000000000000000);
  v27(v43, 0);
  v24(v6, v40, v42);
  v43[0] = 1;
  sub_26738114C();
  v26(v9, 0, 1, v25);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x800000026742D020);
  v28(v43, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v38(v9, 0, 1, v25);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x800000026742D000);
  return v29(v43, 0);
}

uint64_t sub_267079640(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670796A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3470, 0x277D583A8);
  sub_266ECAF2C(&qword_2800F3478, &qword_2800F3470, 0x277D583A8, &protocol conformance descriptor for INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppGroundTruthGenerated);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001ALL, 0x800000026744FBC0);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F3920, 0x277D583C0);
  sub_266ECAF2C(&qword_2800F3918, &qword_2800F3920, 0x277D583C0, &protocol conformance descriptor for INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationIndependentSignals);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x800000026744F920);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F3910, 0x277D583B8);
  sub_266ECAF2C(&qword_2800F3908, &qword_2800F3910, 0x277D583B8, &protocol conformance descriptor for INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationDependentSignals);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x800000026744F940);
  return v8(v10, 0);
}

uint64_t sub_267079AF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267079B5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3928, 0x277D583E0);
  sub_266ECAF2C(&qword_2800F3930, &qword_2800F3928, 0x277D583E0, &protocol conformance descriptor for INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000037, 0x800000026744FC30);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F3938, 0x277D583D8);
  sub_266ECAF2C(&qword_2800F3940, &qword_2800F3938, 0x277D583D8, &protocol conformance descriptor for INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000035, 0x800000026744FC70);
  return v7(v9, 0);
}

uint64_t sub_267079ED8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267079F3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v28 = sub_26738113C();
  v1 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3580, 0x277D58210);
  sub_266ECAF2C(&qword_2800F3578, &qword_2800F3580, 0x277D58210, &protocol conformance descriptor for INFERENCESchemaINFERENCECommonAppDependentSignals);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x65446E6F6D6D6F63, 0xEF746E65646E6570);
  v10(v30, 0);
  v11 = *MEMORY[0x277D3E508];
  v12 = *(v1 + 104);
  v27 = v1 + 104;
  v23 = v12;
  v12(v3, v11, v28);
  v30[0] = 1;
  v25 = v3;
  sub_26738114C();
  v24 = v9;
  v9(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x5474756F6B726F77, 0xEB00000000657079);
  v13(v30, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v29, 0x5474756F6B726F77, 0xEB00000000657079);
  v16 = *(v8 + 48);
  v26 = v8 + 48;
  if (!v16(v17, 1, v7))
  {
    sub_266ECB128(&unk_287887C48);
    sub_26738115C();
  }

  (v15)(v29, 0);
  v14(v30, 0);
  v23(v25, *MEMORY[0x277D3E4E8], v28);
  v30[0] = 1;
  sub_26738114C();
  v24(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x726F6F646E497369, 0xEF74756F6B726F57);
  v18(v30, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v29, 0x726F6F646E497369, 0xEF74756F6B726F57);
  if (!v16(v21, 1, v7))
  {
    sub_266ECB128(&unk_287887C70);
    sub_26738115C();
  }

  (v20)(v29, 0);
  return v19(v30, 0);
}

uint64_t sub_26707A550(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707A5B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26738113C();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v37 = a2;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3590, 0x277D58218);
  sub_266ECAF2C(&qword_2800F3588, &qword_2800F3590, 0x277D58218, &protocol conformance descriptor for INFERENCESchemaINFERENCECommonAppIndependentSignals);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v38 = *(v10 + 56);
  v11 = v10 + 56;
  v38(v8, 0, 1, v9);
  v36 = v11;
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026744D9C0);
  v12(v42, 0);
  v13 = *MEMORY[0x277D3E508];
  v14 = v41;
  v15 = v40 + 104;
  v33 = *(v40 + 104);
  v35 = v13;
  v33(v5, v13, v41);
  v40 = v15;
  v42[0] = 1;
  sub_26738114C();
  v34 = v9;
  v16 = v38;
  v38(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x6979616C50776F6ELL, 0xEF6574617453676ELL);
  v17(v42, 0);
  v39 = "isDeviceLockStatus";
  v18 = v13;
  v19 = v33;
  v33(v5, v18, v14);
  v42[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v39 | 0x8000000000000000);
  v20(v42, 0);
  LODWORD(v39) = *MEMORY[0x277D3E4E8];
  v19(v5);
  v42[0] = 1;
  sub_26738114C();
  v21 = v34;
  v22 = v38;
  v38(v8, 0, 1, v34);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026744DDF0);
  v23(v42, 0);
  v24 = v39;
  (v19)(v5, v39, v41);
  v42[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v21);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0x656C69626F4D7369, 0xEE006E4F61746144);
  v25(v42, 0);
  (v19)(v5, v24, v41);
  v42[0] = 1;
  sub_26738114C();
  v26 = v21;
  v22(v8, 0, 1, v21);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E4F696669577369, 0xE800000000000000);
  v27(v42, 0);
  v28 = v41;
  (v19)(v5, v35, v41);
  v42[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v21);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0x5474756F6B726F77, 0xEB00000000657079);
  v29(v42, 0);
  (v19)(v5, v39, v28);
  v42[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v26);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0x726F6F646E497369, 0xEF74756F6B726F57);
  return v30(v42, 0);
}

uint64_t sub_26707AE54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707AEB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaHistoricalLocationContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v4 + 104))(v6, *MEMORY[0x277D3E500], v3);
  v18[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v17[0] = a2;
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x800000026744FDB0);
  v12(v18, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x800000026744FDD0);
  v13(v18, 0);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x800000026744FDF0);
  v14(v18, 0);
  type metadata accessor for JRSchemaJRBucketedDistance(0);
  sub_26707B48C();
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x800000026744FE10);
  return v15(v18, 0);
}

uint64_t sub_26707B3C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707B42C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26707B48C()
{
  result = qword_2800F3948;
  if (!qword_2800F3948)
  {
    type metadata accessor for JRSchemaJRBucketedDistance(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3948);
  }

  return result;
}

uint64_t static JRSchemaIntervalUntilStartTime.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3960, 0x277D58418);
  sub_266ECAF2C(&qword_2800F3968, &qword_2800F3960, 0x277D58418, &protocol conformance descriptor for JRSchemaJRCandidateBooleanMask);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x800000026744FE60);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F3970, 0x277D58430);
  sub_266ECAF2C(&qword_2800F3978, &qword_2800F3970, 0x277D58430, &protocol conformance descriptor for JRSchemaJRCandidateTimeIntervalMatrix);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001BLL, 0x800000026744FE80);
  return v7(v9, 0);
}

uint64_t sub_26707B800(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707B864(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static JRSchemaJRAction.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x736E6F69746361, 0xE700000000000000);
  return v8(v10, 0);
}

uint64_t sub_26707BB54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26707BBB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26707BC1C()
{
  result = qword_2800F3990;
  if (!qword_2800F3990)
  {
    sub_26707BC74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3990);
  }

  return result;
}

unint64_t sub_26707BC74()
{
  result = qword_2800F3998;
  if (!qword_2800F3998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3998);
  }

  return result;
}

uint64_t static JRSchemaJRActionCandidateTuple.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x74616469646E6163, 0xEC00000073644965);
  return v5(v7, 0);
}