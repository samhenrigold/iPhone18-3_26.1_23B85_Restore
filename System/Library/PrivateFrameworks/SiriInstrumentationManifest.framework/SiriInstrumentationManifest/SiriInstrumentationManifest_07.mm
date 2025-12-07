uint64_t sub_266FF083C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF08A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FF0948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FF0990()
{
  result = qword_2800F22E0;
  if (!qword_2800F22E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F22E0);
  }

  return result;
}

uint64_t static HALSchemaHALMediaPlayerState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267442850, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x8000000267442870, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267442890, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x80000002674428B0, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x80000002674428D0, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001BLL, 0x80000002674428F0, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x8000000267442910, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266FF0DBC(uint64_t a1)
{
  v2 = sub_266FF0EC0(&qword_2800F23B0, &protocol conformance descriptor for HALSchemaHALMediaPlayerState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FF0E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FF0EC0(&qword_2800F23B0, &protocol conformance descriptor for HALSchemaHALMediaPlayerState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FF0EC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALMediaPlayerState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALNearbyPersonalDevicesReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v9 = a1;
  sub_26738119C();
  v10 = *MEMORY[0x277D3E538];
  v11 = *(v3 + 104);
  v35 = v3 + 104;
  v12 = v2;
  v11(v5, v10, v2);
  v31 = v11;
  v38[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v34 = *(v14 + 56);
  v15 = v14 + 56;
  v37 = v13;
  v34(v8, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F43656E6F685069, 0xEB00000000746E75);
  v16(v38, 0);
  v33 = v10;
  v11(v5, v10, v12);
  v38[0] = 1;
  sub_26738114C();
  v17 = v13;
  v18 = v34;
  v34(v8, 0, 1, v17);
  v36 = v15;
  v30 = v9;
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E756F4364615069, 0xE900000000000074);
  v19(v38, 0);
  v20 = v10;
  v21 = v31;
  v31(v5, v20, v12);
  v38[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v37);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x756F436863746177, 0xEA0000000000746ELL);
  v22(v38, 0);
  v23 = v33;
  v32 = v12;
  v21(v5, v33, v12);
  v38[0] = 1;
  sub_26738114C();
  v24 = v34;
  v34(v8, 0, 1, v37);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0x436B6F6F4263616DLL, 0xEC000000746E756FLL);
  v25(v38, 0);
  v21(v5, v23, v12);
  v38[0] = 1;
  sub_26738114C();
  v26 = v37;
  v24(v8, 0, 1, v37);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0x696475745363616DLL, 0xEE00746E756F436FLL);
  v27(v38, 0);
  v21(v5, v33, v32);
  v38[0] = 1;
  sub_26738114C();
  v24(v8, 0, 1, v26);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E756F4363614D69, 0xE900000000000074);
  return v28(v38, 0);
}

uint64_t sub_266FF1558(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF15BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FF1620()
{
  result = qword_2800F21F0;
  if (!qword_2800F21F0)
  {
    sub_266FF1678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F21F0);
  }

  return result;
}

unint64_t sub_266FF1678()
{
  result = qword_2800F21E8;
  if (!qword_2800F21E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F21E8);
  }

  return result;
}

uint64_t static HALSchemaHALPowerState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x80000002674429A0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x80000002674429C0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x80000002674429E0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x8000000267442A00, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266FF1948(uint64_t a1)
{
  v2 = sub_266FF1A4C(&qword_2800F23B8, &protocol conformance descriptor for HALSchemaHALPowerState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FF19B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FF1A4C(&qword_2800F23B8, &protocol conformance descriptor for HALSchemaHALPowerState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FF1A4C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALPowerState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALTimerContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD00000000000001CLL, 0x8000000267442A50);
  return v8(v10, 0);
}

uint64_t sub_266FF1CE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF1D44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FF1DA8()
{
  result = qword_2800F22F8;
  if (!qword_2800F22F8)
  {
    sub_266FF1E00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F22F8);
  }

  return result;
}

unint64_t sub_266FF1E00()
{
  result = qword_2800F22F0;
  if (!qword_2800F22F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F22F0);
  }

  return result;
}

uint64_t static HALSchemaHALVoiceTriggerContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000023, 0x8000000267442AA0);
  return v8(v10, 0);
}

uint64_t sub_266FF209C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF2100(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FF2164()
{
  result = qword_2800F2308;
  if (!qword_2800F2308)
  {
    sub_266FF21BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2308);
  }

  return result;
}

unint64_t sub_266FF21BC()
{
  result = qword_2800F2300;
  if (!qword_2800F2300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2300);
  }

  return result;
}

uint64_t static HomeKitSchemaHKAccessoryCommunicationProtocol.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000028, 0x8000000267442B10, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x8000000267442B40, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x8000000267442B70, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266FF241C(uint64_t a1)
{
  v2 = sub_266FF2520(&qword_2800F23C8, &protocol conformance descriptor for HomeKitSchemaHKAccessoryCommunicationProtocol);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FF2484(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FF2520(&qword_2800F23C8, &protocol conformance descriptor for HomeKitSchemaHKAccessoryCommunicationProtocol);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FF2520(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeKitSchemaHKAccessoryCommunicationProtocol(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HomeKitSchemaHKAccessoryOperationReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v79 = sub_26738113C();
  v3 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v69 - v7;
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
  v13 = v12;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x654D646572616873, 0xEF64497363697274);
  v14(v81, 0);
  v72 = *MEMORY[0x277D3E530];
  v15 = *(v3 + 104);
  v78 = v3 + 104;
  v75 = v15;
  v80 = v5;
  (v15)(v5);
  v81[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267442BE0);
  v16(v81, 0);
  type metadata accessor for HomeKitSchemaHKAccessoryCommunicationProtocol(0);
  sub_266FF35A8(&qword_2800F23C0, type metadata accessor for HomeKitSchemaHKAccessoryCommunicationProtocol, &protocol conformance descriptor for HomeKitSchemaHKAccessoryCommunicationProtocol);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267442C00);
  v17(v81, 0);
  type metadata accessor for HomeKitSchemaHKTransportType(0);
  sub_266FF35A8(&qword_2800F23D0, type metadata accessor for HomeKitSchemaHKTransportType, &protocol conformance descriptor for HomeKitSchemaHKTransportType);
  sub_26738120C();
  v74 = v11;
  v11(v8, 0, 1, v9);
  v18 = v13;
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x726F70736E617274, 0xED00006570795474);
  v19(v81, 0);
  type metadata accessor for HomeKitSchemaHKAccessoryOperationType(0);
  sub_266FF35A8(&qword_2800F23D8, type metadata accessor for HomeKitSchemaHKAccessoryOperationType, &protocol conformance descriptor for HomeKitSchemaHKAccessoryOperationType);
  sub_26738120C();
  v20 = v9;
  v77 = v9;
  v11(v8, 0, 1, v9);
  v76 = v18;
  v21 = a2;
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F6974617265706FLL, 0xED0000657079546ELL);
  v22(v81, 0);
  v24 = v79;
  LODWORD(v71) = *MEMORY[0x277D3E4E8];
  v23 = v71;
  v25 = v75;
  v75(v80, v71, v79);
  v81[0] = 1;
  sub_26738114C();
  v26 = v74;
  v74(v8, 0, 1, v20);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0x6568636143736177, 0xE900000000000064);
  v27(v81, 0);
  v28 = v24;
  v25(v80, v23, v24);
  v29 = v25;
  v81[0] = 1;
  sub_26738114C();
  v30 = v77;
  v31 = v26;
  v26(v8, 0, 1, v77);
  v73 = v21;
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C61636F4C736177, 0xE800000000000000);
  v32(v81, 0);
  v70 = "communicationProtocol";
  v33 = v80;
  v34 = v71;
  v29(v80, v71, v28);
  v81[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v30);
  v35 = v31;
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v70 | 0x8000000000000000);
  v36(v81, 0);
  v70 = "wasRemoteAccessAllowed";
  v37 = v79;
  v38 = v75;
  v75(v33, v34, v79);
  v81[0] = 1;
  sub_26738114C();
  v39 = v77;
  v35(v8, 0, 1, v77);
  v40 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v70 | 0x8000000000000000);
  v40(v81, 0);
  v38(v80, v71, v37);
  v81[0] = 1;
  sub_26738114C();
  v35(v8, 0, 1, v39);
  v41 = v35;
  v42 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F70706152736177, 0xEE00776F6C537472);
  v42(v81, 0);
  v70 = "wasResidentFirstEnabled";
  LODWORD(v71) = *MEMORY[0x277D3E538];
  v43 = v80;
  v44 = v75;
  (v75)(v80);
  v81[0] = 1;
  sub_26738114C();
  v45 = v77;
  v41(v8, 0, 1, v77);
  v46 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v70 | 0x8000000000000000);
  v46(v81, 0);
  v44(v43, v72, v37);
  v81[0] = 1;
  sub_26738114C();
  v47 = v74;
  v74(v8, 0, 1, v45);
  v48 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267442C80);
  v48(v81, 0);
  v70 = "residentFirstErrorDomain";
  v49 = v71;
  v50 = v79;
  v51 = v75;
  v75(v43, v71, v79);
  v81[0] = 1;
  sub_26738114C();
  v52 = v77;
  v47(v8, 0, 1, v77);
  v53 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v70 | 0x8000000000000000);
  v53(v81, 0);
  v54 = v49;
  v55 = v51;
  v51(v80, v54, v50);
  v81[0] = 1;
  sub_26738114C();
  v56 = v52;
  v57 = v52;
  v58 = v74;
  v74(v8, 0, 1, v57);
  v59 = sub_2673811AC();
  sub_266EC637C(v8, 0x7275446C61746F74, 0xED00006E6F697461);
  v59(v81, 0);
  v70 = "residentFirstErrorCode";
  v60 = v80;
  v55(v80, v72, v50);
  v81[0] = 1;
  sub_26738114C();
  v61 = v58;
  v58(v8, 0, 1, v56);
  v62 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v70 | 0x8000000000000000);
  v62(v81, 0);
  v63 = v60;
  v64 = v60;
  v65 = v71;
  v55(v64, v71, v79);
  v81[0] = 1;
  sub_26738114C();
  v61(v8, 0, 1, v56);
  v66 = sub_2673811AC();
  sub_266EC637C(v8, 0x7272456C616E6966, 0xEE0065646F43726FLL);
  v66(v81, 0);
  v55(v63, v65, v79);
  v81[0] = 1;
  sub_26738114C();
  v61(v8, 0, 1, v77);
  v67 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267442CE0);
  return v67(v81, 0);
}

uint64_t sub_266FF34E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF3548(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FF35A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static HomeKitSchemaHKAccessoryOperationType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267442D40, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267442D70, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267442D90, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266FF3848(uint64_t a1)
{
  v2 = sub_266FF394C(&qword_2800F23F0, &protocol conformance descriptor for HomeKitSchemaHKAccessoryOperationType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FF38B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FF394C(&qword_2800F23F0, &protocol conformance descriptor for HomeKitSchemaHKAccessoryOperationType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FF394C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeKitSchemaHKAccessoryOperationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HomeKitSchemaHKAudioTopologyReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20 = sub_26738113C();
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v19 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HomeKitSchemaHKDevicesAudioTopology(0);
  sub_266FF3F18(&qword_2800F23F8, type metadata accessor for HomeKitSchemaHKDevicesAudioTopology, &protocol conformance descriptor for HomeKitSchemaHKDevicesAudioTopology);
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v17 = *(v6 + 56);
  v17(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0x706F546F69647561, 0xED000079676F6C6FLL);
  v7(v22, 0);
  v8 = sub_2673811AC();
  v9 = sub_266ECB6CC(v21, 0x706F546F69647561, 0xED000079676F6C6FLL);
  v10 = *(v6 + 48);
  if (!v10(v11, 1, v5))
  {
    sub_266ECB128(&unk_2878866D8);
    sub_26738115C();
  }

  (v9)(v21, 0);
  v8(v22, 0);
  (*(v18 + 104))(v19, *MEMORY[0x277D3E4E8], v20);
  v22[0] = 1;
  sub_26738114C();
  v17(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x72656461654C7369, 0xE800000000000000);
  v12(v22, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v21, 0x72656461654C7369, 0xE800000000000000);
  if (!v10(v15, 1, v5))
  {
    sub_266ECB128(&unk_287886700);
    sub_26738115C();
  }

  (v14)(v21, 0);
  return v13(v22, 0);
}

uint64_t sub_266FF3E0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF3E70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FF3F18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FF3F60()
{
  result = qword_2800F2408;
  if (!qword_2800F2408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2408);
  }

  return result;
}

uint64_t static HomeKitSchemaHKClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v26 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2410, 0x277D57B00);
  sub_266ECAF2C(&qword_2800F2418, &qword_2800F2410, 0x277D57B00, &protocol conformance descriptor for HomeKitSchemaHomeKitEventMetadata);
  v24[1] = a1;
  sub_26738120C();
  v7 = sub_26738116C();
  v25 = *(v7 - 8);
  v8 = *(v25 + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v30, 0);
  sub_266ECB294(0, &qword_2800F23E8, 0x277D57AE8);
  sub_266ECAF2C(&qword_2800F23E0, &qword_2800F23E8, 0x277D57AE8, &protocol conformance descriptor for HomeKitSchemaHKAccessoryOperationReported);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000021, 0x8000000267442E20);
  v10(v30, 0);
  sub_266ECB294(0, &qword_2800F2408, 0x277D57AF0);
  sub_266ECAF2C(&qword_2800F2400, &qword_2800F2408, 0x277D57AF0, &protocol conformance descriptor for HomeKitSchemaHKAudioTopologyReported);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x8000000267442E50);
  v11(v30, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v29, 0xD000000000000015, 0x8000000267442E50);
  if (!(*(v25 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_287886728);
    sub_26738115C();
  }

  (v13)(v29, 0);
  v12(v30, 0);
  v15 = v26;
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
  (*(v27 + 32))(v19 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, v15, v28);
  v16(v30, 0);
  sub_266ECB128(&unk_287886750);
  return sub_2673811CC();
}

uint64_t sub_266FF4560(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FF45F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FF46C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF4728(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FF4788(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F2420, &qword_2800F2010, 0x277D57AF8, &protocol conformance descriptor for HomeKitSchemaHKClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F2428, &qword_2800F2010, 0x277D57AF8, &protocol conformance descriptor for HomeKitSchemaHKClientEvent);
  result = sub_266ECAF2C(&qword_2800F2430, &qword_2800F2010, 0x277D57AF8, &protocol conformance descriptor for HomeKitSchemaHKClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static HomeKitSchemaHKDevicesAudioTopology.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267442EB0, isUniquelyReferenced_nonNull_native);
  *v3 = v57;

  v1(v67, 0);
  v5 = sub_266ECB128(&unk_287886788);
  v7 = v6;
  v8 = sub_2673810FC();
  v10 = v9;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v10;
  *v10 = 0x8000000000000000;
  sub_266ECD4CC(v5, v7, 0, v11);
  *v10 = v58;
  v8(v67, 0);
  v12 = sub_26738111C();
  v14 = v13;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v14;
  *v14 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267442ED0, v15);
  *v14 = v59;

  v12(v67, 0);
  v16 = sub_266ECB128(&unk_2878867B0);
  v18 = v17;
  v19 = sub_2673810FC();
  v21 = v20;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD4CC(v16, v18, 1, v22);
  *v21 = v60;
  v19(v67, 0);
  v23 = sub_26738111C();
  v25 = v24;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v25;
  *v25 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x8000000267442EF0, v26);
  *v25 = v61;

  v23(v67, 0);
  v27 = sub_266ECB128(&unk_2878867D8);
  v29 = v28;
  v30 = sub_2673810FC();
  v32 = v31;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v32;
  *v32 = 0x8000000000000000;
  sub_266ECD4CC(v27, v29, 2, v33);
  *v32 = v62;
  v30(v67, 0);
  v34 = sub_26738111C();
  v36 = v35;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v36;
  *v36 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x8000000267442F20, v37);
  *v36 = v63;

  v34(v67, 0);
  v38 = sub_266ECB128(&unk_287886800);
  v40 = v39;
  v41 = sub_2673810FC();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD4CC(v38, v40, 3, v44);
  *v43 = v64;
  v41(v67, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002BLL, 0x8000000267442F50, v48);
  *v47 = v65;

  v45(v67, 0);
  v49 = sub_266ECB128(&unk_287886828);
  v51 = v50;
  v52 = sub_2673810FC();
  v54 = v53;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v54;
  *v54 = 0x8000000000000000;
  sub_266ECD4CC(v49, v51, 4, v55);
  *v54 = v66;
  return v52(v67, 0);
}

uint64_t sub_266FF4DB4(uint64_t a1)
{
  v2 = sub_266FF4EB8(&qword_2800F2438, &protocol conformance descriptor for HomeKitSchemaHKDevicesAudioTopology);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FF4E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FF4EB8(&qword_2800F2438, &protocol conformance descriptor for HomeKitSchemaHKDevicesAudioTopology);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FF4EB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeKitSchemaHKDevicesAudioTopology(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HomeKitSchemaHKTransportType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267442FB0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x8000000267442FD0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267442FF0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x8000000267443010, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000016, 0x8000000267443030, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_266FF51F4(uint64_t a1)
{
  v2 = sub_266FF52F8(&qword_2800F2440, &protocol conformance descriptor for HomeKitSchemaHKTransportType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FF525C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FF52F8(&qword_2800F2440, &protocol conformance descriptor for HomeKitSchemaHKTransportType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FF52F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeKitSchemaHKTransportType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HomeKitSchemaHomeKitEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 1682533224, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682533224, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287886850);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266FF55D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF5634(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static HOMESchemaHOMEAssistantDeviceBirthday.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v8, 1918985593, 0xE400000000000000);
  v13(v18, 0);
  v10(v5, v9, v17);
  v18[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x68746E6F6DLL, 0xE500000000000000);
  return v14(v18, 0);
}

uint64_t sub_266FF59EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF5A50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FF5AB4()
{
  result = qword_2800F2448;
  if (!qword_2800F2448)
  {
    sub_266FF5B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2448);
  }

  return result;
}

unint64_t sub_266FF5B0C()
{
  result = qword_2800F2450;
  if (!qword_2800F2450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2450);
  }

  return result;
}

uint64_t static HOMESchemaHOMEAssistantInfoReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6F48646568736168, 0xEC0000006449656DLL);
  return v5(v7, 0);
}

uint64_t sub_266FF5D34(uint64_t a1)
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
  sub_266EC637C(v3, 0x6F48646568736168, 0xEC0000006449656DLL);
  return v5(v7, 0);
}

uint64_t sub_266FF5ED8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF5F3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static HOMESchemaHOMEClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F2468, 0x277D57AE0);
  sub_266ECAF2C(&qword_2800F2470, &qword_2800F2468, 0x277D57AE0, &protocol conformance descriptor for HOMESchemaHOMEClientEventMetadata);
  v21 = a1;
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F2460, 0x277D57AD0);
  sub_266ECAF2C(&qword_2800F2458, &qword_2800F2460, 0x277D57AD0, &protocol conformance descriptor for HOMESchemaHOMEAssistantInfoReported);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x8000000267443140);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F2450, 0x277D57AC8);
  sub_266ECAF2C(&qword_2800F2448, &qword_2800F2450, 0x277D57AC8, &protocol conformance descriptor for HOMESchemaHOMEAssistantDeviceBirthday);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x8000000267443160);
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
  sub_266ECB128(&unk_287886880);
  return sub_2673811CC();
}

uint64_t sub_266FF64F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FF6588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FF6654(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF66B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FF6718(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F2478, &qword_2800F1F40, 0x277D57AD8, &protocol conformance descriptor for HOMESchemaHOMEClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F2480, &qword_2800F1F40, 0x277D57AD8, &protocol conformance descriptor for HOMESchemaHOMEClientEvent);
  result = sub_266ECAF2C(&qword_2800F2488, &qword_2800F1F40, 0x277D57AD8, &protocol conformance descriptor for HOMESchemaHOMEClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static HOMESchemaHOMEClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x706D6F43656D6F68, 0xEF6449746E656E6FLL);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x706D6F43656D6F68, 0xEF6449746E656E6FLL);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878868B8);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266FF6ACC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF6B30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IASchemaIAClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F2490, 0x277D57B10);
  sub_266ECAF2C(&qword_2800F2498, &qword_2800F2490, 0x277D57B10, &protocol conformance descriptor for IASchemaIAClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F24A0, 0x277D57B18);
  sub_266ECAF2C(&qword_2800F24A8, &qword_2800F24A0, 0x277D57B18, &protocol conformance descriptor for IASchemaIASiriMissEvaluationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  v10 = v20;
  sub_266EC637C(v5, 0xD000000000000019, 0x80000002674431F0);
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
  sub_266ECB128(&unk_2878868E0);
  return sub_2673811CC();
}

uint64_t sub_266FF7004(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FF709C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FF7168(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF71CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FF722C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F24B0, &qword_2800F24B8, 0x277D57B08, &protocol conformance descriptor for IASchemaIAClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F24C0, &qword_2800F24B8, 0x277D57B08, &protocol conformance descriptor for IASchemaIAClientEvent);
  result = sub_266ECAF2C(&qword_2800F24C8, &qword_2800F24B8, 0x277D57B08, &protocol conformance descriptor for IASchemaIAClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static IASchemaIAClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 1682530665, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682530665, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287886918);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266FF75C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF7624(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IASchemaIASiriMissEvaluationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F24D8, 0x277D57B30);
  sub_266ECAF2C(&qword_2800F24E0, &qword_2800F24D8, 0x277D57B30, &protocol conformance descriptor for IASchemaIASiriMissEvaluationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F24E8, 0x277D57B20);
  sub_266ECAF2C(&qword_2800F24F0, &qword_2800F24E8, 0x277D57B20, &protocol conformance descriptor for IASchemaIASiriMissEvaluationEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F24F8, 0x277D57B28);
  sub_266ECAF2C(&qword_2800F2500, &qword_2800F24F8, 0x277D57B28, &protocol conformance descriptor for IASchemaIASiriMissEvaluationFailed);
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

uint64_t sub_266FF7BE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF7C44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IASchemaIASiriMissEvaluationEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0x694D697269537369, 0xEA00000000007373);
  v10(v14, 0);
  sub_266ECB294(0, &qword_2800F2508, 0x277D57B38);
  sub_266ECAF2C(&qword_2800F2510, &qword_2800F2508, 0x277D57B38, &protocol conformance descriptor for IASchemaIAVoiceTriggerEventSummary);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x80000002674432C0);
  return v11(v14, 0);
}

uint64_t sub_266FF8020(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF8084(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IASchemaIASiriMissEvaluationFailed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v8(v10, 0);
}

uint64_t sub_266FF8378(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF83DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FF8440()
{
  result = qword_2800F2500;
  if (!qword_2800F2500)
  {
    sub_266FF8498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2500);
  }

  return result;
}

unint64_t sub_266FF8498()
{
  result = qword_2800F24F8;
  if (!qword_2800F24F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F24F8);
  }

  return result;
}

uint64_t static IASchemaIASiriMissEvaluationStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x7265567465737361, 0xEC0000006E6F6973);
  return v8(v10, 0);
}

uint64_t sub_266FF8738(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF879C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FF8800()
{
  result = qword_2800F24E0;
  if (!qword_2800F24E0)
  {
    sub_266FF8858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F24E0);
  }

  return result;
}

unint64_t sub_266FF8858()
{
  result = qword_2800F24D8;
  if (!qword_2800F24D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F24D8);
  }

  return result;
}

uint64_t static IASchemaIAVoiceTriggerEventSummary.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a1;
  v3 = sub_26738113C();
  v126 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v110 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v124 = "iggerEventSummary";
  v10 = *(v4 + 104);
  v10(v6, *MEMORY[0x277D3E540], v3);
  v120 = v4 + 104;
  v127[0] = 1;
  sub_26738114C();
  v123 = sub_26738116C();
  v11 = *(v123 - 8);
  v121 = *(v11 + 56);
  v12 = v11 + 56;
  v121(v9, 0, 1, v123);
  v119 = v12;
  v125 = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000020, v124 | 0x8000000000000000);
  v13(v127, 0);
  v118 = "onTimestampInSec";
  LODWORD(v124) = *MEMORY[0x277D3E500];
  v14 = v124;
  v15 = v126;
  v10(v6, v124, v126);
  v127[0] = 1;
  sub_26738114C();
  v16 = v123;
  v17 = v121;
  v121(v9, 0, 1, v123);
  v18 = sub_2673811AC();
  v115 = 0xD000000000000014;
  sub_266EC637C(v9, 0xD000000000000014, v118 | 0x8000000000000000);
  v18(v127, 0);
  v118 = "firstPassPeakScoreHS";
  v122 = v10;
  v10(v6, v14, v15);
  v127[0] = 1;
  sub_26738114C();
  v17(v9, 0, 1, v16);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v118 | 0x8000000000000000);
  v19(v127, 0);
  v118 = "firstPassPeakScoreJS";
  v112 = *MEMORY[0x277D3E538];
  v20 = v126;
  (v10)(v6);
  v127[0] = 1;
  sub_26738114C();
  v21 = v123;
  v22 = v121;
  v121(v9, 0, 1, v123);
  v23 = sub_2673811AC();
  v113 = 0xD000000000000010;
  sub_266EC637C(v9, 0xD000000000000010, v118 | 0x8000000000000000);
  v23(v127, 0);
  v24 = v6;
  v25 = v6;
  v26 = v124;
  v27 = v122;
  v122(v25, v124, v20);
  v127[0] = 1;
  sub_26738114C();
  v22(v9, 0, 1, v21);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0x5372656767697274, 0xEE00534865726F63);
  v28(v127, 0);
  v29 = v26;
  v30 = v126;
  v27(v24, v26, v126);
  v127[0] = 1;
  sub_26738114C();
  v31 = v123;
  v32 = v121;
  v121(v9, 0, 1, v123);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0x5372656767697274, 0xEE00534A65726F63);
  v33(v127, 0);
  v34 = v30;
  v35 = v122;
  v122(v24, v29, v34);
  v127[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v31);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0x697461676974696DLL, 0xEF65726F63536E6FLL);
  v36(v127, 0);
  v118 = "invocationTypeId";
  v37 = v126;
  v35(v24, v29, v126);
  v127[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v31);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000020, v118 | 0x8000000000000000);
  v38(v127, 0);
  v116 = "zerCombinedScore";
  v117 = v24;
  v39 = v124;
  v40 = v37;
  v41 = v122;
  v122(v24, v124, v40);
  v127[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v31);
  v42 = sub_2673811AC();
  v118 = 0xD000000000000017;
  sub_266EC637C(v9, 0xD000000000000017, v116 | 0x8000000000000000);
  v42(v127, 0);
  v116 = "triggerScoreHSThreshold";
  v43 = v117;
  v44 = v39;
  v45 = v126;
  v41(v117, v44, v126);
  v127[0] = 1;
  sub_26738114C();
  v46 = v123;
  v47 = v121;
  v121(v9, 0, 1, v123);
  v48 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v116 | 0x8000000000000000);
  v48(v127, 0);
  v111 = "triggerScoreJSThreshold";
  v49 = v124;
  v50 = v122;
  v122(v43, v124, v45);
  v127[0] = 1;
  sub_26738114C();
  v47(v9, 0, 1, v46);
  v51 = sub_2673811AC();
  v116 = 0xD000000000000018;
  sub_266EC637C(v9, 0xD000000000000018, v111 | 0x8000000000000000);
  v51(v127, 0);
  v111 = "mitigationScoreThreshold";
  v52 = v126;
  v50(v43, v49, v126);
  v127[0] = 1;
  sub_26738114C();
  v53 = v123;
  v54 = v121;
  v121(v9, 0, 1, v123);
  v55 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000024, v111 | 0x8000000000000000);
  v55(v127, 0);
  v111 = "zerCombinedThreshold";
  v56 = v52;
  v57 = v122;
  v122(v43, *MEMORY[0x277D3E530], v52);
  v127[0] = 1;
  sub_26738114C();
  v58 = v53;
  v54(v9, 0, 1, v53);
  v59 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v111 | 0x8000000000000000);
  v59(v127, 0);
  v111 = "voiceTriggerConfigVersion";
  v60 = v56;
  v61 = v57;
  v57(v43, v124, v56);
  v127[0] = 1;
  sub_26738114C();
  v62 = v121;
  v121(v9, 0, 1, v58);
  v63 = sub_2673811AC();
  sub_266EC637C(v9, v118, v111 | 0x8000000000000000);
  v63(v127, 0);
  LODWORD(v118) = *MEMORY[0x277D3E4E8];
  (v57)(v117);
  v127[0] = 1;
  sub_26738114C();
  v62(v9, 0, 1, v58);
  v64 = sub_2673811AC();
  sub_266EC637C(v9, 0x547478654E736168, 0xEB000000006E7275);
  v64(v127, 0);
  v111 = "userActionTimeThreshold";
  v65 = v117;
  v61(v117, v124, v60);
  v127[0] = 1;
  sub_26738114C();
  v66 = v123;
  v62(v9, 0, 1, v123);
  v67 = sub_2673811AC();
  sub_266EC637C(v9, v116, v111 | 0x8000000000000000);
  v67(v127, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v62(v9, 0, 1, v66);
  v68 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E7275547478656ELL, 0xEA00000000006449);
  v68(v127, 0);
  v114 = "timeDeltaToNextTurnInSec";
  v69 = v126;
  v70 = v122;
  v122(v65, v112, v126);
  v127[0] = 1;
  sub_26738114C();
  v62(v9, 0, 1, v66);
  v71 = sub_2673811AC();
  sub_266EC637C(v9, v116, v114 | 0x8000000000000000);
  v71(v127, 0);
  v70(v65, v118, v69);
  v127[0] = 1;
  sub_26738114C();
  v72 = v123;
  v62(v9, 0, 1, v123);
  v73 = sub_2673811AC();
  sub_266EC637C(v9, 0x75547478654E7369, 0xEF64696C61566E72);
  v73(v127, 0);
  v116 = "nextTurnInvocationSource";
  v74 = v126;
  v70(v65, v124, v126);
  v127[0] = 1;
  sub_26738114C();
  v75 = v72;
  v76 = v121;
  v121(v9, 0, 1, v75);
  v77 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v116 | 0x8000000000000000);
  v77(v127, 0);
  v116 = "repetitionSimilarityScore";
  v78 = v122;
  v122(v65, v118, v74);
  v127[0] = 1;
  sub_26738114C();
  v79 = v123;
  v76(v9, 0, 1, v123);
  v80 = sub_2673811AC();
  sub_266EC637C(v9, v113, v116 | 0x8000000000000000);
  v80(v127, 0);
  v116 = "hasNextRejection";
  v81 = v126;
  v78(v65, v124, v126);
  v127[0] = 1;
  sub_26738114C();
  v76(v9, 0, 1, v79);
  v82 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, v116 | 0x8000000000000000);
  v82(v127, 0);
  v114 = "timeDeltaToNextRejectionInSec";
  v83 = v81;
  v84 = v122;
  v122(v65, v118, v81);
  v127[0] = 1;
  sub_26738114C();
  v85 = v123;
  v86 = v121;
  v121(v9, 0, 1, v123);
  v87 = sub_2673811AC();
  v116 = 0xD000000000000011;
  sub_266EC637C(v9, 0xD000000000000011, v114 | 0x8000000000000000);
  v87(v127, 0);
  v114 = "hasAppLaunchEvent";
  v84(v65, v124, v83);
  v127[0] = 1;
  sub_26738114C();
  v86(v9, 0, 1, v85);
  v88 = v86;
  v89 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v114 | 0x8000000000000000);
  v89(v127, 0);
  v114 = "timeDeltaToAppLaunchInSec";
  v90 = v126;
  v91 = v122;
  v122(v65, v118, v126);
  v127[0] = 1;
  sub_26738114C();
  v92 = v123;
  v88(v9, 0, 1, v123);
  v93 = sub_2673811AC();
  sub_266EC637C(v9, v116, v114 | 0x8000000000000000);
  v93(v127, 0);
  v114 = "hasAppIntentEvent";
  v94 = v117;
  v95 = v90;
  v91(v117, v124, v90);
  v127[0] = 1;
  sub_26738114C();
  v96 = v92;
  v97 = v121;
  v121(v9, 0, 1, v92);
  v98 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, v114 | 0x8000000000000000);
  v98(v127, 0);
  v114 = "timeDeltaToAppIntentEventInSec";
  v99 = v122;
  v122(v94, v118, v95);
  v127[0] = 1;
  v100 = v94;
  sub_26738114C();
  v101 = v96;
  v97(v9, 0, 1, v96);
  v102 = sub_2673811AC();
  sub_266EC637C(v9, v116, v114 | 0x8000000000000000);
  v102(v127, 0);
  v116 = "hasTextInputEvent";
  v103 = v126;
  v104 = v99;
  v99(v100, v124, v126);
  v127[0] = 1;
  sub_26738114C();
  v105 = v121;
  v121(v9, 0, 1, v101);
  v106 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v116 | 0x8000000000000000);
  v106(v127, 0);
  v104(v100, v118, v103);
  v127[0] = 1;
  sub_26738114C();
  v105(v9, 0, 1, v101);
  v107 = sub_2673811AC();
  sub_266EC637C(v9, v115, 0x8000000267443690);
  v107(v127, 0);
  v104(v100, v124, v126);
  v127[0] = 1;
  sub_26738114C();
  v105(v9, 0, 1, v123);
  v108 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, 0x80000002674436B0);
  return v108(v127, 0);
}

uint64_t sub_266FFA274(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFA2D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x8000000267443720);
  return v8(v10, 0);
}

uint64_t sub_266FFA5CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFA630(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FFA694()
{
  result = qword_2800F2518;
  if (!qword_2800F2518)
  {
    sub_266FFA6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2518);
  }

  return result;
}

unint64_t sub_266FFA6EC()
{
  result = qword_2800F2520;
  if (!qword_2800F2520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2520);
  }

  return result;
}

uint64_t static IDENTITYSchemaIDENTITYClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F2528, 0x277D57B50);
  sub_266ECAF2C(&qword_2800F2530, &qword_2800F2528, 0x277D57B50, &protocol conformance descriptor for IDENTITYSchemaIDENTITYClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v30, 0);
  sub_266ECB294(0, &qword_2800F2538, 0x277D57B88);
  sub_266ECAF2C(&qword_2800F2540, &qword_2800F2538, 0x277D57B88, &protocol conformance descriptor for IDENTITYSchemaIDENTITYScoreCardsGenerated);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x8000000267443780);
  v9(v30, 0);
  sub_266ECB294(0, &qword_2800F2548, 0x277D57B70);
  sub_266ECAF2C(&qword_2800F2550, &qword_2800F2548, 0x277D57B70, &protocol conformance descriptor for IDENTITYSchemaIDENTITYIdentityRequestContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000017, 0x80000002674437A0);
  v10(v30, 0);
  sub_266ECB294(0, &qword_2800F2558, 0x277D57B60);
  sub_266ECAF2C(&qword_2800F2560, &qword_2800F2558, 0x277D57B60, &protocol conformance descriptor for IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000015, 0x80000002674437C0);
  v11(v30, 0);
  sub_266ECB294(0, &qword_2800F2568, 0x277D57B58);
  sub_266ECAF2C(&qword_2800F2570, &qword_2800F2568, 0x277D57B58, &protocol conformance descriptor for IDENTITYSchemaIDENTITYFirstIdentityReceived);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000015, 0x80000002674437E0);
  v12(v30, 0);
  sub_266ECB294(0, &qword_2800F2578, 0x277D57B80);
  sub_266ECAF2C(&qword_2800F2580, &qword_2800F2578, 0x277D57B80, &protocol conformance descriptor for IDENTITYSchemaIDENTITYResultCandidateReceived);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000017, 0x8000000267443800);
  v13(v30, 0);
  sub_266ECB294(0, &qword_2800F2588, 0x277D57BA0);
  sub_266ECAF2C(&qword_2800F2590, &qword_2800F2588, 0x277D57BA0, &protocol conformance descriptor for IDENTITYSchemaIDENTITYUserPresenceSourceCaptured);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001ALL, 0x8000000267443820);
  v14(v30, 0);
  sub_266ECB294(0, &qword_2800F2520, 0x277D57B40);
  sub_266ECAF2C(&qword_2800F2518, &qword_2800F2520, 0x277D57B40, &protocol conformance descriptor for IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000022, 0x8000000267443840);
  v15(v30, 0);
  sub_266ECB294(0, &qword_2800F2598, 0x277D57BA8);
  sub_266ECAF2C(&qword_2800F25A0, &qword_2800F2598, 0x277D57BA8, &protocol conformance descriptor for IDENTITYSchemaIDENTITYUsersPresencesCaptured);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v16 = v27;
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x8000000267443870);
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
  sub_266ECB128(&unk_287886948);
  return sub_2673811CC();
}

uint64_t sub_266FFB150(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FFB1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FFB2B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFB318(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FFB378(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F25A8, &qword_2800F25B0, 0x277D57B48, &protocol conformance descriptor for IDENTITYSchemaIDENTITYClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F25B8, &qword_2800F25B0, 0x277D57B48, &protocol conformance descriptor for IDENTITYSchemaIDENTITYClientEvent);
  result = sub_266ECAF2C(&qword_2800F25C0, &qword_2800F25B0, 0x277D57B48, &protocol conformance descriptor for IDENTITYSchemaIDENTITYClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static IDENTITYSchemaIDENTITYClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x797469746E656469, 0xEA00000000006449);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x797469746E656469, 0xEA00000000006449);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287886978);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266FFB71C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFB780(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IDENTITYSchemaIDENTITYFirstIdentityReceived.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F25D0, 0x277D57B68);
  sub_266ECAF2C(&qword_2800F25D8, &qword_2800F25D0, 0x277D57B68, &protocol conformance descriptor for IDENTITYSchemaIDENTITYIDScoreCard);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267443910);
  return v5(v7, 0);
}

uint64_t sub_266FFBA1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFBA80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IDENTITYSchemaIDENTITYFirstVoiceObservationSubmitted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F25E0, 0x277D57BB0);
  sub_266ECAF2C(&qword_2800F25E8, &qword_2800F25E0, 0x277D57BB0, &protocol conformance descriptor for IDENTITYSchemaIDENTITYVoiceScoreCard);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F63536563696F76, 0xEE00647261436572);
  return v5(v7, 0);
}

uint64_t sub_266FFBD04(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F25E0, 0x277D57BB0);
  sub_266ECAF2C(&qword_2800F25E8, &qword_2800F25E0, 0x277D57BB0, &protocol conformance descriptor for IDENTITYSchemaIDENTITYVoiceScoreCard);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F63536563696F76, 0xEE00647261436572);
  return v5(v7, 0);
}

uint64_t sub_266FFBEAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFBF10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IDENTITYSchemaIDENTITYIdentityRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F25F0, 0x277D57B78);
  sub_266ECAF2C(&qword_2800F25F8, &qword_2800F25F0, 0x277D57B78, &protocol conformance descriptor for IDENTITYSchemaIDENTITYIdentityRequestFailed);
  sub_26738121C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0x64656C696166, 0xE600000000000000);
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

uint64_t sub_266FFC320(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFC384(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IDENTITYSchemaIDENTITYIdentityRequestFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FFC670(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFC6D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FFC738()
{
  result = qword_2800F25F8;
  if (!qword_2800F25F8)
  {
    sub_266FFC790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F25F8);
  }

  return result;
}

unint64_t sub_266FFC790()
{
  result = qword_2800F25F0;
  if (!qword_2800F25F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F25F0);
  }

  return result;
}

uint64_t static IDENTITYSchemaIDENTITYIDScoreCard.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2600, 0x277D57B90);
  sub_266ECAF2C(&qword_2800F2608, &qword_2800F2600, 0x277D57B90, &protocol conformance descriptor for IDENTITYSchemaIDENTITYScoreTuple);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x797469746E656469, 0xEE007365726F6353);
  v6(v9, 0);
  type metadata accessor for IDENTITYSchemaIDENTITYUserClassification(0);
  sub_266FFCB40();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6966697373616C63, 0xEE006E6F69746163);
  return v7(v9, 0);
}

uint64_t sub_266FFCA7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFCAE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FFCB40()
{
  result = qword_2800F2610;
  if (!qword_2800F2610)
  {
    type metadata accessor for IDENTITYSchemaIDENTITYUserClassification(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2610);
  }

  return result;
}

uint64_t static IDENTITYSchemaIDENTITYResultCandidateReceived.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v16 = "loggableSharedUserId";
  v8 = *(v2 + 104);
  v8(v4, *MEMORY[0x277D3E530], v1);
  v19[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, v16 | 0x8000000000000000);
  v11(v19, 0);
  v8(v4, *MEMORY[0x277D3E4E8], v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x7463656C65537369, 0xEA00000000006465);
  v12(v19, 0);
  sub_266ECB294(0, &qword_2800F25D0, 0x277D57B68);
  sub_266ECAF2C(&qword_2800F25D8, &qword_2800F25D0, 0x277D57B68, &protocol conformance descriptor for IDENTITYSchemaIDENTITYIDScoreCard);
  sub_26738120C();
  v10(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267443910);
  return v13(v19, 0);
}

uint64_t sub_266FFCFE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFD044(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IDENTITYSchemaIDENTITYScoreCardsGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F25E0, 0x277D57BB0);
  sub_266ECAF2C(&qword_2800F25E8, &qword_2800F25E0, 0x277D57BB0, &protocol conformance descriptor for IDENTITYSchemaIDENTITYVoiceScoreCard);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F63536563696F76, 0xEE00647261436572);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F25D0, 0x277D57B68);
  sub_266ECAF2C(&qword_2800F25D8, &qword_2800F25D0, 0x277D57B68, &protocol conformance descriptor for IDENTITYSchemaIDENTITYIDScoreCard);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267443910);
  return v7(v9, 0);
}

uint64_t sub_266FFD3C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFD428(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IDENTITYSchemaIDENTITYScoreTuple.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v25 = a1;
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
  v23 = v2 + 104;
  v24 = v1;
  v21 = v9;
  v9(v4, v8, v1);
  v27[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v22 = *(v11 + 56);
  v22(v7, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x80000002674206B0);
  v12(v27, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v26, 0xD000000000000014, 0x80000002674206B0);
  if (!(*(v11 + 48))(v15, 1, v10))
  {
    sub_266ECB128(&unk_2878869A8);
    sub_26738115C();
  }

  (v14)(v26, 0);
  v13(v27, 0);
  v21(v4, *MEMORY[0x277D3E538], v24);
  v27[0] = 1;
  sub_26738114C();
  v16 = v22;
  v22(v7, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656469666E6F63, 0xEF65726F63536563);
  v17(v27, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v16(v7, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x6568704572657375, 0xEF64496C6172656DLL);
  return v18(v27, 0);
}

uint64_t sub_266FFD990(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFD9F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IDENTITYSchemaIDENTITYUserClassification.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x8000000267443B30, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x8000000267443B60, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267443B90, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267443BC0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x8000000267443BF0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_266FFDD90(uint64_t a1)
{
  v2 = sub_266FFDE94(&qword_2800F2618, &protocol conformance descriptor for IDENTITYSchemaIDENTITYUserClassification);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FFDDF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FFDE94(&qword_2800F2618, &protocol conformance descriptor for IDENTITYSchemaIDENTITYUserClassification);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FFDE94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IDENTITYSchemaIDENTITYUserClassification(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IDENTITYSchemaIDENTITYUserLocation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x8000000267443C60, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267443C80, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267443CA0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266FFE0F0(uint64_t a1)
{
  v2 = sub_266FFE1F4(&qword_2800F2628, &protocol conformance descriptor for IDENTITYSchemaIDENTITYUserLocation);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FFE158(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FFE1F4(&qword_2800F2628, &protocol conformance descriptor for IDENTITYSchemaIDENTITYUserLocation);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FFE1F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IDENTITYSchemaIDENTITYUserLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IDENTITYSchemaIDENTITYUserPresenceMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v19[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v19 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v1);
  v21[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, 0x8000000267443D00);
  v11(v21, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v20, 0xD00000000000001DLL, 0x8000000267443D00);
  if (!(*(v9 + 48))(v14, 1, v8))
  {
    sub_266ECB128(&unk_2878869D8);
    sub_26738115C();
  }

  (v13)(v20, 0);
  v12(v21, 0);
  type metadata accessor for IDENTITYSchemaIDENTITYUserLocation(0);
  sub_266FFE868(&qword_2800F2620, type metadata accessor for IDENTITYSchemaIDENTITYUserLocation, &protocol conformance descriptor for IDENTITYSchemaIDENTITYUserLocation);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x61636F4C72657375, 0xEC0000006E6F6974);
  v15(v21, 0);
  type metadata accessor for IDENTITYSchemaIDENTITYUserPresenceSource(0);
  sub_266FFE868(&qword_2800F2630, type metadata accessor for IDENTITYSchemaIDENTITYUserPresenceSource, &protocol conformance descriptor for IDENTITYSchemaIDENTITYUserPresenceSource);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267443D20);
  v16(v21, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x6568704572657375, 0xEF64496C6172656DLL);
  return v17(v21, 0);
}

uint64_t sub_266FFE7A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFE808(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FFE868(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static IDENTITYSchemaIDENTITYUserPresenceSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x8000000267443D80, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x8000000267443DB0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x8000000267443DE0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266FFEB0C(uint64_t a1)
{
  v2 = sub_266FFEC10(&qword_2800F2648, &protocol conformance descriptor for IDENTITYSchemaIDENTITYUserPresenceSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FFEB74(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FFEC10(&qword_2800F2648, &protocol conformance descriptor for IDENTITYSchemaIDENTITYUserPresenceSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FFEC10(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IDENTITYSchemaIDENTITYUserPresenceSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IDENTITYSchemaIDENTITYUserPresenceSourceCaptured.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for IDENTITYSchemaIDENTITYUserPresenceSource(0);
  sub_266FFEF44(&qword_2800F2630, type metadata accessor for IDENTITYSchemaIDENTITYUserPresenceSource, &protocol conformance descriptor for IDENTITYSchemaIDENTITYUserPresenceSource);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267443E50);
  return v5(v7, 0);
}

uint64_t sub_266FFEE38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFEE9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FFEF44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FFEF8C()
{
  result = qword_2800F2588;
  if (!qword_2800F2588)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2588);
  }

  return result;
}

uint64_t static IDENTITYSchemaIDENTITYUsersPresencesCaptured.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2640, 0x277D57B98);
  sub_266ECAF2C(&qword_2800F2638, &qword_2800F2640, 0x277D57B98, &protocol conformance descriptor for IDENTITYSchemaIDENTITYUserPresenceMetadata);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6572507372657375, 0xEE007365636E6573);
  return v5(v7, 0);
}

uint64_t sub_266FFF1B8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2640, 0x277D57B98);
  sub_266ECAF2C(&qword_2800F2638, &qword_2800F2640, 0x277D57B98, &protocol conformance descriptor for IDENTITYSchemaIDENTITYUserPresenceMetadata);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6572507372657375, 0xEE007365636E6573);
  return v5(v7, 0);
}

uint64_t sub_266FFF360(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFF3C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IDENTITYSchemaIDENTITYVoiceScoreCard.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2600, 0x277D57B90);
  sub_266ECAF2C(&qword_2800F2608, &qword_2800F2600, 0x277D57B90, &protocol conformance descriptor for IDENTITYSchemaIDENTITYScoreTuple);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x797469746E656469, 0xEE007365726F6353);
  v6(v9, 0);
  type metadata accessor for IDENTITYSchemaIDENTITYUserClassification(0);
  sub_266FFCB40();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6966697373616C63, 0xEE006E6F69746163);
  return v7(v9, 0);
}

uint64_t sub_266FFF708(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFF76C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformRequestSchemaIFPlanCycleGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6C6379436E616C70, 0xEB00000000644965);
  return v5(v7, 0);
}

uint64_t sub_266FFF9EC(uint64_t a1)
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
  sub_266EC637C(v3, 0x6C6379436E616C70, 0xEB00000000644965);
  return v5(v7, 0);
}

uint64_t sub_266FFFB90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FFFBF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformRequestSchemaIFPlatformRequestClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F2660, 0x277D57BC8);
  sub_266ECAF2C(&qword_2800F2668, &qword_2800F2660, 0x277D57BC8, &protocol conformance descriptor for IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F2670, 0x277D57BD0);
  sub_266ECAF2C(&qword_2800F2678, &qword_2800F2670, 0x277D57BD0, &protocol conformance descriptor for IFPlatformRequestSchemaIFPlatformRequestContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, 0x8000000267443F80);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F2680, 0x277D57BE8);
  sub_266ECAF2C(&qword_2800F2688, &qword_2800F2680, 0x277D57BE8, &protocol conformance descriptor for IFPlatformRequestSchemaIFPlatformRequestInvoked);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, 0x8000000267443FA0);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F2658, 0x277D57BB8);
  sub_266ECAF2C(&qword_2800F2650, &qword_2800F2658, 0x277D57BB8, &protocol conformance descriptor for IFPlatformRequestSchemaIFPlanCycleGenerated);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x8000000267443FC0);
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
  sub_266ECB128(&unk_287886A00);
  return sub_2673811CC();
}

uint64_t sub_267000274(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26700030C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2670003D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700043C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26700049C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F2690, &qword_2800F2698, 0x277D57BC0, &protocol conformance descriptor for IFPlatformRequestSchemaIFPlatformRequestClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F26A0, &qword_2800F2698, 0x277D57BC0, &protocol conformance descriptor for IFPlatformRequestSchemaIFPlatformRequestClientEvent);
  result = sub_266ECAF2C(&qword_2800F26A8, &qword_2800F2698, 0x277D57BC0, &protocol conformance descriptor for IFPlatformRequestSchemaIFPlatformRequestClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20 = sub_26738113C();
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v19 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v17 = *(v6 + 56);
  v17(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0x7365757165526669, 0xEB00000000644974);
  v7(v22, 0);
  v8 = sub_2673811AC();
  v9 = sub_266ECB6CC(v21, 0x7365757165526669, 0xEB00000000644974);
  v10 = *(v6 + 48);
  if (!v10(v11, 1, v5))
  {
    sub_266ECB128(&unk_287886A38);
    sub_26738115C();
  }

  (v9)(v21, 0);
  v8(v22, 0);
  (*(v18 + 104))(v19, *MEMORY[0x277D3E540], v20);
  v22[0] = 1;
  sub_26738114C();
  v17(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x53676E6974736F70, 0xED000064496E6170);
  v12(v22, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v21, 0x53676E6974736F70, 0xED000064496E6170);
  if (!v10(v15, 1, v5))
  {
    sub_266ECB128(&unk_287886A68);
    sub_26738115C();
  }

  (v14)(v21, 0);
  return v13(v22, 0);
}

uint64_t sub_267000A30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267000A94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformRequestSchemaIFPlatformRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F26B8, 0x277D57BF0);
  sub_266ECAF2C(&qword_2800F26C0, &qword_2800F26B8, 0x277D57BF0, &protocol conformance descriptor for IFPlatformRequestSchemaIFPlatformRequestStarted);
  sub_26738121C();
  v6 = sub_26738116C();
  v24 = *(v6 - 8);
  v7 = *(v24 + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v29, 0);
  sub_266ECB294(0, &qword_2800F26C8, 0x277D57BD8);
  sub_266ECAF2C(&qword_2800F26D0, &qword_2800F26C8, 0x277D57BD8, &protocol conformance descriptor for IFPlatformRequestSchemaIFPlatformRequestEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v29, 0);
  sub_266ECB294(0, &qword_2800F26D8, 0x277D57BE0);
  sub_266ECAF2C(&qword_2800F26E0, &qword_2800F26D8, 0x277D57BE0, &protocol conformance descriptor for IFPlatformRequestSchemaIFPlatformRequestFailed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v10(v29, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x64496563617274, 0xE700000000000000);
  v11(v29, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v28, 0x64496563617274, 0xE700000000000000);
  if (!(*(v24 + 48))(v14, 1, v6))
  {
    sub_266ECB128(&unk_287886A90);
    sub_26738115C();
  }

  (v13)(v28, 0);
  v12(v29, 0);
  v15 = v25;
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
  (*(v26 + 32))(v19 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, v15, v27);
  return v16(v29, 0);
}

uint64_t sub_2670011C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267001228(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformRequestSchemaIFPlatformRequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80, &protocol conformance descriptor for IFTSchemaIFTIntelligenceFlowError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x4564656C646E6168, 0xEC000000726F7272);
  return v5(v7, 0);
}

uint64_t sub_2670014A8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80, &protocol conformance descriptor for IFTSchemaIFTIntelligenceFlowError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x4564656C646E6168, 0xEC000000726F7272);
  return v5(v7, 0);
}

uint64_t sub_26700164C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670016B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformRequestSchemaIFPlatformRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80, &protocol conformance descriptor for IFTSchemaIFTIntelligenceFlowError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C61636974697263, 0xED0000726F727245);
  return v5(v7, 0);
}

uint64_t sub_267001934(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80, &protocol conformance descriptor for IFTSchemaIFTIntelligenceFlowError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C61636974697263, 0xED0000726F727245);
  return v5(v7, 0);
}

uint64_t sub_267001ADC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267001B40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformRequestSchemaIFPlatformRequestInvoked.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6F69737365536669, 0xEB0000000064496ELL);
  v6(v9, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7254746E65696C63, 0xED00006449656361);
  return v7(v9, 0);
}

uint64_t sub_267001E7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267001EE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformRequestSchemaIFPlatformRequestStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for IFPlatformRequestSchemaIFPlatformRequestTarget(0);
  sub_267002274(&qword_2800F26F8, type metadata accessor for IFPlatformRequestSchemaIFPlatformRequestTarget, &protocol conformance descriptor for IFPlatformRequestSchemaIFPlatformRequestTarget);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x8000000267444170);
  return v5(v7, 0);
}

uint64_t sub_267002168(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670021CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267002274(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670022BC()
{
  result = qword_2800F26B8;
  if (!qword_2800F26B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F26B8);
  }

  return result;
}

uint64_t static IFPlatformRequestSchemaIFPlatformRequestTarget.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x80000002674441D0, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000032, 0x80000002674441F0, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x8000000267444230, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(101, 0xD000000000000037, 0x8000000267444260, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(201, 0xD000000000000035, 0x80000002674442A0, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(301, 0xD000000000000033, 0x80000002674442E0, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(401, 0xD000000000000034, 0x8000000267444320, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(501, 0xD00000000000003ALL, 0x8000000267444360, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(601, 0xD00000000000002BLL, 0x80000002674443A0, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_2670027BC(uint64_t a1)
{
  v2 = sub_2670028C0(&qword_2800F2700, &protocol conformance descriptor for IFPlatformRequestSchemaIFPlatformRequestTarget);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267002824(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670028C0(&qword_2800F2700, &protocol conformance descriptor for IFPlatformRequestSchemaIFPlatformRequestTarget);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670028C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFPlatformRequestSchemaIFPlatformRequestTarget(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFPlatformSchemaIFPlatformClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F2708, 0x277D57C00);
  sub_266ECAF2C(&qword_2800F2710, &qword_2800F2708, 0x277D57C00, &protocol conformance descriptor for IFPlatformSchemaIFPlatformClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F2718, 0x277D57C08);
  sub_266ECAF2C(&qword_2800F2720, &qword_2800F2718, 0x277D57C08, &protocol conformance descriptor for IFPlatformSchemaIFPlatformTargetContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  v10 = v20;
  sub_266EC637C(v5, 0xD000000000000017, 0x8000000267444410);
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
  sub_266ECB128(&unk_287886AC0);
  return sub_2673811CC();
}

uint64_t sub_267002D34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267002DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267002E98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267002EFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267002F5C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F2728, &qword_2800F2730, 0x277D57BF8, &protocol conformance descriptor for IFPlatformSchemaIFPlatformClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F2738, &qword_2800F2730, 0x277D57BF8, &protocol conformance descriptor for IFPlatformSchemaIFPlatformClientEvent);
  result = sub_266ECAF2C(&qword_2800F2740, &qword_2800F2730, 0x277D57BF8, &protocol conformance descriptor for IFPlatformSchemaIFPlatformClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static IFPlatformSchemaIFPlatformClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v16 = sub_26738113C();
  v14 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v15 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v13 = *(v6 + 56);
  v13(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0x6F69737365536669, 0xEB0000000064496ELL);
  v7(v18, 0);
  v8 = sub_2673811AC();
  v9 = sub_266ECB6CC(v17, 0x6F69737365536669, 0xEB0000000064496ELL);
  if (!(*(v6 + 48))(v10, 1, v5))
  {
    sub_266ECB128(&unk_287886AF8);
    sub_26738115C();
  }

  (v9)(v17, 0);
  v8(v18, 0);
  (*(v14 + 104))(v15, *MEMORY[0x277D3E540], v16);
  v18[0] = 1;
  sub_26738114C();
  v13(v4, 0, 1, v5);
  v11 = sub_2673811AC();
  sub_266EC637C(v4, 0x53676E6974736F70, 0xED000064496E6170);
  return v11(v18, 0);
}

uint64_t sub_267003458(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670034BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformSchemaIFPlatformTarget.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000018, 0x80000002674444A0, isUniquelyReferenced_nonNull_native);
  *v3 = v45;

  v1(v55, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002BLL, 0x80000002674444C0, v8);
  *v7 = v46;

  v5(v55, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x80000002674444F0, v12);
  *v11 = v47;

  v9(v55, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(101, 0xD00000000000002FLL, 0x8000000267444520, v16);
  *v15 = v48;

  v13(v55, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(201, 0xD00000000000002DLL, 0x8000000267444550, v20);
  *v19 = v49;

  v17(v55, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(301, 0xD00000000000002BLL, 0x8000000267444580, v24);
  *v23 = v50;

  v21(v55, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(401, 0xD00000000000002CLL, 0x80000002674445B0, v28);
  *v27 = v51;

  v25(v55, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(501, 0xD000000000000032, 0x80000002674445E0, v32);
  *v31 = v52;

  v29(v55, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(601, 0xD00000000000002BLL, 0x80000002674443A0, v36);
  *v35 = v53;

  v33(v55, 0);
  v37 = sub_266ECB128(&unk_287886B28);
  v39 = v38;
  v40 = sub_2673810FC();
  v42 = v41;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v42;
  *v42 = 0x8000000000000000;
  sub_266ECD4CC(v37, v39, 601, v43);
  *v42 = v54;
  return v40(v55, 0);
}

uint64_t sub_267003A8C(uint64_t a1)
{
  v2 = sub_267003B90(&qword_2800F2758, &protocol conformance descriptor for IFPlatformSchemaIFPlatformTarget);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267003AF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267003B90(&qword_2800F2758, &protocol conformance descriptor for IFPlatformSchemaIFPlatformTarget);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267003B90(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFPlatformSchemaIFPlatformTarget(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFPlatformSchemaIFPlatformTargetContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F2760, 0x277D57C20);
  sub_266ECAF2C(&qword_2800F2768, &qword_2800F2760, 0x277D57C20, &protocol conformance descriptor for IFPlatformSchemaIFPlatformTargetStarted);
  sub_26738121C();
  v6 = sub_26738116C();
  v24 = *(v6 - 8);
  v7 = *(v24 + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v29, 0);
  sub_266ECB294(0, &qword_2800F2770, 0x277D57C10);
  sub_266ECAF2C(&qword_2800F2778, &qword_2800F2770, 0x277D57C10, &protocol conformance descriptor for IFPlatformSchemaIFPlatformTargetEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v29, 0);
  sub_266ECB294(0, &qword_2800F2780, 0x277D57C18);
  sub_266ECAF2C(&qword_2800F2788, &qword_2800F2780, 0x277D57C18, &protocol conformance descriptor for IFPlatformSchemaIFPlatformTargetFailed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v10(v29, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x64496563617274, 0xE700000000000000);
  v11(v29, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v28, 0x64496563617274, 0xE700000000000000);
  if (!(*(v24 + 48))(v14, 1, v6))
  {
    sub_266ECB128(&unk_287886B50);
    sub_26738115C();
  }

  (v13)(v28, 0);
  v12(v29, 0);
  v15 = v25;
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
  (*(v26 + 32))(v19 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, v15, v27);
  return v16(v29, 0);
}

uint64_t sub_267004260(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670042C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformSchemaIFPlatformTargetEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80, &protocol conformance descriptor for IFTSchemaIFTIntelligenceFlowError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x4564656C646E6168, 0xEC000000726F7272);
  return v5(v7, 0);
}

uint64_t sub_267004544(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80, &protocol conformance descriptor for IFTSchemaIFTIntelligenceFlowError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x4564656C646E6168, 0xEC000000726F7272);
  return v5(v7, 0);
}

uint64_t sub_2670046E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700474C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformSchemaIFPlatformTargetFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80, &protocol conformance descriptor for IFTSchemaIFTIntelligenceFlowError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C61636974697263, 0xED0000726F727245);
  return v5(v7, 0);
}

uint64_t sub_2670049D0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80, &protocol conformance descriptor for IFTSchemaIFTIntelligenceFlowError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C61636974697263, 0xED0000726F727245);
  return v5(v7, 0);
}

uint64_t sub_267004B78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267004BDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFPlatformSchemaIFPlatformTargetStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for IFPlatformSchemaIFPlatformTarget(0);
  sub_267004F70(&qword_2800F2750, type metadata accessor for IFPlatformSchemaIFPlatformTarget, &protocol conformance descriptor for IFPlatformSchemaIFPlatformTarget);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267444720);
  return v5(v7, 0);
}

uint64_t sub_267004E64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267004EC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267004F70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267004FB8()
{
  result = qword_2800F2760;
  if (!qword_2800F2760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2760);
  }

  return result;
}

uint64_t static IFTSchemaASTExprContinuePlanningVariant.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287886B80);
  return sub_2673811CC();
}

uint64_t sub_267005264(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670052C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26700532C()
{
  result = qword_2800F2790;
  if (!qword_2800F2790)
  {
    sub_267005384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2790);
  }

  return result;
}

unint64_t sub_267005384()
{
  result = qword_2800F2798;
  if (!qword_2800F2798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2798);
  }

  return result;
}

uint64_t static IFTSchemaASTFlatExprCallVariant.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v20 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v19 = a1;
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E4E8], v2);
  v22[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v13(v22, 0);
  v9(v5, *MEMORY[0x277D3E530], v20);
  v22[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496C6F6F74, 0xE600000000000000);
  v14(v22, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v21, 0x64496C6F6F74, 0xE600000000000000);
  if (!(*(v11 + 48))(v17, 1, v10))
  {
    sub_266ECB128(&unk_287886BA8);
    sub_26738115C();
  }

  (v16)(v21, 0);
  v15(v22, 0);
  sub_266ECB128(&unk_287886BD8);
  return sub_2673811CC();
}

uint64_t sub_2670057A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267005808(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26700586C()
{
  result = qword_2800F27A0;
  if (!qword_2800F27A0)
  {
    sub_2670058C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F27A0);
  }

  return result;
}

unint64_t sub_2670058C4()
{
  result = qword_2800F27A8;
  if (!qword_2800F27A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F27A8);
  }

  return result;
}

uint64_t static IFTSchemaASTFlatExprCancelVariant.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x746E657645776172, 0xEA00000000006449);
  v11(v13, 0);
  sub_266ECB128(&unk_287886C00);
  return sub_2673811CC();
}

uint64_t sub_267005C54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267005CB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaASTFlatExprConfirmVariant.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x746E657645776172, 0xEA00000000006449);
  v11(v13, 0);
  sub_266ECB128(&unk_287886C28);
  return sub_2673811CC();
}

uint64_t sub_2670060A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267006104(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaASTFlatExprDotVariant.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287886C50);
  return sub_2673811CC();
}

uint64_t sub_267006408(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700646C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670064D0()
{
  result = qword_2800F27D0;
  if (!qword_2800F27D0)
  {
    sub_267006528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F27D0);
  }

  return result;
}

unint64_t sub_267006528()
{
  result = qword_2800F27D8;
  if (!qword_2800F27D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F27D8);
  }

  return result;
}

uint64_t static IFTSchemaASTFlatExprIndexVariant.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287886C78);
  return sub_2673811CC();
}

uint64_t sub_2670067D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267006838(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26700689C()
{
  result = qword_2800F27E0;
  if (!qword_2800F27E0)
  {
    sub_2670068F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F27E0);
  }

  return result;
}

unint64_t sub_2670068F4()
{
  result = qword_2800F27E8;
  if (!qword_2800F27E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F27E8);
  }

  return result;
}

uint64_t static IFTSchemaASTFlatExprInfixVariant.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287886CA0);
  return sub_2673811CC();
}

uint64_t sub_267006BA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267006C04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267006C68()
{
  result = qword_2800F27F0;
  if (!qword_2800F27F0)
  {
    sub_267006CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F27F0);
  }

  return result;
}

unint64_t sub_267006CC0()
{
  result = qword_2800F27F8;
  if (!qword_2800F27F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F27F8);
  }

  return result;
}

uint64_t static IFTSchemaASTFlatExprPickOneVariant.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x746E657645776172, 0xEA00000000006449);
  v11(v13, 0);
  sub_266ECB128(&unk_287886CC8);
  return sub_2673811CC();
}

uint64_t sub_267007050(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670070B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaASTFlatExprPickVariant.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0x746E657645776172, 0xEA00000000006449);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F2810, 0x277D57CC8);
  sub_266ECAF2C(&qword_2800F2818, &qword_2800F2810, 0x277D57CC8, &protocol conformance descriptor for IFTSchemaASTPickType);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x657079546B636970, 0xE800000000000000);
  v12(v14, 0);
  sub_266ECB128(&unk_287886CF0);
  return sub_2673811CC();
}

uint64_t sub_267007564(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670075C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaASTFlatExprPrefixVariant.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287886D18);
  return sub_2673811CC();
}

uint64_t sub_2670078CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267007930(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267007994()
{
  result = qword_2800F2830;
  if (!qword_2800F2830)
  {
    sub_2670079EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2830);
  }

  return result;
}

unint64_t sub_2670079EC()
{
  result = qword_2800F2838;
  if (!qword_2800F2838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2838);
  }

  return result;
}

uint64_t static IFTSchemaASTFlatExprRejectVariant.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x746E657645776172, 0xEA00000000006449);
  v11(v13, 0);
  sub_266ECB128(&unk_287886D40);
  return sub_2673811CC();
}

uint64_t sub_267007D7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267007DE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaASTFlatExprResolveToolVariant.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v20 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v19 = a1;
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E4E8], v2);
  v22[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v13(v22, 0);
  v9(v5, *MEMORY[0x277D3E530], v20);
  v22[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x7364496C6F6F74, 0xE700000000000000);
  v14(v22, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v21, 0x7364496C6F6F74, 0xE700000000000000);
  if (!(*(v11 + 48))(v17, 1, v10))
  {
    sub_266ECB128(&unk_287886D68);
    sub_26738115C();
  }

  (v16)(v21, 0);
  v15(v22, 0);
  sub_266ECB128(&unk_287886D98);
  return sub_2673811CC();
}

uint64_t sub_26700825C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670082C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267008324()
{
  result = qword_2800F2850;
  if (!qword_2800F2850)
  {
    sub_26700837C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2850);
  }

  return result;
}

unint64_t sub_26700837C()
{
  result = qword_2800F2858;
  if (!qword_2800F2858)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2858);
  }

  return result;
}

uint64_t static IFTSchemaASTFlatExprSayVariant.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287886DC0);
  return sub_2673811CC();
}

uint64_t sub_267008628(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700868C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670086F0()
{
  result = qword_2800F2860;
  if (!qword_2800F2860)
  {
    sub_267008748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2860);
  }

  return result;
}

unint64_t sub_267008748()
{
  result = qword_2800F2868;
  if (!qword_2800F2868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2868);
  }

  return result;
}

uint64_t static IFTSchemaASTFlatExprSearchVariant.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v14 = *MEMORY[0x277D3E4E8];
  v13 = *(v1 + 104);
  v13(v3);
  v17[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  v9(v17, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496B6E696CLL, 0xE600000000000000);
  v10(v17, 0);
  (v13)(v3, v14, v15);
  v17[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x8000000267444A60);
  v11(v17, 0);
  sub_266ECB128(&unk_287886DE8);
  return sub_2673811CC();
}

uint64_t sub_267008B98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267008BFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaASTFlatExprSearchVariantTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v6, 0x7972657571, 0xE500000000000000);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0x7972657571, 0xE500000000000000);
  if (!(*(v8 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_287886E10);
    sub_26738115C();
  }

  (v13)(v18, 0);
  v12(v19, 0);
  sub_266ECB128(&unk_287886E48);
  return sub_2673811CC();
}

uint64_t sub_267009080(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670090E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaASTFlatExprUndoVariant.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x746E657645776172, 0xEA00000000006449);
  v11(v13, 0);
  sub_266ECB128(&unk_287886E70);
  return sub_2673811CC();
}

uint64_t sub_2670094CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267009530(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaASTFlatExprUpdateParametersVariant.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28A0, 0x277D57CB0);
  sub_266ECAF2C(&qword_2800F28A8, &qword_2800F28A0, 0x277D57CB0, &protocol conformance descriptor for IFTSchemaASTFlatExprUpdateVariant);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73657461647075, 0xE700000000000000);
  v5(v7, 0);
  sub_266ECB128(&unk_287886E98);
  return sub_2673811CC();
}

uint64_t sub_2670097D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267009838(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaASTFlatExprUpdateVariant.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v4, *MEMORY[0x277D3E4E8], v1);
  v15[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v10(v15, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 7563372, 0xE300000000000000);
  v11(v15, 0);
  sub_266ECB294(0, &qword_2800F28D0, 0x277D57CC0);
  sub_266ECAF2C(&qword_2800F28D8, &qword_2800F28D0, 0x277D57CC0, &protocol conformance descriptor for IFTSchemaASTPath);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 1752457584, 0xE400000000000000);
  v12(v15, 0);
  type metadata accessor for IFTSchemaASTUpdateKind(0);
  sub_267009E18();
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 1684957547, 0xE400000000000000);
  v13(v15, 0);
  sub_266ECB128(&unk_287886EC0);
  return sub_2673811CC();
}

uint64_t sub_267009D54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267009DB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267009E18()
{
  result = qword_2800F28E0;
  if (!qword_2800F28E0)
  {
    type metadata accessor for IFTSchemaASTUpdateKind(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F28E0);
  }

  return result;
}

uint64_t static IFTSchemaASTFlatValue.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287886EE8);
  return sub_2673811CC();
}

uint64_t sub_26700A114(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700A178(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26700A1DC()
{
  result = qword_2800F28E8;
  if (!qword_2800F28E8)
  {
    sub_26700A234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F28E8);
  }

  return result;
}

unint64_t sub_26700A234()
{
  result = qword_2800F28F0;
  if (!qword_2800F28F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F28F0);
  }

  return result;
}

uint64_t static IFTSchemaASTPath.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v8, 0x6574656D61726170, 0xED0000656D614E72);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E510], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x697463656C6C6F63, 0xEF7865646E496E6FLL);
  v13(v16, 0);
  sub_266ECB128(&unk_287886F10);
  return sub_2673811CC();
}

uint64_t sub_26700A5D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700A634(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26700A698()
{
  result = qword_2800F28D8;
  if (!qword_2800F28D8)
  {
    sub_26700A6F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F28D8);
  }

  return result;
}

unint64_t sub_26700A6F0()
{
  result = qword_2800F28D0;
  if (!qword_2800F28D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F28D0);
  }

  return result;
}

uint64_t static IFTSchemaASTPickType.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738118C();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v25 = a1;
  sub_26738119C();
  v11 = *(v5 + 104);
  v11(v7, *MEMORY[0x277D3E510], v4);
  v29[0] = 0;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x7865646E69, 0xE500000000000000);
  v14(v29, 0);
  v11(v7, *MEMORY[0x277D3E4E8], v4);
  v15 = v26;
  v29[0] = 0;
  sub_26738114C();
  v13(v10, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 1701736302, 0xE400000000000000);
  v16(v29, 0);
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
  (*(v27 + 32))(v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, v15, v28);
  return v17(v29, 0);
}

uint64_t sub_26700ABBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700AC20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26700AC84()
{
  result = qword_2800F2818;
  if (!qword_2800F2818)
  {
    sub_26700ACDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2818);
  }

  return result;
}

unint64_t sub_26700ACDC()
{
  result = qword_2800F2810;
  if (!qword_2800F2810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2810);
  }

  return result;
}

uint64_t static IFTSchemaASTUpdateKind.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267444C40, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267444C60, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267444C80, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26700AF40(uint64_t a1)
{
  v2 = sub_26700B044(&qword_2800F28F8, &protocol conformance descriptor for IFTSchemaASTUpdateKind);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26700AFA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26700B044(&qword_2800F28F8, &protocol conformance descriptor for IFTSchemaASTUpdateKind);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26700B044(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaASTUpdateKind(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTAction.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v35 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v32 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *(v2 + 104);
  v33 = *MEMORY[0x277D3E4E8];
  v37 = v2 + 104;
  v38 = v1;
  v36 = v8;
  (v8)(v4);
  v42[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v39 = *(v10 + 56);
  v40 = v10 + 56;
  v39(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v11(v42, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v41, 0x737473697865, 0xE600000000000000);
  v34 = *(v10 + 48);
  v15 = v34(v14, 1, v9);
  v32[1] = v10 + 48;
  if (!v15)
  {
    sub_266ECB128(&unk_287886F38);
    sub_26738115C();
  }

  (v13)(v41, 0);
  v12(v42, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v16 = v39;
  v39(v7, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656D6574617473, 0xEB00000000644974);
  v17(v42, 0);
  v18 = *MEMORY[0x277D3E530];
  v36(v4, v18, v38);
  v42[0] = 1;
  sub_26738114C();
  v16(v7, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496C6F6F74, 0xE600000000000000);
  v19(v42, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v41, 0x64496C6F6F74, 0xE600000000000000);
  if (!v34(v22, 1, v9))
  {
    sub_266ECB128(&unk_287886F60);
    sub_26738115C();
  }

  (v21)(v41, 0);
  v20(v42, 0);
  v36(v4, v18, v38);
  v42[0] = 1;
  sub_26738114C();
  v39(v7, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449656C646E7562, 0xE800000000000000);
  v23(v42, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v41, 0x6449656C646E7562, 0xE800000000000000);
  if (!v34(v26, 1, v9))
  {
    sub_266ECB128(&unk_287886F90);
    sub_26738115C();
  }

  (v25)(v41, 0);
  v24(v42, 0);
  v36(v4, v33, v38);
  v42[0] = 1;
  sub_26738114C();
  v27 = v39;
  v39(v7, 0, 1, v9);
  v28 = sub_2673811AC();
  sub_266EC637C(v7, 0x7269666E6F437369, 0xEB0000000064656DLL);
  v28(v42, 0);
  sub_266ECB294(0, &qword_2800F2900, 0x277D57D20);
  sub_266ECAF2C(&qword_2800F2908, &qword_2800F2900, 0x277D57D20, &protocol conformance descriptor for IFTSchemaIFTActionParameterValue);
  sub_26738122C();
  v27(v7, 0, 1, v9);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x8000000267444CD0);
  v29(v42, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v27(v7, 0, 1, v9);
  v30 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6576456E616C70, 0xEB00000000644974);
  return v30(v42, 0);
}

uint64_t sub_26700B980(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700B9E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTActionCancellation.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v4, *MEMORY[0x277D3E4E8], v1);
  v16[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v10(v16, 0);
  v15 = "iri.ift.IFTActionCancellation";
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, v15 | 0x8000000000000000);
  v11(v16, 0);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656D6574617473, 0xEB00000000644974);
  return v12(v16, 0);
}

uint64_t sub_26700BE58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700BEBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTActionClass.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267444D70, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267444D90, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267444DB0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000015, 0x8000000267444DD0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26700C1E4(uint64_t a1)
{
  v2 = sub_26700C2E8(&qword_2800F2938, &protocol conformance descriptor for IFTSchemaIFTActionClass);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26700C24C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26700C2E8(&qword_2800F2938, &protocol conformance descriptor for IFTSchemaIFTActionClass);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26700C2E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTActionClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTActionConfirmation.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v39 = a1;
  v1 = sub_26738118C();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x28223BE20](v1);
  v40 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v4 + 104);
  v43 = *MEMORY[0x277D3E4E8];
  v46 = v4 + 104;
  v47 = v3;
  v45 = v10;
  v10(v6);
  v50[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v48 = *(v12 + 56);
  v48(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v13(v50, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v49, 0x737473697865, 0xE600000000000000);
  v44 = *(v12 + 48);
  if (!v44(v16, 1, v11))
  {
    sub_266ECB128(&unk_287886FC0);
    sub_26738115C();
  }

  (v15)(v49, 0);
  v14(v50, 0);
  v45(v6, v43, v47);
  v50[0] = 0;
  sub_26738114C();
  v48(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x656D7269666E6F63, 0xE900000000000064);
  v17(v50, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v49, 0x656D7269666E6F63, 0xE900000000000064);
  if (!v44(v20, 1, v11))
  {
    sub_266ECB128(&unk_287886FE8);
    sub_26738115C();
  }

  (v19)(v49, 0);
  v18(v50, 0);
  v45(v6, *MEMORY[0x277D3E510], v47);
  v50[0] = 0;
  sub_26738114C();
  v48(v9, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x8000000267444E20);
  v21(v50, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v49, 0xD000000000000018, 0x8000000267444E20);
  if (!v44(v24, 1, v11))
  {
    sub_266ECB128(&unk_287887010);
    sub_26738115C();
  }

  (v23)(v49, 0);
  v22(v50, 0);
  v45(v6, v43, v47);
  v50[0] = 0;
  sub_26738114C();
  v48(v9, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x6465696E6564, 0xE600000000000000);
  v25(v50, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v49, 0x6465696E6564, 0xE600000000000000);
  if (!v44(v28, 1, v11))
  {
    sub_266ECB128(&unk_287887038);
    sub_26738115C();
  }

  (v27)(v49, 0);
  v26(v50, 0);
  sub_266ECB294(0, &qword_2800F2940, 0x277D57CF0);
  sub_266ECAF2C(&qword_2800F2948, &qword_2800F2940, 0x277D57CF0, &protocol conformance descriptor for IFTSchemaIFTActionConfirmationSystemStyle);
  sub_26738120C();
  v48(v9, 0, 1, v11);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0x74536D6574737973, 0xEB00000000656C79);
  v29(v50, 0);
  v30 = v40;
  sub_26738117C();
  v31 = sub_2673811BC();
  v33 = v32;
  v34 = *v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_266ECAD54(0, v34[2] + 1, 1, v34);
    *v33 = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    v34 = sub_266ECAD54((v36 > 1), v37 + 1, 1, v34);
    *v33 = v34;
  }

  v34[2] = v37 + 1;
  (*(v41 + 32))(v34 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v37, v30, v42);
  return v31(v50, 0);
}

uint64_t sub_26700CC70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700CCD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTActionConfirmationSystemStyle.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F2960, 0x277D57CF8);
  sub_266ECAF2C(&qword_2800F2968, &qword_2800F2960, 0x277D57CF8, &protocol conformance descriptor for IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement);
  sub_26738121C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, 0x8000000267444EA0);
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

uint64_t sub_26700D0EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700D150(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v24 = v2 + 104;
  v25 = v1;
  v22 = v9;
  v9(v4, v8, v1);
  v27[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v21 = *(v11 + 56);
  v21(v7, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449656C646E7562, 0xE800000000000000);
  v12(v27, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v26, 0x6449656C646E7562, 0xE800000000000000);
  if (!(*(v11 + 48))(v15, 1, v10))
  {
    sub_266ECB128(&unk_287887060);
    sub_26738115C();
  }

  (v14)(v26, 0);
  v13(v27, 0);
  type metadata accessor for IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablementSource(0);
  sub_26700D798(&qword_2800F2970, type metadata accessor for IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablementSource, &protocol conformance descriptor for IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablementSource);
  sub_26738120C();
  v16 = v21;
  v21(v7, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x656372756F73, 0xE600000000000000);
  v17(v27, 0);
  v22(v4, *MEMORY[0x277D3E4E8], v25);
  v27[0] = 1;
  sub_26738114C();
  v16(v7, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x63696C7078457369, 0xEA00000000007469);
  return v18(v27, 0);
}

uint64_t sub_26700D68C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700D6F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26700D798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26700D7E0()
{
  result = qword_2800F2960;
  if (!qword_2800F2960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2960);
  }

  return result;
}

uint64_t static IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablementSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000044, 0x8000000267444FA0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000045, 0x8000000267444FF0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000004FLL, 0x8000000267445040, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000004DLL, 0x8000000267445090, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000004BLL, 0x80000002674450E0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_26700DB28(uint64_t a1)
{
  v2 = sub_26700DC2C(&qword_2800F2978, &protocol conformance descriptor for IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablementSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26700DB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_26700DC2C(&qword_2800F2978, &protocol conformance descriptor for IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablementSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26700DC2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablementSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTActionFailure.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F2980, 0x277D57D10);
  sub_266ECAF2C(&qword_2800F2988, &qword_2800F2980, 0x277D57D10, &protocol conformance descriptor for IFTSchemaIFTActionFailureFailure);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6572756C696166, 0xE700000000000000);
  return v11(v13, 0);
}

uint64_t sub_26700DF9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700E000(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTActionFailureDeveloperDefinedError.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v9(v5, *MEMORY[0x277D3E510], v2);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 1701080931, 0xE400000000000000);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E530], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E69616D6F64, 0xE600000000000000);
  return v13(v16, 0);
}

uint64_t sub_26700E3B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700E41C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26700E480()
{
  result = qword_2800F29A0;
  if (!qword_2800F29A0)
  {
    sub_26700E4D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F29A0);
  }

  return result;
}

unint64_t sub_26700E4D8()
{
  result = qword_2800F29A8;
  if (!qword_2800F29A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F29A8);
  }

  return result;
}

uint64_t static IFTSchemaIFTActionFailureFailure.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a1;
  v3 = sub_26738118C();
  v83 = *(v3 - 8);
  v84 = v3;
  MEMORY[0x28223BE20](v3);
  v82 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_26738113C();
  v5 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v78 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v79 = "iri.ift.IFTActionFailureFailure";
  v88 = *MEMORY[0x277D3E4E8];
  v90 = *(v5 + 104);
  v90(v7);
  v94[0] = 0;
  sub_26738114C();
  v87 = sub_26738116C();
  v80 = *(v87 - 8);
  v12 = v80 + 56;
  v11 = *(v80 + 56);
  v11(v10, 0, 1, v87);
  v89 = v12;
  v13 = v11;
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v79 | 0x8000000000000000);
  v14(v94, 0);
  v79 = "preflightCheckFailure";
  v15 = v88;
  v16 = v90;
  (v90)(v7, v88, v92);
  v91 = v5 + 104;
  v94[0] = 0;
  sub_26738114C();
  v13(v10, 0, 1, v87);
  v17 = a2;
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, v79 | 0x8000000000000000);
  v18(v94, 0);
  v78 = "preciseLocationDisabled";
  v19 = v92;
  v16(v7, v15, v92);
  v94[0] = 0;
  sub_26738114C();
  v20 = v87;
  v13(v10, 0, 1, v87);
  v86 = v17;
  v21 = sub_2673811AC();
  v79 = 0xD000000000000010;
  sub_266EC637C(v10, 0xD000000000000010, v78 | 0x8000000000000000);
  v21(v94, 0);
  v22 = v88;
  v23 = v19;
  v24 = v90;
  (v90)(v7, v88, v23);
  v94[0] = 0;
  sub_26738114C();
  v13(v10, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x6173694469666977, 0xEC00000064656C62);
  v25(v94, 0);
  v78 = "locationDisabled";
  v26 = v92;
  v24(v7, v22, v92);
  v94[0] = 0;
  sub_26738114C();
  v13(v10, 0, 1, v20);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v78 | 0x8000000000000000);
  v27(v94, 0);
  v28 = v22;
  v29 = v7;
  (v90)(v7, v28, v26);
  v94[0] = 0;
  sub_26738114C();
  v13(v10, 0, 1, v20);
  v30 = sub_2673811AC();
  sub_266EC637C(v10, 0x466B726F7774656ELL, 0xEE006572756C6961);
  v30(v94, 0);
  v31 = v90;
  (v90)(v7, v28, v92);
  v94[0] = 0;
  sub_26738114C();
  v13(v10, 0, 1, v20);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0x466C616974726170, 0xEE006572756C6961);
  v32(v94, 0);
  v78 = "bluetoothDisabled";
  v33 = v88;
  v34 = v92;
  (v31)(v29, v88, v92);
  v94[0] = 0;
  sub_26738114C();
  v13(v10, 0, 1, v87);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, v78 | 0x8000000000000000);
  v35(v94, 0);
  v78 = "unsupportedOnDevice";
  (v90)(v29, v33, v34);
  v94[0] = 0;
  sub_26738114C();
  v36 = v87;
  v13(v10, 0, 1, v87);
  v37 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, v78 | 0x8000000000000000);
  v37(v94, 0);
  v38 = v88;
  v39 = v90;
  (v90)(v29, v88, v34);
  v94[0] = 0;
  sub_26738114C();
  v40 = v36;
  v13(v10, 0, 1, v36);
  v41 = v13;
  v42 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F4E797469746E65, 0xEE00646E756F4674);
  v42(v94, 0);
  v78 = "featureCurrentlyRestricted";
  v43 = v92;
  v39(v29, v38, v92);
  v94[0] = 0;
  sub_26738114C();
  v13(v10, 0, 1, v40);
  v44 = sub_2673811AC();
  sub_266EC637C(v10, v79, v78 | 0x8000000000000000);
  v44(v94, 0);
  v45 = v88;
  v46 = v90;
  (v90)(v29, v88, v43);
  v94[0] = 0;
  sub_26738114C();
  v41(v10, 0, 1, v40);
  v47 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F54656C62616E75, 0xEC0000006F646E55);
  v47(v94, 0);
  v46(v29, v45, v92);
  v94[0] = 0;
  sub_26738114C();
  v41(v10, 0, 1, v40);
  v48 = sub_2673811AC();
  sub_266EC637C(v10, 0x61436E6F69746361, 0xEE0064656C65636ELL);
  v48(v94, 0);
  v79 = "actionNotAllowed";
  v49 = v92;
  v50 = v90;
  (v90)(v29, v45, v92);
  v94[0] = 0;
  sub_26738114C();
  v51 = v87;
  v41(v10, 0, 1, v87);
  v85 = v41;
  v52 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, v79 | 0x8000000000000000);
  v52(v94, 0);
  v53 = v88;
  (v50)(v29, v88, v49);
  v94[0] = 0;
  sub_26738114C();
  v41(v10, 0, 1, v51);
  v54 = sub_2673811AC();
  sub_266EC637C(v10, 0x69686374614D6F6ELL, 0xEE006C6F6F54676ELL);
  v54(v94, 0);
  (v90)(v29, v53, v92);
  v94[0] = 0;
  v79 = v29;
  sub_26738114C();
  v85(v10, 0, 1, v51);
  v55 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x80000002674452D0);
  v55(v94, 0);
  v56 = sub_2673811AC();
  v57 = sub_266ECB6CC(v93, 0xD000000000000015, 0x80000002674452D0);
  v58 = v51;
  if (!(*(v80 + 48))(v59, 1, v51))
  {
    sub_266ECB128(&unk_287887090);
    sub_26738115C();
  }

  (v57)(v93, 0);
  v56(v94, 0);
  sub_266ECB294(0, &qword_2800F29A8, 0x277D57D08);
  sub_266ECAF2C(&qword_2800F29A0, &qword_2800F29A8, 0x277D57D08, &protocol conformance descriptor for IFTSchemaIFTActionFailureDeveloperDefinedError);
  sub_26738121C();
  v60 = v85;
  v85(v10, 0, 1, v51);
  v61 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, 0x80000002674452F0);
  v61(v94, 0);
  v62 = v79;
  v63 = v88;
  v64 = v92;
  v65 = v58;
  v66 = v90;
  (v90)(v79, v88, v92);
  v94[0] = 0;
  sub_26738114C();
  v60(v10, 0, 1, v65);
  v67 = sub_2673811AC();
  sub_266EC637C(v10, 0x6F54656C62616E75, 0xEE006C65636E6143);
  v67(v94, 0);
  v81 = "eloperDefinedError";
  v66(v62, v63, v64);
  v94[0] = 0;
  sub_26738114C();
  v60(v10, 0, 1, v87);
  v68 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, v81 | 0x8000000000000000);
  v68(v94, 0);
  v69 = v82;
  sub_26738117C();
  v70 = sub_2673811BC();
  v72 = v71;
  v73 = *v71;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v72 = v73;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v73 = sub_266ECAD54(0, v73[2] + 1, 1, v73);
    *v72 = v73;
  }

  v76 = v73[2];
  v75 = v73[3];
  if (v76 >= v75 >> 1)
  {
    v73 = sub_266ECAD54((v75 > 1), v76 + 1, 1, v73);
    *v72 = v73;
  }

  v73[2] = v76 + 1;
  (*(v83 + 32))(v73 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v76, v69, v84);
  return v70(v94, 0);
}

uint64_t sub_26700F80C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700F870(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTActionParameterContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  v18[1] = a1;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656D6574617473, 0xEB00000000644974);
  v11(v20, 0);
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v18[0]);
  v20[0] = 1;
  sub_26738114C();
  v18[0] = v10;
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496C6F6F74, 0xE600000000000000);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 0x64496C6F6F74, 0xE600000000000000);
  if (!(*(v9 + 48))(v15, 1, v8))
  {
    sub_266ECB128(&unk_2878870B8);
    sub_26738115C();
  }

  (v14)(v19, 0);
  v13(v20, 0);
  type metadata accessor for IFTSchemaIFTActionClass(0);
  sub_26700FE54();
  sub_26738120C();
  (v18[0])(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x6C436E6F69746361, 0xEB00000000737361);
  return v16(v20, 0);
}

uint64_t sub_26700FD90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26700FDF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26700FE54()
{
  result = qword_2800F2930;
  if (!qword_2800F2930)
  {
    type metadata accessor for IFTSchemaIFTActionClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2930);
  }

  return result;
}

uint64_t static IFTSchemaIFTActionParameterValue.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738118C();
  v32 = *(v0 - 8);
  v33 = v0;
  MEMORY[0x28223BE20](v0);
  v31 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v30 = *MEMORY[0x277D3E4E8];
  v9 = *(v3 + 104);
  v28 = v2;
  v29 = v9;
  v9(v5);
  v34[0] = 0;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D7269666E6F63, 0xE900000000000064);
  v12(v34, 0);
  v27 = "iri.ift.IFTActionConfirmation";
  v13 = v2;
  v14 = v29;
  v29(v5, *MEMORY[0x277D3E510], v13);
  v34[0] = 0;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v27 | 0x8000000000000000);
  v15(v34, 0);
  v14(v5, v30, v28);
  v16 = v31;
  v34[0] = 0;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x6465696E6564, 0xE600000000000000);
  v17(v34, 0);
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
  (*(v32 + 32))(v21 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v24, v16, v33);
  return v18(v34, 0);
}

uint64_t sub_26701043C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670104A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267010504()
{
  result = qword_2800F2908;
  if (!qword_2800F2908)
  {
    sub_26701055C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2908);
  }

  return result;
}

unint64_t sub_26701055C()
{
  result = qword_2800F2900;
  if (!qword_2800F2900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2900);
  }

  return result;
}

uint64_t static IFTSchemaIFTActionRequirement.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v37 = a1;
  v1 = sub_26738118C();
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x28223BE20](v1);
  v38 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v4 + 104);
  v33 = *MEMORY[0x277D3E4E8];
  v34 = v4 + 104;
  v35 = v3;
  v32 = v10;
  v10(v6);
  v42[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v36 = *(v12 + 56);
  v36(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v13(v42, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v41, 0x737473697865, 0xE600000000000000);
  if (!(*(v12 + 48))(v16, 1, v11))
  {
    sub_266ECB128(&unk_2878870E8);
    sub_26738115C();
  }

  (v15)(v41, 0);
  v14(v42, 0);
  v32(v6, v33, v35);
  v42[0] = 0;
  sub_26738114C();
  v17 = v36;
  v36(v9, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x726F707075736E75, 0xEB00000000646574);
  v18(v42, 0);
  sub_266ECB294(0, &qword_2800F29C0, 0x277D57D48);
  sub_266ECAF2C(&qword_2800F29C8, &qword_2800F29C0, 0x277D57D48, &protocol conformance descriptor for IFTSchemaIFTAppRequirement);
  sub_26738121C();
  v17(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x6975716552707061, 0xEE00746E656D6572);
  v19(v42, 0);
  sub_266ECB294(0, &qword_2800F29D0, 0x277D57EF8);
  sub_266ECAF2C(&qword_2800F29D8, &qword_2800F29D0, 0x277D57EF8, &protocol conformance descriptor for IFTSchemaIFTPermissionRequirement);
  sub_26738121C();
  v17(v9, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267445400);
  v20(v42, 0);
  sub_266ECB294(0, &qword_2800F29E0, 0x277D580D8);
  sub_266ECAF2C(&qword_2800F29E8, &qword_2800F29E0, 0x277D580D8, &protocol conformance descriptor for IFTSchemaIFTSystemRequirement);
  sub_26738121C();
  v17(v9, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267445420);
  v21(v42, 0);
  v22 = v38;
  sub_26738117C();
  v23 = sub_2673811BC();
  v25 = v24;
  v26 = *v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v25 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_266ECAD54(0, v26[2] + 1, 1, v26);
    *v25 = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    v26 = sub_266ECAD54((v28 > 1), v29 + 1, 1, v26);
    *v25 = v26;
  }

  v26[2] = v29 + 1;
  (*(v39 + 32))(v26 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v29, v22, v40);
  return v23(v42, 0);
}

uint64_t sub_267010D84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267010DE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTActionResolverRequest.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v42 = sub_26738113C();
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v34 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v41 = a2;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E4E8];
  v36 = *(v3 + 104);
  v37 = v9;
  v36(v5);
  v44[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v13(v44, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v12(v8, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656D6574617473, 0xEB00000000644974);
  v14(v44, 0);
  v15 = *MEMORY[0x277D3E530];
  v34[1] = v3 + 104;
  (v36)(v5, v15, v42);
  v44[0] = 1;
  sub_26738114C();
  v38 = v11 + 56;
  v39 = v12;
  v12(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496C6F6F74, 0xE600000000000000);
  v16(v44, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v43, 0x64496C6F6F74, 0xE600000000000000);
  v19 = *(v11 + 48);
  v35 = v10;
  if (!v19(v20, 1, v10))
  {
    sub_266ECB128(&unk_287887110);
    sub_26738115C();
  }

  (v18)(v43, 0);
  v17(v44, 0);
  v21 = v37;
  v22 = v36;
  (v36)(v5, v37, v42);
  v44[0] = 1;
  sub_26738114C();
  v23 = v35;
  v24 = v39;
  v39(v8, 0, 1, v35);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E65696C437369, 0xEE006E6F69746341);
  v25(v44, 0);
  v26 = v21;
  v27 = v42;
  v22(v5, v26, v42);
  v44[0] = 1;
  sub_26738114C();
  v24(v8, 0, 1, v23);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0x7269666E6F437369, 0xEB0000000064656DLL);
  v28(v44, 0);
  v22(v5, v37, v27);
  v44[0] = 1;
  sub_26738114C();
  v29 = v35;
  v24(v8, 0, 1, v35);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65687475417369, 0xEF64657461636974);
  v30(v44, 0);
  sub_266ECB294(0, &qword_2800F2A00, 0x277D57EE0);
  sub_266ECAF2C(&qword_2800F2A08, &qword_2800F2A00, 0x277D57EE0, &protocol conformance descriptor for IFTSchemaIFTParameterSet);
  sub_26738120C();
  v24(v8, 0, 1, v29);
  v31 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x80000002674454A0);
  v31(v44, 0);
  sub_26738122C();
  v39(v8, 0, 1, v29);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x80000002674454C0);
  return v32(v44, 0);
}

uint64_t sub_26701170C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267011770(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTActionSuccess.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v33 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *(v2 + 104);
  v32 = *MEMORY[0x277D3E4E8];
  v34 = v2 + 104;
  v35 = v1;
  v31 = v8;
  (v8)(v4);
  v38[0] = 1;
  v29 = v4;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v36 = v10 + 56;
  v11(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v12(v38, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v37, 0x737473697865, 0xE600000000000000);
  if (!(*(v10 + 48))(v15, 1, v9))
  {
    sub_266ECB128(&unk_287887140);
    sub_26738115C();
  }

  (v14)(v37, 0);
  v13(v38, 0);
  sub_266ECB294(0, &qword_2800F2A20, 0x277D58138);
  sub_266ECAF2C(&qword_2800F2A28, &qword_2800F2A20, 0x277D58138, &protocol conformance descriptor for IFTSchemaIFTTypedValue);
  sub_26738120C();
  v30 = v9;
  v11(v7, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x61566E7275746572, 0xEB0000000065756CLL);
  v16(v38, 0);
  v17 = v29;
  v18 = v32;
  v19 = v35;
  v20 = v31;
  v31(v29, v32, v35);
  v38[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v30);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0x636E75614C707061, 0xEB00000000646568);
  v21(v38, 0);
  v28 = "iri.ift.IFTActionSuccess";
  v20(v17, v18, v19);
  v38[0] = 1;
  sub_26738114C();
  v22 = v30;
  v11(v7, 0, 1, v30);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, v28 | 0x8000000000000000);
  v23(v38, 0);
  sub_266ECB294(0, &qword_2800F2A30, 0x277D57E40);
  sub_266ECAF2C(&qword_2800F2A38, &qword_2800F2A30, 0x277D57E40, &protocol conformance descriptor for IFTSchemaIFTFollowUpAction);
  sub_26738120C();
  v11(v7, 0, 1, v22);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0x7055776F6C6C6F66, 0xEE006E6F69746341);
  v24(v38, 0);
  v31(v17, v32, v35);
  v38[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0x704F646C756F6873, 0xEA00000000006E65);
  return v25(v38, 0);
}

uint64_t sub_267011F3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267011FA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTApp.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x6449656C646E7562, 0xE800000000000000);
  v9(v15, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v14, 0x6449656C646E7562, 0xE800000000000000);
  if (!(*(v8 + 48))(v12, 1, v7))
  {
    sub_266ECB128(&unk_287887168);
    sub_26738115C();
  }

  (v11)(v14, 0);
  return v10(v15, 0);
}

uint64_t sub_267012344(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670123A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701240C()
{
  result = qword_2800F2A50;
  if (!qword_2800F2A50)
  {
    sub_267012464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2A50);
  }

  return result;
}

unint64_t sub_267012464()
{
  result = qword_2800F2A58;
  if (!qword_2800F2A58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2A58);
  }

  return result;
}

uint64_t static IFTSchemaIFTAppRequirement.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738118C();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26738113C();
  v36 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v33 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v5 + 104);
  v37 = v5 + 104;
  v35 = v11;
  v12(v7, v11, v4);
  v41[0] = 0;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v10, 0, 1, v13);
  v34 = v16;
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0x65526E496E676973, 0xEE00646572697571);
  v17(v41, 0);
  v32 = "iri.ift.IFTAppRequirement";
  v18 = v11;
  v19 = v36;
  v12(v7, v18, v36);
  v41[0] = 0;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v32 | 0x8000000000000000);
  v20(v41, 0);
  v12(v7, v35, v19);
  v21 = v38;
  v41[0] = 0;
  sub_26738114C();
  v15(v10, 0, 1, v13);
  v22 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x80000002674455A0);
  v22(v41, 0);
  sub_26738117C();
  v23 = sub_2673811BC();
  v25 = v24;
  v26 = *v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v25 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_266ECAD54(0, v26[2] + 1, 1, v26);
    *v25 = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    v26 = sub_266ECAD54((v28 > 1), v29 + 1, 1, v26);
    *v25 = v26;
  }

  v26[2] = v29 + 1;
  (*(v39 + 32))(v26 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v29, v21, v40);
  return v23(v41, 0);
}

uint64_t sub_267012A20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267012A84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267012AE8()
{
  result = qword_2800F29C8;
  if (!qword_2800F29C8)
  {
    sub_267012B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F29C8);
  }

  return result;
}

unint64_t sub_267012B40()
{
  result = qword_2800F29C0;
  if (!qword_2800F29C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F29C0);
  }

  return result;
}

uint64_t static IFTSchemaIFTASTFlatExpr.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  v44 = &v41[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  MEMORY[0x28223BE20](v3);
  v47 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28F0, 0x277D57CB8);
  sub_266ECAF2C(&qword_2800F28E8, &qword_2800F28F0, 0x277D57CB8, &protocol conformance descriptor for IFTSchemaASTFlatValue);
  sub_26738121C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x65756C6176, 0xE500000000000000);
  v11(v50, 0);
  sub_266ECB294(0, &qword_2800F2838, 0x277D57C70);
  sub_266ECAF2C(&qword_2800F2830, &qword_2800F2838, 0x277D57C70, &protocol conformance descriptor for IFTSchemaASTFlatExprPrefixVariant);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x786966657270, 0xE600000000000000);
  v12(v50, 0);
  sub_266ECB294(0, &qword_2800F27F8, 0x277D57C58);
  sub_266ECAF2C(&qword_2800F27F0, &qword_2800F27F8, 0x277D57C58, &protocol conformance descriptor for IFTSchemaASTFlatExprInfixVariant);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x7869666E69, 0xE500000000000000);
  v13(v50, 0);
  sub_266ECB294(0, &qword_2800F27D8, 0x277D57C48);
  sub_266ECAF2C(&qword_2800F27D0, &qword_2800F27D8, 0x277D57C48, &protocol conformance descriptor for IFTSchemaASTFlatExprDotVariant);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 7630692, 0xE300000000000000);
  v14(v50, 0);
  sub_266ECB294(0, &qword_2800F27E8, 0x277D57C50);
  sub_266ECAF2C(&qword_2800F27E0, &qword_2800F27E8, 0x277D57C50, &protocol conformance descriptor for IFTSchemaASTFlatExprIndexVariant);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x7865646E69, 0xE500000000000000);
  v15(v50, 0);
  sub_266ECB294(0, &qword_2800F27A8, 0x277D57C30);
  sub_266ECAF2C(&qword_2800F27A0, &qword_2800F27A8, 0x277D57C30, &protocol conformance descriptor for IFTSchemaASTFlatExprCallVariant);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 1819042147, 0xE400000000000000);
  v16(v50, 0);
  sub_266ECB294(0, &qword_2800F28A0, 0x277D57CB0);
  sub_266ECAF2C(&qword_2800F28A8, &qword_2800F28A0, 0x277D57CB0, &protocol conformance descriptor for IFTSchemaASTFlatExprUpdateVariant);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x657461647075, 0xE600000000000000);
  v17(v50, 0);
  v42 = *MEMORY[0x277D3E4E8];
  v18 = *(v49 + 104);
  v49 += 104;
  v43 = v18;
  v18(v47);
  v50[0] = 0;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x616C50664F646E65, 0xE90000000000006ELL);
  v19(v50, 0);
  sub_266ECB294(0, &qword_2800F2868, 0x277D57C88);
  sub_266ECAF2C(&qword_2800F2860, &qword_2800F2868, 0x277D57C88, &protocol conformance descriptor for IFTSchemaASTFlatExprSayVariant);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 7954803, 0xE300000000000000);
  v20(v50, 0);
  sub_266ECB294(0, &qword_2800F2828, 0x277D57C68);
  sub_266ECAF2C(&qword_2800F2820, &qword_2800F2828, 0x277D57C68, &protocol conformance descriptor for IFTSchemaASTFlatExprPickVariant);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 1801677168, 0xE400000000000000);
  v21(v50, 0);
  sub_266ECB294(0, &qword_2800F27C8, 0x277D57C40);
  sub_266ECAF2C(&qword_2800F27C0, &qword_2800F27C8, 0x277D57C40, &protocol conformance descriptor for IFTSchemaASTFlatExprConfirmVariant);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x6D7269666E6F63, 0xE700000000000000);
  v22(v50, 0);
  sub_266ECB294(0, &qword_2800F2878, 0x277D57C90);
  sub_266ECAF2C(&qword_2800F2870, &qword_2800F2878, 0x277D57C90, &protocol conformance descriptor for IFTSchemaASTFlatExprSearchVariant);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x686372616573, 0xE600000000000000);
  v23(v50, 0);
  sub_266ECB294(0, &qword_2800F2808, 0x277D57C60);
  sub_266ECAF2C(&qword_2800F2800, &qword_2800F2808, 0x277D57C60, &protocol conformance descriptor for IFTSchemaASTFlatExprPickOneVariant);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x656E4F6B636970, 0xE700000000000000);
  v24(v50, 0);
  v43(v47, v42, v48);
  v50[0] = 0;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0x69686374614D6F6ELL, 0xEE006C6F6F54676ELL);
  v25(v50, 0);
  sub_266ECB294(0, &qword_2800F2898, 0x277D57CA0);
  sub_266ECAF2C(&qword_2800F2890, &qword_2800F2898, 0x277D57CA0, &protocol conformance descriptor for IFTSchemaASTFlatExprUndoVariant);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 1868852853, 0xE400000000000000);
  v26(v50, 0);
  sub_266ECB294(0, &qword_2800F2858, 0x277D57C80);
  sub_266ECAF2C(&qword_2800F2850, &qword_2800F2858, 0x277D57C80, &protocol conformance descriptor for IFTSchemaASTFlatExprResolveToolVariant);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0x5465766C6F736572, 0xEB000000006C6F6FLL);
  v27(v50, 0);
  sub_266ECB294(0, &qword_2800F2848, 0x277D57C78);
  sub_266ECAF2C(&qword_2800F2840, &qword_2800F2848, 0x277D57C78, &protocol conformance descriptor for IFTSchemaASTFlatExprRejectVariant);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0x7463656A6572, 0xE600000000000000);
  v28(v50, 0);
  sub_266ECB294(0, &qword_2800F27B8, 0x277D57C38);
  sub_266ECAF2C(&qword_2800F27B0, &qword_2800F27B8, 0x277D57C38, &protocol conformance descriptor for IFTSchemaASTFlatExprCancelVariant);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C65636E6163, 0xE600000000000000);
  v29(v50, 0);
  sub_266ECB294(0, &qword_2800F2798, 0x277D57C28);
  sub_266ECAF2C(&qword_2800F2790, &qword_2800F2798, 0x277D57C28, &protocol conformance descriptor for IFTSchemaASTExprContinuePlanningVariant);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x8000000267445610);
  v30(v50, 0);
  sub_266ECB294(0, &qword_2800F28B8, 0x277D57CA8);
  sub_266ECAF2C(&qword_2800F28B0, &qword_2800F28B8, 0x277D57CA8, &protocol conformance descriptor for IFTSchemaASTFlatExprUpdateParametersVariant);
  v31 = v44;
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x8000000267445630);
  v32(v50, 0);
  sub_26738117C();
  v33 = sub_2673811BC();
  v35 = v34;
  v36 = *v34;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v35 = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = sub_266ECAD54(0, v36[2] + 1, 1, v36);
    *v35 = v36;
  }

  v39 = v36[2];
  v38 = v36[3];
  if (v39 >= v38 >> 1)
  {
    v36 = sub_266ECAD54((v38 > 1), v39 + 1, 1, v36);
    *v35 = v36;
  }

  v36[2] = v39 + 1;
  (*(v45 + 32))(v36 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v39, v31, v46);
  v33(v50, 0);
  sub_266ECB128(&unk_287887198);
  return sub_2673811CC();
}

uint64_t sub_267013E74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267013ED8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTCallExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0x64496C6F6F74, 0xE600000000000000);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0x64496C6F6F74, 0xE600000000000000);
  if (!(*(v9 + 48))(v14, 1, v8))
  {
    sub_266ECB128(&unk_2878871C0);
    sub_26738115C();
  }

  (v13)(v18, 0);
  v12(v19, 0);
  sub_266ECB294(0, &qword_2800F2A70, 0x277D57D58);
  sub_266ECAF2C(&qword_2800F2A78, &qword_2800F2A70, 0x277D57D58, &protocol conformance descriptor for IFTSchemaIFTCallExpressionParameters);
  sub_26738122C();
  v10(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x6574656D61726170, 0xEA00000000007372);
  return v15(v19, 0);
}

uint64_t sub_267014354(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670143B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTCallExpressionParameters.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0xD000000000000011, 0x80000002674456E0);
  v10(v13, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656D6574617473, 0xEB00000000644974);
  return v11(v13, 0);
}

uint64_t sub_267014798(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670147FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTCancelExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_267014A7C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_267014C20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267014C84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTCandidate.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  v6(v11, 0);
  type metadata accessor for IFTSchemaIFTCandidateSource(0);
  sub_26701520C();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x656372756F73, 0xE600000000000000);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800F2AA8, 0x277D57D70);
  sub_266ECAF2C(&qword_2800F2AB0, &qword_2800F2AA8, 0x277D57D70, &protocol conformance descriptor for IFTSchemaIFTCandidatePromptStatus);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x745374706D6F7270, 0xEC00000073757461);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800F2A20, 0x277D58138);
  sub_266ECAF2C(&qword_2800F2A28, &qword_2800F2A20, 0x277D58138, &protocol conformance descriptor for IFTSchemaIFTTypedValue);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x65756C6176, 0xE500000000000000);
  return v9(v11, 0);
}

uint64_t sub_267015148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670151AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701520C()
{
  result = qword_2800F2AA0;
  if (!qword_2800F2AA0)
  {
    type metadata accessor for IFTSchemaIFTCandidateSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2AA0);
  }

  return result;
}

uint64_t static IFTSchemaIFTCandidatePromptStatus.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738118C();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v29 = a1;
  sub_26738119C();
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v5 + 104);
  v30 = v4;
  v31 = v12;
  v12(v7, v11, v4);
  v35[0] = 0;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0x706D6F7250746F6ELL, 0xEB00000000646574);
  v15(v35, 0);
  v16 = v4;
  v17 = v31;
  v31(v7, v11, v16);
  v35[0] = 0;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0x656D7269666E6F63, 0xE900000000000064);
  v18(v35, 0);
  v17(v7, *MEMORY[0x277D3E510], v30);
  v19 = v32;
  v35[0] = 0;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x64656B636970, 0xE600000000000000);
  v20(v35, 0);
  sub_26738117C();
  v21 = sub_2673811BC();
  v23 = v22;
  v24 = *v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v23 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_266ECAD54(0, v24[2] + 1, 1, v24);
    *v23 = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = sub_266ECAD54((v26 > 1), v27 + 1, 1, v24);
    *v23 = v24;
  }

  v24[2] = v27 + 1;
  (*(v33 + 32))(v24 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27, v19, v34);
  return v21(v35, 0);
}

uint64_t sub_2670157F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267015858(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670158BC()
{
  result = qword_2800F2AB0;
  if (!qword_2800F2AB0)
  {
    sub_267015914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2AB0);
  }

  return result;
}

unint64_t sub_267015914()
{
  result = qword_2800F2AA8;
  if (!qword_2800F2AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2AA8);
  }

  return result;
}

uint64_t static IFTSchemaIFTCandidateSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x80000002674457F0, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267445810, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x8000000267445830, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000029, 0x8000000267445860, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x8000000267445890, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x80000002674458B0, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x80000002674458E0, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ELL, 0x8000000267445900, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001DLL, 0x8000000267445920, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_267015E1C(uint64_t a1)
{
  v2 = sub_267015F20(&qword_2800F2AC8, &protocol conformance descriptor for IFTSchemaIFTCandidateSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267015E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_267015F20(&qword_2800F2AC8, &protocol conformance descriptor for IFTSchemaIFTCandidateSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267015F20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTCandidateSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTClientAction.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23 = a1;
  v1 = sub_26738113C();
  v21 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E4E8];
  v9 = *(v2 + 104);
  v20 = v2 + 104;
  v22 = v9;
  v9(v4, v8, v1);
  v25[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v7, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v13(v25, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v12(v7, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656D6574617473, 0xEB00000000644974);
  v14(v25, 0);
  v22(v4, *MEMORY[0x277D3E530], v21);
  v25[0] = 1;
  sub_26738114C();
  v12(v7, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496C6F6F74, 0xE600000000000000);
  v15(v25, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v24, 0x64496C6F6F74, 0xE600000000000000);
  if (!(*(v11 + 48))(v18, 1, v10))
  {
    sub_266ECB128(&unk_2878871F0);
    sub_26738115C();
  }

  (v17)(v24, 0);
  return v16(v25, 0);
}

uint64_t sub_267016404(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267016468(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTClientApplicationId.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x80000002674459A0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x80000002674459C0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x80000002674459F0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x8000000267445A20, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267016794(uint64_t a1)
{
  v2 = sub_267016898(&qword_2800F2AE8, &protocol conformance descriptor for IFTSchemaIFTClientApplicationId);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670167FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267016898(&qword_2800F2AE8, &protocol conformance descriptor for IFTSchemaIFTClientApplicationId);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267016898(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTClientApplicationId(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a1;
  v3 = sub_26738118C();
  v80 = *(v3 - 8);
  v81 = v3;
  MEMORY[0x28223BE20](v3);
  v79 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v79 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2AF0, 0x277D57D88);
  sub_266ECAF2C(&qword_2800F2AF8, &qword_2800F2AF0, 0x277D57D88, &protocol conformance descriptor for IFTSchemaIFTClientEventMetadata);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x74654D746E657665, 0xED00006174616461);
  v11(v90, 0);
  sub_266ECB294(0, &qword_2800F2B00, 0x277D57DA8);
  sub_266ECAF2C(&qword_2800F2B08, &qword_2800F2B00, 0x277D57DA8, &protocol conformance descriptor for IFTSchemaIFTContextPrewarmRequest);
  sub_26738121C();
  v84 = v9 + 56;
  v85 = v10;
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x8000000267445A70);
  v12(v90, 0);
  v87 = a2;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v89, 0xD000000000000015, 0x8000000267445A70);
  v83 = *(v9 + 48);
  if (!v83(v15, 1, v8))
  {
    sub_266ECB128(&unk_287887220);
    sub_26738115C();
  }

  (v14)(v89, 0);
  v13(v90, 0);
  sub_266ECB294(0, &qword_2800F2B10, 0x277D57DA0);
  sub_266ECAF2C(&qword_2800F2B18, &qword_2800F2B10, 0x277D57DA0, &protocol conformance descriptor for IFTSchemaIFTContextPrewarmCompleted);
  sub_26738121C();
  v85(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x8000000267445A90);
  v16(v90, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v89, 0xD000000000000017, 0x8000000267445A90);
  v20 = v83(v19, 1, v8);
  v82 = v9 + 48;
  if (!v20)
  {
    sub_266ECB128(&unk_287887248);
    sub_26738115C();
  }

  (v18)(v89, 0);
  v17(v90, 0);
  sub_266ECB294(0, &qword_2800F2B20, 0x277D58100);
  sub_266ECAF2C(&qword_2800F2B28, &qword_2800F2B20, 0x277D58100, &protocol conformance descriptor for IFTSchemaIFTTerminate);
  sub_26738121C();
  v21 = v8;
  v86 = v8;
  v22 = v85;
  v85(v7, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0x74616E696D726574, 0xE900000000000065);
  v23(v90, 0);
  sub_266ECB294(0, &qword_2800F2B30, 0x277D58060);
  sub_266ECAF2C(&qword_2800F2B38, &qword_2800F2B30, 0x277D58060, &protocol conformance descriptor for IFTSchemaIFTSessionStart);
  sub_26738121C();
  v22(v7, 0, 1, v86);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0x536E6F6973736573, 0xEC00000074726174);
  v24(v90, 0);
  sub_266ECB294(0, &qword_2800F2B40, 0x277D57FA8);
  sub_266ECAF2C(&qword_2800F2B48, &qword_2800F2B40, 0x277D57FA8, &protocol conformance descriptor for IFTSchemaIFTRequest);
  sub_26738121C();
  v22(v7, 0, 1, v86);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0x74736575716572, 0xE700000000000000);
  v25(v90, 0);
  sub_266ECB294(0, &qword_2800F2B50, 0x277D57FD8);
  sub_266ECAF2C(&qword_2800F2B58, &qword_2800F2B50, 0x277D57FD8, &protocol conformance descriptor for IFTSchemaIFTRequestContentTextContentTier1);
  sub_26738121C();
  v22(v7, 0, 1, v86);
  v26 = v86;
  v27 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, 0x8000000267445AB0);
  v27(v90, 0);
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v89, 0xD00000000000001ELL, 0x8000000267445AB0);
  if (!v83(v30, 1, v26))
  {
    sub_266ECB128(&unk_287887270);
    sub_26738115C();
  }

  (v29)(v89, 0);
  v28(v90, 0);
  sub_266ECB294(0, &qword_2800F2B60, 0x277D57DF8);
  sub_266ECAF2C(&qword_2800F2B68, &qword_2800F2B60, 0x277D57DF8, &protocol conformance descriptor for IFTSchemaIFTEntitySpanMatchResult);
  sub_26738121C();
  v85(v7, 0, 1, v26);
  v31 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267445AD0);
  v31(v90, 0);
  v32 = sub_2673811AC();
  v33 = sub_266ECB6CC(v89, 0xD000000000000011, 0x8000000267445AD0);
  if (!v83(v34, 1, v26))
  {
    sub_266ECB128(&unk_287887298);
    sub_26738115C();
  }

  (v33)(v89, 0);
  v32(v90, 0);
  sub_266ECB294(0, &qword_2800F2B70, 0x277D57DB0);
  sub_266ECAF2C(&qword_2800F2B78, &qword_2800F2B70, 0x277D57DB0, &protocol conformance descriptor for IFTSchemaIFTContextRetrieved);
  sub_26738121C();
  v85(v7, 0, 1, v26);
  v35 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x8000000267445AF0);
  v35(v90, 0);
  v36 = sub_2673811AC();
  v37 = sub_266ECB6CC(v89, 0xD000000000000010, 0x8000000267445AF0);
  if (!v83(v38, 1, v26))
  {
    sub_266ECB128(&unk_2878872C0);
    sub_26738115C();
  }

  (v37)(v89, 0);
  v36(v90, 0);
  sub_266ECB294(0, &qword_2800F2B80, 0x277D58120);
  sub_266ECAF2C(&qword_2800F2B88, &qword_2800F2B80, 0x277D58120, &protocol conformance descriptor for IFTSchemaIFTToolRetrievalResponse);
  sub_26738121C();
  v85(v7, 0, 1, v26);
  v39 = sub_2673811AC();
  sub_266EC637C(v7, 0x746552736C6F6F74, 0xEE00646576656972);
  v39(v90, 0);
  v40 = sub_2673811AC();
  v41 = sub_266ECB6CC(v89, 0x746552736C6F6F74, 0xEE00646576656972);
  if (!v83(v42, 1, v26))
  {
    sub_266ECB128(&unk_2878872E8);
    sub_26738115C();
  }

  (v41)(v89, 0);
  v40(v90, 0);
  sub_266ECB294(0, &qword_2800F2B90, 0x277D57F70);
  sub_266ECAF2C(&qword_2800F2B98, &qword_2800F2B90, 0x277D57F70, &protocol conformance descriptor for IFTSchemaIFTQueryDecorationResult);
  sub_26738121C();
  v43 = v26;
  v44 = v85;
  v85(v7, 0, 1, v43);
  v45 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x8000000267445B10);
  v45(v90, 0);
  sub_266ECB294(0, &qword_2800F2BA0, 0x277D57F68);
  sub_266ECAF2C(&qword_2800F2BA8, &qword_2800F2BA0, 0x277D57F68, &protocol conformance descriptor for IFTSchemaIFTQueryDecorationPrePlannerResult);
  sub_26738121C();
  v44(v7, 0, 1, v86);
  v46 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001FLL, 0x8000000267445B30);
  v46(v90, 0);
  sub_266ECB294(0, &qword_2800F2BB0, 0x277D57F20);
  sub_266ECAF2C(&qword_2800F2BB8, &qword_2800F2BB0, 0x277D57F20, &protocol conformance descriptor for IFTSchemaIFTPlan);
  sub_26738121C();
  v44(v7, 0, 1, v86);
  v47 = sub_2673811AC();
  sub_266EC637C(v7, 0x616572436E616C70, 0xEB00000000646574);
  v47(v90, 0);
  sub_266ECB294(0, &qword_2800F2888, 0x277D57C98);
  sub_266ECAF2C(&qword_2800F2880, &qword_2800F2888, 0x277D57C98, &protocol conformance descriptor for IFTSchemaASTFlatExprSearchVariantTier1);
  sub_26738121C();
  v44(v7, 0, 1, v86);
  v48 = v86;
  v49 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, 0x8000000267445B50);
  v49(v90, 0);
  v50 = sub_2673811AC();
  v51 = sub_266ECB6CC(v89, 0xD00000000000001DLL, 0x8000000267445B50);
  if (!v83(v52, 1, v48))
  {
    sub_266ECB128(&unk_287887310);
    sub_26738115C();
  }

  (v51)(v89, 0);
  v50(v90, 0);
  sub_266ECB294(0, &qword_2800F2BC0, 0x277D58178);
  sub_266ECAF2C(&qword_2800F2BC8, &qword_2800F2BC0, 0x277D58178, &protocol conformance descriptor for IFTSchemaIFTVariableStep);
  sub_26738121C();
  v53 = v85;
  v85(v7, 0, 1, v48);
  v54 = sub_2673811AC();
  sub_266EC637C(v7, 0x656C626169726176, 0xEC00000074655373);
  v54(v90, 0);
  sub_266ECB294(0, &qword_2800F2BD0, 0x277D58118);
  sub_266ECAF2C(&qword_2800F2BD8, &qword_2800F2BD0, 0x277D58118, &protocol conformance descriptor for IFTSchemaIFTToolResolution);
  sub_26738121C();
  v53(v7, 0, 1, v48);
  v55 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F7365526C6F6F74, 0xEE006E6F6974756CLL);
  v55(v90, 0);
  sub_266ECB294(0, &qword_2800F2BE0, 0x277D57F80);
  sub_266ECAF2C(&qword_2800F2BE8, &qword_2800F2BE0, 0x277D57F80, &protocol conformance descriptor for IFTSchemaIFTQueryStep);
  sub_26738121C();
  v53(v7, 0, 1, v48);
  v56 = sub_2673811AC();
  sub_266EC637C(v7, 0x4373656972657571, 0xEE00646574616572);
  v56(v90, 0);
  sub_266ECB294(0, &qword_2800F2A18, 0x277D57D30);
  sub_266ECAF2C(&qword_2800F2A10, &qword_2800F2A18, 0x277D57D30, &protocol conformance descriptor for IFTSchemaIFTActionResolverRequest);
  sub_26738121C();
  v53(v7, 0, 1, v48);
  v57 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, 0x8000000267445B70);
  v57(v90, 0);
  sub_266ECB294(0, &qword_2800F2BF0, 0x277D58028);
  sub_266ECAF2C(&qword_2800F2BF8, &qword_2800F2BF0, 0x277D58028, &protocol conformance descriptor for IFTSchemaIFTResponseGenerationRequest);
  sub_26738121C();
  v53(v7, 0, 1, v48);
  v58 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, 0x8000000267445B90);
  v58(v90, 0);
  sub_266ECB294(0, &qword_2800F2928, 0x277D57CE0);
  sub_266ECAF2C(&qword_2800F2920, &qword_2800F2928, 0x277D57CE0, &protocol conformance descriptor for IFTSchemaIFTActionCancellation);
  sub_26738121C();
  v53(v7, 0, 1, v48);
  v59 = sub_2673811AC();
  sub_266EC637C(v7, 0x61436E6F69746361, 0xEF64656C6C65636ELL);
  v59(v90, 0);
  sub_266ECB294(0, &qword_2800F2C00, 0x277D57DB8);
  sub_266ECAF2C(&qword_2800F2C08, &qword_2800F2C00, 0x277D57DB8, &protocol conformance descriptor for IFTSchemaIFTContinuePlanning);
  sub_26738121C();
  v53(v7, 0, 1, v48);
  v60 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x8000000267445610);
  v60(v90, 0);
  sub_266ECB294(0, &qword_2800F2C10, 0x277D58068);
  sub_266ECAF2C(&qword_2800F2C18, &qword_2800F2C10, 0x277D58068, &protocol conformance descriptor for IFTSchemaIFTSkipStatement);
  sub_26738121C();
  v53(v7, 0, 1, v48);
  v61 = sub_2673811AC();
  sub_266EC637C(v7, 0x7461745370696B73, 0xED0000746E656D65);
  v61(v90, 0);
  sub_266ECB294(0, &qword_2800F2C20, 0x277D57E10);
  sub_266ECAF2C(&qword_2800F2C28, &qword_2800F2C20, 0x277D57E10, &protocol conformance descriptor for IFTSchemaIFTExecutionPreconditionEvaluatorRequest);
  sub_26738121C();
  v53(v7, 0, 1, v48);
  v62 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000025, 0x8000000267445BB0);
  v62(v90, 0);
  sub_266ECB294(0, &qword_2800F2918, 0x277D57CD8);
  sub_266ECAF2C(&qword_2800F2910, &qword_2800F2918, 0x277D57CD8, &protocol conformance descriptor for IFTSchemaIFTAction);
  sub_26738121C();
  v53(v7, 0, 1, v48);
  v63 = sub_2673811AC();
  sub_266EC637C(v7, 0x72436E6F69746361, 0xED00006465746165);
  v63(v90, 0);
  sub_266ECB294(0, &qword_2800F2AD8, 0x277D57D78);
  sub_266ECAF2C(&qword_2800F2AD0, &qword_2800F2AD8, 0x277D57D78, &protocol conformance descriptor for IFTSchemaIFTClientAction);
  sub_26738121C();
  v53(v7, 0, 1, v48);
  v64 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x8000000267445BE0);
  v64(v90, 0);
  sub_266ECB294(0, &qword_2800F2C30, 0x277D57F88);
  sub_266ECAF2C(&qword_2800F2C38, &qword_2800F2C30, 0x277D57F88, &protocol conformance descriptor for IFTSchemaIFTQueryStepResults);
  sub_26738121C();
  v53(v7, 0, 1, v48);
  v65 = sub_2673811AC();
  sub_266EC637C(v7, 0x4573656972657571, 0xEF64657475636578);
  v65(v90, 0);
  sub_266ECB294(0, &qword_2800F2C40, 0x277D58088);
  sub_266ECAF2C(&qword_2800F2C48, &qword_2800F2C40, 0x277D58088, &protocol conformance descriptor for IFTSchemaIFTStatementResult);
  sub_26738121C();
  v53(v7, 0, 1, v48);
  v66 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267445C00);
  v66(v90, 0);
  sub_266ECB294(0, &qword_2800F2C50, 0x277D580F8);
  sub_266ECAF2C(&qword_2800F2C58, &qword_2800F2C50, 0x277D580F8, &protocol conformance descriptor for IFTSchemaIFTSystemResponse);
  sub_26738121C();
  v53(v7, 0, 1, v48);
  v67 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x8000000267445C20);
  v67(v90, 0);
  sub_266ECB294(0, &qword_2800F2C60, 0x277D58058);
  sub_266ECAF2C(&qword_2800F2C68, &qword_2800F2C60, 0x277D58058, &protocol conformance descriptor for IFTSchemaIFTSessionError);
  sub_26738121C();
  v53(v7, 0, 1, v48);
  v68 = sub_2673811AC();
  sub_266EC637C(v7, 0x6C61636974697263, 0xED0000726F727245);
  v68(v90, 0);
  sub_266ECB294(0, &qword_2800F2C70, 0x277D57F98);
  sub_266ECAF2C(&qword_2800F2C78, &qword_2800F2C70, 0x277D57F98, &protocol conformance descriptor for IFTSchemaIFTRecoverableError);
  sub_26738121C();
  v53(v7, 0, 1, v48);
  v69 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x8000000267445C40);
  v69(v90, 0);
  v70 = v79;
  sub_26738117C();
  v71 = sub_2673811BC();
  v73 = v72;
  v74 = *v72;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v73 = v74;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v74 = sub_266ECAD54(0, v74[2] + 1, 1, v74);
    *v73 = v74;
  }

  v77 = v74[2];
  v76 = v74[3];
  if (v77 >= v76 >> 1)
  {
    v74 = sub_266ECAD54((v76 > 1), v77 + 1, 1, v74);
    *v73 = v74;
  }

  v74[2] = v77 + 1;
  (*(v80 + 32))(v74 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v77, v70, v81);
  v71(v90, 0);
  sub_266ECB128(&unk_287887338);
  return sub_2673811CC();
}

uint64_t sub_267018900(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267018998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267018A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267018AC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267018B28(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F2C80, &qword_2800F2C88, 0x277D57D80, &protocol conformance descriptor for IFTSchemaIFTClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F2C90, &qword_2800F2C88, 0x277D57D80, &protocol conformance descriptor for IFTSchemaIFTClientEvent);
  result = sub_266ECAF2C(&qword_2800F2C98, &qword_2800F2C88, 0x277D57D80, &protocol conformance descriptor for IFTSchemaIFTClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static IFTSchemaIFTClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v26 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v25 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v9 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v30 = a1;
  v25[1] = v9;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v29 = *(v11 + 56);
  v29(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x7365757165526669, 0xEB00000000644974);
  v12(v33, 0);
  v31 = a2;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v32, 0x7365757165526669, 0xEB00000000644974);
  if (!(*(v11 + 48))(v15, 1, v10))
  {
    sub_266ECB128(&unk_287887370);
    sub_26738115C();
  }

  (v14)(v32, 0);
  v13(v33, 0);
  sub_26738120C();
  v16 = v29;
  v29(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x49746E6576456669, 0xE900000000000064);
  v17(v33, 0);
  sub_26738120C();
  v16(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F69737365536669, 0xEB0000000064496ELL);
  v18(v33, 0);
  sub_26738120C();
  v16(v8, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x7254746E65696C63, 0xED00006449656361);
  v19(v33, 0);
  type metadata accessor for SISchemaIFParticipant(0);
  sub_2670194E8(&qword_2800F2CA8, type metadata accessor for SISchemaIFParticipant, &protocol conformance descriptor for SISchemaIFParticipant);
  sub_26738120C();
  v16(v8, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x7265646E6573, 0xE600000000000000);
  v20(v33, 0);
  (*(v27 + 104))(v26, *MEMORY[0x277D3E540], v28);
  v33[0] = 1;
  sub_26738114C();
  v16(v8, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x53676E6974736F70, 0xED000064496E6170);
  v21(v33, 0);
  sub_266ECB294(0, &qword_2800F2CB0, 0x277D57E78);
  sub_266ECAF2C(&qword_2800F2CB8, &qword_2800F2CB0, 0x277D57E78, &protocol conformance descriptor for IFTSchemaIFTInitiatedSpans);
  sub_26738122C();
  v16(v8, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x6574616974696E69, 0xEE00736E61705364);
  v22(v33, 0);
  type metadata accessor for IFTSchemaIFTClientApplicationId(0);
  sub_2670194E8(&qword_2800F2AE0, type metadata accessor for IFTSchemaIFTClientApplicationId, &protocol conformance descriptor for IFTSchemaIFTClientApplicationId);
  sub_26738120C();
  v16(v8, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267445C90);
  return v23(v33, 0);
}

uint64_t sub_267019424(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267019488(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670194E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static IFTSchemaIFTCollectionValue.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2CC0, 0x277D58128);
  sub_266ECAF2C(&qword_2800F2CC8, &qword_2800F2CC0, 0x277D58128, &protocol conformance descriptor for IFTSchemaIFTTypeIdentifier);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E65644965707974, 0xEE00726569666974);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F2CD0, 0x277D58158);
  sub_266ECAF2C(&qword_2800F2CD8, &qword_2800F2CD0, 0x277D58158, &protocol conformance descriptor for IFTSchemaIFTValue);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7365756C6176, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_267019844(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670198A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTConfirmExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_267019B28(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_267019CCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267019D30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTContextPrewarmCompleted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0xD00000000000001BLL, 0x8000000267445D50);
  v5(v7, 0);
  sub_266ECB128(&unk_2878873A0);
  return sub_2673811CC();
}

uint64_t sub_267019FE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701A044(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTContextPrewarmRequest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267445DB0);
  v5(v7, 0);
  sub_266ECB128(&unk_2878873C8);
  return sub_2673811CC();
}

uint64_t sub_26701A2F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701A358(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTContextRetrieved.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_2878873F0);
  return sub_2673811CC();
}

uint64_t sub_26701A65C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701A6C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701A724()
{
  result = qword_2800F2B78;
  if (!qword_2800F2B78)
  {
    sub_26701A77C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2B78);
  }

  return result;
}

unint64_t sub_26701A77C()
{
  result = qword_2800F2B70;
  if (!qword_2800F2B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2B70);
  }

  return result;
}

uint64_t static IFTSchemaIFTContinuePlanning.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701AA10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701AA74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701AAD8()
{
  result = qword_2800F2C08;
  if (!qword_2800F2C08)
  {
    sub_26701AB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2C08);
  }

  return result;
}

unint64_t sub_26701AB30()
{
  result = qword_2800F2C00;
  if (!qword_2800F2C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2C00);
  }

  return result;
}

uint64_t static IFTSchemaIFTContinuePlanningExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701ADC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701AE28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701AE8C()
{
  result = qword_2800F2D00;
  if (!qword_2800F2D00)
  {
    sub_26701AEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2D00);
  }

  return result;
}

unint64_t sub_26701AEE4()
{
  result = qword_2800F2D08;
  if (!qword_2800F2D08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2D08);
  }

  return result;
}

uint64_t static IFTSchemaIFTCurrencyAmount.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701B178(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701B1DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701B240()
{
  result = qword_2800F2D10;
  if (!qword_2800F2D10)
  {
    sub_26701B298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2D10);
  }

  return result;
}

unint64_t sub_26701B298()
{
  result = qword_2800F2D18;
  if (!qword_2800F2D18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2D18);
  }

  return result;
}

uint64_t static IFTSchemaIFTCustom.makeTypeManifestAndEnsureFields(in:)()
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
  v7 = *(v1 + 104);
  v19 = *MEMORY[0x277D3E530];
  v20 = v1 + 104;
  v21 = v0;
  v18 = v7;
  v7(v3);
  v23[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v17 = *(v9 + 56);
  v17(v6, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6449656C646E7562, 0xE800000000000000);
  v10(v23, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v22, 0x6449656C646E7562, 0xE800000000000000);
  if (!(*(v9 + 48))(v13, 1, v8))
  {
    sub_266ECB128(&unk_287887418);
    sub_26738115C();
  }

  (v12)(v22, 0);
  v11(v23, 0);
  v18(v3, v19, v21);
  v23[0] = 1;
  sub_26738114C();
  v17(v6, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x79546D6F74737563, 0xEE00656D614E6570);
  return v14(v23, 0);
}

uint64_t sub_26701B6BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701B720(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701B784()
{
  result = qword_2800F2D20;
  if (!qword_2800F2D20)
  {
    sub_26701B7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2D20);
  }

  return result;
}

unint64_t sub_26701B7DC()
{
  result = qword_2800F2D28;
  if (!qword_2800F2D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2D28);
  }

  return result;
}

uint64_t static IFTSchemaIFTDateComponents.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701BA70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701BAD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701BB38()
{
  result = qword_2800F2D30;
  if (!qword_2800F2D30)
  {
    sub_26701BB90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2D30);
  }

  return result;
}

unint64_t sub_26701BB90()
{
  result = qword_2800F2D38;
  if (!qword_2800F2D38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2D38);
  }

  return result;
}

uint64_t static IFTSchemaIFTDisplayRepresentation.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701BE24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701BE88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701BEEC()
{
  result = qword_2800F2D40;
  if (!qword_2800F2D40)
  {
    sub_26701BF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2D40);
  }

  return result;
}

unint64_t sub_26701BF44()
{
  result = qword_2800F2D48;
  if (!qword_2800F2D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2D48);
  }

  return result;
}

uint64_t static IFTSchemaIFTDotExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701C1D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701C23C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701C2A0()
{
  result = qword_2800F2D50;
  if (!qword_2800F2D50)
  {
    sub_26701C2F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2D50);
  }

  return result;
}

unint64_t sub_26701C2F8()
{
  result = qword_2800F2D58;
  if (!qword_2800F2D58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2D58);
  }

  return result;
}

uint64_t static IFTSchemaIFTEndOfPlanExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701C58C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701C5F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701C654()
{
  result = qword_2800F2D60;
  if (!qword_2800F2D60)
  {
    sub_26701C6AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2D60);
  }

  return result;
}

unint64_t sub_26701C6AC()
{
  result = qword_2800F2D68;
  if (!qword_2800F2D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2D68);
  }

  return result;
}

uint64_t static IFTSchemaIFTEntitySpanMatchResult.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287887448);
  return sub_2673811CC();
}

uint64_t sub_26701C958(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701C9BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701CA20()
{
  result = qword_2800F2B68;
  if (!qword_2800F2B68)
  {
    sub_26701CA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2B68);
  }

  return result;
}

unint64_t sub_26701CA78()
{
  result = qword_2800F2B60;
  if (!qword_2800F2B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2B60);
  }

  return result;
}

uint64_t static IFTSchemaIFTEntityValue.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2CC0, 0x277D58128);
  sub_266ECAF2C(&qword_2800F2CC8, &qword_2800F2CC0, 0x277D58128, &protocol conformance descriptor for IFTSchemaIFTTypeIdentifier);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E65644965707974, 0xEE00726569666974);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F2D48, 0x277D57DE0);
  sub_266ECAF2C(&qword_2800F2D40, &qword_2800F2D48, 0x277D57DE0, &protocol conformance descriptor for IFTSchemaIFTDisplayRepresentation);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267446010);
  return v7(v9, 0);
}

uint64_t sub_26701CDA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701CE04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTEnumerationValue.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2CC0, 0x277D58128);
  sub_266ECAF2C(&qword_2800F2CC8, &qword_2800F2CC0, 0x277D58128, &protocol conformance descriptor for IFTSchemaIFTTypeIdentifier);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E65644965707974, 0xEE00726569666974);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F2D48, 0x277D57DE0);
  sub_266ECAF2C(&qword_2800F2D40, &qword_2800F2D48, 0x277D57DE0, &protocol conformance descriptor for IFTSchemaIFTDisplayRepresentation);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267446010);
  return v7(v9, 0);
}

uint64_t sub_26701D184(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701D1E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTExecutionPreconditionEvaluatorRequest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2D90, 0x277D57E18);
  sub_266ECAF2C(&qword_2800F2D98, &qword_2800F2D90, 0x277D57E18, &protocol conformance descriptor for IFTSchemaIFTExecutionPreconditionEvaluatorRequestActionRequest);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74736575716572, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_26701D460(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2D90, 0x277D57E18);
  sub_266ECAF2C(&qword_2800F2D98, &qword_2800F2D90, 0x277D57E18, &protocol conformance descriptor for IFTSchemaIFTExecutionPreconditionEvaluatorRequestActionRequest);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74736575716572, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_26701D5FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701D660(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTExecutionPreconditionEvaluatorRequestActionRequest.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701D94C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701D9B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701DA14()
{
  result = qword_2800F2D98;
  if (!qword_2800F2D98)
  {
    sub_26701DA6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2D98);
  }

  return result;
}

unint64_t sub_26701DA6C()
{
  result = qword_2800F2D90;
  if (!qword_2800F2D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2D90);
  }

  return result;
}

uint64_t static IFTSchemaIFTExecutorError.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_26738113C();
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80, &protocol conformance descriptor for IFTSchemaIFTIntelligenceFlowError);
  sub_26738121C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x726568746FLL, 0xE500000000000000);
  v11(v26, 0);
  (*(v3 + 104))(v5, *MEMORY[0x277D3E4E8], v22);
  v12 = v23;
  v26[0] = 0;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F5464656C696166, 0xEF65747563657845);
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

uint64_t sub_26701DF64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701DFC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTExplicitResolutionRequest.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701E2B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701E318(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701E37C()
{
  result = qword_2800F2DB0;
  if (!qword_2800F2DB0)
  {
    sub_26701E3D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2DB0);
  }

  return result;
}

unint64_t sub_26701E3D4()
{
  result = qword_2800F2DB8;
  if (!qword_2800F2DB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2DB8);
  }

  return result;
}

uint64_t static IFTSchemaIFTExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  v44 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2DC0, 0x277D58168);
  sub_266ECAF2C(&qword_2800F2DC8, &qword_2800F2DC0, 0x277D58168, &protocol conformance descriptor for IFTSchemaIFTValueExpression);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x65756C6176, 0xE500000000000000);
  v8(v47, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6E656D6574617473, 0xEB00000000644974);
  v9(v47, 0);
  sub_266ECB294(0, &qword_2800F2DD0, 0x277D57F40);
  sub_266ECAF2C(&qword_2800F2DD8, &qword_2800F2DD0, 0x277D57F40, &protocol conformance descriptor for IFTSchemaIFTPrefixExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x786966657270, 0xE600000000000000);
  v10(v47, 0);
  sub_266ECB294(0, &qword_2800F2DE0, 0x277D57E70);
  sub_266ECAF2C(&qword_2800F2DE8, &qword_2800F2DE0, 0x277D57E70, &protocol conformance descriptor for IFTSchemaIFTInfixExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x7869666E69, 0xE500000000000000);
  v11(v47, 0);
  sub_266ECB294(0, &qword_2800F2D58, 0x277D57DE8);
  sub_266ECAF2C(&qword_2800F2D50, &qword_2800F2D58, 0x277D57DE8, &protocol conformance descriptor for IFTSchemaIFTDotExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 7630692, 0xE300000000000000);
  v12(v47, 0);
  sub_266ECB294(0, &qword_2800F2DF0, 0x277D57E68);
  sub_266ECAF2C(&qword_2800F2DF8, &qword_2800F2DF0, 0x277D57E68, &protocol conformance descriptor for IFTSchemaIFTIndexExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x7865646E69, 0xE500000000000000);
  v13(v47, 0);
  sub_266ECB294(0, &qword_2800F2E00, 0x277D58150);
  sub_266ECAF2C(&qword_2800F2E08, &qword_2800F2E00, 0x277D58150, &protocol conformance descriptor for IFTSchemaIFTUpdateParametersExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x8000000267445630);
  v14(v47, 0);
  sub_266ECB294(0, &qword_2800F2A88, 0x277D57D50);
  sub_266ECAF2C(&qword_2800F2A80, &qword_2800F2A88, 0x277D57D50, &protocol conformance descriptor for IFTSchemaIFTCallExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 1819042147, 0xE400000000000000);
  v15(v47, 0);
  sub_266ECB294(0, &qword_2800F2E10, 0x277D58040);
  sub_266ECAF2C(&qword_2800F2E18, &qword_2800F2E10, 0x277D58040, &protocol conformance descriptor for IFTSchemaIFTSayExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v16 = sub_2673811AC();
  sub_266EC637C(v5, 7954803, 0xE300000000000000);
  v16(v47, 0);
  sub_266ECB294(0, &qword_2800F2E20, 0x277D57F08);
  sub_266ECAF2C(&qword_2800F2E28, &qword_2800F2E20, 0x277D57F08, &protocol conformance descriptor for IFTSchemaIFTPickExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 1801677168, 0xE400000000000000);
  v17(v47, 0);
  sub_266ECB294(0, &qword_2800F2CF8, 0x277D57D98);
  sub_266ECAF2C(&qword_2800F2CF0, &qword_2800F2CF8, 0x277D57D98, &protocol conformance descriptor for IFTSchemaIFTConfirmExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v18 = sub_2673811AC();
  sub_266EC637C(v5, 0x6D7269666E6F63, 0xE700000000000000);
  v18(v47, 0);
  sub_266ECB294(0, &qword_2800F2E30, 0x277D58048);
  sub_266ECAF2C(&qword_2800F2E38, &qword_2800F2E30, 0x277D58048, &protocol conformance descriptor for IFTSchemaIFTSearchExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v19 = sub_2673811AC();
  sub_266EC637C(v5, 0x686372616573, 0xE600000000000000);
  v19(v47, 0);
  sub_266ECB294(0, &qword_2800F2E40, 0x277D57F10);
  sub_266ECAF2C(&qword_2800F2E48, &qword_2800F2E40, 0x277D57F10, &protocol conformance descriptor for IFTSchemaIFTPickOneExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v20 = sub_2673811AC();
  sub_266EC637C(v5, 0x656E4F6B636970, 0xE700000000000000);
  v20(v47, 0);
  sub_266ECB294(0, &qword_2800F2E50, 0x277D58020);
  sub_266ECAF2C(&qword_2800F2E58, &qword_2800F2E50, 0x277D58020, &protocol conformance descriptor for IFTSchemaIFTResolveToolExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v21 = sub_2673811AC();
  sub_266EC637C(v5, 0x5465766C6F736572, 0xEB000000006C6F6FLL);
  v21(v47, 0);
  sub_266ECB294(0, &qword_2800F2E60, 0x277D58140);
  sub_266ECAF2C(&qword_2800F2E68, &qword_2800F2E60, 0x277D58140, &protocol conformance descriptor for IFTSchemaIFTUndoExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v22 = sub_2673811AC();
  sub_266EC637C(v5, 1868852853, 0xE400000000000000);
  v22(v47, 0);
  sub_266ECB294(0, &qword_2800F2E70, 0x277D57FA0);
  sub_266ECAF2C(&qword_2800F2E78, &qword_2800F2E70, 0x277D57FA0, &protocol conformance descriptor for IFTSchemaIFTRejectExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v23 = sub_2673811AC();
  sub_266EC637C(v5, 0x7463656A6572, 0xE600000000000000);
  v23(v47, 0);
  sub_266ECB294(0, &qword_2800F2A98, 0x277D57D60);
  sub_266ECAF2C(&qword_2800F2A90, &qword_2800F2A98, 0x277D57D60, &protocol conformance descriptor for IFTSchemaIFTCancelExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v24 = sub_2673811AC();
  sub_266EC637C(v5, 0x6C65636E6163, 0xE600000000000000);
  v24(v47, 0);
  sub_266ECB294(0, &qword_2800F2E80, 0x277D57E98);
  sub_266ECAF2C(&qword_2800F2E88, &qword_2800F2E80, 0x277D57E98, &protocol conformance descriptor for IFTSchemaIFTNoMatchingToolExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v25 = sub_2673811AC();
  sub_266EC637C(v5, 0x69686374614D6F6ELL, 0xEE006C6F6F54676ELL);
  v25(v47, 0);
  sub_266ECB294(0, &qword_2800F2D08, 0x277D57DC0);
  sub_266ECAF2C(&qword_2800F2D00, &qword_2800F2D08, 0x277D57DC0, &protocol conformance descriptor for IFTSchemaIFTContinuePlanningExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v26 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x8000000267445610);
  v26(v47, 0);
  sub_266ECB294(0, &qword_2800F2D68, 0x277D57DF0);
  sub_266ECAF2C(&qword_2800F2D60, &qword_2800F2D68, 0x277D57DF0, &protocol conformance descriptor for IFTSchemaIFTEndOfPlanExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v27 = sub_2673811AC();
  sub_266EC637C(v5, 0x616C50664F646E65, 0xE90000000000006ELL);
  v27(v47, 0);
  sub_266ECB294(0, &qword_2800F2E90, 0x277D57E60);
  sub_266ECAF2C(&qword_2800F2E98, &qword_2800F2E90, 0x277D57E60, &protocol conformance descriptor for IFTSchemaIFTGetMentionedAppsExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v28 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x80000002674461C0);
  v28(v47, 0);
  sub_266ECB294(0, &qword_2800F2EA0, 0x277D57EA0);
  sub_266ECAF2C(&qword_2800F2EA8, &qword_2800F2EA0, 0x277D57EA0, &protocol conformance descriptor for IFTSchemaIFTOpenExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v29 = sub_2673811AC();
  sub_266EC637C(v5, 1852141679, 0xE400000000000000);
  v29(v47, 0);
  sub_266ECB294(0, &qword_2800F2DB8, 0x277D57E28);
  sub_266ECAF2C(&qword_2800F2DB0, &qword_2800F2DB8, 0x277D57E28, &protocol conformance descriptor for IFTSchemaIFTExplicitResolutionRequest);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v30 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000019, 0x80000002674461E0);
  v30(v47, 0);
  sub_266ECB294(0, &qword_2800F2EB0, 0x277D57EE8);
  sub_266ECAF2C(&qword_2800F2EB8, &qword_2800F2EB0, 0x277D57EE8, &protocol conformance descriptor for IFTSchemaIFTPayloadExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v31 = sub_2673811AC();
  sub_266EC637C(v5, 0x64616F6C796170, 0xE700000000000000);
  v31(v47, 0);
  sub_266ECB294(0, &qword_2800F2EC0, 0x277D57E58);
  sub_266ECAF2C(&qword_2800F2EC8, &qword_2800F2EC0, 0x277D57E58, &protocol conformance descriptor for IFTSchemaIFTFormatExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v32 = sub_2673811AC();
  sub_266EC637C(v5, 0x74616D726F66, 0xE600000000000000);
  v32(v47, 0);
  sub_266ECB294(0, &qword_2800F2ED0, 0x277D58098);
  sub_266ECAF2C(&qword_2800F2ED8, &qword_2800F2ED0, 0x277D58098, &protocol conformance descriptor for IFTSchemaIFTStructuredSearchExpression);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v33 = v44;
  v34 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x8000000267446200);
  v34(v47, 0);
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
  (*(v45 + 32))(v38 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v41, v33, v46);
  return v35(v47, 0);
}