uint64_t sub_2671524AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267152510(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODBATCHSiriSchemaODBATCHTurnRestatementScore.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v30 = sub_26738113C();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v10 = v8 + 56;
  v25 = v7;
  v9(v6, 0, 1, v7);
  v26 = v9;
  v27 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x54746E6572727563, 0xED000064496E7275);
  v11(v31, 0);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v24[1] = a2;
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E7275547478656ELL, 0xEA00000000006449);
  v12(v31, 0);
  v24[0] = "TCHTurnRestatementScore";
  v13 = *MEMORY[0x277D3E518];
  v14 = *(v28 + 13);
  v15 = v30;
  v14(v29, v13, v30);
  v28 = v14;
  v31[0] = 1;
  sub_26738114C();
  v17 = v25;
  v16 = v26;
  v26(v6, 0, 1, v25);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, v24[0] | 0x8000000000000000);
  v18(v31, 0);
  v19 = v29;
  v14(v29, v13, v15);
  v31[0] = 1;
  sub_26738114C();
  v20 = v17;
  v16(v6, 0, 1, v17);
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x80000002674687C0);
  v21(v31, 0);
  v28(v19, *MEMORY[0x277D3E4E8], v30);
  v31[0] = 1;
  sub_26738114C();
  v16(v6, 0, 1, v20);
  v22 = sub_2673811AC();
  sub_266EC637C(v6, 0x4473736F72437369, 0xED00006563697665);
  return v22(v31, 0);
}

uint64_t sub_267152B40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267152BA4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODBATCHSiriSchemaODBATCHTurnRestatementScoresReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5D50, 0x277D591A0);
  sub_266ECAF2C(&qword_2800F5D48, &qword_2800F5D50, 0x277D591A0, &protocol conformance descriptor for ODBATCHSiriSchemaODBATCHTurnRestatementScore);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267468830);
  return v5(v7, 0);
}

uint64_t sub_267152E40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267152EA4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAdaptiveVolumeProperties.makeTypeManifestAndEnsureFields(in:)(const char *a1)
{
  v19 = a1;
  v20 = sub_26738113C();
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v17 = *MEMORY[0x277D3E4E8];
  v16 = *(v1 + 104);
  v18 = v1 + 104;
  v16(v3);
  v21[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x8000000267468890);
  v9(v21, 0);
  type metadata accessor for ODDSiriSchemaODDAdaptiveVolumeUserIntent(0);
  sub_267153528(&qword_2800F5D58, type metadata accessor for ODDSiriSchemaODDAdaptiveVolumeUserIntent, &protocol conformance descriptor for ODDSiriSchemaODDAdaptiveVolumeUserIntent);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6576697470616461, 0xEE00656D756C6F56);
  v10(v21, 0);
  v19 = "isMediaPlaybackOn";
  v11 = v16;
  (v16)(v3, v17, v20);
  v21[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, v19 | 0x8000000000000000);
  v12(v21, 0);
  (v11)(v3, *MEMORY[0x277D3E500], v20);
  v21[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x8000000267453850);
  return v13(v21, 0);
}

uint64_t sub_26715341C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267153480(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267153528(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267153570()
{
  result = qword_2800F5D68;
  if (!qword_2800F5D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5D68);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAdaptiveVolumeUserIntent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x80000002674688F0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x8000000267468920, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x8000000267468950, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x8000000267468970, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x80000002674689A0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2671538B4(uint64_t a1)
{
  v2 = sub_2671539B8(&qword_2800F5D70, &protocol conformance descriptor for ODDSiriSchemaODDAdaptiveVolumeUserIntent);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26715391C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671539B8(&qword_2800F5D70, &protocol conformance descriptor for ODDSiriSchemaODDAdaptiveVolumeUserIntent);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671539B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDAdaptiveVolumeUserIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAnnounceNotificationsCarPlayStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002DLL, 0x8000000267468A10, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003BLL, 0x8000000267468A40, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000038, 0x8000000267468A80, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000040, 0x8000000267468AC0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ELL, 0x8000000267468B10, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267153CF0(uint64_t a1)
{
  v2 = sub_267153DF4(&qword_2800F5D80, &protocol conformance descriptor for ODDSiriSchemaODDAnnounceNotificationsCarPlayStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267153D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_267153DF4(&qword_2800F5D80, &protocol conformance descriptor for ODDSiriSchemaODDAnnounceNotificationsCarPlayStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267153DF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDAnnounceNotificationsCarPlayStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAnnounceProperties.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v3 = sub_26738113C();
  v47 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v40 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v48 = a2;
  sub_26738119C();
  v41 = "iri.odd.ODDAnnounceProperties";
  v10 = *MEMORY[0x277D3E4E8];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  v45 = v11;
  v49[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v46 = *(v13 + 56);
  v14 = v13 + 56;
  v44 = v12;
  v46(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v41 | 0x8000000000000000);
  v15(v49, 0);
  v41 = "isAnnounceCallsEnabled";
  v16 = v47;
  v11(v6, v10, v47);
  v40[0] = v4 + 104;
  v49[0] = 1;
  sub_26738114C();
  v40[1] = v14;
  v17 = v46;
  v46(v9, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, v41 | 0x8000000000000000);
  v18(v49, 0);
  v41 = "isAnnounceNotificationsEnabled";
  v19 = v10;
  v20 = v10;
  v43 = v10;
  v21 = v16;
  v22 = v16;
  v23 = v45;
  v45(v6, v19, v21);
  v49[0] = 1;
  sub_26738114C();
  v24 = v44;
  v17(v9, 0, 1, v44);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v41 | 0x8000000000000000);
  v25(v49, 0);
  v41 = "isProximityCardSeen";
  v23(v6, v20, v22);
  v26 = v23;
  v49[0] = 1;
  sub_26738114C();
  v27 = v46;
  v46(v9, 0, 1, v24);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, v41 | 0x8000000000000000);
  v28(v49, 0);
  v41 = "nfirmationEnabled";
  v29 = v43;
  v30 = v47;
  v26(v6, v43, v47);
  v49[0] = 1;
  sub_26738114C();
  v31 = v44;
  v27(v9, 0, 1, v44);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v41 | 0x8000000000000000);
  v32(v49, 0);
  v41 = "isEnabledForHeadphones";
  v33 = v45;
  v45(v6, v29, v30);
  v49[0] = 1;
  sub_26738114C();
  v34 = v46;
  v46(v9, 0, 1, v31);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002FLL, v41 | 0x8000000000000000);
  v35(v49, 0);
  v33(v6, v43, v47);
  v49[0] = 1;
  sub_26738114C();
  v36 = v34;
  v34(v9, 0, 1, v31);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0x616C507261437369, 0xEE00646574754D79);
  v37(v49, 0);
  type metadata accessor for ODDSiriSchemaODDAnnounceNotificationsCarPlayStatus(0);
  sub_26715476C(&qword_2800F5D78, type metadata accessor for ODDSiriSchemaODDAnnounceNotificationsCarPlayStatus, &protocol conformance descriptor for ODDSiriSchemaODDAnnounceNotificationsCarPlayStatus);
  sub_26738120C();
  v36(v9, 0, 1, v31);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0x5379616C50726163, 0xED00007375746174);
  return v38(v49, 0);
}

uint64_t sub_267154660(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671546C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26715476C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671547B4()
{
  result = qword_2800F5D90;
  if (!qword_2800F5D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5D90);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAppleIntelligenceProperties.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v68 = sub_26738113C();
  v3 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v5 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v56 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v65 = "IntelligenceProperties";
  v66 = *MEMORY[0x277D3E4E8];
  v9 = *(v3 + 104);
  v67 = v3 + 104;
  (v9)(v5);
  v70[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v65 | 0x8000000000000000);
  v13(v70, 0);
  v62 = "isAppleIntelligenceEnabled";
  v65 = v9;
  (v9)(v5, v66, v68);
  v70[0] = 1;
  sub_26738114C();
  v57 = v12;
  v58 = v11 + 56;
  v12(v8, 0, 1, v10);
  v14 = sub_2673811AC();
  v15 = v62;
  v56[0] = v8;
  sub_266EC637C(v8, 0xD000000000000021, v62 | 0x8000000000000000);
  v14(v70, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v69, 0xD000000000000021, v15 | 0x8000000000000000);
  v18 = *(v11 + 48);
  v64 = v10;
  v61 = v18;
  v62 = v11 + 48;
  v20 = v18(v19, 1, v10);
  v63 = a2;
  if (!v20)
  {
    sub_266ECB128(&unk_28788A700);
    sub_26738115C();
  }

  (v17)(v69, 0);
  v16(v70, 0);
  v59 = "elligenceActivity";
  v21 = v66;
  (v65)(v5, v66, v68);
  v70[0] = 1;
  v22 = v56[0];
  sub_26738114C();
  v23 = v64;
  v24 = v57;
  v57(v22, 0, 1, v64);
  v25 = sub_2673811AC();
  sub_266EC637C(v22, 0xD000000000000022, v59 | 0x8000000000000000);
  v25(v70, 0);
  v59 = "nceHardwareCapable";
  (v65)(v5, v21, v68);
  v70[0] = 1;
  sub_26738114C();
  v24(v22, 0, 1, v23);
  v26 = sub_2673811AC();
  sub_266EC637C(v22, 0xD00000000000001CLL, v59 | 0x8000000000000000);
  v26(v70, 0);
  (v65)(v5, v21, v68);
  v70[0] = 1;
  v59 = v5;
  sub_26738114C();
  v24(v22, 0, 1, v23);
  v27 = sub_2673811AC();
  sub_266EC637C(v22, 0xD000000000000010, 0x8000000267468D30);
  v27(v70, 0);
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v69, 0xD000000000000010, 0x8000000267468D30);
  if (!v61(v30, 1, v23))
  {
    sub_266ECB128(&unk_28788A730);
    sub_26738115C();
  }

  (v29)(v69, 0);
  v28(v70, 0);
  (v65)(v59, v66, v68);
  v70[0] = 1;
  sub_26738114C();
  v31 = v64;
  v24(v22, 0, 1, v64);
  v32 = sub_2673811AC();
  sub_266EC637C(v22, 0xD000000000000023, 0x8000000267468D50);
  v32(v70, 0);
  v33 = sub_2673811AC();
  v34 = sub_266ECB6CC(v69, 0xD000000000000023, 0x8000000267468D50);
  if (!v61(v35, 1, v31))
  {
    sub_266ECB128(&unk_28788A758);
    sub_26738115C();
  }

  (v34)(v69, 0);
  v33(v70, 0);
  type metadata accessor for GATSchemaGATAccountType(0);
  v37 = v36;
  v56[1] = sub_2671556D4(&qword_2800F1938, type metadata accessor for GATSchemaGATAccountType, &protocol conformance descriptor for GATSchemaGATAccountType);
  v56[2] = v37;
  sub_26738120C();
  v38 = v64;
  v24(v22, 0, 1, v64);
  v39 = sub_2673811AC();
  sub_266EC637C(v22, 0xD000000000000012, 0x8000000267468D80);
  v39(v70, 0);
  v40 = sub_2673811AC();
  v41 = sub_266ECB6CC(v69, 0xD000000000000012, 0x8000000267468D80);
  if (!v61(v42, 1, v38))
  {
    sub_266ECB128(&unk_28788A780);
    sub_26738115C();
  }

  (v41)(v69, 0);
  v40(v70, 0);
  (v65)(v59, v66, v68);
  v70[0] = 1;
  sub_26738114C();
  v43 = v64;
  v24(v22, 0, 1, v64);
  v44 = sub_2673811AC();
  sub_266EC637C(v22, 0xD000000000000015, 0x8000000267468DA0);
  v44(v70, 0);
  v45 = sub_2673811AC();
  v46 = sub_266ECB6CC(v69, 0xD000000000000015, 0x8000000267468DA0);
  if (!v61(v47, 1, v43))
  {
    sub_266ECB128(&unk_28788A7A8);
    sub_26738115C();
  }

  (v46)(v69, 0);
  v45(v70, 0);
  type metadata accessor for SISchemaGenAIAgent(0);
  sub_2671556D4(&qword_2800F1A50, type metadata accessor for SISchemaGenAIAgent, &protocol conformance descriptor for SISchemaGenAIAgent);
  sub_26738122C();
  v48 = v64;
  v24(v22, 0, 1, v64);
  v49 = sub_2673811AC();
  sub_266EC637C(v22, 0xD000000000000012, 0x8000000267468DC0);
  v49(v70, 0);
  v50 = v59;
  v51 = v65;
  (v65)(v59, v66, v68);
  v70[0] = 1;
  sub_26738114C();
  v24(v22, 0, 1, v48);
  v52 = sub_2673811AC();
  sub_266EC637C(v22, 0xD000000000000021, 0x8000000267468DE0);
  v52(v70, 0);
  sub_26738120C();
  v24(v22, 0, 1, v48);
  v53 = sub_2673811AC();
  sub_266EC637C(v22, 0xD000000000000010, 0x8000000267468E10);
  v53(v70, 0);
  v51(v50, v66, v68);
  v70[0] = 1;
  sub_26738114C();
  v24(v22, 0, 1, v48);
  v54 = sub_2673811AC();
  sub_266EC637C(v22, 0xD000000000000013, 0x8000000267468E30);
  return v54(v70, 0);
}

uint64_t sub_2671555C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715562C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671556D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26715571C()
{
  result = qword_2800F5DA0;
  if (!qword_2800F5DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5DA0);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAppTaskType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267468E80, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267468EA0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267468EC0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267468EE0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000019, 0x8000000267468F00, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267155A5C(uint64_t a1)
{
  v2 = sub_267155B60(&qword_2800F5DB0, &protocol conformance descriptor for ODDSiriSchemaODDAppTaskType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267155AC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267155B60(&qword_2800F5DB0, &protocol conformance descriptor for ODDSiriSchemaODDAppTaskType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267155B60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDAppTaskType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAssetAvailabilityFromBootDigest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5DB8, 0x277D591D8);
  sub_266ECAF2C(&qword_2800F5DC0, &qword_2800F5DB8, 0x277D591D8, &protocol conformance descriptor for ODDSiriSchemaODDAssetAvailabilityFromBootDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F5DC8, 0x277D591E0);
  sub_266ECAF2C(&qword_2800F5DD0, &qword_2800F5DC8, 0x277D591E0, &protocol conformance descriptor for ODDSiriSchemaODDAssetAvailabilityFromBootTuples);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73656C707574, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_267155E6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267155ED0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssetAvailabilityFromBootDigestReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5DE8, 0x277D59350);
  sub_266ECAF2C(&qword_2800F5DF0, &qword_2800F5DE8, 0x277D59350, &protocol conformance descriptor for ODDSiriSchemaODDFixedDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6D69446465786966, 0xEF736E6F69736E65);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F5DE0, 0x277D591C8);
  sub_266ECAF2C(&qword_2800F5DD8, &qword_2800F5DE0, 0x277D591C8, &protocol conformance descriptor for ODDSiriSchemaODDAssetAvailabilityFromBootDigest);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_267156248(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671562AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssetAvailabilityFromBootDimensions.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v29 = sub_26738113C();
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E08, 0x277D59248);
  sub_266ECAF2C(&qword_2800F5E10, &qword_2800F5E08, 0x277D59248, &protocol conformance descriptor for ODDSiriSchemaODDAssistantDimensions);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v30 = v7;
  v31 = v8 + 56;
  v9(v6, 0, 1, v7);
  v24 = v9;
  v25 = a2;
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x8000000267468FF0);
  v10(v33, 0);
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v32 + 104);
  v32 += 104;
  v13 = v28;
  v14 = v29;
  v27 = v11;
  v12(v28, v11, v29);
  v26 = v12;
  v33[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x7465537465737361, 0xEA00000000006449);
  v15(v33, 0);
  v12(v13, v11, v14);
  v33[0] = 1;
  sub_26738114C();
  v16 = v30;
  v17 = v24;
  v24(v6, 0, 1, v30);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x7465537465737361, 0xEC000000656D614ELL);
  v18(v33, 0);
  v19 = v26;
  v26(v13, v27, v14);
  v33[0] = 1;
  sub_26738114C();
  v17(v6, 0, 1, v16);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x8000000267469010);
  v20(v33, 0);
  v19(v13, *MEMORY[0x277D3E540], v14);
  v33[0] = 1;
  sub_26738114C();
  v17(v6, 0, 1, v30);
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000002CLL, 0x8000000267469030);
  return v21(v33, 0);
}

uint64_t sub_267156900(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267156964(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssetAvailabilityFromBootTuples.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v3, *MEMORY[0x277D3E500], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x80000002674690A0);
  return v8(v10, 0);
}

uint64_t sub_267156C58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267156CBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267156D20()
{
  result = qword_2800F5DD0;
  if (!qword_2800F5DD0)
  {
    sub_267156D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5DD0);
  }

  return result;
}

unint64_t sub_267156D78()
{
  result = qword_2800F5DC8;
  if (!qword_2800F5DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5DC8);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAssetSetStatusDigest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E18, 0x277D591F8);
  sub_266ECAF2C(&qword_2800F5E20, &qword_2800F5E18, 0x277D591F8, &protocol conformance descriptor for ODDSiriSchemaODDAssetSetStatusDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  return v5(v7, 0);
}

uint64_t sub_267156F9C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E18, 0x277D591F8);
  sub_266ECAF2C(&qword_2800F5E20, &qword_2800F5E18, 0x277D591F8, &protocol conformance descriptor for ODDSiriSchemaODDAssetSetStatusDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  return v5(v7, 0);
}

uint64_t sub_26715713C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671571A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssetSetStatusDigestReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5DE8, 0x277D59350);
  sub_266ECAF2C(&qword_2800F5DF0, &qword_2800F5DE8, 0x277D59350, &protocol conformance descriptor for ODDSiriSchemaODDFixedDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6D69446465786966, 0xEF736E6F69736E65);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F5E30, 0x277D591E8);
  sub_266ECAF2C(&qword_2800F5E28, &qword_2800F5E30, 0x277D591E8, &protocol conformance descriptor for ODDSiriSchemaODDAssetSetStatusDigest);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_267157518(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715757C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssetSetStatusDimensions.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v31 = sub_26738113C();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v24 = a2;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E08, 0x277D59248);
  sub_266ECAF2C(&qword_2800F5E10, &qword_2800F5E08, 0x277D59248, &protocol conformance descriptor for ODDSiriSchemaODDAssistantDimensions);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v25 = v9 + 56;
  v23 = v8;
  v10(v7, 0, 1, v8);
  v22 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x8000000267468FF0);
  v11(v32, 0);
  v26 = "assistantDimensions";
  v12 = *(v3 + 104);
  v13 = v30;
  v12(v30, *MEMORY[0x277D3E530], v31);
  v27 = v12;
  v28 = v3 + 104;
  v32[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v26 | 0x8000000000000000);
  v14(v32, 0);
  LODWORD(v26) = *MEMORY[0x277D3E540];
  (v12)(v13);
  v32[0] = 1;
  sub_26738114C();
  v15 = v22;
  v16 = v23;
  v22(v7, 0, 1, v23);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000002CLL, 0x8000000267469030);
  v17(v32, 0);
  sub_266ECB294(0, &qword_2800F5E48, 0x277D5B1E0);
  sub_266ECAF2C(&qword_2800F5E50, &qword_2800F5E48, 0x277D5B1E0, &protocol conformance descriptor for UAFSchemaUAFAssetSetStatus);
  sub_26738120C();
  v15(v7, 0, 1, v16);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x7465537465737361, 0xEE00737574617453);
  v18(v32, 0);
  sub_266ECB294(0, &qword_2800F5E58, 0x277D592B8);
  sub_266ECAF2C(&qword_2800F5E60, &qword_2800F5E58, 0x277D592B8, &protocol conformance descriptor for ODDSiriSchemaODDClientProcessAssetAvailabilityStatus);
  sub_26738122C();
  v15(v7, 0, 1, v16);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000024, 0x8000000267469170);
  v19(v32, 0);
  v27(v30, v26, v31);
  v32[0] = 1;
  sub_26738114C();
  v15(v7, 0, 1, v16);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000002ELL, 0x80000002674691A0);
  return v20(v32, 0);
}

uint64_t sub_267157CC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267157D24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantCarPlayCounts.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E68, 0x277D59400);
  sub_266ECAF2C(&qword_2800F5E70, &qword_2800F5E68, 0x277D59400, &protocol conformance descriptor for ODDSiriSchemaODDTurnCounts);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F436E727574, 0xEA00000000007374);
  return v5(v7, 0);
}

uint64_t sub_267157FA0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E68, 0x277D59400);
  sub_266ECAF2C(&qword_2800F5E70, &qword_2800F5E68, 0x277D59400, &protocol conformance descriptor for ODDSiriSchemaODDTurnCounts);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F436E727574, 0xEA00000000007374);
  return v5(v7, 0);
}

uint64_t sub_267158140(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671581A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantCarPlayDigest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E88, 0x277D59218);
  sub_266ECAF2C(&qword_2800F5E90, &qword_2800F5E88, 0x277D59218, &protocol conformance descriptor for ODDSiriSchemaODDAssistantCarPlayDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F5E80, 0x277D59200);
  sub_266ECAF2C(&qword_2800F5E78, &qword_2800F5E80, 0x277D59200, &protocol conformance descriptor for ODDSiriSchemaODDAssistantCarPlayCounts);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746E756F63, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_267158510(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267158574(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantCarPlayDigestReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5DE8, 0x277D59350);
  sub_266ECAF2C(&qword_2800F5DF0, &qword_2800F5DE8, 0x277D59350, &protocol conformance descriptor for ODDSiriSchemaODDFixedDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6D69446465786966, 0xEF736E6F69736E65);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F5EA0, 0x277D59208);
  sub_266ECAF2C(&qword_2800F5E98, &qword_2800F5EA0, 0x277D59208, &protocol conformance descriptor for ODDSiriSchemaODDAssistantCarPlayDigest);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_2671588EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267158950(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantCarPlayDimensions.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v32 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v33 = v1;
  v34 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v31 = "AvailabilityFromBootDimensions";
  sub_266ECB294(0, &qword_2800F5E08, 0x277D59248);
  sub_266ECAF2C(&qword_2800F5E10, &qword_2800F5E08, 0x277D59248, &protocol conformance descriptor for ODDSiriSchemaODDAssistantDimensions);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v29 = v8;
  v30 = v9;
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v31 | 0x8000000000000000);
  v10(v35, 0);
  v28 = "tantCarPlayDimensions";
  v11 = *MEMORY[0x277D3E530];
  v12 = v33;
  v13 = v34 + 104;
  v31 = *(v34 + 104);
  (v31)(v4, v11, v33);
  v34 = v13;
  v35[0] = 1;
  sub_26738114C();
  v14 = v8;
  v15 = v30;
  v30(v7, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v28 | 0x8000000000000000);
  v16(v35, 0);
  v17 = v12;
  v18 = v31;
  (v31)(v4, v11, v17);
  v35[0] = 1;
  sub_26738114C();
  v19 = v29;
  v15(v7, 0, 1, v29);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x4E656C6369686576, 0xEB00000000656D61);
  v20(v35, 0);
  v18(v4, v11, v33);
  v35[0] = 1;
  sub_26738114C();
  v21 = v15;
  v15(v7, 0, 1, v19);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0x4D656C6369686576, 0xEC0000006C65646FLL);
  v22(v35, 0);
  type metadata accessor for SISchemaEnhancedVoiceTriggerMode(0);
  sub_2671591F0(&qword_2800F5EB8, type metadata accessor for SISchemaEnhancedVoiceTriggerMode, &protocol conformance descriptor for SISchemaEnhancedVoiceTriggerMode);
  sub_26738120C();
  v21(v7, 0, 1, v19);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x80000002674692F0);
  v23(v35, 0);
  type metadata accessor for SISchemaSiriDirectAction(0);
  sub_2671591F0(&qword_2800F5EC0, type metadata accessor for SISchemaSiriDirectAction, &protocol conformance descriptor for SISchemaSiriDirectAction);
  sub_26738120C();
  v21(v7, 0, 1, v19);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0x6341746365726964, 0xEC0000006E6F6974);
  v24(v35, 0);
  type metadata accessor for SISchemaCarPlayConnection(0);
  sub_2671591F0(&qword_2800F5EC8, type metadata accessor for SISchemaCarPlayConnection, &protocol conformance descriptor for SISchemaCarPlayConnection);
  sub_26738120C();
  v21(v7, 0, 1, v19);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267469310);
  return v25(v35, 0);
}

uint64_t sub_26715912C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267159190(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671591F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ODDSiriSchemaODDAssistantCounts.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E68, 0x277D59400);
  sub_266ECAF2C(&qword_2800F5E70, &qword_2800F5E68, 0x277D59400, &protocol conformance descriptor for ODDSiriSchemaODDTurnCounts);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F436E727574, 0xEA00000000007374);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F5ED0, 0x277D593F0);
  sub_266ECAF2C(&qword_2800F5ED8, &qword_2800F5ED0, 0x277D593F0, &protocol conformance descriptor for ODDSiriSchemaODDTaskCounts);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F436B736174, 0xEA00000000007374);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F5EE0, 0x277D593A8);
  sub_266ECAF2C(&qword_2800F5EE8, &qword_2800F5EE0, 0x277D593A8, &protocol conformance descriptor for ODDSiriSchemaODDReliabilityCounts);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267469360);
  return v8(v10, 0);
}

uint64_t sub_267159620(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267159684(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantDeviceDigestsReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5DE8, 0x277D59350);
  sub_266ECAF2C(&qword_2800F5DF0, &qword_2800F5DE8, 0x277D59350, &protocol conformance descriptor for ODDSiriSchemaODDFixedDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6D69446465786966, 0xEF736E6F69736E65);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F5F00, 0x277D59240);
  sub_266ECAF2C(&qword_2800F5F08, &qword_2800F5F00, 0x277D59240, &protocol conformance descriptor for ODDSiriSchemaODDAssistantDigest);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_2671599FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267159A60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5F20, 0x277D592C8);
  sub_266ECAF2C(&qword_2800F5F28, &qword_2800F5F20, 0x277D592C8, &protocol conformance descriptor for ODDSiriSchemaODDDeviceAndUsageDynamicDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F5F30, 0x277D592C0);
  sub_266ECAF2C(&qword_2800F5F38, &qword_2800F5F30, 0x277D592C0, &protocol conformance descriptor for ODDSiriSchemaODDDeviceAndUsageAppTaskCounts);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x436B736154707061, 0xED000073746E756FLL);
  return v7(v9, 0);
}

uint64_t sub_267159DDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267159E40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigestsReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5DE8, 0x277D59350);
  sub_266ECAF2C(&qword_2800F5DF0, &qword_2800F5DE8, 0x277D59350, &protocol conformance descriptor for ODDSiriSchemaODDFixedDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6D69446465786966, 0xEF736E6F69736E65);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F5F48, 0x277D59230);
  sub_266ECAF2C(&qword_2800F5F40, &qword_2800F5F48, 0x277D59230, &protocol conformance descriptor for ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigest);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_26715A1B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715A21C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantDigest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v14 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E08, 0x277D59248);
  sub_266ECAF2C(&qword_2800F5E10, &qword_2800F5E08, 0x277D59248, &protocol conformance descriptor for ODDSiriSchemaODDAssistantDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v7(v15, 0);
  sub_266ECB294(0, &qword_2800F5EF8, 0x277D59220);
  sub_266ECAF2C(&qword_2800F5EF0, &qword_2800F5EF8, 0x277D59220, &protocol conformance descriptor for ODDSiriSchemaODDAssistantCounts);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746E756F63, 0xE600000000000000);
  v8(v15, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738122C();
  v6(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x7364496E727574, 0xE700000000000000);
  v9(v15, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v14, 0x7364496E727574, 0xE700000000000000);
  if (!(*(v5 + 48))(v12, 1, v4))
  {
    sub_266ECB128(&unk_28788A7D0);
    sub_26738115C();
  }

  (v11)(v14, 0);
  return v10(v15, 0);
}

uint64_t sub_26715A6FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715A760(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantDimensions.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = sub_26738113C();
  v4 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v45 = *MEMORY[0x277D3E530];
  v48 = *(v4 + 104);
  v49 = v4 + 104;
  v44 = v6;
  v48(v6);
  v50[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x75426D6574737973, 0xEB00000000646C69);
  v14(v50, 0);
  type metadata accessor for SISchemaDataSharingOptInState(0);
  sub_26715B4CC(&qword_2800F0418, type metadata accessor for SISchemaDataSharingOptInState, &protocol conformance descriptor for SISchemaDataSharingOptInState);
  v46 = a1;
  sub_26738120C();
  v42 = v13;
  v12(v9, 0, 1, v10);
  v43 = v12;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x80000002674694C0);
  v15(v50, 0);
  type metadata accessor for SISchemaAssistantViewMode(0);
  sub_26715B4CC(&qword_2800F5F60, type metadata accessor for SISchemaAssistantViewMode, &protocol conformance descriptor for SISchemaAssistantViewMode);
  sub_26738120C();
  v16 = v10;
  v41 = v10;
  v12(v9, 0, 1, v10);
  v40 = a2;
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x65746E4977656976, 0xED00006563616672);
  v17(v50, 0);
  v39 = "ntDaemonAudioRecordingFailed";
  v18 = v44;
  v19 = v45;
  v20 = v47;
  v21 = v48;
  (v48)(v44, v45, v47);
  v50[0] = 1;
  sub_26738114C();
  v43(v9, 0, 1, v16);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v39 | 0x8000000000000000);
  v22(v50, 0);
  v21(v18, v19, v20);
  v50[0] = 1;
  sub_26738114C();
  v23 = v41;
  v24 = v43;
  v43(v9, 0, 1, v41);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x8000000267454710);
  v25(v50, 0);
  type metadata accessor for ORCHSchemaORCHSiriAsrMode(0);
  sub_26715B4CC(&qword_2800F5F68, type metadata accessor for ORCHSchemaORCHSiriAsrMode, &protocol conformance descriptor for ORCHSchemaORCHSiriAsrMode);
  sub_26738120C();
  v24(v9, 0, 1, v23);
  v26 = v24;
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x7461636F4C727361, 0xEB000000006E6F69);
  v27(v50, 0);
  type metadata accessor for ORCHSchemaORCHSiriNlMode(0);
  sub_26715B4CC(&qword_2800F5F70, type metadata accessor for ORCHSchemaORCHSiriNlMode, &protocol conformance descriptor for ORCHSchemaORCHSiriNlMode);
  sub_26738120C();
  v28 = v23;
  v26(v9, 0, 1, v23);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0x697461636F4C6C6ELL, 0xEA00000000006E6FLL);
  v29(v50, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900, &protocol conformance descriptor for SISchemaISOLocale);
  sub_26738120C();
  v26(v9, 0, 1, v23);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0x75706E4969726973, 0xEF656C61636F4C74);
  v30(v50, 0);
  v31 = v44;
  (v48)(v44, v45, v47);
  v50[0] = 1;
  sub_26738114C();
  v26(v9, 0, 1, v28);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0x69616D6F44627573, 0xE90000000000006ELL);
  v32(v50, 0);
  type metadata accessor for SISchemaResponseCategory(0);
  sub_26715B4CC(&qword_2800F5F78, type metadata accessor for SISchemaResponseCategory, &protocol conformance descriptor for SISchemaResponseCategory);
  sub_26738120C();
  v26(v9, 0, 1, v28);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x80000002674694E0);
  v33(v50, 0);
  (v48)(v31, *MEMORY[0x277D3E4E8], v47);
  v50[0] = 1;
  sub_26738114C();
  v26(v9, 0, 1, v28);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x8000000267469500);
  v34(v50, 0);
  type metadata accessor for SISchemaIERouting(0);
  sub_26715B4CC(&qword_2800F5F80, type metadata accessor for SISchemaIERouting, &protocol conformance descriptor for SISchemaIERouting);
  sub_26738122C();
  v26(v9, 0, 1, v28);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0x676E6974756F72, 0xE700000000000000);
  v35(v50, 0);
  type metadata accessor for SISchemaInvocationSource(0);
  sub_26715B4CC(&qword_2800F5F88, type metadata accessor for SISchemaInvocationSource, &protocol conformance descriptor for SISchemaInvocationSource);
  sub_26738120C();
  v26(v9, 0, 1, v28);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267469520);
  return v36(v50, 0);
}

uint64_t sub_26715B408(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715B46C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26715B4CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ODDSiriSchemaODDAssistantExperimentCounts.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E68, 0x277D59400);
  sub_266ECAF2C(&qword_2800F5E70, &qword_2800F5E68, 0x277D59400, &protocol conformance descriptor for ODDSiriSchemaODDTurnCounts);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F436E727574, 0xEA00000000007374);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F5ED0, 0x277D593F0);
  sub_266ECAF2C(&qword_2800F5ED8, &qword_2800F5ED0, 0x277D593F0, &protocol conformance descriptor for ODDSiriSchemaODDTaskCounts);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F436B736174, 0xEA00000000007374);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800F5EE0, 0x277D593A8);
  sub_266ECAF2C(&qword_2800F5EE8, &qword_2800F5EE0, 0x277D593A8, &protocol conformance descriptor for ODDSiriSchemaODDReliabilityCounts);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267469360);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800F5F90, 0x277D593D0);
  sub_266ECAF2C(&qword_2800F5F98, &qword_2800F5F90, 0x277D593D0, &protocol conformance descriptor for ODDSiriSchemaODDSessionCounts);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x436E6F6973736573, 0xED000073746E756FLL);
  return v9(v11, 0);
}

uint64_t sub_26715B9D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715BA38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantExperimentDigest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v15 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5FB0, 0x277D59268);
  sub_266ECAF2C(&qword_2800F5FB8, &qword_2800F5FB0, 0x277D59268, &protocol conformance descriptor for ODDSiriSchemaODDAssistantExperimentDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v7(v16, 0);
  sub_266ECB294(0, &qword_2800F5FA8, 0x277D59250);
  sub_266ECAF2C(&qword_2800F5FA0, &qword_2800F5FA8, 0x277D59250, &protocol conformance descriptor for ODDSiriSchemaODDAssistantExperimentCounts);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746E756F63, 0xE600000000000000);
  v8(v16, 0);
  sub_266ECB294(0, &qword_2800F5FC0, 0x277D59270);
  sub_266ECAF2C(&qword_2800F5FC8, &qword_2800F5FC0, 0x277D59270, &protocol conformance descriptor for ODDSiriSchemaODDAssistantExperimentTuples);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x73656C707574, 0xE600000000000000);
  v9(v16, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738122C();
  v6(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0x7364496E727574, 0xE700000000000000);
  v10(v16, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v15, 0x7364496E727574, 0xE700000000000000);
  if (!(*(v5 + 48))(v13, 1, v4))
  {
    sub_266ECB128(&unk_28788A800);
    sub_26738115C();
  }

  (v12)(v15, 0);
  return v11(v16, 0);
}

uint64_t sub_26715BFE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715C044(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantExperimentDigestsReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ODDSiriSchemaODDExperimentDigestType(0);
  sub_26715C5DC();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954747365676964, 0xEA00000000006570);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F5FE8, 0x277D59348);
  sub_266ECAF2C(&qword_2800F5FF0, &qword_2800F5FE8, 0x277D59348, &protocol conformance descriptor for ODDSiriSchemaODDExperimentFixedDimensions);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000019, 0x8000000267469600);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800F5DE8, 0x277D59350);
  sub_266ECAF2C(&qword_2800F5DF0, &qword_2800F5DE8, 0x277D59350, &protocol conformance descriptor for ODDSiriSchemaODDFixedDimensions);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6D69446465786966, 0xEF736E6F69736E65);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800F5FD8, 0x277D59258);
  sub_266ECAF2C(&qword_2800F5FD0, &qword_2800F5FD8, 0x277D59258, &protocol conformance descriptor for ODDSiriSchemaODDAssistantExperimentDigest);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v9(v11, 0);
}

uint64_t sub_26715C518(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715C57C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26715C5DC()
{
  result = qword_2800F5FE0;
  if (!qword_2800F5FE0)
  {
    type metadata accessor for ODDSiriSchemaODDExperimentDigestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5FE0);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAssistantExperimentDimensions.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a1;
  v28 = sub_26738113C();
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v27 = "AvailabilityFromBootDimensions";
  sub_266ECB294(0, &qword_2800F5E08, 0x277D59248);
  sub_266ECAF2C(&qword_2800F5E10, &qword_2800F5E08, 0x277D59248, &protocol conformance descriptor for ODDSiriSchemaODDAssistantDimensions);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v27 | 0x8000000000000000);
  v11(v32, 0);
  type metadata accessor for EXPSchemaEXPTreatmentAllocationStatus(0);
  sub_266F6B05C();
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x8000000267469660);
  v12(v32, 0);
  v13 = *MEMORY[0x277D3E4E8];
  v14 = *(v30 + 104);
  v30 += 104;
  v23 = v14;
  v14(v4, v13, v28);
  v32[0] = 1;
  v26 = v4;
  sub_26738114C();
  v24 = v10;
  v25 = v9 + 56;
  v10(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x6567676972547369, 0xEB00000000646572);
  v15(v32, 0);
  v27 = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v31, 0x6567676972547369, 0xEB00000000646572);
  if (!(*(v9 + 48))(v18, 1, v8))
  {
    sub_266ECB128(&unk_28788A830);
    sub_26738115C();
  }

  (v17)(v31, 0);
  v16(v32, 0);
  v23(v26, v13, v28);
  v32[0] = 1;
  sub_26738114C();
  v19 = v24;
  v24(v7, 0, 1, v8);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000021, 0x8000000267469680);
  v20(v32, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v19(v7, 0, 1, v8);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0x6874615065646F63, 0xEA00000000006449);
  return v21(v32, 0);
}

uint64_t sub_26715CCC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715CD24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDAssistantExperimentTuples.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v35 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v3 + 104);
  v33 = *MEMORY[0x277D3E500];
  v9 = v33;
  v10(v5, v33, v2);
  v34 = v10;
  v37[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v31 = *(v12 + 56);
  v32 = v12 + 56;
  v36 = v11;
  v31(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x695468636E75616CLL, 0xEE00734D6E49656DLL);
  v13(v37, 0);
  v14 = v9;
  v15 = v35;
  v10(v5, v14, v35);
  v37[0] = 1;
  sub_26738114C();
  v16 = v11;
  v17 = v31;
  v31(v8, 0, 1, v16);
  v30[1] = a1;
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674696F0);
  v18(v37, 0);
  v30[0] = "endpointDelayInMs";
  v19 = v33;
  v20 = v15;
  v21 = v34;
  v34(v5, v33, v20);
  v37[0] = 1;
  sub_26738114C();
  v17(v8, 0, 1, v36);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, v30[0] | 0x8000000000000000);
  v22(v37, 0);
  v23 = v19;
  v24 = v35;
  v21(v5, v23, v35);
  v37[0] = 1;
  sub_26738114C();
  v25 = v36;
  v26 = v31;
  v31(v8, 0, 1, v36);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0x75556F54656D6974, 0xEE00734D6E497266);
  v27(v37, 0);
  v34(v5, v33, v24);
  v37[0] = 1;
  sub_26738114C();
  v26(v8, 0, 1, v25);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267469730);
  return v28(v37, 0);
}

uint64_t sub_26715D370(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715D3D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26715D438()
{
  result = qword_2800F5FC8;
  if (!qword_2800F5FC8)
  {
    sub_26715D490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5FC8);
  }

  return result;
}

unint64_t sub_26715D490()
{
  result = qword_2800F5FC0;
  if (!qword_2800F5FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5FC0);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAssistantProperties.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v28 = a1;
  v25 = sub_26738113C();
  v1 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v27 = *MEMORY[0x277D3E4E8];
  v7 = *(v1 + 104);
  v26 = v1 + 104;
  v29 = v7;
  v7(v3);
  v30[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v6, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267469780);
  v10(v30, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900, &protocol conformance descriptor for SISchemaISOLocale);
  sub_26738120C();
  v9(v6, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x636F4C7475706E69, 0xEB00000000656C61);
  v11(v30, 0);
  type metadata accessor for ODDSiriSchemaODDListenFor(0);
  sub_26715DF58(&qword_2800F6008, type metadata accessor for ODDSiriSchemaODDListenFor, &protocol conformance descriptor for ODDSiriSchemaODDListenFor);
  sub_26738120C();
  v9(v6, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F466E657473696CLL, 0xE900000000000072);
  v12(v30, 0);
  v24 = "isAssistantEnabled";
  v13 = v3;
  v14 = v3;
  v15 = v25;
  v29(v14, *MEMORY[0x277D3E508], v25);
  v30[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, v24 | 0x8000000000000000);
  v16(v30, 0);
  v29(v13, v27, v15);
  v30[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x80000002674697C0);
  v17(v30, 0);
  sub_266ECB294(0, &qword_2800F6010, 0x277D59410);
  sub_266ECAF2C(&qword_2800F6018, &qword_2800F6010, 0x277D59410, &protocol conformance descriptor for ODDSiriSchemaODDVoiceProperties);
  sub_26738120C();
  v9(v6, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x6563696F76, 0xE500000000000000);
  v18(v30, 0);
  sub_266ECB294(0, &qword_2800F6020, 0x277D593A0);
  sub_266ECAF2C(&qword_2800F6028, &qword_2800F6020, 0x277D593A0, &protocol conformance descriptor for ODDSiriSchemaODDOptInProperties);
  sub_26738120C();
  v9(v6, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E4974706FLL, 0xE500000000000000);
  v19(v30, 0);
  sub_266ECB294(0, &qword_2800F6030, 0x277D59370);
  sub_266ECAF2C(&qword_2800F6038, &qword_2800F6030, 0x277D59370, &protocol conformance descriptor for ODDSiriSchemaODDHomeKitProperties);
  sub_26738120C();
  v9(v6, 0, 1, v8);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0x74694B656D6F68, 0xE700000000000000);
  v20(v30, 0);
  type metadata accessor for ODDSiriSchemaODDLocationAccessPermission(0);
  sub_26715DF58(&qword_2800F6040, type metadata accessor for ODDSiriSchemaODDLocationAccessPermission, &protocol conformance descriptor for ODDSiriSchemaODDLocationAccessPermission);
  sub_26738120C();
  v9(v6, 0, 1, v8);
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x80000002674697E0);
  v21(v30, 0);
  sub_266ECB294(0, &qword_2800F5DA0, 0x277D591C0);
  sub_266ECAF2C(&qword_2800F5D98, &qword_2800F5DA0, 0x277D591C0, &protocol conformance descriptor for ODDSiriSchemaODDAppleIntelligenceProperties);
  sub_26738120C();
  v9(v6, 0, 1, v8);
  v22 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x8000000267469800);
  return v22(v30, 0);
}

uint64_t sub_26715DE94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715DEF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26715DF58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ODDSiriSchemaODDAudibleVoiceFeedbackSetting.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267469860, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x8000000267469880, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x80000002674698B0, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x80000002674698E0, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x8000000267469910, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x8000000267469930, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000024, 0x8000000267469960, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26715E3C0(uint64_t a1)
{
  v2 = sub_26715E4C4(&qword_2800F6060, &protocol conformance descriptor for ODDSiriSchemaODDAudibleVoiceFeedbackSetting);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26715E428(uint64_t a1, uint64_t a2)
{
  v4 = sub_26715E4C4(&qword_2800F6060, &protocol conformance descriptor for ODDSiriSchemaODDAudibleVoiceFeedbackSetting);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26715E4C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDAudibleVoiceFeedbackSetting(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDAutoSendMessageProperties.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v25 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v23 = a1;
  sub_26738119C();
  v24 = "endMessageProperties";
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v3 + 104);
  v26 = v3 + 104;
  v22 = v9;
  v10(v5, v9, v2);
  v11 = v10;
  v21 = v10;
  v27[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v8, 0, 1, v12);
  v14 = v13;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, v24 | 0x8000000000000000);
  v15(v27, 0);
  v24 = "nfirmationEnabled";
  v16 = v9;
  v17 = v25;
  v11(v5, v16, v25);
  v27[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v24 | 0x8000000000000000);
  v18(v27, 0);
  v21(v5, v22, v17);
  v27[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267469A00);
  return v19(v27, 0);
}

uint64_t sub_26715E91C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715E980(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26715E9E4()
{
  result = qword_2800F6068;
  if (!qword_2800F6068)
  {
    sub_26715EA3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6068);
  }

  return result;
}

unint64_t sub_26715EA3C()
{
  result = qword_2800F6070;
  if (!qword_2800F6070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6070);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDCarPlayProperties.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "iri.odd.ODDCarPlayProperties";
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, 0x8000000267469A80);
  return v14(v19, 0);
}

uint64_t sub_26715EDBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715EE20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26715EE84()
{
  result = qword_2800F6078;
  if (!qword_2800F6078)
  {
    sub_26715EEDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6078);
  }

  return result;
}

unint64_t sub_26715EEDC()
{
  result = qword_2800F6080;
  if (!qword_2800F6080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6080);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v41 = sub_26738113C();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v31 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v10 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v39 = v9;
  v40 = v10;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v8, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x644964646FLL, 0xE500000000000000);
  v15(v42, 0);
  v32 = *MEMORY[0x277D3E540];
  v16 = *(v3 + 104);
  v37 = v3 + 104;
  v38 = v16;
  v35 = v5;
  (v16)(v5);
  v42[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267468710);
  v17(v42, 0);
  sub_266ECB294(0, &qword_2800F5D38, 0x277D593F8);
  sub_266ECAF2C(&qword_2800F5D40, &qword_2800F5D38, 0x277D593F8, &protocol conformance descriptor for ODDSiriSchemaODDTimeInterval);
  sub_26738120C();
  v34 = v13;
  v31[1] = v14;
  v13(v8, 0, 1, v11);
  v33 = a2;
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x80000002674686F0);
  v18(v42, 0);
  sub_26738120C();
  v13(v8, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026742BA40);
  v19(v42, 0);
  v31[0] = "userAggregationId";
  v20 = v35;
  v21 = v32;
  v22 = v41;
  v23 = v38;
  v38(v35, v32, v41);
  v42[0] = 1;
  sub_26738114C();
  v34(v8, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, v31[0] | 0x8000000000000000);
  v24(v42, 0);
  v31[0] = "dRotationTimestampMs";
  v23(v20, v21, v22);
  v42[0] = 1;
  sub_26738114C();
  v25 = v34;
  v34(v8, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000026, v31[0] | 0x8000000000000000);
  v26(v42, 0);
  type metadata accessor for ODDSiriSchemaODDEventOrigin(0);
  sub_26715F81C();
  sub_26738120C();
  v25(v8, 0, 1, v11);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0x69724F746E657665, 0xEB000000006E6967);
  v27(v42, 0);
  sub_26738120C();
  v25(v8, 0, 1, v11);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026742B9C0);
  v28(v42, 0);
  v38(v35, *MEMORY[0x277D3E4E8], v41);
  v42[0] = 1;
  sub_26738114C();
  v25(v8, 0, 1, v11);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267469AE0);
  return v29(v42, 0);
}

uint64_t sub_26715F758(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715F7BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26715F81C()
{
  result = qword_2800F6088;
  if (!qword_2800F6088)
  {
    type metadata accessor for ODDSiriSchemaODDEventOrigin(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6088);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDClientProcessAssetAvailabilityStatus.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F60A0, 0x277D59360);
  sub_266ECAF2C(&qword_2800F60A8, &qword_2800F60A0, 0x277D59360, &protocol conformance descriptor for ODDSiriSchemaODDGmsAssetAvailabilityStatus);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001ALL, 0x8000000267469B40);
  return v5(v7, 0);
}

uint64_t sub_26715FAB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26715FB14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDataAvailabilityState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267469BA0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267469BD0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x8000000267469C00, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26715FDD0(uint64_t a1)
{
  v2 = sub_26715FED4(&qword_2800F60B8, &protocol conformance descriptor for ODDSiriSchemaODDDataAvailabilityState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26715FE38(uint64_t a1, uint64_t a2)
{
  v4 = sub_26715FED4(&qword_2800F60B8, &protocol conformance descriptor for ODDSiriSchemaODDDataAvailabilityState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26715FED4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDDataAvailabilityState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDDeviceAndUsageAppTaskCounts.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v29 = "eAndUsageAppTaskCounts";
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
  sub_266EC637C(v8, 0xD000000000000019, v29 | 0x8000000000000000);
  v13(v32, 0);
  v29 = "completedSiriAppTaskCount";
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
  sub_266EC637C(v8, 0xD000000000000016, v29 | 0x8000000000000000);
  v18(v32, 0);
  v29 = "failedSiriAppTaskCount";
  v16(v5, v15, v17);
  v32[0] = 1;
  sub_26738114C();
  v19 = v27;
  v12(v8, 0, 1, v27);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v29 | 0x8000000000000000);
  v20(v32, 0);
  v16(v5, v24, v31);
  v32[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267469CD0);
  return v21(v32, 0);
}

uint64_t sub_2671603F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267160458(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671604BC()
{
  result = qword_2800F5F38;
  if (!qword_2800F5F38)
  {
    sub_267160514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5F38);
  }

  return result;
}

unint64_t sub_267160514()
{
  result = qword_2800F5F30;
  if (!qword_2800F5F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5F30);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDDeviceAndUsageDynamicDimensions.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900, &protocol conformance descriptor for SISchemaISOLocale);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x75706E4969726973, 0xEF656C61636F4C74);
  v6(v12, 0);
  type metadata accessor for SISchemaAssistantViewMode(0);
  sub_267160B3C(&qword_2800F5F60, type metadata accessor for SISchemaAssistantViewMode, &protocol conformance descriptor for SISchemaAssistantViewMode);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x65746E4977656976, 0xED00006563616672);
  v7(v12, 0);
  type metadata accessor for MHSchemaMHAssistantDaemonAudioInputRoute(0);
  sub_267160B3C(&qword_2800F3FD0, type metadata accessor for MHSchemaMHAssistantDaemonAudioInputRoute, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioInputRoute);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x746E496F69647561, 0xEE00656361667265);
  v8(v12, 0);
  type metadata accessor for ODDSiriSchemaODDAppTaskType(0);
  sub_267160B3C(&qword_2800F5DA8, type metadata accessor for ODDSiriSchemaODDAppTaskType, &protocol conformance descriptor for ODDSiriSchemaODDAppTaskType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x546B736154707061, 0xEB00000000657079);
  v9(v12, 0);
  type metadata accessor for ODDSiriSchemaODDTaskAppBundleId(0);
  sub_267160B3C(&qword_2800F60C0, type metadata accessor for ODDSiriSchemaODDTaskAppBundleId, &protocol conformance descriptor for ODDSiriSchemaODDTaskAppBundleId);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0x427070416B736174, 0xEF6449656C646E75);
  return v10(v12, 0);
}

uint64_t sub_267160A78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267160ADC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267160B3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ODDSiriSchemaODDDeviceCohort.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5D38, 0x277D593F8);
  sub_266ECAF2C(&qword_2800F5D40, &qword_2800F5D38, 0x277D593F8, &protocol conformance descriptor for ODDSiriSchemaODDTimeInterval);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E4974726F686F63, 0xEE006C6176726574);
  v6(v10, 0);
  type metadata accessor for ODDSiriSchemaODDDeviceCohortType(0);
  sub_267161010(&qword_2800F60C8, type metadata accessor for ODDSiriSchemaODDDeviceCohortType, &protocol conformance descriptor for ODDSiriSchemaODDDeviceCohortType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x795474726F686F63, 0xEA00000000006570);
  v7(v10, 0);
  type metadata accessor for ODDSiriSchemaODDDataAvailabilityState(0);
  sub_267161010(&qword_2800F60B0, type metadata accessor for ODDSiriSchemaODDDataAvailabilityState, &protocol conformance descriptor for ODDSiriSchemaODDDataAvailabilityState);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001BLL, 0x8000000267469D60);
  return v8(v10, 0);
}

uint64_t sub_267160F4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267160FB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267161010(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ODDSiriSchemaODDDeviceCohortsReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F60D8, 0x277D592D0);
  sub_266ECAF2C(&qword_2800F60D0, &qword_2800F60D8, 0x277D592D0, &protocol conformance descriptor for ODDSiriSchemaODDDeviceCohort);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7374726F686F63, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_267161270(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F60D8, 0x277D592D0);
  sub_266ECAF2C(&qword_2800F60D0, &qword_2800F60D8, 0x277D592D0, &protocol conformance descriptor for ODDSiriSchemaODDDeviceCohort);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7374726F686F63, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_26716140C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267161470(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDeviceCohortType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267469DF0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x8000000267469E10, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267469E30, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26716172C(uint64_t a1)
{
  v2 = sub_267161830(&qword_2800F60F0, &protocol conformance descriptor for ODDSiriSchemaODDDeviceCohortType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267161794(uint64_t a1, uint64_t a2)
{
  v4 = sub_267161830(&qword_2800F60F0, &protocol conformance descriptor for ODDSiriSchemaODDDeviceCohortType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267161830(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDDeviceCohortType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDDeviceSegment.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ODDSiriSchemaODDDeviceSegmentType(0);
  sub_267161C34(&qword_2800F60F8, type metadata accessor for ODDSiriSchemaODDDeviceSegmentType, &protocol conformance descriptor for ODDSiriSchemaODDDeviceSegmentType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x54746E656D676573, 0xEB00000000657079);
  v6(v9, 0);
  type metadata accessor for ODDSiriSchemaODDDataAvailabilityState(0);
  sub_267161C34(&qword_2800F60B0, type metadata accessor for ODDSiriSchemaODDDataAvailabilityState, &protocol conformance descriptor for ODDSiriSchemaODDDataAvailabilityState);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001CLL, 0x8000000267469E80);
  return v7(v9, 0);
}

uint64_t sub_267161B28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267161B8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267161C34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267161C7C()
{
  result = qword_2800F6108;
  if (!qword_2800F6108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6108);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDDeviceSegmentsReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6108, 0x277D592E0);
  sub_266ECAF2C(&qword_2800F6100, &qword_2800F6108, 0x277D592E0, &protocol conformance descriptor for ODDSiriSchemaODDDeviceSegment);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746E656D676573, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_267161E9C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6108, 0x277D592E0);
  sub_266ECAF2C(&qword_2800F6100, &qword_2800F6108, 0x277D592E0, &protocol conformance descriptor for ODDSiriSchemaODDDeviceSegment);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746E656D676573, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_267162038(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716209C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDeviceSegmentType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x8000000267469F10, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267469F30, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x8000000267469F50, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267162354(uint64_t a1)
{
  v2 = sub_267162458(&qword_2800F6120, &protocol conformance descriptor for ODDSiriSchemaODDDeviceSegmentType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671623BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267162458(&qword_2800F6120, &protocol conformance descriptor for ODDSiriSchemaODDDeviceSegmentType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267162458(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDDeviceSegmentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDDictationCounts.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E68, 0x277D59400);
  sub_266ECAF2C(&qword_2800F5E70, &qword_2800F5E68, 0x277D59400, &protocol conformance descriptor for ODDSiriSchemaODDTurnCounts);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F436E727574, 0xEA00000000007374);
  return v5(v7, 0);
}

uint64_t sub_267162674(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E68, 0x277D59400);
  sub_266ECAF2C(&qword_2800F5E70, &qword_2800F5E68, 0x277D59400, &protocol conformance descriptor for ODDSiriSchemaODDTurnCounts);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F436E727574, 0xEA00000000007374);
  return v5(v7, 0);
}

uint64_t sub_267162814(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267162878(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDictationDeviceDigestsReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5DE8, 0x277D59350);
  sub_266ECAF2C(&qword_2800F5DF0, &qword_2800F5DE8, 0x277D59350, &protocol conformance descriptor for ODDSiriSchemaODDFixedDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6D69446465786966, 0xEF736E6F69736E65);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F6138, 0x277D59300);
  sub_266ECAF2C(&qword_2800F6140, &qword_2800F6138, 0x277D59300, &protocol conformance descriptor for ODDSiriSchemaODDDictationDigest);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_267162BF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267162C54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDictationDigest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v14 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6158, 0x277D59308);
  sub_266ECAF2C(&qword_2800F6160, &qword_2800F6158, 0x277D59308, &protocol conformance descriptor for ODDSiriSchemaODDDictationDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v7(v15, 0);
  sub_266ECB294(0, &qword_2800F6130, 0x277D592F0);
  sub_266ECAF2C(&qword_2800F6128, &qword_2800F6130, 0x277D592F0, &protocol conformance descriptor for ODDSiriSchemaODDDictationCounts);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746E756F63, 0xE600000000000000);
  v8(v15, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738122C();
  v6(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x7364496E727574, 0xE700000000000000);
  v9(v15, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v14, 0x7364496E727574, 0xE700000000000000);
  if (!(*(v5 + 48))(v12, 1, v4))
  {
    sub_266ECB128(&unk_28788A858);
    sub_26738115C();
  }

  (v11)(v14, 0);
  return v10(v15, 0);
}

uint64_t sub_267163134(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267163198(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDictationDimensions.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v32 = sub_26738113C();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v31 = *MEMORY[0x277D3E530];
  v8 = *(v2 + 104);
  v33 = v2 + 104;
  v34 = v8;
  v29 = v4;
  (v8)(v4);
  v37[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x75426D6574737973, 0xEB00000000646C69);
  v13(v37, 0);
  type metadata accessor for SISchemaDataSharingOptInState(0);
  sub_267163AFC(&qword_2800F0418, type metadata accessor for SISchemaDataSharingOptInState, &protocol conformance descriptor for SISchemaDataSharingOptInState);
  v30 = a1;
  sub_26738120C();
  v35 = v11;
  v36 = v12;
  v11(v7, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x80000002674694C0);
  v14(v37, 0);
  type metadata accessor for SISchemaAssistantViewMode(0);
  sub_267163AFC(&qword_2800F5F60, type metadata accessor for SISchemaAssistantViewMode, &protocol conformance descriptor for SISchemaAssistantViewMode);
  sub_26738120C();
  v11(v7, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x65746E4977656976, 0xED00006563616672);
  v15(v37, 0);
  v28 = "ntDaemonAudioRecordingFailed";
  v16 = v29;
  v17 = v31;
  v18 = v32;
  v19 = v34;
  v34(v29, v31, v32);
  v37[0] = 1;
  sub_26738114C();
  v35(v7, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, v28 | 0x8000000000000000);
  v20(v37, 0);
  v19(v16, v17, v18);
  v37[0] = 1;
  sub_26738114C();
  v21 = v35;
  v35(v7, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x8000000267454710);
  v22(v37, 0);
  type metadata accessor for ORCHSchemaORCHSiriAsrMode(0);
  sub_267163AFC(&qword_2800F5F68, type metadata accessor for ORCHSchemaORCHSiriAsrMode, &protocol conformance descriptor for ORCHSchemaORCHSiriAsrMode);
  sub_26738120C();
  v21(v7, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0x7461636F4C727361, 0xEB000000006E6F69);
  v23(v37, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900, &protocol conformance descriptor for SISchemaISOLocale);
  sub_26738120C();
  v21(v7, 0, 1, v9);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F69746174636964, 0xEF656C61636F4C6ELL);
  v24(v37, 0);
  type metadata accessor for SISchemaInvocationSource(0);
  sub_267163AFC(&qword_2800F5F88, type metadata accessor for SISchemaInvocationSource, &protocol conformance descriptor for SISchemaInvocationSource);
  sub_26738120C();
  v21(v7, 0, 1, v9);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x8000000267469520);
  return v25(v37, 0);
}

uint64_t sub_267163A38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267163A9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267163AFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ODDSiriSchemaODDDictationExperimentCounts.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E68, 0x277D59400);
  sub_266ECAF2C(&qword_2800F5E70, &qword_2800F5E68, 0x277D59400, &protocol conformance descriptor for ODDSiriSchemaODDTurnCounts);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F436E727574, 0xEA00000000007374);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F5ED0, 0x277D593F0);
  sub_266ECAF2C(&qword_2800F5ED8, &qword_2800F5ED0, 0x277D593F0, &protocol conformance descriptor for ODDSiriSchemaODDTaskCounts);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F436B736174, 0xEA00000000007374);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F5EE0, 0x277D593A8);
  sub_266ECAF2C(&qword_2800F5EE8, &qword_2800F5EE0, 0x277D593A8, &protocol conformance descriptor for ODDSiriSchemaODDReliabilityCounts);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267469360);
  return v8(v10, 0);
}

uint64_t sub_267163F2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267163F90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDictationExperimentDigest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v15 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6178, 0x277D59328);
  sub_266ECAF2C(&qword_2800F6180, &qword_2800F6178, 0x277D59328, &protocol conformance descriptor for ODDSiriSchemaODDDictationExperimentDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v7(v16, 0);
  sub_266ECB294(0, &qword_2800F6170, 0x277D59310);
  sub_266ECAF2C(&qword_2800F6168, &qword_2800F6170, 0x277D59310, &protocol conformance descriptor for ODDSiriSchemaODDDictationExperimentCounts);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746E756F63, 0xE600000000000000);
  v8(v16, 0);
  sub_266ECB294(0, &qword_2800F6188, 0x277D59330);
  sub_266ECAF2C(&qword_2800F6190, &qword_2800F6188, 0x277D59330, &protocol conformance descriptor for ODDSiriSchemaODDDictationExperimentTuples);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x73656C707574, 0xE600000000000000);
  v9(v16, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738122C();
  v6(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0x7364496E727574, 0xE700000000000000);
  v10(v16, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v15, 0x7364496E727574, 0xE700000000000000);
  if (!(*(v5 + 48))(v13, 1, v4))
  {
    sub_266ECB128(&unk_28788A888);
    sub_26738115C();
  }

  (v12)(v15, 0);
  return v11(v16, 0);
}

uint64_t sub_267164538(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716459C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDictationExperimentDigestsReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ODDSiriSchemaODDExperimentDigestType(0);
  sub_26715C5DC();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954747365676964, 0xEA00000000006570);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F5FE8, 0x277D59348);
  sub_266ECAF2C(&qword_2800F5FF0, &qword_2800F5FE8, 0x277D59348, &protocol conformance descriptor for ODDSiriSchemaODDExperimentFixedDimensions);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000019, 0x8000000267469600);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800F5DE8, 0x277D59350);
  sub_266ECAF2C(&qword_2800F5DF0, &qword_2800F5DE8, 0x277D59350, &protocol conformance descriptor for ODDSiriSchemaODDFixedDimensions);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6D69446465786966, 0xEF736E6F69736E65);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800F61A0, 0x277D59318);
  sub_266ECAF2C(&qword_2800F6198, &qword_2800F61A0, 0x277D59318, &protocol conformance descriptor for ODDSiriSchemaODDDictationExperimentDigest);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v9(v11, 0);
}

uint64_t sub_267164A70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267164AD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDictationExperimentDimensions.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F6158, 0x277D59308);
  sub_266ECAF2C(&qword_2800F6160, &qword_2800F6158, 0x277D59308, &protocol conformance descriptor for ODDSiriSchemaODDDictationDimensions);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x800000026746A150);
  v8(v17, 0);
  type metadata accessor for EXPSchemaEXPTreatmentAllocationStatus(0);
  sub_266F6B05C();
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001ALL, 0x8000000267469660);
  v9(v17, 0);
  (*(v15 + 104))(v14, *MEMORY[0x277D3E4E8], v16);
  v17[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000021, 0x8000000267469680);
  v10(v17, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x6874615065646F63, 0xEA00000000006449);
  return v11(v17, 0);
}

uint64_t sub_267165024(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267165088(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDDictationExperimentTuples.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v35 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v3 + 104);
  v33 = *MEMORY[0x277D3E500];
  v9 = v33;
  v10(v5, v33, v2);
  v34 = v10;
  v37[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v31 = *(v12 + 56);
  v32 = v12 + 56;
  v36 = v11;
  v31(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x695468636E75616CLL, 0xEE00734D6E49656DLL);
  v13(v37, 0);
  v14 = v9;
  v15 = v35;
  v10(v5, v14, v35);
  v37[0] = 1;
  sub_26738114C();
  v16 = v11;
  v17 = v31;
  v31(v8, 0, 1, v16);
  v30[1] = a1;
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674696F0);
  v18(v37, 0);
  v30[0] = "endpointDelayInMs";
  v19 = v33;
  v20 = v15;
  v21 = v34;
  v34(v5, v33, v20);
  v37[0] = 1;
  sub_26738114C();
  v17(v8, 0, 1, v36);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, v30[0] | 0x8000000000000000);
  v22(v37, 0);
  v23 = v19;
  v24 = v35;
  v21(v5, v23, v35);
  v37[0] = 1;
  sub_26738114C();
  v25 = v36;
  v26 = v31;
  v31(v8, 0, 1, v36);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0x75556F54656D6974, 0xEE00734D6E497266);
  v27(v37, 0);
  v34(v5, v33, v24);
  v37[0] = 1;
  sub_26738114C();
  v26(v8, 0, 1, v25);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267469730);
  return v28(v37, 0);
}

uint64_t sub_2671656D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267165738(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26716579C()
{
  result = qword_2800F6190;
  if (!qword_2800F6190)
  {
    sub_2671657F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6190);
  }

  return result;
}

unint64_t sub_2671657F4()
{
  result = qword_2800F6188;
  if (!qword_2800F6188)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6188);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDDictationProperties.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v19 = a1;
  v17 = sub_26738113C();
  v1 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v15 = *MEMORY[0x277D3E4E8];
  v7 = *(v1 + 104);
  v16 = v1 + 104;
  v18 = v7;
  v7(v3);
  v20[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v6, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x800000026746A1E0);
  v10(v20, 0);
  sub_266ECB294(0, &qword_2800F61B8, 0x277D5A948);
  sub_266ECAF2C(&qword_2800F61C0, &qword_2800F61B8, 0x277D5A948, &protocol conformance descriptor for SISchemaLocaleIdentifier);
  sub_26738122C();
  v9(v6, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x800000026746A200);
  v11(v20, 0);
  v18(v3, v15, v17);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x800000026746A220);
  return v12(v20, 0);
}

uint64_t sub_267165C4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267165CB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDEventOrigin.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x800000026746A270, isUniquelyReferenced_nonNull_native);
  *v3 = v25;

  v1(v30, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x800000026746A290, v8);
  *v7 = v26;

  v5(v30, 0);
  v9 = sub_266ECB128(&unk_28788A8B8);
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
  sub_266ECD368(2, 0xD000000000000015, 0x800000026746A2B0, v19);
  *v18 = v28;

  v16(v30, 0);
  v20 = sub_26738111C();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v22;
  *v22 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000013, 0x800000026746A2D0, v23);
  *v22 = v29;

  return v20(v30, 0);
}

uint64_t sub_267166050(uint64_t a1)
{
  v2 = sub_267166154(&qword_2800F61D8, &protocol conformance descriptor for ODDSiriSchemaODDEventOrigin);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671660B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267166154(&qword_2800F61D8, &protocol conformance descriptor for ODDSiriSchemaODDEventOrigin);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267166154(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDEventOrigin(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDExecutionMetadataReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ODDSiriSchemaODDExtensionName(0);
  sub_267166564(&qword_2800F61E0, type metadata accessor for ODDSiriSchemaODDExtensionName, &protocol conformance descriptor for ODDSiriSchemaODDExtensionName);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E65747865, 0xED0000656D614E6ELL);
  v6(v9, 0);
  type metadata accessor for ODDSiriSchemaODDExecutionStatus(0);
  sub_267166564(&qword_2800F61E8, type metadata accessor for ODDSiriSchemaODDExecutionStatus, &protocol conformance descriptor for ODDSiriSchemaODDExecutionStatus);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69747563657865, 0xEF7375746174536ELL);
  return v7(v9, 0);
}

uint64_t sub_267166458(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671664BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267166564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671665AC()
{
  result = qword_2800F61F8;
  if (!qword_2800F61F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F61F8);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDExecutionStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026746A360, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x800000026746A380, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_26716679C(uint64_t a1)
{
  v2 = sub_2671668A0(&qword_2800F6200, &protocol conformance descriptor for ODDSiriSchemaODDExecutionStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267166804(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671668A0(&qword_2800F6200, &protocol conformance descriptor for ODDSiriSchemaODDExecutionStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671668A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDExecutionStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDExperimentDigestType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026746A3D0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x800000026746A3F0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x800000026746A410, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x800000026746A430, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001CLL, 0x800000026746A460, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267166BD8(uint64_t a1)
{
  v2 = sub_267166CDC(&qword_2800F6208, &protocol conformance descriptor for ODDSiriSchemaODDExperimentDigestType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267166C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_267166CDC(&qword_2800F6208, &protocol conformance descriptor for ODDSiriSchemaODDExperimentDigestType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267166CDC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDExperimentDigestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDExperimentFixedDimensions.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v8 = *MEMORY[0x277D3E530];
  v16 = *(v2 + 104);
  v16(v4, v8, v1);
  v19[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D697265707865, 0xEC0000006449746ELL);
  v11(v19, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v10(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656D7461657274, 0xEB00000000644974);
  v12(v19, 0);
  v16(v4, *MEMORY[0x277D3E510], v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D796F6C706564, 0xEC0000006449746ELL);
  return v13(v19, 0);
}

uint64_t sub_26716712C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267167190(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDExtensionName.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026746A4F0, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x800000026746A510, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x800000026746A540, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x800000026746A570, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000028, 0x800000026746A5A0, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002DLL, 0x800000026746A5D0, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_267167598(uint64_t a1)
{
  v2 = sub_26716769C(&qword_2800F6210, &protocol conformance descriptor for ODDSiriSchemaODDExtensionName);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267167600(uint64_t a1, uint64_t a2)
{
  v4 = sub_26716769C(&qword_2800F6210, &protocol conformance descriptor for ODDSiriSchemaODDExtensionName);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26716769C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDExtensionName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDFixedDimensions.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0x7954656369766564, 0xEA00000000006570);
  v10(v13, 0);
  type metadata accessor for SISchemaProgramCode(0);
  sub_267167B18(&qword_2800F0448, type metadata accessor for SISchemaProgramCode, &protocol conformance descriptor for SISchemaProgramCode);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x436D6172676F7270, 0xEB0000000065646FLL);
  return v11(v13, 0);
}

uint64_t sub_267167A0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267167A70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267167B18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267167B60()
{
  result = qword_2800F5DE8;
  if (!qword_2800F5DE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5DE8);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDGeneralProperties.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v44 = a1;
  v45 = sub_26738113C();
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v2 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v38 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900, &protocol conformance descriptor for SISchemaISOLocale);
  sub_26738120C();
  v6 = sub_26738116C();
  v46 = *(v6 - 8);
  v7 = *(v46 + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x6F4C6D6574737973, 0xEC000000656C6163);
  v8(v49, 0);
  v9 = *MEMORY[0x277D3E508];
  v10 = *(v47 + 104);
  v47 += 104;
  v42 = v10;
  v10(v2, v9, v45);
  v49[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x6F726665726F7473, 0xEC0000006449746ELL);
  v11(v49, 0);
  type metadata accessor for SISchemaUTCOffset(0);
  sub_267168680();
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v43 = v7;
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x657366664F435455, 0xE900000000000074);
  v12(v49, 0);
  v13 = *MEMORY[0x277D3E530];
  v39 = v2;
  v14 = v13;
  v40 = v13;
  v15 = v45;
  v16 = v42;
  (v42)(v2);
  v49[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 0x7954656369766564, 0xEA00000000006570);
  v17(v49, 0);
  v18 = v39;
  v16(v39, v14, v15);
  v49[0] = 1;
  sub_26738114C();
  v19 = v6;
  v20 = v6;
  v41 = v6;
  v21 = v43;
  v43(v5, 0, 1, v19);
  v22 = sub_2673811AC();
  sub_266EC637C(v5, 0x6D754E6C65646F6DLL, 0xEB00000000726562);
  v22(v49, 0);
  v23 = v45;
  v16(v18, v40, v45);
  v49[0] = 1;
  sub_26738114C();
  v21(v5, 0, 1, v20);
  v24 = sub_2673811AC();
  sub_266EC637C(v5, 0x534F656369766564, 0xE800000000000000);
  v24(v49, 0);
  v25 = v42;
  v42(v18, *MEMORY[0x277D3E4E8], v23);
  v49[0] = 1;
  sub_26738114C();
  v26 = v41;
  v21(v5, 0, 1, v41);
  v27 = sub_2673811AC();
  sub_266EC637C(v5, 0x4465726F74537369, 0xEF65646F4D6F6D65);
  v27(v49, 0);
  v25(v18, *MEMORY[0x277D3E540], v23);
  v49[0] = 1;
  sub_26738114C();
  v21(v5, 0, 1, v26);
  v28 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000002CLL, 0x8000000267469030);
  v28(v49, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v48, 0xD00000000000002CLL, 0x8000000267469030);
  v31 = *(v46 + 48);
  v46 += 48;
  if (!v31(v32, 1, v26))
  {
    sub_266ECB128(&unk_28788A8E0);
    sub_26738115C();
  }

  (v30)(v48, 0);
  v29(v49, 0);
  sub_266ECB294(0, &qword_2800F5E48, 0x277D5B1E0);
  sub_266ECAF2C(&qword_2800F5E50, &qword_2800F5E48, 0x277D5B1E0, &protocol conformance descriptor for UAFSchemaUAFAssetSetStatus);
  sub_26738120C();
  v43(v5, 0, 1, v26);
  v33 = sub_2673811AC();
  sub_266EC637C(v5, 0x7465537465737361, 0xEE00737574617453);
  v33(v49, 0);
  v34 = sub_2673811AC();
  v35 = sub_266ECB6CC(v48, 0x7465537465737361, 0xEE00737574617453);
  if (!v31(v36, 1, v26))
  {
    sub_266ECB128(&unk_28788A908);
    sub_26738115C();
  }

  (v35)(v48, 0);
  return v34(v49, 0);
}

uint64_t sub_2671685BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267168620(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267168680()
{
  result = qword_2800F6218;
  if (!qword_2800F6218)
  {
    type metadata accessor for SISchemaUTCOffset(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6218);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDGmsAssetAvailabilityStatus.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "setAvailabilityStatus";
  v9 = *MEMORY[0x277D3E540];
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
  sub_266EC637C(v8, 0x654D737574617473, 0xED00006567617373);
  return v14(v19, 0);
}

uint64_t sub_267168A54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267168AB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267168B1C()
{
  result = qword_2800F60A8;
  if (!qword_2800F60A8)
  {
    sub_267168B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F60A8);
  }

  return result;
}

unint64_t sub_267168B74()
{
  result = qword_2800F60A0;
  if (!qword_2800F60A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F60A0);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDHeadGestureProperties.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v3 = sub_26738113C();
  v21 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v19 = a2;
  sub_26738119C();
  v20 = "estureProperties";
  v10 = *MEMORY[0x277D3E4E8];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  v23[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v20 | 0x8000000000000000);
  v14(v23, 0);
  v11(v6, v10, v21);
  v23[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x800000026746A720);
  v15(v23, 0);
  v21 = "headGesturesEnabled";
  type metadata accessor for ORCHSchemaORCHHeadGestureMapping(0);
  sub_267169174(&qword_2800F6230, type metadata accessor for ORCHSchemaORCHHeadGestureMapping, &protocol conformance descriptor for ORCHSchemaORCHHeadGestureMapping);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v21 | 0x8000000000000000);
  v16(v23, 0);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026746A760);
  return v17(v23, 0);
}

uint64_t sub_267169068(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671690CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267169174(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671691BC()
{
  result = qword_2800F6240;
  if (!qword_2800F6240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6240);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDHeySiriHangupEnablementState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000027, 0x800000026746A7C0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002BLL, 0x800000026746A7F0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x800000026746A820, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002CLL, 0x800000026746A850, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267169490(uint64_t a1)
{
  v2 = sub_267169594(&qword_2800F6250, &protocol conformance descriptor for ODDSiriSchemaODDHeySiriHangupEnablementState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671694F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267169594(&qword_2800F6250, &protocol conformance descriptor for ODDSiriSchemaODDHeySiriHangupEnablementState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267169594(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDHeySiriHangupEnablementState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDHomeKitProperties.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x6B656D6F48736168, 0xEE00656D6F487469);
  return v8(v10, 0);
}

uint64_t sub_267169830(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267169894(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671698F8()
{
  result = qword_2800F6038;
  if (!qword_2800F6038)
  {
    sub_267169950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6038);
  }

  return result;
}

unint64_t sub_267169950()
{
  result = qword_2800F6030;
  if (!qword_2800F6030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6030);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDHomePodProperties.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F5D68, 0x277D591B0);
  sub_266ECAF2C(&qword_2800F5D60, &qword_2800F5D68, 0x277D591B0, &protocol conformance descriptor for ODDSiriSchemaODDAdaptiveVolumeProperties);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6576697470616461, 0xEE00656D756C6F56);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x800000026746A8E0);
  return v10(v14, 0);
}

uint64_t sub_267169CDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267169D40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDiOSAccessibilityProperties.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v46 = sub_26738113C();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v48 = *MEMORY[0x277D3E4E8];
  v47 = *(v3 + 104);
  v43 = v5;
  v44 = v3 + 104;
  v47(v5);
  v49[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v39 = v11;
  v13 = a2;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, 0x800000026746A940);
  v14(v49, 0);
  type metadata accessor for SISchemaSiriPauseTimeState(0);
  sub_26716A704(&qword_2800F6268, type metadata accessor for SISchemaSiriPauseTimeState, &protocol conformance descriptor for SISchemaSiriPauseTimeState);
  sub_26738120C();
  v40 = v9;
  v11(v8, 0, 1, v9);
  v42 = v13;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026746A960);
  v15(v49, 0);
  v38 = "siriPauseTimeState";
  v16 = v43;
  v17 = v46;
  v18 = v47;
  (v47)(v43, v48, v46);
  v49[0] = 1;
  sub_26738114C();
  v19 = v9;
  v41 = v12;
  v20 = v39;
  v39(v8, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v38 | 0x8000000000000000);
  v21(v49, 0);
  (v18)(v16, *MEMORY[0x277D3E518], v17);
  v49[0] = 1;
  sub_26738114C();
  v22 = v40;
  v20(v8, 0, 1, v40);
  v23 = v20;
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x6565705369726973, 0xEE00657461526863);
  v24(v49, 0);
  v38 = "isShowAppsBehindSiriEnabled";
  v25 = v48;
  v26 = v46;
  v27 = v47;
  (v47)(v16, v48, v46);
  v49[0] = 1;
  sub_26738114C();
  v23(v8, 0, 1, v22);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v38 | 0x8000000000000000);
  v28(v49, 0);
  v38 = "isVoiceOverEnabled";
  v29 = v43;
  v27(v43, v25, v26);
  v49[0] = 1;
  v30 = v29;
  sub_26738114C();
  v31 = v40;
  v32 = v39;
  v39(v8, 0, 1, v40);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, v38 | 0x8000000000000000);
  v33(v49, 0);
  type metadata accessor for ODDSiriSchemaODDAudibleVoiceFeedbackSetting(0);
  sub_26716A704(&qword_2800F6058, type metadata accessor for ODDSiriSchemaODDAudibleVoiceFeedbackSetting, &protocol conformance descriptor for ODDSiriSchemaODDAudibleVoiceFeedbackSetting);
  sub_26738120C();
  v32(v8, 0, 1, v31);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0x6565466563696F76, 0xED00006B63616264);
  v34(v49, 0);
  (v47)(v30, v48, v46);
  v49[0] = 1;
  sub_26738114C();
  v32(v8, 0, 1, v31);
  v35 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x800000026746A9E0);
  return v35(v49, 0);
}

uint64_t sub_26716A5F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716A65C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26716A704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26716A74C()
{
  result = qword_2800F6278;
  if (!qword_2800F6278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6278);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDiOSAssistantProperties.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v26 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v26[1] = a2;
  sub_26738119C();
  v29 = "sistantProperties";
  v10 = *MEMORY[0x277D3E4E8];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  v31[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v27 = *(v13 + 56);
  v28 = v13 + 56;
  v27(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, v29 | 0x8000000000000000);
  v14(v31, 0);
  v11(v6, v10, v3);
  v31[0] = 1;
  sub_26738114C();
  v15 = v27;
  v27(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, 0x800000026746AA60);
  v16(v31, 0);
  sub_266ECB294(0, &qword_2800F6280, 0x277D59438);
  sub_266ECAF2C(&qword_2800F6288, &qword_2800F6280, 0x277D59438, &protocol conformance descriptor for ODDSiriSchemaODDiOSResponseProperties);
  sub_26738120C();
  v15(v9, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x65736E6F70736572, 0xE800000000000000);
  v17(v31, 0);
  sub_266ECB294(0, &qword_2800F6278, 0x277D59418);
  sub_266ECAF2C(&qword_2800F6270, &qword_2800F6278, 0x277D59418, &protocol conformance descriptor for ODDSiriSchemaODDiOSAccessibilityProperties);
  sub_26738120C();
  v15(v9, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6269737365636361, 0xED00007974696C69);
  v18(v31, 0);
  sub_266ECB294(0, &qword_2800F6080, 0x277D592A8);
  sub_266ECAF2C(&qword_2800F6078, &qword_2800F6080, 0x277D592A8, &protocol conformance descriptor for ODDSiriSchemaODDCarPlayProperties);
  sub_26738120C();
  v15(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x79616C50726163, 0xE700000000000000);
  v19(v31, 0);
  sub_266ECB294(0, &qword_2800F6290, 0x277D593E8);
  sub_266ECAF2C(&qword_2800F6298, &qword_2800F6290, 0x277D593E8, &protocol conformance descriptor for ODDSiriSchemaODDSiriInCallProperties);
  sub_26738120C();
  v15(v9, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x61436E4969726973, 0xEA00000000006C6CLL);
  v20(v31, 0);
  sub_266ECB294(0, &qword_2800F5D90, 0x277D591B8);
  sub_266ECAF2C(&qword_2800F5D88, &qword_2800F5D90, 0x277D591B8, &protocol conformance descriptor for ODDSiriSchemaODDAnnounceProperties);
  sub_26738120C();
  v15(v9, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x65636E756F6E6E61, 0xE800000000000000);
  v21(v31, 0);
  sub_266ECB294(0, &qword_2800F6070, 0x277D592A0);
  sub_266ECAF2C(&qword_2800F6068, &qword_2800F6070, 0x277D592A0, &protocol conformance descriptor for ODDSiriSchemaODDAutoSendMessageProperties);
  sub_26738120C();
  v15(v9, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x646E65536F747561, 0xEF6567617373654DLL);
  v22(v31, 0);
  type metadata accessor for SISchemaAppleMediaProductsSubscription(0);
  sub_26716B1E0();
  sub_26738122C();
  v15(v9, 0, 1, v12);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x8000000267435690);
  v23(v31, 0);
  sub_266ECB294(0, &qword_2800F6240, 0x277D59368);
  sub_266ECAF2C(&qword_2800F6238, &qword_2800F6240, 0x277D59368, &protocol conformance descriptor for ODDSiriSchemaODDHeadGestureProperties);
  sub_26738120C();
  v15(v9, 0, 1, v12);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x7473654764616568, 0xEC00000073657275);
  return v24(v31, 0);
}

uint64_t sub_26716B11C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716B180(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26716B1E0()
{
  result = qword_2800F13F0;
  if (!qword_2800F13F0)
  {
    type metadata accessor for SISchemaAppleMediaProductsSubscription(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F13F0);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDiOSDevicePropertiesReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6228, 0x277D59358);
  sub_266ECAF2C(&qword_2800F6220, &qword_2800F6228, 0x277D59358, &protocol conformance descriptor for ODDSiriSchemaODDGeneralProperties);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C6172656E6567, 0xE700000000000000);
  v6(v12, 0);
  sub_266ECB294(0, &qword_2800F6050, 0x277D59278);
  sub_266ECAF2C(&qword_2800F6048, &qword_2800F6050, 0x277D59278, &protocol conformance descriptor for ODDSiriSchemaODDAssistantProperties);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E61747369737361, 0xE900000000000074);
  v7(v12, 0);
  sub_266ECB294(0, &qword_2800F61D0, 0x277D59338);
  sub_266ECAF2C(&qword_2800F61C8, &qword_2800F61D0, 0x277D59338, &protocol conformance descriptor for ODDSiriSchemaODDDictationProperties);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69746174636964, 0xE90000000000006ELL);
  v8(v12, 0);
  sub_266ECB294(0, &qword_2800F62A8, 0x277D59420);
  sub_266ECAF2C(&qword_2800F62A0, &qword_2800F62A8, 0x277D59420, &protocol conformance descriptor for ODDSiriSchemaODDiOSAssistantProperties);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x7369737341534F69, 0xEC000000746E6174);
  v9(v12, 0);
  sub_266ECB294(0, &qword_2800F62B0, 0x277D59430);
  sub_266ECAF2C(&qword_2800F62B8, &qword_2800F62B0, 0x277D59430, &protocol conformance descriptor for ODDSiriSchemaODDiOSGeneralProperties);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0x72656E6547534F69, 0xEA00000000006C61);
  return v10(v12, 0);
}

uint64_t sub_26716B7B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716B818(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDiOSGeneralProperties.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "iri.odd.ODDiOSGeneralProperties";
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
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026746AB10);
  return v14(v19, 0);
}

uint64_t sub_26716BBEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716BC50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26716BCB4()
{
  result = qword_2800F62B8;
  if (!qword_2800F62B8)
  {
    sub_26716BD0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F62B8);
  }

  return result;
}

unint64_t sub_26716BD0C()
{
  result = qword_2800F62B0;
  if (!qword_2800F62B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F62B0);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDiOSResponseProperties.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "sponseProperties";
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x800000026746AB90);
  return v14(v19, 0);
}

uint64_t sub_26716C08C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716C0F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26716C154()
{
  result = qword_2800F6288;
  if (!qword_2800F6288)
  {
    sub_26716C1AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6288);
  }

  return result;
}

unint64_t sub_26716C1AC()
{
  result = qword_2800F6280;
  if (!qword_2800F6280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6280);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDListenFor.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x800000026746ABE0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x800000026746AC00, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x800000026746AC20, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000010, 0x800000026746AC40, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26716C484(uint64_t a1)
{
  v2 = sub_26716C588(&qword_2800F62D0, &protocol conformance descriptor for ODDSiriSchemaODDListenFor);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26716C4EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26716C588(&qword_2800F62D0, &protocol conformance descriptor for ODDSiriSchemaODDListenFor);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26716C588(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDListenFor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDLocationAccessPermission.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x800000026746ACA0, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000031, 0x800000026746ACD0, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x800000026746AD10, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x800000026746AD40, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x800000026746AD70, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000032, 0x800000026746ADA0, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000028, 0x800000026746ADE0, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26716C9A0(uint64_t a1)
{
  v2 = sub_26716CAA4(&qword_2800F62D8, &protocol conformance descriptor for ODDSiriSchemaODDLocationAccessPermission);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26716CA08(uint64_t a1, uint64_t a2)
{
  v4 = sub_26716CAA4(&qword_2800F62D8, &protocol conformance descriptor for ODDSiriSchemaODDLocationAccessPermission);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26716CAA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDLocationAccessPermission(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDmacOSAssistantProperties.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0xD00000000000001DLL, 0x800000026746AE50);
  v10(v13, 0);
  sub_266ECB294(0, &qword_2800F6240, 0x277D59368);
  sub_266ECAF2C(&qword_2800F6238, &qword_2800F6240, 0x277D59368, &protocol conformance descriptor for ODDSiriSchemaODDHeadGestureProperties);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x7473654764616568, 0xEC00000073657275);
  return v11(v13, 0);
}

uint64_t sub_26716CE24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716CE88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDmacOSDevicePropertiesReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6228, 0x277D59358);
  sub_266ECAF2C(&qword_2800F6220, &qword_2800F6228, 0x277D59358, &protocol conformance descriptor for ODDSiriSchemaODDGeneralProperties);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C6172656E6567, 0xE700000000000000);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F6050, 0x277D59278);
  sub_266ECAF2C(&qword_2800F6048, &qword_2800F6050, 0x277D59278, &protocol conformance descriptor for ODDSiriSchemaODDAssistantProperties);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E61747369737361, 0xE900000000000074);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800F61D0, 0x277D59338);
  sub_266ECAF2C(&qword_2800F61C8, &qword_2800F61D0, 0x277D59338, &protocol conformance descriptor for ODDSiriSchemaODDDictationProperties);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69746174636964, 0xE90000000000006ELL);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800F62E8, 0x277D59440);
  sub_266ECAF2C(&qword_2800F62E0, &qword_2800F62E8, 0x277D59440, &protocol conformance descriptor for ODDSiriSchemaODDmacOSAssistantProperties);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x737341534F63616DLL, 0xEE00746E61747369);
  return v9(v11, 0);
}

uint64_t sub_26716D39C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716D400(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDMultiUserSetupStatus.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v44 = sub_26738113C();
  v2 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v42 = *MEMORY[0x277D3E538];
  v8 = *(v2 + 104);
  v45 = v2 + 104;
  v8(v4);
  v43 = v8;
  v48[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v47 = *(v10 + 56);
  v11 = v10 + 56;
  v47(v7, 0, 1, v9);
  v41 = v11;
  v46 = a1;
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x800000026746AEE0);
  v12(v48, 0);
  v39 = "numGuestsAccepted";
  v13 = v42;
  v14 = v44;
  (v8)(v4, v42, v44);
  v48[0] = 1;
  sub_26738114C();
  v15 = v47;
  v47(v7, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, v39 | 0x8000000000000000);
  v16(v48, 0);
  v39 = "numParticipantsWithTrust";
  v17 = v13;
  v18 = v14;
  v19 = v14;
  v20 = v43;
  (v43)(v4, v17, v18);
  v48[0] = 1;
  sub_26738114C();
  v15(v7, 0, 1, v9);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000021, v39 | 0x8000000000000000);
  v21(v48, 0);
  v39 = "dRecognizeMyVoice";
  v22 = v42;
  (v20)(v4, v42, v19);
  v48[0] = 1;
  sub_26738114C();
  v47(v7, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000023, v39 | 0x8000000000000000);
  v23(v48, 0);
  v39 = "gnizeMyVoiceEnabled";
  v24 = v44;
  (v20)(v4, v22, v44);
  v48[0] = 1;
  sub_26738114C();
  v25 = v47;
  v47(v7, 0, 1, v9);
  v26 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, v39 | 0x8000000000000000);
  v26(v48, 0);
  v39 = "numVoiceProfilesAvailable";
  v42 = *MEMORY[0x277D3E508];
  v27 = v43;
  v43(v4);
  v48[0] = 1;
  sub_26738114C();
  v25(v7, 0, 1, v9);
  v28 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000023, v39 | 0x8000000000000000);
  v28(v48, 0);
  v38 = "onalRequestsEnabled";
  v29 = v42;
  (v27)(v4, v42, v24);
  v48[0] = 1;
  sub_26738114C();
  v40 = v9;
  v30 = v47;
  v47(v7, 0, 1, v9);
  v31 = sub_2673811AC();
  v39 = 0xD000000000000020;
  sub_266EC637C(v7, 0xD000000000000020, v38 | 0x8000000000000000);
  v31(v48, 0);
  v38 = "hingSiriLanguage";
  v32 = v29;
  v34 = v43;
  v33 = v44;
  (v43)(v4, v32, v44);
  v48[0] = 1;
  sub_26738114C();
  v30(v7, 0, 1, v9);
  v35 = sub_2673811AC();
  sub_266EC637C(v7, v39, v38 | 0x8000000000000000);
  v35(v48, 0);
  (v34)(v4, v42, v33);
  v48[0] = 1;
  sub_26738114C();
  v47(v7, 0, 1, v40);
  v36 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000023, 0x800000026746B030);
  return v36(v48, 0);
}

uint64_t sub_26716DD94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716DDF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26716DE5C()
{
  result = qword_2800F6300;
  if (!qword_2800F6300)
  {
    sub_26716DEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6300);
  }

  return result;
}

unint64_t sub_26716DEB4()
{
  result = qword_2800F6308;
  if (!qword_2800F6308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6308);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDMultiUserState.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6310, 0x277D59408);
  sub_266ECAF2C(&qword_2800F6318, &qword_2800F6310, 0x277D59408, &protocol conformance descriptor for ODDSiriSchemaODDUserPersonalization);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x64656C6C6F726E65, 0xED00007372657355);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F6308, 0x277D59390);
  sub_266ECAF2C(&qword_2800F6300, &qword_2800F6308, 0x277D59390, &protocol conformance descriptor for ODDSiriSchemaODDMultiUserSetupStatus);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x800000026746B090);
  return v7(v9, 0);
}

uint64_t sub_26716E1DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716E240(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDOptInProperties.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v15[1] = a1;
  v18 = sub_26738113C();
  v1 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v16 = *MEMORY[0x277D3E4E8];
  v7 = *(v1 + 104);
  v17 = v1 + 104;
  v19 = v7;
  v15[0] = v3;
  v7(v3);
  v20[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v6, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x800000026746B0E0);
  v10(v20, 0);
  type metadata accessor for SISchemaDataSharingOptInState(0);
  sub_26716E854();
  sub_26738120C();
  v9(v6, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x80000002674694C0);
  v11(v20, 0);
  sub_266ECB294(0, &qword_2800F1F50, 0x277D5A8C0);
  sub_266ECAF2C(&qword_2800F1F58, &qword_2800F1F50, 0x277D5A8C0, &protocol conformance descriptor for SISchemaGradingOptInStateChange);
  sub_26738122C();
  v9(v6, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x800000026746B100);
  v12(v20, 0);
  v19(v15[0], v16, v18);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x800000026746B120);
  return v13(v20, 0);
}

uint64_t sub_26716E790(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716E7F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26716E854()
{
  result = qword_2800F0418;
  if (!qword_2800F0418)
  {
    type metadata accessor for SISchemaDataSharingOptInState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0418);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDReliabilityCounts.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v37 = sub_26738113C();
  v2 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v36 = a1;
  sub_26738119C();
  v34 = *MEMORY[0x277D3E538];
  v33 = *(v2 + 104);
  v35 = v2 + 104;
  v33(v4);
  v38[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v30 = *(v9 + 56);
  v10 = v9 + 56;
  v30(v7, 0, 1, v8);
  v31 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x800000026746B170);
  v11(v38, 0);
  v29 = "reliabilityRequestCount";
  v12 = v34;
  v13 = v33;
  (v33)(v4, v34, v37);
  v38[0] = 1;
  sub_26738114C();
  v14 = v8;
  v15 = v8;
  v32 = v8;
  v16 = v30;
  v30(v7, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, v29 | 0x8000000000000000);
  v17(v38, 0);
  v29 = "reliabilityTurnCount";
  v13(v4, v12, v37);
  v38[0] = 1;
  sub_26738114C();
  v16(v7, 0, 1, v15);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, v29 | 0x8000000000000000);
  v18(v38, 0);
  v29 = "clientErrorCount";
  v19 = v34;
  v20 = v37;
  v21 = v33;
  (v33)(v4, v34, v37);
  v38[0] = 1;
  sub_26738114C();
  v16(v7, 0, 1, v32);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, v29 | 0x8000000000000000);
  v22(v38, 0);
  v29 = "undesiredResponseCount";
  v21(v4, v19, v20);
  v38[0] = 1;
  sub_26738114C();
  v23 = v32;
  v16(v7, 0, 1, v32);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, v29 | 0x8000000000000000);
  v24(v38, 0);
  v29 = "fatalResponseCount";
  v21(v4, v19, v37);
  v38[0] = 1;
  sub_26738114C();
  v16(v7, 0, 1, v23);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, v29 | 0x8000000000000000);
  v25(v38, 0);
  v21(v4, v34, v37);
  v38[0] = 1;
  sub_26738114C();
  v16(v7, 0, 1, v23);
  v26 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, 0x800000026746B230);
  return v26(v38, 0);
}

uint64_t sub_26716F030(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716F094(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26716F0F8()
{
  result = qword_2800F5EE8;
  if (!qword_2800F5EE8)
  {
    sub_26716F150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5EE8);
  }

  return result;
}

unint64_t sub_26716F150()
{
  result = qword_2800F5EE0;
  if (!qword_2800F5EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5EE0);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDRequestsWithoutAssetsCounts.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v25 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v23 = a1;
  sub_26738119C();
  v24 = "stsWithoutAssetsCounts";
  v9 = *MEMORY[0x277D3E538];
  v10 = *(v3 + 104);
  v26 = v3 + 104;
  v22 = v9;
  v10(v5, v9, v2);
  v11 = v10;
  v21 = v10;
  v27[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v8, 0, 1, v12);
  v14 = v13;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v24 | 0x8000000000000000);
  v15(v27, 0);
  v24 = "requestsRequiringAssetsCount";
  v16 = v9;
  v17 = v25;
  v11(v5, v16, v25);
  v27[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v24 | 0x8000000000000000);
  v18(v27, 0);
  v21(v5, v22, v17);
  v27[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x800000026746B2D0);
  return v19(v27, 0);
}

uint64_t sub_26716F5B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716F614(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26716F678()
{
  result = qword_2800F6330;
  if (!qword_2800F6330)
  {
    sub_26716F6D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6330);
  }

  return result;
}

unint64_t sub_26716F6D0()
{
  result = qword_2800F6338;
  if (!qword_2800F6338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6338);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDRequestsWithoutAssetsDigest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6340, 0x277D593C8);
  sub_266ECAF2C(&qword_2800F6348, &qword_2800F6340, 0x277D593C8, &protocol conformance descriptor for ODDSiriSchemaODDRequestsWithoutAssetsDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F6338, 0x277D593B0);
  sub_266ECAF2C(&qword_2800F6330, &qword_2800F6338, 0x277D593B0, &protocol conformance descriptor for ODDSiriSchemaODDRequestsWithoutAssetsCounts);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746E756F63, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_26716F9E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716FA48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDRequestsWithoutAssetsDigestReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5DE8, 0x277D59350);
  sub_266ECAF2C(&qword_2800F5DF0, &qword_2800F5DE8, 0x277D59350, &protocol conformance descriptor for ODDSiriSchemaODDFixedDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6D69446465786966, 0xEF736E6F69736E65);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F6358, 0x277D593B8);
  sub_266ECAF2C(&qword_2800F6350, &qword_2800F6358, 0x277D593B8, &protocol conformance descriptor for ODDSiriSchemaODDRequestsWithoutAssetsDigest);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_26716FDC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26716FE24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDRequestsWithoutAssetsDimensions.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v27 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5E08, 0x277D59248);
  sub_266ECAF2C(&qword_2800F5E10, &qword_2800F5E08, 0x277D59248, &protocol conformance descriptor for ODDSiriSchemaODDAssistantDimensions);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v9, 0, 1, v10);
  v27[0] = a2;
  v27[1] = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x8000000267468FF0);
  v14(v34, 0);
  v15 = *MEMORY[0x277D3E530];
  v16 = v32;
  v28 = *(v33 + 104);
  v33 += 104;
  v30 = v15;
  v28(v6, v15, v32);
  v34[0] = 1;
  sub_26738114C();
  v29 = v10;
  v12(v9, 0, 1, v10);
  v17 = v12;
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x7465537465737361, 0xEA00000000006449);
  v18(v34, 0);
  v19 = v28;
  v28(v6, v15, v16);
  v34[0] = 1;
  sub_26738114C();
  v17(v9, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x7465537465737361, 0xEC000000656D614ELL);
  v20(v34, 0);
  v19(v6, v30, v16);
  v21 = v19;
  v34[0] = 1;
  sub_26738114C();
  v22 = v29;
  v17(v9, 0, 1, v29);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x8000000267469010);
  v23(v34, 0);
  v21(v6, *MEMORY[0x277D3E540], v32);
  v34[0] = 1;
  sub_26738114C();
  v17(v9, 0, 1, v22);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002CLL, 0x8000000267469030);
  v24(v34, 0);
  type metadata accessor for ORCHSchemaORCHAssetType(0);
  sub_2671705C0();
  sub_26738122C();
  v17(v9, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026746B3B0);
  return v25(v34, 0);
}

uint64_t sub_2671704FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267170560(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671705C0()
{
  result = qword_2800F6370;
  if (!qword_2800F6370)
  {
    type metadata accessor for ORCHSchemaORCHAssetType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6370);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDSessionCounts.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026746B400);
  return v8(v10, 0);
}

uint64_t sub_2671708AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267170910(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267170974()
{
  result = qword_2800F5F98;
  if (!qword_2800F5F98)
  {
    sub_2671709CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5F98);
  }

  return result;
}

unint64_t sub_2671709CC()
{
  result = qword_2800F5F90;
  if (!qword_2800F5F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5F90);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDSiriAccountInformation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x6E61747369737361, 0xEB00000000644974);
  v8(v10, 0);
  sub_266ECB128(&unk_28788A930);
  return sub_2673811CC();
}

uint64_t sub_267170C84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267170CE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267170D4C()
{
  result = qword_2800F6378;
  if (!qword_2800F6378)
  {
    sub_267170DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6378);
  }

  return result;
}

unint64_t sub_267170DA4()
{
  result = qword_2800F6380;
  if (!qword_2800F6380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6380);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDSiriClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v103 = a1;
  v1 = sub_26738118C();
  v97 = *(v1 - 8);
  v98 = v1;
  MEMORY[0x28223BE20](v1);
  v96 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v94 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6098, 0x277D592B0);
  sub_266ECAF2C(&qword_2800F6090, &qword_2800F6098, 0x277D592B0, &protocol conformance descriptor for ODDSiriSchemaODDClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v9(v105, 0);
  sub_266ECB294(0, &qword_2800F6118, 0x277D592E8);
  sub_266ECAF2C(&qword_2800F6110, &qword_2800F6118, 0x277D592E8, &protocol conformance descriptor for ODDSiriSchemaODDDeviceSegmentsReported);
  sub_26738121C();
  v99 = v8;
  v100 = v7 + 56;
  v8(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x800000026746B490);
  v10(v105, 0);
  v11 = sub_2673811AC();
  v95 = 0xD000000000000016;
  v12 = sub_266ECB6CC(v104, 0xD000000000000016, 0x800000026746B490);
  v101 = *(v7 + 48);
  v102 = v7 + 48;
  if (!v101(v13, 1, v6))
  {
    sub_266ECB128(&unk_28788A960);
    sub_26738115C();
  }

  (v12)(v104, 0);
  v11(v105, 0);
  sub_266ECB294(0, &qword_2800F60E8, 0x277D592D8);
  sub_266ECAF2C(&qword_2800F60E0, &qword_2800F60E8, 0x277D592D8, &protocol conformance descriptor for ODDSiriSchemaODDDeviceCohortsReported);
  sub_26738121C();
  v99(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000015, 0x800000026746B4B0);
  v14(v105, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v104, 0xD000000000000015, 0x800000026746B4B0);
  if (!v101(v17, 1, v6))
  {
    sub_266ECB128(&unk_28788A988);
    sub_26738115C();
  }

  (v16)(v104, 0);
  v15(v105, 0);
  sub_266ECB294(0, &qword_2800F5F18, 0x277D59228);
  sub_266ECAF2C(&qword_2800F5F10, &qword_2800F5F18, 0x277D59228, &protocol conformance descriptor for ODDSiriSchemaODDAssistantDeviceDigestsReported);
  sub_26738121C();
  v18 = v99;
  v99(v5, 0, 1, v6);
  v19 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001DLL, 0x800000026746B4D0);
  v19(v105, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v104, 0xD00000000000001DLL, 0x800000026746B4D0);
  if (!v101(v22, 1, v6))
  {
    sub_266ECB128(&unk_28788A9B0);
    sub_26738115C();
  }

  (v21)(v104, 0);
  v20(v105, 0);
  sub_266ECB294(0, &qword_2800F6150, 0x277D592F8);
  sub_266ECAF2C(&qword_2800F6148, &qword_2800F6150, 0x277D592F8, &protocol conformance descriptor for ODDSiriSchemaODDDictationDeviceDigestsReported);
  sub_26738121C();
  v18(v5, 0, 1, v6);
  v23 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001DLL, 0x800000026746B4F0);
  v23(v105, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v104, 0xD00000000000001DLL, 0x800000026746B4F0);
  if (!v101(v26, 1, v6))
  {
    sub_266ECB128(&unk_28788A9D8);
    sub_26738115C();
  }

  (v25)(v104, 0);
  v24(v105, 0);
  sub_266ECB294(0, &qword_2800F6380, 0x277D593D8);
  sub_266ECAF2C(&qword_2800F6378, &qword_2800F6380, 0x277D593D8, &protocol conformance descriptor for ODDSiriSchemaODDSiriAccountInformation);
  sub_26738121C();
  v18(v5, 0, 1, v6);
  v27 = sub_2673811AC();
  v28 = v95;
  sub_266EC637C(v5, v95, 0x800000026742B600);
  v27(v105, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v104, v28, 0x800000026742B600);
  if (!v101(v31, 1, v6))
  {
    sub_266ECB128(&unk_28788AA00);
    sub_26738115C();
  }

  (v30)(v104, 0);
  v29(v105, 0);
  sub_266ECB294(0, &qword_2800F6000, 0x277D59260);
  sub_266ECAF2C(&qword_2800F5FF8, &qword_2800F6000, 0x277D59260, &protocol conformance descriptor for ODDSiriSchemaODDAssistantExperimentDigestsReported);
  sub_26738121C();
  v18(v5, 0, 1, v6);
  v32 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000021, 0x800000026746B510);
  v32(v105, 0);
  v33 = sub_2673811AC();
  v34 = sub_266ECB6CC(v104, 0xD000000000000021, 0x800000026746B510);
  if (!v101(v35, 1, v6))
  {
    sub_266ECB128(&unk_28788AA28);
    sub_26738115C();
  }

  (v34)(v104, 0);
  v33(v105, 0);
  sub_266ECB294(0, &qword_2800F5F58, 0x277D59238);
  sub_266ECAF2C(&qword_2800F5F50, &qword_2800F5F58, 0x277D59238, &protocol conformance descriptor for ODDSiriSchemaODDAssistantDiagnosticAndUsageOptInDigestsReported);
  sub_26738121C();
  v18(v5, 0, 1, v6);
  v36 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000002ELL, 0x800000026746B540);
  v36(v105, 0);
  v37 = sub_2673811AC();
  v38 = sub_266ECB6CC(v104, 0xD00000000000002ELL, 0x800000026746B540);
  if (!v101(v39, 1, v6))
  {
    sub_266ECB128(&unk_28788AA50);
    sub_26738115C();
  }

  (v38)(v104, 0);
  v37(v105, 0);
  sub_266ECB294(0, &qword_2800F62C8, 0x277D59428);
  sub_266ECAF2C(&qword_2800F62C0, &qword_2800F62C8, 0x277D59428, &protocol conformance descriptor for ODDSiriSchemaODDiOSDevicePropertiesReported);
  sub_26738121C();
  v18(v5, 0, 1, v6);
  v40 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001BLL, 0x800000026746B570);
  v40(v105, 0);
  v41 = sub_2673811AC();
  v42 = sub_266ECB6CC(v104, 0xD00000000000001BLL, 0x800000026746B570);
  if (!v101(v43, 1, v6))
  {
    sub_266ECB128(&unk_28788AA78);
    sub_26738115C();
  }

  (v42)(v104, 0);
  v41(v105, 0);
  sub_266ECB294(0, &qword_2800F6388, 0x277D59470);
  sub_266ECAF2C(&qword_2800F6390, &qword_2800F6388, 0x277D59470, &protocol conformance descriptor for ODDSiriSchemaODDwatchOSDevicePropertiesReported);
  sub_26738121C();
  v18(v5, 0, 1, v6);
  v44 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001FLL, 0x800000026746B590);
  v44(v105, 0);
  v45 = sub_2673811AC();
  v46 = sub_266ECB6CC(v104, 0xD00000000000001FLL, 0x800000026746B590);
  if (!v101(v47, 1, v6))
  {
    sub_266ECB128(&unk_28788AAA0);
    sub_26738115C();
  }

  (v46)(v104, 0);
  v45(v105, 0);
  sub_266ECB294(0, &qword_2800F6398, 0x277D59458);
  sub_266ECAF2C(&qword_2800F63A0, &qword_2800F6398, 0x277D59458, &protocol conformance descriptor for ODDSiriSchemaODDtvOSDevicePropertiesReported);
  sub_26738121C();
  v18(v5, 0, 1, v6);
  v48 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001CLL, 0x800000026746B5B0);
  v48(v105, 0);
  v49 = sub_2673811AC();
  v95 = 0xD00000000000001CLL;
  v50 = sub_266ECB6CC(v104, 0xD00000000000001CLL, 0x800000026746B5B0);
  if (!v101(v51, 1, v6))
  {
    sub_266ECB128(&unk_28788AAC8);
    sub_26738115C();
  }

  (v50)(v104, 0);
  v49(v105, 0);
  sub_266ECB294(0, &qword_2800F62F8, 0x277D59448);
  sub_266ECAF2C(&qword_2800F62F0, &qword_2800F62F8, 0x277D59448, &protocol conformance descriptor for ODDSiriSchemaODDmacOSDevicePropertiesReported);
  sub_26738121C();
  v18(v5, 0, 1, v6);
  v52 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001DLL, 0x800000026746B5D0);
  v52(v105, 0);
  v53 = sub_2673811AC();
  v54 = sub_266ECB6CC(v104, 0xD00000000000001DLL, 0x800000026746B5D0);
  if (!v101(v55, 1, v6))
  {
    sub_266ECB128(&unk_28788AAF0);
    sub_26738115C();
  }

  (v54)(v104, 0);
  v53(v105, 0);
  sub_266ECB294(0, &qword_2800F63A8, 0x277D59460);
  sub_266ECAF2C(&qword_2800F63B0, &qword_2800F63A8, 0x277D59460, &protocol conformance descriptor for ODDSiriSchemaODDvisionOSDevicePropertiesReported);
  sub_26738121C();
  v18(v5, 0, 1, v6);
  v56 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000020, 0x800000026746B5F0);
  v56(v105, 0);
  v57 = sub_2673811AC();
  v58 = sub_266ECB6CC(v104, 0xD000000000000020, 0x800000026746B5F0);
  if (!v101(v59, 1, v6))
  {
    sub_266ECB128(&unk_28788AB18);
    sub_26738115C();
  }

  (v58)(v104, 0);
  v57(v105, 0);
  sub_266ECB294(0, &qword_2800F5EB0, 0x277D59210);
  sub_266ECAF2C(&qword_2800F5EA8, &qword_2800F5EB0, 0x277D59210, &protocol conformance descriptor for ODDSiriSchemaODDAssistantCarPlayDigestReported);
  sub_26738121C();
  v18(v5, 0, 1, v6);
  v60 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001ELL, 0x800000026746B620);
  v60(v105, 0);
  v61 = sub_2673811AC();
  v62 = sub_266ECB6CC(v104, 0xD00000000000001ELL, 0x800000026746B620);
  if (!v101(v63, 1, v6))
  {
    sub_266ECB128(&unk_28788AB40);
    sub_26738115C();
  }

  (v62)(v104, 0);
  v61(v105, 0);
  sub_266ECB294(0, &qword_2800F6368, 0x277D593C0);
  sub_266ECAF2C(&qword_2800F6360, &qword_2800F6368, 0x277D593C0, &protocol conformance descriptor for ODDSiriSchemaODDRequestsWithoutAssetsDigestReported);
  sub_26738121C();
  v18(v5, 0, 1, v6);
  v64 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000023, 0x800000026746B640);
  v64(v105, 0);
  v65 = sub_2673811AC();
  v66 = sub_266ECB6CC(v104, 0xD000000000000023, 0x800000026746B640);
  if (!v101(v67, 1, v6))
  {
    sub_266ECB128(&unk_28788AB68);
    sub_26738115C();
  }

  (v66)(v104, 0);
  v65(v105, 0);
  sub_266ECB294(0, &qword_2800F5E00, 0x277D591D0);
  sub_266ECAF2C(&qword_2800F5DF8, &qword_2800F5E00, 0x277D591D0, &protocol conformance descriptor for ODDSiriSchemaODDAssetAvailabilityFromBootDigestReported);
  sub_26738121C();
  v18(v5, 0, 1, v6);
  v68 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000027, 0x800000026746B670);
  v68(v105, 0);
  v69 = sub_2673811AC();
  v70 = sub_266ECB6CC(v104, 0xD000000000000027, 0x800000026746B670);
  if (!v101(v71, 1, v6))
  {
    sub_266ECB128(&unk_28788AB90);
    sub_26738115C();
  }

  (v70)(v104, 0);
  v69(v105, 0);
  sub_266ECB294(0, &qword_2800F5E40, 0x277D591F0);
  sub_266ECAF2C(&qword_2800F5E38, &qword_2800F5E40, 0x277D591F0, &protocol conformance descriptor for ODDSiriSchemaODDAssetSetStatusDigestReported);
  sub_26738121C();
  v18(v5, 0, 1, v6);
  v72 = sub_2673811AC();
  v73 = v95;
  sub_266EC637C(v5, v95, 0x800000026746B6A0);
  v72(v105, 0);
  v74 = sub_2673811AC();
  v75 = sub_266ECB6CC(v104, v73, 0x800000026746B6A0);
  if (!v101(v76, 1, v6))
  {
    sub_266ECB128(&unk_28788ABB8);
    sub_26738115C();
  }

  (v75)(v104, 0);
  v74(v105, 0);
  sub_266ECB294(0, &qword_2800F61F8, 0x277D59340);
  sub_266ECAF2C(&qword_2800F61F0, &qword_2800F61F8, 0x277D59340, &protocol conformance descriptor for ODDSiriSchemaODDExecutionMetadataReported);
  sub_26738121C();
  v18(v5, 0, 1, v6);
  v77 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000019, 0x800000026746B6C0);
  v77(v105, 0);
  v78 = sub_2673811AC();
  v79 = sub_266ECB6CC(v104, 0xD000000000000019, 0x800000026746B6C0);
  if (!v101(v80, 1, v6))
  {
    sub_266ECB128(&unk_28788ABE0);
    sub_26738115C();
  }

  (v79)(v104, 0);
  v78(v105, 0);
  sub_266ECB294(0, &qword_2800F61B0, 0x277D59320);
  sub_266ECAF2C(&qword_2800F61A8, &qword_2800F61B0, 0x277D59320, &protocol conformance descriptor for ODDSiriSchemaODDDictationExperimentDigestsReported);
  sub_26738121C();
  v18(v5, 0, 1, v6);
  v81 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000022, 0x800000026746B6E0);
  v81(v105, 0);
  v82 = sub_2673811AC();
  v83 = sub_266ECB6CC(v104, 0xD000000000000022, 0x800000026746B6E0);
  if (!v101(v84, 1, v6))
  {
    sub_266ECB128(&unk_28788AC08);
    sub_26738115C();
  }

  (v83)(v104, 0);
  v82(v105, 0);
  v85 = v96;
  sub_26738117C();
  v86 = sub_2673811BC();
  v88 = v87;
  v89 = *v87;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v88 = v89;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v89 = sub_266ECAD54(0, v89[2] + 1, 1, v89);
    *v88 = v89;
  }

  v92 = v89[2];
  v91 = v89[3];
  if (v92 >= v91 >> 1)
  {
    v89 = sub_266ECAD54((v91 > 1), v92 + 1, 1, v89);
    *v88 = v89;
  }

  v89[2] = v92 + 1;
  (*(v97 + 32))(v89 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v92, v85, v98);
  v86(v105, 0);
  sub_266ECB128(&unk_28788AC30);
  return sub_2673811CC();
}

uint64_t sub_267172A9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267172B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267172C00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267172C64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267172CC4(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F63B8, &qword_2800F63C0, 0x277D593E0, &protocol conformance descriptor for ODDSiriSchemaODDSiriClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F63C8, &qword_2800F63C0, 0x277D593E0, &protocol conformance descriptor for ODDSiriSchemaODDSiriClientEvent);
  result = sub_266ECAF2C(&qword_2800F63D0, &qword_2800F63C0, 0x277D593E0, &protocol conformance descriptor for ODDSiriSchemaODDSiriClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static ODDSiriSchemaODDSiriInCallEnablementState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x800000026746B750, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x800000026746B780, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026746B7B0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ALL, 0x800000026746B7E0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26717304C(uint64_t a1)
{
  v2 = sub_267173150(&qword_2800F63E8, &protocol conformance descriptor for ODDSiriSchemaODDSiriInCallEnablementState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671730B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267173150(&qword_2800F63E8, &protocol conformance descriptor for ODDSiriSchemaODDSiriInCallEnablementState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267173150(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDSiriInCallEnablementState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDSiriInCallProperties.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ODDSiriSchemaODDHeySiriHangupEnablementState(0);
  sub_267173554(&qword_2800F6248, type metadata accessor for ODDSiriSchemaODDHeySiriHangupEnablementState, &protocol conformance descriptor for ODDSiriSchemaODDHeySiriHangupEnablementState);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001CLL, 0x800000026746B840);
  v6(v9, 0);
  type metadata accessor for ODDSiriSchemaODDSiriInCallEnablementState(0);
  sub_267173554(&qword_2800F63E0, type metadata accessor for ODDSiriSchemaODDSiriInCallEnablementState, &protocol conformance descriptor for ODDSiriSchemaODDSiriInCallEnablementState);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000019, 0x800000026746B860);
  return v7(v9, 0);
}

uint64_t sub_267173448(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671734AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267173554(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26717359C()
{
  result = qword_2800F6290;
  if (!qword_2800F6290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6290);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDTaskAppBundleId.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026746B8B0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x800000026746B8D0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x800000026746B900, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ALL, 0x800000026746B930, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267173870(uint64_t a1)
{
  v2 = sub_267173974(&qword_2800F63F0, &protocol conformance descriptor for ODDSiriSchemaODDTaskAppBundleId);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671738D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267173974(&qword_2800F63F0, &protocol conformance descriptor for ODDSiriSchemaODDTaskAppBundleId);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267173974(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDSiriSchemaODDTaskAppBundleId(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDTaskCounts.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v27 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v22 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v24 = "iri.odd.ODDTaskCounts";
  v9 = *MEMORY[0x277D3E538];
  v25 = *(v3 + 104);
  v23 = v9;
  v25(v5, v9, v2);
  v22[2] = v3 + 104;
  v28[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v26 = v11 + 56;
  v12(v8, 0, 1, v10);
  v22[1] = a1;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v24 | 0x8000000000000000);
  v13(v28, 0);
  v24 = "siriTasksStarted";
  v14 = v9;
  v15 = v27;
  v16 = v25;
  v25(v5, v14, v27);
  v28[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v24 | 0x8000000000000000);
  v17(v28, 0);
  v24 = "siriTasksCompleted";
  v18 = v23;
  v16(v5, v23, v15);
  v28[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v24 | 0x8000000000000000);
  v19(v28, 0);
  v16(v5, v18, v27);
  v28[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026746B9F0);
  return v20(v28, 0);
}

uint64_t sub_267173E98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267173EFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267173F60()
{
  result = qword_2800F5ED8;
  if (!qword_2800F5ED8)
  {
    sub_267173FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5ED8);
  }

  return result;
}

unint64_t sub_267173FB8()
{
  result = qword_2800F5ED0;
  if (!qword_2800F5ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5ED0);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDTimeInterval.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v16 = "iri.odd.ODDTimeInterval";
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E540], v2);
  v17[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, v16 | 0x8000000000000000);
  v12(v17, 0);
  v9(v5, *MEMORY[0x277D3E538], v2);
  v17[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x664F7265626D756ELL, 0xEF73646E6F636553);
  return v13(v17, 0);
}

uint64_t sub_26717433C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671743A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267174404()
{
  result = qword_2800F5D40;
  if (!qword_2800F5D40)
  {
    sub_26717445C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5D40);
  }

  return result;
}

unint64_t sub_26717445C()
{
  result = qword_2800F5D38;
  if (!qword_2800F5D38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5D38);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDTurnCounts.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v8, 0x7275546C61746F74, 0xEE00746E756F436ELL);
  v13(v18, 0);
  v10(v5, v9, v17);
  v18[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x72755464696C6176, 0xEE00746E756F436ELL);
  return v14(v18, 0);
}

uint64_t sub_2671747E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267174844(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671748A8()
{
  result = qword_2800F5E70;
  if (!qword_2800F5E70)
  {
    sub_267174900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5E70);
  }

  return result;
}

unint64_t sub_267174900()
{
  result = qword_2800F5E68;
  if (!qword_2800F5E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5E68);
  }

  return result;
}

uint64_t static ODDSiriSchemaODDtvOSAssistantProperties.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6328, 0x277D59398);
  sub_266ECAF2C(&qword_2800F6320, &qword_2800F6328, 0x277D59398, &protocol conformance descriptor for ODDSiriSchemaODDMultiUserState);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x65735569746C756DLL, 0xEE00657461745372);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F6260, 0x277D59378);
  sub_266ECAF2C(&qword_2800F6258, &qword_2800F6260, 0x277D59378, &protocol conformance descriptor for ODDSiriSchemaODDHomePodProperties);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x800000026746BAE0);
  return v7(v9, 0);
}

uint64_t sub_267174C28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267174C8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDtvOSDevicePropertiesReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6228, 0x277D59358);
  sub_266ECAF2C(&qword_2800F6220, &qword_2800F6228, 0x277D59358, &protocol conformance descriptor for ODDSiriSchemaODDGeneralProperties);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C6172656E6567, 0xE700000000000000);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F6050, 0x277D59278);
  sub_266ECAF2C(&qword_2800F6048, &qword_2800F6050, 0x277D59278, &protocol conformance descriptor for ODDSiriSchemaODDAssistantProperties);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E61747369737361, 0xE900000000000074);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800F61D0, 0x277D59338);
  sub_266ECAF2C(&qword_2800F61C8, &qword_2800F61D0, 0x277D59338, &protocol conformance descriptor for ODDSiriSchemaODDDictationProperties);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69746174636964, 0xE90000000000006ELL);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800F6400, 0x277D59450);
  sub_266ECAF2C(&qword_2800F63F8, &qword_2800F6400, 0x277D59450, &protocol conformance descriptor for ODDSiriSchemaODDtvOSAssistantProperties);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x69737341534F7674, 0xED0000746E617473);
  return v9(v11, 0);
}

uint64_t sub_2671751A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267175204(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDUserPersonalization.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0xD00000000000001FLL, 0x800000026746BB70);
  v10(v14, 0);
  type metadata accessor for SISchemaAppleMediaProductsSubscription(0);
  sub_26716B1E0();
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x8000000267435690);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F0408, 0x277D5ACB8);
  sub_266ECAF2C(&qword_2800F0410, &qword_2800F0408, 0x277D5ACB8, &protocol conformance descriptor for SISchemaVoiceSettings);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x7465536563696F76, 0xED000073676E6974);
  return v12(v14, 0);
}

uint64_t sub_267175678(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671756DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDvisionOSDevicePropertiesReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6228, 0x277D59358);
  sub_266ECAF2C(&qword_2800F6220, &qword_2800F6228, 0x277D59358, &protocol conformance descriptor for ODDSiriSchemaODDGeneralProperties);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C6172656E6567, 0xE700000000000000);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F6050, 0x277D59278);
  sub_266ECAF2C(&qword_2800F6048, &qword_2800F6050, 0x277D59278, &protocol conformance descriptor for ODDSiriSchemaODDAssistantProperties);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E61747369737361, 0xE900000000000074);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F61D0, 0x277D59338);
  sub_266ECAF2C(&qword_2800F61C8, &qword_2800F61D0, 0x277D59338, &protocol conformance descriptor for ODDSiriSchemaODDDictationProperties);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69746174636964, 0xE90000000000006ELL);
  return v8(v10, 0);
}

uint64_t sub_267175B1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267175B80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDVoiceProperties.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaVoiceGender(0);
  sub_2671760E4(&qword_2800F6408, type metadata accessor for SISchemaVoiceGender, &protocol conformance descriptor for SISchemaVoiceGender);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7265646E6567, 0xE600000000000000);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900, &protocol conformance descriptor for SISchemaISOLocale);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x746E65636361, 0xE600000000000000);
  v7(v11, 0);
  type metadata accessor for SISchemaVoiceName(0);
  sub_2671760E4(&qword_2800F6410, type metadata accessor for SISchemaVoiceName, &protocol conformance descriptor for SISchemaVoiceName);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 1701667182, 0xE400000000000000);
  v8(v11, 0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x656C6C6174736E69, 0xEF736563696F5664);
  return v9(v11, 0);
}

uint64_t sub_267176020(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267176084(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671760E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ODDSiriSchemaODDwatchOSAssistantProperties.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v15 = "OSAssistantProperties";
  v8 = *MEMORY[0x277D3E4E8];
  v16 = *(v2 + 104);
  v16(v4, v8, v1);
  v19[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, v15 | 0x8000000000000000);
  v11(v19, 0);
  v16(v4, v8, v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x800000026746BC60);
  v12(v19, 0);
  sub_266ECB294(0, &qword_2800F6240, 0x277D59368);
  sub_266ECAF2C(&qword_2800F6238, &qword_2800F6240, 0x277D59368, &protocol conformance descriptor for ODDSiriSchemaODDHeadGestureProperties);
  sub_26738120C();
  v10(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x7473654764616568, 0xEC00000073657275);
  return v13(v19, 0);
}

uint64_t sub_267176584(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671765E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODDSiriSchemaODDwatchOSDevicePropertiesReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6228, 0x277D59358);
  sub_266ECAF2C(&qword_2800F6220, &qword_2800F6228, 0x277D59358, &protocol conformance descriptor for ODDSiriSchemaODDGeneralProperties);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C6172656E6567, 0xE700000000000000);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F6050, 0x277D59278);
  sub_266ECAF2C(&qword_2800F6048, &qword_2800F6050, 0x277D59278, &protocol conformance descriptor for ODDSiriSchemaODDAssistantProperties);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E61747369737361, 0xE900000000000074);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800F61D0, 0x277D59338);
  sub_266ECAF2C(&qword_2800F61C8, &qword_2800F61D0, 0x277D59338, &protocol conformance descriptor for ODDSiriSchemaODDDictationProperties);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69746174636964, 0xE90000000000006ELL);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800F6420, 0x277D59468);
  sub_266ECAF2C(&qword_2800F6418, &qword_2800F6420, 0x277D59468, &protocol conformance descriptor for ODDSiriSchemaODDwatchOSAssistantProperties);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x800000026746BCC0);
  return v9(v11, 0);
}

uint64_t sub_267176AFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267176B60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODFUNNELSiriSchemaODFUNNELClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[3] = a1;
  v34 = sub_26738113C();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v26 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v9 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v30 = v8;
  v31 = v9;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v7, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x6C656E6E7566646FLL, 0xEA00000000006449);
  v14(v35, 0);
  v27 = *MEMORY[0x277D3E540];
  v15 = *(v3 + 104);
  v28 = v3 + 104;
  v29 = v15;
  (v15)(v33);
  v35[0] = 1;
  sub_26738114C();
  v12(v7, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, 0x8000000267468710);
  v16(v35, 0);
  sub_266ECB294(0, &qword_2800F5D38, 0x277D593F8);
  sub_266ECAF2C(&qword_2800F5D40, &qword_2800F5D38, 0x277D593F8, &protocol conformance descriptor for ODDSiriSchemaODDTimeInterval);
  sub_26738120C();
  v32 = v10;
  v26[2] = v13;
  v12(v7, 0, 1, v10);
  v26[1] = a2;
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x80000002674686F0);
  v17(v35, 0);
  sub_26738120C();
  v12(v7, 0, 1, v10);
  v26[0] = v12;
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x800000026742BA40);
  v18(v35, 0);
  v31 = "userAggregationId";
  v19 = v33;
  v20 = v34;
  v21 = v27;
  v22 = v29;
  v29(v33, v27, v34);
  v35[0] = 1;
  sub_26738114C();
  v12(v7, 0, 1, v32);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000024, v31 | 0x8000000000000000);
  v23(v35, 0);
  v22(v19, v21, v20);
  v35[0] = 1;
  sub_26738114C();
  (v26[0])(v7, 0, 1, v32);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000026, 0x800000026742BA10);
  return v24(v35, 0);
}

uint64_t sub_26717724C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671772B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODFUNNELSiriSchemaODFUNNELCoreDimensions.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0x75426D6574737973, 0xEB00000000646C69);
  v10(v14, 0);
  type metadata accessor for SISchemaAssistantViewMode(0);
  sub_2671777F0();
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x65746E4977656976, 0xED00006563616672);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900, &protocol conformance descriptor for SISchemaISOLocale);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x75706E4969726973, 0xEF656C61636F4C74);
  return v12(v14, 0);
}

uint64_t sub_26717772C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267177790(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671777F0()
{
  result = qword_2800F5F60;
  if (!qword_2800F5F60)
  {
    type metadata accessor for SISchemaAssistantViewMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5F60);
  }

  return result;
}

uint64_t static ODFUNNELSiriSchemaODFUNNELSiriClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23 = a1;
  v1 = sub_26738118C();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x28223BE20](v1);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6430, 0x277D59478);
  sub_266ECAF2C(&qword_2800F6428, &qword_2800F6430, 0x277D59478, &protocol conformance descriptor for ODFUNNELSiriSchemaODFUNNELClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v9(v28, 0);
  sub_266ECB294(0, &qword_2800F6448, 0x277D594A0);
  sub_266ECAF2C(&qword_2800F6450, &qword_2800F6448, 0x277D594A0, &protocol conformance descriptor for ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel);
  sub_26738121C();
  v8(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000024, 0x800000026746BDA0);
  v10(v28, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v27, 0xD000000000000024, 0x800000026746BDA0);
  if (!(*(v7 + 48))(v13, 1, v6))
  {
    sub_266ECB128(&unk_28788AC60);
    sub_26738115C();
  }

  (v12)(v27, 0);
  v11(v28, 0);
  v14 = v24;
  sub_26738117C();
  v15 = sub_2673811BC();
  v17 = v16;
  v18 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_266ECAD54(0, v18[2] + 1, 1, v18);
    *v17 = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_266ECAD54((v20 > 1), v21 + 1, 1, v18);
    *v17 = v18;
  }

  v18[2] = v21 + 1;
  (*(v25 + 32))(v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, v14, v26);
  v15(v28, 0);
  sub_266ECB128(&unk_28788AC88);
  return sub_2673811CC();
}

uint64_t sub_267177D64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267177DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267177EC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267177F2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267177F8C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F6458, &qword_2800F6460, 0x277D59488, &protocol conformance descriptor for ODFUNNELSiriSchemaODFUNNELSiriClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F6468, &qword_2800F6460, 0x277D59488, &protocol conformance descriptor for ODFUNNELSiriSchemaODFUNNELSiriClientEvent);
  result = sub_266ECAF2C(&qword_2800F6470, &qword_2800F6460, 0x277D59488, &protocol conformance descriptor for ODFUNNELSiriSchemaODFUNNELSiriClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDigest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6480, 0x277D59498);
  sub_266ECAF2C(&qword_2800F6488, &qword_2800F6480, 0x277D59498, &protocol conformance descriptor for ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  return v5(v7, 0);
}

uint64_t sub_267178264(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6480, 0x277D59498);
  sub_266ECAF2C(&qword_2800F6488, &qword_2800F6480, 0x277D59498, &protocol conformance descriptor for ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  return v5(v7, 0);
}

uint64_t sub_267178404(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267178468(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v17 = *(v1 - 8);
  v18 = v1;
  MEMORY[0x28223BE20](v1);
  v16 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6440, 0x277D59480);
  sub_266ECAF2C(&qword_2800F6438, &qword_2800F6440, 0x277D59480, &protocol conformance descriptor for ODFUNNELSiriSchemaODFUNNELCoreDimensions);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x656D694465726F63, 0xEE00736E6F69736ELL);
  v8(v19, 0);
  type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIMode(0);
  sub_267178C28(&qword_2800F64A0, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIMode, &protocol conformance descriptor for SIRISETUPSchemaSIRISETUPEnrollmentUIMode);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x656D6C6C6F726E65, 0xEE0065646F4D746ELL);
  v9(v19, 0);
  type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIVoiceTriggerType(0);
  sub_267178C28(&qword_2800F64A8, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUIVoiceTriggerType, &protocol conformance descriptor for SIRISETUPSchemaSIRISETUPEnrollmentUIVoiceTriggerType);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026746BE70);
  v10(v19, 0);
  type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUISessionOutcome(0);
  sub_267178C28(&qword_2800F64B0, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUISessionOutcome, &protocol conformance descriptor for SIRISETUPSchemaSIRISETUPEnrollmentUISessionOutcome);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x800000026746BE90);
  v11(v19, 0);
  (*(v17 + 104))(v16, *MEMORY[0x277D3E538], v18);
  v19[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x800000026746BEB0);
  v12(v19, 0);
  type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUITrainingOutcome(0);
  sub_267178C28(&qword_2800F64B8, type metadata accessor for SIRISETUPSchemaSIRISETUPEnrollmentUITrainingOutcome, &protocol conformance descriptor for SIRISETUPSchemaSIRISETUPEnrollmentUITrainingOutcome);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x676E696E69617274, 0xEF656D6F6374754FLL);
  return v13(v19, 0);
}

uint64_t sub_267178B64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267178BC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267178C28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentFunnel.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5DE8, 0x277D59350);
  sub_266ECAF2C(&qword_2800F5DF0, &qword_2800F5DE8, 0x277D59350, &protocol conformance descriptor for ODDSiriSchemaODDFixedDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6D69446465786966, 0xEF736E6F69736E65);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F6498, 0x277D59490);
  sub_266ECAF2C(&qword_2800F6490, &qword_2800F6498, 0x277D59490, &protocol conformance descriptor for ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDigest);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73747365676964, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_267178F88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267178FEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODMSiriSchemaODMDynamicDimensions.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900, &protocol conformance descriptor for SISchemaISOLocale);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x75706E4969726973, 0xEF656C61636F4C74);
  v6(v12, 0);
  type metadata accessor for ODMSiriSchemaODMSiriUIViewMode(0);
  sub_26717966C(&qword_2800F64C0, type metadata accessor for ODMSiriSchemaODMSiriUIViewMode, &protocol conformance descriptor for ODMSiriSchemaODMSiriUIViewMode);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x65646F4D77656976, 0xE800000000000000);
  v7(v12, 0);
  type metadata accessor for MHSchemaMHAssistantDaemonAudioInputRoute(0);
  sub_26717966C(&qword_2800F3FD0, type metadata accessor for MHSchemaMHAssistantDaemonAudioInputRoute, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioInputRoute);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x746E496F69647561, 0xEE00656361667265);
  v8(v12, 0);
  type metadata accessor for ODMSiriSchemaODMSiriTaskType(0);
  sub_26717966C(&qword_2800F64C8, type metadata accessor for ODMSiriSchemaODMSiriTaskType, &protocol conformance descriptor for ODMSiriSchemaODMSiriTaskType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x657079546B736174, 0xE800000000000000);
  v9(v12, 0);
  type metadata accessor for ODMSiriSchemaODMSiriTaskAppBundleId(0);
  sub_26717966C(&qword_2800F64D0, type metadata accessor for ODMSiriSchemaODMSiriTaskAppBundleId, &protocol conformance descriptor for ODMSiriSchemaODMSiriTaskAppBundleId);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0x427070416B736174, 0xEF6449656C646E75);
  v10(v12, 0);
  sub_266ECB128(&unk_28788ACB8);
  return sub_2673811CC();
}

uint64_t sub_2671795A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717960C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26717966C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ODMSiriSchemaODMDynamicDimensionsAll.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900, &protocol conformance descriptor for SISchemaISOLocale);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x75706E4969726973, 0xEF656C61636F4C74);
  v6(v14, 0);
  type metadata accessor for ODMSiriSchemaODMSiriUIViewMode(0);
  sub_267179E54(&qword_2800F64C0, type metadata accessor for ODMSiriSchemaODMSiriUIViewMode, &protocol conformance descriptor for ODMSiriSchemaODMSiriUIViewMode);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x65646F4D77656976, 0xE800000000000000);
  v7(v14, 0);
  type metadata accessor for MHSchemaMHAssistantDaemonAudioInputRoute(0);
  sub_267179E54(&qword_2800F3FD0, type metadata accessor for MHSchemaMHAssistantDaemonAudioInputRoute, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioInputRoute);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x746E496F69647561, 0xEE00656361667265);
  v8(v14, 0);
  type metadata accessor for SISchemaProduct(0);
  sub_267179E54(&qword_2800F64E8, type metadata accessor for SISchemaProduct, &protocol conformance descriptor for SISchemaProduct);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x746375646F7270, 0xE700000000000000);
  v9(v14, 0);
  type metadata accessor for ORCHSchemaORCHSiriAsrMode(0);
  sub_267179E54(&qword_2800F5F68, type metadata accessor for ORCHSchemaORCHSiriAsrMode, &protocol conformance descriptor for ORCHSchemaORCHSiriAsrMode);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0x4C72734169726973, 0xEF6E6F697461636FLL);
  v10(v14, 0);
  type metadata accessor for ORCHSchemaORCHSiriNlMode(0);
  sub_267179E54(&qword_2800F5F70, type metadata accessor for ORCHSchemaORCHSiriNlMode, &protocol conformance descriptor for ORCHSchemaORCHSiriNlMode);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v11 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F4C6C4E69726973, 0xEE006E6F69746163);
  v11(v14, 0);
  type metadata accessor for SISchemaDataSharingOptInState(0);
  sub_267179E54(&qword_2800F0418, type metadata accessor for SISchemaDataSharingOptInState, &protocol conformance descriptor for SISchemaDataSharingOptInState);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v12 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001ALL, 0x800000026746BF80);
  v12(v14, 0);
  sub_266ECB128(&unk_28788ACE0);
  return sub_2673811CC();
}

uint64_t sub_267179D90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267179DF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267179E54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ODMSiriSchemaODMSiriAggregationDimensions.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v20 = sub_26738113C();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900, &protocol conformance descriptor for SISchemaISOLocale);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v19[1] = a2;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x75706E4969726973, 0xEF656C61636F4C74);
  v11(v21, 0);
  v19[0] = "ggregationDimensions";
  v12 = *MEMORY[0x277D3E538];
  v13 = v3 + 104;
  v14 = *(v3 + 104);
  v19[2] = v13;
  v15 = v20;
  v14(v5, v12, v20);
  v21[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v19[0] | 0x8000000000000000);
  v16(v21, 0);
  v14(v5, *MEMORY[0x277D3E518], v15);
  v21[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000033, 0x800000026746C000);
  v17(v21, 0);
  sub_266ECB128(&unk_28788AD08);
  return sub_2673811CC();
}

uint64_t sub_26717A318(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717A37C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODMSiriSchemaODMSiriAggregationInterval.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v16 = "ggregationDimensions";
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E538], v2);
  v17[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v16 | 0x8000000000000000);
  v12(v17, 0);
  v9(v5, *MEMORY[0x277D3E518], v2);
  v17[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000033, 0x800000026746C000);
  v13(v17, 0);
  sub_266ECB128(&unk_28788AD30);
  return sub_2673811CC();
}

uint64_t sub_26717A76C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717A7D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26717A834()
{
  result = qword_2800F6510;
  if (!qword_2800F6510)
  {
    sub_26717A88C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6510);
  }

  return result;
}

unint64_t sub_26717A88C()
{
  result = qword_2800F6518;
  if (!qword_2800F6518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6518);
  }

  return result;
}

uint64_t static ODMSiriSchemaODMSiriClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v41 = a1;
  v1 = sub_26738118C();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x28223BE20](v1);
  v36 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v35 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6520, 0x277D594F0);
  sub_266ECAF2C(&qword_2800F6528, &qword_2800F6520, 0x277D594F0, &protocol conformance descriptor for ODMSiriSchemaODMSiriEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v9(v43, 0);
  sub_266ECB294(0, &qword_2800F6530, 0x277D59508);
  sub_266ECAF2C(&qword_2800F6538, &qword_2800F6530, 0x277D59508, &protocol conformance descriptor for ODMSiriSchemaODMSiriTaskCountsReported);
  sub_26738121C();
  v40 = v8;
  v35[1] = v7 + 56;
  v8(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x800000026746C0B0);
  v10(v43, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v42, 0xD000000000000012, 0x800000026746C0B0);
  v39 = *(v7 + 48);
  if (!v39(v13, 1, v6))
  {
    sub_266ECB128(&unk_28788AD58);
    sub_26738115C();
  }

  (v12)(v42, 0);
  v11(v43, 0);
  sub_266ECB294(0, &qword_2800F6540, 0x277D594E0);
  sub_266ECAF2C(&qword_2800F6548, &qword_2800F6540, 0x277D594E0, &protocol conformance descriptor for ODMSiriSchemaODMSiriCountsReported);
  sub_26738121C();
  v40(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0x655273746E756F63, 0xEE00646574726F70);
  v14(v43, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v42, 0x655273746E756F63, 0xEE00646574726F70);
  if (!v39(v17, 1, v6))
  {
    sub_266ECB128(&unk_28788AD88);
    sub_26738115C();
  }

  (v16)(v42, 0);
  v15(v43, 0);
  sub_266ECB294(0, &qword_2800F6550, 0x277D594E8);
  sub_266ECAF2C(&qword_2800F6558, &qword_2800F6550, 0x277D594E8, &protocol conformance descriptor for ODMSiriSchemaODMSiriCountsReportedAll);
  sub_26738121C();
  v40(v5, 0, 1, v6);
  v18 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x800000026746C0D0);
  v18(v43, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v42, 0xD000000000000011, 0x800000026746C0D0);
  if (!v39(v21, 1, v6))
  {
    sub_266ECB128(&unk_28788ADB8);
    sub_26738115C();
  }

  (v20)(v42, 0);
  v19(v43, 0);
  sub_266ECB294(0, &qword_2800F6560, 0x277D59518);
  sub_266ECAF2C(&qword_2800F6568, &qword_2800F6560, 0x277D59518, &protocol conformance descriptor for ODMSiriSchemaODMSiriTurnRestatementScoresReported);
  sub_26738121C();
  v40(v5, 0, 1, v6);
  v22 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001DLL, 0x8000000267468690);
  v22(v43, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v42, 0xD00000000000001DLL, 0x8000000267468690);
  if (!v39(v25, 1, v6))
  {
    sub_266ECB128(&unk_28788ADE0);
    sub_26738115C();
  }

  (v24)(v42, 0);
  v23(v43, 0);
  v26 = v36;
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
  (*(v37 + 32))(v30 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v33, v26, v38);
  v27(v43, 0);
  sub_266ECB128(&unk_28788AE08);
  return sub_2673811CC();
}

uint64_t sub_26717B208(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26717B2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26717B36C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717B3D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26717B430(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F6570, &qword_2800F6578, 0x277D594C8, &protocol conformance descriptor for ODMSiriSchemaODMSiriClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F6580, &qword_2800F6578, 0x277D594C8, &protocol conformance descriptor for ODMSiriSchemaODMSiriClientEvent);
  result = sub_266ECAF2C(&qword_2800F6588, &qword_2800F6578, 0x277D594C8, &protocol conformance descriptor for ODMSiriSchemaODMSiriClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static ODMSiriSchemaODMSiriCounts.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F64E0, 0x277D594A8);
  sub_266ECAF2C(&qword_2800F64D8, &qword_2800F64E0, 0x277D594A8, &protocol conformance descriptor for ODMSiriSchemaODMDynamicDimensions);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F6598, 0x277D59500);
  sub_266ECAF2C(&qword_2800F65A0, &qword_2800F6598, 0x277D59500, &protocol conformance descriptor for ODMSiriSchemaODMSiriTaskCounts);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F436B736174, 0xEA00000000007374);
  v7(v9, 0);
  sub_266ECB128(&unk_28788AE40);
  return sub_2673811CC();
}

uint64_t sub_26717B818(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717B87C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODMSiriSchemaODMSiriCountsAll.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F64F8, 0x277D594B0);
  sub_266ECAF2C(&qword_2800F64F0, &qword_2800F64F8, 0x277D594B0, &protocol conformance descriptor for ODMSiriSchemaODMDynamicDimensionsAll);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F65B8, 0x277D594F8);
  sub_266ECAF2C(&qword_2800F65C0, &qword_2800F65B8, 0x277D594F8, &protocol conformance descriptor for ODMSiriSchemaODMSiriRequestCounts);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x4374736575716572, 0xED000073746E756FLL);
  v7(v9, 0);
  sub_266ECB128(&unk_28788AE68);
  return sub_2673811CC();
}

uint64_t sub_26717BC0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717BC70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODMSiriSchemaODMSiriCountsReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6518, 0x277D594C0);
  sub_266ECAF2C(&qword_2800F6510, &qword_2800F6518, 0x277D594C0, &protocol conformance descriptor for ODMSiriSchemaODMSiriAggregationInterval);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x80000002674686F0);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F65B0, 0x277D594D0);
  sub_266ECAF2C(&qword_2800F65A8, &qword_2800F65B0, 0x277D594D0, &protocol conformance descriptor for ODMSiriSchemaODMSiriCounts);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F4369726973, 0xEA00000000007374);
  v7(v9, 0);
  sub_266ECB128(&unk_28788AE90);
  return sub_2673811CC();
}

uint64_t sub_26717BFF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717C05C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODMSiriSchemaODMSiriCountsReportedAll.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6518, 0x277D594C0);
  sub_266ECAF2C(&qword_2800F6510, &qword_2800F6518, 0x277D594C0, &protocol conformance descriptor for ODMSiriSchemaODMSiriAggregationInterval);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x80000002674686F0);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F65D0, 0x277D594D8);
  sub_266ECAF2C(&qword_2800F65C8, &qword_2800F65D0, 0x277D594D8, &protocol conformance descriptor for ODMSiriSchemaODMSiriCountsAll);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E756F4369726973, 0xED00006C6C417374);
  v7(v10, 0);
  type metadata accessor for ODMSiriSchemaODMSiriSegment(0);
  sub_26717C538();
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x73746E656D676573, 0xE800000000000000);
  v8(v10, 0);
  sub_266ECB128(&unk_28788AEB8);
  return sub_2673811CC();
}

uint64_t sub_26717C474(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717C4D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26717C538()
{
  result = qword_2800F65D8;
  if (!qword_2800F65D8)
  {
    type metadata accessor for ODMSiriSchemaODMSiriSegment(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F65D8);
  }

  return result;
}

uint64_t static ODMSiriSchemaODMSiriEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13 = a1;
  v14 = sub_26738113C();
  v1 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496D646FLL, 0xE500000000000000);
  v9(v15, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v14);
  v15[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x65566E6967756C70, 0xED00006E6F697372);
  v10(v15, 0);
  sub_266ECB294(0, &qword_2800F65E0, 0x277D59520);
  sub_266ECAF2C(&qword_2800F65E8, &qword_2800F65E0, 0x277D59520, &protocol conformance descriptor for ODMSiriSchemaODMTrialExperimentIdentifiers);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ALL, 0x800000026746C1F0);
  v11(v15, 0);
  sub_266ECB128(&unk_28788AEE0);
  return sub_2673811CC();
}

uint64_t sub_26717C9F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717CA5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODMSiriSchemaODMSiriRequestCounts.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v8, 0x65757165526C6C61, 0xEF746E756F437473);
  v13(v18, 0);
  v10(v5, v9, v17);
  v18[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026746C240);
  v14(v18, 0);
  sub_266ECB128(&unk_28788AF08);
  return sub_2673811CC();
}

uint64_t sub_26717CE48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717CEAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26717CF10()
{
  result = qword_2800F65C0;
  if (!qword_2800F65C0)
  {
    sub_26717CF68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F65C0);
  }

  return result;
}

unint64_t sub_26717CF68()
{
  result = qword_2800F65B8;
  if (!qword_2800F65B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F65B8);
  }

  return result;
}

uint64_t static ODMSiriSchemaODMSiriSegment.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x800000026746C290, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x800000026746C2B0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x800000026746C2D0, v12);
  *v11 = v16;

  v9(v17, 0);
  sub_266ECB128(&unk_28788AF30);
  return sub_26738112C();
}

uint64_t sub_26717D1DC(uint64_t a1)
{
  v2 = sub_26717D2E0(&qword_2800F65F0, &protocol conformance descriptor for ODMSiriSchemaODMSiriSegment);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26717D244(uint64_t a1, uint64_t a2)
{
  v4 = sub_26717D2E0(&qword_2800F65F0, &protocol conformance descriptor for ODMSiriSchemaODMSiriSegment);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26717D2E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODMSiriSchemaODMSiriSegment(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODMSiriSchemaODMSiriTaskAppBundleId.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026746C330, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x800000026746C350, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x800000026746C380, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ELL, 0x800000026746C3B0, v16);
  *v15 = v21;

  v13(v22, 0);
  sub_266ECB128(&unk_28788AF58);
  return sub_26738112C();
}

uint64_t sub_26717D5C0(uint64_t a1)
{
  v2 = sub_26717D6C4(&qword_2800F65F8, &protocol conformance descriptor for ODMSiriSchemaODMSiriTaskAppBundleId);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26717D628(uint64_t a1, uint64_t a2)
{
  v4 = sub_26717D6C4(&qword_2800F65F8, &protocol conformance descriptor for ODMSiriSchemaODMSiriTaskAppBundleId);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26717D6C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODMSiriSchemaODMSiriTaskAppBundleId(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODMSiriSchemaODMSiriTaskCounts.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v29 = "dm.siri.ODMSiriTaskCounts";
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
  v29 = "completedSiriTaskCount";
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
  sub_266EC637C(v8, 0xD000000000000013, v29 | 0x8000000000000000);
  v18(v32, 0);
  v29 = "failedSiriTaskCount";
  v16(v5, v15, v17);
  v32[0] = 1;
  sub_26738114C();
  v19 = v27;
  v12(v8, 0, 1, v27);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v29 | 0x8000000000000000);
  v20(v32, 0);
  v30(v5, v24, v31);
  v32[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026746C470);
  v21(v32, 0);
  sub_266ECB128(&unk_28788AF80);
  return sub_2673811CC();
}

uint64_t sub_26717DBF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717DC5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26717DCC0()
{
  result = qword_2800F65A0;
  if (!qword_2800F65A0)
  {
    sub_26717DD18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F65A0);
  }

  return result;
}

unint64_t sub_26717DD18()
{
  result = qword_2800F6598;
  if (!qword_2800F6598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6598);
  }

  return result;
}

uint64_t static ODMSiriSchemaODMSiriTaskCountsReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26738113C();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6508, 0x277D594B8);
  sub_266ECAF2C(&qword_2800F6500, &qword_2800F6508, 0x277D594B8, &protocol conformance descriptor for ODMSiriSchemaODMSiriAggregationDimensions);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v32 = v11;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F69736E656D6964, 0xEA0000000000736ELL);
  v13(v36, 0);
  type metadata accessor for ODMSiriSchemaODMSiriTaskType(0);
  sub_26717E484();
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v30 = a2;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x657079546B736174, 0xE800000000000000);
  v14(v36, 0);
  v28 = "dm.siri.ODMSiriTaskCounts";
  v33 = *MEMORY[0x277D3E538];
  v15 = v35;
  v34 = *(v34 + 104);
  v16 = v5;
  (v34)(v5);
  v36[0] = 1;
  sub_26738114C();
  v17 = v9;
  v31 = v12;
  v18 = v32;
  v32(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v28 | 0x8000000000000000);
  v19(v36, 0);
  v28 = "completedSiriTaskCount";
  v20 = v33;
  (v34)(v16, v33, v15);
  v36[0] = 1;
  sub_26738114C();
  v29 = v17;
  v18(v8, 0, 1, v17);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, v28 | 0x8000000000000000);
  v21(v36, 0);
  v28 = "failedSiriTaskCount";
  v22 = v20;
  v24 = v34;
  v23 = v35;
  (v34)(v16, v22, v35);
  v36[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v17);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v28 | 0x8000000000000000);
  v25(v36, 0);
  v24(v16, v33, v23);
  v36[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v29);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026746C470);
  v26(v36, 0);
  sub_266ECB128(&unk_28788AFA8);
  return sub_2673811CC();
}

uint64_t sub_26717E3C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717E424(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26717E484()
{
  result = qword_2800F64C8;
  if (!qword_2800F64C8)
  {
    type metadata accessor for ODMSiriSchemaODMSiriTaskType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F64C8);
  }

  return result;
}

uint64_t static ODMSiriSchemaODMSiriTaskType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x800000026746C500, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x800000026746C520, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x800000026746C540, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x800000026746C560, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x800000026746C580, v20);
  *v19 = v26;

  v17(v27, 0);
  sub_266ECB128(&unk_28788AFD0);
  return sub_26738112C();
}

uint64_t sub_26717E828(uint64_t a1)
{
  v2 = sub_26717E92C(&qword_2800F6600, &protocol conformance descriptor for ODMSiriSchemaODMSiriTaskType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26717E890(uint64_t a1, uint64_t a2)
{
  v4 = sub_26717E92C(&qword_2800F6600, &protocol conformance descriptor for ODMSiriSchemaODMSiriTaskType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26717E92C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODMSiriSchemaODMSiriTaskType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODMSiriSchemaODMSiriTurnRestatementScore.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v28 = v1;
  v29 = v2;
  MEMORY[0x28223BE20](v1);
  v27 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - v5;
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
  v25[1] = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x54746E6572727563, 0xED000064496E7275);
  v11(v30, 0);
  sub_26738120C();
  v12 = v9;
  v9(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E7275547478656ELL, 0xEA00000000006449);
  v13(v30, 0);
  v14 = *MEMORY[0x277D3E4E8];
  v15 = v28;
  v16 = v29 + 104;
  v26 = *(v29 + 104);
  v17 = v27;
  v26(v27, v14, v28);
  v29 = v16;
  v30[0] = 1;
  sub_26738114C();
  v12(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x6552726573557369, 0xED00007473657571);
  v18(v30, 0);
  v25[0] = "TCHTurnRestatementScore";
  v19 = *MEMORY[0x277D3E518];
  v20 = v15;
  v21 = v26;
  v26(v17, v19, v20);
  v30[0] = 1;
  sub_26738114C();
  v12(v6, 0, 1, v7);
  v22 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, v25[0] | 0x8000000000000000);
  v22(v30, 0);
  v21(v17, v19, v28);
  v30[0] = 1;
  sub_26738114C();
  v12(v6, 0, 1, v7);
  v23 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x800000026746C5E0);
  v23(v30, 0);
  sub_266ECB128(&unk_28788AFF8);
  return sub_2673811CC();
}

uint64_t sub_26717EF00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717EF64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODMSiriSchemaODMSiriTurnRestatementScoresReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6610, 0x277D59510);
  sub_266ECAF2C(&qword_2800F6608, &qword_2800F6610, 0x277D59510, &protocol conformance descriptor for ODMSiriSchemaODMSiriTurnRestatementScore);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000019, 0x800000026746C640);
  v5(v7, 0);
  sub_266ECB128(&unk_28788B020);
  return sub_2673811CC();
}

uint64_t sub_26717F214(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717F278(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODMSiriSchemaODMSiriUIViewMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x800000026746C690, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026746C6B0, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x800000026746C6D0, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x800000026746C6F0, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x800000026746C710, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000019, 0x800000026746C730, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000015, 0x800000026746C750, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000020, 0x800000026746C770, v32);
  *v31 = v41;

  v29(v42, 0);
  sub_266ECB128(&unk_28788B048);
  return sub_26738112C();
}

uint64_t sub_26717F77C(uint64_t a1)
{
  v2 = sub_26717F880(&qword_2800F6618, &protocol conformance descriptor for ODMSiriSchemaODMSiriUIViewMode);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26717F7E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26717F880(&qword_2800F6618, &protocol conformance descriptor for ODMSiriSchemaODMSiriUIViewMode);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26717F880(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODMSiriSchemaODMSiriUIViewMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODMSiriSchemaODMTrialExperimentIdentifiers.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v8 = *MEMORY[0x277D3E530];
  v16 = *(v2 + 104);
  v16(v4, v8, v1);
  v19[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D697265707865, 0xEC0000006449746ELL);
  v11(v19, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v10(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656D7461657274, 0xEB00000000644974);
  v12(v19, 0);
  v16(v4, *MEMORY[0x277D3E510], v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D796F6C706564, 0xEC0000006449746ELL);
  v13(v19, 0);
  sub_266ECB128(&unk_28788B070);
  return sub_2673811CC();
}

uint64_t sub_26717FCE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26717FD48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODSAMPLESiriSchemaODSAMPLEClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v3 = sub_26738118C();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v38 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6620, 0x277D59530);
  sub_266ECAF2C(&qword_2800F6628, &qword_2800F6620, 0x277D59530, &protocol conformance descriptor for ODSAMPLESiriSchemaODSAMPLEClientEventMetadata);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x74654D746E657665, 0xED00006174616461);
  v11(v48, 0);
  sub_266ECB294(0, &qword_2800F6630, 0x277D59538);
  sub_266ECAF2C(&qword_2800F6638, &qword_2800F6630, 0x277D59538, &protocol conformance descriptor for ODSAMPLESiriSchemaODSAMPLESpeakerIdModelDeviceSelected);
  v42 = a2;
  sub_26738121C();
  v38[1] = v9 + 56;
  v44 = v10;
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, 0x800000026746C820);
  v12(v48, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v47, 0xD00000000000001CLL, 0x800000026746C820);
  v15 = *(v9 + 48);
  v45 = v9 + 48;
  v43 = v15;
  if (!v15(v16, 1, v8))
  {
    sub_266ECB128(&unk_28788B098);
    sub_26738115C();
  }

  (v14)(v47, 0);
  v13(v48, 0);
  sub_266ECB294(0, &qword_2800F6640, 0x277D59548);
  sub_266ECAF2C(&qword_2800F6648, &qword_2800F6640, 0x277D59548, &protocol conformance descriptor for ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported);
  sub_26738121C();
  v44(v7, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, 0x800000026746C840);
  v17(v48, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v47, 0xD00000000000001CLL, 0x800000026746C840);
  if (!v43(v20, 1, v8))
  {
    sub_266ECB128(&unk_28788B0C8);
    sub_26738115C();
  }

  (v19)(v47, 0);
  v18(v48, 0);
  sub_266ECB294(0, &qword_2800F6650, 0x277D59540);
  sub_266ECAF2C(&qword_2800F6658, &qword_2800F6650, 0x277D59540, &protocol conformance descriptor for ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported);
  sub_26738121C();
  v44(v7, 0, 1, v8);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000024, 0x800000026746C860);
  v21(v48, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v47, 0xD000000000000024, 0x800000026746C860);
  if (!v43(v24, 1, v8))
  {
    sub_266ECB128(&unk_28788B0F8);
    sub_26738115C();
  }

  (v23)(v47, 0);
  v22(v48, 0);
  sub_266ECB294(0, &qword_2800F6660, 0x277D59550);
  sub_266ECAF2C(&qword_2800F6668, &qword_2800F6660, 0x277D59550, &protocol conformance descriptor for ODSAMPLESiriSchemaODSAMPLESpeakerIdSampleToRequestMap);
  sub_26738121C();
  v44(v7, 0, 1, v8);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, 0x800000026746C890);
  v25(v48, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v47, 0xD00000000000001BLL, 0x800000026746C890);
  if (!v43(v28, 1, v8))
  {
    sub_266ECB128(&unk_28788B128);
    sub_26738115C();
  }

  (v27)(v47, 0);
  v26(v48, 0);
  v29 = v39;
  sub_26738117C();
  v30 = sub_2673811BC();
  v32 = v31;
  v33 = *v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v32 = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33 = sub_266ECAD54(0, v33[2] + 1, 1, v33);
    *v32 = v33;
  }

  v36 = v33[2];
  v35 = v33[3];
  if (v36 >= v35 >> 1)
  {
    v33 = sub_266ECAD54((v35 > 1), v36 + 1, 1, v33);
    *v32 = v33;
  }

  v33[2] = v36 + 1;
  (*(v40 + 32))(v33 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v36, v29, v41);
  v30(v48, 0);
  sub_266ECB128(&unk_28788B158);
  return sub_2673811CC();
}

uint64_t sub_267180728(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2671807C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26718088C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671808F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267180950(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F6670, &qword_2800F6678, 0x277D59528, &protocol conformance descriptor for ODSAMPLESiriSchemaODSAMPLEClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F6680, &qword_2800F6678, 0x277D59528, &protocol conformance descriptor for ODSAMPLESiriSchemaODSAMPLEClientEvent);
  result = sub_266ECAF2C(&qword_2800F6688, &qword_2800F6678, 0x277D59528, &protocol conformance descriptor for ODSAMPLESiriSchemaODSAMPLEClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static ODSAMPLESiriSchemaODSAMPLEClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x656C706D6173646FLL, 0xEA00000000006449);
  return v5(v7, 0);
}

uint64_t sub_267180C28(uint64_t a1)
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
  sub_266EC637C(v3, 0x656C706D6173646FLL, 0xEA00000000006449);
  return v5(v7, 0);
}

uint64_t sub_267180DC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267180E2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ODSAMPLESiriSchemaODSAMPLECollectionStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026746C930, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x800000026746C960, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x800000026746C990, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000037, 0x800000026746C9C0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267181158(uint64_t a1)
{
  v2 = sub_26718125C(&qword_2800F66A0, &protocol conformance descriptor for ODSAMPLESiriSchemaODSAMPLECollectionStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671811C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26718125C(&qword_2800F66A0, &protocol conformance descriptor for ODSAMPLESiriSchemaODSAMPLECollectionStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26718125C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODSAMPLESiriSchemaODSAMPLECollectionStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ODSAMPLESiriSchemaODSAMPLESpeakerIdModelDeviceSelected.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026746CA50);
  return v8(v10, 0);
}

uint64_t sub_2671814F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267181554(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671815B8()
{
  result = qword_2800F6638;
  if (!qword_2800F6638)
  {
    sub_267181610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6638);
  }

  return result;
}

unint64_t sub_267181610()
{
  result = qword_2800F6630;
  if (!qword_2800F6630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6630);
  }

  return result;
}

uint64_t static ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleManifestReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x706D615372657375, 0xEE006449676E696CLL);
  v6(v10, 0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x656C706D6173646FLL, 0xEB00000000736449);
  v7(v10, 0);
  type metadata accessor for ODSAMPLESiriSchemaODSAMPLECollectionStatus(0);
  sub_267181A44();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x800000026746CAC0);
  return v8(v10, 0);
}

uint64_t sub_267181980(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671819E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267181A44()
{
  result = qword_2800F6698;
  if (!qword_2800F6698)
  {
    type metadata accessor for ODSAMPLESiriSchemaODSAMPLECollectionStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6698);
  }

  return result;
}

uint64_t static ODSAMPLESiriSchemaODSAMPLESpeakerIdModelSampleReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v79 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v85 = "delSampleReported";
  v84 = *MEMORY[0x277D3E4E8];
  v92 = *(v4 + 104);
  v86 = v3;
  v92(v6);
  v10 = v4 + 104;
  v93[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v88 = v11;
  v13(v9, 0, 1, v11);
  v89 = a2;
  v90 = v13;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v85 | 0x8000000000000000);
  v15(v93, 0);
  v85 = "isEnrollmentSample";
  LODWORD(v81) = *MEMORY[0x277D3E540];
  v92(v6);
  v93[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v82 = v14;
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, v85 | 0x8000000000000000);
  v16(v93, 0);
  v17 = *MEMORY[0x277D3E530];
  v91 = v6;
  v18 = v86;
  v87 = v10;
  v19 = v92;
  (v92)(v6, v17, v86);
  v93[0] = 1;
  sub_26738114C();
  v20 = v88;
  v21 = v90;
  v90(v9, 0, 1, v88);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x7954656369766564, 0xEA00000000006570);
  v22(v93, 0);
  v23 = v91;
  v24 = v17;
  v25 = v17;
  v26 = v18;
  v19(v91, v24, v18);
  v93[0] = 1;
  sub_26738114C();
  v21(v9, 0, 1, v20);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x75426D6574737973, 0xEB00000000646C69);
  v27(v93, 0);
  v80 = "ntDaemonAudioRecordingFailed";
  LODWORD(v85) = v25;
  v28 = v92;
  (v92)(v23, v25, v26);
  v93[0] = 1;
  sub_26738114C();
  v29 = v88;
  v21(v9, 0, 1, v88);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v80 | 0x8000000000000000);
  v30(v93, 0);
  v80 = "startDatestampInDaysSince1970";
  v28(v91, v25, v26);
  v93[0] = 1;
  sub_26738114C();
  v31 = v90;
  v90(v9, 0, 1, v29);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, v80 | 0x8000000000000000);
  v32(v93, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900, &protocol conformance descriptor for SISchemaISOLocale);
  sub_26738120C();
  v31(v9, 0, 1, v29);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0x75706E4969726973, 0xEF656C61636F4C74);
  v33(v93, 0);
  type metadata accessor for SISchemaInvocationSource(0);
  sub_267183230(&qword_2800F5F88, type metadata accessor for SISchemaInvocationSource, &protocol conformance descriptor for SISchemaInvocationSource);
  sub_26738120C();
  v34 = v29;
  v35 = v29;
  v36 = v90;
  v90(v9, 0, 1, v35);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267469520);
  v37(v93, 0);
  type metadata accessor for ORCHSchemaORCHMotionActivity(0);
  sub_267183230(&qword_2800F66A8, type metadata accessor for ORCHSchemaORCHMotionActivity, &protocol conformance descriptor for ORCHSchemaORCHMotionActivity);
  sub_26738120C();
  v36(v9, 0, 1, v34);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0x63416E6F69746F6DLL, 0xEE00797469766974);
  v38(v93, 0);
  v39 = v91;
  v40 = v92;
  v41 = v84;
  v42 = v86;
  (v92)(v91, v84, v86);
  v93[0] = 1;
  sub_26738114C();
  v90(v9, 0, 1, v34);
  v43 = sub_2673811AC();
  sub_266EC637C(v9, 0x7246656B61577369, 0xEF7065656C536D6FLL);
  v43(v93, 0);
  v40(v39, v41, v42);
  v93[0] = 1;
  sub_26738114C();
  v44 = v90;
  v90(v9, 0, 1, v88);
  v45 = sub_2673811AC();
  sub_266EC637C(v9, 0x50616964654D7369, 0xEE00676E6979616CLL);
  v45(v93, 0);
  v80 = "nterfaceProductId";
  v40(v91, v41, v42);
  v93[0] = 1;
  sub_26738114C();
  v46 = v88;
  v44(v9, 0, 1, v88);
  v47 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, v80 | 0x8000000000000000);
  v47(v93, 0);
  type metadata accessor for MHSchemaMHASRAudioCodec(0);
  sub_267183230(&qword_2800EF690, type metadata accessor for MHSchemaMHASRAudioCodec, &protocol conformance descriptor for MHSchemaMHASRAudioCodec);
  sub_26738120C();
  v44(v9, 0, 1, v46);
  v48 = sub_2673811AC();
  sub_266EC637C(v9, 0x646F436F69647561, 0xEA00000000006365);
  v48(v93, 0);
  type metadata accessor for MHSchemaMHAssistantDaemonAudioSource(0);
  sub_267183230(&qword_2800F4168, type metadata accessor for MHSchemaMHAssistantDaemonAudioSource, &protocol conformance descriptor for MHSchemaMHAssistantDaemonAudioSource);
  sub_26738120C();
  v49 = v46;
  v44(v9, 0, 1, v46);
  v50 = sub_2673811AC();
  sub_266EC637C(v9, 0x756F536F69647561, 0xEB00000000656372);
  v50(v93, 0);
  type metadata accessor for ASRSchemaASRDatapackTask(0);
  sub_267183230(&qword_2800EF3B8, type metadata accessor for ASRSchemaASRDatapackTask, &protocol conformance descriptor for ASRSchemaASRDatapackTask);
  sub_26738120C();
  v44(v9, 0, 1, v46);
  v51 = v44;
  v52 = sub_2673811AC();
  sub_266EC637C(v9, 0x6B736154727361, 0xE700000000000000);
  v52(v93, 0);
  v80 = "audioSkippedTimeInNs";
  v53 = v91;
  v54 = v92;
  v55 = v86;
  (v92)(v91, v81, v86);
  v93[0] = 1;
  sub_26738114C();
  v51(v9, 0, 1, v49);
  v56 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v80 | 0x8000000000000000);
  v56(v93, 0);
  v57 = v85;
  (v54)(v53, v85, v55);
  v93[0] = 1;
  v58 = v53;
  sub_26738114C();
  v59 = v88;
  v60 = v90;
  v90(v9, 0, 1, v88);
  v61 = sub_2673811AC();
  sub_266EC637C(v9, 0x42316E7449657270, 0xEB00000000747365);
  v61(v93, 0);
  v62 = v86;
  (v92)(v58, v57, v86);
  v93[0] = 1;
  sub_26738114C();
  v63 = v59;
  v60(v9, 0, 1, v59);
  v64 = sub_2673811AC();
  sub_266EC637C(v9, 0x69616D6F44627573, 0xE90000000000006ELL);
  v64(v93, 0);
  v81 = "isDeviceHandHeld";
  v65 = v92;
  (v92)(v91, v84, v62);
  v93[0] = 1;
  sub_26738114C();
  v60(v9, 0, 1, v63);
  v66 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v81 | 0x8000000000000000);
  v66(v93, 0);
  v81 = "isPersonalRequest";
  v67 = v91;
  (v65)(v91, v84, v62);
  v68 = v65;
  v93[0] = 1;
  sub_26738114C();
  v69 = v88;
  v70 = v90;
  v90(v9, 0, 1, v88);
  v71 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v81 | 0x8000000000000000);
  v71(v93, 0);
  (v68)(v67, v85, v62);
  v93[0] = 1;
  sub_26738114C();
  v70(v9, 0, 1, v69);
  v72 = sub_2673811AC();
  sub_266EC637C(v9, 0x65736E6F70736572, 0xEA00000000006449);
  v72(v93, 0);
  type metadata accessor for ORCHSchemaORCHRequestCancellationReason(0);
  sub_267183230(&qword_2800F66B0, type metadata accessor for ORCHSchemaORCHRequestCancellationReason, &protocol conformance descriptor for ORCHSchemaORCHRequestCancellationReason);
  sub_26738120C();
  v70(v9, 0, 1, v69);
  v73 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x800000026746CC00);
  v73(v93, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v70(v9, 0, 1, v69);
  v74 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496F69647561, 0xE700000000000000);
  v74(v93, 0);
  type metadata accessor for SISchemaTriggerPhrase(0);
  sub_267183230(&qword_2800F66B8, type metadata accessor for SISchemaTriggerPhrase, &protocol conformance descriptor for SISchemaTriggerPhrase);
  sub_26738120C();
  v70(v9, 0, 1, v69);
  v75 = sub_2673811AC();
  sub_266EC637C(v9, 0x5072656767697274, 0xED00006573617268);
  v75(v93, 0);
  sub_266ECB294(0, &qword_2800F66C0, 0x277D5A950);
  sub_266ECAF2C(&qword_2800F66C8, &qword_2800F66C0, 0x277D5A950, &protocol conformance descriptor for SISchemaLocation);
  sub_26738120C();
  v70(v9, 0, 1, v69);
  v76 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E6F697461636F6CLL, 0xE800000000000000);
  v76(v93, 0);
  (v92)(v91, v85, v86);
  v93[0] = 1;
  sub_26738114C();
  v70(v9, 0, 1, v69);
  v77 = sub_2673811AC();
  sub_266EC637C(v9, 0x316E744974736F70, 0xEC00000074736542);
  return v77(v93, 0);
}