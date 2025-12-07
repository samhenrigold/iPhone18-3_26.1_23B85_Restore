uint64_t sub_2670FBD4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FBDB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NETSchemaNETDebugSessionConnectionNetwork.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v28 = sub_26738113C();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v26 = a2;
  sub_26738119C();
  type metadata accessor for NETSchemaNETPhyMode(0);
  sub_2670FC444(&qword_2800F4DE0, type metadata accessor for NETSchemaNETPhyMode, &protocol conformance descriptor for NETSchemaNETPhyMode);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v27 = v10 + 56;
  v11(v8, 0, 1, v9);
  v25 = v11;
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x4D79685069466977, 0xEB0000000065646FLL);
  v12(v29, 0);
  v24 = "SessionConnectionNetwork";
  v13 = *MEMORY[0x277D3E518];
  v14 = *(v3 + 104);
  v23 = v5;
  v15 = v5;
  v16 = v28;
  v14(v15, v13, v28);
  v29[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v24 | 0x8000000000000000);
  v17(v29, 0);
  v18 = v23;
  v14(v23, v13, v16);
  v29[0] = 1;
  sub_26738114C();
  v19 = v25;
  v25(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D69546E65706FLL, 0xEC000000734D6E49);
  v20(v29, 0);
  v14(v18, *MEMORY[0x277D3E538], v28);
  v29[0] = 1;
  sub_26738114C();
  v19(v8, 0, 1, v9);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x800000026745FE70);
  return v21(v29, 0);
}

uint64_t sub_2670FC338(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FC39C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670FC444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670FC48C()
{
  result = qword_2800F4DF0;
  if (!qword_2800F4DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4DF0);
  }

  return result;
}

uint64_t static NETSchemaNETDebugSessionConnectionPingInfo.makeTypeManifestAndEnsureFields(in:)()
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
  v19 = *MEMORY[0x277D3E538];
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
  sub_266EC637C(v6, 0x6E756F43676E6970, 0xE900000000000074);
  v10(v20, 0);
  v11 = v0;
  v12 = v18;
  v18(v3, *MEMORY[0x277D3E518], v11);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x676E69506E61656DLL, 0xEC000000734D6E49);
  v13(v20, 0);
  v12(v3, v19, v17);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x800000026745FED0);
  return v14(v20, 0);
}

uint64_t sub_2670FC8C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FC928(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670FC98C()
{
  result = qword_2800F4DF8;
  if (!qword_2800F4DF8)
  {
    sub_2670FC9E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4DF8);
  }

  return result;
}

unint64_t sub_2670FC9E4()
{
  result = qword_2800F4E00;
  if (!qword_2800F4E00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4E00);
  }

  return result;
}

uint64_t static NETSchemaNETDebugSessionConnectionQuality.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v12 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NETSchemaNETQuality(0);
  sub_2670FCEF0(&qword_2800F4E08, type metadata accessor for NETSchemaNETQuality, &protocol conformance descriptor for NETSchemaNETQuality);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v12[1] = v5 + 56;
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001ALL, 0x800000026745FF30);
  v7(v13, 0);
  v12[0] = "symptomsCellularHistorical";
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, v12[0] | 0x8000000000000000);
  v8(v13, 0);
  v12[0] = "symptomsCellularInstant";
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, v12[0] | 0x8000000000000000);
  v9(v13, 0);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x800000026745FF90);
  return v10(v13, 0);
}

uint64_t sub_2670FCDE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FCE48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670FCEF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670FCF38()
{
  result = qword_2800F4E18;
  if (!qword_2800F4E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4E18);
  }

  return result;
}

uint64_t static NETSchemaNETDebugSessionConnectionSnapshotCaptured.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E538], v1);
  v16[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x65636E6575716573, 0xEE007265626D754ELL);
  v10(v16, 0);
  sub_266ECB294(0, &qword_2800F4DF0, 0x277D58BA0);
  sub_266ECAF2C(&qword_2800F4DE8, &qword_2800F4DF0, 0x277D58BA0, &protocol conformance descriptor for NETSchemaNETDebugSessionConnectionNetwork);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6B726F7774656ELL, 0xE700000000000000);
  v11(v16, 0);
  sub_266ECB294(0, &qword_2800F4DD8, 0x277D58B98);
  sub_266ECAF2C(&qword_2800F4DD0, &qword_2800F4DD8, 0x277D58B98, &protocol conformance descriptor for NETSchemaNETDebugNetworkInterface);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267460000);
  v12(v16, 0);
  sub_266ECB294(0, &qword_2800F4E00, 0x277D58BA8);
  sub_266ECAF2C(&qword_2800F4DF8, &qword_2800F4E00, 0x277D58BA8, &protocol conformance descriptor for NETSchemaNETDebugSessionConnectionPingInfo);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F666E49676E6970, 0xE800000000000000);
  v13(v16, 0);
  sub_266ECB294(0, &qword_2800F4E18, 0x277D58BB0);
  sub_266ECAF2C(&qword_2800F4E10, &qword_2800F4E18, 0x277D58BB0, &protocol conformance descriptor for NETSchemaNETDebugSessionConnectionQuality);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x7974696C617571, 0xE700000000000000);
  return v14(v16, 0);
}

uint64_t sub_2670FD528(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FD58C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NETSchemaNETEndpoint.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for NETSchemaNETEndpointType(0);
  sub_2670FDA54(&qword_2800F4E20, type metadata accessor for NETSchemaNETEndpointType, &protocol conformance descriptor for NETSchemaNETEndpointType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 1701869940, 0xE400000000000000);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E538], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 1953656688, 0xE400000000000000);
  return v10(v14, 0);
}

uint64_t sub_2670FD948(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FD9AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670FDA54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670FDA9C()
{
  result = qword_2800F4D68;
  if (!qword_2800F4D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4D68);
  }

  return result;
}

uint64_t static NETSchemaNETEndpointType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267460080, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x80000002674600A0, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x80000002674600C0, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x80000002674600E0, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x8000000267460100, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000013, 0x8000000267460120, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_2670FDE54(uint64_t a1)
{
  v2 = sub_2670FDF58(&qword_2800F4E28, &protocol conformance descriptor for NETSchemaNETEndpointType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670FDEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670FDF58(&qword_2800F4E28, &protocol conformance descriptor for NETSchemaNETEndpointType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670FDF58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETEndpointType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETError.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v5, 0x6E69616D6F64, 0xE600000000000000);
  v10(v19, 0);
  v11 = v17;
  (v6)(v2, v18, v17);
  v19[0] = 1;
  sub_26738114C();
  v9(v5, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x7470697263736564, 0xEB000000006E6F69);
  v12(v19, 0);
  (v16)(v2, *MEMORY[0x277D3E510], v11);
  v19[0] = 1;
  sub_26738114C();
  v9(v5, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x646F43726F727265, 0xE900000000000065);
  return v13(v19, 0);
}

uint64_t sub_2670FE38C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FE3F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670FE454()
{
  result = qword_2800F4E30;
  if (!qword_2800F4E30)
  {
    sub_2670FE4AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4E30);
  }

  return result;
}

unint64_t sub_2670FE4AC()
{
  result = qword_2800F4E38;
  if (!qword_2800F4E38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4E38);
  }

  return result;
}

uint64_t static NETSchemaNETEstablishmentResolution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v24 = a2;
  sub_26738119C();
  v10 = *MEMORY[0x277D3E540];
  v11 = *(v4 + 104);
  v28 = v3;
  v11(v6, v10, v3);
  v29 = v11;
  v30 = v4 + 104;
  v32[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v25 = v13 + 56;
  v14(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E6F697461727564, 0xE800000000000000);
  v15(v32, 0);
  v27 = *MEMORY[0x277D3E538];
  v26 = v6;
  (v11)(v6);
  v32[0] = 1;
  sub_26738114C();
  v22 = v12;
  v14(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x80000002674601B0);
  v16(v32, 0);
  v23 = "resolutionSource";
  sub_266ECB294(0, &qword_2800F4D68, 0x277D58BC0);
  sub_266ECAF2C(&qword_2800F4D70, &qword_2800F4D68, 0x277D58BC0, &protocol conformance descriptor for NETSchemaNETEndpoint);
  sub_26738120C();
  v14(v9, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v23 | 0x8000000000000000);
  v17(v32, 0);
  sub_26738120C();
  v18 = v22;
  v14(v9, 0, 1, v22);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x80000002674601F0);
  v19(v32, 0);
  v29(v26, v27, v28);
  v32[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v18);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x746E696F70646E65, 0xED0000746E756F43);
  return v20(v32, 0);
}

uint64_t sub_2670FEA80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FEAE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NETSchemaNETHandShakeProtocol.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for NETSchemaNETProtocol(0);
  sub_2670FF090(&qword_2800F4E40, type metadata accessor for NETSchemaNETProtocol, &protocol conformance descriptor for NETSchemaNETProtocol);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6C6F636F746F7270, 0xE800000000000000);
  v9(v18, 0);
  v10 = *MEMORY[0x277D3E538];
  v11 = *(v1 + 104);
  v16 = v1 + 104;
  v12 = v17;
  v11(v3, v10, v17);
  v18[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x6B616853646E6168, 0xEC00000054545265);
  v13(v18, 0);
  v11(v3, *MEMORY[0x277D3E540], v12);
  v18[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x8000000267460240);
  return v14(v18, 0);
}

uint64_t sub_2670FEF84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FEFE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670FF090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670FF0D8()
{
  result = qword_2800F4DB0;
  if (!qword_2800F4DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4DB0);
  }

  return result;
}

uint64_t static NETSchemaNETNetworkConnectionStatePreparationSnapshotCaptured.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x534E44736168, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_2670FF36C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FF3D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670FF434()
{
  result = qword_2800F4CD0;
  if (!qword_2800F4CD0)
  {
    sub_2670FF48C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4CD0);
  }

  return result;
}

unint64_t sub_2670FF48C()
{
  result = qword_2800F4CC8;
  if (!qword_2800F4CC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4CC8);
  }

  return result;
}

uint64_t static NETSchemaNETNetworkConnectionStateReadySnapshotCaptured.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v24 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v23 = a1;
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E530], v2);
  v21 = v9;
  v22 = v3 + 104;
  v25[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = v11;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x697463656E6E6F63, 0xEE006F666E496E6FLL);
  v13(v25, 0);
  v20 = "eReadySnapshotCaptured";
  v14 = *MEMORY[0x277D3E538];
  v15 = v24;
  v9(v5, v14, v24);
  v25[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002BLL, v20 | 0x8000000000000000);
  v16(v25, 0);
  v21(v5, v14, v15);
  v25[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, 0x8000000267460330);
  return v17(v25, 0);
}

uint64_t sub_2670FF8E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FF948(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670FF9AC()
{
  result = qword_2800F4CF0;
  if (!qword_2800F4CF0)
  {
    sub_2670FFA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4CF0);
  }

  return result;
}

unint64_t sub_2670FFA04()
{
  result = qword_2800F4CE8;
  if (!qword_2800F4CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4CE8);
  }

  return result;
}

uint64_t static NETSchemaNETNetworkInterface.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 1701667182, 0xE400000000000000);
  v10(v13, 0);
  type metadata accessor for NETSchemaNETConnectionType(0);
  sub_2670FFE80(&qword_2800F4D58, type metadata accessor for NETSchemaNETConnectionType, &protocol conformance descriptor for NETSchemaNETConnectionType);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x697463656E6E6F63, 0xEE00657079546E6FLL);
  return v11(v13, 0);
}

uint64_t sub_2670FFD74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670FFDD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2670FFE80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670FFEC8()
{
  result = qword_2800F4DC0;
  if (!qword_2800F4DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4DC0);
  }

  return result;
}

uint64_t static NETSchemaNETPathInterface.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for NETSchemaNETPathType(0);
  sub_2671003F4(&qword_2800F4E48, type metadata accessor for NETSchemaNETPathType, &protocol conformance descriptor for NETSchemaNETPathType);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 1701869940, 0xE400000000000000);
  v10(v19, 0);
  v11 = *MEMORY[0x277D3E530];
  v12 = v17;
  v13 = *(v18 + 104);
  v18 += 104;
  v13(v4, v11, v17);
  v19[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 1701667182, 0xE400000000000000);
  v14(v19, 0);
  v13(v4, *MEMORY[0x277D3E538], v12);
  v19[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x7865646E69, 0xE500000000000000);
  return v15(v19, 0);
}

uint64_t sub_2671002E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710034C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671003F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26710043C()
{
  result = qword_2800F4D78;
  if (!qword_2800F4D78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4D78);
  }

  return result;
}

uint64_t static NETSchemaNETPathStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x80000002674603F0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267460410, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267460430, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x8000000267460450, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000019, 0x8000000267460470, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267100780(uint64_t a1)
{
  v2 = sub_267100884(&qword_2800F4E50, &protocol conformance descriptor for NETSchemaNETPathStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671007E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267100884(&qword_2800F4E50, &protocol conformance descriptor for NETSchemaNETPathStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267100884(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETPathStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETPathType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x80000002674604C0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000010, 0x80000002674604E0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x8000000267460500, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000011, 0x8000000267460520, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000014, 0x8000000267460540, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267100BC0(uint64_t a1)
{
  v2 = sub_267100CC4(&qword_2800F4E58, &protocol conformance descriptor for NETSchemaNETPathType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267100C28(uint64_t a1, uint64_t a2)
{
  v4 = sub_267100CC4(&qword_2800F4E58, &protocol conformance descriptor for NETSchemaNETPathType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267100CC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETPathType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETPeerConnectionFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v35 = sub_26738113C();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4C60, 0x277D58B70);
  sub_266ECAF2C(&qword_2800F4C58, &qword_2800F4C60, 0x277D58B70, &protocol conformance descriptor for NETSchemaNETBluetoothDevice);
  sub_26738122C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v30 = *(v9 + 56);
  v31 = v9 + 56;
  v32 = v8;
  v30(v7, 0, 1, v8);
  v28 = a2;
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267460590);
  v10(v36, 0);
  v11 = *MEMORY[0x277D3E4E8];
  v12 = v33 + 104;
  v34 = *(v33 + 104);
  v34(v4, v11, v35);
  v36[0] = 1;
  sub_26738114C();
  v13 = v8;
  v14 = v30;
  v30(v7, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x80000002674605B0);
  v15(v36, 0);
  v29 = v11;
  v16 = v34;
  v17 = v35;
  v34(v4, v11, v35);
  v36[0] = 1;
  sub_26738114C();
  v14(v7, 0, 1, v32);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x63656E6E6F437369, 0xEB00000000646574);
  v18(v36, 0);
  v16(v4, v11, v17);
  v33 = v12;
  v36[0] = 1;
  sub_26738114C();
  v19 = v30;
  v30(v7, 0, 1, v32);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x6369766544736168, 0xE900000000000065);
  v20(v36, 0);
  v21 = v35;
  v34(v4, *MEMORY[0x277D3E518], v35);
  v36[0] = 1;
  sub_26738114C();
  v22 = v32;
  v19(v7, 0, 1, v32);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000022, 0x80000002674605D0);
  v23(v36, 0);
  v24 = v29;
  v34(v4, v29, v21);
  v36[0] = 1;
  sub_26738114C();
  v19(v7, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0x79627261654E7369, 0xE800000000000000);
  v25(v36, 0);
  v34(v4, v24, v35);
  v36[0] = 1;
  sub_26738114C();
  v19(v7, 0, 1, v22);
  v26 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x8000000267460600);
  return v26(v36, 0);
}

uint64_t sub_26710142C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267101490(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NETSchemaNETPhyMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000012, 0x8000000267460650, isUniquelyReferenced_nonNull_native);
  *v3 = v42;

  v1(v52, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x8000000267460670, v8);
  *v7 = v43;

  v5(v52, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x8000000267460690, v12);
  *v11 = v44;

  v9(v52, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000013, 0x80000002674606B0, v16);
  *v15 = v45;

  v13(v52, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000013, 0x80000002674606D0, v20);
  *v19 = v46;

  v17(v52, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000014, 0x80000002674606F0, v24);
  *v23 = v47;

  v21(v52, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000014, 0x8000000267460710, v28);
  *v27 = v48;

  v25(v52, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000014, 0x8000000267460730, v32);
  *v31 = v49;

  v29(v52, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000014, 0x8000000267460750, v36);
  *v35 = v50;

  v33(v52, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000014, 0x8000000267460770, v40);
  *v39 = v51;

  return v37(v52, 0);
}

uint64_t sub_267101A74(uint64_t a1)
{
  v2 = sub_267101B78(&qword_2800F4E60, &protocol conformance descriptor for NETSchemaNETPhyMode);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267101ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267101B78(&qword_2800F4E60, &protocol conformance descriptor for NETSchemaNETPhyMode);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267101B78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETPhyMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETProtocol.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x80000002674607C0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0x4F544F525054454ELL, 0xEF5043545F4C4F43, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0x4F544F525054454ELL, 0xEF534C545F4C4F43, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000010, 0x80000002674607E0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267101E50(uint64_t a1)
{
  v2 = sub_267101F54(&qword_2800F4E68, &protocol conformance descriptor for NETSchemaNETProtocol);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267101EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267101F54(&qword_2800F4E68, &protocol conformance descriptor for NETSchemaNETProtocol);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267101F54(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETProtocol(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETProvider.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x8000000267460830, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000010, 0x8000000267460850, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267460870, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267460890, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x80000002674608B0, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x80000002674608E0, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_267102304(uint64_t a1)
{
  v2 = sub_267102408(&qword_2800F4E70, &protocol conformance descriptor for NETSchemaNETProvider);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26710236C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267102408(&qword_2800F4E70, &protocol conformance descriptor for NETSchemaNETProvider);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267102408(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETProxyConfiguration.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "iri.net.NETProxyConfiguration";
  v9 = *MEMORY[0x277D3E4E8];
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
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267460950);
  return v14(v19, 0);
}

uint64_t sub_267102780(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671027E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267102848()
{
  result = qword_2800F4DA8;
  if (!qword_2800F4DA8)
  {
    sub_2671028A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4DA8);
  }

  return result;
}

unint64_t sub_2671028A0()
{
  result = qword_2800F4DA0;
  if (!qword_2800F4DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4DA0);
  }

  return result;
}

uint64_t static NETSchemaNETQuality.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000012, 0x80000002674609A0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x80000002674609C0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0x494C41555154454ELL, 0xEF444F4F475F5954, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0x494C41555154454ELL, 0xEE004441425F5954, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267102B84(uint64_t a1)
{
  v2 = sub_267102C88(&qword_2800F4E78, &protocol conformance descriptor for NETSchemaNETQuality);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267102BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267102C88(&qword_2800F4E78, &protocol conformance descriptor for NETSchemaNETQuality);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267102C88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETQuality(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETSessionConnectionFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  MEMORY[0x28223BE20](v4);
  v36 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v33 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NETSchemaNETConnectionType(0);
  sub_2671036F4(&qword_2800F4D58, type metadata accessor for NETSchemaNETConnectionType, &protocol conformance descriptor for NETSchemaNETConnectionType);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v14 = v10;
  v12(v9, 0, 1);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x697463656E6E6F63, 0xEE00657079546E6FLL);
  v15(v40, 0);
  type metadata accessor for NETSchemaNETConnectionMode(0);
  sub_2671036F4(&qword_2800F4D38, type metadata accessor for NETSchemaNETConnectionMode, &protocol conformance descriptor for NETSchemaNETConnectionMode);
  sub_26738120C();
  (v12)(v9, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x697463656E6E6F63, 0xEE0065646F4D6E6FLL);
  v16(v40, 0);
  type metadata accessor for NETSchemaNETSessionType(0);
  sub_2671036F4(&qword_2800F4E80, type metadata accessor for NETSchemaNETSessionType, &protocol conformance descriptor for NETSchemaNETSessionType);
  v37 = a1;
  sub_26738120C();
  (v12)(v9, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x546E6F6973736573, 0xEB00000000657079);
  v17(v40, 0);
  type metadata accessor for NETSchemaNETSessionState(0);
  sub_2671036F4(&qword_2800F4E88, type metadata accessor for NETSchemaNETSessionState, &protocol conformance descriptor for NETSchemaNETSessionState);
  sub_26738120C();
  v18 = v14;
  v33[1] = v13;
  (v12)(v9, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x8000000267460A20);
  v19(v40, 0);
  v34 = *MEMORY[0x277D3E4E8];
  v20 = v38;
  v21 = *(v39 + 104);
  v39 += 104;
  v33[0] = v21;
  v22 = v36;
  v21(v36);
  v40[0] = 1;
  sub_26738114C();
  (v12)(v9, 0, 1, v18);
  v35 = a2;
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x72506E6177577369, 0xEF64657272656665);
  v23(v40, 0);
  v24 = v33[0];
  (v33[0])(v22, v34, v20);
  v40[0] = 1;
  sub_26738114C();
  (v12)(v9, 0, 1, v18);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E616D726F447369, 0xE900000000000074);
  v25(v40, 0);
  v24(v22, *MEMORY[0x277D3E540], v20);
  v26 = v24;
  v40[0] = 1;
  sub_26738114C();
  v27 = v18;
  (v12)(v9, 0, 1, v18);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0x66667542646E6573, 0xEE00657A69537265);
  v28(v40, 0);
  v26(v22, *MEMORY[0x277D3E530], v20);
  v40[0] = 1;
  sub_26738114C();
  (v12)(v9, 0, 1, v18);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0x64497963696C6F70, 0xE800000000000000);
  v29(v40, 0);
  sub_266ECB294(0, &qword_2800F4E38, 0x277D58BC8);
  sub_266ECAF2C(&qword_2800F4E30, &qword_2800F4E38, 0x277D58BC8, &protocol conformance descriptor for NETSchemaNETError);
  sub_26738120C();
  (v12)(v9, 0, 1, v27);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0x726F727265, 0xE500000000000000);
  v30(v40, 0);
  sub_26738120C();
  (v12)(v9, 0, 1, v27);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0x69796C7265646E75, 0xEF726F727245676ELL);
  return v31(v40, 0);
}

uint64_t sub_267103630(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267103694(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671036F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static NETSchemaNETSessionConnectionHttpHeaderCreated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v18[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65674172657375, 0xE900000000000074);
  v13(v18, 0);
  v10(v5, v9, v17);
  v18[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x74736F48656361, 0xE700000000000000);
  return v14(v18, 0);
}

uint64_t sub_267103AA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267103B08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267103B6C()
{
  result = qword_2800F4C80;
  if (!qword_2800F4C80)
  {
    sub_267103BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4C80);
  }

  return result;
}

unint64_t sub_267103BC4()
{
  result = qword_2800F4C78;
  if (!qword_2800F4C78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4C78);
  }

  return result;
}

uint64_t static NETSchemaNETSessionConnectionNetwork.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v68 = sub_26738113C();
  v3 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v55 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v62 = *MEMORY[0x277D3E530];
  v9 = *(v3 + 104);
  v66 = v3 + 104;
  v67 = v9;
  v9(v5);
  v69[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v8, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x4E72656972726163, 0xEB00000000656D61);
  v14(v69, 0);
  type metadata accessor for NETSchemaNETConnectionMethod(0);
  sub_267104B70(&qword_2800F4D28, type metadata accessor for NETSchemaNETConnectionMethod, &protocol conformance descriptor for NETSchemaNETConnectionMethod);
  sub_26738120C();
  v65 = v10;
  v12(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  v58 = 0xD000000000000010;
  sub_266EC637C(v8, 0xD000000000000010, 0x8000000267460AC0);
  v15(v69, 0);
  v59 = "connectionMethod";
  v16 = v67;
  v67(v5, v62, v68);
  v69[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v61 = v13;
  v64 = a2;
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v59 | 0x8000000000000000);
  v17(v69, 0);
  v18 = v68;
  v16(v5, *MEMORY[0x277D3E4E8], v68);
  v69[0] = 1;
  sub_26738114C();
  v19 = v65;
  v63 = v12;
  v12(v8, 0, 1, v65);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x7669747061437369, 0xE900000000000065);
  v20(v69, 0);
  LODWORD(v59) = *MEMORY[0x277D3E518];
  v21 = v59;
  v16(v5, v59, v18);
  v69[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v19);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 1769173874, 0xE400000000000000);
  v22(v69, 0);
  v60 = v5;
  v16(v5, v21, v18);
  v23 = v16;
  v69[0] = 1;
  sub_26738114C();
  v24 = v65;
  v25 = v63;
  v63(v8, 0, 1, v65);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 7499379, 0xE300000000000000);
  v26(v69, 0);
  v27 = v60;
  v23(v60, *MEMORY[0x277D3E538], v68);
  v69[0] = 1;
  sub_26738114C();
  v25(v8, 0, 1, v24);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F43706D65747461, 0xEB00000000746E75);
  v28(v69, 0);
  v62 = *MEMORY[0x277D3E540];
  v29 = v67;
  (v67)(v27);
  v69[0] = 1;
  sub_26738114C();
  v30 = v24;
  v31 = v63;
  v63(v8, 0, 1, v24);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0x7479427473726966, 0xED0000656D695465);
  v32(v69, 0);
  v56 = "primarySubflowInterfaceName";
  v33 = v62;
  v34 = v68;
  v29(v27, v62, v68);
  v69[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v30);
  v35 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, v56 | 0x8000000000000000);
  v35(v69, 0);
  v36 = v60;
  v67(v60, v33, v34);
  v69[0] = 1;
  sub_26738114C();
  v37 = v63;
  v63(v8, 0, 1, v30);
  v38 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267460B20);
  v38(v69, 0);
  type metadata accessor for NETSchemaNETTLSVersion(0);
  sub_267104B70(&qword_2800F4E90, type metadata accessor for NETSchemaNETTLSVersion, &protocol conformance descriptor for NETSchemaNETTLSVersion);
  sub_26738120C();
  v37(v8, 0, 1, v30);
  v39 = v37;
  v40 = sub_2673811AC();
  sub_266EC637C(v8, 0x6973726556736C74, 0xEA00000000006E6FLL);
  v40(v69, 0);
  v57 = "dnsResolutionTime";
  v41 = v62;
  v43 = v67;
  v42 = v68;
  v67(v36, v62, v68);
  v69[0] = 1;
  sub_26738114C();
  v39(v8, 0, 1, v65);
  v44 = sub_2673811AC();
  sub_266EC637C(v8, v58, v57 | 0x8000000000000000);
  v44(v69, 0);
  v58 = "tlsHandshakeTime";
  v43(v36, v41, v42);
  v69[0] = 1;
  sub_26738114C();
  v45 = v65;
  v46 = v63;
  v63(v8, 0, 1, v65);
  v47 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v58 | 0x8000000000000000);
  v47(v69, 0);
  v58 = "connectionEstablishmentTime";
  v48 = v68;
  v67(v36, v41, v68);
  v69[0] = 1;
  sub_26738114C();
  v46(v8, 0, 1, v45);
  v49 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, v58 | 0x8000000000000000);
  v49(v69, 0);
  v58 = "oEstablishmentTime";
  v50 = v67;
  v67(v36, v62, v48);
  v69[0] = 1;
  sub_26738114C();
  v51 = v65;
  v46(v8, 0, 1, v65);
  v52 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v58 | 0x8000000000000000);
  v52(v69, 0);
  v50(v36, v59, v68);
  v69[0] = 1;
  sub_26738114C();
  v46(v8, 0, 1, v51);
  v53 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267460BD0);
  return v53(v69, 0);
}

uint64_t sub_267104A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267104AC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267104B70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267104BB8()
{
  result = qword_2800F4EA0;
  if (!qword_2800F4EA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4EA0);
  }

  return result;
}

uint64_t static NETSchemaNETSessionConnectionSnapshotCaptured.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E538], v1);
  v16[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x65636E6575716573, 0xEE007265626D754ELL);
  v10(v16, 0);
  type metadata accessor for NETSchemaNETSnapshotState(0);
  sub_267105250(&qword_2800F4EA8, type metadata accessor for NETSchemaNETSnapshotState, &protocol conformance descriptor for NETSchemaNETSnapshotState);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x8000000267460C30);
  v11(v16, 0);
  sub_266ECB294(0, &qword_2800F4EA0, 0x277D58C20);
  sub_266ECAF2C(&qword_2800F4E98, &qword_2800F4EA0, 0x277D58C20, &protocol conformance descriptor for NETSchemaNETSessionConnectionNetwork);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6B726F7774656ELL, 0xE700000000000000);
  v12(v16, 0);
  sub_266ECB294(0, &qword_2800F4DC0, 0x277D58BF0);
  sub_266ECAF2C(&qword_2800F4DC8, &qword_2800F4DC0, 0x277D58BF0, &protocol conformance descriptor for NETSchemaNETNetworkInterface);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267460000);
  v13(v16, 0);
  type metadata accessor for NETSchemaNETProvider(0);
  sub_267105250(&qword_2800F4D20, type metadata accessor for NETSchemaNETProvider, &protocol conformance descriptor for NETSchemaNETProvider);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x72656469766F7270, 0xE800000000000000);
  return v14(v16, 0);
}

uint64_t sub_26710518C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671051F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267105250(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static NETSchemaNETSessionState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267460C80, isUniquelyReferenced_nonNull_native);
  *v3 = v54;

  v1(v67, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x8000000267460CA0, v8);
  *v7 = v55;

  v5(v67, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267460CC0, v12);
  *v11 = v56;

  v9(v67, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x8000000267460CE0, v16);
  *v15 = v57;

  v13(v67, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267460D00, v20);
  *v19 = v58;

  v17(v67, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x8000000267460D30, v24);
  *v23 = v59;

  v21(v67, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ELL, 0x8000000267460D60, v28);
  *v27 = v60;

  v25(v67, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ELL, 0x8000000267460D80, v32);
  *v31 = v61;

  v29(v67, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000017, 0x8000000267460DA0, v36);
  *v35 = v62;

  v33(v67, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000020, 0x8000000267460DC0, v40);
  *v39 = v63;

  v37(v67, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ELL, 0x8000000267460DF0, v44);
  *v43 = v64;

  v41(v67, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000021, 0x8000000267460E10, v48);
  *v47 = v65;

  v45(v67, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000016, 0x8000000267460E40, v52);
  *v51 = v66;

  return v49(v67, 0);
}

uint64_t sub_26710595C(uint64_t a1)
{
  v2 = sub_267105A60(&qword_2800F4EB0, &protocol conformance descriptor for NETSchemaNETSessionState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671059C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267105A60(&qword_2800F4EB0, &protocol conformance descriptor for NETSchemaNETSessionState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267105A60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETSessionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETSessionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267460E90, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267460EB0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267460ED0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x8000000267460EF0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x8000000267460F10, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267105D9C(uint64_t a1)
{
  v2 = sub_267105EA0(&qword_2800F4EB8, &protocol conformance descriptor for NETSchemaNETSessionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267105E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_267105EA0(&qword_2800F4EB8, &protocol conformance descriptor for NETSchemaNETSessionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267105EA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETSessionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETSnapshotState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267460F60, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267460F80, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x8000000267460FB0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2671060F8(uint64_t a1)
{
  v2 = sub_2671061FC(&qword_2800F4EC0, &protocol conformance descriptor for NETSchemaNETSnapshotState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267106160(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671061FC(&qword_2800F4EC0, &protocol conformance descriptor for NETSchemaNETSnapshotState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671061FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETSnapshotState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETTLSVersion.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267461000, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x8000000267461020, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x8000000267461040, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000013, 0x8000000267461060, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000013, 0x8000000267461080, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000013, 0x80000002674610A0, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000013, 0x80000002674610C0, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267106628(uint64_t a1)
{
  v2 = sub_26710672C(&qword_2800F4EC8, &protocol conformance descriptor for NETSchemaNETTLSVersion);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267106690(uint64_t a1, uint64_t a2)
{
  v4 = sub_26710672C(&qword_2800F4EC8, &protocol conformance descriptor for NETSchemaNETTLSVersion);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26710672C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETTLSVersion(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NETSchemaNETWiFiFrequency.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267461110, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x8000000267461130, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x8000000267461150, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x8000000267461170, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2671069F8(uint64_t a1)
{
  v2 = sub_267106AFC(&qword_2800F4ED8, &protocol conformance descriptor for NETSchemaNETWiFiFrequency);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267106A60(uint64_t a1, uint64_t a2)
{
  v4 = sub_267106AFC(&qword_2800F4ED8, &protocol conformance descriptor for NETSchemaNETWiFiFrequency);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267106AFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NETSchemaNETWiFiFrequency(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLGSchemaNLGClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F4EE0, 0x277D58C38);
  sub_266ECAF2C(&qword_2800F4EE8, &qword_2800F4EE0, 0x277D58C38, &protocol conformance descriptor for NLGSchemaNLGClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F4EF0, 0x277D58C58);
  sub_266ECAF2C(&qword_2800F4EF8, &qword_2800F4EF0, 0x277D58C58, &protocol conformance descriptor for NLGSchemaNLGScoredDialogSelected);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  v10 = v20;
  sub_266EC637C(v5, 0xD000000000000014, 0x80000002674611C0);
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
  sub_266ECB128(&unk_287888E98);
  return sub_2673811CC();
}

uint64_t sub_267106F70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267107008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2671070D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267107138(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267107198(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F4F00, &qword_2800F4F08, 0x277D58C30, &protocol conformance descriptor for NLGSchemaNLGClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F4F10, &qword_2800F4F08, 0x277D58C30, &protocol conformance descriptor for NLGSchemaNLGClientEvent);
  result = sub_266ECAF2C(&qword_2800F4F18, &qword_2800F4F08, 0x277D58C30, &protocol conformance descriptor for NLGSchemaNLGClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static NLGSchemaNLGClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6449676C6ELL, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449676C6ELL, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287888ED0);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_267107530(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267107594(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLGSchemaNLGDialogCandidateStatistics.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x746E756F63, 0xE500000000000000);
  return v8(v10, 0);
}

uint64_t sub_267107880(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671078E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267107948()
{
  result = qword_2800F4F28;
  if (!qword_2800F4F28)
  {
    sub_2671079A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4F28);
  }

  return result;
}

unint64_t sub_2671079A0()
{
  result = qword_2800F4F30;
  if (!qword_2800F4F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4F30);
  }

  return result;
}

uint64_t static NLGSchemaNLGDialogScorer.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLGSchemaNLGDialogScorerType(0);
  sub_267107CDC(&qword_2800F4F38, type metadata accessor for NLGSchemaNLGDialogScorerType, &protocol conformance descriptor for NLGSchemaNLGDialogScorerType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267461280);
  return v5(v7, 0);
}

uint64_t sub_267107BD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267107C34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267107CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267107D24()
{
  result = qword_2800F4F48;
  if (!qword_2800F4F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4F48);
  }

  return result;
}

uint64_t static NLGSchemaNLGDialogScorerType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x80000002674612D0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674612F0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267461310, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267107F84(uint64_t a1)
{
  v2 = sub_267108088(&qword_2800F4F50, &protocol conformance descriptor for NLGSchemaNLGDialogScorerType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267107FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267108088(&qword_2800F4F50, &protocol conformance descriptor for NLGSchemaNLGDialogScorerType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267108088(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLGSchemaNLGDialogScorerType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLGSchemaNLGScoredDialog.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v23 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *MEMORY[0x277D3E530];
  v21 = *(v1 + 104);
  v20 = v7;
  v21(v3, v7, v0);
  v19[1] = v1 + 104;
  v24[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v22 = v9 + 56;
  v10(v6, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6C696D6146746163, 0xE900000000000079);
  v11(v24, 0);
  v12 = v7;
  v13 = v23;
  v14 = v21;
  v21(v3, v12, v23);
  v24[0] = 1;
  sub_26738114C();
  v10(v6, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x746E656449746163, 0xED00007265696669);
  v15(v24, 0);
  v14(v3, v20, v13);
  v24[0] = 1;
  sub_26738114C();
  v10(v6, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x8000000267461360);
  v16(v24, 0);
  v14(v3, *MEMORY[0x277D3E500], v23);
  v24[0] = 1;
  sub_26738114C();
  v10(v6, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x65726F6373, 0xE500000000000000);
  return v17(v24, 0);
}

uint64_t sub_267108580(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671085E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267108648()
{
  result = qword_2800F4F58;
  if (!qword_2800F4F58)
  {
    sub_2671086A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4F58);
  }

  return result;
}

unint64_t sub_2671086A0()
{
  result = qword_2800F4F60;
  if (!qword_2800F4F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4F60);
  }

  return result;
}

uint64_t static NLGSchemaNLGScoredDialogSelected.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4F48, 0x277D58C48);
  sub_266ECAF2C(&qword_2800F4F40, &qword_2800F4F48, 0x277D58C48, &protocol conformance descriptor for NLGSchemaNLGDialogScorer);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6353676F6C616964, 0xEC0000007265726FLL);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F4F30, 0x277D58C40);
  sub_266ECAF2C(&qword_2800F4F28, &qword_2800F4F30, 0x277D58C40, &protocol conformance descriptor for NLGSchemaNLGDialogCandidateStatistics);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000019, 0x80000002674613B0);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F4F60, 0x277D58C50);
  sub_266ECAF2C(&qword_2800F4F58, &qword_2800F4F60, 0x277D58C50, &protocol conformance descriptor for NLGSchemaNLGScoredDialog);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x80000002674613D0);
  return v8(v10, 0);
}

uint64_t sub_267108A98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267108AFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaHeuristicsHandleEndedData.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267108D70(uint64_t a1)
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
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267108F08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267108F6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterBridgeErrorDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267461470, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x80000002674614A0, v8);
  *v7 = v11;

  v5(v12, 0);
  sub_266ECB128(&unk_287888F00);
  return sub_26738112C();
}

uint64_t sub_2671091C8(uint64_t a1)
{
  v2 = sub_2671092CC(&qword_2800F4F80, &protocol conformance descriptor for NLRouterSchemaNLRouterBridgeErrorDomain);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267109230(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671092CC(&qword_2800F4F80, &protocol conformance descriptor for NLRouterSchemaNLRouterBridgeErrorDomain);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671092CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRouterSchemaNLRouterBridgeErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterBridgeHandleContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F4F88, 0x277D58C80);
  sub_266ECAF2C(&qword_2800F4F90, &qword_2800F4F88, 0x277D58C80, &protocol conformance descriptor for NLRouterSchemaNLRouterBridgeHandleStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F4F98, 0x277D58C70);
  sub_266ECAF2C(&qword_2800F4FA0, &qword_2800F4F98, 0x277D58C70, &protocol conformance descriptor for NLRouterSchemaNLRouterBridgeHandleEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F4FA8, 0x277D58C78);
  sub_266ECAF2C(&qword_2800F4FB0, &qword_2800F4FA8, 0x277D58C78, &protocol conformance descriptor for NLRouterSchemaNLRouterBridgeHandleFailed);
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
  sub_266ECB128(&unk_287888F28);
  return sub_2673811CC();
}

uint64_t sub_26710983C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671098A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterBridgeHandleEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4FC8, 0x277D58C88);
  sub_266ECAF2C(&qword_2800F4FD0, &qword_2800F4FC8, 0x277D58C88, &protocol conformance descriptor for NLRouterSchemaNLRouterBridgeRoutingDecision);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x44676E6974756F72, 0xEF6E6F6973696365);
  v5(v7, 0);
  sub_266ECB128(&unk_287888F50);
  return sub_2673811CC();
}

uint64_t sub_267109B50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267109BB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterBridgeHandleFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for NLRouterSchemaNLRouterBridgeErrorDomain(0);
  sub_26710A108();
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D6F44726F727265, 0xEB000000006E6961);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E508], v13[0]);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  v10(v14, 0);
  sub_266ECB294(0, &qword_2800F4FC8, 0x277D58C88);
  sub_266ECAF2C(&qword_2800F4FD0, &qword_2800F4FC8, 0x277D58C88, &protocol conformance descriptor for NLRouterSchemaNLRouterBridgeRoutingDecision);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x44676E6974756F72, 0xEF6E6F6973696365);
  v11(v14, 0);
  sub_266ECB128(&unk_287888F78);
  return sub_2673811CC();
}

uint64_t sub_26710A044(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710A0A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26710A108()
{
  result = qword_2800F4F78;
  if (!qword_2800F4F78)
  {
    type metadata accessor for NLRouterSchemaNLRouterBridgeErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4F78);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterBridgeHandleStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECB128(&unk_287888FA0);
  return sub_2673811CC();
}

uint64_t sub_26710A404(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710A468(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26710A4CC()
{
  result = qword_2800F4F90;
  if (!qword_2800F4F90)
  {
    sub_26710A524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F4F90);
  }

  return result;
}

unint64_t sub_26710A524()
{
  result = qword_2800F4F88;
  if (!qword_2800F4F88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4F88);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterBridgeRoutingDecision.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLRouterSchemaNLRouterBridgeRoutingDecisionSource(0);
  sub_26710A944(&qword_2800F4FD8, type metadata accessor for NLRouterSchemaNLRouterBridgeRoutingDecisionSource, &protocol conformance descriptor for NLRouterSchemaNLRouterBridgeRoutingDecisionSource);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267461610);
  v6(v9, 0);
  type metadata accessor for NLRouterSchemaNLRouterDecisionType(0);
  sub_26710A944(&qword_2800F4FE0, type metadata accessor for NLRouterSchemaNLRouterDecisionType, &protocol conformance descriptor for NLRouterSchemaNLRouterDecisionType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267461630);
  v7(v9, 0);
  sub_266ECB128(&unk_287888FC8);
  return sub_2673811CC();
}

uint64_t sub_26710A838(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710A89C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26710A944(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26710A98C()
{
  result = qword_2800F4FC8;
  if (!qword_2800F4FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F4FC8);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterBridgeRoutingDecisionSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x80000002674616A0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000034, 0x80000002674616D0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000036, 0x8000000267461710, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000033, 0x8000000267461750, v16);
  *v15 = v21;

  v13(v22, 0);
  sub_266ECB128(&unk_287888FF0);
  return sub_26738112C();
}

uint64_t sub_26710AC70(uint64_t a1)
{
  v2 = sub_26710AD74(&qword_2800F4FE8, &protocol conformance descriptor for NLRouterSchemaNLRouterBridgeRoutingDecisionSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26710ACD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26710AD74(&qword_2800F4FE8, &protocol conformance descriptor for NLRouterSchemaNLRouterBridgeRoutingDecisionSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26710AD74(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRouterSchemaNLRouterBridgeRoutingDecisionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v40 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4FF0, 0x277D58C98);
  sub_266ECAF2C(&qword_2800F4FF8, &qword_2800F4FF0, 0x277D58C98, &protocol conformance descriptor for NLRouterSchemaNLRouterClientEventMetadata);
  v9 = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v8, 0, 1, v10);
  v47 = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v13(v49, 0);
  v46 = "outerClientEvent";
  sub_266ECB294(0, &qword_2800F5000, 0x277D58CA8);
  sub_266ECAF2C(&qword_2800F5008, &qword_2800F5000, 0x277D58CA8, &protocol conformance descriptor for NLRouterSchemaNLRouterHandleContext);
  sub_26738121C();
  v12(v8, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v46 | 0x8000000000000000);
  v14(v49, 0);
  sub_266ECB294(0, &qword_2800F4FC0, 0x277D58C68);
  sub_266ECAF2C(&qword_2800F4FB8, &qword_2800F4FC0, 0x277D58C68, &protocol conformance descriptor for NLRouterSchemaNLRouterBridgeHandleContext);
  v45 = v9;
  sub_26738121C();
  v44 = v12;
  v40[1] = v11 + 56;
  v12(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x80000002674617F0);
  v15(v49, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v48, 0xD00000000000001BLL, 0x80000002674617F0);
  v18 = *(v11 + 48);
  v46 = v10;
  v40[2] = v11 + 48;
  v40[0] = v18;
  if (!v18(v19, 1, v10))
  {
    sub_266ECB128(&unk_287889018);
    sub_26738115C();
  }

  (v17)(v48, 0);
  v16(v49, 0);
  sub_266ECB294(0, &qword_2800F5010, 0x277D58CE8);
  sub_266ECAF2C(&qword_2800F5018, &qword_2800F5010, 0x277D58CE8, &protocol conformance descriptor for NLRouterSchemaNLRouterSubComponentHandleContext);
  sub_26738121C();
  v20 = v46;
  v21 = v44;
  v44(v8, 0, 1, v46);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x8000000267461810);
  v22(v49, 0);
  sub_266ECB294(0, &qword_2800F5020, 0x277D58D10);
  sub_266ECAF2C(&qword_2800F5028, &qword_2800F5020, 0x277D58D10, &protocol conformance descriptor for NLRouterSchemaNLRouterSubComponentSetupContext);
  sub_26738121C();
  v21(v8, 0, 1, v20);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x8000000267461840);
  v23(v49, 0);
  sub_266ECB294(0, &qword_2800F5030, 0x277D58D30);
  sub_266ECAF2C(&qword_2800F5038, &qword_2800F5030, 0x277D58D30, &protocol conformance descriptor for NLRouterSchemaNLRouterSubComponentTriggeredHeuristicRuleTier1);
  sub_26738121C();
  v21(v8, 0, 1, v20);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002FLL, 0x8000000267461870);
  v24(v49, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v48, 0xD00000000000002FLL, 0x8000000267461870);
  if (!(v40[0])(v27, 1, v20))
  {
    sub_266ECB128(&unk_287889040);
    sub_26738115C();
  }

  (v26)(v48, 0);
  v25(v49, 0);
  sub_266ECB294(0, &qword_2800F5040, 0x277D58CE0);
  sub_266ECAF2C(&qword_2800F5048, &qword_2800F5040, 0x277D58CE0, &protocol conformance descriptor for NLRouterSchemaNLRouterPromptGenerationSignalsCaptured);
  sub_26738121C();
  v28 = v44;
  v44(v8, 0, 1, v46);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000027, 0x80000002674618A0);
  v29(v49, 0);
  sub_266ECB294(0, &qword_2800F5050, 0x277D58CD8);
  sub_266ECAF2C(&qword_2800F5058, &qword_2800F5050, 0x277D58CD8, &protocol conformance descriptor for NLRouterSchemaNLRouterPromptGenerated);
  sub_26738121C();
  v28(v8, 0, 1, v46);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x80000002674618D0);
  v30(v49, 0);
  v31 = v41;
  sub_26738117C();
  v32 = sub_2673811BC();
  v34 = v33;
  v35 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v34 = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_266ECAD54(0, v35[2] + 1, 1, v35);
    *v34 = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_266ECAD54((v37 > 1), v38 + 1, 1, v35);
    *v34 = v35;
  }

  v35[2] = v38 + 1;
  (*(v42 + 32))(v35 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v38, v31, v43);
  v32(v49, 0);
  sub_266ECB128(&unk_287889068);
  return sub_2673811CC();
}

uint64_t sub_26710B87C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26710B914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26710B9E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710BA44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26710BAA4(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F5060, &qword_2800F5068, 0x277D58C90, &protocol conformance descriptor for NLRouterSchemaNLRouterClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F5070, &qword_2800F5068, 0x277D58C90, &protocol conformance descriptor for NLRouterSchemaNLRouterClientEvent);
  result = sub_266ECAF2C(&qword_2800F5078, &qword_2800F5068, 0x277D58C90, &protocol conformance descriptor for NLRouterSchemaNLRouterClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static NLRouterSchemaNLRouterClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v22 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v23 = a1;
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v21 = *(v8 + 56);
  v21(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x726574756F526C6ELL, 0xEA00000000006449);
  v9(v26, 0);
  v24 = a2;
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v25, 0x726574756F526C6ELL, 0xEA00000000006449);
  v20 = *(v8 + 48);
  if (!v20(v12, 1, v7))
  {
    sub_266ECB128(&unk_2878890A0);
    sub_26738115C();
  }

  (v11)(v25, 0);
  v10(v26, 0);
  sub_26738120C();
  v21(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x4974736575716572, 0xE900000000000064);
  v13(v26, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v25, 0x4974736575716572, 0xE900000000000064);
  if (!v20(v16, 1, v7))
  {
    sub_266ECB128(&unk_2878890D0);
    sub_26738115C();
  }

  (v15)(v25, 0);
  v14(v26, 0);
  sub_26738120C();
  v21(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x6449707274, 0xE500000000000000);
  return v17(v26, 0);
}

uint64_t sub_26710BFF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710C054(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterCorrectionOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267461970, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x80000002674619A0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x80000002674619C0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26710C310(uint64_t a1)
{
  v2 = sub_26710C414(&qword_2800F5090, &protocol conformance descriptor for NLRouterSchemaNLRouterCorrectionOutcome);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26710C378(uint64_t a1, uint64_t a2)
{
  v4 = sub_26710C414(&qword_2800F5090, &protocol conformance descriptor for NLRouterSchemaNLRouterCorrectionOutcome);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26710C414(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRouterSchemaNLRouterCorrectionOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterDecisionGenAIAppIntent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267461A20, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000039, 0x8000000267461A50, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000004BLL, 0x8000000267461A90, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000046, 0x8000000267461AE0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26710C6DC(uint64_t a1)
{
  v2 = sub_26710C7E0(&qword_2800F50A0, &protocol conformance descriptor for NLRouterSchemaNLRouterDecisionGenAIAppIntent);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26710C744(uint64_t a1, uint64_t a2)
{
  v4 = sub_26710C7E0(&qword_2800F50A0, &protocol conformance descriptor for NLRouterSchemaNLRouterDecisionGenAIAppIntent);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26710C7E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRouterSchemaNLRouterDecisionGenAIAppIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterDecisionGenAIMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0x63696C7078457369, 0xEA00000000007469);
  v10(v14, 0);
  type metadata accessor for NLRouterSchemaNLRouterDecisionGenAIAppIntent(0);
  sub_26710CD1C(&qword_2800F5098, type metadata accessor for NLRouterSchemaNLRouterDecisionGenAIAppIntent, &protocol conformance descriptor for NLRouterSchemaNLRouterDecisionGenAIAppIntent);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x70704149416E6567, 0xEE00746E65746E49);
  v11(v14, 0);
  type metadata accessor for NLRouterSchemaNLRouterCorrectionOutcome(0);
  sub_26710CD1C(&qword_2800F5088, type metadata accessor for NLRouterSchemaNLRouterCorrectionOutcome, &protocol conformance descriptor for NLRouterSchemaNLRouterCorrectionOutcome);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267461B70);
  return v12(v14, 0);
}

uint64_t sub_26710CC10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710CC74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26710CD1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26710CD64()
{
  result = qword_2800F50B0;
  if (!qword_2800F50B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F50B0);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterDecisionSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267461BD0, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x8000000267461BF0, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267461C20, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x8000000267461C50, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ALL, 0x8000000267461C80, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002CLL, 0x8000000267461CB0, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_26710D114(uint64_t a1)
{
  v2 = sub_26710D218(&qword_2800F50C0, &protocol conformance descriptor for NLRouterSchemaNLRouterDecisionSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26710D17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26710D218(&qword_2800F50C0, &protocol conformance descriptor for NLRouterSchemaNLRouterDecisionSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26710D218(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRouterSchemaNLRouterDecisionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterDecisionType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001CLL, 0x8000000267461D20, isUniquelyReferenced_nonNull_native);
  *v3 = v59;

  v1(v71, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x8000000267461D40, v8);
  *v7 = v60;

  v5(v71, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267461D70, v12);
  *v11 = v61;

  v9(v71, 0);
  v13 = sub_266ECB128(&unk_287889100);
  v15 = v14;
  v16 = sub_2673810FC();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v18;
  *v18 = 0x8000000000000000;
  sub_266ECD4CC(v13, v15, 2, v19);
  *v18 = v62;
  v16(v71, 0);
  v20 = sub_26738111C();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v22;
  *v22 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x8000000267461DA0, v23);
  *v22 = v63;

  v20(v71, 0);
  v24 = sub_266ECB128(&unk_287889128);
  v26 = v25;
  v27 = sub_2673810FC();
  v29 = v28;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v29;
  *v29 = 0x8000000000000000;
  sub_266ECD4CC(v24, v26, 3, v30);
  *v29 = v64;
  v27(v71, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000027, 0x8000000267461DC0, v34);
  *v33 = v65;

  v31(v71, 0);
  v35 = sub_26738111C();
  v37 = v36;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v37;
  *v37 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000022, 0x8000000267461DF0, v38);
  *v37 = v66;

  v35(v71, 0);
  v39 = sub_26738111C();
  v41 = v40;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v41;
  *v41 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x8000000267461E20, v42);
  *v41 = v67;

  v39(v71, 0);
  v43 = sub_266ECB128(&unk_287889150);
  v45 = v44;
  v46 = sub_2673810FC();
  v48 = v47;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v48;
  *v48 = 0x8000000000000000;
  sub_266ECD4CC(v43, v45, 6, v49);
  *v48 = v68;
  v46(v71, 0);
  v50 = sub_26738111C();
  v52 = v51;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v52;
  *v52 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000026, 0x8000000267461E40, v53);
  *v52 = v69;

  v50(v71, 0);
  v54 = sub_26738111C();
  v56 = v55;
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v56;
  *v56 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ALL, 0x8000000267461E70, v57);
  *v56 = v70;

  return v54(v71, 0);
}

uint64_t sub_26710D86C(uint64_t a1)
{
  v2 = sub_26710D970(&qword_2800F50C8, &protocol conformance descriptor for NLRouterSchemaNLRouterDecisionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26710D8D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26710D970(&qword_2800F50C8, &protocol conformance descriptor for NLRouterSchemaNLRouterDecisionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26710D970(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRouterSchemaNLRouterDecisionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterErrorDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267461EE0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x8000000267461F00, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267461F30, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x8000000267461F50, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26710DC38(uint64_t a1)
{
  v2 = sub_26710DD3C(&qword_2800F50D8, &protocol conformance descriptor for NLRouterSchemaNLRouterErrorDomain);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26710DCA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26710DD3C(&qword_2800F50D8, &protocol conformance descriptor for NLRouterSchemaNLRouterErrorDomain);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26710DD3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRouterSchemaNLRouterErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterHandleContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F50E0, 0x277D58CC0);
  sub_266ECAF2C(&qword_2800F50E8, &qword_2800F50E0, 0x277D58CC0, &protocol conformance descriptor for NLRouterSchemaNLRouterHandleStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F50F0, 0x277D58CB0);
  sub_266ECAF2C(&qword_2800F50F8, &qword_2800F50F0, 0x277D58CB0, &protocol conformance descriptor for NLRouterSchemaNLRouterHandleEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F5100, 0x277D58CB8);
  sub_266ECAF2C(&qword_2800F5108, &qword_2800F5100, 0x277D58CB8, &protocol conformance descriptor for NLRouterSchemaNLRouterHandleFailed);
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

uint64_t sub_26710E298(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710E2FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterHandleEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v17 = *(v2 - 8);
  v18 = v2;
  MEMORY[0x28223BE20](v2);
  v16 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLRouterSchemaNLRouterDecisionType(0);
  sub_26710EA10(&qword_2800F4FE0, type metadata accessor for NLRouterSchemaNLRouterDecisionType, &protocol conformance descriptor for NLRouterSchemaNLRouterDecisionType);
  v15 = a1;
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x8000000267461FF0);
  v9(v19, 0);
  type metadata accessor for NLRouterSchemaNLRouterDecisionSource(0);
  sub_26710EA10(&qword_2800F50B8, type metadata accessor for NLRouterSchemaNLRouterDecisionSource, &protocol conformance descriptor for NLRouterSchemaNLRouterDecisionSource);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x8000000267461610);
  v10(v19, 0);
  (*(v17 + 104))(v16, *MEMORY[0x277D3E538], v18);
  v19[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x8000000267462010);
  v11(v19, 0);
  sub_266ECB294(0, &qword_2800F50B0, 0x277D58CA0);
  sub_266ECAF2C(&qword_2800F50A8, &qword_2800F50B0, 0x277D58CA0, &protocol conformance descriptor for NLRouterSchemaNLRouterDecisionGenAIMetadata);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D49416E6567, 0xED00006174616461);
  v12(v19, 0);
  sub_266ECB294(0, &qword_2800F5110, 0x277D58CC8);
  sub_266ECAF2C(&qword_2800F5118, &qword_2800F5110, 0x277D58CC8, &protocol conformance descriptor for NLRouterSchemaNLRouterOverrideMetadata);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x8000000267462030);
  return v13(v19, 0);
}

uint64_t sub_26710E94C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710E9B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26710EA10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static NLRouterSchemaNLRouterHandleFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for NLRouterSchemaNLRouterErrorDomain(0);
  sub_26710EEDC(&qword_2800F50D0, type metadata accessor for NLRouterSchemaNLRouterErrorDomain, &protocol conformance descriptor for NLRouterSchemaNLRouterErrorDomain);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D6F44726F727265, 0xEB000000006E6961);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E508], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v10(v14, 0);
}

uint64_t sub_26710EDD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710EE34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26710EEDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26710EF24()
{
  result = qword_2800F5100;
  if (!qword_2800F5100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5100);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterHandleStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26710F1B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710F21C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26710F280()
{
  result = qword_2800F50E8;
  if (!qword_2800F50E8)
  {
    sub_26710F2D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F50E8);
  }

  return result;
}

unint64_t sub_26710F2D8()
{
  result = qword_2800F50E0;
  if (!qword_2800F50E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F50E0);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterOverrideMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x656469727265766FLL, 0xEA00000000006449);
  return v5(v7, 0);
}

uint64_t sub_26710F4FC(uint64_t a1)
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
  sub_266EC637C(v3, 0x656469727265766FLL, 0xEA00000000006449);
  return v5(v7, 0);
}

uint64_t sub_26710F69C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710F700(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterPromptComponent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for NLRouterSchemaNLRouterPromptComponentType(0);
  sub_26710FBEC(&qword_2800F5120, type metadata accessor for NLRouterSchemaNLRouterPromptComponentType, &protocol conformance descriptor for NLRouterSchemaNLRouterPromptComponentType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E656E6F706D6F63, 0xED00006570795474);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E538], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F546E49657A6973, 0xEC000000736E656BLL);
  return v10(v14, 0);
}

uint64_t sub_26710FAE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26710FB44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26710FBEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26710FC34()
{
  result = qword_2800F5130;
  if (!qword_2800F5130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5130);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterPromptComponentType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267462190, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000029, 0x80000002674621C0, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000030, 0x80000002674621F0, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x8000000267462230, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002DLL, 0x8000000267462260, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000027, 0x8000000267462290, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_26710FFE4(uint64_t a1)
{
  v2 = sub_2671100E8(&qword_2800F5138, &protocol conformance descriptor for NLRouterSchemaNLRouterPromptComponentType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26711004C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671100E8(&qword_2800F5138, &protocol conformance descriptor for NLRouterSchemaNLRouterPromptComponentType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671100E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRouterSchemaNLRouterPromptComponentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterPromptGenerated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v21 = v3;
  v22 = v4;
  MEMORY[0x28223BE20](v3);
  v20 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5130, 0x277D58CD0);
  sub_266ECAF2C(&qword_2800F5128, &qword_2800F5130, 0x277D58CD0, &protocol conformance descriptor for NLRouterSchemaNLRouterPromptComponent);
  sub_26738122C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656E6F706D6F63, 0xEA00000000007374);
  v11(v23, 0);
  sub_26738122C();
  v10(v8, 0, 1, v9);
  v19 = a2;
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267462300);
  v12(v23, 0);
  v13 = *MEMORY[0x277D3E538];
  v14 = *(v22 + 104);
  v22 += 104;
  v15 = v20;
  v14(v20, v13, v21);
  v23[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267462320);
  v16(v23, 0);
  v14(v15, v13, v21);
  v23[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267462340);
  return v17(v23, 0);
}

uint64_t sub_2671105BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267110620(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterPromptGenerationSignalsCaptured.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v28 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v23 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v23[1] = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E4E8];
  v27 = *(v3 + 104);
  v27(v5, v9, v2);
  v23[2] = v3 + 104;
  v29[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v26 = v11 + 56;
  v24 = v10;
  v12(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x636F467070417369, 0xEC00000064657375);
  v13(v29, 0);
  v23[0] = "ationSignalsCaptured";
  v14 = v9;
  v15 = v9;
  v25 = v9;
  v16 = v27;
  v17 = v28;
  v27(v5, v14, v28);
  v29[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v23[0] | 0x8000000000000000);
  v18(v29, 0);
  v16(v5, v15, v17);
  v29[0] = 1;
  sub_26738114C();
  v19 = v24;
  v12(v8, 0, 1, v24);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x46616964654D7369, 0xEE0064657375636FLL);
  v20(v29, 0);
  v16(v5, v25, v28);
  v29[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x80000002674623D0);
  return v21(v29, 0);
}

uint64_t sub_267110BA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267110C04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267110C68()
{
  result = qword_2800F5048;
  if (!qword_2800F5048)
  {
    sub_267110CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5048);
  }

  return result;
}

unint64_t sub_267110CC0()
{
  result = qword_2800F5040;
  if (!qword_2800F5040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5040);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterSubComponent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x8000000267462430, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267462450, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267462470, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x8000000267462490, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002CLL, 0x80000002674624B0, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002DLL, 0x80000002674624E0, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002DLL, 0x8000000267462510, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2671110E4(uint64_t a1)
{
  v2 = sub_2671111E8(&qword_2800F5148, &protocol conformance descriptor for NLRouterSchemaNLRouterSubComponent);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26711114C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671111E8(&qword_2800F5148, &protocol conformance descriptor for NLRouterSchemaNLRouterSubComponent);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671111E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRouterSchemaNLRouterSubComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterSubComponentHandleContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v29 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v8 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v29[1] = v7;
  v29[2] = a1;
  v29[0] = v8;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v6, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x49747865746E6F63, 0xE900000000000064);
  v12(v34, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v33, 0x49747865746E6F63, 0xE900000000000064);
  if (!(*(v10 + 48))(v15, 1, v9))
  {
    sub_266ECB128(&unk_287889178);
    sub_26738115C();
  }

  (v14)(v33, 0);
  v13(v34, 0);
  sub_266ECB294(0, &qword_2800F5150, 0x277D58D08);
  sub_266ECAF2C(&qword_2800F5158, &qword_2800F5150, 0x277D58D08, &protocol conformance descriptor for NLRouterSchemaNLRouterSubComponentHandleStarted);
  sub_26738121C();
  v11(v6, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v16(v34, 0);
  sub_266ECB294(0, &qword_2800F5160, 0x277D58CF0);
  sub_266ECAF2C(&qword_2800F5168, &qword_2800F5160, 0x277D58CF0, &protocol conformance descriptor for NLRouterSchemaNLRouterSubComponentHandleEnded);
  sub_26738121C();
  v11(v6, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v17(v34, 0);
  sub_266ECB294(0, &qword_2800F5170, 0x277D58D00);
  sub_266ECAF2C(&qword_2800F5178, &qword_2800F5170, 0x277D58D00, &protocol conformance descriptor for NLRouterSchemaNLRouterSubComponentHandleFailed);
  sub_26738121C();
  v11(v6, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
  v18(v34, 0);
  sub_26738120C();
  v11(v6, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496563617274, 0xE700000000000000);
  v19(v34, 0);
  v20 = v30;
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
  (*(v31 + 32))(v24 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27, v20, v32);
  return v21(v34, 0);
}

uint64_t sub_267111938(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711199C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterSubComponentHandleEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v10(v14, 0);
  sub_266ECB294(0, &qword_2800F5180, 0x277D58CF8);
  sub_266ECAF2C(&qword_2800F5188, &qword_2800F5180, 0x277D58CF8, &protocol conformance descriptor for NLRouterSchemaNLRouterSubComponentHandleEndedData);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000023, 0x80000002674625C0);
  return v11(v14, 0);
}

uint64_t sub_267111D70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267111DD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterSubComponentHandleEndedData.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F4F70, 0x277D58C60);
  sub_266ECAF2C(&qword_2800F4F68, &qword_2800F4F70, 0x277D58C60, &protocol conformance descriptor for NLRouterSchemaHeuristicsHandleEndedData);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000019, 0x8000000267462640);
  return v5(v7, 0);
}

uint64_t sub_267112070(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671120D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterSubComponentHandleFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671123C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711242C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267112490()
{
  result = qword_2800F5178;
  if (!qword_2800F5178)
  {
    sub_2671124E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5178);
  }

  return result;
}

unint64_t sub_2671124E8()
{
  result = qword_2800F5170;
  if (!qword_2800F5170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5170);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterSubComponentHandleStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for NLRouterSchemaNLRouterSubComponent(0);
  sub_267112974(&qword_2800F5140, type metadata accessor for NLRouterSchemaNLRouterSubComponent, &protocol conformance descriptor for NLRouterSchemaNLRouterSubComponent);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x80000002674626E0);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x7265567465737361, 0xEC0000006E6F6973);
  return v10(v14, 0);
}

uint64_t sub_267112868(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671128CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267112974(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671129BC()
{
  result = qword_2800F5150;
  if (!qword_2800F5150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5150);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterSubComponentSetupContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v29 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v8 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v29[1] = v7;
  v29[2] = a1;
  v29[0] = v8;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v6, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x49747865746E6F63, 0xE900000000000064);
  v12(v34, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v33, 0x49747865746E6F63, 0xE900000000000064);
  if (!(*(v10 + 48))(v15, 1, v9))
  {
    sub_266ECB128(&unk_2878891A0);
    sub_26738115C();
  }

  (v14)(v33, 0);
  v13(v34, 0);
  sub_266ECB294(0, &qword_2800F5190, 0x277D58D28);
  sub_266ECAF2C(&qword_2800F5198, &qword_2800F5190, 0x277D58D28, &protocol conformance descriptor for NLRouterSchemaNLRouterSubComponentSetupStarted);
  sub_26738121C();
  v11(v6, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v16(v34, 0);
  sub_266ECB294(0, &qword_2800F51A0, 0x277D58D18);
  sub_266ECAF2C(&qword_2800F51A8, &qword_2800F51A0, 0x277D58D18, &protocol conformance descriptor for NLRouterSchemaNLRouterSubComponentSetupEnded);
  sub_26738121C();
  v11(v6, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v17(v34, 0);
  sub_266ECB294(0, &qword_2800F51B0, 0x277D58D20);
  sub_266ECAF2C(&qword_2800F51B8, &qword_2800F51B0, 0x277D58D20, &protocol conformance descriptor for NLRouterSchemaNLRouterSubComponentSetupFailed);
  sub_26738121C();
  v11(v6, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
  v18(v34, 0);
  sub_26738120C();
  v11(v6, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496563617274, 0xE700000000000000);
  v19(v34, 0);
  v20 = v30;
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
  (*(v31 + 32))(v24 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27, v20, v32);
  return v21(v34, 0);
}

uint64_t sub_267113114(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267113178(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLRouterSchemaNLRouterSubComponentSetupEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267113464(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671134C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26711352C()
{
  result = qword_2800F51A8;
  if (!qword_2800F51A8)
  {
    sub_267113584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F51A8);
  }

  return result;
}

unint64_t sub_267113584()
{
  result = qword_2800F51A0;
  if (!qword_2800F51A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F51A0);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterSubComponentSetupFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267113820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267113884(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671138E8()
{
  result = qword_2800F51B8;
  if (!qword_2800F51B8)
  {
    sub_267113940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F51B8);
  }

  return result;
}

unint64_t sub_267113940()
{
  result = qword_2800F51B0;
  if (!qword_2800F51B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F51B0);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterSubComponentSetupStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLRouterSchemaNLRouterSubComponent(0);
  sub_267113D94();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x80000002674626E0);
  v7(v15, 0);
  sub_266ECB294(0, &qword_2800EF8F8, 0x277D5ACA0);
  sub_266ECAF2C(&qword_2800EF900, &qword_2800EF8F8, 0x277D5ACA0, &protocol conformance descriptor for SISchemaVersion);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x7265567465737361, 0xEC0000006E6F6973);
  v8(v15, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v14, 0x7265567465737361, 0xEC0000006E6F6973);
  if (!(*(v5 + 48))(v11, 1, v4))
  {
    sub_266ECB128(&unk_2878891C8);
    sub_26738115C();
  }

  (v10)(v14, 0);
  return v9(v15, 0);
}

uint64_t sub_267113CD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267113D34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267113D94()
{
  result = qword_2800F5140;
  if (!qword_2800F5140)
  {
    type metadata accessor for NLRouterSchemaNLRouterSubComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5140);
  }

  return result;
}

uint64_t static NLRouterSchemaNLRouterSubComponentTriggeredHeuristicRuleTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v6, 0xD000000000000016, 0x8000000267462850);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0xD000000000000016, 0x8000000267462850);
  if (!(*(v8 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_2878891F0);
    sub_26738115C();
  }

  (v13)(v18, 0);
  return v12(v19, 0);
}

uint64_t sub_267114208(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711426C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMAllServicesSetupContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F51C0, 0x277D58D50);
  sub_266ECAF2C(&qword_2800F51C8, &qword_2800F51C0, 0x277D58D50, &protocol conformance descriptor for NLXSchemaCDMAllServicesSetupStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F51D0, 0x277D58D40);
  sub_266ECAF2C(&qword_2800F51D8, &qword_2800F51D0, 0x277D58D40, &protocol conformance descriptor for NLXSchemaCDMAllServicesSetupEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F51E0, 0x277D58D48);
  sub_266ECAF2C(&qword_2800F51E8, &qword_2800F51E0, 0x277D58D48, &protocol conformance descriptor for NLXSchemaCDMAllServicesSetupFailed);
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

uint64_t sub_267114828(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711488C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMAllServicesSetupEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267114B78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267114BDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267114C40()
{
  result = qword_2800F51D8;
  if (!qword_2800F51D8)
  {
    sub_267114C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F51D8);
  }

  return result;
}

unint64_t sub_267114C98()
{
  result = qword_2800F51D0;
  if (!qword_2800F51D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F51D0);
  }

  return result;
}

uint64_t static NLXSchemaCDMAllServicesSetupFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267114F2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267114F90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267114FF4()
{
  result = qword_2800F51E8;
  if (!qword_2800F51E8)
  {
    sub_26711504C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F51E8);
  }

  return result;
}

unint64_t sub_26711504C()
{
  result = qword_2800F51E0;
  if (!qword_2800F51E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F51E0);
  }

  return result;
}

uint64_t static NLXSchemaCDMAllServicesSetupStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671152E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267115344(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671153A8()
{
  result = qword_2800F51C8;
  if (!qword_2800F51C8)
  {
    sub_267115400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F51C8);
  }

  return result;
}

unint64_t sub_267115400()
{
  result = qword_2800F51C0;
  if (!qword_2800F51C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F51C0);
  }

  return result;
}

uint64_t static NLXSchemaCDMAllServicesWarmupContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F5200, 0x277D58D70);
  sub_266ECAF2C(&qword_2800F5208, &qword_2800F5200, 0x277D58D70, &protocol conformance descriptor for NLXSchemaCDMAllServicesWarmupStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F5210, 0x277D58D60);
  sub_266ECAF2C(&qword_2800F5218, &qword_2800F5210, 0x277D58D60, &protocol conformance descriptor for NLXSchemaCDMAllServicesWarmupEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F5220, 0x277D58D68);
  sub_266ECAF2C(&qword_2800F5228, &qword_2800F5220, 0x277D58D68, &protocol conformance descriptor for NLXSchemaCDMAllServicesWarmupFailed);
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

uint64_t sub_267115964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671159C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMAllServicesWarmupEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267115CB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267115D18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267115D7C()
{
  result = qword_2800F5218;
  if (!qword_2800F5218)
  {
    sub_267115DD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5218);
  }

  return result;
}

unint64_t sub_267115DD4()
{
  result = qword_2800F5210;
  if (!qword_2800F5210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5210);
  }

  return result;
}

uint64_t static NLXSchemaCDMAllServicesWarmupFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267116068(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671160CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267116130()
{
  result = qword_2800F5228;
  if (!qword_2800F5228)
  {
    sub_267116188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5228);
  }

  return result;
}

unint64_t sub_267116188()
{
  result = qword_2800F5220;
  if (!qword_2800F5220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5220);
  }

  return result;
}

uint64_t static NLXSchemaCDMAllServicesWarmupStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26711641C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267116480(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671164E4()
{
  result = qword_2800F5208;
  if (!qword_2800F5208)
  {
    sub_26711653C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5208);
  }

  return result;
}

unint64_t sub_26711653C()
{
  result = qword_2800F5200;
  if (!qword_2800F5200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5200);
  }

  return result;
}

uint64_t static NLXSchemaCDMAssetSetupContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F5240, 0x277D58D90);
  sub_266ECAF2C(&qword_2800F5248, &qword_2800F5240, 0x277D58D90, &protocol conformance descriptor for NLXSchemaCDMAssetSetupStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F5250, 0x277D58D80);
  sub_266ECAF2C(&qword_2800F5258, &qword_2800F5250, 0x277D58D80, &protocol conformance descriptor for NLXSchemaCDMAssetSetupEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F5260, 0x277D58D88);
  sub_266ECAF2C(&qword_2800F5268, &qword_2800F5260, 0x277D58D88, &protocol conformance descriptor for NLXSchemaCDMAssetSetupFailed);
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

uint64_t sub_267116B64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267116BC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMAssetSetupEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267116EB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267116F18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267116F7C()
{
  result = qword_2800F5258;
  if (!qword_2800F5258)
  {
    sub_267116FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5258);
  }

  return result;
}

unint64_t sub_267116FD4()
{
  result = qword_2800F5250;
  if (!qword_2800F5250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5250);
  }

  return result;
}

uint64_t static NLXSchemaCDMAssetSetupErrorDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267462B10, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000035, 0x8000000267462B40, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002DLL, 0x8000000267462B80, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000030, 0x8000000267462BB0, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002DLL, 0x8000000267462BF0, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000032, 0x8000000267462C20, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000034, 0x8000000267462C60, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000038, 0x8000000267462CA0, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002DLL, 0x8000000267462CE0, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_2671174DC(uint64_t a1)
{
  v2 = sub_2671175E0(&qword_2800F5288, &protocol conformance descriptor for NLXSchemaCDMAssetSetupErrorDomain);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267117544(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671175E0(&qword_2800F5288, &protocol conformance descriptor for NLXSchemaCDMAssetSetupErrorDomain);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671175E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMAssetSetupErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMAssetSetupFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for NLXSchemaCDMAssetSetupErrorDomain(0);
  sub_267117A64(&qword_2800F5280, type metadata accessor for NLXSchemaCDMAssetSetupErrorDomain, &protocol conformance descriptor for NLXSchemaCDMAssetSetupErrorDomain);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D6F44726F727265, 0xEB000000006E6961);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E538], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v10(v14, 0);
}

uint64_t sub_267117958(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671179BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267117A64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267117AAC()
{
  result = qword_2800F5260;
  if (!qword_2800F5260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5260);
  }

  return result;
}

uint64_t static NLXSchemaCDMAssetSetupStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMServiceType(0);
  sub_267117F4C(&qword_2800F5290, type metadata accessor for NLXSchemaCDMServiceType, &protocol conformance descriptor for NLXSchemaCDMServiceType);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7365636976726573, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_267117CB8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMServiceType(0);
  sub_267117F4C(&qword_2800F5290, type metadata accessor for NLXSchemaCDMServiceType, &protocol conformance descriptor for NLXSchemaCDMServiceType);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7365636976726573, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_267117E40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267117EA4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267117F4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267117F94()
{
  result = qword_2800F5240;
  if (!qword_2800F5240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5240);
  }

  return result;
}

uint64_t static NLXSchemaCDMAssetsReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798, &protocol conformance descriptor for SISchemaAsset);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x737465737361, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671181B0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798, &protocol conformance descriptor for SISchemaAsset);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x737465737361, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267118348(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671183AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMClientSetupContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F52A8, 0x277D58DB8);
  sub_266ECAF2C(&qword_2800F52B0, &qword_2800F52A8, 0x277D58DB8, &protocol conformance descriptor for NLXSchemaCDMClientSetupStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F52B8, 0x277D58DA8);
  sub_266ECAF2C(&qword_2800F52C0, &qword_2800F52B8, 0x277D58DA8, &protocol conformance descriptor for NLXSchemaCDMClientSetupEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F52C8, 0x277D58DB0);
  sub_266ECAF2C(&qword_2800F52D0, &qword_2800F52C8, 0x277D58DB0, &protocol conformance descriptor for NLXSchemaCDMClientSetupFailed);
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

uint64_t sub_267118968(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671189CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMClientSetupEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267118CB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267118D1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267118D80()
{
  result = qword_2800F52C0;
  if (!qword_2800F52C0)
  {
    sub_267118DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F52C0);
  }

  return result;
}

unint64_t sub_267118DD8()
{
  result = qword_2800F52B8;
  if (!qword_2800F52B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F52B8);
  }

  return result;
}

uint64_t static NLXSchemaCDMClientSetupErrorDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267462E40, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002BLL, 0x8000000267462E70, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x8000000267462EA0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26711903C(uint64_t a1)
{
  v2 = sub_267119140(&qword_2800F52F0, &protocol conformance descriptor for NLXSchemaCDMClientSetupErrorDomain);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671190A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267119140(&qword_2800F52F0, &protocol conformance descriptor for NLXSchemaCDMClientSetupErrorDomain);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267119140(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMClientSetupErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMClientSetupFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x28223BE20](v2);
  v18 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMClientSetupFailureReason(0);
  sub_267119720(&qword_2800F52F8, type metadata accessor for NLXSchemaCDMClientSetupFailureReason, &protocol conformance descriptor for NLXSchemaCDMClientSetupFailureReason);
  v17 = a1;
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E6F73616572, 0xE600000000000000);
  v10(v22, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v21, 0x6E6F73616572, 0xE600000000000000);
  if (!(*(v8 + 48))(v13, 1, v7))
  {
    sub_266ECB128(&unk_287889218);
    sub_26738115C();
  }

  (v12)(v21, 0);
  v11(v22, 0);
  type metadata accessor for NLXSchemaCDMClientSetupErrorDomain(0);
  sub_267119720(&qword_2800F52E8, type metadata accessor for NLXSchemaCDMClientSetupErrorDomain, &protocol conformance descriptor for NLXSchemaCDMClientSetupErrorDomain);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D6F44726F727265, 0xEB000000006E6961);
  v14(v22, 0);
  (*(v19 + 104))(v18, *MEMORY[0x277D3E508], v20);
  v22[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v15(v22, 0);
}

uint64_t sub_267119614(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267119678(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267119720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267119768()
{
  result = qword_2800F52C8;
  if (!qword_2800F52C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F52C8);
  }

  return result;
}

uint64_t static NLXSchemaCDMClientSetupFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267462F40, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000030, 0x8000000267462F70, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ALL, 0x8000000267462FB0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000032, 0x8000000267462FE0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267119A38(uint64_t a1)
{
  v2 = sub_267119B3C(&qword_2800F5300, &protocol conformance descriptor for NLXSchemaCDMClientSetupFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267119AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267119B3C(&qword_2800F5300, &protocol conformance descriptor for NLXSchemaCDMClientSetupFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267119B3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMClientSetupFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMClientSetupStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v27 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *(v2 + 104);
  v23 = *MEMORY[0x277D3E4E8];
  v25 = v2 + 104;
  v26 = v1;
  v22 = v8;
  v8(v4);
  v29[0] = 1;
  v21 = v4;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v24 = *(v10 + 56);
  v24(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v11(v29, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v28, 0x737473697865, 0xE600000000000000);
  if (!(*(v10 + 48))(v14, 1, v9))
  {
    sub_266ECB128(&unk_287889240);
    sub_26738115C();
  }

  (v13)(v28, 0);
  v12(v29, 0);
  type metadata accessor for NLXSchemaCDMServiceGraphName(0);
  sub_26711A1F4(&qword_2800F5308, type metadata accessor for NLXSchemaCDMServiceGraphName, &protocol conformance descriptor for NLXSchemaCDMServiceGraphName);
  sub_26738120C();
  v15 = v24;
  v24(v7, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x8000000267463050);
  v16(v29, 0);
  v22(v21, v23, v26);
  v29[0] = 1;
  sub_26738114C();
  v15(v7, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x8000000267463070);
  v17(v29, 0);
  type metadata accessor for NLXSchemaCDMMemoryPressure(0);
  sub_26711A1F4(&qword_2800F5310, type metadata accessor for NLXSchemaCDMMemoryPressure, &protocol conformance descriptor for NLXSchemaCDMMemoryPressure);
  sub_26738120C();
  v15(v7, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x725079726F6D656DLL, 0xEE00657275737365);
  return v18(v29, 0);
}

uint64_t sub_26711A0E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711A14C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26711A1F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26711A23C()
{
  result = qword_2800F52A8;
  if (!qword_2800F52A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F52A8);
  }

  return result;
}

uint64_t static NLXSchemaCDMClientWarmupContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F5318, 0x277D58DD8);
  sub_266ECAF2C(&qword_2800F5320, &qword_2800F5318, 0x277D58DD8, &protocol conformance descriptor for NLXSchemaCDMClientWarmupStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F5328, 0x277D58DC8);
  sub_266ECAF2C(&qword_2800F5330, &qword_2800F5328, 0x277D58DC8, &protocol conformance descriptor for NLXSchemaCDMClientWarmupEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F5338, 0x277D58DD0);
  sub_266ECAF2C(&qword_2800F5340, &qword_2800F5338, 0x277D58DD0, &protocol conformance descriptor for NLXSchemaCDMClientWarmupFailed);
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

uint64_t sub_26711A7A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711A804(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMClientWarmupEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26711AAF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711AB54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26711ABB8()
{
  result = qword_2800F5330;
  if (!qword_2800F5330)
  {
    sub_26711AC10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5330);
  }

  return result;
}

unint64_t sub_26711AC10()
{
  result = qword_2800F5328;
  if (!qword_2800F5328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5328);
  }

  return result;
}

uint64_t static NLXSchemaCDMClientWarmupErrorDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x8000000267463130, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x8000000267463160, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x8000000267463190, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26711AE70(uint64_t a1)
{
  v2 = sub_26711AF74(&qword_2800F5360, &protocol conformance descriptor for NLXSchemaCDMClientWarmupErrorDomain);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26711AED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26711AF74(&qword_2800F5360, &protocol conformance descriptor for NLXSchemaCDMClientWarmupErrorDomain);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26711AF74(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMClientWarmupErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMClientWarmupFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for NLXSchemaCDMClientWarmupErrorDomain(0);
  sub_26711B3F8(&qword_2800F5358, type metadata accessor for NLXSchemaCDMClientWarmupErrorDomain, &protocol conformance descriptor for NLXSchemaCDMClientWarmupErrorDomain);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D6F44726F727265, 0xEB000000006E6961);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E508], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v10(v14, 0);
}

uint64_t sub_26711B2EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711B350(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26711B3F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26711B440()
{
  result = qword_2800F5338;
  if (!qword_2800F5338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5338);
  }

  return result;
}

uint64_t static NLXSchemaCDMClientWarmupStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMServiceGraphName(0);
  sub_26711B77C(&qword_2800F5308, type metadata accessor for NLXSchemaCDMServiceGraphName, &protocol conformance descriptor for NLXSchemaCDMServiceGraphName);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267463050);
  return v5(v7, 0);
}

uint64_t sub_26711B670(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711B6D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26711B77C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26711B7C4()
{
  result = qword_2800F5318;
  if (!qword_2800F5318)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5318);
  }

  return result;
}

uint64_t static NLXSchemaCDMContextUpdateEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x49747865746E6F63, 0xE900000000000064);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F5368, 0x277D58E58);
  sub_266ECAF2C(&qword_2800F5370, &qword_2800F5368, 0x277D58E58, &protocol conformance descriptor for NLXSchemaCDMReformedTurnInputBundle);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x8000000267463250);
  return v7(v9, 0);
}

uint64_t sub_26711BAE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711BB48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMCorrectionOutcome.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMCorrectionType(0);
  sub_26711BEF8(&qword_2800F5388, type metadata accessor for NLXSchemaCDMCorrectionType, &protocol conformance descriptor for NLXSchemaCDMCorrectionType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6974636572726F63, 0xEE00657079546E6FLL);
  v5(v7, 0);
  sub_266ECB128(&unk_287889268);
  return sub_2673811CC();
}

uint64_t sub_26711BDEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711BE50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26711BEF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26711BF40()
{
  result = qword_2800F5398;
  if (!qword_2800F5398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5398);
  }

  return result;
}

uint64_t static NLXSchemaCDMCorrectionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x80000002674632D0, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x80000002674632F0, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_26711C130(uint64_t a1)
{
  v2 = sub_26711C234(&qword_2800F53A0, &protocol conformance descriptor for NLXSchemaCDMCorrectionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26711C198(uint64_t a1, uint64_t a2)
{
  v4 = sub_26711C234(&qword_2800F53A0, &protocol conformance descriptor for NLXSchemaCDMCorrectionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26711C234(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMCorrectionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMDelegatedUserDialogAct.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v39 = sub_26738113C();
  v3 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v37 = *MEMORY[0x277D3E538];
  v9 = *(v3 + 104);
  v32 = v3 + 104;
  v36 = v9;
  (v9)(v5);
  v41[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v33 = *(v10 - 8);
  v11 = *(v33 + 56);
  v11(v8, 0, 1, v10);
  v34 = a2;
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267463360);
  v12(v41, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v31 = v10;
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496B6E696CLL, 0xE600000000000000);
  v13(v41, 0);
  v30 = "asrHypothesisIndex";
  v15 = v35;
  v14 = v36;
  v16 = v39;
  v36(v35, *MEMORY[0x277D3E530], v39);
  v41[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v30 | 0x8000000000000000);
  v17(v41, 0);
  v30 = "externalParserId";
  v18 = v37;
  v14(v15, v37, v16);
  v41[0] = 1;
  sub_26738114C();
  v19 = v31;
  v11(v8, 0, 1, v31);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v30 | 0x8000000000000000);
  v20(v41, 0);
  v30 = "siriVocabularySpanCount";
  v21 = v35;
  v14(v35, v18, v39);
  v41[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v19);
  v22 = v11;
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v30 | 0x8000000000000000);
  v23(v41, 0);
  type metadata accessor for NLXSchemaCDMRewriteType(0);
  sub_26711CAF0();
  sub_26738120C();
  v11(v8, 0, 1, v19);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x5465746972776572, 0xEB00000000657079);
  v24(v41, 0);
  v36(v21, v37, v39);
  v41[0] = 1;
  sub_26738114C();
  v22(v8, 0, 1, v19);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x80000002674633E0);
  v25(v41, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v40, 0xD000000000000017, 0x80000002674633E0);
  if (!(*(v33 + 48))(v28, 1, v19))
  {
    sub_266ECB128(&unk_287889298);
    sub_26738115C();
  }

  (v27)(v40, 0);
  return v26(v41, 0);
}

uint64_t sub_26711CA2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711CA90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26711CAF0()
{
  result = qword_2800F53A8;
  if (!qword_2800F53A8)
  {
    type metadata accessor for NLXSchemaCDMRewriteType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F53A8);
  }

  return result;
}

uint64_t static NLXSchemaCDMDelegatedUserDialogActTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267463440);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0xD000000000000012, 0x8000000267463440);
  if (!(*(v8 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_2878892C8);
    sub_26738115C();
  }

  (v13)(v18, 0);
  return v12(v19, 0);
}

uint64_t sub_26711CF64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711CFC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMEntityCandidate.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260, &protocol conformance descriptor for USOSchemaUSOGraph);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x797469746E65, 0xE600000000000000);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E518], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x65726F6373, 0xE500000000000000);
  return v10(v14, 0);
}

uint64_t sub_26711D398(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711D3FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMInternalSpanData.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F53E0, 0x277D58F20);
  sub_266ECAF2C(&qword_2800F53E8, &qword_2800F53E0, 0x277D58F20, &protocol conformance descriptor for NLXSchemaCDMSiriVocabularySpanData);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x80000002674634C0);
  v6(v12, 0);
  sub_266ECB294(0, &qword_2800F53F0, 0x277D59120);
  sub_266ECAF2C(&qword_2800F53F8, &qword_2800F53F0, 0x277D59120, &protocol conformance descriptor for NLXSchemaPLUMSpanData);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6170536D756C70, 0xEC00000061746144);
  v7(v12, 0);
  sub_266ECB294(0, &qword_2800F5400, 0x277D590E0);
  sub_266ECAF2C(&qword_2800F5408, &qword_2800F5400, 0x277D590E0, &protocol conformance descriptor for NLXSchemaMentionDetectorSpanData);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x80000002674634E0);
  v8(v12, 0);
  sub_266ECB294(0, &qword_2800F5410, 0x277D590E8);
  sub_266ECAF2C(&qword_2800F5418, &qword_2800F5410, 0x277D590E8, &protocol conformance descriptor for NLXSchemaMentionResolverSpanData);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x8000000267463500);
  v9(v12, 0);
  sub_266ECB294(0, &qword_2800F5420, 0x277D59038);
  sub_266ECAF2C(&qword_2800F5428, &qword_2800F5420, 0x277D59038, &protocol conformance descriptor for NLXSchemaContextualSpanData);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267463520);
  return v10(v12, 0);
}

uint64_t sub_26711D9EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711DA50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMInternalSpanDataTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5440, 0x277D58F28);
  sub_266ECAF2C(&qword_2800F5448, &qword_2800F5440, 0x277D58F28, &protocol conformance descriptor for NLXSchemaCDMSiriVocabularySpanDataTier1);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x80000002674634C0);
  return v5(v7, 0);
}

uint64_t sub_26711DCEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711DD50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMLanguageVariantResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F5460, 0x277D58E40);
  sub_266ECAF2C(&qword_2800F5468, &qword_2800F5460, 0x277D58E40, &protocol conformance descriptor for NLXSchemaCDMMultilingualVariant);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x80000002674635C0);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F5470, 0x277D58E50);
  sub_266ECAF2C(&qword_2800F5478, &qword_2800F5470, 0x277D58E50, &protocol conformance descriptor for NLXSchemaCDMParser);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x65737261506D6463, 0xE900000000000072);
  return v7(v9, 0);
}

uint64_t sub_26711E0C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711E128(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMMatcherName.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267463610, isUniquelyReferenced_nonNull_native);
  *v3 = v42;

  v1(v52, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x8000000267463630, v8);
  *v7 = v43;

  v5(v52, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x8000000267463660, v12);
  *v11 = v44;

  v9(v52, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x8000000267463680, v16);
  *v15 = v45;

  v13(v52, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x80000002674636B0, v20);
  *v19 = v46;

  v17(v52, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ELL, 0x80000002674636D0, v24);
  *v23 = v47;

  v21(v52, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x80000002674636F0, v28);
  *v27 = v48;

  v25(v52, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001BLL, 0x8000000267463720, v32);
  *v31 = v49;

  v29(v52, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ALL, 0x8000000267463740, v36);
  *v35 = v50;

  v33(v52, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001CLL, 0x8000000267463760, v40);
  *v39 = v51;

  return v37(v52, 0);
}

uint64_t sub_26711E6F4(uint64_t a1)
{
  v2 = sub_26711E7F8(&qword_2800F5498, &protocol conformance descriptor for NLXSchemaCDMMatcherName);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26711E75C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26711E7F8(&qword_2800F5498, &protocol conformance descriptor for NLXSchemaCDMMatcherName);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26711E7F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMMatcherName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMMatchingSpan.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v24 = a1;
  v1 = sub_26738113C();
  v22 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E530];
  v23 = *(v2 + 104);
  v23(v4, v8, v1);
  v21 = v2 + 104;
  v25[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6C6562616CLL, 0xE500000000000000);
  v11(v25, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v10(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496B6E696CLL, 0xE600000000000000);
  v12(v25, 0);
  v13 = *MEMORY[0x277D3E538];
  v14 = v22;
  v23(v4, v13, v22);
  v25[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x6B6F547472617473, 0xEF7865646E496E65);
  v15(v25, 0);
  v23(v4, v13, v14);
  v25[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656B6F54646E65, 0xED00007865646E49);
  v16(v25, 0);
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260, &protocol conformance descriptor for USOSchemaUSOGraph);
  sub_26738120C();
  v10(v7, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x68706172476F7375, 0xE800000000000000);
  v17(v25, 0);
  type metadata accessor for NLXSchemaCDMMatcherName(0);
  sub_26711F014();
  sub_26738122C();
  v10(v7, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x4E7265686374616DLL, 0xEC00000073656D61);
  v18(v25, 0);
  sub_266ECB294(0, &qword_2800F5438, 0x277D58E08);
  sub_266ECAF2C(&qword_2800F5430, &qword_2800F5438, 0x277D58E08, &protocol conformance descriptor for NLXSchemaCDMInternalSpanData);
  sub_26738120C();
  v10(v7, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x80000002674637B0);
  return v19(v25, 0);
}

uint64_t sub_26711EF50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711EFB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26711F014()
{
  result = qword_2800F5490;
  if (!qword_2800F5490)
  {
    type metadata accessor for NLXSchemaCDMMatcherName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5490);
  }

  return result;
}

uint64_t static NLXSchemaCDMMatchingSpanEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x49747865746E6F63, 0xE900000000000064);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F54A8, 0x277D58E20);
  sub_266ECAF2C(&qword_2800F54A0, &qword_2800F54A8, 0x277D58E20, &protocol conformance descriptor for NLXSchemaCDMMatchingSpan);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x676E69686374616DLL, 0xED0000736E617053);
  v7(v11, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v8(v11, 0);
}

uint64_t sub_26711F40C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711F470(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMMatchingSpanEndedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F54C0, 0x277D58E38);
  sub_266ECAF2C(&qword_2800F54C8, &qword_2800F54C0, 0x277D58E38, &protocol conformance descriptor for NLXSchemaCDMMatchingSpanTier1);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x676E69686374616DLL, 0xED0000736E617053);
  return v7(v9, 0);
}

uint64_t sub_26711F7E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711F848(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMMatchingSpanTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v30 = v2;
  v31 = v3;
  MEMORY[0x28223BE20](v2);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v27 = a1;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v28 = *(v9 + 56);
  v28(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496B6E696CLL, 0xE600000000000000);
  v10(v33, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v32, 0x64496B6E696CLL, 0xE600000000000000);
  v13 = *(v9 + 48);
  if (!v13(v14, 1, v8))
  {
    sub_266ECB128(&unk_2878892F0);
    sub_26738115C();
  }

  (v12)(v32, 0);
  v11(v33, 0);
  v15 = *(v31 + 104);
  v26 = *MEMORY[0x277D3E530];
  v31 += 104;
  v25 = v15;
  v15(v29);
  v33[0] = 1;
  sub_26738114C();
  v28(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x7475706E69, 0xE500000000000000);
  v16(v33, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v32, 0x7475706E69, 0xE500000000000000);
  if (!v13(v19, 1, v8))
  {
    sub_266ECB128(&unk_287889318);
    sub_26738115C();
  }

  (v18)(v32, 0);
  v17(v33, 0);
  sub_266ECB294(0, &qword_2800F5458, 0x277D58E10);
  sub_266ECAF2C(&qword_2800F5450, &qword_2800F5458, 0x277D58E10, &protocol conformance descriptor for NLXSchemaCDMInternalSpanDataTier1);
  sub_26738120C();
  v20 = v28;
  v28(v7, 0, 1, v8);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x80000002674637B0);
  v21(v33, 0);
  v25(v29, v26, v30);
  v33[0] = 1;
  sub_26738114C();
  v20(v7, 0, 1, v8);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0x6369746E616D6573, 0xED000065756C6156);
  return v22(v33, 0);
}

uint64_t sub_26711FEF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26711FF5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMMemoryPressure.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x80000002674638A0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x80000002674638C0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x80000002674638E0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x8000000267463900, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267120284(uint64_t a1)
{
  v2 = sub_267120388(&qword_2800F54E0, &protocol conformance descriptor for NLXSchemaCDMMemoryPressure);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671202EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267120388(&qword_2800F54E0, &protocol conformance descriptor for NLXSchemaCDMMemoryPressure);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267120388(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMMemoryPressure(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMMultilingualVariant.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v16 = "iri.nlx.CDMMultilingualVariant";
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E530], v2);
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
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x8000000267463970);
  return v13(v17, 0);
}

uint64_t sub_267120700(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267120764(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671207C8()
{
  result = qword_2800F5468;
  if (!qword_2800F5468)
  {
    sub_267120820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5468);
  }

  return result;
}

unint64_t sub_267120820()
{
  result = qword_2800F5460;
  if (!qword_2800F5460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5460);
  }

  return result;
}

uint64_t static NLXSchemaCDMNLContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F54E8, 0x277D58F88);
  sub_266ECAF2C(&qword_2800F54F0, &qword_2800F54E8, 0x277D58F88, &protocol conformance descriptor for NLXSchemaCDMTask);
  v5 = a1;
  sub_26738122C();
  v6 = sub_26738116C();
  v16[0] = *(v6 - 8);
  v7 = *(v16[0] + 56);
  v7(v4, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6154657669746361, 0xEB00000000736B73);
  v8(v18, 0);
  sub_26738122C();
  v7(v4, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465747563657865, 0xED0000736B736154);
  v9(v18, 0);
  sub_266ECB294(0, &qword_2800F53D8, 0x277D58E00);
  sub_266ECAF2C(&qword_2800F53D0, &qword_2800F53D8, 0x277D58E00, &protocol conformance descriptor for NLXSchemaCDMEntityCandidate);
  v16[1] = v5;
  sub_26738122C();
  v7(v4, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x45746E65696C6173, 0xEF7365697469746ELL);
  v10(v18, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v17, 0x45746E65696C6173, 0xEF7365697469746ELL);
  if (!(*(v16[0] + 48))(v13, 1, v6))
  {
    sub_266ECB128(&unk_287889340);
    sub_26738115C();
  }

  (v12)(v17, 0);
  v11(v18, 0);
  sub_266ECB294(0, &qword_2800F54F8, 0x277D58F48);
  sub_266ECAF2C(&qword_2800F5500, &qword_2800F54F8, 0x277D58F48, &protocol conformance descriptor for NLXSchemaCDMSystemDialogAct);
  sub_26738122C();
  v7(v4, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x80000002674639C0);
  return v14(v18, 0);
}

uint64_t sub_267120D58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267120DBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMParser.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMParserAlgorithmType(0);
  sub_267121218(&qword_2800F5518, type metadata accessor for NLXSchemaCDMParserAlgorithmType, &protocol conformance descriptor for NLXSchemaCDMParserAlgorithmType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x687469726F676C61, 0xE90000000000006DLL);
  v6(v9, 0);
  type metadata accessor for NLXSchemaCDMParserIdentifier(0);
  sub_267121218(&qword_2800F5520, type metadata accessor for NLXSchemaCDMParserIdentifier, &protocol conformance descriptor for NLXSchemaCDMParserIdentifier);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6449726573726170, 0xE800000000000000);
  return v7(v9, 0);
}

uint64_t sub_26712110C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267121170(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267121218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267121260()
{
  result = qword_2800F5470;
  if (!qword_2800F5470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5470);
  }

  return result;
}

uint64_t static NLXSchemaCDMParserAlgorithmType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x8000000267463A40, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x8000000267463A60, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x8000000267463A80, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x8000000267463AA0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267121534(uint64_t a1)
{
  v2 = sub_267121638(&qword_2800F5528, &protocol conformance descriptor for NLXSchemaCDMParserAlgorithmType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26712159C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267121638(&qword_2800F5528, &protocol conformance descriptor for NLXSchemaCDMParserAlgorithmType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267121638(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMParserAlgorithmType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMParserIdentifier.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267463AF0, isUniquelyReferenced_nonNull_native);
  *v3 = v70;

  v1(v84, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267463B10, v8);
  *v7 = v71;

  v5(v84, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x8000000267463B30, v12);
  *v11 = v72;

  v9(v84, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267463B50, v16);
  *v15 = v73;

  v13(v84, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x8000000267463B70, v20);
  *v19 = v74;

  v17(v84, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x8000000267463B90, v24);
  *v23 = v75;

  v21(v84, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000023, 0x8000000267463BC0, v28);
  *v27 = v76;

  v25(v84, 0);
  v29 = sub_266ECB128(&unk_287889368);
  v31 = v30;
  v32 = sub_2673810FC();
  v34 = v33;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v34;
  *v34 = 0x8000000000000000;
  sub_266ECD4CC(v29, v31, 6, v35);
  *v34 = v77;
  v32(v84, 0);
  v36 = sub_26738111C();
  v38 = v37;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v38;
  *v38 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000017, 0x8000000267463BF0, v39);
  *v38 = v78;

  v36(v84, 0);
  v40 = sub_266ECB128(&unk_287889398);
  v42 = v41;
  v43 = sub_2673810FC();
  v45 = v44;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD4CC(v40, v42, 7, v46);
  *v45 = v79;
  v43(v84, 0);
  v47 = sub_26738111C();
  v49 = v48;
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v49;
  *v49 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000017, 0x8000000267463C10, v50);
  *v49 = v80;

  v47(v84, 0);
  v51 = sub_266ECB128(&unk_2878893C8);
  v53 = v52;
  v54 = sub_2673810FC();
  v56 = v55;
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v56;
  *v56 = 0x8000000000000000;
  sub_266ECD4CC(v51, v53, 8, v57);
  *v56 = v81;
  v54(v84, 0);
  v58 = sub_26738111C();
  v60 = v59;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v60;
  *v60 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000017, 0x8000000267463C30, v61);
  *v60 = v82;

  v58(v84, 0);
  v62 = sub_266ECB128(&unk_2878893F8);
  v64 = v63;
  v65 = sub_2673810FC();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD4CC(v62, v64, 9, v68);
  *v67 = v83;
  return v65(v84, 0);
}

uint64_t sub_267121D68(uint64_t a1)
{
  v2 = sub_267121E6C(&qword_2800F5530, &protocol conformance descriptor for NLXSchemaCDMParserIdentifier);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267121DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267121E6C(&qword_2800F5530, &protocol conformance descriptor for NLXSchemaCDMParserIdentifier);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267121E6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMParserIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMReformedTurnInputBundle.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for NLXSchemaCDMReformType(0);
  sub_267122330();
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 1701869940, 0xE400000000000000);
  v9(v15, 0);
  sub_266ECB294(0, &qword_2800F5540, 0x277D58FB0);
  sub_266ECAF2C(&qword_2800F5548, &qword_2800F5540, 0x277D58FB0, &protocol conformance descriptor for NLXSchemaCDMTurnInput);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x54746E6572727563, 0xEB000000006E7275);
  v10(v15, 0);
  (*(v13 + 104))(v3, *MEMORY[0x277D3E538], v14);
  v15[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x8000000267463C90);
  return v11(v15, 0);
}

uint64_t sub_26712226C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671222D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267122330()
{
  result = qword_2800F5538;
  if (!qword_2800F5538)
  {
    type metadata accessor for NLXSchemaCDMReformType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5538);
  }

  return result;
}

uint64_t static NLXSchemaCDMReformType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267463CE0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x8000000267463D00, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267463D20, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x8000000267463D50, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000019, 0x8000000267463D80, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2671226C0(uint64_t a1)
{
  v2 = sub_2671227C4(&qword_2800F5550, &protocol conformance descriptor for NLXSchemaCDMReformType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267122728(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671227C4(&qword_2800F5550, &protocol conformance descriptor for NLXSchemaCDMReformType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671227C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMReformType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMRepetitionResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267463360);
  v10(v13, 0);
  type metadata accessor for NLXSchemaCDMRepetitionType(0);
  sub_267122C44(&qword_2800F5558, type metadata accessor for NLXSchemaCDMRepetitionType, &protocol conformance descriptor for NLXSchemaCDMRepetitionType);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6974697465706572, 0xEE00657079546E6FLL);
  return v11(v13, 0);
}

uint64_t sub_267122B38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267122B9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267122C44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267122C8C()
{
  result = qword_2800F5568;
  if (!qword_2800F5568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5568);
  }

  return result;
}

uint64_t static NLXSchemaCDMRepetitionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267463E00, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267463E20, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267463E40, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000016, 0x8000000267463E60, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x8000000267463E80, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267122FD0(uint64_t a1)
{
  v2 = sub_2671230D4(&qword_2800F5570, &protocol conformance descriptor for NLXSchemaCDMRepetitionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267123038(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671230D4(&qword_2800F5570, &protocol conformance descriptor for NLXSchemaCDMRepetitionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671230D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMRepetitionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F5578, 0x277D58E80);
  sub_266ECAF2C(&qword_2800F5580, &qword_2800F5578, 0x277D58E80, &protocol conformance descriptor for NLXSchemaCDMRequestStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F5588, 0x277D58E70);
  sub_266ECAF2C(&qword_2800F5590, &qword_2800F5588, 0x277D58E70, &protocol conformance descriptor for NLXSchemaCDMRequestEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F5598, 0x277D58E78);
  sub_266ECAF2C(&qword_2800F55A0, &qword_2800F5598, 0x277D58E78, &protocol conformance descriptor for NLXSchemaCDMRequestFailed);
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

uint64_t sub_267123630(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267123694(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMRequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F55B8, 0x277D58FD8);
  sub_266ECAF2C(&qword_2800F55C0, &qword_2800F55B8, 0x277D58FD8, &protocol conformance descriptor for NLXSchemaCDMUserParse);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x736573726170, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F5488, 0x277D58E18);
  sub_266ECAF2C(&qword_2800F5480, &qword_2800F5488, 0x277D58E18, &protocol conformance descriptor for NLXSchemaCDMLanguageVariantResult);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001FLL, 0x8000000267463F00);
  return v7(v9, 0);
}

uint64_t sub_267123A04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267123A68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMRequestFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = sub_26738113C();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for NLXSchemaCDMRequestFailureCode(0);
  sub_267124224(&qword_2800F55C8, type metadata accessor for NLXSchemaCDMRequestFailureCode, &protocol conformance descriptor for NLXSchemaCDMRequestFailureCode);
  v36 = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 1701080931, 0xE400000000000000);
  v13(v39, 0);
  v14 = *MEMORY[0x277D3E508];
  v15 = *(v4 + 104);
  v32 = v4 + 104;
  v29 = v15;
  v15(v6, v14, v37);
  v39[0] = 1;
  v33 = v6;
  sub_26738114C();
  v31 = v12;
  v12(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C616E696769726FLL, 0xEC00000065646F43);
  v16(v39, 0);
  v34 = a2;
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v38, 0x6C616E696769726FLL, 0xEC00000065646F43);
  v19 = *(v11 + 48);
  v35 = v11 + 48;
  v30 = v19;
  if (!v19(v20, 1, v10))
  {
    sub_266ECB128(&unk_287889428);
    sub_26738115C();
  }

  (v18)(v38, 0);
  v17(v39, 0);
  v29(v33, v14, v37);
  v39[0] = 1;
  sub_26738114C();
  v21 = v31;
  v31(v9, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x646F43726F727265, 0xE900000000000065);
  v22(v39, 0);
  type metadata accessor for NLXSchemaCDMServiceGraphErrorDomain(0);
  sub_267124224(&qword_2800F55D0, type metadata accessor for NLXSchemaCDMServiceGraphErrorDomain, &protocol conformance descriptor for NLXSchemaCDMServiceGraphErrorDomain);
  sub_26738120C();
  v21(v9, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D6F44726F727265, 0xEB000000006E6961);
  v23(v39, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v38, 0x6D6F44726F727265, 0xEB000000006E6961);
  if (!v30(v26, 1, v10))
  {
    sub_266ECB128(&unk_287889450);
    sub_26738115C();
  }

  (v25)(v38, 0);
  return v24(v39, 0);
}

uint64_t sub_267124118(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26712417C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267124224(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26712426C()
{
  result = qword_2800F5598;
  if (!qword_2800F5598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5598);
  }

  return result;
}

uint64_t static NLXSchemaCDMRequestFailureCode.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267463F80, isUniquelyReferenced_nonNull_native);
  *v3 = v103;

  v1(v123, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x8000000267463FA0, v8);
  *v7 = v104;

  v5(v123, 0);
  v9 = sub_266ECB128(&unk_287889480);
  v11 = v10;
  v12 = sub_2673810FC();
  v14 = v13;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v14;
  *v14 = 0x8000000000000000;
  sub_266ECD4CC(v9, v11, 1, v15);
  *v14 = v105;
  v12(v123, 0);
  v16 = sub_26738111C();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v18;
  *v18 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x8000000267463FC0, v19);
  *v18 = v106;

  v16(v123, 0);
  v20 = sub_266ECB128(&unk_2878894A8);
  v22 = v21;
  v23 = sub_2673810FC();
  v25 = v24;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v25;
  *v25 = 0x8000000000000000;
  sub_266ECD4CC(v20, v22, 2, v26);
  *v25 = v107;
  v23(v123, 0);
  v27 = sub_26738111C();
  v29 = v28;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v29;
  *v29 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267463FF0, v30);
  *v29 = v108;

  v27(v123, 0);
  v31 = sub_266ECB128(&unk_2878894D0);
  v33 = v32;
  v34 = sub_2673810FC();
  v36 = v35;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v36;
  *v36 = 0x8000000000000000;
  sub_266ECD4CC(v31, v33, 3, v37);
  *v36 = v109;
  v34(v123, 0);
  v38 = sub_26738111C();
  v40 = v39;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v40;
  *v40 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x8000000267464020, v41);
  *v40 = v110;

  v38(v123, 0);
  v42 = sub_266ECB128(&unk_2878894F8);
  v44 = v43;
  v45 = sub_2673810FC();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD4CC(v42, v44, 4, v48);
  *v47 = v111;
  v45(v123, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ALL, 0x8000000267464050, v52);
  *v51 = v112;

  v49(v123, 0);
  v53 = sub_266ECB128(&unk_287889520);
  v55 = v54;
  v56 = sub_2673810FC();
  v58 = v57;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v58;
  *v58 = 0x8000000000000000;
  sub_266ECD4CC(v53, v55, 5, v59);
  *v58 = v113;
  v56(v123, 0);
  v60 = sub_26738111C();
  v62 = v61;
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v62;
  *v62 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002ELL, 0x8000000267464080, v63);
  *v62 = v114;

  v60(v123, 0);
  v64 = sub_266ECB128(&unk_287889548);
  v66 = v65;
  v67 = sub_2673810FC();
  v69 = v68;
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD4CC(v64, v66, 6, v70);
  *v69 = v115;
  v67(v123, 0);
  v71 = sub_26738111C();
  v73 = v72;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v73;
  *v73 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000023, 0x80000002674640B0, v74);
  *v73 = v116;

  v71(v123, 0);
  v75 = sub_266ECB128(&unk_287889570);
  v77 = v76;
  v78 = sub_2673810FC();
  v80 = v79;
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v80;
  *v80 = 0x8000000000000000;
  sub_266ECD4CC(v75, v77, 7, v81);
  *v80 = v117;
  v78(v123, 0);
  v82 = sub_26738111C();
  v84 = v83;
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v84;
  *v84 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ALL, 0x80000002674640E0, v85);
  *v84 = v118;

  v82(v123, 0);
  v86 = sub_26738111C();
  v88 = v87;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v88;
  *v88 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000029, 0x8000000267464110, v89);
  *v88 = v119;

  v86(v123, 0);
  v90 = sub_26738111C();
  v92 = v91;
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v92;
  *v92 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000026, 0x8000000267464140, v93);
  *v92 = v120;

  v90(v123, 0);
  v94 = sub_26738111C();
  v96 = v95;
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *v96;
  *v96 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000002CLL, 0x8000000267464170, v97);
  *v96 = v121;

  v94(v123, 0);
  v98 = sub_26738111C();
  v100 = v99;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v100;
  *v100 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000002CLL, 0x80000002674641A0, v101);
  *v100 = v122;

  return v98(v123, 0);
}

uint64_t sub_267124C48(uint64_t a1)
{
  v2 = sub_267124D4C(&qword_2800F55D8, &protocol conformance descriptor for NLXSchemaCDMRequestFailureCode);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267124CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267124D4C(&qword_2800F55D8, &protocol conformance descriptor for NLXSchemaCDMRequestFailureCode);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267124D4C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMRequestFailureCode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMRequestStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v18 = *(v1 - 8);
  v19 = v1;
  MEMORY[0x28223BE20](v1);
  v17 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v16 = "iri.nlx.CDMRequestStarted";
  sub_266ECB294(0, &qword_2800F5540, 0x277D58FB0);
  sub_266ECAF2C(&qword_2800F5548, &qword_2800F5540, 0x277D58FB0, &protocol conformance descriptor for NLXSchemaCDMTurnInput);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, v16 | 0x8000000000000000);
  v9(v21, 0);
  type metadata accessor for NLXSchemaCDMServiceGraphName(0);
  sub_2671252D0();
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x8000000267463050);
  v10(v21, 0);
  (*(v18 + 104))(v17, *MEMORY[0x277D3E530], v19);
  v21[0] = 1;
  sub_26738114C();
  v8(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x80000002674206B0);
  v11(v21, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v20, 0xD000000000000014, 0x80000002674206B0);
  if (!(*(v7 + 48))(v14, 1, v6))
  {
    sub_266ECB128(&unk_287889598);
    sub_26738115C();
  }

  (v13)(v20, 0);
  return v12(v21, 0);
}

uint64_t sub_26712520C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267125270(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671252D0()
{
  result = qword_2800F5308;
  if (!qword_2800F5308)
  {
    type metadata accessor for NLXSchemaCDMServiceGraphName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5308);
  }

  return result;
}

uint64_t static NLXSchemaCDMRewriteType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267464250, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x8000000267464270, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000012, 0x8000000267464290, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000012, 0x80000002674642B0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000012, 0x80000002674642D0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267125668(uint64_t a1)
{
  v2 = sub_26712576C(&qword_2800F55E0, &protocol conformance descriptor for NLXSchemaCDMRewriteType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671256D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26712576C(&qword_2800F55E0, &protocol conformance descriptor for NLXSchemaCDMRewriteType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26712576C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLXSchemaCDMRewriteType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static NLXSchemaCDMServiceContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F55E8, 0x277D58EC0);
  sub_266ECAF2C(&qword_2800F55F0, &qword_2800F55E8, 0x277D58EC0, &protocol conformance descriptor for NLXSchemaCDMServiceStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F55F8, 0x277D58E90);
  sub_266ECAF2C(&qword_2800F5600, &qword_2800F55F8, 0x277D58E90, &protocol conformance descriptor for NLXSchemaCDMServiceEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F5608, 0x277D58E98);
  sub_266ECAF2C(&qword_2800F5610, &qword_2800F5608, 0x277D58E98, &protocol conformance descriptor for NLXSchemaCDMServiceFailed);
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
  v13(v25, 0);
  sub_266ECB128(&unk_2878895C8);
  return sub_2673811CC();
}

uint64_t sub_267125DA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267125E04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static NLXSchemaCDMServiceEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671260F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267126154(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671261B8()
{
  result = qword_2800F5600;
  if (!qword_2800F5600)
  {
    sub_267126210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5600);
  }

  return result;
}

unint64_t sub_267126210()
{
  result = qword_2800F55F8;
  if (!qword_2800F55F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F55F8);
  }

  return result;
}

uint64_t static NLXSchemaCDMServiceFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for NLXSchemaCDMServiceFailureCode(0);
  sub_26712668C(&qword_2800F5628, type metadata accessor for NLXSchemaCDMServiceFailureCode, &protocol conformance descriptor for NLXSchemaCDMServiceFailureCode);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 1701080931, 0xE400000000000000);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E508], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v10(v14, 0);
}

uint64_t sub_267126580(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671265E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26712668C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671266D4()
{
  result = qword_2800F5608;
  if (!qword_2800F5608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F5608);
  }

  return result;
}