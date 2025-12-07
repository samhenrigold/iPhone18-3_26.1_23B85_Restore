unint64_t sub_1B7133778()
{
  result = qword_1EB983FD8;
  if (!qword_1EB983FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB983FD8);
  }

  return result;
}

uint64_t sub_1B71337CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B71337E0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B71337E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

uint64_t FamilySettings.XPC.UpdateValueMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983FE0, &qword_1B7167C38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7133724();
  sub_1B715ECC0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v21) = 0;
  v9 = sub_1B715E9C0();
  v11 = v10;
  v20 = v9;
  LOBYTE(v21) = 1;
  v18 = sub_1B715E9C0();
  v19 = v12;
  v24 = 2;
  sub_1B7133AA0();
  sub_1B715E9B0();
  (*(v6 + 8))(v8, v5);
  v13 = v21;
  v14 = v22;
  v15 = v23;
  v16 = v19;
  *a2 = v20;
  *(a2 + 8) = v11;
  *(a2 + 16) = v18;
  *(a2 + 24) = v16;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v15;

  sub_1B71333C4(v13, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_1B71337CC(v13, v14, v15);
}

unint64_t sub_1B7133AA0()
{
  result = qword_1EB983FE8;
  if (!qword_1EB983FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB983FE8);
  }

  return result;
}

uint64_t sub_1B7133B34(uint64_t a1)
{
  v2 = sub_1B7133BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7133B70(uint64_t a1)
{
  v2 = sub_1B7133BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B7133BF0()
{
  result = qword_1EB983FF8;
  if (!qword_1EB983FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB983FF8);
  }

  return result;
}

uint64_t FamilySettings.XPC.ShareSettingsMessage.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FamilySettings.XPC.ShareSettingsMessage.altDSID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FamilySettings.XPC.ShareSettingsMessage.recordZone.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FamilySettings.XPC.ShareSettingsMessage.init(key:altDSID:recordZone:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_1B7133D28()
{
  v1 = 0x44495344746C61;
  if (*v0 != 1)
  {
    v1 = 0x6F5A64726F636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1B7133D80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7136328(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7133DA8(uint64_t a1)
{
  v2 = sub_1B7133FE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7133DE4(uint64_t a1)
{
  v2 = sub_1B7133FE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FamilySettings.XPC.ShareSettingsMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984000, &qword_1B7167C48);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7133FE4();
  sub_1B715ECE0();
  v14 = 0;
  v9 = v11[5];
  sub_1B715EA60();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1B715EA60();
  v12 = 2;
  sub_1B715EA60();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B7133FE4()
{
  result = qword_1EB984008;
  if (!qword_1EB984008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984008);
  }

  return result;
}

uint64_t FamilySettings.XPC.ShareSettingsMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984010, &qword_1B7167C50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7133FE4();
  sub_1B715ECC0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_1B715E9C0();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_1B715E9C0();
  v21 = v12;
  v23 = 2;
  v13 = sub_1B715E9C0();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B71342E4(uint64_t a1)
{
  v2 = sub_1B71344C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7134320(uint64_t a1)
{
  v2 = sub_1B71344C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B71343A0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1B715ECE0();
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1B71344C0()
{
  result = qword_1EB984020;
  if (!qword_1EB984020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984020);
  }

  return result;
}

uint64_t sub_1B7134580(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1B715ECE0();
  return (*(v10 + 8))(v12, v9);
}

uint64_t FamilySettings.XPC.ReadValueMessage.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FamilySettings.XPC.ReadValueMessage.altDSID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FamilySettings.XPC.ReadValueMessage.init(key:altDSID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1B713470C()
{
  if (*v0)
  {
    return 0x44495344746C61;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1B7134740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_1B715EB10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B715EB10();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B713481C(uint64_t a1)
{
  v2 = sub_1B7134A28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7134858(uint64_t a1)
{
  v2 = sub_1B7134A28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FamilySettings.XPC.ReadValueMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984028, &qword_1B7167C60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7134A28();
  sub_1B715ECE0();
  v12 = 0;
  v8 = v10[3];
  sub_1B715EA60();
  if (!v8)
  {
    v11 = 1;
    sub_1B715EA60();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B7134A28()
{
  result = qword_1EB984030;
  if (!qword_1EB984030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984030);
  }

  return result;
}

uint64_t FamilySettings.XPC.ReadValueMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984038, &qword_1B7167C68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7134A28();
  sub_1B715ECC0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_1B715E9C0();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1B715E9C0();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7134CB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984040, &qword_1B7167C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7134D30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984040, &qword_1B7167C70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7134DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001B71700D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B715EB10();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B7134E50(uint64_t a1)
{
  v2 = sub_1B7135040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7134E8C(uint64_t a1)
{
  v2 = sub_1B7135040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FamilySettings.XPC.ReadValueResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984048, &qword_1B7167C78);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7135040();
  sub_1B715ECE0();
  type metadata accessor for FamilySettings.ValueWithMetadata(0);
  sub_1B7135794(&qword_1EB984058, type metadata accessor for FamilySettings.ValueWithMetadata, &protocol conformance descriptor for FamilySettings.ValueWithMetadata);
  sub_1B715EA50();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B7135040()
{
  result = qword_1EB984050;
  if (!qword_1EB984050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984050);
  }

  return result;
}

uint64_t FamilySettings.XPC.ReadValueResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984040, &qword_1B7167C70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984060, &qword_1B7167C80);
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  ValueResponse = type metadata accessor for FamilySettings.XPC.ReadValueResponse(0);
  MEMORY[0x1EEE9AC00](ValueResponse - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7135040();
  sub_1B715ECC0();
  if (!v2)
  {
    v13 = v16;
    type metadata accessor for FamilySettings.ValueWithMetadata(0);
    sub_1B7135794(&qword_1EB984068, type metadata accessor for FamilySettings.ValueWithMetadata, &protocol conformance descriptor for FamilySettings.ValueWithMetadata);
    sub_1B715E9B0();
    (*(v17 + 8))(v9, v7);
    sub_1B7134D30(v6, v12);
    sub_1B7135330(v12, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for FamilySettings.XPC.ReadValueResponse(uint64_t a1)
{
  result = qword_1EB9840A0;
  if (!qword_1EB9840A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7135330(uint64_t a1, uint64_t a2)
{
  ValueResponse = type metadata accessor for FamilySettings.XPC.ReadValueResponse(0);
  (*(*(ValueResponse - 8) + 32))(a2, a1, ValueResponse);
  return a2;
}

unint64_t sub_1B7135398()
{
  result = qword_1EB9826F0;
  if (!qword_1EB9826F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9826F0);
  }

  return result;
}

unint64_t sub_1B71353F0()
{
  result = qword_1EB9826F8;
  if (!qword_1EB9826F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9826F8);
  }

  return result;
}

unint64_t sub_1B7135448()
{
  result = qword_1EB984070;
  if (!qword_1EB984070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984070);
  }

  return result;
}

unint64_t sub_1B71354A0()
{
  result = qword_1EB984078;
  if (!qword_1EB984078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984078);
  }

  return result;
}

unint64_t sub_1B71354F8()
{
  result = qword_1EB982710;
  if (!qword_1EB982710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB982710);
  }

  return result;
}

unint64_t sub_1B7135550()
{
  result = qword_1EB982718;
  if (!qword_1EB982718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB982718);
  }

  return result;
}

unint64_t sub_1B71355A8()
{
  result = qword_1EB984080;
  if (!qword_1EB984080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984080);
  }

  return result;
}

unint64_t sub_1B7135600()
{
  result = qword_1EB984088;
  if (!qword_1EB984088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984088);
  }

  return result;
}

unint64_t sub_1B7135658()
{
  result = qword_1EB982700;
  if (!qword_1EB982700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB982700);
  }

  return result;
}

unint64_t sub_1B71356B0()
{
  result = qword_1EB982708;
  if (!qword_1EB982708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB982708);
  }

  return result;
}

uint64_t sub_1B7135794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B71357F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984048, &qword_1B7167C78);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7135040();
  sub_1B715ECE0();
  type metadata accessor for FamilySettings.ValueWithMetadata(0);
  sub_1B7135794(&qword_1EB984058, type metadata accessor for FamilySettings.ValueWithMetadata, &protocol conformance descriptor for FamilySettings.ValueWithMetadata);
  sub_1B715EA50();
  return (*(v3 + 8))(v5, v2);
}

uint64_t get_enum_tag_for_layout_string_12FamilyCircle0A8SettingsC5ValueOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B71359B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7135A00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B7135A84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7135ACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B7135B70(uint64_t a1)
{
  sub_1B7135BDC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B7135BDC(uint64_t a1)
{
  if (!qword_1EB9840B0)
  {
    type metadata accessor for FamilySettings.ValueWithMetadata(255);
    v1 = sub_1B715E6D0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB9840B0);
    }
  }
}

unint64_t sub_1B7135C98()
{
  result = qword_1EB9840B8;
  if (!qword_1EB9840B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9840B8);
  }

  return result;
}

unint64_t sub_1B7135CF0()
{
  result = qword_1EB9840C0;
  if (!qword_1EB9840C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9840C0);
  }

  return result;
}

unint64_t sub_1B7135D48()
{
  result = qword_1EB9840C8;
  if (!qword_1EB9840C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9840C8);
  }

  return result;
}

unint64_t sub_1B7135DA0()
{
  result = qword_1EB9840D0;
  if (!qword_1EB9840D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9840D0);
  }

  return result;
}

unint64_t sub_1B7135DF8()
{
  result = qword_1EB9840D8;
  if (!qword_1EB9840D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9840D8);
  }

  return result;
}

unint64_t sub_1B7135E50()
{
  result = qword_1EB9840E0;
  if (!qword_1EB9840E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9840E0);
  }

  return result;
}

unint64_t sub_1B7135EA8()
{
  result = qword_1EB9840E8;
  if (!qword_1EB9840E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9840E8);
  }

  return result;
}

unint64_t sub_1B7135F00()
{
  result = qword_1EB9840F0;
  if (!qword_1EB9840F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9840F0);
  }

  return result;
}

unint64_t sub_1B7135F58()
{
  result = qword_1EB9840F8;
  if (!qword_1EB9840F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9840F8);
  }

  return result;
}

unint64_t sub_1B7135FB0()
{
  result = qword_1EB984100;
  if (!qword_1EB984100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984100);
  }

  return result;
}

unint64_t sub_1B7136008()
{
  result = qword_1EB984108;
  if (!qword_1EB984108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984108);
  }

  return result;
}

unint64_t sub_1B7136060()
{
  result = qword_1EB984110;
  if (!qword_1EB984110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984110);
  }

  return result;
}

unint64_t sub_1B71360B8()
{
  result = qword_1EB984118;
  if (!qword_1EB984118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984118);
  }

  return result;
}

unint64_t sub_1B7136110()
{
  result = qword_1EB984120;
  if (!qword_1EB984120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984120);
  }

  return result;
}

unint64_t sub_1B7136168()
{
  result = qword_1EB984128;
  if (!qword_1EB984128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984128);
  }

  return result;
}

unint64_t sub_1B71361C0()
{
  result = qword_1EB984130;
  if (!qword_1EB984130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984130);
  }

  return result;
}

uint64_t sub_1B7136214(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B715EB10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000 || (sub_1B715EB10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B715EB10();

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

uint64_t sub_1B7136328(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B715EB10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000 || (sub_1B715EB10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F5A64726F636572 && a2 == 0xEA0000000000656ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B715EB10();

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

unint64_t sub_1B713648C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983648, &qword_1B71657F0);
    v2 = sub_1B715E950();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1B70E89DC(*(a1 + 48) + 40 * v12, v27);
        sub_1B70B46E8(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1B70E89DC(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1B70B46E8(v25 + 8, v20);
        sub_1B7137404(v24);
        v21 = v18;
        sub_1B70E74F4(v20, v22);
        v13 = v21;
        sub_1B70E74F4(v22, v23);
        sub_1B70E74F4(v23, &v21);
        result = sub_1B70E747C(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_1B70E74F4(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_1B70E74F4(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_1B7137404(v24);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1B7136748(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983630, &qword_1B71657D8);
    v2 = sub_1B715E950();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1B70E89DC(*(a1 + 48) + 40 * v12, v24);
        sub_1B70B46E8(*(a1 + 56) + 32 * v12, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_1B70E89DC(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_1B7137404(v21);

          goto LABEL_23;
        }

        sub_1B70B46E8(v22 + 8, v20);
        sub_1B7137404(v21);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1B70E747C(v18, v19);
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;
          v10 = result;

          *(v2[7] + v10) = v18 & 1;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + result) = v18 & 1;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t FABuildInviteRequest.__allocating_init(inviteRecipients:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_allocWithZone(FAFamilyCircleRequest) init];
  *(v2 + 24) = a1;
  return v2;
}

uint64_t FABuildInviteRequest.init(inviteRecipients:)(uint64_t a1)
{
  *(v1 + 16) = [objc_allocWithZone(FAFamilyCircleRequest) init];
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_1B7136AAC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984138, &qword_1B71686A8);
  *v1 = v0;
  v1[1] = sub_1B7136B90;
  v3 = *(v0 + 24);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x29286863746566, 0xE700000000000000, sub_1B7136FB0, v3, v2);
}

uint64_t sub_1B7136B90()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1B7136CA4;
  }

  else
  {
    v2 = sub_1B70E5888;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1B7136CBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984140, &unk_1B7168700);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = *(a2 + 16);
  v19 = *(v5 + 16);
  v20 = a1;
  v19(&v17 - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v18 = *(v5 + 32);
  v18(v10 + v9, v7, v4);
  v25 = sub_1B7137260;
  v26 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v17 = &v23;
  v23 = sub_1B70F4BA8;
  v24 = &block_descriptor_10;
  v11 = _Block_copy(&aBlock);

  v12 = [v8 serviceRemoteObjectWithErrorHandler_];
  _Block_release(v11);
  if (v12)
  {
    v13 = *(a2 + 24);
    swift_unknownObjectRetain();
    sub_1B70F4510(v13);
    v14 = sub_1B715E310();

    v19(v7, v20, v4);
    v15 = swift_allocObject();
    v18(v15 + v9, v7, v4);
    v25 = sub_1B7137378;
    v26 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1B70F31BC;
    v24 = &block_descriptor_11;
    v16 = _Block_copy(&aBlock);

    [v12 buildInvite:v14 replyBlock:v16];
    swift_unknownObjectRelease_n();
    _Block_release(v16);
  }
}

void *sub_1B7136FB8(void *result)
{
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984140, &unk_1B7168700);
    return sub_1B715E3D0();
  }

  return result;
}

uint64_t sub_1B7137010(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984140, &unk_1B7168700);
    return sub_1B715E3D0();
  }

  else
  {
    if (a1)
    {
      sub_1B713648C(a1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984140, &unk_1B7168700);
    return sub_1B715E3E0();
  }
}

uint64_t FABuildInviteRequest.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t dispatch thunk of FABuildInviteRequest.fetch()()
{
  v4 = (*(*v0 + 104) + **(*v0 + 104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B70E7674;

  return v4();
}

void *sub_1B7137260(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984140, &unk_1B7168700);

  return sub_1B7136FB8(a1);
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984140, &unk_1B7168700);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B7137378(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984140, &unk_1B7168700);

  return sub_1B7137010(a1, a2);
}

uint64_t sub_1B7137404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984148, qword_1B7168710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FAFamilyChecklistRankingConfigRequest.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(FAFamilyCircleRequest) init];
  return v0;
}

uint64_t sub_1B71374F8(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7137518, 0, 0);
}

uint64_t sub_1B7137518()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984150, &qword_1B7168728);
  *v4 = v0;
  v4[1] = sub_1B7137620;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001B7170140, sub_1B7137A1C, v3, v5);
}

uint64_t sub_1B7137620()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1B70E58A4;
  }

  else
  {

    v2 = sub_1B713773C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1B7137758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984158, &unk_1B7168790);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = *(a2 + 16);
  v17 = *(v6 + 16);
  v18 = a1;
  v17(&v16 - v7, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v16 = *(v6 + 32);
  v16(v11 + v10, v8, v5);
  v24 = sub_1B7137E5C;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1B70F4BA8;
  v23 = &block_descriptor_11;
  v12 = _Block_copy(&aBlock);

  v13 = [v9 serviceRemoteObjectWithErrorHandler_];
  _Block_release(v12);
  if (v13)
  {
    v17(v8, v18, v5);
    v14 = swift_allocObject();
    v16(v14 + v10, v8, v5);
    v24 = sub_1B7137F74;
    v25 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_1B7137B00;
    v23 = &block_descriptor_11_0;
    v15 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v13 familyChecklistRankingConfigWithCachePolicy:v19 replyBlock:v15];
    swift_unknownObjectRelease_n();
    _Block_release(v15);
  }
}

void *sub_1B7137A24(void *result)
{
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984158, &unk_1B7168790);
    return sub_1B715E3D0();
  }

  return result;
}

uint64_t sub_1B7137A7C(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984158, &unk_1B7168790);
    return sub_1B715E3D0();
  }

  else
  {
    sub_1B70FFB50(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984158, &unk_1B7168790);
    return sub_1B715E3E0();
  }
}

uint64_t sub_1B7137B00(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_1B715DB50();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1B70FFF9C(v4, v8);
}

uint64_t FAFamilyChecklistRankingConfigRequest.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t dispatch thunk of FAFamilyChecklistRankingConfigRequest.fetch(cachePolicy:)(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B7137D50;

  return v6(a1);
}

uint64_t sub_1B7137D50(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void *sub_1B7137E5C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984158, &unk_1B7168790);

  return sub_1B7137A24(a1);
}

uint64_t objectdestroyTm_2()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984158, &unk_1B7168790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B7137F74(uint64_t a1, unint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984158, &unk_1B7168790);

  return sub_1B7137A7C(a1, a2, a3);
}

uint64_t sub_1B7138010(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v23 = MEMORY[0x1E69E7CC0];
    v21 = a1;
    sub_1B715E8A0();
    v4 = v21 + 56;
    result = sub_1B715E750();
    v5 = v21;
    v6 = result;
    v7 = 0;
    v8 = *(v21 + 36);
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v5 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v5 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = v4;
      v12 = objc_allocWithZone(MEMORY[0x1E695BAE8]);

      v13 = sub_1B715E070();
      [v12 initWithEmailAddress_];

      sub_1B715E880();
      sub_1B715E8B0();
      sub_1B715E8C0();
      result = sub_1B715E890();
      v5 = v21;
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v14 = *(v11 + 8 * v10);
      if ((v14 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v4 = v11;
      v15 = v14 & (-2 << (v6 & 0x3F));
      if (v15)
      {
        v9 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v10 << 6;
        v17 = v10 + 1;
        v18 = (v21 + 64 + 8 * v10);
        while (v17 < (v9 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_1B710FCC4(v6, v8, 0);
            v5 = v21;
            v9 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        result = sub_1B710FCC4(v6, v8, 0);
        v5 = v21;
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return v23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B713828C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1B715EC60();
  sub_1B715E160();
  v6 = sub_1B715EC90();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1B715EB10() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void *FamilyCoreDataSharingService.__allocating_init(container:privateStore:sharedStore:manateeContainer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[8] = a3;
  result[9] = a4;
  result[10] = a5;
  result[11] = a6;
  result[4] = a7;
  result[5] = a8;
  result[6] = &unk_1B71687A0;
  result[7] = 0;
  return result;
}

uint64_t sub_1B7138430()
{
  v1 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B7138568;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983B28, &unk_1B7166958);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7129764;
  v0[13] = &block_descriptor_12;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7138568()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1B71386E0;
  }

  else
  {
    v2 = sub_1B7138678;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7138678()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B71386E0(uint64_t a1)
{
  v2 = *(v1 + 152);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void *FamilyCoreDataSharingService.__allocating_init(container:privateStore:sharedStore:manateeContainer:familyProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[8] = a3;
  result[9] = a4;
  result[10] = a5;
  result[11] = a6;
  result[4] = a7;
  result[5] = a8;
  result[6] = a9;
  result[7] = a10;
  return result;
}

void *FamilyCoreDataSharingService.init(container:privateStore:sharedStore:manateeContainer:familyProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[2] = a1;
  v10[3] = a2;
  v10[8] = a3;
  v10[9] = a4;
  v10[10] = a5;
  v10[11] = a6;
  v10[4] = a7;
  v10[5] = a8;
  v10[6] = a9;
  v10[7] = a10;
  return v10;
}

uint64_t sub_1B7138800(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7 = *v4;
  *(v5 + 48) = *(*v4 + 88);
  v8 = *(v7 + 80);
  *(v5 + 56) = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 64) = AssociatedTypeWitness;
  v10 = sub_1B715E6D0();
  *(v5 + 72) = v10;
  *(v5 + 80) = *(v10 - 8);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = *(AssociatedTypeWitness - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 202) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1B71389E0, 0, 0);
}

uint64_t sub_1B71389E0()
{
  v1 = (*(*(v0 + 40) + 16))();
  (*(*(v0 + 40) + 32))(v1);
  sub_1B713B9E8(*(v0 + 24), *(v0 + 88));
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = *(v2 + 48);
  if (v5(v3, 1, v4) == 1)
  {
    v6 = *(v0 + 48);
    v19 = *(v0 + 56);
    sub_1B70F8CF0(0, &qword_1EB984160, 0x1E695BA90);
    sub_1B715E0A0();

    v7 = sub_1B715E580();
    (*(v6 + 56))(v7, v19, v6);

    if (v5(v3, 1, v4) != 1)
    {
      (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    }
  }

  else
  {
    (*(v2 + 32))(*(v0 + 104), v3, v4);
  }

  v8 = *(v0 + 202);
  v21 = *(v0 + 48);
  v9 = (*(v21 + 104))(*(v0 + 56));
  *(v0 + 136) = v10;
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  *(v0 + 200) = v8;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v20 = (*(v21 + 96) + **(v21 + 96));
  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_1B7138D7C;
  v15 = *(v0 + 48);
  v14 = *(v0 + 56);
  v16 = *(v0 + 24);
  v17 = *(v0 + 32);

  return v20(v11, v12, v16, v17, v0 + 200, v14, v15);
}

uint64_t sub_1B7138D7C()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B7139454, 0, 0);
  }

  else
  {
    v3 = *(v2 + 202);

    *(v2 + 201) = v3;
    v4 = swift_task_alloc();
    *(v2 + 160) = v4;
    *v4 = v2;
    v4[1] = sub_1B7138F24;
    v5 = *(v2 + 104);

    return sub_1B713C3D8(v5, (v2 + 201));
  }
}

uint64_t sub_1B7138F24()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1B7139534;
  }

  else
  {
    v2 = sub_1B7139038;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7139038()
{
  v1 = v0[21];
  v2 = (*(v0[5] + 64))();
  v0[22] = v2;
  if (v1)
  {
    v3 = v0[15];
    v4 = v0[16];
    v5 = v0[14];
    v6 = v0[7];
    (*(v0[12] + 8))(v0[13], v0[8]);
    v7 = *(v5 + 8);
    v7(v3, v6);
    v7(v4, v6);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v2;
    v16 = (*(v0[6] + 40) + **(v0[6] + 40));
    v11 = swift_task_alloc();
    v0[23] = v11;
    *v11 = v0;
    v11[1] = sub_1B713923C;
    v12 = v0[13];
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[2];

    return v16(v15, v12, v10, v13, v14);
  }
}

uint64_t sub_1B713923C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1B7139614;
  }

  else
  {
    v3 = sub_1B7139370;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7139370()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[7];
  (*(v0[12] + 8))(v0[13], v0[8]);
  v5 = *(v3 + 8);
  v5(v1, v4);
  v5(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B7139454()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[7];
  (*(v0[12] + 8))(v0[13], v0[8]);
  v5 = *(v3 + 8);
  v5(v1, v4);
  v5(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B7139534()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[7];
  (*(v0[12] + 8))(v0[13], v0[8]);
  v5 = *(v3 + 8);
  v5(v1, v4);
  v5(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B7139614()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[7];
  (*(v0[12] + 8))(v0[13], v0[8]);
  v5 = *(v3 + 8);
  v5(v1, v4);
  v5(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B71396F4()
{
  v1[4] = v0;
  v2 = *v0;
  v1[5] = *(*v0 + 88);
  v3 = *(v2 + 80);
  v1[6] = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[7] = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  v1[8] = v5;
  v1[9] = *(v5 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7139884, 0, 0);
}

uint64_t sub_1B7139884()
{
  v1 = (*(v0[4] + 16))();
  v2 = (*(v0[4] + 64))(v1);
  v4 = v0[15];
  v3 = v0[16];
  v5 = v2;
  v6 = v0[6];
  v0[17] = (*(v0[5] + 48))();
  (*(v4 + 8))(v3, v6);

  v7 = sub_1B715DFC0();
  v0[2] = v7;
  if (sub_1B715E390())
  {
    v8 = sub_1B715E360();
    sub_1B715E330();
    if (v8)
    {
      v9 = v0[8];
      v10 = *(v9 + 16);
      v10(v0[14], v0[17] + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v0[7]);
    }

    else
    {
      v16 = v0[9];
      result = sub_1B715E810();
      if (v16 != 8)
      {
        __break(1u);
        return result;
      }

      v17 = result;
      v18 = v0[14];
      v19 = v0[7];
      v20 = v0[8];
      v0[3] = v17;
      v10 = *(v20 + 16);
      v10(v18, (v0 + 3), v19);
      swift_unknownObjectRelease();
    }

    v0[18] = v10;
    v0[19] = 1;
    (*(v0[8] + 32))(v0[13], v0[14], v0[7]);
    v11 = swift_task_alloc();
    v0[20] = v11;
    *v11 = v0;
    v11[1] = sub_1B7139BC0;
    v12 = v0[12];
    v13 = v0[13];

    return sub_1B713A3E4(v12, v13);
  }

  else
  {

    v15 = v0[1];

    return v15(v7);
  }
}

uint64_t sub_1B7139BC0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1B7139F38;
  }

  else
  {
    v2 = sub_1B7139CD4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7139CD4()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[8];
  sub_1B715E3A0();
  sub_1B715E380();
  (*(v3 + 8))(v1, v2);
  v4 = v0[19];
  if (v4 == sub_1B715E390())
  {

    v5 = v0[2];

    v6 = v0[1];

    return v6(v5);
  }

  v8 = v0[19];
  v9 = sub_1B715E360();
  sub_1B715E330();
  if (v9)
  {
    v10 = v0[8];
    v11 = *(v10 + 16);
    result = v11(v0[14], v0[17] + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, v0[7]);
  }

  else
  {
    v15 = v0[9];
    result = sub_1B715E810();
    if (v15 != 8)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v16 = v0[14];
    v17 = v0[7];
    v18 = v0[8];
    v0[3] = result;
    v11 = *(v18 + 16);
    v11(v16, (v0 + 3), v17);
    result = swift_unknownObjectRelease();
  }

  v0[18] = v11;
  v0[19] = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  (*(v0[8] + 32))(v0[13], v0[14], v0[7]);
  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = sub_1B7139BC0;
  v13 = v0[12];
  v14 = v0[13];

  return sub_1B713A3E4(v13, v14);
}

uint64_t sub_1B7139F38()
{
  v50 = v0;
  if (qword_1EB982FF0 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[7];
  v6 = sub_1B715DEE0();
  __swift_project_value_buffer(v6, qword_1EB983760);
  v2(v4, v3, v5);
  v7 = v1;
  v8 = sub_1B715DEC0();
  v9 = sub_1B715E560();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[21];
  if (v10)
  {
    v12 = v0[18];
    v48 = v0[13];
    v14 = v0[10];
    v13 = v0[11];
    v15 = v0[7];
    v44 = v0[8];
    v45 = v0[21];
    v16 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v49 = v47;
    *v16 = 136315394;
    v12(v14, v13, v15);
    v17 = sub_1B715E0F0();
    v19 = v18;
    v20 = *(v44 + 8);
    v20(v13, v15);
    v21 = sub_1B70B461C(v17, v19, &v49);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v45;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v46 = v23;
    _os_log_impl(&dword_1B70B0000, v8, v9, "failed to update membership for share: %s, error: %@", v16, 0x16u);
    sub_1B7116DBC(v46);
    MEMORY[0x1B8CA2750](v46, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x1B8CA2750](v47, -1, -1);
    MEMORY[0x1B8CA2750](v16, -1, -1);

    v20(v48, v15);
  }

  else
  {
    v24 = v0[13];
    v25 = v0[11];
    v27 = v0[7];
    v26 = v0[8];

    v28 = *(v26 + 8);
    v28(v25, v27);
    v28(v24, v27);
  }

  v29 = v0[19];
  if (v29 == sub_1B715E390())
  {

    v30 = v0[2];

    v31 = v0[1];

    return v31(v30);
  }

  v33 = v0[19];
  v34 = sub_1B715E360();
  sub_1B715E330();
  if (v34)
  {
    v35 = v0[8];
    v36 = *(v35 + 16);
    result = v36(v0[14], v0[17] + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v33, v0[7]);
  }

  else
  {
    v40 = v0[9];
    result = sub_1B715E810();
    if (v40 != 8)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v41 = v0[14];
    v42 = v0[7];
    v43 = v0[8];
    v0[3] = result;
    v36 = *(v43 + 16);
    v36(v41, (v0 + 3), v42);
    result = swift_unknownObjectRelease();
  }

  v0[18] = v36;
  v0[19] = v33 + 1;
  if (__OFADD__(v33, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  (*(v0[8] + 32))(v0[13], v0[14], v0[7]);
  v37 = swift_task_alloc();
  v0[20] = v37;
  *v37 = v0;
  v37[1] = sub_1B7139BC0;
  v38 = v0[12];
  v39 = v0[13];

  return sub_1B713A3E4(v38, v39);
}

uint64_t sub_1B713A3E4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *v2;
  v3[10] = *v2;
  v5 = *(v4 + 80);
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B713A4EC, 0, 0);
}

uint64_t sub_1B713A4EC()
{
  v1 = v0[9];
  v2 = *(v0[10] + 88);
  v0[15] = v2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[16] = AssociatedConformanceWitness;
  v4 = *(AssociatedConformanceWitness + 56);
  v0[17] = swift_checkMetadataState();
  v5 = v4();
  v6 = [v5 zoneID];

  v7 = [v6 zoneName];
  v8 = sub_1B715E0A0();
  v10 = v9;

  v0[18] = v10;
  v11 = (*(v1 + 16))();
  (*(v0[9] + 32))(v11);
  v12 = (*(v2 + 104))(v0[11], v2);
  v0[19] = v13;
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v19 = (*(v2 + 88) + **(v2 + 88));
  v16 = swift_task_alloc();
  v0[20] = v16;
  *v16 = v0;
  v16[1] = sub_1B713A7E0;
  v17 = v0[11];

  return v19(v14, v15, v8, v10, v17, v2);
}

uint64_t sub_1B713A7E0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {

    v5 = sub_1B713B008;
  }

  else
  {
    *(v4 + 176) = a1;

    v5 = sub_1B713A960;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B713A960()
{
  v1 = *(v0 + 176);
  if (v1 && (v2 = *(v1 + 48), v2 <= 1))
  {
    *(v0 + 224) = v2;
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    *v3 = v0;
    v3[1] = sub_1B713AB30;
    v4 = *(v0 + 64);

    return sub_1B713C3D8(v4, (v0 + 224));
  }

  else
  {
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v0 + 88);
    v11 = *(v0 + 96);
    v12 = *(v0 + 64);
    *(v0 + 40) = v7;
    *(v0 + 48) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v12, v7);
    sub_1B713DE64();
    swift_allocError();
    sub_1B70B9AD4((v0 + 16), v14);
    swift_willThrow();

    v15 = *(v11 + 8);
    v15(v9, v10);
    v15(v8, v10);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1B713AB30()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1B713B0AC;
  }

  else
  {
    v2 = sub_1B713AC44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B713AC44()
{
  v1 = v0[24];
  v2 = (*(v0[9] + 64))();
  v0[25] = v2;
  if (v1)
  {
    v3 = v0[13];
    v4 = v0[14];
    v5 = v0[11];
    v6 = v0[12];

    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v2;
    v16 = (*(v0[15] + 40) + **(v0[15] + 40));
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_1B713AE1C;
    v12 = v0[15];
    v13 = v0[11];
    v14 = v0[7];
    v15 = v0[8];

    return v16(v14, v15, v10, v13, v12);
  }
}

uint64_t sub_1B713AE1C()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1B713B164;
  }

  else
  {
    v3 = sub_1B713AF50;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B713AF50()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];

  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B713B008()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = *(v0[12] + 8);
  v3(v0[13], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B713B0AC()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];

  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B713B164()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];

  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B713B21C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *(*v2 + 88);
  v5 = *(v4 + 80);
  v3[6] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v7 = sub_1B715E6D0();
  v3[8] = v7;
  v3[9] = *(v7 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v8 = swift_getAssociatedTypeWitness();
  v3[13] = v8;
  v3[14] = *(v8 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = *(AssociatedTypeWitness - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B713B460, 0, 0);
}

uint64_t sub_1B713B460()
{
  (*(v0[4] + 16))();
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[7];
  v17 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983798, &unk_1B71662C0);
  v6 = swift_allocObject();
  v0[18] = v6;
  *(v6 + 16) = xmmword_1B71662A0;
  *(v6 + 32) = v5;
  (*(v1 + 16))(v2, v4, v3);
  (*(v1 + 56))(v2, 0, 1, v3);
  v7 = *(v17 + 64);
  v8 = v5;
  v16 = (v7 + *v7);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_1B713B6B4;
  v10 = v0[17];
  v11 = v0[15];
  v12 = v0[10];
  v14 = v0[5];
  v13 = v0[6];

  return v16(v10, v11, v6, v12, v13, v14);
}

uint64_t sub_1B713B6B4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = v3[11];
    v4 = v3[12];
    v7 = v3[9];
    v6 = v3[10];
    v8 = v3[8];
    v9 = v3[6];
    (*(v7 + 8))(v6, v8);
    (*(v5 + 8))(v4, v9);
    v10 = sub_1B713B958;
  }

  else
  {
    v11 = v3[16];
    v12 = v3[14];
    v24 = v3[15];
    v25 = v3[17];
    v14 = v3[12];
    v13 = v3[13];
    v15 = v3[10];
    v16 = v3[11];
    v18 = v3[8];
    v17 = v3[9];
    v20 = v3 + 6;
    v19 = v3[6];
    v22 = v13;
    v23 = v20[1];

    (*(v17 + 8))(v15, v18);
    (*(v16 + 8))(v14, v19);
    (*(v12 + 8))(v24, v22);
    (*(v11 + 8))(v25, v23);
    v10 = sub_1B713B8C8;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1B713B8C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B713B958()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1B713B9E8(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v16 = a3;
  v17 = *v3;
  v5 = *(v17 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - v7;
  sub_1B70F8CF0(0, &qword_1EB984160, 0x1E695BA90);
  sub_1B715E0A0();

  v9 = sub_1B715E580();
  v10 = (v3[2])(v9);
  if (!v4)
  {
    v11 = v17;
    v12 = (v3[8])(v10);
    v13 = *(v11 + 88);
    v14 = (*(v13 + 48))(v12, v5, v13);
    (*(v6 + 8))(v8, v5);

    v18 = v14;
    MEMORY[0x1EEE9AC00](v15);
    *(&v16 - 4) = v5;
    *(&v16 - 3) = v13;
    *(&v16 - 2) = v9;
    swift_getAssociatedTypeWitness();
    sub_1B715E3A0();
    swift_getWitnessTable();
    sub_1B715E250();
  }
}

uint64_t sub_1B713BCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B70F8CF0(0, &unk_1EB982330, 0x1E69E58C0);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 56);
  v6 = swift_checkMetadataState();
  v7 = v5(v6, AssociatedConformanceWitness);
  v8 = [v7 zoneID];

  LOBYTE(v7) = sub_1B715E6A0();
  return v7 & 1;
}

uint64_t sub_1B713BDD8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *v1;
  v4 = *(v3 + 80);
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B713BED0, 0, 0);
}

uint64_t sub_1B713BED0()
{
  (*(v0[3] + 16))();
  v1 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984170, &qword_1B71687E8);
  v3 = sub_1B715DB20();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[8] = v6;
  *(v6 + 16) = xmmword_1B7164C50;
  v7 = (*(v4 + 16))(v6 + v5, v1, v3);
  v8 = (*(v2 + 80))(v7);
  v0[9] = v8;
  v9 = v8;
  v10 = *(v0[4] + 88);
  v14 = (*(v10 + 72) + **(v10 + 72));
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1B713C158;
  v12 = v0[5];

  return v14(v6, v9, v12, v10);
}

uint64_t sub_1B713C158(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 88) = v1;

  v5 = v3[9];
  v6 = v3[7];
  v7 = v3[6];
  v8 = v3[5];
  if (v1)
  {
    (*(v7 + 8))(v3[7], v3[5]);

    return MEMORY[0x1EEE6DFA0](sub_1B713C374, 0, 0);
  }

  else
  {

    (*(v7 + 8))(v6, v8);

    v9 = v4[1];

    return v9();
  }
}

uint64_t sub_1B713C374()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B713C3D8(uint64_t a1, _BYTE *a2)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  *(v3 + 72) = v6;
  *(v3 + 80) = *(v6 - 8);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = *(v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v3 + 104) = AssociatedTypeWitness;
  *(v3 + 112) = *(AssociatedTypeWitness - 8);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 224) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B713C560, 0, 0);
}

uint64_t sub_1B713C560()
{
  v3 = (*(*(v0 + 64) + 48) + **(*(v0 + 64) + 48));
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1B713C64C;

  return v3();
}

uint64_t sub_1B713C64C(uint64_t a1)
{
  v3 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B713C7B4, 0, 0);
  }
}

uint64_t sub_1B713C7B4()
{
  v115 = v0;
  v1 = FAFamilyCircle.membersNotMe()();
  v2 = v1;
  v114[0] = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v3; i = v0)
  {
    v4 = 0;
    v0 = (v2 & 0xC000000000000001);
    while (1)
    {
      if (v0)
      {
        v5 = MEMORY[0x1B8CA14D0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (*(i + 224) != 1 || ([v5 isGuardian] & 1) != 0 || (objc_msgSend(v6, sel_isParent) & 1) != 0)
      {
        sub_1B715E880();
        sub_1B715E8B0();
        sub_1B715E8C0();
        sub_1B715E890();
      }

      else
      {
      }

      ++v4;
      if (v7 == v3)
      {
        v0 = i;
        v8 = v114[0];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v3 = sub_1B715E920();
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_20:

  if ((v8 & 0x8000000000000000) == 0 && (v8 & 0x4000000000000000) == 0)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      goto LABEL_23;
    }

LABEL_43:
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

LABEL_42:
  v9 = sub_1B715E920();
  if (!v9)
  {
    goto LABEL_43;
  }

LABEL_23:
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    v12 = v10;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1B8CA14D0](v12, v8);
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v12 >= *(v8 + 16))
        {
          goto LABEL_41;
        }

        v13 = *(v8 + 8 * v12 + 32);
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }
      }

      v14 = v13;
      v15 = [v14 appleID];
      if (v15)
      {
        break;
      }

      ++v12;
      if (v10 == v9)
      {
        goto LABEL_44;
      }
    }

    v16 = v15;
    v17 = sub_1B715E0A0();
    v19 = v18;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1B70F17B4(0, *(v11 + 2) + 1, 1, v11);
    }

    v21 = *(v11 + 2);
    v20 = *(v11 + 3);
    if (v21 >= v20 >> 1)
    {
      v11 = sub_1B70F17B4((v20 > 1), v21 + 1, 1, v11);
    }

    *(v11 + 2) = v21 + 1;
    v22 = &v11[16 * v21];
    *(v22 + 4) = v17;
    *(v22 + 5) = v19;
    v0 = i;
  }

  while (v10 != v9);
LABEL_44:
  v23 = v0[20];
  v25 = v0[12];
  v24 = v0[13];
  v26 = i[9];

  v109 = sub_1B711EFF4(v11);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  i[21] = AssociatedConformanceWitness;
  v110 = *(AssociatedConformanceWitness + 48);
  i[2] = v110(v24, AssociatedConformanceWitness);
  v28 = swift_task_alloc();
  *(v28 + 16) = v26;
  *(v28 + 24) = v25;
  v105 = AssociatedConformanceWitness;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  i[22] = AssociatedTypeWitness;
  sub_1B715E3A0();
  swift_getWitnessTable();
  v30 = sub_1B715E870();

  i[3] = v30;
  v31 = swift_task_alloc();
  *v31 = v26;
  v31[1] = v25;
  KeyPath = swift_getKeyPath();

  v33 = swift_task_alloc();
  v33[2] = v26;
  v33[3] = v25;
  v33[4] = KeyPath;
  swift_getWitnessTable();
  v34 = sub_1B715E240();
  v96 = v23;

  v35 = sub_1B711EFF4(v34);

  if (*(v109 + 16) <= *(v35 + 16) >> 3)
  {
    v114[0] = v35;

    sub_1B713E038(v109);
    v36 = v35;
  }

  else
  {

    v36 = sub_1B713E164(v109, v35);
  }

  if (*(v35 + 16) <= *(v109 + 16) >> 3)
  {
    v114[0] = v109;
    sub_1B713E038(v35);

    v95 = v109;
  }

  else
  {
    v95 = sub_1B713E164(v35, v109);
  }

  v37 = v110(i[13], v105);
  if (sub_1B715E390())
  {
    v38 = i[14];
    v39 = swift_getAssociatedConformanceWitness();
    v40 = 0;
    v108 = *(v39 + 16);
    v111 = v36 + 56;
    v102 = (v38 + 8);
    v103 = (v38 + 16);
    v106 = v39;
    v107 = v36;
    while (1)
    {
      v47 = sub_1B715E360();
      sub_1B715E330();
      if (v47)
      {
        v48 = *(v37 + 32 + 8 * v40);
        result = swift_unknownObjectRetain();
        v50 = __OFADD__(v40++, 1);
        if (v50)
        {
          goto LABEL_91;
        }
      }

      else
      {
        result = sub_1B715E810();
        v48 = result;
        v50 = __OFADD__(v40++, 1);
        if (v50)
        {
LABEL_91:
          __break(1u);
          return result;
        }
      }

      v51 = v108(AssociatedTypeWitness, v39);
      if (v51)
      {
        v52 = v51;
        v53 = [v51 emailAddress];

        if (v53)
        {
          break;
        }
      }

      if (qword_1EB982FF0 != -1)
      {
        swift_once();
      }

      v63 = sub_1B715DEE0();
      __swift_project_value_buffer(v63, qword_1EB983760);
      swift_unknownObjectRetain();
      v64 = sub_1B715DEC0();
      v65 = sub_1B715E560();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v64, v65))
      {

LABEL_72:
        swift_unknownObjectRelease();
        goto LABEL_53;
      }

      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v114[0] = v42;
      *v41 = 136315138;
      i[5] = v48;
      swift_unknownObjectRetain();
      v43 = sub_1B715E0F0();
      v45 = sub_1B70B461C(v43, v44, v114);
      v36 = v107;

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1B70B0000, v64, v65, "participant %s does not have email address", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      v46 = v42;
      v39 = v106;
      MEMORY[0x1B8CA2750](v46, -1, -1);
      MEMORY[0x1B8CA2750](v41, -1, -1);
      swift_unknownObjectRelease();

LABEL_53:
      if (v40 == sub_1B715E390())
      {
        goto LABEL_82;
      }
    }

    v54 = sub_1B715E0A0();
    v56 = v55;

    if (*(v36 + 16))
    {
      sub_1B715EC60();
      sub_1B715E160();
      v57 = sub_1B715EC90();
      v58 = -1 << *(v36 + 32);
      v59 = v57 & ~v58;
      if ((*(v111 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
      {
        v60 = ~v58;
        while (1)
        {
          v61 = (*(v36 + 48) + 16 * v59);
          v62 = *v61 == v54 && v61[1] == v56;
          if (v62 || (sub_1B715EB10() & 1) != 0)
          {
            break;
          }

          v59 = (v59 + 1) & v60;
          if (((*(v111 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        if (qword_1EB982FF0 != -1)
        {
          swift_once();
        }

        v66 = i[17];
        v67 = i[13];
        v68 = i[7];
        v69 = sub_1B715DEE0();
        __swift_project_value_buffer(v69, qword_1EB983760);
        v104 = *v103;
        (*v103)(v66, v68, v67);
        swift_unknownObjectRetain();
        v70 = sub_1B715DEC0();
        v71 = sub_1B715E550();
        swift_unknownObjectRelease();
        v72 = os_log_type_enabled(v70, v71);
        v73 = i[17];
        if (v72)
        {
          v97 = i[16];
          v98 = i[13];
          log = v70;
          v74 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v114[0] = v101;
          *v74 = 136315394;
          i[6] = v48;
          swift_unknownObjectRetain();
          v75 = sub_1B715E0F0();
          v99 = v71;
          v77 = sub_1B70B461C(v75, v76, v114);

          *(v74 + 4) = v77;
          *(v74 + 12) = 2080;
          v104(v97, v73, v98);
          v78 = sub_1B715E0F0();
          v80 = v79;
          (*v102)(v73, v98);
          v81 = sub_1B70B461C(v78, v80, v114);

          *(v74 + 14) = v81;
          _os_log_impl(&dword_1B70B0000, log, v99, "removing %s from %s", v74, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B8CA2750](v101, -1, -1);
          MEMORY[0x1B8CA2750](v74, -1, -1);
        }

        else
        {
          v82 = i[13];

          (*v102)(v73, v82);
        }

        (*(v105 + 88))(v48, i[13]);
        swift_unknownObjectRelease();
        v39 = v106;
        v36 = v107;
        goto LABEL_53;
      }
    }

LABEL_67:

    goto LABEL_72;
  }

LABEL_82:
  v83 = i[8];

  (*(v83 + 16))(v84);
  if (v96)
  {
    v85 = i[19];

    v90 = i[1];

    return v90();
  }

  else
  {
    v86 = i[8];
    v87 = sub_1B7138010(v95);
    i[23] = v87;

    v89 = (*(v86 + 64))(v88);
    i[24] = v89;
    v91 = v89;
    v112 = (*(i[12] + 80) + **(i[12] + 80));
    v92 = swift_task_alloc();
    i[25] = v92;
    *v92 = i;
    v92[1] = sub_1B713D4E8;
    v93 = i[12];
    v94 = i[9];

    return v112(v87, v91, v94, v93);
  }
}

uint64_t sub_1B713D4E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[26] = a1;
  v4[27] = v1;

  v5 = v3[24];
  (*(v3[10] + 8))(v3[11], v3[9]);

  if (v1)
  {
    v6 = sub_1B713DB04;
  }

  else
  {
    v6 = sub_1B713D694;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B713D694()
{
  v46 = v0;
  if (sub_1B715E390())
  {
    v1 = *(v0 + 208);
    v2 = *(v0 + 168);
    v3 = *(v0 + 112);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v5 = 0;
    v41 = *(AssociatedConformanceWitness + 32);
    v42 = AssociatedConformanceWitness;
    v40 = *(AssociatedConformanceWitness + 56);
    v38 = v1 + 32;
    v39 = *(v2 + 96);
    v37 = (v3 + 8);
    v43 = (v3 + 16);
    do
    {
      v8 = sub_1B715E360();
      sub_1B715E330();
      if (v8)
      {
        v9 = *(v38 + 8 * v5);
        result = swift_unknownObjectRetain();
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_1B715E810();
        v9 = result;
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_17:
          __break(1u);
          return result;
        }
      }

      v44 = v11;
      v13 = *(v0 + 168);
      v12 = *(v0 + 176);
      v14 = *(v0 + 104);
      v41(3, v12, v42);
      v40(3, v12, v42);
      v39(v9, v14, v13);
      if (qword_1EB982FF0 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 120);
      v16 = *(v0 + 104);
      v17 = *(v0 + 56);
      v18 = sub_1B715DEE0();
      __swift_project_value_buffer(v18, qword_1EB983760);
      v19 = *v43;
      (*v43)(v15, v17, v16);
      swift_unknownObjectRetain();
      v20 = sub_1B715DEC0();
      v21 = sub_1B715E550();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v20, v21))
      {
        log = v20;
        v22 = *(v0 + 120);
        v23 = *(v0 + 128);
        v36 = v21;
        v24 = *(v0 + 104);
        v25 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v45 = v35;
        *v25 = 136315394;
        *(v0 + 32) = v9;
        swift_unknownObjectRetain();
        v26 = sub_1B715E0F0();
        v28 = sub_1B70B461C(v26, v27, &v45);

        *(v25 + 4) = v28;
        *(v25 + 12) = 2080;
        v19(v23, v22, v24);
        v29 = sub_1B715E0F0();
        v31 = v30;
        (*v37)(v22, v24);
        v32 = sub_1B70B461C(v29, v31, &v45);

        *(v25 + 14) = v32;
        _os_log_impl(&dword_1B70B0000, log, v36, "adding %s to %s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8CA2750](v35, -1, -1);
        MEMORY[0x1B8CA2750](v25, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {
        v6 = *(v0 + 120);
        v7 = *(v0 + 104);
        swift_unknownObjectRelease();

        (*v37)(v6, v7);
      }

      ++v5;
    }

    while (v44 != sub_1B715E390());
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1B713DB04()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_1B713DB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 8);
  v5 = swift_checkMetadataState();
  return (v4(v5, AssociatedConformanceWitness) & 1) == 0;
}

uint64_t sub_1B713DC94@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 16);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  return result;
}

void sub_1B713DD88(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 emailAddress];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B715E0A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t FamilyCoreDataSharingService.deinit()
{

  return v0;
}

uint64_t FamilyCoreDataSharingService.__deallocating_deinit()
{
  FamilyCoreDataSharingService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

unint64_t sub_1B713DE64()
{
  result = qword_1EB984168;
  if (!qword_1EB984168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984168);
  }

  return result;
}

void *sub_1B713DEDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983D88, &unk_1B71688E0);
  v2 = *v0;
  v3 = sub_1B715E7B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B713E038(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1B713E6D4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1B713E164(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1B715EC60();

    sub_1B715E160();
    v23 = sub_1B715EC90();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1B715EB10() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1B713EA48(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1B715EC60();

            sub_1B715E160();
            v41 = sub_1B715EC90();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1B715EB10() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1B713E810(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x1B8CA2750](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_1B713F67C();
    return v5;
  }

  result = MEMORY[0x1B8CA2750](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1B713E6D4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B715EC60();
  sub_1B715E160();
  v6 = sub_1B715EC90();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1B715EB10() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B713DEDC();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1B713EC6C(v8);
  *v2 = v16;
  return v12;
}

unint64_t *sub_1B713E810(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1B713EA48(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1B715EC60();

        sub_1B715E160();
        v19 = sub_1B715EC90();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1B715EB10() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_1B713EA48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983D88, &unk_1B71688E0);
  result = sub_1B715E7D0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1B715EC60();

    sub_1B715E160();
    result = sub_1B715EC90();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1B713EC6C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B715E760();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1B715EC60();

        sub_1B715E160();
        v10 = sub_1B715EC90();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1B713EE5C(uint64_t *a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t dispatch thunk of FamilyCoreDataSharingService.setupShare(zoneID:audience:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 144) + **(*v4 + 144));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1B70E5228;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FamilyCoreDataSharingService.repairShares()()
{
  v4 = (*(*v0 + 152) + **(*v0 + 152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B70E7674;

  return v4();
}

uint64_t dispatch thunk of FamilyCoreDataSharingService.updateMembership(of:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 160) + **(*v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B70E54FC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of FamilyCoreDataSharingService.share(record:to:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 168) + **(*v2 + 168));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B70E54FC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of FamilyCoreDataSharingService.acceptShare(with:)(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B70E54FC;

  return v6(a1);
}

uint64_t dispatch thunk of FamilyCoreDataSharingService.updateMembership(of:to:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 192) + **(*v2 + 192));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B70E54FC;

  return v8(a1, a2);
}

uint64_t sub_1B713F68C(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = v3;
  v30 = a3;
  v7 = sub_1B715D8C0();
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v28 = v8 + 32;
  v29 = v8;

  v15 = 0;
  while (v12)
  {
LABEL_11:
    sub_1B70E89DC(*(a1 + 48) + 40 * (__clz(__rbit64(v12)) | (v15 << 6)), v32);
    v17 = *a2;
    if (*(*a2 + 16))
    {
      v18 = sub_1B70E7D68(v32);
      if (v19)
      {
        sub_1B70B46E8(*(v17 + 56) + 32 * v18, v31);
        if (swift_dynamicCast())
        {
          v26 = v7;
          v27 = a2;
          sub_1B70E89DC(v32, v31);
          if (swift_dynamicCast())
          {
            v25 = v4;
            sub_1B715D8B0();

            v20 = v30;
            v21 = *v30;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v20 = v21;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v21 = sub_1B70F1AD0(0, v21[2] + 1, 1, v21);
              *v30 = v21;
            }

            a2 = v27;
            v24 = v21[2];
            v23 = v21[3];
            if (v24 >= v23 >> 1)
            {
              v21 = sub_1B70F1AD0((v23 > 1), v24 + 1, 1, v21);
              *v30 = v21;
            }

            v21[2] = v24 + 1;
            v7 = v26;
            (*(v29 + 32))(v21 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24, v33, v26);
            v4 = v25;
          }

          else
          {

            v7 = v26;
            a2 = v27;
          }
        }
      }
    }

    v12 &= v12 - 1;
    result = sub_1B70E8A38(v32);
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(a1 + 64 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B713FA18(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t sub_1B713FA7C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_1B713FB34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841B0, &qword_1B71689B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B71688F0;
  *(inited + 32) = xmmword_1B7168900;
  *(inited + 48) = 0x80000001B7170310;
  *(inited + 56) = xmmword_1B7168910;
  *(inited + 72) = 0x80000001B7170340;
  *(inited + 80) = xmmword_1B7168920;
  *(inited + 96) = 0x80000001B7170380;
  *(inited + 104) = 2;
  sub_1B715E7F0();
  MEMORY[0x1B8CA0E30](0xD000000000000044, 0x80000001B71703B0);
  swift_beginAccess();
  v1 = aAltdsid_5[0];
  v2 = aAltdsid_5[1];

  MEMORY[0x1B8CA0E30](v1, v2);

  MEMORY[0x1B8CA0E30](0x75426F546B73612FLL, 0xE900000000000079);
  *(inited + 112) = 0;
  *(inited + 120) = 0xE000000000000000;
  *(inited + 128) = xmmword_1B7168930;
  *(inited + 144) = 0x80000001B7170400;
  *(inited + 152) = 13;
  sub_1B715E7F0();
  MEMORY[0x1B8CA0E30](0xD000000000000044, 0x80000001B71703B0);
  v4 = aAltdsid_5[0];
  v3 = aAltdsid_5[1];

  MEMORY[0x1B8CA0E30](v4, v3);

  MEMORY[0x1B8CA0E30](0x6143656C7070612FLL, 0xEA00000000006873);
  *(inited + 160) = 0;
  *(inited + 168) = 0xE000000000000000;
  *(inited + 176) = xmmword_1B7168940;
  *(inited + 192) = 0x80000001B7170450;
  *(inited + 200) = xmmword_1B7168950;
  *(inited + 216) = 0x80000001B71704B0;
  *(inited + 224) = xmmword_1B7168960;
  *(inited + 240) = 0x80000001B7170500;
  *(inited + 248) = xmmword_1B7168970;
  *(inited + 264) = 0x80000001B7170550;
  *(inited + 272) = xmmword_1B7168980;
  *(inited + 288) = 0x80000001B7170590;
  *(inited + 296) = 10;
  sub_1B715E7F0();
  MEMORY[0x1B8CA0E30](0xD000000000000020, 0x80000001B71705D0);
  swift_beginAccess();
  v5 = *aUuid;
  v6 = qword_1EB984180;

  MEMORY[0x1B8CA0E30](v5, v6);

  MEMORY[0x1B8CA0E30](0xD000000000000011, 0x80000001B7170600);
  *(inited + 304) = 0;
  *(inited + 312) = 0xE000000000000000;
  *(inited + 320) = xmmword_1B7168990;
  *(inited + 336) = 0x80000001B7170620;
  *(inited + 344) = 12;
  *(inited + 352) = 0xD000000000000018;
  *(inited + 360) = 0x80000001B7170640;
  v7 = sub_1B71413F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841B8, &qword_1B71689B8);
  result = swift_arrayDestroy();
  qword_1EB98E480 = v7;
  return result;
}

void static FamilySettingsDestinations.urlDestination(to:)(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1B71412B4(MEMORY[0x1E69E7CC0]);
  v3 = sub_1B715DFD0();

  v8[0] = 0;
  v4 = [ObjCClassFromMetadata urlDestinationTo:a1 params:v3 error:v8];

  v5 = v8[0];
  if (v4)
  {
    sub_1B715DAF0();
    v6 = v5;
  }

  else
  {
    v7 = v8[0];
    sub_1B715DAA0();

    swift_willThrow();
  }
}

uint64_t static FamilySettingsDestinations.urlDestination(to:params:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983448, &qword_1B7164B40);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  if (qword_1EB982340 != -1)
  {
    swift_once();
  }

  v12 = qword_1EB98E480;
  if (!*(qword_1EB98E480 + 16) || (v13 = sub_1B70E7DAC(a1), (v14 & 1) == 0))
  {
    if (qword_1ED7CFAD8 != -1)
    {
      swift_once();
    }

    v21 = sub_1B715DEE0();
    __swift_project_value_buffer(v21, qword_1ED7CFAE0);
    v22 = sub_1B715DEC0();
    v23 = sub_1B715E560();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B70B0000, v22, v23, "destination does not contain a value so returning default path", v24, 2u);
      MEMORY[0x1B8CA2750](v24, -1, -1);
    }

    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1B715E7F0();
    MEMORY[0x1B8CA0E30](0xD000000000000021, 0x80000001B7170210);
    *&v36[0] = a1;
    type metadata accessor for Destination(0);
    sub_1B715E900();
    v25 = v34;
    LOBYTE(v34) = 14;
    _s12FamilyCircle0A5ErrorO06createC9WithTrace_4code6domain4files0C0_pSS_ACS2StFZ_0(v25, v35, &v34, 0xD000000000000010, 0x80000001B716E8E0, 0xD00000000000002DLL, 0x80000001B7170240);

    return swift_willThrow();
  }

  v15 = (*(v12 + 56) + 16 * v13);
  v17 = *v15;
  v16 = v15[1];
  v37 = a2;
  if (a1 != 10)
  {

    goto LABEL_16;
  }

  swift_beginAccess();
  v33 = xmmword_1EB984178;

  sub_1B715E7A0();
  if (!*(a2 + 16) || (v18 = sub_1B70E7D68(&v34), (v19 & 1) == 0))
  {
    sub_1B70E8A38(&v34);
    goto LABEL_23;
  }

  sub_1B70B46E8(*(a2 + 56) + 32 * v18, v36);
  sub_1B70E8A38(&v34);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:

    LOBYTE(v34) = 14;
    _s12FamilyCircle0A5ErrorO06createC9WithTrace_4code6domain4files0C0_pSS_ACS2StFZ_0(0xD00000000000001CLL, 0x80000001B71702A0, &v34, 0xD000000000000010, 0x80000001B716E8E0, 0xD00000000000002DLL, 0x80000001B7170240);
    swift_willThrow();
  }

  v20 = *(&v33 + 1);
  v32 = v33;
  v36[0] = xmmword_1EB984178;

  sub_1B715E7A0();
  sub_1B7140A24(&v34, v36);
  sub_1B70B4B7C(v36, &qword_1EB9838F8, &qword_1B71660E0);
  sub_1B70E8A38(&v34);
  v34 = v17;
  v35 = v16;
  v36[0] = xmmword_1EB984178;
  *&v33 = v32;
  *(&v33 + 1) = v20;
  sub_1B70F8C9C();
  sub_1B715E710();

LABEL_16:
  sub_1B715DB10();

  if (*(v37 + 16))
  {
    v34 = MEMORY[0x1E69E7CC0];

    sub_1B713F68C(v27, &v37, &v34);

    v28 = sub_1B715DB20();
    if (!(*(*(v28 - 8) + 48))(v11, 1, v28))
    {
      sub_1B715DB00();
    }
  }

  sub_1B70B45B4(v11, v9, &qword_1EB983448, &qword_1B7164B40);
  v29 = sub_1B715DB20();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v9, 1, v29) != 1)
  {
    (*(v30 + 32))(a3, v9, v29);
    sub_1B70B4B7C(v11, &qword_1EB983448, &qword_1B7164B40);
  }

  sub_1B70B4B7C(v9, &qword_1EB983448, &qword_1B7164B40);
  result = sub_1B715E910();
  __break(1u);
  return result;
}

FamilySettingsDestinations __swiftcall FamilySettingsDestinations.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_1B7140A24@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1B70E7D68(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B70F74F4();
      v9 = v11;
    }

    sub_1B70E8A38(*(v9 + 48) + 40 * v7);
    sub_1B70E74F4((*(v9 + 56) + 32 * v7), a2);
    sub_1B7140B6C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1B7140AC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B70E747C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B70F7810();
      v10 = v12;
    }

    sub_1B70E74F4((*(v10 + 56) + 32 * v8), a3);
    sub_1B7140EC0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1B7140B6C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B715E760() + 1) & ~v5;
    do
    {
      sub_1B70E89DC(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_1B715E780();
      result = sub_1B70E8A38(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B7140D10(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B715E760() + 1) & ~v5;
    do
    {
      sub_1B715EC60();

      sub_1B715E160();
      v9 = sub_1B715EC90();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B7140EC0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B715E760() + 1) & ~v5;
    do
    {
      sub_1B715EC60();

      sub_1B715E160();
      v10 = sub_1B715EC90();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B7141070(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983648, &qword_1B71657F0);
    v3 = sub_1B715E950();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B70B45B4(v4, &v13, &qword_1EB983950, &qword_1B7166378);
      v5 = v13;
      v6 = v14;
      result = sub_1B70E747C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B70E74F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B71411A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983638, &qword_1B71657E0);
    v3 = sub_1B715E950();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B70E747C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B71412B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983650, &qword_1B71657F8);
    v3 = sub_1B715E950();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B70B45B4(v4, v13, &qword_1EB983990, &unk_1B7166500);
      result = sub_1B70E7D68(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1B70E74F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1B71413F0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841C0, &qword_1B71689C0);
  v3 = sub_1B715E950();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_1B70E7DAC(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1B70E7DAC(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7141504(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841A8, &qword_1B71689A8);
    v3 = sub_1B715E950();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1B70E8CF8();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B71415FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841A0, &qword_1B71689A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983640, &qword_1B71657E8);
    v7 = sub_1B715E950();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B70B45B4(v9, v5, &qword_1EB9841A0, &qword_1B71689A0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1B70E747C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1B715DC80();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t type metadata accessor for FamilySettingsDestinations()
{
  result = qword_1EB984198;
  if (!qword_1EB984198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB984198);
  }

  return result;
}

uint64_t sub_1B7141834(uint64_t a1, unsigned __int8 a2)
{
  sub_1B715E160();
}

FamilyCircle::RemoteGuardianInviteKeys_optional __swiftcall RemoteGuardianInviteKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B715E970();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t RemoteGuardianInviteKeys.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000013;
    v7 = 0xD000000000000015;
    if (v1 != 8)
    {
      v7 = 0xD000000000000016;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000014;
    if (v1 != 5)
    {
      v8 = 0xD000000000000010;
    }

    if (*v0 <= 6u)
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
    v2 = 0x79654B656C746974;
    v3 = 0x5255657469766E69;
    v4 = 0x6F43657469766E69;
    if (v1 != 3)
    {
      v4 = 0x4B4C52556E6F6369;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x656C746974627573;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1B7141BA8()
{
  v1 = *v0;
  sub_1B715EC60();
  sub_1B7141834(v3, v1);
  return sub_1B715EC90();
}

uint64_t sub_1B7141BF8(uint64_t a1)
{
  v2 = *v1;
  sub_1B715EC60();
  sub_1B7141834(v4, v2);
  return sub_1B715EC90();
}

unint64_t sub_1B7141C48@<X0>(unint64_t *a1@<X8>)
{
  result = RemoteGuardianInviteKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t HelpTopic.id.getter()
{
  v1 = 0x616664326C68636DLL;
  if (*v0 != 2)
  {
    v1 = 0x346438626C68636DLL;
  }

  v2 = 0x636566316C68636DLL;
  if (!*v0)
  {
    v2 = *v0;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

FamilyCircle::HelpTopic_optional __swiftcall HelpTopic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B715E970();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B7141D5C()
{
  sub_1B715EC60();
  sub_1B715E160();

  return sub_1B715EC90();
}

uint64_t sub_1B7141E28(uint64_t a1)
{
  sub_1B715E160();
}

uint64_t sub_1B7141EE0(uint64_t a1)
{
  sub_1B715EC60();
  sub_1B715E160();

  return sub_1B715EC90();
}

void sub_1B7141FB4(uint64_t *a1@<X8>)
{
  v2 = 0xE000000000000000;
  v3 = 0xEC00000065323937;
  v4 = 0x616664326C68636DLL;
  if (*v1 != 2)
  {
    v4 = 0x346438626C68636DLL;
    v3 = 0xEC00000064333038;
  }

  v5 = 0x636566316C68636DLL;
  if (*v1)
  {
    v2 = 0xEC00000030313834;
  }

  else
  {
    v5 = *v1;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v3;
  }

  *a1 = v6;
  a1[1] = v2;
}

id FamilyDefaultSuites.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Bool __swiftcall NSUserDefaults.exists(key:)(Swift::String key)
{
  v2 = sub_1B715E070();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1B715E720();
    swift_unknownObjectRelease();
    sub_1B70E74F4(&v5, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  sub_1B711E824(v6);
  return v3 != 0;
}

Swift::Void __swiftcall NSUserDefaults.clear(key:)(Swift::String key)
{
  v2 = sub_1B715E070();
  [v1 removeObjectForKey_];
}

id sub_1B7142380(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1B715E070();
  v5 = [v3 integerForKey_];

  return v5;
}

void sub_1B71423EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B712C5F0(a1, v11);
  v4 = v12;
  if (v12)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_1B715EB00();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1B715E070();
  [v3 setObject:v9 forKey:v10];
  swift_unknownObjectRelease();
}

BOOL sub_1B714254C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1B715E070();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1B715E720();
    swift_unknownObjectRelease();
    sub_1B70E74F4(&v7, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  sub_1B711E824(v8);
  return v5 != 0;
}

void sub_1B71425E4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1B715E070();
  [v3 removeObjectForKey_];
}

id sub_1B7142670(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1B71426E4(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1B7142740(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B714281C()
{
  result = sub_1B715ED10();
  qword_1EB9841C8 = result;
  unk_1EB9841D0 = v1;
  return result;
}

uint64_t static FamilyTimeouts.maxScreenTimeWait.getter()
{
  if (qword_1EB9830B8 != -1)
  {
    swift_once();
  }

  return qword_1EB9841C8;
}

unint64_t sub_1B71428B8()
{
  result = qword_1EB9841D8;
  if (!qword_1EB9841D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9841D8);
  }

  return result;
}

unint64_t sub_1B7142910()
{
  result = qword_1EB9841E0;
  if (!qword_1EB9841E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9841E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteGuardianInviteKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteGuardianInviteKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t XPCActivityScheduler.__allocating_init(taskProvider:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

uint64_t XPCActivityScheduler.taskProvider.getter()
{
  sub_1B7144298();

  return swift_unknownObjectRetain();
}

uint64_t XPCActivityScheduler.init(taskProvider:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_1B7142BC8()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B7142C10, 0, 0);
}

uint64_t sub_1B7142C10()
{
  v1 = v0[4];
  v2 = *(v0[3] + 24);
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  v5 = *(v3 + 48);
  v6 = v5(v4, v3);
  if (v8)
  {
LABEL_4:
    v11 = HIDWORD(v6);
    if (HIDWORD(v6))
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
        return MEMORY[0x1EEDE8BA8](v6, v7, v8, v9, v10);
      }

      v11 = v6 >> 16;
      if (v6 >> 16 <= 0x10)
      {
        if (v6 <= 0x7F)
        {
          v12 = v6 + 1;
LABEL_9:
          v0[2] = (v12 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v12) >> 3))));
          goto LABEL_10;
        }

LABEL_20:
        v36 = (v6 & 0x3F) << 8;
        v37 = (v6 >> 6) + v36 + 33217;
        v38 = (v36 | (v6 >> 6) & 0x3F) << 8;
        v39 = (v6 >> 18) + ((v38 | (v6 >> 12) & 0x3F) << 8) - 2122219023;
        v40 = (v6 >> 12) + v38 + 8487393;
        if (v11)
        {
          v12 = v39;
        }

        else
        {
          v12 = v40;
        }

        if (v6 < 0x800)
        {
          v12 = v37;
        }

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_4;
  }

LABEL_10:
  v13 = sub_1B715E140();
  v15 = v14;
  v16 = v0[3];
  if (*(v16 + 16))
  {
  }

  else
  {
    v43 = v5;
    v17 = swift_allocObject();
    v17[2] = v4;
    v17[3] = v3;
    v17[4] = v2;
    v18 = *(v3 + 56);
    swift_unknownObjectRetain();
    v19 = v18(v4, v3);
    v42 = v4;
    v21 = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    if (qword_1ED7CFA80 != -1)
    {
      swift_once();
    }

    v23 = sub_1B715DEE0();
    v24 = __swift_project_value_buffer(v23, qword_1ED7CFA88);
    v4 = v42;
    v25 = sub_1B7143C7C(sub_1B71442A0, v17, v13, v15, sub_1B7121904, v22, v24);

    *(v16 + 16) = v25;

    v5 = v43;
  }

  sub_1B715DDA0();
  v26 = v5(v4, v3);
  v28 = v27;
  v30 = v29;
  v31 = *(v16 + 16);
  v0[5] = v31;
  v32 = swift_task_alloc();
  v33 = v4;
  v34 = v32;
  v0[6] = v32;
  v32[2] = v33;
  v32[3] = v3;
  v32[4] = v2;
  v32[5] = v31;

  v35 = swift_task_alloc();
  v0[7] = v35;
  *v35 = v0;
  v35[1] = sub_1B7142F94;
  v9 = &unk_1B7168CA0;
  v6 = v26;
  v7 = v28;
  v8 = v30;
  v10 = v34;

  return MEMORY[0x1EEDE8BA8](v6, v7, v8, v9, v10);
}

void sub_1B7142F94()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t sub_1B71430D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B71430F8, 0, 0);
}

uint64_t sub_1B71430F8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1B71431F4;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v4, 0, 0, 0x656C756465686373, 0xEA00000000002928, sub_1B7144560, v3, v5);
}

uint64_t sub_1B71431F4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B70E6EAC, 0, 0);
}

uint64_t sub_1B714330C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a3;
  v33 = a5;
  v30 = a2;
  v31 = a4;
  v29 = a1;
  v34 = sub_1B715DF70();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B715DFB0();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841E8, &unk_1B7168D50);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = sub_1B715DF80();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B70B4E34();
  (*(v15 + 104))(v17, *MEMORY[0x1E69E7F98], v14);
  v28 = sub_1B715E5F0();
  (*(v15 + 8))(v17, v14);
  (*(v11 + 16))(v13, v29, v10);
  v18 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v19 = swift_allocObject();
  v20 = v30;
  v22 = v32;
  v21 = v33;
  *(v19 + 2) = v31;
  *(v19 + 3) = v21;
  *(v19 + 4) = v20;
  *(v19 + 5) = v22;
  (*(v11 + 32))(&v19[v18], v13, v10);
  aBlock[4] = sub_1B714456C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B70E2C8C;
  aBlock[3] = &block_descriptor_18_0;
  v23 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1B715DFA0();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1B7144660(&unk_1ED7CFAC8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983EF8, &qword_1B71678F8);
  sub_1B70B4F10(&qword_1ED7CFAC0, &qword_1EB983EF8, &qword_1B71678F8);
  v24 = v34;
  sub_1B715E740();
  v25 = v28;
  MEMORY[0x1B8CA1280](0, v9, v6, v23);
  _Block_release(v23);

  (*(v37 + 8))(v6, v24);
  (*(v35 + 8))(v9, v36);
}

uint64_t sub_1B7143784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 24))(v13, a4, a5);
  v6 = v13[3];
  if (qword_1ED7CFA80 != -1)
  {
    swift_once();
  }

  v7 = sub_1B715DEE0();
  __swift_project_value_buffer(v7, qword_1ED7CFA88);
  v8 = sub_1B715DEC0();
  v9 = sub_1B715E550();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1B70B461C(0x656C756465686373, 0xEA00000000002928, v13);
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    _os_log_impl(&dword_1B70B0000, v8, v9, "FAFamilyFetchActivityScheduler %s updating criteria interval: %lld", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1B8CA2750](v11, -1, -1);
    MEMORY[0x1B8CA2750](v10, -1, -1);
  }

  if (a2)
  {
    XPCActivity.updateCriteria()();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841E8, &unk_1B7168D50);
  return sub_1B715E3E0();
}

uint64_t sub_1B7143934(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t (*a4)(uint64_t))
{
  v6 = *a3;
  result = MEMORY[0x1B8CA0A40]();
  switch(v6)
  {
    case 4:
      return XPCActivity.continue()();
    case 3:
      return XPCActivity.defer()();
    case 2:
      return a4(a1);
  }

  return result;
}

void sub_1B71439B8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1B70F2334;
    *(v3 + 24) = v1;
    v5[4] = sub_1B7144384;
    v5[5] = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1B70ED408;
    v5[3] = &block_descriptor_13;
    v4 = _Block_copy(v5);
    swift_retain_n();

    dispatch_sync(v2, v4);
    _Block_release(v4);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }
}

uint64_t XPCActivityScheduler.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t XPCActivityScheduler.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B7143B64()
{
  sub_1B7144298();

  return swift_unknownObjectRetain();
}

uint64_t sub_1B7143B98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B70E5228;

  return sub_1B7142BC8();
}

uint64_t sub_1B7143C4C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B7143C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a5;
  v42 = a1;
  v53 = a4;
  v49 = a3;
  v51 = sub_1B715E5A0();
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1B715E5B0();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B715DEE0();
  v52 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v15;
  v16 = sub_1B715DFB0();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v35 - v21;
  sub_1B715DF90();
  v38 = v13;
  v47 = *(v13 + 16);
  v47(v15, a7, v12);
  v23 = swift_allocObject();
  v43 = v23;
  *(v23 + 16) = v42;
  *(v23 + 24) = a2;
  v24 = swift_allocObject();
  v42 = v24;
  *(v24 + 16) = v41;
  *(v24 + 24) = a6;
  type metadata accessor for XPCActivity(0);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v25 + 80) = 0;
  v41 = sub_1B70B4E34();
  *(v25 + 88) = 0;
  *(v25 + 96) = 0;
  strcpy(&aBlock, "XPCActivity-");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;

  v26 = v49;
  MEMORY[0x1B8CA0E30](v49, v53);
  v39 = *(&aBlock + 1);
  v40 = aBlock;
  v36 = v17;
  v27 = *(v17 + 16);
  v35 = v22;
  v37 = v16;
  v27(v20, v22, v16);
  (*(v46 + 104))(v45, *MEMORY[0x1E69E8098], v48);
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1B7144660(&qword_1ED7CFAA8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB983510, &qword_1B7165800);
  sub_1B70B4F10(&qword_1ED7CFAB8, &unk_1EB983510, &qword_1B7165800);
  sub_1B715E740();
  v28 = v44;
  v29 = sub_1B715E5E0();
  *(v25 + 16) = v29;
  *(v25 + 24) = v26;
  v30 = v52;
  *(v25 + 32) = v53;
  *(v25 + 40) = sub_1B71445F8;
  v31 = v42;
  *(v25 + 48) = v43;
  *(v25 + 56) = sub_1B7144658;
  *(v25 + 64) = v31;
  v47((v25 + OBJC_IVAR____TtC12FamilyCircle11XPCActivity_logger), v28, v30);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1B70F22FC;
  *(v32 + 24) = v25;
  v57 = sub_1B71446B0;
  v58 = v32;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v55 = sub_1B70ED408;
  v56 = &block_descriptor_31_0;
  v33 = _Block_copy(&aBlock);

  dispatch_sync(v29, v33);
  _Block_release(v33);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
  }

  else
  {
    (*(v38 + 8))(v28, v52);
    (*(v36 + 8))(v35, v37);
    return v25;
  }

  return result;
}

uint64_t sub_1B71442D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B70E54FC;

  return sub_1B71430D4(v5, v4, v2, v3);
}

uint64_t dispatch thunk of XPCActivityScheduler.schedule()()
{
  v4 = (*(*v0 + 144) + **(*v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B70E5228;

  return v4();
}

uint64_t sub_1B714456C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841E8, &unk_1B7168D50) - 8);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1B7143784(v4, v5, v6, v1, v2);
}

__n128 sub_1B71445F8@<Q0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(&v5);
  v3 = 256;
  if (!BYTE1(v5))
  {
    v3 = 0;
  }

  *a1 = v3 | v5;
  result = v7;
  *(a1 + 8) = v6;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B7144660(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SharingCenter.XPC.ShareRecordZoneMessage.init(recordZone:audience:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t SharingCenter.XPC.AcceptShareMessage.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B715DB20();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SharingCenter.XPC.AcceptShareMessage.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B715DB20();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1B71447B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B715EB10();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B714483C(uint64_t a1)
{
  v2 = sub_1B7144A2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7144878(uint64_t a1)
{
  v2 = sub_1B7144A2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharingCenter.XPC.AcceptShareMessage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841F0, &qword_1B7168D60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7144A2C();
  sub_1B715ECE0();
  sub_1B715DB20();
  sub_1B7144D28(&qword_1EB9837C8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1B715EAA0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B7144A2C()
{
  result = qword_1EB9841F8;
  if (!qword_1EB9841F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9841F8);
  }

  return result;
}

uint64_t SharingCenter.XPC.AcceptShareMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1B715DB20();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984200, &qword_1B7168D68);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SharingCenter.XPC.AcceptShareMessage(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7144A2C();
  sub_1B715ECC0();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1B7144D28(&qword_1EB9837F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1B715EA00();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1B7144D70(v11, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7144D28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7144D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingCenter.XPC.AcceptShareMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7144DEC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841F0, &qword_1B7168D60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7144A2C();
  sub_1B715ECE0();
  sub_1B715DB20();
  sub_1B7144D28(&qword_1EB9837C8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1B715EAA0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B7144F68(uint64_t a1)
{
  v2 = sub_1B7145024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7144FA4(uint64_t a1)
{
  v2 = sub_1B7145024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B7145024()
{
  result = qword_1EB984210;
  if (!qword_1EB984210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984210);
  }

  return result;
}

uint64_t SharingCenter.XPC.ShareRecordZoneMessage.recordZone.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1B7145120()
{
  if (*v0)
  {
    return 0x65636E6569647561;
  }

  else
  {
    return 0x6F5A64726F636572;
  }
}

uint64_t sub_1B7145160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F5A64726F636572 && a2 == 0xEA0000000000656ELL;
  if (v6 || (sub_1B715EB10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65636E6569647561 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B715EB10();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B7145244(uint64_t a1)
{
  v2 = sub_1B7145450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7145280(uint64_t a1)
{
  v2 = sub_1B7145450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharingCenter.XPC.ShareRecordZoneMessage.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984218, &qword_1B7168D78);
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7145450();
  sub_1B715ECE0();
  v13 = 0;
  sub_1B715EA60();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1B71454A4();
    sub_1B715EAA0();
  }

  return (*(v9 + 8))(v6, v4);
}

unint64_t sub_1B7145450()
{
  result = qword_1EB984220;
  if (!qword_1EB984220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984220);
  }

  return result;
}

unint64_t sub_1B71454A4()
{
  result = qword_1EB984228;
  if (!qword_1EB984228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984228);
  }

  return result;
}

uint64_t SharingCenter.XPC.ShareRecordZoneMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984230, &qword_1B7168D80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7145450();
  sub_1B715ECC0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v9 = sub_1B715E9C0();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  sub_1B71456EC();
  sub_1B715EA00();
  (*(v6 + 8))(v8, v5);
  v13 = v17;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B71456EC()
{
  result = qword_1EB984238;
  if (!qword_1EB984238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984238);
  }

  return result;
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.ParticipantInfo.token.getter()
{
  v1 = *v0;
  sub_1B70FFB50(*v0, *(v0 + 8));
  return v1;
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.ParticipantInfo.emailAddress.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.ParticipantInfo.init(token:emailAddress:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[2] = a3;
  a5[3] = a4;
  *a5 = result;
  a5[1] = a2;
  return result;
}

uint64_t sub_1B71457E0()
{
  if (*v0)
  {
    return 0x6464416C69616D65;
  }

  else
  {
    return 0x6E656B6F74;
  }
}

uint64_t sub_1B7145820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B715EB10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B715EB10();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B71458FC(uint64_t a1)
{
  v2 = sub_1B7145B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7145938(uint64_t a1)
{
  v2 = sub_1B7145B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.ParticipantInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984240, &qword_1B7168D88);
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v11[1] = v1[3];
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B70FFB50(v7, v8);
  sub_1B7145B14();
  sub_1B715ECE0();
  v13 = v7;
  v14 = v8;
  v15 = 0;
  sub_1B70FFF48();
  sub_1B715EA50();
  sub_1B70FFF9C(v13, v14);
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1B715EA60();
  }

  return (*(v12 + 8))(v6, v4);
}

unint64_t sub_1B7145B14()
{
  result = qword_1EB984248;
  if (!qword_1EB984248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984248);
  }

  return result;
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.ParticipantInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984250, &qword_1B7168D90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7145B14();
  sub_1B715ECC0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  sub_1B7100224();
  sub_1B715E9B0();
  v9 = v17;
  v16 = v18;
  LOBYTE(v17) = 1;
  v10 = sub_1B715E9C0();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v13 = v16;
  *a2 = v9;
  a2[1] = v13;
  a2[2] = v10;
  a2[3] = v12;
  sub_1B70FFB50(v9, v13);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1B70FFF9C(v9, v13);
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.recordZoneID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.shareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharingCenter.XPC.ShareRecordZoneResponse(0) + 20);
  v4 = sub_1B715DB20();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1B7145E90(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.participants.getter()
{
  type metadata accessor for SharingCenter.XPC.ShareRecordZoneResponse(0);
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.init(recordZoneID:shareURL:participants:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for SharingCenter.XPC.ShareRecordZoneResponse(0);
  v9 = *(v8 + 20);
  v10 = sub_1B715DB20();
  result = (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  *&a5[*(v8 + 24)] = a4;
  return result;
}

uint64_t sub_1B7145F8C()
{
  v1 = 0x4C52556572616873;
  if (*v0 != 1)
  {
    v1 = 0x7069636974726170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F5A64726F636572;
  }
}

uint64_t sub_1B7145FF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B714808C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7146020(uint64_t a1)
{
  v2 = sub_1B71462DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B714605C(uint64_t a1)
{
  v2 = sub_1B71462DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984258, &qword_1B7168D98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B71462DC();
  sub_1B715ECE0();
  v14 = 0;
  sub_1B715EA60();
  if (!v2)
  {
    v9 = type metadata accessor for SharingCenter.XPC.ShareRecordZoneResponse(0);
    v13 = 1;
    sub_1B715DB20();
    sub_1B7144D28(&qword_1EB9837C8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1B715EAA0();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984268, &qword_1B7168DA0);
    sub_1B7146794(&qword_1EB984270, sub_1B7146330, MEMORY[0x1E69E6300]);
    sub_1B715EAA0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B71462DC()
{
  result = qword_1EB984260;
  if (!qword_1EB984260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984260);
  }

  return result;
}

unint64_t sub_1B7146330()
{
  result = qword_1EB984278;
  if (!qword_1EB984278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984278);
  }

  return result;
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1B715DB20();
  v27 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984280, &qword_1B7168DA8);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = v21 - v5;
  v7 = type metadata accessor for SharingCenter.XPC.ShareRecordZoneResponse(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B71462DC();
  v10 = v28;
  sub_1B715ECC0();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = a1;
  v11 = v4;
  v22 = v7;
  v13 = v24;
  v12 = v25;
  v14 = v26;
  v15 = v27;
  v32 = 0;
  v16 = sub_1B715E9C0();
  v18 = v17;
  *v9 = v16;
  v9[1] = v17;
  v31 = 1;
  sub_1B7144D28(&qword_1EB9837F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1B715EA00();
  v21[1] = v18;
  (*(v15 + 32))(v9 + *(v22 + 20), v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984268, &qword_1B7168DA0);
  v30 = 2;
  sub_1B7146794(&qword_1EB984288, sub_1B714680C, MEMORY[0x1E69E6330]);
  sub_1B715EA00();
  (*(v13 + 8))(v6, v14);
  v19 = v23;
  *(v9 + *(v22 + 24)) = v29;
  sub_1B7146860(v9, v19);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_1B71468C4(v9);
}

uint64_t sub_1B7146794(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB984268, &qword_1B7168DA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B714680C()
{
  result = qword_1EB984290;
  if (!qword_1EB984290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984290);
  }

  return result;
}

uint64_t sub_1B7146860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingCenter.XPC.ShareRecordZoneResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B71468C4(uint64_t a1)
{
  v2 = type metadata accessor for SharingCenter.XPC.ShareRecordZoneResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7146950(uint64_t a1)
{
  v2 = sub_1B7146B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B714698C(uint64_t a1)
{
  v2 = sub_1B7146B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7146A0C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1B715ECE0();
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1B7146B2C()
{
  result = qword_1EB9842A0;
  if (!qword_1EB9842A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9842A0);
  }

  return result;
}

uint64_t sub_1B7146BC4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1B715ECE0();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1B7146D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x53676E69646E6570 && a2 == 0xED00007365726168)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B715EB10();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B7146DA8(uint64_t a1)
{
  v2 = sub_1B7146FCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7146DE4(uint64_t a1)
{
  v2 = sub_1B7146FCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharingCenter.XPC.RepairSharesResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9842A8, &qword_1B7168DB8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7146FCC();

  sub_1B715ECE0();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9842B8, &qword_1B7168DC0);
  sub_1B71471D8(&qword_1EB9842C0, &qword_1EB9842C8, &protocol conformance descriptor for SharingCenter.ShareDescriptor, MEMORY[0x1E69E6300]);
  sub_1B715EAA0();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B7146FCC()
{
  result = qword_1EB9842B0;
  if (!qword_1EB9842B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9842B0);
  }

  return result;
}

uint64_t SharingCenter.XPC.RepairSharesResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9842D0, &qword_1B7168DC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7146FCC();
  sub_1B715ECC0();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9842B8, &qword_1B7168DC0);
    sub_1B71471D8(&qword_1EB9842D8, &qword_1EB9842E0, &protocol conformance descriptor for SharingCenter.ShareDescriptor, MEMORY[0x1E69E6330]);
    sub_1B715EA00();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B71471D8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9842B8, &qword_1B7168DC0);
    sub_1B7144D28(a2, type metadata accessor for SharingCenter.ShareDescriptor, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7147308()
{
  result = qword_1EB9842E8;
  if (!qword_1EB9842E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9842E8);
  }

  return result;
}

unint64_t sub_1B7147360()
{
  result = qword_1EB9842F0;
  if (!qword_1EB9842F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9842F0);
  }

  return result;
}

unint64_t sub_1B71473B8()
{
  result = qword_1EB982598;
  if (!qword_1EB982598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB982598);
  }

  return result;
}

unint64_t sub_1B7147410()
{
  result = qword_1EB9825A0;
  if (!qword_1EB9825A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9825A0);
  }

  return result;
}

unint64_t sub_1B71474F8()
{
  result = qword_1EB9825A8;
  if (!qword_1EB9825A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9825A8);
  }

  return result;
}

unint64_t sub_1B7147550()
{
  result = qword_1EB9825B0;
  if (!qword_1EB9825B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9825B0);
  }

  return result;
}

unint64_t sub_1B71475A8()
{
  result = qword_1EB984308;
  if (!qword_1EB984308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984308);
  }

  return result;
}

unint64_t sub_1B7147600()
{
  result = qword_1EB984310;
  if (!qword_1EB984310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984310);
  }

  return result;
}

uint64_t sub_1B71476BC(uint64_t a1)
{
  result = sub_1B715DB20();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B7147738(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7147780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B71477F8(uint64_t a1)
{
  sub_1B715DB20();
  if (v1 <= 0x3F)
  {
    sub_1B714788C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B714788C()
{
  if (!qword_1EB984328)
  {
    v0 = sub_1B715E3A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB984328);
    }
  }
}

uint64_t sub_1B71478DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7147924(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1B7147A08()
{
  result = qword_1EB984330;
  if (!qword_1EB984330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984330);
  }

  return result;
}

unint64_t sub_1B7147A60()
{
  result = qword_1EB984338;
  if (!qword_1EB984338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984338);
  }

  return result;
}

unint64_t sub_1B7147AB8()
{
  result = qword_1EB984340;
  if (!qword_1EB984340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984340);
  }

  return result;
}

unint64_t sub_1B7147B10()
{
  result = qword_1EB984348;
  if (!qword_1EB984348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984348);
  }

  return result;
}

unint64_t sub_1B7147B68()
{
  result = qword_1EB984350;
  if (!qword_1EB984350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984350);
  }

  return result;
}

unint64_t sub_1B7147BC0()
{
  result = qword_1EB984358;
  if (!qword_1EB984358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984358);
  }

  return result;
}

unint64_t sub_1B7147C18()
{
  result = qword_1EB984360;
  if (!qword_1EB984360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984360);
  }

  return result;
}

unint64_t sub_1B7147C70()
{
  result = qword_1EB984368;
  if (!qword_1EB984368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984368);
  }

  return result;
}

unint64_t sub_1B7147CC8()
{
  result = qword_1EB984370;
  if (!qword_1EB984370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984370);
  }

  return result;
}

unint64_t sub_1B7147D20()
{
  result = qword_1EB984378;
  if (!qword_1EB984378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984378);
  }

  return result;
}

unint64_t sub_1B7147D78()
{
  result = qword_1EB984380;
  if (!qword_1EB984380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984380);
  }

  return result;
}

unint64_t sub_1B7147DD0()
{
  result = qword_1EB984388;
  if (!qword_1EB984388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984388);
  }

  return result;
}

unint64_t sub_1B7147E28()
{
  result = qword_1EB984390;
  if (!qword_1EB984390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984390);
  }

  return result;
}

unint64_t sub_1B7147E80()
{
  result = qword_1EB984398;
  if (!qword_1EB984398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984398);
  }

  return result;
}

unint64_t sub_1B7147ED8()
{
  result = qword_1EB9843A0;
  if (!qword_1EB9843A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9843A0);
  }

  return result;
}

unint64_t sub_1B7147F30()
{
  result = qword_1EB9843A8;
  if (!qword_1EB9843A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9843A8);
  }

  return result;
}

unint64_t sub_1B7147F88()
{
  result = qword_1EB9843B0;
  if (!qword_1EB9843B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9843B0);
  }

  return result;
}

unint64_t sub_1B7147FE0()
{
  result = qword_1EB9843B8;
  if (!qword_1EB9843B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9843B8);
  }

  return result;
}

unint64_t sub_1B7148038()
{
  result = qword_1EB9843C0;
  if (!qword_1EB9843C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9843C0);
  }

  return result;
}

uint64_t sub_1B714808C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F5A64726F636572 && a2 == 0xEC0000004449656ELL;
  if (v4 || (sub_1B715EB10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52556572616873 && a2 == 0xE800000000000000 || (sub_1B715EB10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B715EB10();

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

uint64_t sub_1B71481D8(uint64_t a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      a1 = 0x616664326C68636DLL;
    }

    else
    {
      a1 = 0x346438626C68636DLL;
    }

    if (v2 == 2)
    {
      v3 = 0xEC00000065323937;
    }

    else
    {
      v3 = 0xEC00000064333038;
    }
  }

  else
  {
    if (a1)
    {
      a1 = 0x636566316C68636DLL;
    }

    else
    {
      a1 = a1;
    }

    if (v2)
    {
      v3 = 0xEC00000030313834;
    }

    else
    {
      v3 = 0xE000000000000000;
    }
  }

  v4 = a2;
  v5 = 0xE000000000000000;
  v6 = 0x616664326C68636DLL;
  v7 = 0xEC00000065323937;
  if (a2 != 2)
  {
    v6 = 0x346438626C68636DLL;
    v7 = 0xEC00000064333038;
  }

  if (a2)
  {
    v4 = 0x636566316C68636DLL;
    v5 = 0xEC00000030313834;
  }

  if (a2 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (a1 == v8 && v3 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B715EB10();
  }

  return v10 & 1;
}

uint64_t sub_1B7148344(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        v9 = 0xD000000000000014;
      }

      else
      {
        v9 = 0xD000000000000010;
      }

      if (v2 == 5)
      {
        v10 = 0x80000001B716E160;
      }

      else
      {
        v10 = 0x80000001B716E180;
      }
    }

    else
    {
      v11 = 0x80000001B716E1C0;
      v12 = 0xD000000000000016;
      if (a1 == 8)
      {
        v12 = 0xD000000000000015;
      }

      else
      {
        v11 = 0x80000001B716E1E0;
      }

      if (a1 == 7)
      {
        v9 = 0xD000000000000013;
      }

      else
      {
        v9 = v12;
      }

      if (v2 == 7)
      {
        v10 = 0x80000001B716E1A0;
      }

      else
      {
        v10 = v11;
      }
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x5255657469766E69;
    v5 = 0xEC00000079654B4CLL;
    v6 = 0x6F43657469766E69;
    v7 = 0xED000079654B6564;
    if (a1 != 3)
    {
      v6 = 0x4B4C52556E6F6369;
      v7 = 0xEA00000000007965;
    }

    if (a1 != 2)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x656C746974627573;
    if (a1)
    {
      v3 = 0xEB0000000079654BLL;
    }

    else
    {
      v8 = 0x79654B656C746974;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v13 = 0x80000001B716E160;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v13 = 0x80000001B716E180;
        if (v9 != 0xD000000000000010)
        {
LABEL_61:
          v14 = sub_1B715EB10();
          goto LABEL_62;
        }
      }
    }

    else if (a2 == 7)
    {
      v13 = 0x80000001B716E1A0;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_61;
      }
    }

    else if (a2 == 8)
    {
      v13 = 0x80000001B716E1C0;
      if (v9 != 0xD000000000000015)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v13 = 0x80000001B716E1E0;
      if (v9 != 0xD000000000000016)
      {
        goto LABEL_61;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v13 = 0xEB0000000079654BLL;
      if (v9 != 0x656C746974627573)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v9 != 0x79654B656C746974)
      {
        goto LABEL_61;
      }
    }
  }

  else if (a2 == 2)
  {
    v13 = 0xEC00000079654B4CLL;
    if (v9 != 0x5255657469766E69)
    {
      goto LABEL_61;
    }
  }

  else if (a2 == 3)
  {
    v13 = 0xED000079654B6564;
    if (v9 != 0x6F43657469766E69)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v13 = 0xEA00000000007965;
    if (v9 != 0x4B4C52556E6F6369)
    {
      goto LABEL_61;
    }
  }

  if (v10 != v13)
  {
    goto LABEL_61;
  }

  v14 = 1;
LABEL_62:

  return v14 & 1;
}

uint64_t sub_1B71486CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v2)
    {
      v6 = 0x80000001B716E270;
    }

    else
    {
      v6 = 0x80000001B716E250;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xD000000000000014;
    if (a1 == 3)
    {
      v3 = 0x80000001B716E2B0;
    }

    else
    {
      v4 = 0x68736572666572;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0x80000001B716E290;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0xD000000000000010;
    }

    else
    {
      v8 = 0xD000000000000011;
    }

    if (a2)
    {
      v7 = 0x80000001B716E270;
    }

    else
    {
      v7 = 0x80000001B716E250;
    }

    if (v5 != v8)
    {
      goto LABEL_35;
    }
  }

  else if (a2 == 2)
  {
    v7 = 0x80000001B716E290;
    if (v5 != 0xD000000000000018)
    {
      goto LABEL_35;
    }
  }

  else if (a2 == 3)
  {
    v7 = 0x80000001B716E2B0;
    if (v5 != 0xD000000000000014)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v5 != 0x68736572666572)
    {
LABEL_35:
      v9 = sub_1B715EB10();
      goto LABEL_36;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_35;
  }

  v9 = 1;
LABEL_36:

  return v9 & 1;
}

uint64_t sub_1B7148860(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F697463616161;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEC000000736C6961;
    v4 = 0xE900000000000065;
    if (a1 == 2)
    {
      v6 = 0x746544746E657665;
    }

    else
    {
      v6 = 0x707954746E657665;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xEC0000006E6F6974;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6341796C696D6166;
    }

    else
    {
      v6 = 0x6E6F697463616161;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE800000000000000;
  v9 = 0x746544746E657665;
  v10 = 0xEC000000736C6961;
  if (a2 != 2)
  {
    v9 = 0x707954746E657665;
    v10 = 0xE900000000000065;
  }

  if (a2)
  {
    v2 = 0x6341796C696D6166;
    v8 = 0xEC0000006E6F6974;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1B715EB10();
  }

  return v13 & 1;
}

uint64_t sub_1B71489C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1B7155E7C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1B70E747C(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1B70F7698();
        v16 = v18;
      }

      result = sub_1B7140D10(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1B7148AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1B70E74F4(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1B7155FCC(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1B711E824(a1);
    sub_1B7140AC8(a2, a3, v9);

    return sub_1B711E824(v9);
  }

  return result;
}

FamilyCircle::URLParameter_optional __swiftcall URLParameter.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B715E970();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t URLParameter.rawValue.getter()
{
  v1 = 0x6E6F697463616161;
  v2 = 0x746544746E657665;
  if (*v0 != 2)
  {
    v2 = 0x707954746E657665;
  }

  if (*v0)
  {
    v1 = 0x6341796C696D6166;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B7148C70()
{
  sub_1B715EC60();
  sub_1B715E160();

  return sub_1B715EC90();
}

uint64_t sub_1B7148D48(uint64_t a1)
{
  sub_1B715E160();
}

uint64_t sub_1B7148E0C(uint64_t a1)
{
  sub_1B715EC60();
  sub_1B715E160();

  return sub_1B715EC90();
}

void sub_1B7148EEC(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6E6F697463616161;
  v4 = 0xEC000000736C6961;
  v5 = 0x746544746E657665;
  if (*v1 != 2)
  {
    v5 = 0x707954746E657665;
    v4 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 0x6341796C696D6166;
    v2 = 0xEC0000006E6F6974;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

FamilyCircle::AppleAccountAction_optional __swiftcall AppleAccountAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B715E970();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppleAccountAction.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x68736572666572;
  if (v1 == 3)
  {
    v2 = 0xD000000000000014;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000018;
  }

  v3 = 0xD000000000000011;
  if (*v0)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B7149090()
{
  sub_1B715EC60();
  sub_1B715E160();

  return sub_1B715EC90();
}

uint64_t sub_1B7149180(uint64_t a1)
{
  sub_1B715E160();
}

uint64_t sub_1B714925C(uint64_t a1)
{
  sub_1B715EC60();
  sub_1B715E160();

  return sub_1B715EC90();
}

void sub_1B7149354(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x68736572666572;
  if (v2 == 3)
  {
    v4 = 0xD000000000000014;
    v3 = 0x80000001B716E2B0;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000018;
    v3 = 0x80000001B716E290;
  }

  v5 = 0x80000001B716E250;
  v6 = 0xD000000000000011;
  if (*v1)
  {
    v6 = 0xD000000000000010;
    v5 = 0x80000001B716E270;
  }

  if (*v1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FamilyAction.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B715E970();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1B7149474()
{
  sub_1B715EC60();
  sub_1B715E160();
  return sub_1B715EC90();
}

uint64_t sub_1B71494E8(uint64_t a1)
{
  sub_1B715EC60();
  sub_1B715E160();
  return sub_1B715EC90();
}

uint64_t sub_1B714953C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B715E970();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1B71495B0@<X0>(_BYTE *a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X8>)
{
  v10 = sub_1B715E6D0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - v12;
  v14 = 0x6E6F697463616161;
  v15 = 0xEC000000736C6961;
  v16 = 0x746544746E657665;
  if (*a1 != 2)
  {
    v16 = 0x707954746E657665;
    v15 = 0xE900000000000065;
  }

  v17 = 0xEC0000006E6F6974;
  if (*a1)
  {
    v14 = 0x6341796C696D6166;
  }

  else
  {
    v17 = 0xE800000000000000;
  }

  if (*a1 <= 1u)
  {
    v18 = v14;
  }

  else
  {
    v18 = v16;
  }

  if (*a1 <= 1u)
  {
    v19 = v17;
  }

  else
  {
    v19 = v15;
  }

  v21[0] = v18;
  v21[1] = v19;
  sub_1B715DFF0();

  if ((*(*(a3 - 8) + 48))(v13, 1, a3) == 1)
  {
    (*(v11 + 8))(v13, v10);
  }

  else if (swift_dynamicCast())
  {
    return sub_1B715E270();
  }

  return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
}

uint64_t Dictionary<>.subscript.getter@<X0>(char *a1@<X0>, uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  return sub_1B71495B0(&v6, MEMORY[0x1E69E6158], a3, a5);
}

{
  v6 = *a1;
  return sub_1B71495B0(&v6, MEMORY[0x1E69E7CA0] + 8, a3, a5);
}

uint64_t Dictionary<>.subscript.setter(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1B7149FD4(a1, a2, a3, a4, a5, &qword_1EB983ED8, &unk_1B7169BE0);
}

{
  return sub_1B7149FD4(a1, a2, a3, a4, a5, &qword_1EB983428, "ڼ");
}

void (*Dictionary<>.subscript.modify(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, uint64_t a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[2] = a5;
  v12[3] = v5;
  *v12 = a3;
  v12[1] = a4;
  v14 = sub_1B715E6D0();
  v13[4] = v14;
  v15 = *(v14 - 8);
  v13[5] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[6] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[6] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[7] = v17;
  v18 = *a2;
  *(v13 + 64) = *a2;
  v20 = v18;
  sub_1B71495B0(&v20, MEMORY[0x1E69E6158], a4, v17);
  return sub_1B71499C0;
}

{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[2] = a5;
  v12[3] = v5;
  *v12 = a3;
  v12[1] = a4;
  v14 = sub_1B715E6D0();
  v13[4] = v14;
  v15 = *(v14 - 8);
  v13[5] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[6] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[6] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[7] = v17;
  v18 = *a2;
  *(v13 + 64) = *a2;
  v20 = v18;
  sub_1B71495B0(&v20, MEMORY[0x1E69E7CA0] + 8, a4, v17);
  return sub_1B714A1B0;
}

uint64_t Dictionary<>.subscript.getter@<X0>(char *a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v6 = *a1;
  return sub_1B71495B0(&v6, MEMORY[0x1E69E6158], a3, a5);
}

{
  v6 = *a1;
  return sub_1B71495B0(&v6, MEMORY[0x1E69E7CA0] + 8, a3, a5);
}

uint64_t Dictionary<>.subscript.setter(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  return sub_1B714A370(a1, a2, a3, a4, &qword_1EB983ED8, &unk_1B7169BE0);
}

{
  return sub_1B714A370(a1, a2, a3, a4, &qword_1EB983428, "ڼ");
}

void (*Dictionary<>.subscript.modify(void *a1, char *a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = sub_1B715E6D0();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[6] = v15;
  v16 = *a2;
  *(v11 + 56) = *a2;
  v18 = v16;
  sub_1B71495B0(&v18, MEMORY[0x1E69E6158], a3, v15);
  return sub_1B7149B80;
}

{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = sub_1B715E6D0();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[6] = v15;
  v16 = *a2;
  *(v11 + 56) = *a2;
  v18 = v16;
  sub_1B71495B0(&v18, MEMORY[0x1E69E7CA0] + 8, a3, v15);
  return sub_1B714A540;
}

uint64_t Dictionary<>.subscript.getter(_BYTE *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E6F697463616161;
  v5 = 0xEC000000736C6961;
  v6 = 0x746544746E657665;
  if (v2 != 2)
  {
    v6 = 0x707954746E657665;
    v5 = 0xE900000000000065;
  }

  if (*a1)
  {
    v4 = 0x6341796C696D6166;
    v3 = 0xEC0000006E6F6974;
  }

  if (*a1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*(a2 + 16))
  {
    v10 = sub_1B70E747C(v7, v8);
    v12 = v11;

    if (v12)
    {
      v13 = *(*(a2 + 56) + 16 * v10);

      return v13;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1B7149C98(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v3 = 0xE800000000000000;
  v4 = *a1;
  v5 = a1[1];
  v6 = 0x6E6F697463616161;
  v7 = 0xEC000000736C6961;
  v8 = 0x746544746E657665;
  if (*a3 != 2)
  {
    v8 = 0x707954746E657665;
    v7 = 0xE900000000000065;
  }

  if (*a3)
  {
    v6 = 0x6341796C696D6166;
    v3 = 0xEC0000006E6F6974;
  }

  if (*a3 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (*a3 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v7;
  }

  return sub_1B71489C8(v4, v5, v9, v10);
}

uint64_t Dictionary<>.subscript.setter(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a3;
  v4 = 0xE800000000000000;
  v5 = 0x6E6F697463616161;
  v6 = 0xEC000000736C6961;
  v7 = 0x746544746E657665;
  if (v3 != 2)
  {
    v7 = 0x707954746E657665;
    v6 = 0xE900000000000065;
  }

  if (*a3)
  {
    v5 = 0x6341796C696D6166;
    v4 = 0xEC0000006E6F6974;
  }

  if (*a3 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  return sub_1B71489C8(a1, a2, v8, v9);
}

uint64_t (*Dictionary<>.subscript.modify(uint64_t a1, _BYTE *a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = *a2;
  *a1 = Dictionary<>.subscript.getter(a2, *v2);
  *(a1 + 8) = v4;
  return sub_1B7149E60;
}

uint64_t sub_1B7149E60(uint64_t a1, char a2)
{
  v2 = 0x6E6F697463616161;
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = 0xE800000000000000;
  v6 = 0x746544746E657665;
  v7 = 0xEC000000736C6961;
  if (*(a1 + 24) != 2)
  {
    v6 = 0x707954746E657665;
    v7 = 0xE900000000000065;
  }

  if (*(a1 + 24))
  {
    v2 = 0x6341796C696D6166;
    v5 = 0xEC0000006E6F6974;
  }

  if (a2)
  {
    if (*(a1 + 24) <= 1u)
    {
      v8 = v2;
    }

    else
    {
      v8 = v6;
    }

    if (*(a1 + 24) <= 1u)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }

    sub_1B71489C8(v4, v3, v8, v9);
  }

  else
  {
    if (*(a1 + 24) <= 1u)
    {
      v11 = v2;
    }

    else
    {
      v11 = v6;
    }

    if (*(a1 + 24) <= 1u)
    {
      v12 = v5;
    }

    else
    {
      v12 = v7;
    }

    return sub_1B71489C8(*a1, v3, v11, v12);
  }
}

uint64_t sub_1B7149FD4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  sub_1B714AEAC(a1, a2, a3, a4, a5, a6, a7);
  v8 = sub_1B715E6D0();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

void sub_1B714A1C4(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 64);
  v8 = (*a1)[6];
  v9 = (*a1)[7];
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v17 = (*a1)[2];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    (*(v11 + 16))(v8, v9, v10);
    v18 = v7;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_1B714ABC4(v8, &v18, v13, v14, v12, v17);
    v15 = *(v11 + 8);
    v15(v8, v10);
    v15(v9, v10);
  }

  else
  {
    v19 = *(*a1 + 64);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_1B714ABC4(v9, &v19, v13, v16, v12, v17);
    (*(v11 + 8))(v9, v10);
  }

  free(v9);
  free(v8);

  free(v6);
}

uint64_t sub_1B714A370(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_1B714AF20(a1, a2, a3, a4, a5, a6);
  v7 = sub_1B715E6D0();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void sub_1B714A554(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 56);
  v8 = (*a1)[5];
  v9 = (*a1)[6];
  v10 = (*a1)[3];
  v11 = (*a1)[4];
  v12 = (*a1)[1];
  v13 = **a1;
  if (a2)
  {
    (*(v11 + 16))(v8, v9, v10);
    v17 = v7;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_1B714ABC4(v8, &v17, v13, v14, v13, v12);
    v15 = *(v11 + 8);
    v15(v8, v10);
    v15(v9, v10);
  }

  else
  {
    v18 = *(*a1 + 56);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_1B714ABC4(v9, &v18, v13, v16, v13, v12);
    (*(v11 + 8))(v9, v10);
  }

  free(v9);
  free(v8);

  free(v6);
}

double Dictionary<>.subscript.getter@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  v5 = 0xE800000000000000;
  v6 = 0x6E6F697463616161;
  v7 = 0xEC000000736C6961;
  v8 = 0x746544746E657665;
  if (v4 != 2)
  {
    v8 = 0x707954746E657665;
    v7 = 0xE900000000000065;
  }

  if (*a1)
  {
    v6 = 0x6341796C696D6166;
    v5 = 0xEC0000006E6F6974;
  }

  if (*a1 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (v4 <= 1)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (!*(a2 + 16))
  {

    goto LABEL_17;
  }

  v12 = sub_1B70E747C(v9, v10);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_17:
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  v15 = *(a2 + 56) + 32 * v12;

  sub_1B70B46E8(v15, a3);
  return result;
}

uint64_t sub_1B714A7D0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  sub_1B712C5F0(a1, v15);
  v4 = 0xE800000000000000;
  v5 = 0x6E6F697463616161;
  v6 = 0xEC000000736C6961;
  v7 = 0x746544746E657665;
  if (v3 != 2)
  {
    v7 = 0x707954746E657665;
    v6 = 0xE900000000000065;
  }

  if (v3)
  {
    v5 = 0x6341796C696D6166;
    v4 = 0xEC0000006E6F6974;
  }

  v10 = __OFSUB__(v3, 1);
  v8 = v3 == 1;
  v9 = v3 - 1 < 0;
  if (v3 <= 1)
  {
    v11 = v5;
  }

  else
  {
    v11 = v7;
  }

  if (v9 ^ v10 | v8)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  sub_1B712C5F0(v15, v14);
  sub_1B7148AD0(v14, v11, v12);
  return sub_1B711E824(v15);
}

uint64_t Dictionary<>.subscript.setter(uint64_t a1, _BYTE *a2)
{
  v2 = 0xE800000000000000;
  v3 = 0x6E6F697463616161;
  v4 = 0xEC000000736C6961;
  v5 = 0x746544746E657665;
  if (*a2 != 2)
  {
    v5 = 0x707954746E657665;
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v3 = 0x6341796C696D6166;
    v2 = 0xEC0000006E6F6974;
  }

  if (*a2 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*a2 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  sub_1B712C5F0(a1, v10);
  sub_1B7148AD0(v10, v6, v7);
  return sub_1B711E824(a1);
}