unint64_t sub_1D191DFBC()
{
  result = qword_1EC646F30;
  if (!qword_1EC646F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F30);
  }

  return result;
}

uint64_t __swift_memcpy5_2(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1D191E034(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 5))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D191E07C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D191E124()
{
  result = qword_1EC646F38;
  if (!qword_1EC646F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F38);
  }

  return result;
}

unint64_t sub_1D191E17C()
{
  result = qword_1EC646F40;
  if (!qword_1EC646F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F40);
  }

  return result;
}

unint64_t sub_1D191E1D4()
{
  result = qword_1EC646F48;
  if (!qword_1EC646F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F48);
  }

  return result;
}

unint64_t sub_1D191E22C()
{
  result = qword_1EC646F50;
  if (!qword_1EC646F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F50);
  }

  return result;
}

unint64_t sub_1D191E284()
{
  result = qword_1EC646F58;
  if (!qword_1EC646F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F58);
  }

  return result;
}

unint64_t sub_1D191E2DC()
{
  result = qword_1EC646F60;
  if (!qword_1EC646F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F60);
  }

  return result;
}

unint64_t sub_1D191E334()
{
  result = qword_1EC646F68;
  if (!qword_1EC646F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F68);
  }

  return result;
}

unint64_t sub_1D191E38C()
{
  result = qword_1EC646F70;
  if (!qword_1EC646F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F70);
  }

  return result;
}

unint64_t sub_1D191E3E4()
{
  result = qword_1EC646F78;
  if (!qword_1EC646F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F78);
  }

  return result;
}

unint64_t sub_1D191E43C()
{
  result = qword_1EC646F80;
  if (!qword_1EC646F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F80);
  }

  return result;
}

unint64_t sub_1D191E494()
{
  result = qword_1EC646F88;
  if (!qword_1EC646F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F88);
  }

  return result;
}

unint64_t sub_1D191E4EC()
{
  result = qword_1EC646F90;
  if (!qword_1EC646F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F90);
  }

  return result;
}

unint64_t sub_1D191E544()
{
  result = qword_1EC646F98;
  if (!qword_1EC646F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F98);
  }

  return result;
}

unint64_t sub_1D191E59C()
{
  result = qword_1EC646FA0;
  if (!qword_1EC646FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646FA0);
  }

  return result;
}

unint64_t sub_1D191E5F4()
{
  result = qword_1EC646FA8;
  if (!qword_1EC646FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646FA8);
  }

  return result;
}

uint64_t sub_1D191E648(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001D1EBE380 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D1EBE3C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x59586F5465766F6DLL && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D1EBE3E0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D191E7BC(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4CF0;

  return sub_1D19D6C8C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D191E8D4(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4CF0;

  return sub_1D19D6C8C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D191E9D4(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4CF0;

  return sub_1D19D6C8C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D191EAD4(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4CF0;

  return sub_1D19D6C8C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D191EBD4(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4CF0;

  return sub_1D19D6C8C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D191ECD4(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4BFC;

  return sub_1D19D6F24(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D191EDD4(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4CF0;

  return sub_1D19D6C8C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D191EED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D191EF3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D191EF9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_75Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D191F090(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4CF0;

  return sub_1D19D6C8C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_79Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t StaticRVCClusterGroup.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for StaticRVCClusterGroup(uint64_t a1)
{
  result = qword_1EE07C3D0;
  if (!qword_1EE07C3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticRVCClusterGroup.runningMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticRVCClusterGroup(0) + 24);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

void StaticRVCClusterGroup.cleaningMode.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StaticRVCClusterGroup(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_1D191F3B0(v4, v5, v6, v7);
}

void sub_1D191F3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }
}

uint64_t StaticRVCClusterGroup.error.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StaticRVCClusterGroup.allStates.getter()
{
  type metadata accessor for StaticRVCClusterGroup(0);
}

uint64_t StaticRVCClusterGroup.allRunningModes.getter()
{
  type metadata accessor for StaticRVCClusterGroup(0);
}

uint64_t StaticRVCClusterGroup.allCleaningModes.getter()
{
  type metadata accessor for StaticRVCClusterGroup(0);
}

uint64_t StaticRVCClusterGroup.serviceArea.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StaticRVCClusterGroup(0) + 60));
  v4 = v3[6];
  v6 = v3[4];
  v19 = v3[5];
  v5 = v19;
  v20[0] = v4;
  v7 = v3[4];
  v9 = v3[2];
  v17 = v3[3];
  v8 = v17;
  v18 = v7;
  v10 = v3[1];
  v16[0] = *v3;
  v11 = v3[2];
  v12 = *v3;
  v16[1] = v3[1];
  v16[2] = v11;
  *(a1 + 109) = *(v3 + 109);
  v13 = v3[6];
  *(a1 + 80) = v5;
  *(a1 + 96) = v13;
  *(a1 + 48) = v8;
  *(a1 + 64) = v6;
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
  *(v20 + 13) = *(v3 + 109);
  *a1 = v12;
  return sub_1D1741C08(v16, v15, &qword_1EC646FD0, &qword_1D1E841D0);
}

__n128 StaticRVCClusterGroup.init(endpointPath:state:runningMode:cleaningMode:serviceArea:error:allStates:allRunningModes:allCleaningModes:isGoHomeCommandSupported:supportsChangingRunModeWhileRunning:supportsChangingCleanModeWhileRunning:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, __int16 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, char a13)
{
  v17 = *a2;
  v19 = *a3;
  v18 = a3[1];
  v20 = *a6;
  sub_1D191F714(a1, a9);
  v21 = type metadata accessor for StaticRVCClusterGroup(0);
  *(a9 + v21[5]) = v17;
  v22 = a9 + v21[6];
  *v22 = v19;
  *(v22 + 8) = v18;
  *(v22 + 16) = *(a3 + 1);
  v23 = (a9 + v21[7]);
  v24 = a4[1];
  *v23 = *a4;
  v23[1] = v24;
  *(a9 + v21[8]) = v20;
  *(a9 + v21[9]) = a7;
  *(a9 + v21[10]) = a8;
  *(a9 + v21[11]) = a10;
  *(a9 + v21[12]) = a11;
  *(a9 + v21[13]) = a12;
  *(a9 + v21[14]) = a13;
  v25 = a9 + v21[15];
  v26 = *(a5 + 80);
  *(v25 + 64) = *(a5 + 64);
  *(v25 + 80) = v26;
  *(v25 + 96) = *(a5 + 96);
  *(v25 + 109) = *(a5 + 109);
  v27 = *(a5 + 16);
  *v25 = *a5;
  *(v25 + 16) = v27;
  result = *(a5 + 32);
  v29 = *(a5 + 48);
  *(v25 + 32) = result;
  *(v25 + 48) = v29;
  return result;
}

uint64_t sub_1D191F714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndpointPath(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D191F794(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000025;
    if (a1 != 10)
    {
      v6 = 0x4165636976726573;
    }

    if (a1 == 9)
    {
      v6 = 0xD000000000000023;
    }

    v7 = 0x696E6E75526C6C61;
    v8 = 0xD000000000000010;
    if (a1 != 7)
    {
      v8 = 0xD000000000000018;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746E696F70646E65;
    v2 = 0x676E696E61656C63;
    v3 = 0x726F727265;
    if (a1 != 4)
    {
      v3 = 0x65746174536C6C61;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6574617473;
    if (a1 != 1)
    {
      v4 = 0x4D676E696E6E7572;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D191F94C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D192F000(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D191F974(uint64_t a1)
{
  v2 = sub_1D192CD48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D191F9B0(uint64_t a1)
{
  v2 = sub_1D192CD48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticRVCClusterGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FD8, &qword_1D1E841D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D192CD48();
  sub_1D1E6930C();
  LOBYTE(v36) = 0;
  type metadata accessor for EndpointPath(0);
  sub_1D192F8C4(&qword_1EC646B18, type metadata accessor for EndpointPath, &protocol conformance descriptor for EndpointPath);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticRVCClusterGroup(0);
    LOBYTE(v36) = *(v3 + v9[5]);
    LOBYTE(v29) = 1;
    sub_1D192CD9C();
    sub_1D1E68F1C();
    v10 = (v3 + v9[6]);
    v11 = *(v10 + 2);
    v12 = *(v10 + 3);
    v36 = *v10;
    *&v37 = v11;
    *(&v37 + 1) = v12;
    LOBYTE(v29) = 2;
    sub_1D192CDF0();

    sub_1D1E68F1C();

    v13 = (v3 + v9[7]);
    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[3];
    *&v36 = *v13;
    *(&v36 + 1) = v14;
    *&v37 = v15;
    *(&v37 + 1) = v16;
    LOBYTE(v29) = 3;
    sub_1D191F3B0(v36, v14, v15, v16);
    sub_1D192CE44();
    sub_1D1E68E5C();
    sub_1D192F928(v36, *(&v36 + 1), v37, *(&v37 + 1));
    LOWORD(v36) = *(v3 + v9[8]);
    LOBYTE(v29) = 4;
    sub_1D192CE98();
    sub_1D1E68F1C();
    *&v36 = *(v3 + v9[9]);
    LOBYTE(v29) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647008, &qword_1D1E841E0);
    sub_1D192CEEC();
    sub_1D1E68F1C();
    *&v36 = *(v3 + v9[10]);
    LOBYTE(v29) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647018, &qword_1D1E841E8);
    sub_1D192CF70();
    sub_1D1E68F1C();
    *&v36 = *(v3 + v9[11]);
    LOBYTE(v29) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647028, &qword_1D1E841F0);
    sub_1D192CFF4();
    sub_1D1E68E5C();
    LOBYTE(v36) = 8;
    sub_1D1E68EDC();
    LOBYTE(v36) = 9;
    sub_1D1E68EDC();
    v43[0] = 10;
    sub_1D1E68EDC();
    v17 = (v3 + v9[15]);
    v18 = v17[5];
    v19 = v17[3];
    v40 = v17[4];
    v41 = v18;
    v20 = v17[5];
    *v42 = v17[6];
    v21 = v17[1];
    v36 = *v17;
    v37 = v21;
    v22 = v17[3];
    v24 = *v17;
    v23 = v17[1];
    v38 = v17[2];
    v39 = v22;
    v33 = v40;
    v34 = v20;
    v35[0] = v17[6];
    v29 = v24;
    v30 = v23;
    *&v42[13] = *(v17 + 109);
    *(v35 + 13) = *(v17 + 109);
    v31 = v38;
    v32 = v19;
    v28 = 11;
    sub_1D1741C08(&v36, v26, &qword_1EC646FD0, &qword_1D1E841D0);
    sub_1D192D078();
    sub_1D1E68E5C();
    v26[4] = v33;
    v26[5] = v34;
    *v27 = v35[0];
    *&v27[13] = *(v35 + 13);
    v26[0] = v29;
    v26[1] = v30;
    v26[2] = v31;
    v26[3] = v32;
    sub_1D1741A30(v26, &qword_1EC646FD0, &qword_1D1E841D0);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticRVCClusterGroup.hash(into:)(__int128 *a1)
{
  sub_1D1E66A7C();
  sub_1D192F8C4(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v1 + *(v3 + 20)));
  sub_1D1E6923C();
  v4 = type metadata accessor for StaticRVCClusterGroup(0);
  MEMORY[0x1D3892850](*(v1 + v4[5]));
  v5 = (v1 + v4[6]);
  v6 = v5[3];
  MEMORY[0x1D3892850](*v5);
  sub_1D1E678EC();
  sub_1D176D34C(a1, v6);
  v7 = (v1 + v4[7]);
  if (v7[2])
  {
    v8 = v7[3];
    v9 = *v7;
    sub_1D1E6922C();
    MEMORY[0x1D3892850](v9);
    sub_1D1E678EC();
    sub_1D176D34C(a1, v8);
  }

  else
  {
    sub_1D1E6922C();
  }

  if (*(v1 + v4[8] + 1))
  {
    if (*(v1 + v4[8] + 1) == 1)
    {
      MEMORY[0x1D3892850](1);
      goto LABEL_10;
    }

    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1D3892850](v10);
LABEL_10:
  sub_1D1E6922C();
  sub_1D1771CBC();
  sub_1D176DA04(a1, *(v1 + v4[10]));
  v11 = *(v1 + v4[11]);
  sub_1D1E6922C();
  if (v11)
  {
    sub_1D17705AC(a1, v11);
  }

  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  v12 = (v1 + v4[15]);
  v13 = *v12;
  v14 = *(v12 + 7);
  v15 = *(v12 + 11);
  v32 = *(v12 + 9);
  v33[0] = v15;
  *(v33 + 13) = *(v12 + 101);
  v16 = *(v12 + 3);
  v28 = *(v12 + 1);
  v29 = v16;
  v30 = *(v12 + 5);
  v31 = v14;
  if (!v13)
  {
    return sub_1D1E6922C();
  }

  *&v18[56] = *(v12 + 7);
  *&v18[72] = *(v12 + 9);
  *&v18[88] = *(v12 + 11);
  *&v18[101] = *(v12 + 101);
  *&v18[8] = *(v12 + 1);
  *&v18[24] = *(v12 + 3);
  *&v18[40] = *(v12 + 5);
  *v18 = v13;
  sub_1D1E6922C();
  v23 = v31;
  v24 = v32;
  v25[0] = v33[0];
  *(v25 + 13) = *(v33 + 13);
  v20 = v28;
  v21 = v29;
  v19 = v13;
  v22 = v30;
  sub_1D192D0CC(&v19, v26);
  ServiceArea.hash(into:)(a1);
  v26[4] = *&v18[64];
  v26[5] = *&v18[80];
  v27[0] = *&v18[96];
  *(v27 + 13) = *&v18[109];
  v26[0] = *v18;
  v26[1] = *&v18[16];
  v26[2] = *&v18[32];
  v26[3] = *&v18[48];
  return sub_1D192D128(v26);
}

uint64_t StaticRVCClusterGroup.hashValue.getter()
{
  sub_1D1E6920C();
  StaticRVCClusterGroup.hash(into:)(v1);
  return sub_1D1E6926C();
}

void StaticRVCClusterGroup.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647040, &unk_1D1E841F8);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v21 - v6;
  v8 = type metadata accessor for StaticRVCClusterGroup(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D192CD48();
  v26 = v7;
  sub_1D1E692FC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = v23;
    v21 = a1;
    LOBYTE(v27) = 0;
    sub_1D192F8C4(&qword_1EC646B80, type metadata accessor for EndpointPath, &protocol conformance descriptor for EndpointPath);
    v12 = v24;
    sub_1D1E68D7C();
    sub_1D191F714(v12, v10);
    v34 = 1;
    sub_1D192D17C();
    sub_1D1E68D7C();
    v10[v8[5]] = v27;
    v34 = 2;
    sub_1D192D1D0();
    sub_1D1E68D7C();
    v13 = &v10[v8[6]];
    v14 = v28;
    *v13 = v27;
    *(v13 + 1) = v14;
    v34 = 3;
    sub_1D192D224();
    sub_1D1E68CBC();
    v15 = &v10[v8[7]];
    v16 = v28;
    *v15 = v27;
    *(v15 + 1) = v16;
    v34 = 4;
    sub_1D192D278();
    sub_1D1E68D7C();
    *&v10[v8[8]] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647008, &qword_1D1E841E0);
    v34 = 5;
    sub_1D192D2CC();
    sub_1D1E68D7C();
    *&v10[v8[9]] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647018, &qword_1D1E841E8);
    v34 = 6;
    sub_1D192D350();
    sub_1D1E68D7C();
    *&v10[v8[10]] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647028, &qword_1D1E841F0);
    v34 = 7;
    sub_1D192D3D4();
    sub_1D1E68CBC();
    *&v10[v8[11]] = v27;
    LOBYTE(v27) = 8;
    v10[v8[12]] = sub_1D1E68D3C() & 1;
    LOBYTE(v27) = 9;
    v10[v8[13]] = sub_1D1E68D3C() & 1;
    LOBYTE(v27) = 10;
    v10[v8[14]] = sub_1D1E68D3C() & 1;
    v34 = 11;
    sub_1D192D458();
    sub_1D1E68CBC();
    (*(v11 + 8))(v26, v25);
    v17 = &v10[v8[15]];
    v18 = v32;
    *(v17 + 4) = v31;
    *(v17 + 5) = v18;
    *(v17 + 6) = v33[0];
    *(v17 + 109) = *(v33 + 13);
    v19 = v28;
    *v17 = v27;
    *(v17 + 1) = v19;
    v20 = v30;
    *(v17 + 2) = v29;
    *(v17 + 3) = v20;
    sub_1D192DD58(v10, v22, type metadata accessor for StaticRVCClusterGroup);
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_1D192DCF8(v10, type metadata accessor for StaticRVCClusterGroup);
  }
}

uint64_t sub_1D1920B40()
{
  sub_1D1E6920C();
  StaticRVCClusterGroup.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1920B84(uint64_t a1)
{
  sub_1D1E6920C();
  StaticRVCClusterGroup.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.tileStatusAttributePaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433D8, &qword_1D1E71850);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D1E6F900;
  *(v1 + 32) = 24;
  *(v1 + 36) = 4;
  *(v1 + 40) = 24;
  *(v1 + 44) = 5;
  *(v1 + 48) = 25;
  *(v1 + 52) = 1;
  v2 = v1;
  v5 = v1;
  if (!*(v0 + *(type metadata accessor for StaticRVCClusterGroup(0) + 60)))
  {
    return v2;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E6F900;
  *(inited + 32) = 27;
  *(inited + 36) = 5;
  *(inited + 40) = 27;
  *(inited + 44) = 2;
  *(inited + 48) = 27;
  *(inited + 52) = 3;
  sub_1D17A4A08(inited);
  return v5;
}

uint64_t StaticRVCClusterGroup.RunMode.label.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

BOOL StaticRVCClusterGroup.RunMode.isIdle.getter()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v2 = sub_1D1E6926C();
  v3 = -1 << *(v1 + 32);
  v4 = v2 & ~v3;
  if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return 0;
  }

  v5 = ~v3;
  do
  {
    v6 = *(*(v1 + 48) + v4);
    result = v6 == 64;
    if (v6 == 64)
    {
      break;
    }

    v4 = (v4 + 1) & v5;
  }

  while (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  return result;
}

BOOL StaticRVCClusterGroup.RunMode.isCleaning.getter()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v2 = sub_1D1E6926C();
  v3 = -1 << *(v1 + 32);
  v4 = v2 & ~v3;
  if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return 0;
  }

  v5 = ~v3;
  do
  {
    v6 = *(*(v1 + 48) + v4);
    result = v6 == 65;
    if (v6 == 65)
    {
      break;
    }

    v4 = (v4 + 1) & v5;
  }

  while (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  return result;
}

BOOL StaticRVCClusterGroup.RunMode.isMapping.getter()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v2 = sub_1D1E6926C();
  v3 = -1 << *(v1 + 32);
  v4 = v2 & ~v3;
  if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return 0;
  }

  v5 = ~v3;
  do
  {
    v6 = *(*(v1 + 48) + v4);
    result = v6 == 66;
    if (v6 == 66)
    {
      break;
    }

    v4 = (v4 + 1) & v5;
  }

  while (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  return result;
}

uint64_t StaticRVCClusterGroup.RunMode.init(id:label:tags:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1D1920F9C(uint64_t a1)
{
  v2 = sub_1D192D4AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1920FD8(uint64_t a1)
{
  v2 = sub_1D192D4AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL StaticRVCClusterGroup.CleanMode.isVacuum.getter()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v2 = sub_1D1E6926C();
  v3 = v1 + 56;
  v4 = -1 << *(v1 + 32);
  v5 = v2 & ~v4;
  if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
LABEL_6:
    if (*(v1 + 16))
    {
      sub_1D1E6920C();
      sub_1D1E6923C();
      sub_1D1E678EC();
      v7 = sub_1D1E6926C();
      v8 = -1 << *(v1 + 32);
      v9 = v7 & ~v8;
      if ((*(v3 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        v10 = ~v8;
        do
        {
          v11 = *(*(v1 + 48) + v9) & 0xBF;
          result = v11 == 131;
          if (v11 == 131)
          {
            break;
          }

          v9 = (v9 + 1) & v10;
        }

        while (((*(v3 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
        return result;
      }
    }

    return 0;
  }

  v6 = ~v4;
  while ((*(*(v1 + 48) + v5) & 0xBF) != 0x81)
  {
    v5 = (v5 + 1) & v6;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  return 1;
}

uint64_t StaticRVCClusterGroup.CleanMode.isVacuumOnly.getter()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v2 = sub_1D1E6926C();
  v3 = -1 << *(v1 + 32);
  v4 = v2 & ~v3;
  if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return 0;
  }

  v5 = ~v3;
  while ((*(*(v1 + 48) + v4) & 0xBF) != 0x81)
  {
    v4 = (v4 + 1) & v5;
    if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1D1929D78(&unk_1F4D65238, v1);
}

BOOL StaticRVCClusterGroup.CleanMode.isMop.getter()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v2 = sub_1D1E6926C();
  v3 = v1 + 56;
  v4 = -1 << *(v1 + 32);
  v5 = v2 & ~v4;
  if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
LABEL_6:
    if (*(v1 + 16))
    {
      sub_1D1E6920C();
      sub_1D1E6923C();
      sub_1D1E678EC();
      v7 = sub_1D1E6926C();
      v8 = -1 << *(v1 + 32);
      v9 = v7 & ~v8;
      if ((*(v3 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        v10 = ~v8;
        do
        {
          v11 = *(*(v1 + 48) + v9) & 0xBF;
          result = v11 == 131;
          if (v11 == 131)
          {
            break;
          }

          v9 = (v9 + 1) & v10;
        }

        while (((*(v3 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
        return result;
      }
    }

    return 0;
  }

  v6 = ~v4;
  while ((*(*(v1 + 48) + v5) & 0xBF) != 0x82)
  {
    v5 = (v5 + 1) & v6;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  return 1;
}

uint64_t StaticRVCClusterGroup.CleanMode.isMopOnly.getter()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v2 = sub_1D1E6926C();
  v3 = -1 << *(v1 + 32);
  v4 = v2 & ~v3;
  if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return 0;
  }

  v5 = ~v3;
  while ((*(*(v1 + 48) + v4) & 0xBF) != 0x82)
  {
    v4 = (v4 + 1) & v5;
    if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1D1929D78(&unk_1F4D65260, v1);
}

BOOL StaticRVCClusterGroup.CleanMode.isVacuumAndMop.getter()
{
  v1 = *(v0 + 24);
  if (sub_1D192D6B0(&unk_1F4D62178, v1))
  {
    return 1;
  }

  if (!*(v1 + 16))
  {
    return 0;
  }

  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v3 = sub_1D1E6926C();
  v4 = -1 << *(v1 + 32);
  v5 = v3 & ~v4;
  if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  do
  {
    v7 = *(*(v1 + 48) + v5) & 0xBF;
    result = v7 == 131;
    if (v7 == 131)
    {
      break;
    }

    v5 = (v5 + 1) & v6;
  }

  while (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  return result;
}

void *StaticRVCClusterGroup.CleanMode.primaryTags.getter()
{
  v22[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 24);
  v2 = *(v1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = 8 * v4;

  if (v3 > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](v6);
    bzero(v22 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0), v5);
    v7 = 0;
    v8 = 0;
    v9 = 1 << *(v1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v1 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_12:
      v17 = *(*(v1 + 48) + v14);
      if (v17 < 0 && (v17 & 0x3Fu) - 1 <= 1)
      {
        *(v22 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v14;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
          return sub_1D19E1A90((v22 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)), v4, v7, v1);
        }
      }
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_1D19E1A90((v22 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)), v4, v7, v1);
      }

      v16 = *(v1 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v20 = swift_slowAlloc();

  v21 = sub_1D1929CE8(v20, v4, v1, sub_1D192190C);
  swift_bridgeObjectRelease_n();
  MEMORY[0x1D3893640](v20, -1, -1);
  return v21;
}

void *StaticRVCClusterGroup.CleanMode.secondaryTags.getter()
{
  v22[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 24);
  v2 = *(v1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = 8 * v4;

  if (v3 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](v6);
    bzero(v22 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0), v5);
    v7 = 0;
    v8 = 0;
    v9 = 1 << *(v1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v1 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_12:
      v17 = *(*(v1 + 48) + v14);
      if ((v17 & 0x80000000) == 0 || (v17 & 0x3F) != 1 && (v17 & 0x3E) != 2)
      {
        *(v22 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v14;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
          return sub_1D19E1A90((v22 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)), v4, v7, v1);
        }
      }
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_1D19E1A90((v22 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)), v4, v7, v1);
      }

      v16 = *(v1 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v20 = swift_slowAlloc();

  v21 = sub_1D1929CE8(v20, v4, v1, sub_1D1921B9C);
  swift_bridgeObjectRelease_n();
  MEMORY[0x1D3893640](v20, -1, -1);
  return v21;
}

uint64_t _s13HomeDataModel21StaticRVCClusterGroupV7RunModeV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a2[3];
  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  return sub_1D17A7B94(v2, v3);
}

uint64_t sub_1D1921C40(uint64_t a1)
{
  v2 = sub_1D192D860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1921C7C(uint64_t a1)
{
  v2 = sub_1D192D860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1921CFC(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v17 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  v11 = v5[1];
  v12 = v5[3];
  v16[1] = v5[2];
  v16[2] = v11;
  v16[0] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_1D1E6930C();
  v22 = 0;
  v13 = v18;
  sub_1D1E68F0C();
  if (!v13)
  {
    v15 = v16[0];
    v21 = 1;
    sub_1D1E68ECC();
    v19 = v15;
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647098, &qword_1D1E84210);
    sub_1D192D500();
    sub_1D1E68F1C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t _s13HomeDataModel21StaticRVCClusterGroupV7RunModeV4hash4intoys6HasherVz_tF_0(__int128 *a1)
{
  v3 = v1[3];
  MEMORY[0x1D3892850](*v1);
  sub_1D1E678EC();

  return sub_1D176D34C(a1, v3);
}

uint64_t _s13HomeDataModel21StaticRVCClusterGroupV7RunModeV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[3];
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  sub_1D1E678EC();
  sub_1D176D34C(v4, v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1922028@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v11 = &v19 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1D1E692FC();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v20;
  v25 = 0;
  v19 = sub_1D1E68D6C();
  v24 = 1;
  v13 = sub_1D1E68D2C();
  v15 = v14;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647098, &qword_1D1E84210);
  v23 = 2;
  sub_1D192D5D8();
  sub_1D1E68D7C();
  (*(v9 + 8))(v11, v21);
  v17 = v22;
  *v12 = v19;
  v12[1] = v16;
  v12[2] = v15;
  v12[3] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D19222A0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000010;
    v7 = 0x676E697461647075;
    if (a1 != 10)
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x64656B636F64;
    v9 = 0x676E697974706D65;
    if (a1 != 7)
    {
      v9 = 0x676E696E61656C63;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x676E696E6E7572;
    v2 = 0x726F727265;
    v3 = 0x43676E696B656573;
    if (a1 != 4)
    {
      v3 = 0x676E696772616863;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x646570706F7473;
    if (a1 != 1)
    {
      v4 = 0x646573756170;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D192243C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[3];
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v2);
  sub_1D1E678EC();
  sub_1D176D34C(v5, v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D19224E0(uint64_t a1)
{
  v2 = sub_1D192DB00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D192251C(uint64_t a1)
{
  v2 = sub_1D192DB00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1922558(uint64_t a1)
{
  v2 = sub_1D192DA04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1922594(uint64_t a1)
{
  v2 = sub_1D192DA04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19225D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D192F4EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1922600(uint64_t a1)
{
  v2 = sub_1D192D8B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D192263C(uint64_t a1)
{
  v2 = sub_1D192D8B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1922678(uint64_t a1)
{
  v2 = sub_1D192DAAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19226B4(uint64_t a1)
{
  v2 = sub_1D192DAAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19226F0(uint64_t a1)
{
  v2 = sub_1D192DA58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D192272C(uint64_t a1)
{
  v2 = sub_1D192DA58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1922768(uint64_t a1)
{
  v2 = sub_1D192DBA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19227A4(uint64_t a1)
{
  v2 = sub_1D192DBA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19227E0(uint64_t a1)
{
  v2 = sub_1D192D9B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D192281C(uint64_t a1)
{
  v2 = sub_1D192D9B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1922858(uint64_t a1)
{
  v2 = sub_1D192DBFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1922894(uint64_t a1)
{
  v2 = sub_1D192DBFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19228D0(uint64_t a1)
{
  v2 = sub_1D192DCA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D192290C(uint64_t a1)
{
  v2 = sub_1D192DCA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1922948(uint64_t a1)
{
  v2 = sub_1D192DB54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1922984(uint64_t a1)
{
  v2 = sub_1D192DB54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19229C0(uint64_t a1)
{
  v2 = sub_1D192DC50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19229FC(uint64_t a1)
{
  v2 = sub_1D192DC50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1922A38(uint64_t a1)
{
  v2 = sub_1D192D908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1922A74(uint64_t a1)
{
  v2 = sub_1D192D908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1922AB0(uint64_t a1)
{
  v2 = sub_1D192D95C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1922AEC(uint64_t a1)
{
  v2 = sub_1D192D95C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticRVCClusterGroup.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6470E0, &qword_1D1E84230);
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6470E8, &qword_1D1E84238);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6470F0, &qword_1D1E84240);
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6470F8, &qword_1D1E84248);
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647100, &qword_1D1E84250);
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647108, &qword_1D1E84258);
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v41 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647110, &qword_1D1E84260);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v41 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647118, &qword_1D1E84268);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v41 - v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647120, &qword_1D1E84270);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v41 - v17;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647128, &qword_1D1E84278);
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v41 - v18;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647130, &qword_1D1E84280);
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647138, &qword_1D1E84288);
  v41 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - v22;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647140, &qword_1D1E84290);
  v24 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v26 = &v41 - v25;
  v27 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D192D8B4();
  v74 = v26;
  sub_1D1E6930C();
  v28 = (v24 + 8);
  if (v27 > 5)
  {
    if (v27 > 8)
    {
      if (v27 == 9)
      {
        v85 = 9;
        sub_1D192D9B0();
        v32 = v65;
        v34 = v74;
        v33 = v75;
        sub_1D1E68DFC();
        v36 = v66;
        v35 = v67;
      }

      else if (v27 == 10)
      {
        v86 = 10;
        sub_1D192D95C();
        v32 = v68;
        v34 = v74;
        v33 = v75;
        sub_1D1E68DFC();
        v36 = v69;
        v35 = v70;
      }

      else
      {
        v87 = 11;
        sub_1D192D908();
        v32 = v71;
        v34 = v74;
        v33 = v75;
        sub_1D1E68DFC();
        v36 = v72;
        v35 = v73;
      }
    }

    else if (v27 == 6)
    {
      v82 = 6;
      sub_1D192DAAC();
      v32 = v56;
      v34 = v74;
      v33 = v75;
      sub_1D1E68DFC();
      v36 = v57;
      v35 = v58;
    }

    else if (v27 == 7)
    {
      v83 = 7;
      sub_1D192DA58();
      v32 = v59;
      v34 = v74;
      v33 = v75;
      sub_1D1E68DFC();
      v36 = v60;
      v35 = v61;
    }

    else
    {
      v84 = 8;
      sub_1D192DA04();
      v32 = v62;
      v34 = v74;
      v33 = v75;
      sub_1D1E68DFC();
      v36 = v63;
      v35 = v64;
    }

    (*(v36 + 8))(v32, v35);
  }

  else if (v27 > 2)
  {
    if (v27 == 3)
    {
      v79 = 3;
      sub_1D192DBA8();
      v38 = v47;
      v34 = v74;
      v33 = v75;
      sub_1D1E68DFC();
      (*(v48 + 8))(v38, v49);
    }

    else if (v27 == 4)
    {
      v80 = 4;
      sub_1D192DB54();
      v37 = v50;
      v34 = v74;
      v33 = v75;
      sub_1D1E68DFC();
      (*(v51 + 8))(v37, v52);
    }

    else
    {
      v81 = 5;
      sub_1D192DB00();
      v40 = v53;
      v34 = v74;
      v33 = v75;
      sub_1D1E68DFC();
      (*(v54 + 8))(v40, v55);
    }
  }

  else if (v27)
  {
    if (v27 == 1)
    {
      v77 = 1;
      sub_1D192DC50();
      v29 = v74;
      v30 = v75;
      sub_1D1E68DFC();
      (*(v42 + 8))(v20, v43);
      return (*v28)(v29, v30);
    }

    v78 = 2;
    sub_1D192DBFC();
    v39 = v44;
    v34 = v74;
    v33 = v75;
    sub_1D1E68DFC();
    (*(v45 + 8))(v39, v46);
  }

  else
  {
    v76 = 0;
    sub_1D192DCA4();
    v34 = v74;
    v33 = v75;
    sub_1D1E68DFC();
    (*(v41 + 8))(v23, v21);
  }

  return (*v28)(v34, v33);
}

uint64_t StaticRVCClusterGroup.State.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.State.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471B0, &qword_1D1E84298);
  v81 = *(v3 - 8);
  v82 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v88 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471B8, &qword_1D1E842A0);
  v79 = *(v5 - 8);
  v80 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v55 - v6;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471C0, &qword_1D1E842A8);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v84 = &v55 - v7;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471C8, &qword_1D1E842B0);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v86 = &v55 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471D0, &qword_1D1E842B8);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v85 = &v55 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471D8, &qword_1D1E842C0);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v92 = &v55 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471E0, &qword_1D1E842C8);
  v70 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v91 = &v55 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471E8, &qword_1D1E842D0);
  v68 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v90 = &v55 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471F0, &qword_1D1E842D8);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v89 = &v55 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6471F8, &qword_1D1E842E0);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v83 = &v55 - v14;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647200, &qword_1D1E842E8);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647208, &qword_1D1E842F0);
  v60 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647210, &unk_1D1E842F8);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  v24 = a1[3];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1D192D8B4();
  v25 = v94;
  sub_1D1E692FC();
  if (!v25)
  {
    v57 = v19;
    v56 = v17;
    v58 = v16;
    v26 = v89;
    v27 = v90;
    v29 = v91;
    v28 = v92;
    v94 = v21;
    v30 = v93;
    v59 = v20;
    v31 = sub_1D1E68DDC();
    v32 = (2 * *(v31 + 16)) | 1;
    v96 = v31;
    v97 = v31 + 32;
    v98 = 0;
    v99 = v32;
    v33 = sub_1D18085C0();
    if (v33 != 12 && v98 == v99 >> 1)
    {
      v100 = v33;
      if (v33 > 5u)
      {
        if (v33 > 8u)
        {
          v42 = v59;
          if (v33 != 9)
          {
            v45 = v94;
            if (v33 == 10)
            {
              v101 = 10;
              sub_1D192D95C();
              v46 = v87;
              sub_1D1E68C4C();
              (*(v79 + 8))(v46, v80);
            }

            else
            {
              v101 = 11;
              sub_1D192D908();
              v54 = v88;
              sub_1D1E68C4C();
              (*(v81 + 8))(v54, v82);
            }

            (*(v45 + 8))(v23, v42);
            goto LABEL_33;
          }

          v101 = 9;
          sub_1D192D9B0();
          v51 = v84;
          sub_1D1E68C4C();
          v48 = v94;
          (*(v77 + 8))(v51, v78);
        }

        else
        {
          v42 = v59;
          if (v33 != 6)
          {
            v43 = v94;
            if (v33 == 7)
            {
              v101 = 7;
              sub_1D192DA58();
              v44 = v85;
              sub_1D1E68C4C();
              (*(v73 + 8))(v44, v74);
            }

            else
            {
              v101 = 8;
              sub_1D192DA04();
              v53 = v86;
              sub_1D1E68C4C();
              (*(v75 + 8))(v53, v76);
            }

            goto LABEL_31;
          }

          v101 = 6;
          sub_1D192DAAC();
          sub_1D1E68C4C();
          v48 = v94;
          (*(v71 + 8))(v28, v72);
        }

        (*(v48 + 8))(v23, v42);
      }

      else
      {
        if (v33 <= 2u)
        {
          if (v33)
          {
            if (v33 == 1)
            {
              v101 = 1;
              sub_1D192DC50();
              v34 = v58;
              v35 = v59;
              sub_1D1E68C4C();
              (*(v61 + 8))(v34, v62);
            }

            else
            {
              v101 = 2;
              sub_1D192DBFC();
              v52 = v83;
              v35 = v59;
              sub_1D1E68C4C();
              (*(v63 + 8))(v52, v64);
            }
          }

          else
          {
            v101 = 0;
            sub_1D192DCA4();
            v47 = v57;
            v35 = v59;
            sub_1D1E68C4C();
            (*(v60 + 8))(v47, v56);
          }

          (*(v94 + 8))(v23, v35);
          goto LABEL_33;
        }

        if (v33 != 3)
        {
          v43 = v94;
          v42 = v59;
          if (v33 == 4)
          {
            v101 = 4;
            sub_1D192DB54();
            sub_1D1E68C4C();
            (*(v68 + 8))(v27, v67);
          }

          else
          {
            v101 = 5;
            sub_1D192DB00();
            sub_1D1E68C4C();
            (*(v70 + 8))(v29, v69);
          }

LABEL_31:
          (*(v43 + 8))(v23, v42);
          goto LABEL_33;
        }

        v101 = 3;
        sub_1D192DBA8();
        v49 = v59;
        sub_1D1E68C4C();
        v50 = v94;
        (*(v65 + 8))(v26, v66);
        (*(v50 + 8))(v23, v49);
      }

LABEL_33:
      swift_unknownObjectRelease();
      *v30 = v100;
      return __swift_destroy_boxed_opaque_existential_1(v95);
    }

    v36 = sub_1D1E688EC();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
    *v38 = &type metadata for StaticRVCClusterGroup.State;
    v39 = v23;
    v40 = v59;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v94 + 8))(v39, v40);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v95);
}

uint64_t StaticRVCClusterGroup.firstIdleRunningMode.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for StaticRVCClusterGroup(0) + 40));
  v4 = 1 << *(v3 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (*(v3 + 48) + ((v9 << 11) | (32 * v11)));
    v13 = v12[3];
    if (*(v13 + 16))
    {
      v14 = *v12;
      v20 = v12[1];
      v15 = v12[2];
      sub_1D1E6920C();
      sub_1D1E6923C();

      sub_1D1E678EC();
      v16 = sub_1D1E6926C();
      v17 = -1 << *(v13 + 32);
      v18 = v16 & ~v17;
      if ((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v19 = ~v17;
        while (*(*(v13 + 48) + v18) != 64)
        {
          v18 = (v18 + 1) & v19;
          if (((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        *a1 = v14;
        a1[1] = v20;
        a1[2] = v15;
        a1[3] = v13;
        return result;
      }

LABEL_15:
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      *a1 = 0u;
      *(a1 + 1) = 0u;
      return result;
    }

    v6 = *(v3 + 56 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t StaticRVCClusterGroup.firstCleaningRunningMode.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for StaticRVCClusterGroup(0) + 40));
  v4 = 1 << *(v3 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (*(v3 + 48) + ((v9 << 11) | (32 * v11)));
    v13 = v12[3];
    if (*(v13 + 16))
    {
      v14 = *v12;
      v20 = v12[1];
      v15 = v12[2];
      sub_1D1E6920C();
      sub_1D1E6923C();

      sub_1D1E678EC();
      v16 = sub_1D1E6926C();
      v17 = -1 << *(v13 + 32);
      v18 = v16 & ~v17;
      if ((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v19 = ~v17;
        while (*(*(v13 + 48) + v18) != 65)
        {
          v18 = (v18 + 1) & v19;
          if (((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        *a1 = v14;
        a1[1] = v20;
        a1[2] = v15;
        a1[3] = v13;
        return result;
      }

LABEL_15:
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      *a1 = 0u;
      *(a1 + 1) = 0u;
      return result;
    }

    v6 = *(v3 + 56 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t StaticRVCClusterGroup.firstVacuumCleaningMode.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup(0);
  v4 = *(v1 + *(result + 44));
  if (v4 && (v5 = *(v4 + 16)) != 0)
  {
    v6 = 0;
    while (v6 < *(v4 + 16))
    {
      v7 = v4 + 32 + 32 * v6;
      v8 = *(v7 + 24);
      if (*(v8 + 16))
      {
        v14 = *v7;
        v9 = *(v7 + 16);
        sub_1D1E6920C();
        sub_1D1E6923C();

        sub_1D1E678EC();
        v10 = sub_1D1E6926C();
        v11 = -1 << *(v8 + 32);
        v12 = v10 & ~v11;
        if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while ((*(*(v8 + 48) + v12) & 0xBF) != 0x81)
          {
            v12 = (v12 + 1) & v13;
            if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          result = sub_1D1929D78(&unk_1F4D652B8, v8);
          if (result)
          {
            *a1 = v14;
            *(a1 + 16) = v9;
            *(a1 + 24) = v8;
            return result;
          }
        }

LABEL_5:
      }

      if (++v6 == v5)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t StaticRVCClusterGroup.firstMopCleaningMode.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup(0);
  v4 = *(v1 + *(result + 44));
  if (v4 && (v5 = *(v4 + 16)) != 0)
  {
    v6 = 0;
    while (v6 < *(v4 + 16))
    {
      v7 = v4 + 32 + 32 * v6;
      v8 = *(v7 + 24);
      if (*(v8 + 16))
      {
        v14 = *v7;
        v9 = *(v7 + 16);
        sub_1D1E6920C();
        sub_1D1E6923C();

        sub_1D1E678EC();
        v10 = sub_1D1E6926C();
        v11 = -1 << *(v8 + 32);
        v12 = v10 & ~v11;
        if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while ((*(*(v8 + 48) + v12) & 0xBF) != 0x82)
          {
            v12 = (v12 + 1) & v13;
            if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          result = sub_1D1929D78(&unk_1F4D652E0, v8);
          if (result)
          {
            *a1 = v14;
            *(a1 + 16) = v9;
            *(a1 + 24) = v8;
            return result;
          }
        }

LABEL_5:
      }

      if (++v6 == v5)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t StaticRVCClusterGroup.firstVacuumAndMopCleaningMode.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup(0);
  v4 = *(v1 + *(result + 44));
  if (v4 && (v14 = *(v4 + 16)) != 0)
  {
    v5 = 0;
    while (v5 < *(v4 + 16))
    {
      v6 = (v4 + 32 + 32 * v5);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6[3];

      result = sub_1D192D6B0(&unk_1F4D62178, v10);
      if (result)
      {
        goto LABEL_14;
      }

      if (*(v10 + 16))
      {
        sub_1D1E6920C();
        sub_1D1E6923C();
        sub_1D1E678EC();
        result = sub_1D1E6926C();
        v11 = -1 << *(v10 + 32);
        v12 = result & ~v11;
        if ((*(v10 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while ((*(*(v10 + 48) + v12) & 0xBF) != 0x83)
          {
            v12 = (v12 + 1) & v13;
            if (((*(v10 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_14:
          *a1 = v7;
          a1[1] = v8;
          a1[2] = v9;
          a1[3] = v10;
          return result;
        }
      }

LABEL_4:
      ++v5;

      if (v5 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

uint64_t StaticRVCClusterGroup.runMode(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup(0);
  v6 = 0;
  v7 = *(v2 + *(result + 40));
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = v6;
LABEL_10:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(v7 + 48);
    if (*(v15 + 32 * v14) == a1)
    {
      v16 = (v15 + 32 * v14);
      v17 = v16[2];
      v18 = v16[3];
      v19 = v16[1];
      *a2 = a1;
      a2[1] = v19;
      a2[2] = v17;
      a2[3] = v18;
    }
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      *a2 = 0u;
      *(a2 + 1) = 0u;
      return result;
    }

    v10 = *(v7 + 56 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

double StaticRVCClusterGroup.cleanMode(with:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + *(type metadata accessor for StaticRVCClusterGroup(0) + 44));
  if (v5)
  {
    v6 = (v5 + 32);
    v7 = *(v5 + 16) + 1;
    while (--v7)
    {
      v8 = v6 + 4;
      v9 = *v6;
      v6 += 4;
      if (v9 == a1)
      {
        v11 = *(v8 - 3);
        v10 = *(v8 - 2);
        v12 = *(v8 - 1);
        *a2 = a1;
        a2[1] = v11;
        a2[2] = v10;
        a2[3] = v12;

        return result;
      }
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

double StaticRVCClusterGroup.firstRunMode(with:)@<D0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v47 = a2;
  v4 = type metadata accessor for StaticRVCClusterGroup(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v44 = v2;
  v45 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v43[1] = v5;
  v8 = *(v2 + *(v5 + 40));
  v9 = 1 << *(v8 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v8 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = (*(v8 + 48) + ((v13 << 11) | (32 * v15)));
    v17 = v16[3];
    if (*(v17 + 16))
    {
      v18 = *v16;
      v46 = v16[1];
      v19 = v16[2];
      sub_1D1E6920C();
      sub_1D1E6923C();

      sub_1D1E678EC();
      v20 = sub_1D1E6926C();
      v21 = -1 << *(v17 + 32);
      v22 = v20 & ~v21;
      if ((*(v17 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        v24 = *(v17 + 48);
        while ((*(v24 + v22) & 0xC0) != 0x40 || (*(v24 + v22) & 0x3F) != v7)
        {
          v22 = (v22 + 1) & v23;
          if (((*(v17 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        v41 = v46;
        v40 = v47;
        *v47 = v18;
        v40[1] = v41;
        v40[2] = v19;
        v40[3] = v17;
        return result;
      }

LABEL_18:
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 56 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  if (qword_1EE07A0A8 == -1)
  {
    goto LABEL_20;
  }

LABEL_26:
  swift_once();
LABEL_20:
  v26 = sub_1D1E6709C();
  __swift_project_value_buffer(v26, qword_1EE07A0B0);
  v27 = v45;
  sub_1D192DD58(v44, v45, type metadata accessor for StaticRVCClusterGroup);
  v28 = sub_1D1E6707C();
  v29 = sub_1D1E6833C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v49[0] = v31;
    *v30 = 136315650;
    *(v30 + 4) = sub_1D1B1312C(0xD000000000000013, 0x80000001D1EBE400, v49);
    *(v30 + 12) = 2082;
    v48 = v7;
    v32 = sub_1D1E678BC();
    v34 = sub_1D1B1312C(v32, v33, v49);

    *(v30 + 14) = v34;
    *(v30 + 22) = 2082;
    sub_1D17859B8();
    v35 = sub_1D1E6817C();
    v37 = v36;
    sub_1D192DCF8(v27, type metadata accessor for StaticRVCClusterGroup);
    v38 = sub_1D1B1312C(v35, v37, v49);

    *(v30 + 24) = v38;
    _os_log_impl(&dword_1D16EC000, v28, v29, "%s Couldn't find a run mode that contained the specified tag: %{public}s allRunningModes: %{public}s'", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v31, -1, -1);
    MEMORY[0x1D3893640](v30, -1, -1);
  }

  else
  {

    sub_1D192DCF8(v27, type metadata accessor for StaticRVCClusterGroup);
  }

  v42 = v47;
  result = 0.0;
  *v47 = 0u;
  *(v42 + 1) = 0u;
  return result;
}

uint64_t sub_1D1925450()
{
  result = sub_1D179B598(&unk_1F4D5F480);
  qword_1EC646FC8 = result;
  return result;
}

uint64_t StaticRVCClusterGroup.representedClusterKinds.getter()
{
  if (qword_1EC642250 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC646FC8;
  v1 = type metadata accessor for StaticRVCClusterGroup(0);
  v2 = *(v0 + *(v1 + 44));
  if (v2 && *(v2 + 16))
  {

    sub_1D1761BE0(&v4, 26);
  }

  else
  {
  }

  if (*(v0 + *(v1 + 60)))
  {
    sub_1D1761BE0(&v5, 27);
  }

  return v6;
}

uint64_t StaticRVCClusterGroup.init(endpointPath:valueSource:)@<X0>(uint64_t a1@<X0>, int64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v171 = a3;
  v5 = type metadata accessor for EndpointPath(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ClusterPath(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v166 = &v150 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v150 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v167 = &v150 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v169 = &v150 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v168 = &v150 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v170 = &v150 - v24;
  v26 = *a2;
  v25 = a2[1];
  v27 = *(a1 + *(v6 + 32));
  v180 = *a2;
  v181 = v25;
  LOWORD(v182) = v27;
  BYTE2(v182) = 0;
  v183 = 0;
  v184 = 0;

  v28 = DescriptorClusterDecoder.availableClusterKinds.getter();
  if (qword_1EC642250 != -1)
  {
    swift_once();
  }

  if ((sub_1D192A600(v28, qword_1EC646FC8) & 1) == 0)
  {
    sub_1D192DCF8(a1, type metadata accessor for EndpointPath);

    swift_bridgeObjectRelease_n();
    goto LABEL_23;
  }

  v165 = v12;
  v163 = v8;
  v29 = v170;
  sub_1D192DD58(a1, v170, type metadata accessor for EndpointPath);
  *(v29 + *(v9 + 20)) = 24;
  v30 = v168;
  sub_1D192DD58(a1, v168, type metadata accessor for EndpointPath);
  *(v30 + *(v9 + 20)) = 25;
  v31 = v169;
  sub_1D192DD58(a1, v169, type metadata accessor for EndpointPath);
  *(v31 + *(v9 + 20)) = 26;
  v180 = v26;
  v181 = v25;
  v32 = sub_1D19268A4(v30);
  if (!v32)
  {

    swift_bridgeObjectRelease_n();
    sub_1D192DCF8(a1, type metadata accessor for EndpointPath);
    sub_1D192DCF8(v31, type metadata accessor for ClusterPath);
    sub_1D192DCF8(v30, type metadata accessor for ClusterPath);
    v53 = v29;
    goto LABEL_21;
  }

  v33 = v32;
  v164 = a1;
  v180 = v26;
  v181 = v25;
  v34 = sub_1D1927778(v30, "Couldn't get value for current run mode: (%{public}s path:'%{public}s'");
  if ((v34 & 0x10000) != 0)
  {

    swift_bridgeObjectRelease_n();
    sub_1D192DCF8(v164, type metadata accessor for EndpointPath);
    sub_1D192DCF8(v31, type metadata accessor for ClusterPath);
    sub_1D192DCF8(v30, type metadata accessor for ClusterPath);
    v53 = v170;
    goto LABEL_21;
  }

  v35 = 0;
  v36 = 1 << *(v33 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v33 + 56);
  v39 = (v36 + 63) >> 6;
  v40 = v34;
  v41 = v164;
  v42 = v165;
  while (v38)
  {
    v43 = v35;
LABEL_15:
    v44 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v45 = v44 | (v43 << 6);
    v46 = *(v33 + 48);
    if (*(v46 + 32 * v45) == v34)
    {
      v162 = v28;
      v47 = (v46 + 32 * v45);
      v48 = v47[2];
      v158 = v47[1];
      v49 = v47[3];
      v161 = v48;

      v160 = v49;

      v50 = v30;
      v51 = v167;
      sub_1D192DD58(v50, v167, type metadata accessor for ClusterPath);
      v52 = sub_1D192B170(65532, v51, v26, v25);
      sub_1D192DCF8(v51, type metadata accessor for ClusterPath);
      if ((v52 & 0x100000000) != 0)
      {
        if (qword_1EE07A0A8 == -1)
        {
          goto LABEL_25;
        }

        goto LABEL_116;
      }

      v151 = (v52 >> 16) & 1;
      goto LABEL_29;
    }
  }

  while (1)
  {
    v43 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v43 >= v39)
    {

      swift_bridgeObjectRelease_n();
      sub_1D192DCF8(v41, type metadata accessor for EndpointPath);
      sub_1D192DCF8(v31, type metadata accessor for ClusterPath);
      sub_1D192DCF8(v30, type metadata accessor for ClusterPath);
      sub_1D192DCF8(v170, type metadata accessor for ClusterPath);

      goto LABEL_23;
    }

    v38 = *(v33 + 56 + 8 * v43);
    ++v35;
    if (v38)
    {
      v35 = v43;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_106:
  v93 = v28;
  if (v35)
  {
    if (v35 == 1)
    {
      v89 = 5;
    }

    else
    {
      v89 = 6;
    }
  }

  else
  {
    v89 = 4;
  }

  while (v93)
  {
    v94 = v39;
    LODWORD(v165) = v89;
    v17 = (v93 + 56);
    v95 = 1 << *(v93 + 32);
    v96 = -1;
    if (v95 < 64)
    {
      v96 = ~(-1 << v95);
    }

    v97 = v96 & *(v93 + 56);
    v26 = (v95 + 63) >> 6;

    v42 = 0;
    for (i = MEMORY[0x1E69E7CC0]; v97; i[v108 + 32] = v167)
    {
LABEL_81:
      v100 = __clz(__rbit64(v97));
      v97 &= v97 - 1;
      v101 = (*(v93 + 48) + ((v42 << 7) | (2 * v100)));
      v102 = *v101;
      v103 = v101[1];
      v104 = 0x3020001u >> (8 * v102);
      v105 = v102 + 4;
      if (v103 != 1)
      {
        v105 = 11;
      }

      if (v103)
      {
        v106 = v105;
      }

      else
      {
        v106 = v104;
      }

      LODWORD(v167) = v106;
      v107 = i;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = sub_1D177E51C(0, *(v107 + 2) + 1, 1, v107);
      }

      i = v107;
      v108 = *(v107 + 2);
      v109 = *(i + 3);
      v110 = v108 + 1;
      if (v108 >= v109 >> 1)
      {
        v150 = v108 + 1;
        v111 = sub_1D177E51C((v109 > 1), v108 + 1, 1, i);
        v110 = v150;
        i = v111;
      }

      *(i + 2) = v110;
    }

    while (1)
    {
      v99 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v99 >= v26)
      {
        LODWORD(v167) = v40;
        v112 = v164;
        v113 = i;

        v114 = sub_1D17848D4(v113);

        v115 = v170;
        v116 = sub_1D192C254(v170, v152, v25);
        v117 = *(v116 + 16);
        v118 = 32;
        do
        {
          v119 = v117;
          if (v117-- == 0)
          {
            break;
          }

          v121 = *(v116 + v118);
          v118 += 4;
        }

        while (v121 != 128);
        v122 = v33;

        v123 = sub_1D17198DC(27, v162);

        if (v123)
        {
          v124 = v163;
          sub_1D192DD58(v112, v163, type metadata accessor for EndpointPath);
          v180 = v152;
          v181 = v25;
          sub_1D196E798(v124, &v180, &v172);

          sub_1D192DCF8(v169, type metadata accessor for ClusterPath);
          sub_1D192DCF8(v168, type metadata accessor for ClusterPath);
          sub_1D192DCF8(v115, type metadata accessor for ClusterPath);
        }

        else
        {
          swift_bridgeObjectRelease_n();
          sub_1D192DCF8(v169, type metadata accessor for ClusterPath);
          sub_1D192DCF8(v168, type metadata accessor for ClusterPath);
          sub_1D192DCF8(v115, type metadata accessor for ClusterPath);
          v172 = 0u;
          v173 = 0u;
          v174 = 0u;
          v175 = 0u;
          v176 = 0u;
          v177 = 0u;
          memset(v178, 0, sizeof(v178));
        }

        v136 = v112;
        v137 = v171;
        sub_1D191F714(v136, v171);
        v138 = type metadata accessor for StaticRVCClusterGroup(0);
        *(v137 + v138[5]) = v165;
        v139 = (v137 + v138[6]);
        v140 = v158;
        *v139 = v159;
        v139[1] = v140;
        v141 = v160;
        v139[2] = v161;
        v139[3] = v141;
        v142 = (v137 + v138[7]);
        v143 = v155;
        *v142 = v156;
        v142[1] = v143;
        v144 = v153;
        v142[2] = v154;
        v142[3] = v144;
        v145 = (v137 + v138[8]);
        *v145 = v94;
        v145[1] = v167;
        *(v137 + v138[9]) = v114;
        *(v137 + v138[10]) = v122;
        *(v137 + v138[11]) = v157;
        *(v137 + v138[12]) = v119 != 0;
        *(v137 + v138[13]) = v151;
        *(v137 + v138[14]) = v166;
        v146 = v137 + v138[15];
        v147 = v177;
        *(v146 + 64) = v176;
        *(v146 + 80) = v147;
        *(v146 + 96) = *v178;
        *(v146 + 109) = *&v178[13];
        v148 = v173;
        *v146 = v172;
        *(v146 + 16) = v148;
        v149 = v175;
        *(v146 + 32) = v174;
        *(v146 + 48) = v149;
        return (*(*(v138 - 1) + 56))(v137, 0, 1, v138);
      }

      v97 = *&v17[8 * v99];
      ++v42;
      if (v97)
      {
        v42 = v99;
        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_116:
    swift_once();
LABEL_25:
    v57 = sub_1D1E6709C();
    __swift_project_value_buffer(v57, qword_1EE07A0B0);
    sub_1D192DD58(v168, v17, type metadata accessor for ClusterPath);
    v58 = sub_1D1E6707C();
    v59 = sub_1D1E6833C();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v180 = v61;
      *v60 = 136446210;
      LODWORD(v157) = v59;
      v156 = ClusterPath.description.getter();
      v63 = v62;
      sub_1D192DCF8(v17, type metadata accessor for ClusterPath);
      v64 = sub_1D1B1312C(v156, v63, &v180);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_1D16EC000, v58, v157, "Couldn't read runMode FeatureMap '%{public}s'", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x1D3893640](v61, -1, -1);
      MEMORY[0x1D3893640](v60, -1, -1);
    }

    else
    {

      sub_1D192DCF8(v17, type metadata accessor for ClusterPath);
    }

    v151 = 0;
LABEL_29:
    v65 = v169;
    if (sub_1D17198DC(26, v162) && (v180 = v26, v181 = v25, v66 = sub_1D1927018(v65), v180 = v26, v181 = v25, v67 = sub_1D1927778(v65, "Couldn't get value for current clean mode: (%{public}s path:'%{public}s'"), v66))
    {
      v68 = v66 + 32;
      v69 = *(v66 + 2) + 1;
      v157 = v66;
      while (--v69)
      {
        v70 = v68;
        v68 += 32;
        if ((v67 & 0x10000) == 0 && *v70 == v67)
        {
          v156 = v67;
          v71 = *(v68 - 2);
          v155 = *(v68 - 3);
          v72 = *(v68 - 1);
          v154 = v71;

          v153 = v72;

          goto LABEL_38;
        }
      }

      v156 = 0;
      v155 = 0;
      v154 = 0;
      v73 = &v178[8];
    }

    else
    {
      v156 = 0;
      v155 = 0;
      v154 = 0;
      v153 = 0;
      v73 = &v181;
    }

    *(v73 - 32) = 0;
LABEL_38:
    v74 = v167;
    sub_1D192DD58(v65, v167, type metadata accessor for ClusterPath);
    v75 = sub_1D192B170(65532, v74, v26, v25);
    sub_1D192DCF8(v74, type metadata accessor for ClusterPath);
    v159 = v40;
    if ((v75 & 0x100000000) != 0)
    {
      if (sub_1D17198DC(26, v162))
      {
        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v77 = sub_1D1E6709C();
        __swift_project_value_buffer(v77, qword_1EE07A0B0);
        v78 = v166;
        sub_1D192DD58(v65, v166, type metadata accessor for ClusterPath);
        v79 = sub_1D1E6707C();
        v80 = sub_1D1E6833C();
        if (os_log_type_enabled(v79, v80))
        {
          v76 = v161;
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v180 = v82;
          *v81 = 136446210;
          v167 = ClusterPath.description.getter();
          v84 = v83;
          sub_1D192DCF8(v78, type metadata accessor for ClusterPath);
          v85 = v26;
          v86 = sub_1D1B1312C(v167, v84, &v180);

          *(v81 + 4) = v86;
          v26 = v85;
          _os_log_impl(&dword_1D16EC000, v79, v80, "Couldn't read cleanMode FeatureMap '%{public}s' even though there is a clean mode cluster", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v82);
          MEMORY[0x1D3893640](v82, -1, -1);
          MEMORY[0x1D3893640](v81, -1, -1);
        }

        else
        {
          v76 = v161;

          sub_1D192DCF8(v78, type metadata accessor for ClusterPath);
        }

        v166 = 0;
        v42 = v165;
      }

      else
      {
        v76 = v161;
        v166 = 0;
      }
    }

    else
    {
      v76 = v161;
      v166 = (v75 >> 16) & 1;
    }

    v180 = v26;
    v181 = v25;
    v87 = v26;
    v26 = v170;
    v28 = sub_1D1927BBC(v170);
    v180 = v87;
    v181 = v25;
    sub_1D1927E9C(v26, &v179);
    v88 = HIBYTE(v179);
    v152 = v87;
    if (v88 >= 0xFF)
    {
      v180 = v159;
      v181 = v158;
      v182 = v76;
      v183 = v160;
      v89 = StaticRVCClusterGroup.RunMode.isCleaning.getter();
      v180 = v87;
      v181 = v25;
      sub_1D1928144(v26, &v179);
      v90 = HIBYTE(v179);
      if (v90 <= 0xFE)
      {
        LOBYTE(v39) = v179;
      }

      else
      {
        LOBYTE(v39) = 0;
      }

      if (v90 <= 0xFE)
      {
        v40 = v90;
      }

      else
      {
        v40 = 0;
      }

      goto LABEL_69;
    }

    v91 = v179;
    v180 = v87;
    v181 = v25;
    sub_1D1928144(v26, &v179);
    v92 = HIBYTE(v179);
    if (v92 <= 0xFE)
    {
      LOBYTE(v39) = v179;
    }

    else
    {
      LOBYTE(v39) = 0;
    }

    if (v92 <= 0xFE)
    {
      v40 = v92;
    }

    else
    {
      v40 = 0;
    }

    if (v88)
    {
      if (v88 == 1)
      {
        LODWORD(v35) = v91;
        if (v91 <= 2u)
        {
          goto LABEL_106;
        }

        if (v91 > 4u)
        {
          v93 = v28;
          if (v35 == 5)
          {
            v89 = 9;
          }

          else
          {
            v89 = 10;
          }
        }

        else
        {
          v93 = v28;
          if (v35 == 3)
          {
            v89 = 7;
          }

          else
          {
            v89 = 8;
          }
        }
      }

      else
      {
        v89 = 11;
        v93 = v28;
      }
    }

    else
    {
      v89 = v91;
LABEL_69:
      v93 = v28;
      if (v89 <= 1u)
      {
        v89 = v89 == 0;
      }
    }
  }

  sub_1D192F928(v156, v155, v154, v153);
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v125 = sub_1D1E6709C();
  __swift_project_value_buffer(v125, qword_1EE07A0B0);
  sub_1D192DD58(v26, v42, type metadata accessor for ClusterPath);
  v126 = sub_1D1E6707C();
  v127 = sub_1D1E6833C();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v129 = v42;
    v130 = swift_slowAlloc();
    v180 = v130;
    *v128 = 136446210;
    v131 = v26;
    v132 = ClusterPath.description.getter();
    v134 = v133;
    sub_1D192DCF8(v129, type metadata accessor for ClusterPath);
    v135 = sub_1D1B1312C(v132, v134, &v180);

    *(v128 + 4) = v135;
    _os_log_impl(&dword_1D16EC000, v126, v127, "Failed to fetch operationalStateList %{public}s", v128, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v130);
    MEMORY[0x1D3893640](v130, -1, -1);
    MEMORY[0x1D3893640](v128, -1, -1);

    sub_1D192DCF8(v164, type metadata accessor for EndpointPath);
    sub_1D192DCF8(v169, type metadata accessor for ClusterPath);
    sub_1D192DCF8(v168, type metadata accessor for ClusterPath);
    sub_1D192DCF8(v131, type metadata accessor for ClusterPath);
    goto LABEL_23;
  }

  sub_1D192DCF8(v164, type metadata accessor for EndpointPath);
  sub_1D192DCF8(v42, type metadata accessor for ClusterPath);
  sub_1D192DCF8(v169, type metadata accessor for ClusterPath);
  sub_1D192DCF8(v168, type metadata accessor for ClusterPath);
  v53 = v26;
LABEL_21:
  sub_1D192DCF8(v53, type metadata accessor for ClusterPath);
LABEL_23:
  v54 = v171;
  v55 = type metadata accessor for StaticRVCClusterGroup(0);
  return (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
}

uint64_t sub_1D19268A4(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = v1[1];
  v64 = v4;
  v65 = sub_1D192F8C4(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  sub_1D192DD58(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v61[0] = v8;
  v61[1] = v7;
  AttributeValueSet.value(for:in:)(0, v63, v66);
  __swift_destroy_boxed_opaque_existential_1(v63);
  sub_1D1741C08(v66, v63, &qword_1EC645D58, &unk_1D1E7E530);
  if (!v64)
  {
    sub_1D1741A30(v63, &qword_1EC645D58, &unk_1D1E7E530);
LABEL_33:
    if (qword_1EE07A0A8 == -1)
    {
LABEL_34:
      v34 = sub_1D1E6709C();
      __swift_project_value_buffer(v34, qword_1EE07A0B0);
      sub_1D1741C08(v66, v63, &qword_1EC645D58, &unk_1D1E7E530);
      sub_1D192DD58(a1, v6, type metadata accessor for ClusterPath);
      v35 = sub_1D1E6707C();
      v36 = sub_1D1E6833C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v62 = v38;
        *v37 = 136446466;
        sub_1D1741C08(v63, v61, &qword_1EC645D58, &unk_1D1E7E530);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
        v39 = sub_1D1E678BC();
        v41 = v40;
        sub_1D1741A30(v63, &qword_1EC645D58, &unk_1D1E7E530);
        v42 = sub_1D1B1312C(v39, v41, &v62);

        *(v37 + 4) = v42;
        *(v37 + 12) = 2082;
        v43 = ClusterPath.description.getter();
        v45 = v44;
        sub_1D192DCF8(v6, type metadata accessor for ClusterPath);
        v46 = sub_1D1B1312C(v43, v45, &v62);

        *(v37 + 14) = v46;
        _os_log_impl(&dword_1D16EC000, v35, v36, "Couldn't create MTRRVCRunModeClusterModeOptionStruct from value '%{public}s' path:'%{public}s'", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v38, -1, -1);
        MEMORY[0x1D3893640](v37, -1, -1);
      }

      else
      {

        sub_1D192DCF8(v6, type metadata accessor for ClusterPath);
        sub_1D1741A30(v63, &qword_1EC645D58, &unk_1D1E7E530);
      }

      sub_1D1741A30(v66, &qword_1EC645D58, &unk_1D1E7E530);
      return 0;
    }

LABEL_43:
    swift_once();
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647390, &qword_1D1E85510);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v6 = v61[0];
  if (v61[0] >> 62)
  {
    v10 = sub_1D1E6873C();
  }

  else
  {
    v10 = *((v61[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = v6;
  if (v10)
  {
    v11 = 0;
    a1 = 0;
    v54 = v50 & 0xC000000000000001;
    v53 = v50 & 0xFFFFFFFFFFFFFF8;
    v52 = (v50 + 32);
    v12 = MEMORY[0x1E69E7CC0];
    v51 = v10;
    while (1)
    {
      if (v54)
      {
        v13 = MEMORY[0x1D3891EF0](v11, v50);
      }

      else
      {
        if (v11 >= *(v53 + 16))
        {
          goto LABEL_42;
        }

        v13 = *&v52[8 * v11];
      }

      v14 = v13;
      if (__OFADD__(v11++, 1))
      {
        break;
      }

      v60 = v12;
      v16 = [v13 mode];
      v59 = [v16 unsignedIntegerValue];

      v17 = [v14 label];
      v18 = sub_1D1E6781C();
      v57 = v19;
      v58 = v18;

      v20 = [v14 modeTags];
      v6 = sub_1D1E67C1C();

      v21 = *(v6 + 2);
      if (v21)
      {
        v22 = 0;
        v23 = v6 + 32;
        v55 = v21 - 1;
        v24 = MEMORY[0x1E69E7CC0];
        v56 = v6 + 32;
        do
        {
          v25 = &v23[32 * v22];
          v26 = v22;
          while (1)
          {
            if (v26 >= *(v6 + 2))
            {
              __break(1u);
              goto LABEL_41;
            }

            sub_1D1741970(v25, v63);
            sub_1D192880C(v63, v61);
            __swift_destroy_boxed_opaque_existential_1(v63);
            v27 = v61[0];
            if (LOBYTE(v61[0]) <= 0xEFu)
            {
              break;
            }

            ++v26;
            v25 += 32;
            if (v21 == v26)
            {
              goto LABEL_25;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1D177E2EC(0, *(v24 + 2) + 1, 1, v24);
          }

          v29 = *(v24 + 2);
          v28 = *(v24 + 3);
          if (v29 >= v28 >> 1)
          {
            v24 = sub_1D177E2EC((v28 > 1), v29 + 1, 1, v24);
          }

          v22 = v26 + 1;
          *(v24 + 2) = v29 + 1;
          v24[v29 + 32] = v27;
          v10 = v51;
          v23 = v56;
        }

        while (v55 != v26);
      }

      else
      {
        v24 = MEMORY[0x1E69E7CC0];
      }

LABEL_25:

      v6 = sub_1D17847E8(v24);

      v12 = v60;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1D177E2D0(0, *(v12 + 2) + 1, 1, v12);
      }

      v31 = *(v12 + 2);
      v30 = *(v12 + 3);
      if (v31 >= v30 >> 1)
      {
        v12 = sub_1D177E2D0((v30 > 1), v31 + 1, 1, v12);
      }

      *(v12 + 2) = v31 + 1;
      v32 = &v12[32 * v31];
      v33 = v58;
      *(v32 + 4) = v59;
      *(v32 + 5) = v33;
      *(v32 + 6) = v57;
      *(v32 + 7) = v6;
      if (v11 == v10)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_39:

  v48 = sub_1D178472C(v12);

  sub_1D1741A30(v66, &qword_1EC645D58, &unk_1D1E7E530);
  return v48;
}

char *sub_1D1927018(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = v1[1];
  v63 = v4;
  v64 = sub_1D192F8C4(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
  sub_1D192DD58(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v60[0] = v8;
  v60[1] = v7;
  AttributeValueSet.value(for:in:)(0, v62, v65);
  __swift_destroy_boxed_opaque_existential_1(v62);
  sub_1D1741C08(v65, v62, &qword_1EC645D58, &unk_1D1E7E530);
  if (!v63)
  {
    sub_1D1741A30(v62, &qword_1EC645D58, &unk_1D1E7E530);
LABEL_33:
    if (qword_1EE07A0A8 == -1)
    {
LABEL_34:
      v34 = sub_1D1E6709C();
      __swift_project_value_buffer(v34, qword_1EE07A0B0);
      sub_1D1741C08(v65, v62, &qword_1EC645D58, &unk_1D1E7E530);
      sub_1D192DD58(a1, v6, type metadata accessor for ClusterPath);
      v35 = sub_1D1E6707C();
      v36 = sub_1D1E6833C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v61 = v38;
        *v37 = 136446466;
        sub_1D1741C08(v62, v60, &qword_1EC645D58, &unk_1D1E7E530);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
        v39 = sub_1D1E678BC();
        v41 = v40;
        sub_1D1741A30(v62, &qword_1EC645D58, &unk_1D1E7E530);
        v42 = sub_1D1B1312C(v39, v41, &v61);

        *(v37 + 4) = v42;
        *(v37 + 12) = 2082;
        v43 = ClusterPath.description.getter();
        v45 = v44;
        sub_1D192DCF8(v6, type metadata accessor for ClusterPath);
        v46 = sub_1D1B1312C(v43, v45, &v61);

        *(v37 + 14) = v46;
        _os_log_impl(&dword_1D16EC000, v35, v36, "Couldn't create MTRRVCCleanModeClusterModeOptionStruct from value (%{public}s) path:'%{public}s'", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v38, -1, -1);
        MEMORY[0x1D3893640](v37, -1, -1);
      }

      else
      {

        sub_1D192DCF8(v6, type metadata accessor for ClusterPath);
        sub_1D1741A30(v62, &qword_1EC645D58, &unk_1D1E7E530);
      }

      sub_1D1741A30(v65, &qword_1EC645D58, &unk_1D1E7E530);
      return 0;
    }

LABEL_44:
    swift_once();
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647358, &unk_1D1E854E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v6 = v60[0];
  if (v60[0] >> 62)
  {
    v10 = sub_1D1E6873C();
  }

  else
  {
    v10 = *((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = v6;
  if (v10)
  {
    v11 = 0;
    a1 = 0;
    v53 = v49 & 0xC000000000000001;
    v52 = v49 & 0xFFFFFFFFFFFFFF8;
    v51 = (v49 + 32);
    v12 = MEMORY[0x1E69E7CC0];
    v50 = v10;
    while (1)
    {
      if (v53)
      {
        v13 = MEMORY[0x1D3891EF0](v11, v49);
      }

      else
      {
        if (v11 >= *(v52 + 16))
        {
          goto LABEL_43;
        }

        v13 = *&v51[8 * v11];
      }

      v14 = v13;
      if (__OFADD__(v11++, 1))
      {
        break;
      }

      v59 = v12;
      v16 = [v13 mode];
      v58 = [v16 unsignedIntegerValue];

      v17 = [v14 label];
      v18 = sub_1D1E6781C();
      v56 = v19;
      v57 = v18;

      v20 = [v14 modeTags];
      v6 = sub_1D1E67C1C();

      v21 = *(v6 + 2);
      if (v21)
      {
        v22 = 0;
        v23 = v6 + 32;
        v54 = v21 - 1;
        v24 = MEMORY[0x1E69E7CC0];
        v55 = v6 + 32;
        do
        {
          v25 = &v23[32 * v22];
          v26 = v22;
          while (1)
          {
            if (v26 >= *(v6 + 2))
            {
              __break(1u);
              goto LABEL_42;
            }

            sub_1D1741970(v25, v62);
            sub_1D1928B7C(v62, v60);
            __swift_destroy_boxed_opaque_existential_1(v62);
            v27 = v60[0];
            if (LOBYTE(v60[0]) <= 0xEFu)
            {
              break;
            }

            ++v26;
            v25 += 32;
            if (v21 == v26)
            {
              goto LABEL_25;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1D177E2EC(0, *(v24 + 2) + 1, 1, v24);
          }

          v29 = *(v24 + 2);
          v28 = *(v24 + 3);
          if (v29 >= v28 >> 1)
          {
            v24 = sub_1D177E2EC((v28 > 1), v29 + 1, 1, v24);
          }

          v22 = v26 + 1;
          *(v24 + 2) = v29 + 1;
          v24[v29 + 32] = v27;
          v10 = v50;
          v23 = v55;
        }

        while (v54 != v26);
      }

      else
      {
        v24 = MEMORY[0x1E69E7CC0];
      }

LABEL_25:

      v6 = sub_1D17847E8(v24);

      v12 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1D177E3E0(0, *(v12 + 2) + 1, 1, v12);
      }

      v31 = *(v12 + 2);
      v30 = *(v12 + 3);
      if (v31 >= v30 >> 1)
      {
        v12 = sub_1D177E3E0((v30 > 1), v31 + 1, 1, v12);
      }

      *(v12 + 2) = v31 + 1;
      v32 = &v12[32 * v31];
      v33 = v57;
      *(v32 + 4) = v58;
      *(v32 + 5) = v33;
      *(v32 + 6) = v56;
      *(v32 + 7) = v6;
      if (v11 == v10)
      {
        goto LABEL_39;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_39:

  sub_1D1741A30(v65, &qword_1EC645D58, &unk_1D1E7E530);
  return v12;
}

uint64_t sub_1D1927778(uint64_t a1, const char *a2, ...)
{
  v5 = type metadata accessor for ClusterPath(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v30[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v9 = *(v2 + 8);
  v33 = v6;
  v34 = sub_1D192F8C4(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  sub_1D192DD58(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v30[0] = v10;
  v30[1] = v9;
  AttributeValueSet.value(for:in:)(1, v32, v35);
  __swift_destroy_boxed_opaque_existential_1(v32);
  sub_1D1741C08(v35, v32, &qword_1EC645D58, &unk_1D1E7E530);
  if (v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v12 = v30[0];
      v13 = [v30[0] unsignedShortValue];

      sub_1D1741A30(v35, &qword_1EC645D58, &unk_1D1E7E530);
      v14 = 0;
      return v13 | (v14 << 16);
    }
  }

  else
  {
    sub_1D1741A30(v32, &qword_1EC645D58, &unk_1D1E7E530);
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v15 = sub_1D1E6709C();
  __swift_project_value_buffer(v15, qword_1EE07A0B0);
  sub_1D1741C08(v35, v32, &qword_1EC645D58, &unk_1D1E7E530);
  sub_1D192DD58(a1, v8, type metadata accessor for ClusterPath);
  v16 = sub_1D1E6707C();
  v17 = sub_1D1E6833C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31[0] = v19;
    *v18 = 136446466;
    sub_1D1741C08(v32, v30, &qword_1EC645D58, &unk_1D1E7E530);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
    v20 = sub_1D1E678BC();
    v22 = v21;
    sub_1D1741A30(v32, &qword_1EC645D58, &unk_1D1E7E530);
    v23 = sub_1D1B1312C(v20, v22, v31);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2082;
    v24 = ClusterPath.description.getter();
    v26 = v25;
    sub_1D192DCF8(v8, type metadata accessor for ClusterPath);
    v27 = sub_1D1B1312C(v24, v26, v31);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_1D16EC000, v16, v17, a2, v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v19, -1, -1);
    MEMORY[0x1D3893640](v18, -1, -1);
  }

  else
  {

    sub_1D192DCF8(v8, type metadata accessor for ClusterPath);
    sub_1D1741A30(v32, &qword_1EC645D58, &unk_1D1E7E530);
  }

  sub_1D1741A30(v35, &qword_1EC645D58, &unk_1D1E7E530);
  v13 = 0;
  v14 = 1;
  return v13 | (v14 << 16);
}

uint64_t sub_1D1927BBC(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D192B9A0(3, a1, *v1, v1[1]);
  if (v6)
  {
    v7 = v6;
    MEMORY[0x1EEE9AC00](v6);
    v23[-2] = a1;
    v8 = sub_1D178868C(sub_1D192F90C, &v23[-4], v7);

    v9 = sub_1D178485C(v8);
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D1E6709C();
    __swift_project_value_buffer(v10, qword_1EE07A0B0);
    sub_1D192DD58(a1, v5, type metadata accessor for ClusterPath);
    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6833C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23[2] = 0;
      v24 = v14;
      *v13 = 136446466;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647378, &qword_1D1E85500);
      v15 = sub_1D1E678BC();
      v17 = sub_1D1B1312C(v15, v16, &v24);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      v18 = ClusterPath.description.getter();
      v20 = v19;
      sub_1D192DCF8(v5, type metadata accessor for ClusterPath);
      v21 = sub_1D1B1312C(v18, v20, &v24);

      *(v13 + 14) = v21;
      _os_log_impl(&dword_1D16EC000, v11, v12, "Couldn't create MTRRVCOperationalStateClusterOperationalStateStruct from value '%{public}s' path:'%{public}s'", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v14, -1, -1);
      MEMORY[0x1D3893640](v13, -1, -1);
    }

    else
    {

      sub_1D192DCF8(v5, type metadata accessor for ClusterPath);
    }

    return 0;
  }

  return v9;
}

void sub_1D1927E9C(uint64_t a1@<X0>, __int16 *a2@<X8>)
{
  v5 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D192BDF8(4, a1, *v2, v2[1]);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 unsignedCharValue];
    LOBYTE(v24) = *(a1 + *(v5 + 20));
    StaticRVCClusterGroup.OperationalState.init(rawValue:for:)(v10, &v24, a2);
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EE07A0B0);
    sub_1D192DD58(a1, v7, type metadata accessor for ClusterPath);
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6833C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = 0;
      v24 = v15;
      *v14 = 136446466;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647370, &qword_1D1E854F8);
      v16 = sub_1D1E678BC();
      v18 = sub_1D1B1312C(v16, v17, &v24);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v19 = ClusterPath.description.getter();
      v21 = v20;
      sub_1D192DCF8(v7, type metadata accessor for ClusterPath);
      v22 = sub_1D1B1312C(v19, v21, &v24);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_1D16EC000, v12, v13, "Couldn't get value for operationalState: (%{public}s path:'%{public}s'", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v15, -1, -1);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    else
    {

      sub_1D192DCF8(v7, type metadata accessor for ClusterPath);
    }

    *a2 = -256;
  }
}

uint64_t sub_1D1928144@<X0>(uint64_t a1@<X0>, __int16 *a2@<X8>)
{
  v5 = type metadata accessor for ClusterPath(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v9 = v2[1];
  v35 = v6;
  v36 = sub_1D192F8C4(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
  sub_1D192DD58(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  *&v32 = v10;
  *(&v32 + 1) = v9;
  AttributeValueSet.value(for:in:)(5, &v34, v37);
  __swift_destroy_boxed_opaque_existential_1(&v34);
  sub_1D1741C08(v37, &v32, &qword_1EC645D58, &unk_1D1E7E530);
  if (v33)
  {
    sub_1D1742194(&v32, &v34);
    sub_1D1741970(&v34, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    sub_1D1741B10(0, &qword_1EC647368, 0x1E696F678);
    if (swift_dynamicCast())
    {
      v12 = v30[0];
      v13 = [v30[0] errorStateID];
      v14 = [v13 unsignedCharValue];

      StaticRVCClusterGroup.OperationalErrorState.init(rawValue:)(v14, a2);
      __swift_destroy_boxed_opaque_existential_1(&v34);
      return sub_1D1741A30(v37, &qword_1EC645D58, &unk_1D1E7E530);
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v17 = sub_1D1E6709C();
    __swift_project_value_buffer(v17, qword_1EE07A0B0);
    sub_1D1741970(&v34, &v32);
    sub_1D192DD58(a1, v8, type metadata accessor for ClusterPath);
    v18 = sub_1D1E6707C();
    v19 = sub_1D1E6833C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136446466;
      sub_1D1741970(&v32, v30);
      v22 = sub_1D1E678BC();
      v24 = v23;
      __swift_destroy_boxed_opaque_existential_1(&v32);
      v25 = sub_1D1B1312C(v22, v24, &v31);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2082;
      v26 = ClusterPath.description.getter();
      v28 = v27;
      sub_1D192DCF8(v8, type metadata accessor for ClusterPath);
      v29 = sub_1D1B1312C(v26, v28, &v31);

      *(v20 + 14) = v29;
      _os_log_impl(&dword_1D16EC000, v18, v19, "Couldn't get value for operationalStateError: (%{public}s path:'%{public}s'", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);
    }

    else
    {

      sub_1D192DCF8(v8, type metadata accessor for ClusterPath);
      __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    __swift_destroy_boxed_opaque_existential_1(&v34);
    v16 = v37;
  }

  else
  {
    sub_1D1741A30(v37, &qword_1EC645D58, &unk_1D1E7E530);
    v16 = &v32;
  }

  result = sub_1D1741A30(v16, &qword_1EC645D58, &unk_1D1E7E530);
  *a2 = -256;
  return result;
}

void sub_1D192858C(void **a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + *(type metadata accessor for ClusterPath(0) + 20));
  sub_1D19285F0(v4, &v5, a3);
}

void sub_1D19285F0(void *a1@<X0>, char *a2@<X1>, __int16 *a3@<X8>)
{
  v5 = *a2;
  v6 = [a1 operationalStateID];
  v7 = [v6 unsignedCharValue];

  LOBYTE(v19) = v5;
  StaticRVCClusterGroup.OperationalState.init(rawValue:for:)(v7, &v19, &v20);
  v8 = v20;
  if (v20 >> 8 <= 0xFEu)
  {
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EE07A0B0);
    v10 = a1;
    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6833C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v10;
      v20 = v14;
      *v13 = 136446210;
      sub_1D1741B10(0, &qword_1EC647380, 0x1E696F688);
      v15 = v10;
      v16 = sub_1D1E678BC();
      v18 = sub_1D1B1312C(v16, v17, &v20);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1D16EC000, v11, v12, "Couldn't create OperationalState from value '%{public}s'", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1D3893640](v14, -1, -1);
      MEMORY[0x1D3893640](v13, -1, -1);
    }

    else
    {
    }

    v8 = -256;
  }

  *a3 = v8;
}

void sub_1D192880C(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1D1741970(a1, v24);
  sub_1D1741B10(0, &qword_1EC647398, 0x1E696F6A8);
  if (swift_dynamicCast())
  {
    v4 = [v22[0] value];
    LOWORD(v24[0]) = 0;
    BYTE2(v24[0]) = 1;
    sub_1D1E692BC();

    if ((v24[0] & 0x10000) == 0)
    {
      v21 = v24[0];

      LOBYTE(v24[0]) = 25;
      ModeClusterSemanticTag.init(rawValue:for:)(v21, v24, a2);
      return;
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EE07A0B0);
    v6 = v22[0];
    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6833C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&dword_1D16EC000, v7, v8, "Couldn't get run mode tag value from modeTag: '%{public}@'", v9, 0xCu);
      sub_1D1741A30(v10, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
      v6 = v7;
      v7 = v11;
    }
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EE07A0B0);
    sub_1D1741970(a1, v24);
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6833C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      sub_1D1741970(v24, v22);
      v17 = sub_1D1E678BC();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1(v24);
      v20 = sub_1D1B1312C(v17, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1D16EC000, v13, v14, "Couldn't create MTRRVCRunModeClusterModeTagStruct from value '%{public}s'", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  *a2 = -16;
}

void sub_1D1928B7C(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1D1741970(a1, v24);
  sub_1D1741B10(0, &qword_1EC647360, 0x1E696F670);
  if (swift_dynamicCast())
  {
    v4 = [v22[0] value];
    LOWORD(v24[0]) = 0;
    BYTE2(v24[0]) = 1;
    sub_1D1E692BC();

    if ((v24[0] & 0x10000) == 0)
    {
      v21 = v24[0];

      LOBYTE(v24[0]) = 26;
      ModeClusterSemanticTag.init(rawValue:for:)(v21, v24, a2);
      return;
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EE07A0B0);
    v6 = v22[0];
    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6833C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&dword_1D16EC000, v7, v8, "Couldn't get clean mode tag value from modeTag: '%{public}@'", v9, 0xCu);
      sub_1D1741A30(v10, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
      v6 = v7;
      v7 = v11;
    }
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EE07A0B0);
    sub_1D1741970(a1, v24);
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6833C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      sub_1D1741970(v24, v22);
      v17 = sub_1D1E678BC();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1(v24);
      v20 = sub_1D1B1312C(v17, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1D16EC000, v13, v14, "Couldn't create MTRRVCCleanModeClusterModeTagStruct from value '%{public}s'", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  *a2 = -16;
}

void sub_1D1928EEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v110 = a2;
  v5 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v112 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + 64;
  v7 = *(a1 + 64);
  v9 = 1 << *(a1 + 32);
  v155 = 0u;
  memset(v156, 0, 21);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v153 = 0uLL;
  v154 = 0uLL;
  v12 = (v9 + 63) >> 6;
  v151 = 0uLL;
  v152 = 0uLL;
  v150 = 0uLL;
  v120 = a1;

  v111 = 0;
  v115 = 0;
  v116 = 0;
  v113 = v3;
  v114 = 0;
  v13 = 0;
  v121 = 0;
  v14 = 0;
  v15 = 0;
  v117 = 12;
  v118 = v12;
  v119 = v8;
  v16 = 0;
  if (!v11)
  {
    goto LABEL_6;
  }

  do
  {
    while (1)
    {
      v17 = v16;
LABEL_9:
      v122 = v17;
      v123 = (v11 - 1) & v11;
      v18 = __clz(__rbit64(v11)) | (v17 << 6);
      v19 = *(v120 + 48) + 8 * v18;
      v20 = *v19;
      v21 = *(v19 + 4);
      v22 = *(v120 + 56) + 16 * v18;
      v23 = *v22;
      v24 = *(v22 + 8);
      if (*v19 != 1)
      {
        break;
      }

      if (v21 != 25)
      {
        if (((1 << v21) & 0x39FFFFFF) != 0)
        {
          sub_1D1741AF8(v23, v24);
LABEL_40:
          sub_1D1757AE8(v23, v24);
          goto LABEL_41;
        }

        sub_1D1741AF8(v23, v24);
        if (v24 <= 1)
        {
          if (!v24)
          {
            *(&v141 + 1) = MEMORY[0x1E69E6370];
            LOBYTE(v140) = v23 & 1;
            goto LABEL_72;
          }

          v56 = MEMORY[0x1E69E6530];
        }

        else
        {
          if (v24 != 2)
          {
            if (v24 == 3)
            {
              v52 = &qword_1EC646A50;
              v53 = &unk_1D1E910D0;
            }

            else
            {
              v52 = &qword_1EC646DE8;
              v53 = &unk_1D1E85520;
            }

            *(&v141 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(v52, v53);
            *&v140 = v23;

LABEL_72:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
            sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
            if (swift_dynamicCast())
            {
              sub_1D1757AE8(v23, v24);
              sub_1D192F928(v111, v115, v116, v114);
              v57 = v133;
              v58 = *(v3 + *(type metadata accessor for StaticRVCClusterGroup(0) + 44));
              if (v58)
              {
                v124 = v57;
                v116 = *(v58 + 16);
                if (v116)
                {
                  v59 = 0;
                  v60 = (v58 + 56);
                  while (1)
                  {
                    v61 = v58;
                    if (v59 >= *(v58 + 16))
                    {
                      goto LABEL_144;
                    }

                    v62 = *(v60 - 2);
                    v111 = *(v60 - 3);
                    v63 = *(v60 - 1);
                    v64 = *v60;

                    v65 = [v124 unsignedShortValue];
                    if (v111 == v65)
                    {
                      break;
                    }

                    ++v59;
                    v60 += 4;
                    v58 = v61;
                    if (v116 == v59)
                    {
                      goto LABEL_79;
                    }
                  }

                  v114 = v64;
                  v115 = v62;
                  v116 = v63;

                  v3 = v113;
                }

                else
                {
LABEL_79:

                  v111 = 0;
                  v115 = 0;
                  v116 = 0;
                  v114 = 0;
                  v3 = v113;
                }
              }

              else
              {

                v111 = 0;
                v115 = 0;
                v116 = 0;
                v114 = 0;
              }

              goto LABEL_41;
            }

            goto LABEL_40;
          }

          v56 = MEMORY[0x1E69E6810];
        }

        *(&v141 + 1) = v56;
        *&v140 = v23;
        goto LABEL_72;
      }

      if (*(v22 + 8) <= 1u)
      {
        if (!*(v22 + 8))
        {
          *(&v141 + 1) = MEMORY[0x1E69E6370];
          LOBYTE(v140) = v23 & 1;
          goto LABEL_22;
        }

        v27 = MEMORY[0x1E69E6530];
        goto LABEL_21;
      }

      if (v24 == 2)
      {
        v27 = MEMORY[0x1E69E6810];
LABEL_21:
        *(&v141 + 1) = v27;
        *&v140 = v23;
        goto LABEL_22;
      }

      if (v24 == 3)
      {
        v25 = &qword_1EC646A50;
        v26 = &unk_1D1E910D0;
      }

      else
      {
        v25 = &qword_1EC646DE8;
        v26 = &unk_1D1E85520;
      }

      *(&v141 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
      *&v140 = v23;

LABEL_22:
      sub_1D1741AF8(v23, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_40;
      }

      sub_1D192F928(v13, v121, v14, v15);
      sub_1D1757AE8(v23, v24);
      v124 = v133;
      v28 = *(v3 + *(type metadata accessor for StaticRVCClusterGroup(0) + 40));
      v29 = 1 << *(v28 + 32);
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      else
      {
        v30 = -1;
      }

      v31 = v30 & *(v28 + 56);
      v32 = (v29 + 63) >> 6;

      v33 = 0;
      if (v31)
      {
        while (1)
        {
          v34 = v33;
LABEL_31:
          v35 = (*(v28 + 48) + ((v34 << 11) | (32 * __clz(__rbit64(v31)))));
          v36 = *v35;
          v37 = v35[1];
          v14 = v35[2];
          v15 = v35[3];

          if (v36 == [v124 unsignedShortValue])
          {
            break;
          }

          v31 &= v31 - 1;

          v33 = v34;
          if (!v31)
          {
            goto LABEL_28;
          }
        }

        v121 = v37;

        v16 = v122;
        v3 = v113;
        v13 = v36;
      }

      else
      {
        while (1)
        {
LABEL_28:
          v34 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
            return;
          }

          if (v34 >= v32)
          {
            break;
          }

          v31 = *(v28 + 56 + 8 * v34);
          ++v33;
          if (v31)
          {
            goto LABEL_31;
          }
        }

        v13 = 0;
        v121 = 0;
        v14 = 0;
        v15 = 0;
        v16 = v122;
        v3 = v113;
      }

      v12 = v118;
      v8 = v119;
      v11 = v123;
      if (!v123)
      {
        goto LABEL_6;
      }
    }

    sub_1D1741AF8(*v22, *(v22 + 8));
    if (v20 == 2)
    {
      if (v21 != 27)
      {
        goto LABEL_40;
      }

      if (v24 <= 1)
      {
        if (!v24)
        {
          v149 = MEMORY[0x1E69E6370];
          LOBYTE(v148[0]) = v23 & 1;
          goto LABEL_106;
        }

        v71 = MEMORY[0x1E69E6530];
      }

      else
      {
        if (v24 != 2)
        {
          if (v24 == 3)
          {
            v54 = &qword_1EC646A50;
            v55 = &unk_1D1E910D0;
          }

          else
          {
            v54 = &qword_1EC646DE8;
            v55 = &unk_1D1E85520;
          }

          v149 = __swift_instantiateConcreteTypeFromMangledNameV2(v54, v55);
          goto LABEL_105;
        }

        v71 = MEMORY[0x1E69E6810];
      }

      v149 = v71;
LABEL_105:
      v148[0] = v23;
LABEL_106:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A50, &unk_1D1E910D0);
      if (swift_dynamicCast())
      {
        sub_1D1741A30(&v150, &qword_1EC646FD0, &qword_1D1E841D0);
        v72 = v147;
        v73 = v3 + *(type metadata accessor for StaticRVCClusterGroup(0) + 60);
        v74 = *v73;
        if (!*v73)
        {

          v44 = 0;
          v45 = 0;
          v48 = 0;
          v38 = 0uLL;
          v39 = 0uLL;
          v41 = 0uLL;
          v40 = 0uLL;
          v43 = 0uLL;
          v42 = 0uLL;
          goto LABEL_43;
        }

        *v125 = *v73;
        *&v125[56] = *(v73 + 56);
        *&v125[72] = *(v73 + 72);
        *&v125[88] = *(v73 + 88);
        v75 = *&v125[88];
        *&v125[101] = *(v73 + 101);
        *&v125[8] = *(v73 + 8);
        *&v125[24] = *(v73 + 24);
        *&v125[40] = *(v73 + 40);
        v126 = v74;
        v127 = *&v125[8];
        v128 = *&v125[24];
        v129 = *&v125[40];
        *(v132 + 13) = *&v125[101];
        v132[0] = v75;
        v130 = *&v125[56];
        v131 = *&v125[72];
        sub_1D192D0CC(&v126, &v133);
        ServiceArea.copyApplying(selectedAreaIDs:)(v72, &v140);

        v137 = *&v125[64];
        v138 = *&v125[80];
        v139[0] = *&v125[96];
        *(v139 + 13) = *&v125[109];
        v133 = *v125;
        v134 = *&v125[16];
        v135 = *&v125[32];
        v136 = *&v125[48];
        sub_1D192D128(&v133);
        v38 = v140;
        v39 = v141;
        v41 = v142;
        v40 = v143;
        v43 = v144;
        v42 = v145;
        v44 = *v146;
        v45 = *&v146[8];
        v46 = v146[20];
        v47 = *&v146[16];
LABEL_42:
        v48 = v47 | (v46 << 32);
LABEL_43:
        v12 = v118;
        v8 = v119;
        v11 = v123;
        goto LABEL_44;
      }

LABEL_41:
      v38 = v150;
      v39 = v151;
      v41 = v152;
      v40 = v153;
      v43 = v154;
      v42 = v155;
      v45 = *(&v156[0] + 1);
      v44 = *&v156[0];
      v46 = BYTE4(v156[1]);
      v47 = LODWORD(v156[1]);
      goto LABEL_42;
    }

    v49 = v20 == 4 && v21 == 24;
    if (!v49)
    {
      goto LABEL_40;
    }

    if (v24 <= 1)
    {
      if (!v24)
      {
        *(&v141 + 1) = MEMORY[0x1E69E6370];
        LOBYTE(v140) = v23 & 1;
        goto LABEL_91;
      }

      v66 = MEMORY[0x1E69E6530];
LABEL_90:
      *(&v141 + 1) = v66;
      *&v140 = v23;
      goto LABEL_91;
    }

    if (v24 == 2)
    {
      v66 = MEMORY[0x1E69E6810];
      goto LABEL_90;
    }

    if (v24 == 3)
    {
      v50 = &qword_1EC646A50;
      v51 = &unk_1D1E910D0;
    }

    else
    {
      v50 = &qword_1EC646DE8;
      v51 = &unk_1D1E85520;
    }

    *(&v141 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(v50, v51);
    *&v140 = v23;

LABEL_91:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_40;
    }

    v67 = v133;
    v68 = [v133 unsignedCharValue];
    LOBYTE(v133) = 24;
    StaticRVCClusterGroup.OperationalState.init(rawValue:for:)(v68, &v133, &v140);

    v69 = v140;
    v70 = BYTE1(v140);
    if (v70 > 0xFE)
    {
      goto LABEL_40;
    }

    sub_1D1757AE8(v23, v24);
    v38 = v150;
    v39 = v151;
    v41 = v152;
    v40 = v153;
    v43 = v154;
    v42 = v155;
    v45 = *(&v156[0] + 1);
    v44 = *&v156[0];
    v48 = LODWORD(v156[1]) | (BYTE4(v156[1]) << 32);
    if (v70)
    {
      v49 = v70 == 1;
      v12 = v118;
      v8 = v119;
      v11 = v123;
      if (v49)
      {
        if (v69 <= 2u)
        {
          if (v69)
          {
            if (v69 == 1)
            {
              v117 = 5;
            }

            else
            {
              v117 = 6;
            }
          }

          else
          {
            v117 = 4;
          }
        }

        else if (v69 > 4u)
        {
          if (v69 == 5)
          {
            v117 = 9;
          }

          else
          {
            v117 = 10;
          }
        }

        else if (v69 == 3)
        {
          v117 = 7;
        }

        else
        {
          v117 = 8;
        }
      }

      else
      {
        v117 = 11;
      }
    }

    else
    {
      v12 = v118;
      v8 = v119;
      v11 = v123;
      if (v69 > 1u)
      {
        v117 = v69;
      }

      else
      {
        v117 = v69 == 0;
      }
    }

LABEL_44:
    v150 = v38;
    v151 = v39;
    v152 = v41;
    v153 = v40;
    v154 = v43;
    v155 = v42;
    *&v156[0] = v44;
    *(&v156[0] + 1) = v45;
    LODWORD(v156[1]) = v48;
    BYTE4(v156[1]) = BYTE4(v48);
    v16 = v122;
  }

  while (v11);
  while (1)
  {
LABEL_6:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_143;
    }

    if (v17 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v17);
    ++v16;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  if (v117 == 4)
  {
    sub_1D192F928(v13, v121, v14, v15);
    StaticRVCClusterGroup.firstIdleRunningMode.getter(&v140);
    v76 = *(&v140 + 1);
    v13 = v140;
    v15 = *(&v141 + 1);
    v77 = v141;
    sub_1D192DD58(v3, v112, type metadata accessor for EndpointPath);
    v117 = 4;
    v79 = v115;
    v78 = v116;
    v80 = v114;
    v124 = v77;
    if (v77)
    {
      goto LABEL_124;
    }

LABEL_140:
    v107 = (v3 + *(type metadata accessor for StaticRVCClusterGroup(0) + 24));
    v13 = *v107;
    v76 = v107[1];
    v108 = v107[3];
    v124 = v107[2];

    v123 = v108;

    if (!v78)
    {
      goto LABEL_125;
    }
  }

  else
  {
    v124 = v14;
    v79 = v115;
    v78 = v116;
    v80 = v114;
    v76 = v121;
    if (v117 == 12 && v124)
    {
      *&v140 = v13;
      *(&v140 + 1) = v121;
      *&v141 = v124;
      *(&v141 + 1) = v15;
      if (StaticRVCClusterGroup.RunMode.isCleaning.getter())
      {
        v85 = 0;
      }

      else
      {
        v85 = 2;
      }

      v117 = v85;
      sub_1D192DD58(v3, v112, type metadata accessor for EndpointPath);
      v123 = v15;
      if (!v78)
      {
        goto LABEL_125;
      }
    }

    else
    {
      sub_1D192DD58(v3, v112, type metadata accessor for EndpointPath);
      if (v117 == 12)
      {
        v117 = *(v3 + *(type metadata accessor for StaticRVCClusterGroup(0) + 20));
      }

      if (!v124)
      {
        goto LABEL_140;
      }

LABEL_124:
      v123 = v15;
      if (!v78)
      {
LABEL_125:
        v81 = (v3 + *(type metadata accessor for StaticRVCClusterGroup(0) + 28));
        v79 = v81[1];
        v78 = v81[2];
        v80 = v81[3];
        v111 = *v81;
        sub_1D191F3B0(v111, v79, v78, v80);
      }
    }
  }

  v121 = v76;
  v114 = v80;
  v115 = v79;
  v116 = v78;
  v82 = v13;
  if (v150)
  {
    v144 = v154;
    v145 = v155;
    *v146 = v156[0];
    *&v146[13] = *(v156 + 13);
    v140 = v150;
    v141 = v151;
    v83 = v152;
    v84 = v153;
  }

  else
  {
    v86 = v3 + *(type metadata accessor for StaticRVCClusterGroup(0) + 60);
    v87 = *(v86 + 80);
    v137 = *(v86 + 64);
    v138 = v87;
    v139[0] = *(v86 + 96);
    *(v139 + 13) = *(v86 + 109);
    v88 = *(v86 + 16);
    v133 = *v86;
    v134 = v88;
    v89 = *(v86 + 48);
    v135 = *(v86 + 32);
    v136 = v89;
    sub_1D1741C08(&v133, &v140, &qword_1EC646FD0, &qword_1D1E841D0);
    v144 = v137;
    v145 = v138;
    *v146 = v139[0];
    *&v146[13] = *(v139 + 13);
    v140 = v133;
    v141 = v134;
    v83 = v135;
    v84 = v136;
  }

  v142 = v83;
  v143 = v84;
  v90 = type metadata accessor for StaticRVCClusterGroup(0);
  v91 = *(v3 + v90[8]);
  v92 = *(v3 + v90[9]);
  v93 = *(v3 + v90[10]);
  v94 = *(v3 + v90[11]);
  v95 = *(v3 + v90[12]);
  v96 = v110;
  sub_1D191F714(v112, v110);
  *(v96 + v90[5]) = v117;
  v97 = (v96 + v90[6]);
  v98 = v121;
  *v97 = v82;
  v97[1] = v98;
  v99 = v123;
  v97[2] = v124;
  v97[3] = v99;
  v100 = (v96 + v90[7]);
  v102 = v115;
  v101 = v116;
  *v100 = v111;
  v100[1] = v102;
  v100[2] = v101;
  v100[3] = v114;
  *(v96 + v90[8]) = v91;
  *(v96 + v90[9]) = v92;
  *(v96 + v90[10]) = v93;
  *(v96 + v90[11]) = v94;
  *(v96 + v90[12]) = v95;
  *(v96 + v90[13]) = 0;
  *(v96 + v90[14]) = 0;
  v103 = v96 + v90[15];
  v104 = v145;
  *(v103 + 64) = v144;
  *(v103 + 80) = v104;
  *(v103 + 96) = *v146;
  *(v103 + 109) = *&v146[13];
  v105 = v141;
  *v103 = v140;
  *(v103 + 16) = v105;
  v106 = v143;
  *(v103 + 32) = v142;
  *(v103 + 48) = v106;
}

void *sub_1D1929CE8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1D19FB048(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D1929D78(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a1 + 32;
    v6 = a2 + 56;
    while (1)
    {
      if (*(a2 + 16))
      {
        v7 = *(v5 + v4);
        sub_1D1E6920C();
        v8 = v7 >> 6;
        sub_1D1E6923C();
        sub_1D1E678EC();
        v9 = sub_1D1E6926C();
        v10 = -1 << *(a2 + 32);
        v11 = v9 & ~v10;
        if ((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          break;
        }
      }

LABEL_4:
      if (++v4 == v2)
      {
        return 1;
      }
    }

    v12 = ~v10;
    while (1)
    {
      v13 = *(*(a2 + 48) + v11);
      if (v13 >> 6)
      {
        if (v13 >> 6 == 1)
        {
          if (v8 != 1)
          {
            goto LABEL_9;
          }
        }

        else if (v8 != 2)
        {
          goto LABEL_9;
        }

        if (((v13 ^ v7) & 0x3F) == 0)
        {
          return 0;
        }
      }

      else if (v7 <= 0x3F && v13 == v7)
      {
        return 0;
      }

LABEL_9:
      v11 = (v11 + 1) & v12;
      if (((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }

  return 1;
}

uint64_t sub_1D1929F38(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v18 = *(a1 + 16);
  if (!v18)
  {
    return 1;
  }

  v3 = 0;
  v17 = a1 + 32;
  v4 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      v5 = *(v17 + v3);
      sub_1D1E6920C();
      ServiceKind.rawValue.getter();
      sub_1D1E678EC();

      v6 = sub_1D1E6926C();
      v7 = -1 << *(a2 + 32);
      v8 = v6 & ~v7;
      if ((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
      {
        break;
      }
    }

LABEL_4:
    if (++v3 == v18)
    {
      return 1;
    }
  }

  v9 = ~v7;
  while (1)
  {
    v10 = "takeSnaphotsWhenBusy";
    switch(*(*(a2 + 48) + v8))
    {
      case 1:
        v11 = "0000003E-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 2:
        v11 = "00000270-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 3:
        v11 = "000000BB-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 4:
        v11 = "0000008D-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 5:
        v11 = "00000096-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 6:
        v11 = "00000042-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 7:
        v11 = "00000110-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 8:
        v11 = "00000204-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 9:
        v11 = "00000097-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0xA:
        v11 = "0000007F-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0xB:
        v11 = "00000080-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0xC:
        v11 = "00000129-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0xD:
        v11 = "00000237-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0xE:
        v11 = "00000081-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0xF:
        v11 = "00000121-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x10:
        v11 = "00000040-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x11:
        v11 = "000000D7-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x12:
        v11 = "000000BA-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x13:
        v11 = "00000041-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x14:
        v11 = "000000BC-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x15:
        v11 = "000000BD-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x16:
        v11 = "00000082-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x17:
        v11 = "000000D9-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x18:
        v11 = "000000CF-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x19:
        v11 = "000000CC-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x1A:
        v11 = "00000083-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x1B:
        v11 = "00000084-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x1C:
        v11 = "00000043-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x1D:
        v11 = "00000044-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x1E:
        v11 = "00000045-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x1F:
        v11 = "00000112-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x20:
        v11 = "00000085-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x21:
        v11 = "00000086-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x22:
        v11 = "00000047-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x23:
        v11 = "0000007E-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x24:
        v11 = "000000B9-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x25:
        v11 = "00000087-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x26:
        v11 = "00000113-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x27:
        v11 = "00000088-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x28:
        v11 = "00000089-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x29:
        v11 = "00000049-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x2A:
        v11 = "00000125-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x2B:
        v11 = "00000122-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x2C:
        v11 = "000000D8-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x2D:
        v11 = "0000008A-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x2E:
        v11 = "0000004A-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x2F:
        v11 = "000000D0-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x30:
        v11 = "000000B7-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x31:
        v11 = "0000020A-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x32:
        v11 = "0000020F-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x33:
        v11 = "0000008B-0000-1000-8000-0026BB765291";
        goto LABEL_61;
      case 0x34:
        v11 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_61:
        v10 = v11 - 32;
        break;
      default:
        break;
    }

    v12 = v10 | 0x8000000000000000;
    v13 = "takeSnaphotsWhenBusy";
    switch(v5)
    {
      case 1:
        v14 = "0000003E-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 2:
        v14 = "00000270-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 3:
        v14 = "000000BB-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 4:
        v14 = "0000008D-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 5:
        v14 = "00000096-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 6:
        v14 = "00000042-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 7:
        v14 = "00000110-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 8:
        v14 = "00000204-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 9:
        v14 = "00000097-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 10:
        v14 = "0000007F-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 11:
        v14 = "00000080-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 12:
        v14 = "00000129-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 13:
        v14 = "00000237-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 14:
        v14 = "00000081-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 15:
        v14 = "00000121-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 16:
        v14 = "00000040-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 17:
        v14 = "000000D7-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 18:
        v14 = "000000BA-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 19:
        v14 = "00000041-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 20:
        v14 = "000000BC-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 21:
        v14 = "000000BD-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 22:
        v14 = "00000082-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 23:
        v14 = "000000D9-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 24:
        v14 = "000000CF-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 25:
        v14 = "000000CC-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 26:
        v14 = "00000083-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 27:
        v14 = "00000084-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 28:
        v14 = "00000043-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 29:
        v14 = "00000044-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 30:
        v14 = "00000045-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 31:
        v14 = "00000112-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 32:
        v14 = "00000085-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 33:
        v14 = "00000086-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 34:
        v14 = "00000047-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 35:
        v14 = "0000007E-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 36:
        v14 = "000000B9-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 37:
        v14 = "00000087-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 38:
        v14 = "00000113-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 39:
        v14 = "00000088-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 40:
        v14 = "00000089-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 41:
        v14 = "00000049-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 42:
        v14 = "00000125-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 43:
        v14 = "00000122-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 44:
        v14 = "000000D8-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 45:
        v14 = "0000008A-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 46:
        v14 = "0000004A-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 47:
        v14 = "000000D0-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 48:
        v14 = "000000B7-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 49:
        v14 = "0000020A-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 50:
        v14 = "0000020F-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 51:
        v14 = "0000008B-0000-1000-8000-0026BB765291";
        goto LABEL_115;
      case 52:
        v14 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_115:
        v13 = v14 - 32;
        break;
      default:
        break;
    }

    if (v12 == (v13 | 0x8000000000000000))
    {
      break;
    }

    v15 = sub_1D1E6904C();

    if (v15)
    {
      return 0;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_1D192A600(uint64_t result, uint64_t a2)
{
  if (*(result + 16) < *(a2 + 16))
  {
    return 0;
  }

  v3 = result;
  v4 = 0;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  for (i = result + 56; v8; v4 = v11)
  {
    v11 = v4;
LABEL_11:
    if (!*(v3 + 16))
    {
      return 0;
    }

    v12 = *(*(a2 + 48) + (__clz(__rbit64(v8)) | (v11 << 6)));
    sub_1D1E6920C();
    v13 = dword_1D1E85534[v12];
    sub_1D1E6924C();
    result = sub_1D1E6926C();
    v14 = -1 << *(v3 + 32);
    v15 = result & ~v14;
    if (((*(i + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v8 &= v8 - 1;
    v16 = ~v14;
    while (dword_1D1E85534[*(*(v3 + 48) + v15)] != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(i + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      return 1;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D192A784(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
LABEL_6:
  if (v7)
  {
    v12 = v11;
LABEL_11:
    if (*(a1 + 16))
    {
      v13 = *(*(a2 + 48) + (__clz(__rbit64(v7)) | (v12 << 6)));
      sub_1D1E6920C();
      v14 = v13 >> 6;
      sub_1D1E6923C();
      sub_1D1E678EC();
      result = sub_1D1E6926C();
      v15 = -1 << *(a1 + 32);
      v16 = result & ~v15;
      if ((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v7 &= v7 - 1;
        v17 = ~v15;
        do
        {
          v18 = *(*(a1 + 48) + v16);
          if (v18 >> 6)
          {
            if (v18 >> 6 == 1)
            {
              if (v14 == 1 && ((v18 ^ v13) & 0x3F) == 0)
              {
                v11 = v12;
                goto LABEL_6;
              }
            }

            else if (v14 == 2 && ((v18 ^ v13) & 0x3F) == 0)
            {
              v11 = v12;
              goto LABEL_6;
            }
          }

          else if (v13 <= 0x3F && v18 == v13)
          {
            v11 = v12;
            goto LABEL_6;
          }

          v16 = (v16 + 1) & v17;
        }

        while (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
      }
    }

    return 0;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D192A9D0(uint64_t a1, uint64_t a2)
{
  v74 = sub_1D1E66A7C();
  v4 = *(v74 - 8);
  v5 = MEMORY[0x1EEE9AC00](v74);
  v72 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v73 = &v51 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v51 - v9;
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v65 = a1 + 56;
  v70 = v4 + 16;
  v61 = v4 + 32;
  v71 = (v4 + 8);

  v17 = 0;
  v60 = v15;
  if (v14)
  {
LABEL_6:
    if (*(a1 + 16))
    {
      goto LABEL_7;
    }

LABEL_67:

    return 0;
  }

  do
  {
LABEL_10:
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_69;
    }

    if (v20 >= v15)
    {

      return 1;
    }

    v14 = *(v11 + 8 * v20);
    ++v17;
  }

  while (!v14);
  v17 = v20;
  if (!*(a1 + 16))
  {
    goto LABEL_67;
  }

LABEL_7:
  v18 = *(*(a2 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v14)))));
  sub_1D1E6920C();
  v63 = v17;
  if (v18 == 2)
  {
    v19 = 2;
    goto LABEL_16;
  }

  if (v18 == 1)
  {
    v19 = 0;
LABEL_16:
    MEMORY[0x1D3892850](v19);
    goto LABEL_19;
  }

  MEMORY[0x1D3892850](1);
  sub_1D1E6922C();
  if (v18)
  {

    sub_1D176D4E8(v75, v18);
  }

LABEL_19:
  v21 = sub_1D1E6926C();
  v22 = -1 << *(a1 + 32);
  v23 = v21 & ~v22;
  v24 = v65;
  if (((*(v65 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
  {
LABEL_64:

    sub_1D1771B10(v18);
    return 0;
  }

  v62 = (v14 - 1) & v14;
  v25 = ~v22;
  v66 = v18 - 1;
  v69 = v18 + 56;
  while (1)
  {
    v26 = *(*(a1 + 48) + 8 * v23);
    if (v26 == 2)
    {
      v27 = 2;
      if (v18 == 2)
      {
        goto LABEL_60;
      }

      sub_1D1771B24(v18);
      v28 = 2;
      goto LABEL_29;
    }

    if (v26 == 1)
    {
      v27 = 1;
      if (v18 == 1)
      {
        goto LABEL_60;
      }

      sub_1D1771B24(v18);
      v28 = 1;
      goto LABEL_29;
    }

    if (v66 >= 2)
    {
      if (!v26)
      {
        sub_1D1771B24(v18);
        sub_1D1771B24(v18);
        sub_1D1771B24(0);
        sub_1D1771B10(0);
        sub_1D1771B10(v18);
        if (!v18)
        {
          v26 = 0;
          goto LABEL_61;
        }

        goto LABEL_30;
      }

      if (!v18)
      {
        sub_1D1771B24(0);
        sub_1D1771B24(0);
        sub_1D1771B24(v26);
        sub_1D1771B10(v26);
        v29 = 0;
        goto LABEL_31;
      }

      if (v26 == v18)
      {
        sub_1D1771B24(v18);
        v27 = v18;
        v26 = v18;
LABEL_60:
        sub_1D1771B10(v27);
LABEL_61:
        result = sub_1D1771B10(v26);
        v15 = v60;
        v14 = v62;
        v17 = v63;
        if (!v62)
        {
          goto LABEL_10;
        }

        goto LABEL_6;
      }

      if (*(v26 + 16) == *(v18 + 16))
      {
        break;
      }
    }

    sub_1D1771B24(v18);
    sub_1D1771B24(v26);
    v28 = v26;
LABEL_29:
    sub_1D1771B10(v28);
LABEL_30:
    v29 = v18;
LABEL_31:
    sub_1D1771B10(v29);
LABEL_32:
    v23 = (v23 + 1) & v25;
    if (((*(v24 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  v64 = v4;
  v30 = v10;
  v55 = a2;
  v31 = *(v26 + 56);
  v52 = v26 + 56;
  v32 = 1 << *(v26 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & v31;
  sub_1D1771B24(v26);
  sub_1D1771B24(v18);
  sub_1D1771B24(v26);
  sub_1D1771B24(v18);
  result = sub_1D1771B24(v26);
  v35 = 0;
  v36 = (v32 + 63) >> 6;
  v53 = v36;
  v59 = a1;
  v58 = v30;
  v57 = v11;
  v54 = v25;
  if (v34)
  {
    while (1)
    {
      v56 = (v34 - 1) & v34;
      v37 = __clz(__rbit64(v34)) | (v35 << 6);
      v10 = v30;
      v4 = v64;
LABEL_48:
      v40 = *(v4 + 72);
      v41 = *(v26 + 48) + v40 * v37;
      v42 = v74;
      v67 = *(v4 + 16);
      v68 = v40;
      v67(v10, v41, v74);
      (*(v4 + 32))(v73, v10, v42);
      sub_1D192F8C4(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v43 = sub_1D1E676DC();
      v44 = -1 << *(v18 + 32);
      v45 = v43 & ~v44;
      if (((*(v69 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
        break;
      }

      v46 = ~v44;
      while (1)
      {
        v47 = v72;
        v48 = v74;
        v67(v72, *(v18 + 48) + v45 * v68, v74);
        sub_1D192F8C4(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v49 = sub_1D1E6775C();
        v50 = *v71;
        (*v71)(v47, v48);
        if (v49)
        {
          break;
        }

        v45 = (v45 + 1) & v46;
        if (((*(v69 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      result = (v50)(v73, v74);
      a1 = v59;
      v30 = v58;
      v11 = v57;
      v36 = v53;
      v34 = v56;
      if (!v56)
      {
        goto LABEL_43;
      }
    }

LABEL_58:
    sub_1D1771B10(v18);
    sub_1D1771B10(v26);
    sub_1D1771B10(v26);
    sub_1D1771B10(v18);
    sub_1D1771B10(v26);
    (*v71)(v73, v74);
    a2 = v55;
    a1 = v59;
    v4 = v64;
    v24 = v65;
    v10 = v58;
    v11 = v57;
    v25 = v54;
    goto LABEL_32;
  }

LABEL_43:
  v38 = v35;
  v10 = v30;
  v4 = v64;
  while (1)
  {
    v35 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v35 >= v36)
    {
      sub_1D1771B10(v18);
      sub_1D1771B10(v18);
      sub_1D1771B10(v26);
      sub_1D1771B10(v26);
      v27 = v18;
      a2 = v55;
      goto LABEL_60;
    }

    v39 = *(v52 + 8 * v35);
    ++v38;
    if (v39)
    {
      v56 = (v39 - 1) & v39;
      v37 = __clz(__rbit64(v39)) | (v35 << 6);
      goto LABEL_48;
    }
  }

LABEL_69:
  __break(1u);
  return result;
}

unint64_t sub_1D192B170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClusterPath(0);
  v41[3] = v8;
  v41[4] = sub_1D192F8C4(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  sub_1D192DD58(a2, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  *&v34 = a3;
  *(&v34 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v41, v40);
  sub_1D1741C08(v40, &v34, &qword_1EC645D58, &unk_1D1E7E530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  v10 = swift_dynamicCast();
  if ((v10 & 1) == 0)
  {
    v38 = 0;
  }

  v39 = v10 ^ 1;
  sub_1D1741C08(v40, &v34, &qword_1EC645D58, &unk_1D1E7E530);
  if (v35)
  {
    sub_1D1742194(&v34, v37);
    if (v39)
    {
      LOBYTE(v34) = *(boxed_opaque_existential_1 + *(v8 + 20));
      v11 = sub_1D1A38104(a1, &v34);
      v13 = v12;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v14 = sub_1D1E6709C();
      __swift_project_value_buffer(v14, qword_1EE07A0B0);
      sub_1D1741970(v37, v36);
      sub_1D17419CC(v41, &v34);

      v15 = sub_1D1E6707C();
      v16 = sub_1D1E6833C();

      if (!os_log_type_enabled(v15, v16))
      {

        __swift_destroy_boxed_opaque_existential_1(v36);
        __swift_destroy_boxed_opaque_existential_1(v37);
        sub_1D1741A30(v40, &qword_1EC645D58, &unk_1D1E7E530);
        __swift_destroy_boxed_opaque_existential_1(&v34);
        goto LABEL_12;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v17 = 136446978;
      v19 = sub_1D1B1312C(v11, v13, &v33);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_1D1B1312C(0x3233746E4955, 0xE600000000000000, &v33);
      *(v17 + 22) = 2082;
      sub_1D1741970(v36, &v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v20 = sub_1D1E678BC();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v36);
      v23 = sub_1D1B1312C(v20, v22, &v33);

      *(v17 + 24) = v23;
      *(v17 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v34, v35);
      v24 = ClusterPath.description.getter();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1(&v34);
      v27 = sub_1D1B1312C(v24, v26, &v33);

      *(v17 + 34) = v27;
      _os_log_impl(&dword_1D16EC000, v15, v16, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v17, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v18, -1, -1);
      MEMORY[0x1D3893640](v17, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
    v28 = v40;
  }

  else
  {
    sub_1D1741A30(v40, &qword_1EC645D58, &unk_1D1E7E530);
    v28 = &v34;
  }

  sub_1D1741A30(v28, &qword_1EC645D58, &unk_1D1E7E530);
LABEL_12:
  v29 = v38;
  v30 = v39;
  __swift_destroy_boxed_opaque_existential_1(v41);
  LOBYTE(v41[0]) = v30;
  return v29 | (v30 << 32);
}

unint64_t sub_1D192B5B4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = HIWORD(a2);
  v40[3] = &type metadata for BasicClusterPath;
  v40[4] = sub_1D18F6128();
  LOWORD(v40[0]) = v6;
  BYTE2(v40[0]) = v8;
  *&v33 = a3;
  *(&v33 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v40, v39);
  sub_1D1741C08(v39, &v33, &qword_1EC645D58, &unk_1D1E7E530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  v9 = swift_dynamicCast();
  if ((v9 & 1) == 0)
  {
    v37 = 0;
  }

  v38 = v9 ^ 1;
  sub_1D1741C08(v39, &v33, &qword_1EC645D58, &unk_1D1E7E530);
  if (v34)
  {
    sub_1D1742194(&v33, v36);
    if (v38)
    {
      LOBYTE(v33) = BYTE2(v40[0]);
      v10 = sub_1D1A38104(a1, &v33);
      v12 = v11;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v13 = sub_1D1E6709C();
      __swift_project_value_buffer(v13, qword_1EE07A0B0);
      sub_1D1741970(v36, v35);
      sub_1D17419CC(v40, &v33);

      v14 = sub_1D1E6707C();
      v15 = sub_1D1E6833C();

      if (!os_log_type_enabled(v14, v15))
      {

        __swift_destroy_boxed_opaque_existential_1(v35);
        __swift_destroy_boxed_opaque_existential_1(v36);
        sub_1D1741A30(v39, &qword_1EC645D58, &unk_1D1E7E530);
        __swift_destroy_boxed_opaque_existential_1(&v33);
        goto LABEL_12;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136446978;
      v18 = sub_1D1B1312C(v10, v12, &v32);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_1D1B1312C(0x3233746E4955, 0xE600000000000000, &v32);
      *(v16 + 22) = 2082;
      sub_1D1741970(v35, &v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v19 = sub_1D1E678BC();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1(v35);
      v22 = sub_1D1B1312C(v19, v21, &v32);

      *(v16 + 24) = v22;
      *(v16 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v33, v34);
      v23 = BasicClusterPath.description.getter();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1(&v33);
      v26 = sub_1D1B1312C(v23, v25, &v32);

      *(v16 + 34) = v26;
      _os_log_impl(&dword_1D16EC000, v14, v15, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v36);
    v27 = v39;
  }

  else
  {
    sub_1D1741A30(v39, &qword_1EC645D58, &unk_1D1E7E530);
    v27 = &v33;
  }

  sub_1D1741A30(v27, &qword_1EC645D58, &unk_1D1E7E530);
LABEL_12:
  v28 = v37;
  v29 = v38;
  __swift_destroy_boxed_opaque_existential_1(v40);
  LOBYTE(v40[0]) = v29;
  return v28 | (v29 << 32);
}

uint64_t sub_1D192B9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClusterPath(0);
  v41[3] = v8;
  v41[4] = sub_1D192F8C4(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  sub_1D192DD58(a2, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647388, &qword_1D1E85508);
  *&v35 = a3;
  *(&v35 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v41, v40);
  sub_1D1741C08(v40, &v35, &qword_1EC645D58, &unk_1D1E7E530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = 0;
  }

  sub_1D1741C08(v40, &v35, &qword_1EC645D58, &unk_1D1E7E530);
  if (v36)
  {
    sub_1D1742194(&v35, v38);
    if (!v39)
    {
      LOBYTE(v35) = *(boxed_opaque_existential_1 + *(v8 + 20));
      v10 = sub_1D1A38104(a1, &v35);
      v12 = v11;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v13 = sub_1D1E6709C();
      __swift_project_value_buffer(v13, qword_1EE07A0B0);
      sub_1D1741970(v38, v37);
      sub_1D17419CC(v41, &v35);

      v14 = sub_1D1E6707C();
      v15 = sub_1D1E6833C();

      if (!os_log_type_enabled(v14, v15))
      {

        __swift_destroy_boxed_opaque_existential_1(v37);
        __swift_destroy_boxed_opaque_existential_1(v38);
        sub_1D1741A30(v40, &qword_1EC645D58, &unk_1D1E7E530);
        __swift_destroy_boxed_opaque_existential_1(&v35);
        goto LABEL_12;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v17;
      *v16 = 136446978;
      v18 = sub_1D1B1312C(v10, v12, &v34);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      v19 = sub_1D1E6940C();
      v21 = sub_1D1B1312C(v19, v20, &v34);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2082;
      sub_1D1741970(v37, &v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v22 = sub_1D1E678BC();
      v24 = v23;
      __swift_destroy_boxed_opaque_existential_1(v37);
      v25 = sub_1D1B1312C(v22, v24, &v34);

      *(v16 + 24) = v25;
      *(v16 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v35, v36);
      v26 = ClusterPath.description.getter();
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_1(&v35);
      v29 = sub_1D1B1312C(v26, v28, &v34);

      *(v16 + 34) = v29;
      _os_log_impl(&dword_1D16EC000, v14, v15, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v38);
    v30 = v40;
  }

  else
  {
    sub_1D1741A30(v40, &qword_1EC645D58, &unk_1D1E7E530);
    v30 = &v35;
  }

  sub_1D1741A30(v30, &qword_1EC645D58, &unk_1D1E7E530);
LABEL_12:
  v31 = v39;
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v31;
}

uint64_t sub_1D192BDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClusterPath(0);
  v41[3] = v8;
  v41[4] = sub_1D192F8C4(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  sub_1D192DD58(a2, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  *&v35 = a3;
  *(&v35 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v41, v40);
  sub_1D1741C08(v40, &v35, &qword_1EC645D58, &unk_1D1E7E530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = 0;
  }

  sub_1D1741C08(v40, &v35, &qword_1EC645D58, &unk_1D1E7E530);
  if (v36)
  {
    sub_1D1742194(&v35, v38);
    if (!v39)
    {
      LOBYTE(v35) = *(boxed_opaque_existential_1 + *(v8 + 20));
      v10 = sub_1D1A38104(a1, &v35);
      v12 = v11;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v13 = sub_1D1E6709C();
      __swift_project_value_buffer(v13, qword_1EE07A0B0);
      sub_1D1741970(v38, v37);
      sub_1D17419CC(v41, &v35);

      v14 = sub_1D1E6707C();
      v15 = sub_1D1E6833C();

      if (!os_log_type_enabled(v14, v15))
      {

        __swift_destroy_boxed_opaque_existential_1(v37);
        __swift_destroy_boxed_opaque_existential_1(v38);
        sub_1D1741A30(v40, &qword_1EC645D58, &unk_1D1E7E530);
        __swift_destroy_boxed_opaque_existential_1(&v35);
        goto LABEL_12;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v17;
      *v16 = 136446978;
      v18 = sub_1D1B1312C(v10, v12, &v34);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      v19 = sub_1D1E6940C();
      v21 = sub_1D1B1312C(v19, v20, &v34);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2082;
      sub_1D1741970(v37, &v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v22 = sub_1D1E678BC();
      v24 = v23;
      __swift_destroy_boxed_opaque_existential_1(v37);
      v25 = sub_1D1B1312C(v22, v24, &v34);

      *(v16 + 24) = v25;
      *(v16 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v35, v36);
      v26 = ClusterPath.description.getter();
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_1(&v35);
      v29 = sub_1D1B1312C(v26, v28, &v34);

      *(v16 + 34) = v29;
      _os_log_impl(&dword_1D16EC000, v14, v15, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v38);
    v30 = v40;
  }

  else
  {
    sub_1D1741A30(v40, &qword_1EC645D58, &unk_1D1E7E530);
    v30 = &v35;
  }

  sub_1D1741A30(v30, &qword_1EC645D58, &unk_1D1E7E530);
LABEL_12:
  v31 = v39;
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v31;
}

uint64_t sub_1D192C254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[3] = type metadata accessor for ClusterPath(0);
  v21[4] = sub_1D192F8C4(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  sub_1D192DD58(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v7 = sub_1D19C56F8(65529, boxed_opaque_existential_1, a2, a3);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EE07A0B0);
    sub_1D17419CC(v21, v20);
    v10 = sub_1D1E6707C();
    v11 = sub_1D1E6833C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      v14 = ClusterPath.description.getter();
      v16 = v15;
      __swift_destroy_boxed_opaque_existential_1(v20);
      v17 = sub_1D1B1312C(v14, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1D16EC000, v10, v11, "Failed to get command list for cluster %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1D3893640](v13, -1, -1);
      MEMORY[0x1D3893640](v12, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    v8 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v8;
}

BOOL _s13HomeDataModel21StaticRVCClusterGroupV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EndpointPath(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = type metadata accessor for StaticRVCClusterGroup(0);
  if (*(a1 + *(v5 + 20)) != *(a2 + *(v5 + 20)))
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6);
  v9 = (a2 + v6);
  if (v8 != *v9)
  {
    return 0;
  }

  v61 = v5;
  v10 = v7[3];
  v11 = v9[3];
  v12 = v7[1] == v9[1] && v7[2] == v9[2];
  if (!v12 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v13 = sub_1D17A7B94(v10, v11);

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = v61[7];
  v16 = *(a1 + v14);
  v15 = *(a1 + v14 + 8);
  v18 = *(a1 + v14 + 16);
  v17 = *(a1 + v14 + 24);
  v19 = (a2 + v14);
  v21 = *v19;
  v20 = v19[1];
  v23 = v19[2];
  v22 = v19[3];
  if (!v18)
  {
    sub_1D191F3B0(v16, v15, 0, v17);
    if (!v23)
    {
      sub_1D191F3B0(v21, v20, 0, v22);
      sub_1D192F928(v16, v15, 0, v17);
      goto LABEL_29;
    }

    sub_1D191F3B0(v21, v20, v23, v22);
    goto LABEL_24;
  }

  if (!v23)
  {
    sub_1D191F3B0(v16, v15, v18, v17);
    sub_1D191F3B0(v21, v20, 0, v22);
    sub_1D191F3B0(v16, v15, v18, v17);

LABEL_24:
    sub_1D192F928(v16, v15, v18, v17);
    v25 = v21;
    v26 = v20;
    v27 = v23;
    v28 = v22;
    goto LABEL_25;
  }

  if (v16 != v21 || (v15 != v20 || v18 != v23) && (v21 = v16, (sub_1D1E6904C() & 1) == 0))
  {
    sub_1D191F3B0(v16, v15, v18, v17);
    sub_1D191F3B0(v21, v20, v23, v22);
    sub_1D191F3B0(v16, v15, v18, v17);
    sub_1D192F928(v21, v20, v23, v22);

    v25 = v16;
    v26 = v15;
    v27 = v18;
    v28 = v17;
LABEL_25:
    sub_1D192F928(v25, v26, v27, v28);
    return 0;
  }

  sub_1D191F3B0(v16, v15, v18, v17);
  sub_1D191F3B0(v16, v20, v23, v22);
  sub_1D191F3B0(v16, v15, v18, v17);
  v24 = sub_1D17A7B94(v17, v22);
  sub_1D192F928(v16, v20, v23, v22);

  sub_1D192F928(v16, v15, v18, v17);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v30 = v61[8];
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 1);
  v33 = a2 + v30;
  v34 = *(a2 + v30);
  v35 = *(v33 + 1);
  if (v32)
  {
    if (v32 == 1)
    {
      result = 0;
      if (v35 != 1)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v35 != 2)
      {
        return result;
      }
    }

LABEL_36:
    if (v31 != v34)
    {
      return result;
    }

    if ((sub_1D17B30F0() & 1) == 0 || (sub_1D17A9034(*(a1 + v61[10]), *(a2 + v61[10])) & 1) == 0)
    {
      return 0;
    }

    v36 = v61[11];
    v37 = *(a1 + v36);
    v38 = *(a2 + v36);
    if (v37)
    {
      if (!v38)
      {
        return 0;
      }

      v39 = sub_1D177AC5C(v37, v38);

      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v38)
    {
      return 0;
    }

    if (*(a1 + v61[12]) != *(a2 + v61[12]) || *(a1 + v61[13]) != *(a2 + v61[13]) || *(a1 + v61[14]) != *(a2 + v61[14]))
    {
      return 0;
    }

    v40 = a1 + v61[15];
    v41 = *(v40 + 80);
    v94[4] = *(v40 + 64);
    v94[5] = v41;
    v95[0] = *(v40 + 96);
    *(v95 + 13) = *(v40 + 109);
    v42 = *(v40 + 16);
    v94[0] = *v40;
    v94[1] = v42;
    v43 = *(v40 + 32);
    v94[3] = *(v40 + 48);
    v94[2] = v43;
    v44 = (a2 + v61[15]);
    v45 = v44[3];
    v46 = v44[4];
    *(v97 + 13) = *(v44 + 109);
    v47 = v44[6];
    v96[5] = v44[5];
    v97[0] = v47;
    v96[3] = v45;
    v96[4] = v46;
    v48 = *v44;
    v49 = v44[2];
    v96[1] = v44[1];
    v96[2] = v49;
    v96[0] = v48;
    v50 = *&v94[0];
    v51 = *(v40 + 56);
    v52 = *(v40 + 88);
    v92 = *(v40 + 72);
    v93[0] = v52;
    *(v93 + 13) = *(v40 + 101);
    v53 = *(v40 + 24);
    v88 = *(v40 + 8);
    v89 = v53;
    v90 = *(v40 + 40);
    v91 = v51;
    v54 = v48;
    v55 = *(v44 + 24);
    v56 = *(v44 + 40);
    v82 = *(v44 + 8);
    v83 = v55;
    v57 = *(v44 + 56);
    v58 = *(v44 + 72);
    *(v87 + 13) = *(v44 + 101);
    v59 = *(v44 + 88);
    v86 = v58;
    v87[0] = v59;
    v84 = v56;
    v85 = v57;
    if (*&v94[0])
    {
      *v74 = *&v94[0];
      *&v74[8] = *(v40 + 8);
      *&v74[24] = *(v40 + 24);
      *&v74[40] = *(v40 + 40);
      *&v74[56] = *(v40 + 56);
      *&v74[101] = *(v40 + 101);
      *&v74[88] = *(v40 + 88);
      *&v74[72] = *(v40 + 72);
      v69 = *&v74[32];
      v70 = *&v74[48];
      v67 = *v74;
      v68 = *&v74[16];
      *(v73 + 13) = *&v74[109];
      v72 = *&v74[80];
      v73[0] = *&v74[96];
      v71 = *&v74[64];
      if (v54)
      {
        *&v66[56] = *(v44 + 56);
        *&v66[72] = *(v44 + 72);
        *&v66[88] = *(v44 + 88);
        *&v66[101] = *(v44 + 101);
        *&v66[8] = *(v44 + 8);
        *&v66[24] = *(v44 + 24);
        *&v66[40] = *(v44 + 40);
        *v66 = v54;
        sub_1D1741C08(v94, v64, &qword_1EC646FD0, &qword_1D1E841D0);
        sub_1D1741C08(v96, v64, &qword_1EC646FD0, &qword_1D1E841D0);
        sub_1D1741C08(v74, v64, &qword_1EC646FD0, &qword_1D1E841D0);
        v60 = _s13HomeDataModel11ServiceAreaV2eeoiySbAC_ACtFZ_0(&v67, v66);
        v62[4] = *&v66[64];
        v62[5] = *&v66[80];
        v63[0] = *&v66[96];
        *(v63 + 13) = *&v66[109];
        v62[0] = *v66;
        v62[1] = *&v66[16];
        v62[2] = *&v66[32];
        v62[3] = *&v66[48];
        sub_1D192D128(v62);
        v64[4] = v71;
        v64[5] = v72;
        v65[0] = v73[0];
        *(v65 + 13) = *(v73 + 13);
        v64[0] = v67;
        v64[1] = v68;
        v64[2] = v69;
        v64[3] = v70;
        sub_1D192D128(v64);
        *&v66[56] = v91;
        *&v66[72] = v92;
        *&v66[88] = v93[0];
        *&v66[101] = *(v93 + 13);
        *&v66[8] = v88;
        *&v66[24] = v89;
        *v66 = v50;
        *&v66[40] = v90;
        sub_1D1741A30(v66, &qword_1EC646FD0, &qword_1D1E841D0);
        return (v60 & 1) != 0;
      }

      *&v66[64] = *&v74[64];
      *&v66[80] = *&v74[80];
      *&v66[96] = *&v74[96];
      *&v66[109] = *&v74[109];
      *v66 = *v74;
      *&v66[16] = *&v74[16];
      *&v66[32] = *&v74[32];
      *&v66[48] = *&v74[48];
      sub_1D1741C08(v94, v64, &qword_1EC646FD0, &qword_1D1E841D0);
      sub_1D1741C08(v96, v64, &qword_1EC646FD0, &qword_1D1E841D0);
      sub_1D1741C08(v74, v64, &qword_1EC646FD0, &qword_1D1E841D0);
      sub_1D192D128(v66);
    }

    else
    {
      if (!v54)
      {
        *v74 = 0;
        *&v74[56] = *(v40 + 56);
        *&v74[72] = *(v40 + 72);
        *&v74[88] = *(v40 + 88);
        *&v74[101] = *(v40 + 101);
        *&v74[8] = *(v40 + 8);
        *&v74[24] = *(v40 + 24);
        *&v74[40] = *(v40 + 40);
        sub_1D1741C08(v94, &v67, &qword_1EC646FD0, &qword_1D1E841D0);
        sub_1D1741C08(v96, &v67, &qword_1EC646FD0, &qword_1D1E841D0);
        sub_1D1741A30(v74, &qword_1EC646FD0, &qword_1D1E841D0);
        return 1;
      }

      sub_1D1741C08(v94, v74, &qword_1EC646FD0, &qword_1D1E841D0);
      sub_1D1741C08(v96, v74, &qword_1EC646FD0, &qword_1D1E841D0);
    }

    *&v74[56] = v91;
    *&v74[72] = v92;
    *&v74[88] = v93[0];
    *&v74[101] = *(v93 + 13);
    *&v74[8] = v88;
    *&v74[24] = v89;
    *&v74[40] = v90;
    *v74 = v50;
    v75 = v54;
    v76 = v82;
    v77 = v83;
    *(v81 + 13) = *(v87 + 13);
    v80 = v86;
    v81[0] = v87[0];
    v78 = v84;
    v79 = v85;
    sub_1D1741A30(v74, &qword_1EC6473A0, &qword_1D1E85518);
    return 0;
  }

  result = 0;
  if (!v35)
  {
    goto LABEL_36;
  }

  return result;
}

unint64_t sub_1D192CD48()
{
  result = qword_1EC646FE0;
  if (!qword_1EC646FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646FE0);
  }

  return result;
}

unint64_t sub_1D192CD9C()
{
  result = qword_1EC646FE8;
  if (!qword_1EC646FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646FE8);
  }

  return result;
}

unint64_t sub_1D192CDF0()
{
  result = qword_1EC646FF0;
  if (!qword_1EC646FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646FF0);
  }

  return result;
}

unint64_t sub_1D192CE44()
{
  result = qword_1EC646FF8;
  if (!qword_1EC646FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646FF8);
  }

  return result;
}

unint64_t sub_1D192CE98()
{
  result = qword_1EC647000;
  if (!qword_1EC647000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647000);
  }

  return result;
}

unint64_t sub_1D192CEEC()
{
  result = qword_1EC647010;
  if (!qword_1EC647010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647008, &qword_1D1E841E0);
    sub_1D192CD9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647010);
  }

  return result;
}

unint64_t sub_1D192CF70()
{
  result = qword_1EC647020;
  if (!qword_1EC647020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647018, &qword_1D1E841E8);
    sub_1D192CDF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647020);
  }

  return result;
}

unint64_t sub_1D192CFF4()
{
  result = qword_1EC647030;
  if (!qword_1EC647030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647028, &qword_1D1E841F0);
    sub_1D192CE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647030);
  }

  return result;
}

unint64_t sub_1D192D078()
{
  result = qword_1EC647038;
  if (!qword_1EC647038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647038);
  }

  return result;
}

unint64_t sub_1D192D17C()
{
  result = qword_1EC647048;
  if (!qword_1EC647048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647048);
  }

  return result;
}

unint64_t sub_1D192D1D0()
{
  result = qword_1EC647050;
  if (!qword_1EC647050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647050);
  }

  return result;
}

unint64_t sub_1D192D224()
{
  result = qword_1EC647058;
  if (!qword_1EC647058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647058);
  }

  return result;
}

unint64_t sub_1D192D278()
{
  result = qword_1EC647060;
  if (!qword_1EC647060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647060);
  }

  return result;
}

unint64_t sub_1D192D2CC()
{
  result = qword_1EC647068;
  if (!qword_1EC647068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647008, &qword_1D1E841E0);
    sub_1D192D17C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647068);
  }

  return result;
}

unint64_t sub_1D192D350()
{
  result = qword_1EC647070;
  if (!qword_1EC647070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647018, &qword_1D1E841E8);
    sub_1D192D1D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647070);
  }

  return result;
}

unint64_t sub_1D192D3D4()
{
  result = qword_1EC647078;
  if (!qword_1EC647078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647028, &qword_1D1E841F0);
    sub_1D192D224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647078);
  }

  return result;
}

unint64_t sub_1D192D458()
{
  result = qword_1EC647080;
  if (!qword_1EC647080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647080);
  }

  return result;
}

unint64_t sub_1D192D4AC()
{
  result = qword_1EC647090;
  if (!qword_1EC647090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647090);
  }

  return result;
}

unint64_t sub_1D192D500()
{
  result = qword_1EC6470A0;
  if (!qword_1EC6470A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647098, &qword_1D1E84210);
    sub_1D192D584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6470A0);
  }

  return result;
}

unint64_t sub_1D192D584()
{
  result = qword_1EC6470A8;
  if (!qword_1EC6470A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6470A8);
  }

  return result;
}

unint64_t sub_1D192D5D8()
{
  result = qword_1EC6470B8;
  if (!qword_1EC6470B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647098, &qword_1D1E84210);
    sub_1D192D65C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6470B8);
  }

  return result;
}

unint64_t sub_1D192D65C()
{
  result = qword_1EC6470C0;
  if (!qword_1EC6470C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6470C0);
  }

  return result;
}

uint64_t sub_1D192D6B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    v7 = *(v5 + v4);
    sub_1D1E6920C();
    v8 = v7 >> 6;
    sub_1D1E6923C();
    sub_1D1E678EC();
    v9 = sub_1D1E6926C();
    v10 = -1 << *(a2 + 32);
    v11 = v9 & ~v10;
    if (((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }

    ++v4;
    v12 = ~v10;
    while (1)
    {
      v13 = *(*(a2 + 48) + v11);
      if (!(v13 >> 6))
      {
        break;
      }

      if (v13 >> 6 == 1)
      {
        if (v8 != 1)
        {
          goto LABEL_7;
        }
      }

      else if (v8 != 2)
      {
        goto LABEL_7;
      }

      if (((v13 ^ v7) & 0x3F) == 0)
      {
        goto LABEL_17;
      }

LABEL_7:
      v11 = (v11 + 1) & v12;
      if (((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 > 0x3F || v13 != v7)
    {
      goto LABEL_7;
    }

LABEL_17:
    result = 1;
  }

  while (v4 != v2);
  return result;
}

unint64_t sub_1D192D860()
{
  result = qword_1EC6470D0;
  if (!qword_1EC6470D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6470D0);
  }

  return result;
}

unint64_t sub_1D192D8B4()
{
  result = qword_1EC647148;
  if (!qword_1EC647148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647148);
  }

  return result;
}

unint64_t sub_1D192D908()
{
  result = qword_1EC647150;
  if (!qword_1EC647150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647150);
  }

  return result;
}

unint64_t sub_1D192D95C()
{
  result = qword_1EC647158;
  if (!qword_1EC647158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647158);
  }

  return result;
}

unint64_t sub_1D192D9B0()
{
  result = qword_1EC647160;
  if (!qword_1EC647160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647160);
  }

  return result;
}

unint64_t sub_1D192DA04()
{
  result = qword_1EC647168;
  if (!qword_1EC647168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647168);
  }

  return result;
}

unint64_t sub_1D192DA58()
{
  result = qword_1EC647170;
  if (!qword_1EC647170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647170);
  }

  return result;
}

unint64_t sub_1D192DAAC()
{
  result = qword_1EC647178;
  if (!qword_1EC647178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647178);
  }

  return result;
}

unint64_t sub_1D192DB00()
{
  result = qword_1EC647180;
  if (!qword_1EC647180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647180);
  }

  return result;
}

unint64_t sub_1D192DB54()
{
  result = qword_1EC647188;
  if (!qword_1EC647188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647188);
  }

  return result;
}

unint64_t sub_1D192DBA8()
{
  result = qword_1EC647190;
  if (!qword_1EC647190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647190);
  }

  return result;
}

unint64_t sub_1D192DBFC()
{
  result = qword_1EC647198;
  if (!qword_1EC647198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647198);
  }

  return result;
}

unint64_t sub_1D192DC50()
{
  result = qword_1EC6471A0;
  if (!qword_1EC6471A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6471A0);
  }

  return result;
}

unint64_t sub_1D192DCA4()
{
  result = qword_1EC6471A8;
  if (!qword_1EC6471A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6471A8);
  }

  return result;
}

uint64_t sub_1D192DCF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D192DD58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D192DE0C()
{
  result = qword_1EE07C3E8;
  if (!qword_1EE07C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07C3E8);
  }

  return result;
}

unint64_t sub_1D192DE70()
{
  result = qword_1EC647220;
  if (!qword_1EC647220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647220);
  }

  return result;
}

unint64_t sub_1D192DEC8()
{
  result = qword_1EE07C3F8;
  if (!qword_1EE07C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07C3F8);
  }

  return result;
}

unint64_t sub_1D192DF20()
{
  result = qword_1EC647228;
  if (!qword_1EC647228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647230, &qword_1D1E84668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647228);
  }

  return result;
}

void sub_1D192DFAC(uint64_t a1)
{
  type metadata accessor for EndpointPath(319);
  if (v1 <= 0x3F)
  {
    sub_1D17BDF80(319, &qword_1EE07C3E0, &type metadata for StaticRVCClusterGroup.CleanMode);
    if (v2 <= 0x3F)
    {
      sub_1D192E124(319, &qword_1EE07B6A8, sub_1D1785910, &type metadata for StaticRVCClusterGroup.State);
      if (v3 <= 0x3F)
      {
        sub_1D192E124(319, &qword_1EE07B6A0, sub_1D17859B8, &type metadata for StaticRVCClusterGroup.RunMode);
        if (v4 <= 0x3F)
        {
          sub_1D192E184(319);
          if (v5 <= 0x3F)
          {
            sub_1D17BDF80(319, qword_1EE07CDD0, &type metadata for ServiceArea);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D192E124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1D1E681FC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D192E184(uint64_t a1)
{
  if (!qword_1EE07B718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647028, &qword_1D1E841F0);
    v1 = sub_1D1E685AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07B718);
    }
  }
}

uint64_t sub_1D192E1F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D192E240(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D192E3A4()
{
  result = qword_1EC647238;
  if (!qword_1EC647238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647238);
  }

  return result;
}

unint64_t sub_1D192E3FC()
{
  result = qword_1EC647240;
  if (!qword_1EC647240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647240);
  }

  return result;
}

unint64_t sub_1D192E454()
{
  result = qword_1EC647248;
  if (!qword_1EC647248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647248);
  }

  return result;
}

unint64_t sub_1D192E4AC()
{
  result = qword_1EC647250;
  if (!qword_1EC647250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647250);
  }

  return result;
}

unint64_t sub_1D192E504()
{
  result = qword_1EC647258;
  if (!qword_1EC647258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647258);
  }

  return result;
}

unint64_t sub_1D192E55C()
{
  result = qword_1EC647260;
  if (!qword_1EC647260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647260);
  }

  return result;
}

unint64_t sub_1D192E5B4()
{
  result = qword_1EC647268;
  if (!qword_1EC647268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647268);
  }

  return result;
}

unint64_t sub_1D192E60C()
{
  result = qword_1EC647270;
  if (!qword_1EC647270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647270);
  }

  return result;
}

unint64_t sub_1D192E664()
{
  result = qword_1EC647278;
  if (!qword_1EC647278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647278);
  }

  return result;
}

unint64_t sub_1D192E6BC()
{
  result = qword_1EC647280;
  if (!qword_1EC647280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647280);
  }

  return result;
}

unint64_t sub_1D192E714()
{
  result = qword_1EC647288;
  if (!qword_1EC647288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647288);
  }

  return result;
}

unint64_t sub_1D192E76C()
{
  result = qword_1EC647290;
  if (!qword_1EC647290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647290);
  }

  return result;
}

unint64_t sub_1D192E7C4()
{
  result = qword_1EC647298;
  if (!qword_1EC647298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647298);
  }

  return result;
}

unint64_t sub_1D192E81C()
{
  result = qword_1EC6472A0;
  if (!qword_1EC6472A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472A0);
  }

  return result;
}

unint64_t sub_1D192E874()
{
  result = qword_1EC6472A8;
  if (!qword_1EC6472A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472A8);
  }

  return result;
}

unint64_t sub_1D192E8CC()
{
  result = qword_1EC6472B0;
  if (!qword_1EC6472B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472B0);
  }

  return result;
}

unint64_t sub_1D192E924()
{
  result = qword_1EC6472B8;
  if (!qword_1EC6472B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472B8);
  }

  return result;
}

unint64_t sub_1D192E97C()
{
  result = qword_1EC6472C0;
  if (!qword_1EC6472C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472C0);
  }

  return result;
}

unint64_t sub_1D192E9D4()
{
  result = qword_1EC6472C8;
  if (!qword_1EC6472C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472C8);
  }

  return result;
}

unint64_t sub_1D192EA2C()
{
  result = qword_1EC6472D0;
  if (!qword_1EC6472D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472D0);
  }

  return result;
}

unint64_t sub_1D192EA84()
{
  result = qword_1EC6472D8;
  if (!qword_1EC6472D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472D8);
  }

  return result;
}

unint64_t sub_1D192EADC()
{
  result = qword_1EC6472E0;
  if (!qword_1EC6472E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472E0);
  }

  return result;
}

unint64_t sub_1D192EB34()
{
  result = qword_1EC6472E8;
  if (!qword_1EC6472E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472E8);
  }

  return result;
}

unint64_t sub_1D192EB8C()
{
  result = qword_1EC6472F0;
  if (!qword_1EC6472F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472F0);
  }

  return result;
}

unint64_t sub_1D192EBE4()
{
  result = qword_1EC6472F8;
  if (!qword_1EC6472F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6472F8);
  }

  return result;
}

unint64_t sub_1D192EC3C()
{
  result = qword_1EC647300;
  if (!qword_1EC647300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647300);
  }

  return result;
}

unint64_t sub_1D192EC94()
{
  result = qword_1EC647308;
  if (!qword_1EC647308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647308);
  }

  return result;
}

unint64_t sub_1D192ECEC()
{
  result = qword_1EC647310;
  if (!qword_1EC647310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647310);
  }

  return result;
}

unint64_t sub_1D192ED44()
{
  result = qword_1EC647318;
  if (!qword_1EC647318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647318);
  }

  return result;
}

unint64_t sub_1D192ED9C()
{
  result = qword_1EC647320;
  if (!qword_1EC647320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647320);
  }

  return result;
}

unint64_t sub_1D192EDF4()
{
  result = qword_1EC647328;
  if (!qword_1EC647328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647328);
  }

  return result;
}

unint64_t sub_1D192EE4C()
{
  result = qword_1EC647330;
  if (!qword_1EC647330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647330);
  }

  return result;
}

unint64_t sub_1D192EEA4()
{
  result = qword_1EC647338;
  if (!qword_1EC647338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647338);
  }

  return result;
}

unint64_t sub_1D192EEFC()
{
  result = qword_1EC647340;
  if (!qword_1EC647340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647340);
  }

  return result;
}

unint64_t sub_1D192EF54()
{
  result = qword_1EC647348;
  if (!qword_1EC647348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647348);
  }

  return result;
}

unint64_t sub_1D192EFAC()
{
  result = qword_1EC647350;
  if (!qword_1EC647350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647350);
  }

  return result;
}

uint64_t sub_1D192F000(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70646E65 && a2 == 0xEC00000068746150;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D676E696E6E7572 && a2 == 0xEB0000000065646FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696E61656C63 && a2 == 0xEC00000065646F4DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65746174536C6C61 && a2 == 0xE900000000000073 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696E6E75526C6C61 && a2 == 0xEF7365646F4D676ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBE420 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EBE440 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001D1EBE460 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001D1EBE490 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4165636976726573 && a2 == 0xEB00000000616572)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1D192F3E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D192F4EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646570706F7473 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x43676E696B656573 && a2 == 0xEE00726567726168 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E696772616863 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64656B636F64 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x676E697974706D65 && a2 == 0xEF6E694274737544 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x676E696E61656C63 && a2 == 0xEB00000000706F4DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBE4C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x676E697461647075 && a2 == 0xEC0000007370614DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1D192F8C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D192F928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }
}

uint64_t StaticRVCClusterGroup.vacuumMode.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup(0);
  v4 = *(v1 + *(result + 44));
  if (v4 && (v5 = *(v4 + 16)) != 0)
  {
    v6 = 0;
    while (v6 < *(v4 + 16))
    {
      v7 = v4 + 32 + 32 * v6;
      v8 = *(v7 + 24);
      if (*(v8 + 16))
      {
        v17 = *v7;
        v9 = *(v7 + 16);
        sub_1D1E6920C();
        sub_1D1E6923C();

        sub_1D1E678EC();
        result = sub_1D1E6926C();
        v10 = v8 + 56;
        v11 = -1 << *(v8 + 32);
        v12 = result & ~v11;
        if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while ((*(*(v8 + 48) + v12) & 0xBF) != 0x81)
          {
            v12 = (v12 + 1) & v13;
            if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          if (!*(v8 + 16) || (sub_1D1E6920C(), sub_1D1E6923C(), sub_1D1E678EC(), result = sub_1D1E6926C(), v14 = -1 << *(v8 + 32), v15 = result & ~v14, ((*(v10 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0))
          {
LABEL_18:
            *a1 = v17;
            *(a1 + 16) = v9;
            *(a1 + 24) = v8;
            return result;
          }

          v16 = ~v14;
          while ((*(*(v8 + 48) + v15) & 0xBF) != 0x82)
          {
            v15 = (v15 + 1) & v16;
            if (((*(v10 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              goto LABEL_18;
            }
          }
        }

LABEL_4:
      }

      if (++v6 == v5)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t StaticRVCClusterGroup.mopMode.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup(0);
  v4 = *(v1 + *(result + 44));
  if (v4 && (v5 = *(v4 + 16)) != 0)
  {
    v6 = 0;
    while (v6 < *(v4 + 16))
    {
      v7 = v4 + 32 + 32 * v6;
      v8 = *(v7 + 24);
      if (*(v8 + 16))
      {
        v17 = *v7;
        v9 = *(v7 + 16);
        sub_1D1E6920C();
        sub_1D1E6923C();

        sub_1D1E678EC();
        result = sub_1D1E6926C();
        v10 = v8 + 56;
        v11 = -1 << *(v8 + 32);
        v12 = result & ~v11;
        if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while ((*(*(v8 + 48) + v12) & 0xBF) != 0x82)
          {
            v12 = (v12 + 1) & v13;
            if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          if (!*(v8 + 16) || (sub_1D1E6920C(), sub_1D1E6923C(), sub_1D1E678EC(), result = sub_1D1E6926C(), v14 = -1 << *(v8 + 32), v15 = result & ~v14, ((*(v10 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0))
          {
LABEL_18:
            *a1 = v17;
            *(a1 + 16) = v9;
            *(a1 + 24) = v8;
            return result;
          }

          v16 = ~v14;
          while ((*(*(v8 + 48) + v15) & 0xBF) != 0x81)
          {
            v15 = (v15 + 1) & v16;
            if (((*(v10 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              goto LABEL_18;
            }
          }
        }

LABEL_4:
      }

      if (++v6 == v5)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t StaticRVCClusterGroup.vacuumAndMopCleaningMode.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup(0);
  v4 = *(v1 + *(result + 44));
  if (v4 && (v5 = *(v4 + 16)) != 0)
  {
    v6 = 0;
    v7 = (v4 + 56);
    while (v6 < *(v4 + 16))
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;

      result = sub_1D192D6B0(&unk_1F4D65308, v11);
      if (result)
      {
        *a1 = v8;
        a1[1] = v9;
        a1[2] = v10;
        a1[3] = v11;
        return result;
      }

      ++v6;
      v7 += 4;
      if (v5 == v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

BOOL sub_1D192FEEC(void (*a1)(uint64_t *__return_ptr))
{
  a1(v3);
  v1 = v4;
  if (v4)
  {
    sub_1D192F928(v3[0], v3[1], v4, v5);
  }

  return v1 != 0;
}

uint64_t StaticRVCClusterGroup.canVacuumAndMopSimultaneously.getter()
{
  result = type metadata accessor for StaticRVCClusterGroup(0);
  v2 = *(v0 + *(result + 44));
  if (!v2)
  {
    return 0;
  }

  v3 = (v2 + 56);
  v4 = -*(v2 + 16);
  v5 = -1;
  do
  {
    v6 = v4 + v5 != -1;
    if (v4 + v5 == -1)
    {
      break;
    }

    if (++v5 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v7 = v3 + 4;
    v8 = *v3;

    v9 = sub_1D192D6B0(&unk_1F4D65330, v8);

    v3 = v7;
  }

  while ((v9 & 1) == 0);
  return v6;
}

void *StaticRVCClusterGroup.secondaryCleanModeTagsCompatible(vacuum:mop:)(char a1, char a2)
{
  v5 = *(v2 + *(type metadata accessor for StaticRVCClusterGroup(0) + 44));
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (*(v5 + 16))
  {
    v34 = MEMORY[0x1E69E7CC0];
    v7 = sub_1D177E2EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v10 = v9 + 1;
    if (a1)
    {
      if (v8 >> 1 <= v9)
      {
        v7 = sub_1D177E2EC((v8 > 1), v9 + 1, 1, v7);
      }

      *(v7 + 2) = v10;
      v7[v9 + 32] = -127;
      v34 = v7;
      v11 = MEMORY[0x1E69E7CC0];
      if ((a2 & 1) == 0)
      {
LABEL_7:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1D177E2EC(0, *(v11 + 2) + 1, 1, v11);
        }

        v13 = *(v11 + 2);
        v12 = *(v11 + 3);
        if (v13 >= v12 >> 1)
        {
          v11 = sub_1D177E2EC((v12 > 1), v13 + 1, 1, v11);
        }

        *(v11 + 2) = v13 + 1;
        v11[v13 + 32] = -126;
LABEL_21:
        v16 = MEMORY[0x1E69E7CD0];
        v33 = MEMORY[0x1E69E7CD0];
        v17 = *(v5 + 16);
        if (!v17)
        {
          goto LABEL_30;
        }

        v18 = (v5 + 56);
        do
        {
          v19 = *v18;

          v21 = sub_1D192D6B0(v20, v19);

          if (v21)
          {

            v23 = sub_1D1929D78(v22, v19);

            if (v23)
            {

              v25 = sub_1D1951268(v24, &v34);
              sub_1D19308E8(v25);
            }
          }

          v18 += 4;
          --v17;
        }

        while (v17);
        v16 = v33;
        v26 = *(v33 + 16);
        if (v26)
        {
          while (1)
          {
            v27 = sub_1D1804408(v26, 0);
            v28 = sub_1D1805908(&v32, v27 + 32, v26, v16);
            v29 = v32;
            v31 = v28;

            sub_1D1716918(v29);
            if (v31 == v26)
            {
              break;
            }

            __break(1u);
LABEL_30:
            v26 = *(v16 + 16);
            if (!v26)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
LABEL_31:
          v27 = MEMORY[0x1E69E7CC0];
        }

        v32 = v27;
        sub_1D1932F38(&v32, sub_1D1E0C094, &type metadata for ModeClusterSemanticTag, sub_1D1934C4C, sub_1D1933420);

        return v32;
      }
    }

    else
    {
      if (v8 >> 1 <= v9)
      {
        v7 = sub_1D177E2EC((v8 > 1), v9 + 1, 1, v7);
      }

      *(v7 + 2) = v10;
      v7[v9 + 32] = -127;
      v11 = v7;
      v7 = MEMORY[0x1E69E7CC0];
      if ((a2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D177E2EC(0, *(v7 + 2) + 1, 1, v7);
    }

    v15 = *(v7 + 2);
    v14 = *(v7 + 3);
    if (v15 >= v14 >> 1)
    {
      v7 = sub_1D177E2EC((v14 > 1), v15 + 1, 1, v7);
    }

    *(v7 + 2) = v15 + 1;
    v7[v15 + 32] = -126;
    v34 = v7;
    goto LABEL_21;
  }

  return v6;
}

uint64_t sub_1D19303F4(uint64_t a1)
{
  v2 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v20 - v8;
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v20 - v11;
  v13 = 0;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  for (i = (v14 + 63) >> 6; v16; result = sub_1D1951B4C(v9, type metadata accessor for WriteInProgressStatusViewModel.ID))
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_1D1951A7C(*(a1 + 48) + *(v3 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for WriteInProgressStatusViewModel.ID);
    sub_1D1951AE4(v12, v6, type metadata accessor for WriteInProgressStatusViewModel.ID);
    sub_1D17646BC(v9, v6);
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= i)
    {
    }

    v16 = *(a1 + 56 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19305E0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1D17657B4(&v10, *(*(v1 + 48) + ((v8 << 8) | (4 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1D19306D8(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v23 - v8;
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_1D1762CB8(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19308E8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1D1765BC4(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1D19309C4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1D1766118(v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1D1930AA4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D18BE688();
    sub_1D1E681BC();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_1D1716918(v1);
      return;
    }

    while (1)
    {
      sub_1D1764A98(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D1E6877C())
      {
        sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1D1930C84(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v23 - v8;
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_1D1762CB8(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}