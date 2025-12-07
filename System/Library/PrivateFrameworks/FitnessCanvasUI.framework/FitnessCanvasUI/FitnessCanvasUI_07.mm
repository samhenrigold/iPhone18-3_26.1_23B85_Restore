uint64_t NullItemMetrics.name.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t NullItemMetrics.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t NullItemMetrics.contentType.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t NullItemMetrics.contentType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t NullItemMetrics.entitlementRequired.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t NullItemMetrics.entitlementRequired.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_1E67F7CAC()
{
  v1 = 0x696669746E656469;
  v2 = *v0;
  v3 = 1701667182;
  v4 = 0x54746E65746E6F63;
  if (v2 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6973736572706D69;
  if (v2 == 1)
  {
    v5 = 0x696669746E656469;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E67F7D7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E67FC78C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E67F7DB0(uint64_t a1)
{
  v2 = sub_1E67FA464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F7DEC(uint64_t a1)
{
  v2 = sub_1E67FA464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NullItemMetrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098638, &qword_1E68BC668);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v15 - v6;
  v8 = v1[2];
  v15[9] = v1[3];
  v15[10] = v8;
  v9 = v1[4];
  v15[7] = v1[5];
  v15[8] = v9;
  v10 = v1[6];
  v15[5] = v1[7];
  v15[6] = v10;
  v11 = v1[8];
  v15[3] = v1[9];
  v15[4] = v11;
  v12 = v1[11];
  v15[1] = v1[10];
  v15[2] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FA464();
  sub_1E68B3BD0();
  v21 = 0;
  v13 = v15[11];
  sub_1E68B3A70();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v20 = 1;
  sub_1E68B3A70();
  v19 = 2;
  sub_1E68B3A70();
  v18 = 3;
  sub_1E68B3A40();
  v17 = 4;
  sub_1E68B3A70();
  v16 = 5;
  sub_1E68B3A70();
  return (*(v4 + 8))(v7, v3);
}

uint64_t NullItemMetrics.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 56);
  sub_1E68B31F0();
  sub_1E68B31F0();
  sub_1E68B31F0();
  sub_1E68B3B90();
  if (v2)
  {
    sub_1E68B31F0();
  }

  sub_1E68B31F0();

  return sub_1E68B31F0();
}

uint64_t NullItemMetrics.hashValue.getter()
{
  v1 = *(v0 + 56);
  sub_1E68B3B70();
  sub_1E68B31F0();
  sub_1E68B31F0();
  sub_1E68B31F0();
  sub_1E68B3B90();
  if (v1)
  {
    sub_1E68B31F0();
  }

  sub_1E68B31F0();
  sub_1E68B31F0();
  return sub_1E68B3BB0();
}

uint64_t NullItemMetrics.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098648, &qword_1E68BC670);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v31 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FA464();
  sub_1E68B3BC0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v45[0]) = 0;
    v10 = sub_1E68B39C0();
    v12 = v11;
    LOBYTE(v45[0]) = 1;
    v36 = sub_1E68B39C0();
    v38 = v13;
    LOBYTE(v45[0]) = 2;
    v14 = sub_1E68B39C0();
    v37 = v15;
    v34 = v14;
    LOBYTE(v45[0]) = 3;
    v35 = 0;
    *&v33 = sub_1E68B3990();
    *(&v33 + 1) = v16;
    v32 = a2;
    LOBYTE(v45[0]) = 4;
    v17 = sub_1E68B39C0();
    v19 = v18;
    v31 = v17;
    v51 = 5;
    v20 = sub_1E68B39C0();
    v21 = v9;
    v23 = v22;
    (*(v6 + 8))(v21, v5);
    *&v39 = v10;
    *(&v39 + 1) = v12;
    *&v40 = v36;
    v24 = v38;
    *(&v40 + 1) = v38;
    *&v41 = v34;
    v25 = v37;
    *(&v41 + 1) = v37;
    v42 = v33;
    *&v43 = v31;
    *(&v43 + 1) = v19;
    *&v44 = v20;
    *(&v44 + 1) = v23;
    v26 = v33;
    v27 = v32;
    v32[2] = v41;
    v27[3] = v26;
    v28 = v44;
    v27[4] = v43;
    v27[5] = v28;
    v29 = v40;
    *v27 = v39;
    v27[1] = v29;
    sub_1E67FA4B8(&v39, v45);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v45[0] = v10;
    v45[1] = v12;
    v45[2] = v36;
    v45[3] = v24;
    v45[4] = v34;
    v45[5] = v25;
    v46 = v33;
    v47 = v31;
    v48 = v19;
    v49 = v20;
    v50 = v23;
    return sub_1E67FA4F0(v45);
  }
}

uint64_t sub_1E67F86D4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1E67F8704()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1E67F8734()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1E67F8764()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1E67F8794()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1E67F87C4()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_1E67F8828(uint64_t a1)
{
  v2 = *(v1 + 56);
  sub_1E68B31F0();
  sub_1E68B31F0();
  sub_1E68B31F0();
  sub_1E68B3B90();
  if (v2)
  {
    sub_1E68B31F0();
  }

  sub_1E68B31F0();

  return sub_1E68B31F0();
}

uint64_t sub_1E67F890C(uint64_t a1)
{
  v2 = *(v1 + 56);
  sub_1E68B3B70();
  sub_1E68B31F0();
  sub_1E68B31F0();
  sub_1E68B31F0();
  sub_1E68B3B90();
  if (v2)
  {
    sub_1E68B31F0();
  }

  sub_1E68B31F0();
  sub_1E68B31F0();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67F8A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E68B3B00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E67F8A90(uint64_t a1)
{
  v2 = sub_1E67FA520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F8ACC(uint64_t a1)
{
  v2 = sub_1E67FA520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67F8B08(uint64_t a1)
{
  v2 = sub_1E67FA574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F8B44(uint64_t a1)
{
  v2 = sub_1E67FA574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NullViewDescriptor.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098650, &qword_1E68BC678);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098658, &qword_1E68BC680);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FA520();
  sub_1E68B3BD0();
  sub_1E67FA574();
  sub_1E68B3A30();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t NullViewDescriptor.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098670, &qword_1E68BC688);
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098678, &qword_1E68BC690);
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FA520();
  sub_1E68B3BC0();
  if (v1)
  {
    goto LABEL_6;
  }

  v21 = a1;
  v11 = v27;
  v12 = v22;
  v13 = sub_1E68B3A10();
  v14 = (2 * *(v13 + 16)) | 1;
  v23 = v13;
  v24 = v13 + 32;
  v25 = 0;
  v26 = v14;
  if ((sub_1E676F5BC() & 1) != 0 || v25 != v26 >> 1)
  {
    v15 = v7;
    v16 = sub_1E68B3870();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
    *v18 = &type metadata for NullViewDescriptor;
    sub_1E68B3980();
    sub_1E68B3860();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v12 + 8))(v10, v15);
    swift_unknownObjectRelease();
    a1 = v21;
LABEL_6:
    v20 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  sub_1E67FA574();
  sub_1E68B3970();
  (*(v11 + 8))(v6, v3);
  (*(v12 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v20 = v21;
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_1E67F90BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098650, &qword_1E68BC678);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098658, &qword_1E68BC680);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FA520();
  sub_1E68B3BD0();
  sub_1E67FA574();
  sub_1E68B3A30();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1E67F92B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E68B3B00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E67F933C(uint64_t a1)
{
  v2 = sub_1E67FA5C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F9378(uint64_t a1)
{
  v2 = sub_1E67FA5C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67F93B4(uint64_t a1)
{
  v2 = sub_1E67FA61C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F93F0(uint64_t a1)
{
  v2 = sub_1E67FA61C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NullSectionDensity.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098680, &qword_1E68BC698);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098688, &qword_1E68BC6A0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FA5C8();
  sub_1E68B3BD0();
  sub_1E67FA61C();
  sub_1E68B3A30();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t NullSectionDensity.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0986A0, &qword_1E68BC6A8);
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0986A8, &qword_1E68BC6B0);
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FA5C8();
  sub_1E68B3BC0();
  if (v1)
  {
    goto LABEL_6;
  }

  v21 = a1;
  v11 = v27;
  v12 = v22;
  v13 = sub_1E68B3A10();
  v14 = (2 * *(v13 + 16)) | 1;
  v23 = v13;
  v24 = v13 + 32;
  v25 = 0;
  v26 = v14;
  if ((sub_1E676F5BC() & 1) != 0 || v25 != v26 >> 1)
  {
    v15 = v7;
    v16 = sub_1E68B3870();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
    *v18 = &type metadata for NullSectionDensity;
    sub_1E68B3980();
    sub_1E68B3860();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v12 + 8))(v10, v15);
    swift_unknownObjectRelease();
    a1 = v21;
LABEL_6:
    v20 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  sub_1E67FA61C();
  sub_1E68B3970();
  (*(v11 + 8))(v6, v3);
  (*(v12 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v20 = v21;
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_1E67F9968(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098680, &qword_1E68BC698);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098688, &qword_1E68BC6A0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FA5C8();
  sub_1E68B3BD0();
  sub_1E67FA61C();
  sub_1E68B3A30();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1E67F9B88(uint64_t a1)
{
  v2 = sub_1E67FA99C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F9BC4(uint64_t a1)
{
  v2 = sub_1E67FA99C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67F9CC8(uint64_t a1)
{
  v2 = sub_1E67FA9F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F9D04(uint64_t a1)
{
  v2 = sub_1E67FA9F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67F9E0C(uint64_t a1)
{
  v2 = sub_1E67FAA44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67F9E48(uint64_t a1)
{
  v2 = sub_1E67FAA44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67F9EC8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1E68B3BD0();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1E67FA090(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1E68B3BD0();
  return (*(v10 + 8))(v13, v9);
}

uint64_t NullViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0986E0, &qword_1E68BC6D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1E67FA22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0986E0, &qword_1E68BC6D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t _s15FitnessCanvasUI15NullItemMetricsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v22 = a1[8];
  v21 = a1[9];
  v15 = a1[11];
  v16 = a1[10];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[7];
  v17 = a2[6];
  v18 = a1[6];
  v19 = a2[9];
  v20 = a2[8];
  v13 = a2[11];
  v14 = a2[10];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E68B3B00() & 1) == 0 || (v2 != v8 || v4 != v7) && (sub_1E68B3B00() & 1) == 0 || (v3 != v10 || v5 != v9) && (sub_1E68B3B00() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v18 != v17 || v6 != v11) && (sub_1E68B3B00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if ((v22 != v20 || v21 != v19) && (sub_1E68B3B00() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v14 && v15 == v13)
  {
    return 1;
  }

  return sub_1E68B3B00();
}

unint64_t sub_1E67FA464()
{
  result = qword_1ED098640;
  if (!qword_1ED098640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098640);
  }

  return result;
}

unint64_t sub_1E67FA520()
{
  result = qword_1ED098660;
  if (!qword_1ED098660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098660);
  }

  return result;
}

unint64_t sub_1E67FA574()
{
  result = qword_1ED098668;
  if (!qword_1ED098668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098668);
  }

  return result;
}

unint64_t sub_1E67FA5C8()
{
  result = qword_1ED098690;
  if (!qword_1ED098690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098690);
  }

  return result;
}

unint64_t sub_1E67FA61C()
{
  result = qword_1ED098698;
  if (!qword_1ED098698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098698);
  }

  return result;
}

unint64_t sub_1E67FA670(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098930, &qword_1E68BDBA8);
    v3 = sub_1E68B3940();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 24);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_1E680B808(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = (v3[7] + 24 * result);
      *v11 = v6;
      v11[1] = v7;
      v11[2] = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1E67FA778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098920, &qword_1E68BDB98);
    v3 = sub_1E68B3940();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E67FC9A4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1E680B790(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E67FCA14(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1E67FA888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098938, &unk_1E68BDBB0);
    v3 = sub_1E68B3940();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1E680B790(v5, v6);
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

unint64_t sub_1E67FA99C()
{
  result = qword_1ED0986B8;
  if (!qword_1ED0986B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0986B8);
  }

  return result;
}

unint64_t sub_1E67FA9F0()
{
  result = qword_1ED0986C8;
  if (!qword_1ED0986C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0986C8);
  }

  return result;
}

unint64_t sub_1E67FAA44()
{
  result = qword_1ED0986D8;
  if (!qword_1ED0986D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0986D8);
  }

  return result;
}

unint64_t sub_1E67FAA9C()
{
  result = qword_1ED0986E8;
  if (!qword_1ED0986E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0986E8);
  }

  return result;
}

unint64_t sub_1E67FAB30()
{
  result = qword_1ED0986F0;
  if (!qword_1ED0986F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0986F0);
  }

  return result;
}

unint64_t sub_1E67FAB84()
{
  result = qword_1ED0986F8;
  if (!qword_1ED0986F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0986F8);
  }

  return result;
}

unint64_t sub_1E67FABD8()
{
  result = qword_1ED098700;
  if (!qword_1ED098700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098700);
  }

  return result;
}

unint64_t sub_1E67FAC30()
{
  result = qword_1ED098708;
  if (!qword_1ED098708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098708);
  }

  return result;
}

unint64_t sub_1E67FACC4()
{
  result = qword_1ED098710;
  if (!qword_1ED098710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098710);
  }

  return result;
}

unint64_t sub_1E67FAD18()
{
  result = qword_1ED098718;
  if (!qword_1ED098718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098718);
  }

  return result;
}

unint64_t sub_1E67FAD6C()
{
  result = qword_1ED098720;
  if (!qword_1ED098720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098720);
  }

  return result;
}

unint64_t sub_1E67FADC4()
{
  result = qword_1ED098728;
  if (!qword_1ED098728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098728);
  }

  return result;
}

unint64_t sub_1E67FAE58()
{
  result = qword_1ED098730;
  if (!qword_1ED098730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098730);
  }

  return result;
}

unint64_t sub_1E67FAEAC()
{
  result = qword_1ED098738;
  if (!qword_1ED098738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098738);
  }

  return result;
}

unint64_t sub_1E67FAF00()
{
  result = qword_1ED098740;
  if (!qword_1ED098740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098740);
  }

  return result;
}

unint64_t sub_1E67FAF94()
{
  result = qword_1ED098748;
  if (!qword_1ED098748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098748);
  }

  return result;
}

unint64_t sub_1E67FAFE8()
{
  result = qword_1ED098750;
  if (!qword_1ED098750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098750);
  }

  return result;
}

unint64_t sub_1E67FB03C()
{
  result = qword_1ED098758;
  if (!qword_1ED098758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098758);
  }

  return result;
}

unint64_t sub_1E67FB094()
{
  result = qword_1ED098760;
  if (!qword_1ED098760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098760);
  }

  return result;
}

unint64_t sub_1E67FB0EC()
{
  result = qword_1ED098768;
  if (!qword_1ED098768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098768);
  }

  return result;
}

unint64_t sub_1E67FB180()
{
  result = qword_1ED098770;
  if (!qword_1ED098770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098770);
  }

  return result;
}

unint64_t sub_1E67FB1D4()
{
  result = qword_1ED098778;
  if (!qword_1ED098778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098778);
  }

  return result;
}

unint64_t sub_1E67FB228()
{
  result = qword_1ED098780;
  if (!qword_1ED098780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098780);
  }

  return result;
}

unint64_t sub_1E67FB280()
{
  result = qword_1ED098788;
  if (!qword_1ED098788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098788);
  }

  return result;
}

unint64_t sub_1E67FB314()
{
  result = qword_1ED098790;
  if (!qword_1ED098790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098790);
  }

  return result;
}

unint64_t sub_1E67FB368()
{
  result = qword_1ED098798;
  if (!qword_1ED098798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098798);
  }

  return result;
}

unint64_t sub_1E67FB3BC()
{
  result = qword_1ED0987A0;
  if (!qword_1ED0987A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987A0);
  }

  return result;
}

unint64_t sub_1E67FB450()
{
  result = qword_1ED0987A8;
  if (!qword_1ED0987A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987A8);
  }

  return result;
}

unint64_t sub_1E67FB4A4()
{
  result = qword_1ED0987B0;
  if (!qword_1ED0987B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987B0);
  }

  return result;
}

unint64_t sub_1E67FB4F8()
{
  result = qword_1ED0987B8;
  if (!qword_1ED0987B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987B8);
  }

  return result;
}

unint64_t sub_1E67FB550()
{
  result = qword_1ED0987C0;
  if (!qword_1ED0987C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987C0);
  }

  return result;
}

unint64_t sub_1E67FB5E4()
{
  result = qword_1ED0987C8;
  if (!qword_1ED0987C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987C8);
  }

  return result;
}

unint64_t sub_1E67FB638()
{
  result = qword_1ED0987D0;
  if (!qword_1ED0987D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987D0);
  }

  return result;
}

unint64_t sub_1E67FB68C()
{
  result = qword_1ED0987D8;
  if (!qword_1ED0987D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987D8);
  }

  return result;
}

unint64_t sub_1E67FB6E4()
{
  result = qword_1ED0987E0;
  if (!qword_1ED0987E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987E0);
  }

  return result;
}

uint64_t sub_1E67FB778(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1E67FB7CC()
{
  result = qword_1ED0987E8;
  if (!qword_1ED0987E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987E8);
  }

  return result;
}

unint64_t sub_1E67FB820()
{
  result = qword_1ED0987F0;
  if (!qword_1ED0987F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987F0);
  }

  return result;
}

unint64_t sub_1E67FB874()
{
  result = qword_1ED0987F8;
  if (!qword_1ED0987F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0987F8);
  }

  return result;
}

unint64_t sub_1E67FB8CC()
{
  result = qword_1ED098800;
  if (!qword_1ED098800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098800);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1E67FB988(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1E67FB9D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E67FBA98()
{
  result = qword_1ED098808;
  if (!qword_1ED098808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0986E0, &qword_1E68BC6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098808);
  }

  return result;
}

unint64_t sub_1E67FBBE0()
{
  result = qword_1ED098810;
  if (!qword_1ED098810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098810);
  }

  return result;
}

unint64_t sub_1E67FBC38()
{
  result = qword_1ED098818;
  if (!qword_1ED098818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098818);
  }

  return result;
}

unint64_t sub_1E67FBC90()
{
  result = qword_1ED098820;
  if (!qword_1ED098820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098820);
  }

  return result;
}

unint64_t sub_1E67FBCE8()
{
  result = qword_1ED098828;
  if (!qword_1ED098828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098828);
  }

  return result;
}

unint64_t sub_1E67FBD40()
{
  result = qword_1ED098830;
  if (!qword_1ED098830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098830);
  }

  return result;
}

unint64_t sub_1E67FBD98()
{
  result = qword_1ED098838;
  if (!qword_1ED098838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098838);
  }

  return result;
}

unint64_t sub_1E67FBDF0()
{
  result = qword_1ED098840;
  if (!qword_1ED098840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098840);
  }

  return result;
}

unint64_t sub_1E67FBE48()
{
  result = qword_1ED098848;
  if (!qword_1ED098848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098848);
  }

  return result;
}

unint64_t sub_1E67FBEA0()
{
  result = qword_1ED098850;
  if (!qword_1ED098850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098850);
  }

  return result;
}

unint64_t sub_1E67FBEF8()
{
  result = qword_1ED098858;
  if (!qword_1ED098858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098858);
  }

  return result;
}

unint64_t sub_1E67FBF50()
{
  result = qword_1ED098860;
  if (!qword_1ED098860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098860);
  }

  return result;
}

unint64_t sub_1E67FBFA8()
{
  result = qword_1ED098868;
  if (!qword_1ED098868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098868);
  }

  return result;
}

unint64_t sub_1E67FC000()
{
  result = qword_1ED098870;
  if (!qword_1ED098870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098870);
  }

  return result;
}

unint64_t sub_1E67FC058()
{
  result = qword_1ED098878;
  if (!qword_1ED098878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098878);
  }

  return result;
}

unint64_t sub_1E67FC0B0()
{
  result = qword_1ED098880;
  if (!qword_1ED098880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098880);
  }

  return result;
}

unint64_t sub_1E67FC108()
{
  result = qword_1ED098888;
  if (!qword_1ED098888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098888);
  }

  return result;
}

unint64_t sub_1E67FC160()
{
  result = qword_1ED098890;
  if (!qword_1ED098890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098890);
  }

  return result;
}

unint64_t sub_1E67FC1B8()
{
  result = qword_1ED098898;
  if (!qword_1ED098898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098898);
  }

  return result;
}

unint64_t sub_1E67FC210()
{
  result = qword_1ED0988A0;
  if (!qword_1ED0988A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988A0);
  }

  return result;
}

unint64_t sub_1E67FC268()
{
  result = qword_1ED0988A8;
  if (!qword_1ED0988A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988A8);
  }

  return result;
}

unint64_t sub_1E67FC2C0()
{
  result = qword_1ED0988B0;
  if (!qword_1ED0988B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988B0);
  }

  return result;
}

unint64_t sub_1E67FC318()
{
  result = qword_1ED0988B8;
  if (!qword_1ED0988B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988B8);
  }

  return result;
}

unint64_t sub_1E67FC370()
{
  result = qword_1ED0988C0;
  if (!qword_1ED0988C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988C0);
  }

  return result;
}

unint64_t sub_1E67FC3C8()
{
  result = qword_1ED0988C8;
  if (!qword_1ED0988C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988C8);
  }

  return result;
}

unint64_t sub_1E67FC420()
{
  result = qword_1ED0988D0;
  if (!qword_1ED0988D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988D0);
  }

  return result;
}

unint64_t sub_1E67FC478()
{
  result = qword_1ED0988D8;
  if (!qword_1ED0988D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988D8);
  }

  return result;
}

unint64_t sub_1E67FC4D0()
{
  result = qword_1ED0988E0;
  if (!qword_1ED0988E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988E0);
  }

  return result;
}

unint64_t sub_1E67FC528()
{
  result = qword_1ED0988E8;
  if (!qword_1ED0988E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988E8);
  }

  return result;
}

unint64_t sub_1E67FC580()
{
  result = qword_1ED0988F0;
  if (!qword_1ED0988F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988F0);
  }

  return result;
}

unint64_t sub_1E67FC5D8()
{
  result = qword_1ED0988F8;
  if (!qword_1ED0988F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0988F8);
  }

  return result;
}

unint64_t sub_1E67FC630()
{
  result = qword_1ED098900;
  if (!qword_1ED098900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098900);
  }

  return result;
}

unint64_t sub_1E67FC688()
{
  result = qword_1ED098908;
  if (!qword_1ED098908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098908);
  }

  return result;
}

unint64_t sub_1E67FC6E0()
{
  result = qword_1ED098910;
  if (!qword_1ED098910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098910);
  }

  return result;
}

unint64_t sub_1E67FC738()
{
  result = qword_1ED098918;
  if (!qword_1ED098918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098918);
  }

  return result;
}

uint64_t sub_1E67FC78C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v3 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEE00657079547265 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEE00657079546E6FLL || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E2C60 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E67FC9A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098928, &qword_1E68BDBA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1E67FCA14(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1E67FCAF0()
{
  result = qword_1EE2EA5E0;
  if (!qword_1EE2EA5E0)
  {
    sub_1E68B23A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA5E0);
  }

  return result;
}

uint64_t sub_1E67FCB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DataItemResolution(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = sub_1E68B34D0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E67FCC14@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = *a1;
  v9 = *(type metadata accessor for ResolvedDataItemInterestRegistration(0, a3, a4, a4) + 36);
  type metadata accessor for DataItemResolution(255, a3, a4, v10);
  v11 = sub_1E68B34D0();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a5[v9], a2, v11);
}

uint64_t Symbol.systemName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Symbol.foregroundColorHex.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Symbol.accessibilityLabel.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall Symbol.init(systemName:foregroundColorHex:accessibilityLabel:)(FitnessCanvasUI::Symbol *__return_ptr retstr, Swift::String systemName, Swift::String_optional foregroundColorHex, Swift::String_optional accessibilityLabel)
{
  retstr->systemName = systemName;
  retstr->foregroundColorHex = foregroundColorHex;
  retstr->accessibilityLabel = accessibilityLabel;
}

uint64_t sub_1E67FCD70()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x614E6D6574737973;
  }
}

uint64_t sub_1E67FCDD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E67FDDC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E67FCE00(uint64_t a1)
{
  v2 = sub_1E67FDA38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67FCE3C(uint64_t a1)
{
  v2 = sub_1E67FDA38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Symbol.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098950, &qword_1E68BDC50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v12 - v6;
  v8 = v1[2];
  v12[3] = v1[3];
  v12[4] = v8;
  v9 = v1[4];
  v12[1] = v1[5];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FDA38();
  sub_1E68B3BD0();
  v15 = 0;
  v10 = v12[5];
  sub_1E68B3A70();
  if (v10)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v14 = 1;
  sub_1E68B3A40();
  v13 = 2;
  sub_1E68B3A40();
  return (*(v4 + 8))(v7, v3);
}

uint64_t Symbol.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_1E68B31F0();
  if (!v2)
  {
    sub_1E68B3B90();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_1E68B3B90();
  }

  sub_1E68B3B90();
  sub_1E68B31F0();
  if (!v3)
  {
    return sub_1E68B3B90();
  }

LABEL_3:
  sub_1E68B3B90();

  return sub_1E68B31F0();
}

uint64_t Symbol.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_1E68B3B70();
  sub_1E68B31F0();
  if (!v1)
  {
    sub_1E68B3B90();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E68B3B90();
    return sub_1E68B3BB0();
  }

  sub_1E68B3B90();
  sub_1E68B31F0();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E68B3B90();
  sub_1E68B31F0();
  return sub_1E68B3BB0();
}

uint64_t Symbol.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098960, &qword_1E68BDC58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67FDA38();
  sub_1E68B3BC0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v10 = sub_1E68B39C0();
  v12 = v11;
  v23 = v10;
  v25 = 1;
  v21 = sub_1E68B3990();
  v22 = v13;
  v24 = 2;
  v14 = sub_1E68B3990();
  v16 = v15;
  v17 = v14;
  (*(v6 + 8))(v9, v5);
  v18 = v22;
  *a2 = v23;
  a2[1] = v12;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E67FD46C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_1E68B31F0();
  if (!v2)
  {
    sub_1E68B3B90();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_1E68B3B90();
  }

  sub_1E68B3B90();
  sub_1E68B31F0();
  if (!v3)
  {
    return sub_1E68B3B90();
  }

LABEL_3:
  sub_1E68B3B90();

  return sub_1E68B31F0();
}

uint64_t sub_1E67FD528(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_1E68B3B70();
  sub_1E68B31F0();
  if (!v2)
  {
    sub_1E68B3B90();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E68B3B90();
    return sub_1E68B3BB0();
  }

  sub_1E68B3B90();
  sub_1E68B31F0();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E68B3B90();
  sub_1E68B31F0();
  return sub_1E68B3BB0();
}

uint64_t static SymbolAttribute.name.getter()
{
  swift_beginAccess();
  v0 = *aSymbol_2;

  return v0;
}

uint64_t static SymbolAttribute.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aSymbol_2 = a1;
  qword_1ED098948 = a2;
}

uint64_t sub_1E67FD6F8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aSymbol_2 = v2;
  qword_1ED098948 = v1;
}

uint64_t sub_1E67FD81C()
{
  swift_beginAccess();
  v0 = *aSymbol_2;

  return v0;
}

uint64_t sub_1E67FD8AC(uint64_t a1)
{
  sub_1E67934E4();

  return sub_1E68B1740();
}

uint64_t sub_1E67FD8F8(uint64_t a1)
{
  sub_1E67934E4();

  return sub_1E68B1740();
}

uint64_t _s15FitnessCanvasUI6SymbolV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E68B3B00() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6 || (v2 != v7 || v4 != v6) && (sub_1E68B3B00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v3 == v9 && v5 == v8 || (sub_1E68B3B00() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1E67FDA38()
{
  result = qword_1ED098958;
  if (!qword_1ED098958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098958);
  }

  return result;
}

unint64_t sub_1E67FDA90()
{
  result = qword_1ED098968;
  if (!qword_1ED098968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098968);
  }

  return result;
}

unint64_t sub_1E67FDAE8()
{
  result = qword_1ED098970;
  if (!qword_1ED098970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098970);
  }

  return result;
}

unint64_t sub_1E67FDB40()
{
  result = qword_1EE2EDF30;
  if (!qword_1EE2EDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EDF30);
  }

  return result;
}

unint64_t sub_1E67FDB98()
{
  result = qword_1EE2EDF28;
  if (!qword_1EE2EDF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EDF28);
  }

  return result;
}

uint64_t sub_1E67FDBEC(uint64_t a1, int a2)
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

uint64_t sub_1E67FDC34(uint64_t result, int a2, int a3)
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

unint64_t sub_1E67FDCC4()
{
  result = qword_1ED098978;
  if (!qword_1ED098978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098978);
  }

  return result;
}

unint64_t sub_1E67FDD1C()
{
  result = qword_1ED098980;
  if (!qword_1ED098980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098980);
  }

  return result;
}

unint64_t sub_1E67FDD74()
{
  result = qword_1ED098988;
  if (!qword_1ED098988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098988);
  }

  return result;
}

uint64_t sub_1E67FDDC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E6D6574737973 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E68E2C80 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E68E2CA0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

unint64_t sub_1E67FDEF8()
{
  result = qword_1ED098990;
  if (!qword_1ED098990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098990);
  }

  return result;
}

unint64_t sub_1E67FDF4C()
{
  result = qword_1ED098998;
  if (!qword_1ED098998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098998);
  }

  return result;
}

uint64_t sub_1E67FDFA4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1E68B3750();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_1E67FE010@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8, &qword_1E68B4950);
  swift_storeEnumTagMultiPayload();
  v48[0] = a21;
  v48[1] = a22;
  v48[2] = a23;
  v48[3] = a24;
  v28 = type metadata accessor for StandardHorizontalStackView(0, v48);
  v29 = &a9[v28[13]];
  v30 = a1[5];
  *(v29 + 4) = a1[4];
  *(v29 + 5) = v30;
  v31 = a1[3];
  *(v29 + 2) = a1[2];
  *(v29 + 3) = v31;
  v32 = a1[9];
  *(v29 + 8) = a1[8];
  *(v29 + 9) = v32;
  v33 = a1[7];
  *(v29 + 6) = a1[6];
  *(v29 + 7) = v33;
  v34 = a1[1];
  *v29 = *a1;
  *(v29 + 1) = v34;
  (*(*(a21 - 8) + 32))(&a9[v28[14]], a2, a21);
  v35 = &a9[v28[15]];
  *v35 = a3;
  *(v35 + 1) = a4;
  *(v35 + 2) = a5;
  *(v35 + 3) = a6;
  v36 = &a9[v28[16]];
  *v36 = a7;
  *(v36 + 1) = a8;
  *(v36 + 2) = a10;
  *(v36 + 3) = a11;
  v37 = &a9[v28[17]];
  *v37 = a12;
  *(v37 + 2) = a13;
  *(v37 + 3) = a14;
  v38 = &a9[v28[18]];
  *v38 = a15;
  *(v38 + 2) = a16;
  *(v38 + 3) = a17;
  v39 = v28[19];
  v40 = sub_1E68B3750();
  (*(*(v40 - 8) + 32))(&a9[v39], a18, v40);
  v41 = &a9[v28[20]];
  result = swift_allocObject();
  *(result + 16) = a19;
  *(result + 24) = a20;
  *v41 = sub_1E673F5E0;
  *(v41 + 1) = result;
  return result;
}

double static StandardHorizontalStackViewLayout.default.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1ED096D58 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1ED098A10;
  a1[6] = xmmword_1ED098A00;
  a1[7] = v1;
  v2 = xmmword_1ED098A30;
  a1[8] = xmmword_1ED098A20;
  a1[9] = v2;
  v3 = unk_1ED0989D0;
  a1[2] = xmmword_1ED0989C0;
  a1[3] = v3;
  v4 = *&qword_1ED0989F0;
  a1[4] = xmmword_1ED0989E0;
  a1[5] = v4;
  result = *&xmmword_1ED0989A0;
  v6 = *&qword_1ED0989B0;
  *a1 = xmmword_1ED0989A0;
  a1[1] = v6;
  return result;
}

__n128 StandardHorizontalStackViewLayout.contentMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

double StandardHorizontalStackViewLayout.sectionDensity.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = *(v1 + 72);
  *(a1 + 8) = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 StandardHorizontalStackViewLayout.init(artworkAspectRatio:artworkClipShape:artworkContentSpacing:contentMargins:displaySeparator:sectionDensity:titleLineLimit:subtitleLineLimit:captionLineLimit:artworkHeight:showChevron:interItemSpacing:artworkVerticalPadding:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, char a16)
{
  v16 = *a5;
  v17 = a5[1];
  v18 = a5[2];
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2 & 1;
  *(a9 + 32) = a12;
  result = *a3;
  v20 = *(a3 + 16);
  *(a9 + 40) = *a3;
  *(a9 + 56) = v20;
  *(a9 + 72) = v16;
  *(a9 + 80) = v17;
  *(a9 + 88) = v18;
  *(a9 + 96) = a4;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7;
  *(a9 + 120) = a8;
  *(a9 + 128) = a13;
  *(a9 + 136) = a16;
  *(a9 + 144) = a14;
  *(a9 + 152) = a15;
  return result;
}

unint64_t sub_1E67FE3DC(char a1)
{
  result = 0x4D746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      return result;
    case 4:
      result = 0x446E6F6974636573;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6E694C656C746974;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x486B726F77747261;
      break;
    case 10:
      result = 0x76656843776F6873;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1E67FE594@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E680572C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E67FE5C8(uint64_t a1)
{
  v2 = sub_1E68041C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67FE604(uint64_t a1)
{
  v2 = sub_1E68041C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E67FE640(uint64_t a1)
{
  v1 = 8.0;
  if (sub_1E68B2DF0())
  {
    sub_1E68B1A40();
    v1 = v2;
  }

  xmmword_1ED0989A0 = xmmword_1E68BE010;
  qword_1ED0989B0 = *&v1;
  byte_1ED0989B8 = 0;
  result = 10.0;
  xmmword_1ED0989C0 = xmmword_1E68BE020;
  unk_1ED0989D0 = xmmword_1E68BE030;
  *&xmmword_1ED0989E0 = 0x4034000000000000;
  *(&xmmword_1ED0989E0 + 1) = 2;
  qword_1ED0989F0 = 0x4024000000000000;
  unk_1ED0989F8 = 1;
  LOBYTE(xmmword_1ED098A00) = 0;
  *(&xmmword_1ED098A00 + 8) = vdupq_n_s64(2uLL);
  qword_1ED098A18 = 2;
  *&xmmword_1ED098A20 = 0x405E000000000000;
  BYTE8(xmmword_1ED098A20) = 1;
  xmmword_1ED098A30 = xmmword_1E68BE020;
  return result;
}

uint64_t StandardHorizontalStackViewLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098A40, &qword_1E68BE040);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v23 - v7;
  v9 = *v1;
  v10 = v1[1];
  v33 = v1[2];
  v32 = *(v1 + 24);
  v11 = v1[4];
  v12 = *(v1 + 5);
  v27 = *(v1 + 7);
  v28 = v12;
  v13 = v1[9];
  v14 = v1[10];
  v30 = v1[11];
  v31 = v13;
  v29 = *(v1 + 96);
  v15 = v1[14];
  v26 = v1[13];
  v25 = v15;
  v24 = v1[15];
  v16 = v1[16];
  v17 = *(v1 + 136);
  v19 = v1[18];
  v18 = v1[19];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68041C8();
  sub_1E68B3BD0();
  *&v34 = v9;
  *(&v34 + 1) = v10;
  v36 = 0;
  type metadata accessor for CGSize(0);
  sub_1E68050F0(&qword_1EE2EA448, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
  sub_1E68B3AB0();
  if (!v2)
  {
    v20 = v30;
    v21 = v31;
    v23[1] = v17;
    *&v34 = v33;
    BYTE8(v34) = v32;
    v36 = 1;
    sub_1E680421C();
    sub_1E68B3AB0();
    *&v34 = v11;
    v36 = 2;
    sub_1E67621E8();
    sub_1E68B3AB0();
    v33 = v5;
    v34 = v28;
    v35 = v27;
    v36 = 3;
    sub_1E67F4B08();
    sub_1E68B3AB0();
    *&v34 = v21;
    *(&v34 + 1) = v14;
    *&v35 = v20;
    v36 = 4;
    sub_1E6804270();
    sub_1E68B3AB0();
    LOBYTE(v34) = 5;
    sub_1E68B3A80();
    LOBYTE(v34) = 6;
    sub_1E68B3AA0();
    LOBYTE(v34) = 7;
    sub_1E68B3AA0();
    LOBYTE(v34) = 8;
    sub_1E68B3AA0();
    *&v34 = v16;
    v36 = 9;
    sub_1E68B3AB0();
    LOBYTE(v34) = 10;
    sub_1E68B3A80();
    *&v34 = v19;
    v36 = 11;
    sub_1E68B3AB0();
    *&v34 = v18;
    v36 = 12;
    sub_1E68B3AB0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t StandardHorizontalStackViewLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098A50, &qword_1E68BE048);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68041C8();
  sub_1E68B3BC0();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v37 = 0;
    sub_1E68050F0(&qword_1ED096DC0, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    sub_1E68B3A00();
    v10 = v34;
    v37 = 1;
    sub_1E68042C4();
    sub_1E68B3A00();
    v11 = v34;
    v36 = BYTE8(v34);
    v37 = 2;
    sub_1E6762A60();
    sub_1E68B3A00();
    v12 = v34;
    v37 = 3;
    sub_1E67F4BB0();
    sub_1E68B3A00();
    v32 = v34;
    v33 = v35;
    v37 = 4;
    sub_1E6804318();
    sub_1E68B3A00();
    v13 = *(&v34 + 1);
    v30 = v35;
    v31 = v34;
    LOBYTE(v34) = 5;
    v29 = sub_1E68B39D0();
    LOBYTE(v34) = 6;
    v28 = sub_1E68B39F0();
    LOBYTE(v34) = 7;
    v27 = sub_1E68B39F0();
    LOBYTE(v34) = 8;
    v26 = sub_1E68B39F0();
    v37 = 9;
    sub_1E68B3A00();
    v14 = v34;
    LOBYTE(v34) = 10;
    v25 = sub_1E68B39D0();
    v37 = 11;
    sub_1E68B3A00();
    v16 = v34;
    v37 = 12;
    sub_1E68B3A00();
    (*(v6 + 8))(v9, v5);
    v17 = v29 & 1;
    v18 = v34;
    v19 = v25 & 1;
    v20 = v36;
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v20;
    *(a2 + 32) = v12;
    v21 = v33;
    *(a2 + 40) = v32;
    *(a2 + 56) = v21;
    v22 = v30;
    *(a2 + 72) = v31;
    *(a2 + 80) = v13;
    *(a2 + 88) = v22;
    *(a2 + 96) = v17;
    v23 = v27;
    *(a2 + 104) = v28;
    *(a2 + 112) = v23;
    *(a2 + 120) = v26;
    *(a2 + 128) = v14;
    *(a2 + 136) = v19;
    *(a2 + 144) = v16;
    *(a2 + 152) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t StandardHorizontalStackViewLayout.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  v13 = *(v0 + 120);
  v14 = *(v0 + 128);
  v26 = *(v0 + 144);
  v27 = *(v0 + 152);
  sub_1E673E7F4(*v0, *(v0 + 8));
  if (v2)
  {
    MEMORY[0x1E69523D0](1);
  }

  else
  {
    MEMORY[0x1E69523D0](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v1;
    }

    else
    {
      v15 = 0;
    }

    MEMORY[0x1E69523F0](v15);
  }

  if (v4 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v4;
  }

  MEMORY[0x1E69523F0](*&v16);
  if (v3 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v3;
  }

  MEMORY[0x1E69523F0](*&v17);
  if (v6 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v6;
  }

  MEMORY[0x1E69523F0](*&v18);
  if (v5 == 0.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v5;
  }

  MEMORY[0x1E69523F0](*&v19);
  if (v7 == 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v7;
  }

  MEMORY[0x1E69523F0](*&v20);
  MEMORY[0x1E69523D0](v8);
  if (v9 == 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v9;
  }

  MEMORY[0x1E69523F0](*&v21);
  MEMORY[0x1E69523D0](v10);
  sub_1E68B3B90();
  MEMORY[0x1E69523D0](v12);
  MEMORY[0x1E69523D0](v11);
  MEMORY[0x1E69523D0](v13);
  if (v14 == 0.0)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v14;
  }

  MEMORY[0x1E69523F0](*&v22);
  sub_1E68B3B90();
  v23 = v26;
  if (v26 == 0.0)
  {
    v23 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v23);
  v24 = v27;
  if (v27 == 0.0)
  {
    v24 = 0.0;
  }

  return MEMORY[0x1E69523F0](*&v24);
}

uint64_t StandardHorizontalStackViewLayout.hashValue.getter()
{
  sub_1E68B3B70();
  StandardHorizontalStackViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67FF2D4()
{
  sub_1E68B3B70();
  StandardHorizontalStackViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67FF318(uint64_t a1)
{
  sub_1E68B3B70();
  StandardHorizontalStackViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67FF358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098A88, &qword_1E68BE320);
  MEMORY[0x1EEE9AC00](v72, v3);
  v71 = &v69 - v4;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098A90, &qword_1E68BE328);
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v5);
  v70 = &v69 - v6;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098A98, &qword_1E68BE330);
  MEMORY[0x1EEE9AC00](v85, v7);
  v87 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v82 = &v69 - v11;
  v81 = sub_1E68B2400();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v12);
  v79 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = (a1 + 40);
  v77 = *(a1 + 16);
  v14 = a1;
  sub_1E68B1E40();
  v15 = sub_1E68B1E40();
  v76 = *(v14 + 32);
  v75 = v14;
  v107 = v76;
  v108 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1E67979F0();
  v105 = WitnessTable;
  v106 = v17;
  v18 = swift_getWitnessTable();
  v95 = v15;
  v96 = v18;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098AA0, &unk_1E68BE338);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  v95 = v15;
  v96 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v104 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B2220();
  v19 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v101 = v19;
  v102 = v20;
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getWitnessTable();
  sub_1E68B2C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E08, &qword_1E68B7610);
  v21 = sub_1E68B1E40();
  v22 = sub_1E68B1EB0();
  v23 = swift_getWitnessTable();
  v24 = sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08, &qword_1E68B7610, MEMORY[0x1E697FD58]);
  v99 = v23;
  v100 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_1E68050F0(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v95 = v21;
  v96 = v22;
  v97 = v25;
  v98 = v26;
  swift_getOpaqueTypeMetadata2();
  v27 = *(v14 + 24);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  v74 = swift_getWitnessTable();
  v28 = sub_1E68B2C50();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v69 - v31;
  v33 = swift_getWitnessTable();
  v95 = v28;
  v96 = v33;
  v73 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v36);
  v38 = &v69 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v69 - v41;
  *&v43 = v76;
  *(&v43 + 1) = *v78;
  *&v44 = v77;
  *(&v44 + 1) = v27;
  v89 = v44;
  v90 = v43;
  v45 = v83;
  v91 = v83;
  sub_1E68B2140();
  sub_1E68B2C40();
  v46 = v79;
  sub_1E68B23F0();
  sub_1E68B2920();
  (*(v80 + 8))(v46, v81);
  (*(v29 + 8))(v32, v28);
  v47 = v82;
  v95 = v28;
  v96 = v33;
  v48 = swift_getOpaqueTypeConformance2();
  v81 = v42;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v80 = v35;
  v49 = *(v35 + 8);
  v49(v38, OpaqueTypeMetadata2);
  v50 = 1;
  if (*(v45 + *(v75 + 52) + 96) == 1)
  {
    v51 = v71;
    sub_1E68B2D00();
    v52 = sub_1E68B2550();
    sub_1E68B1B30();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v61 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098AC8, &qword_1E68BE348) + 36);
    *v61 = v52;
    *(v61 + 8) = v54;
    *(v61 + 16) = v56;
    *(v61 + 24) = v58;
    *(v61 + 32) = v60;
    *(v61 + 40) = 0;
    v62 = sub_1E68B1E70();
    v63 = sub_1E68B2500();
    v64 = v51 + *(v72 + 36);
    *v64 = v62;
    *(v64 + 8) = v63;
    sub_1E6804FA8();
    v65 = v70;
    sub_1E68B2900();
    sub_1E6744A10(v51, &qword_1ED098A88, &qword_1E68BE320);
    sub_1E6761420(v65, v47, &qword_1ED098A90, &qword_1E68BE328);
    v50 = 0;
  }

  (*(v84 + 56))(v47, v50, 1, v86);
  v66 = v81;
  (*(v80 + 16))(v38, v81, OpaqueTypeMetadata2);
  v95 = v38;
  v67 = v87;
  sub_1E67612FC(v47, v87, &qword_1ED098A98, &qword_1E68BE330);
  v96 = v67;
  v94[0] = OpaqueTypeMetadata2;
  v94[1] = v85;
  v92 = v48;
  v93 = sub_1E6804E68();
  sub_1E6848F14(&v95, 2uLL, v94);
  sub_1E6744A10(v47, &qword_1ED098A98, &qword_1E68BE330);
  v49(v66, OpaqueTypeMetadata2);
  sub_1E6744A10(v67, &qword_1ED098A98, &qword_1E68BE330);
  return (v49)(v38, OpaqueTypeMetadata2);
}

uint64_t sub_1E67FFE68@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v129 = a1;
  v136 = a6;
  swift_getTupleTypeMetadata2();
  v10 = sub_1E68B2F00();
  v134 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v107 = &v104 - v12;
  v132 = sub_1E68B3750();
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v13);
  v130 = &v104 - v14;
  v140 = a3;
  v128 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v15, v16);
  v106 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v105 = &v104 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v104 = &v104 - v23;
  v135 = v10;
  v145 = sub_1E68B3750();
  v133 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145, v24);
  v144 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v143 = &v104 - v28;
  v142 = sub_1E68B1EB0();
  v127 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142, v29);
  v126 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = a2;
  v168 = a2;
  v169 = a3;
  v122 = a4;
  v170 = a4;
  v171 = a5;
  v138 = type metadata accessor for StandardHorizontalStackView(0, &v168);
  v123 = *(v138 - 8);
  v125 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v138, v31);
  v121 = &v104 - v32;
  sub_1E68B1E40();
  v33 = sub_1E68B1E40();
  v166 = a4;
  v167 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v35 = sub_1E67979F0();
  v164 = WitnessTable;
  v165 = v35;
  v36 = swift_getWitnessTable();
  v168 = v33;
  v169 = v36;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098AA0, &unk_1E68BE338);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  v168 = v33;
  v169 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v163 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B2220();
  v37 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v160 = v37;
  v161 = v38;
  swift_getWitnessTable();
  v118 = sub_1E68B2CC0();
  v117 = swift_getWitnessTable();
  v39 = sub_1E68B2C30();
  v120 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v40);
  v116 = &v104 - v41;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E08, &qword_1E68B7610);
  v114 = v39;
  v42 = sub_1E68B1E40();
  v111 = v42;
  v119 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v43);
  v115 = &v104 - v44;
  v45 = swift_getWitnessTable();
  v112 = v45;
  v46 = sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08, &qword_1E68B7610, MEMORY[0x1E697FD58]);
  v158 = v45;
  v159 = v46;
  v47 = a5;
  v48 = swift_getWitnessTable();
  v110 = v48;
  v109 = sub_1E68050F0(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v168 = v42;
  v169 = v142;
  v170 = v48;
  v171 = v109;
  v113 = MEMORY[0x1E697CDB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v137 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2 - 8, v49);
  v108 = &v104 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51, v52);
  v139 = &v104 - v54;
  v55 = v123;
  v56 = v121;
  v57 = v129;
  v58 = v138;
  (*(v123 + 16))(v121, v129, v138, v53);
  v59 = (*(v55 + 80) + 48) & ~*(v55 + 80);
  v60 = swift_allocObject();
  v61 = v124;
  v62 = v140;
  *(v60 + 2) = v124;
  *(v60 + 3) = v62;
  v63 = v122;
  *(v60 + 4) = v122;
  *(v60 + 5) = v47;
  (*(v55 + 32))(&v60[v59], v56, v58);
  v146 = v61;
  v147 = v62;
  v148 = v63;
  v125 = v47;
  v149 = v47;
  v150 = v57;
  v64 = v116;
  sub_1E68B2C20();
  sub_1E673F180();
  v65 = v115;
  v66 = v114;
  sub_1E68B2800();
  (*(v120 + 8))(v64, v66);
  v67 = v126;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  v68 = v108;
  v69 = v111;
  v70 = v142;
  v71 = v110;
  v72 = v109;
  sub_1E68B2790();
  (*(v127 + 1))(v67, v70);
  v73 = v140;
  (*(v119 + 8))(v65, v69);
  v168 = v69;
  v169 = v70;
  v74 = v130;
  v170 = v71;
  v171 = v72;
  v75 = v131;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = OpaqueTypeMetadata2;
  v126 = v76;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v78 = *(v137 + 8);
  v79 = v68;
  v142 = v137 + 8;
  v127 = v78;
  v78(v68, v77);
  v80 = v57 + *(v138 + 76);
  v81 = v132;
  (*(v75 + 16))(v74, v80, v132);
  v82 = v128;
  if ((*(v128 + 48))(v74, 1, v73) == 1)
  {
    (*(v75 + 8))(v74, v81);
    v83 = v144;
    (*(v134 + 56))(v144, 1, 1, v135);
  }

  else
  {
    v84 = v104;
    (*(v82 + 32))(v104, v74, v73);
    v85 = v105;
    v86 = v125;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v151 = 0;
    v152 = 1;
    v168 = &v151;
    v87 = v106;
    (*(v82 + 16))(v106, v85, v73);
    v169 = v87;
    v156 = MEMORY[0x1E6981840];
    v157 = v73;
    v154 = MEMORY[0x1E6981838];
    v155 = v86;
    v88 = v107;
    sub_1E6848F14(&v168, 2uLL, &v156);
    v89 = *(v82 + 8);
    v89(v85, v73);
    v89(v84, v73);
    v89(v87, v73);
    v90 = v134;
    v83 = v144;
    v91 = v135;
    (*(v134 + 32))(v144, v88, v135);
    (*(v90 + 56))(v83, 0, 1, v91);
  }

  swift_getWitnessTable();
  v92 = v133;
  v93 = *(v133 + 16);
  v94 = v145;
  v93(v143, v83, v145);
  v140 = *(v92 + 8);
  (v140)(v83, v94);
  v95 = v139;
  v96 = OpaqueTypeMetadata2;
  (*(v137 + 16))(v79, v139, OpaqueTypeMetadata2);
  v168 = v79;
  v97 = v144;
  v98 = v143;
  v99 = v145;
  v93(v144, v143, v145);
  v169 = v97;
  v156 = v96;
  v157 = v99;
  v154 = v126;
  v153 = swift_getWitnessTable();
  v155 = swift_getWitnessTable();
  sub_1E6848F14(&v168, 2uLL, &v156);
  v100 = v140;
  (v140)(v98, v99);
  v101 = v95;
  v102 = v127;
  v127(v101, v96);
  v100(v97, v99);
  return v102(v79, v96);
}

uint64_t sub_1E6800E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a1;
  v23 = a5;
  v21 = a3;
  v24 = a6;
  sub_1E68B1E40();
  v8 = sub_1E68B1E40();
  v38 = a4;
  v39 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v37 = sub_1E67979F0();
  v9 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098AA0, &unk_1E68BE338);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  v34 = v8;
  v35 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B2220();
  v30 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = sub_1E68B2CC0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v21 - v17;
  sub_1E68B21D0();
  v25 = a2;
  v26 = v21;
  v27 = a4;
  v28 = v23;
  v29 = v22;
  sub_1E68B2CB0();
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v19 = *(v11 + 8);
  v19(v14, v10);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v19)(v18, v10);
}

uint64_t sub_1E6801224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a3;
  v48 = a5;
  v45 = a2;
  v46 = a1;
  v49 = a6;
  v58 = a2;
  v59 = a3;
  v60 = a4;
  v61 = a5;
  v43 = a4;
  v7 = type metadata accessor for StandardHorizontalStackView(0, &v58);
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v42 = &v37 - v9;
  sub_1E68B1E40();
  v10 = sub_1E68B1E40();
  v56 = a4;
  v57 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1E67979F0();
  v54 = WitnessTable;
  v55 = v12;
  v13 = swift_getWitnessTable();
  v58 = v10;
  v59 = v13;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098AA0, &unk_1E68BE338);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  v38 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  v39 = sub_1E68B2C50();
  v58 = v10;
  v59 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v40 = sub_1E68B2CC0();
  v14 = sub_1E68B2220();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v37 - v22;
  v24 = v7;
  v37 = *(v7 + 56);
  v25 = v44;
  v26 = v42;
  v27 = v46;
  (*(v44 + 16))(v42, v46, v24, v21);
  v28 = (*(v25 + 80) + 48) & ~*(v25 + 80);
  v29 = swift_allocObject();
  v30 = v47;
  *(v29 + 2) = v45;
  *(v29 + 3) = v30;
  v31 = v48;
  *(v29 + 4) = v43;
  *(v29 + 5) = v31;
  (*(v25 + 32))(&v29[v28], v26, v24);
  v32 = sub_1E673F530(&qword_1ED098AD0, &qword_1ED098AA0, &unk_1E68BE338, v38);
  sub_1E6802458(v27 + v37, sub_1E6805180, v29, v24, v41, v32, v18);

  v33 = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v50 = v33;
  v51 = v34;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v35 = *(v15 + 8);
  v35(v18, v14);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v35)(v23, v14);
}

uint64_t sub_1E6801738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = a5;
  v68 = a1;
  v66 = a6;
  *&v70 = a2;
  *(&v70 + 1) = a3;
  *v71 = a4;
  *&v71[8] = a5;
  v10 = type metadata accessor for StandardHorizontalStackView(0, &v70);
  v53 = *(v10 - 8);
  v51[1] = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v52 = v51 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098AD8, &qword_1E68BE350);
  v63 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v13);
  v54 = v51 - v14;
  v15 = sub_1E68B3750();
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v59 = v51 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098AE0, &qword_1E68BE358);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v64 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v58 = v51 - v23;
  v65 = sub_1E68B21D0();
  v83 = 0;
  v55 = a2;
  v56 = a4;
  v24 = a2;
  v25 = v10;
  v57 = v6;
  sub_1E6801FF0(v68, v24, a3, a4, v6, &v70);
  v93 = *&v71[112];
  v94 = *&v71[128];
  v89 = *&v71[48];
  v90 = *&v71[64];
  v91 = *&v71[80];
  v92 = *&v71[96];
  v85 = v70;
  v86 = *v71;
  v87 = *&v71[16];
  v88 = *&v71[32];
  v96[8] = *&v71[112];
  v96[9] = *&v71[128];
  v96[4] = *&v71[48];
  v96[5] = *&v71[64];
  v96[6] = *&v71[80];
  v96[7] = *&v71[96];
  v96[0] = v70;
  v96[1] = *v71;
  v95 = v71[144];
  v97 = v71[144];
  v96[2] = *&v71[16];
  v96[3] = *&v71[32];
  sub_1E67612FC(&v85, v69, &qword_1ED098AE8, &qword_1E68BE360);
  sub_1E6744A10(v96, &qword_1ED098AE8, &qword_1E68BE360);
  *&v82[119] = v92;
  *&v82[135] = v93;
  *&v82[151] = v94;
  *&v82[55] = v88;
  *&v82[71] = v89;
  *&v82[87] = v90;
  *&v82[103] = v91;
  *&v82[7] = v85;
  *&v82[23] = v86;
  v82[167] = v95;
  *&v82[39] = v87;
  v62 = v83;
  sub_1E68B2E90();
  v26 = 1;
  sub_1E68B1F30();
  *(&v84[8] + 7) = *&v84[23];
  v27 = v68;
  *(&v84[10] + 7) = *&v84[25];
  *(&v84[12] + 7) = *&v84[27];
  *(&v84[6] + 7) = *&v84[21];
  *(v84 + 7) = *&v84[15];
  *(&v84[2] + 7) = *&v84[17];
  *(&v84[4] + 7) = *&v84[19];
  v28 = a3;
  v30 = v59;
  v29 = v60;
  v31 = v68 + *(v10 + 76);
  v32 = v61;
  (*(v60 + 16))(v59, v31, v61);
  LODWORD(v6) = (*(*(v28 - 8) + 48))(v30, 1, v28);
  (*(v29 + 8))(v30, v32);
  v33 = v58;
  if (v6 == 1 && *(v27 + *(v25 + 52) + 136) == 1)
  {
    v35 = v52;
    v34 = v53;
    (*(v53 + 16))(v52, v27, v25);
    v36 = (*(v34 + 80) + 48) & ~*(v34 + 80);
    v37 = swift_allocObject();
    v38 = v56;
    *(v37 + 2) = v55;
    *(v37 + 3) = v28;
    v39 = v57;
    *(v37 + 4) = v38;
    *(v37 + 5) = v39;
    (*(v34 + 32))(&v37[v36], v35, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED097F88, &qword_1E68B9538);
    sub_1E68055E8();
    v40 = v54;
    sub_1E68B2C20();
    *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098B18, &qword_1E68BE390) + 36)) = 0;
    v41 = sub_1E68B2B50();
    KeyPath = swift_getKeyPath();
    v43 = (v40 + *(v67 + 36));
    *v43 = KeyPath;
    v43[1] = v41;
    sub_1E6761420(v40, v33, &qword_1ED098AD8, &qword_1E68BE350);
    v26 = 0;
  }

  (*(v63 + 56))(v33, v26, 1, v67);
  v44 = v64;
  sub_1E67612FC(v33, v64, &qword_1ED098AE0, &qword_1E68BE358);
  *(&v69[16] + 1) = *&v82[112];
  *(&v69[18] + 1) = *&v82[128];
  *(&v69[20] + 1) = *&v82[144];
  *(&v69[8] + 1) = *&v82[48];
  *(&v69[10] + 1) = *&v82[64];
  *(&v69[12] + 1) = *&v82[80];
  *(&v69[14] + 1) = *&v82[96];
  *(&v69[2] + 1) = *v82;
  *(&v69[4] + 1) = *&v82[16];
  *(&v69[6] + 1) = *&v82[32];
  *(&v69[33] + 1) = *&v84[10];
  *(&v69[35] + 1) = *&v84[12];
  *(&v69[31] + 1) = *&v84[8];
  *(&v69[23] + 1) = *v84;
  *(&v69[25] + 1) = *&v84[2];
  *(&v69[27] + 1) = *&v84[4];
  v45 = v65;
  v69[0] = v65;
  v69[1] = 0;
  v46 = v62;
  LOBYTE(v69[2]) = v62;
  *(&v69[22] + 1) = *&v82[160];
  v69[37] = *(&v84[13] + 7);
  *(&v69[29] + 1) = *&v84[6];
  LOBYTE(v69[38]) = 0;
  v47 = v33;
  v48 = v66;
  memcpy(v66, v69, 0x131uLL);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098AF0, &qword_1E68BE368);
  sub_1E67612FC(v44, v48 + *(v49 + 48), &qword_1ED098AE0, &qword_1E68BE358);
  sub_1E67612FC(v69, &v70, &qword_1ED098AF8, &unk_1E68BE370);
  sub_1E6744A10(v47, &qword_1ED098AE0, &qword_1E68BE358);
  sub_1E6744A10(v44, &qword_1ED098AE0, &qword_1E68BE358);
  *&v71[113] = *&v82[112];
  *&v71[129] = *&v82[128];
  v72 = *&v82[144];
  *&v71[49] = *&v82[48];
  *&v71[65] = *&v82[64];
  *&v71[81] = *&v82[80];
  *&v71[97] = *&v82[96];
  *&v71[1] = *v82;
  *&v71[17] = *&v82[16];
  *&v71[33] = *&v82[32];
  v79 = *&v84[10];
  *v80 = *&v84[12];
  v78 = *&v84[8];
  v74 = *v84;
  v75 = *&v84[2];
  v76 = *&v84[4];
  v70 = v45;
  v71[0] = v46;
  v73 = *&v82[160];
  *&v80[15] = *(&v84[13] + 7);
  v77 = *&v84[6];
  v81 = 0;
  return sub_1E6744A10(&v70, &qword_1ED098AF8, &unk_1E68BE370);
}

uint64_t sub_1E6801FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53[0] = a2;
  v53[1] = a3;
  v53[2] = a4;
  v53[3] = a5;
  v8 = type metadata accessor for StandardHorizontalStackView(0, v53);
  v9 = v8;
  v10 = (a1 + *(v8 + 68));
  v11 = v10[1];
  v12 = v10[2];
  v49 = v10[3];
  v44 = *v10;
  if (v49)
  {
    v52 = *(a1 + *(v8 + 52) + 120);
    v50 = *v10;
    KeyPath = swift_getKeyPath();
    v13 = v12 & 1;
    v14 = v11;
  }

  else
  {
    v50 = 0;
    KeyPath = 0;
    v14 = 0;
    v13 = 0;
    v52 = 0;
  }

  v15 = (a1 + v9[15]);
  v17 = *v15;
  v16 = v15[1];
  v18 = v15[2];
  v47 = v15[3];
  v39 = v16;
  v40 = *v15;
  v38 = v18;
  if (v47)
  {
    v45 = *(a1 + v9[13] + 104);
    v48 = swift_getKeyPath();
    v41 = v18 & 1;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v41 = 0;
    v48 = 0;
    v45 = 0;
  }

  v42 = v12;
  v43 = v11;
  v19 = (a1 + v9[16]);
  v20 = *v19;
  v21 = v19[2];
  v22 = v19[3];
  v36 = v19[1];
  v37 = v21;
  v35 = *v19;
  if (v22)
  {
    v23 = *(a1 + v9[13] + 112);
    v24 = v19[1];
    v25 = v21;
    v26 = swift_getKeyPath();
    v27 = v25 & 1;
    v28 = v20;
    v29 = v24;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v26 = 0;
    v23 = 0;
  }

  v33 = v28;
  v34 = v26;
  *a6 = v50;
  *(a6 + 8) = v14;
  v46 = v14;
  *(a6 + 16) = v13;
  *(a6 + 24) = v49;
  *(a6 + 32) = KeyPath;
  *(a6 + 40) = v52;
  *(a6 + 48) = 0;
  *(a6 + 56) = v17;
  *(a6 + 64) = v16;
  *(a6 + 72) = v41;
  *(a6 + 80) = v47;
  *(a6 + 88) = v48;
  *(a6 + 96) = v45;
  *(a6 + 104) = 0;
  *(a6 + 112) = v28;
  *(a6 + 120) = v29;
  *(a6 + 128) = v27;
  *(a6 + 136) = v22;
  *(a6 + 144) = v26;
  *(a6 + 152) = v23;
  *(a6 + 160) = 0;
  v30 = v29;
  v31 = v27;
  sub_1E673F228(v44, v43, v42, v49);
  sub_1E673F228(v40, v39, v38, v47);
  sub_1E673F228(v35, v36, v37, v22);
  sub_1E677EFE4(v50, v46, v13, v49, KeyPath);
  sub_1E677EFE4(v17, v16, v41, v47, v48);
  sub_1E677EFE4(v33, v30, v31, v22, v34);
  sub_1E677F034(v33, v30, v31, v22, v34);
  sub_1E677F034(v17, v16, v41, v47, v48);
  return sub_1E677F034(v50, v46, v13, v49, KeyPath);
}

uint64_t sub_1E68022E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v5 = a1 + *(type metadata accessor for StandardHorizontalStackView(0, v10) + 80);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;

  sub_1E677A174(v6);
}

double sub_1E680236C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1E68B2BA0();
  v3 = sub_1E68B2620();
  KeyPath = swift_getKeyPath();
  sub_1E68B2EA0();
  sub_1E68B1F30();
  *(a1 + 72) = v9;
  *(a1 + 88) = v10;
  *(a1 + 104) = v11;
  *(a1 + 120) = v12;
  result = *&v6;
  *(a1 + 24) = v6;
  *(a1 + 40) = v7;
  *a1 = v2;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v3;
  *(a1 + 56) = v8;
  return result;
}

uint64_t sub_1E6802458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v86 = a6;
  v87 = a2;
  v88 = a3;
  v89 = a7;
  v85 = a1;
  v82 = *(a4 + 16);
  sub_1E68B1E40();
  v10 = sub_1E68B1E40();
  v84 = a4;
  v81 = *(a4 + 32);
  v98 = v81;
  v99 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v97 = sub_1E67979F0();
  v11 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  v94 = v10;
  v95 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getTupleTypeMetadata2();
  v74 = sub_1E68B2F00();
  v73 = swift_getWitnessTable();
  v12 = sub_1E68B2CC0();
  v77 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v76 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v75 = v70 - v17;
  v83 = a5;
  swift_getTupleTypeMetadata2();
  v18 = sub_1E68B2F00();
  v19 = swift_getWitnessTable();
  v70[1] = v18;
  v70[0] = v19;
  v20 = sub_1E68B2C50();
  v72 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v71 = v70 - v26;
  v27 = sub_1E68B1DE0();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = v70 - v34;
  v36 = sub_1E68B2220();
  v79 = *(v36 - 8);
  v80 = v36;
  MEMORY[0x1EEE9AC00](v36, v37);
  v78 = v70 - v38;
  sub_1E677A200(v35);
  (*(v28 + 104))(v31, *MEMORY[0x1E697E6C0], v27);
  LOBYTE(a5) = sub_1E68B1DD0();
  v39 = *(v28 + 8);
  v39(v31, v27);
  v40 = (v39)(v35, v27);
  if (a5)
  {
    MEMORY[0x1EEE9AC00](v40, v41);
    v43 = *(v42 + 24);
    v70[-10] = v82;
    v70[-9] = v43;
    v44 = v81;
    v70[-8] = v83;
    v70[-7] = v44;
    v45 = v85;
    v46 = v86;
    v70[-6] = *(v42 + 40);
    v70[-5] = v46;
    v70[-4] = v45;
    v70[-3] = v7;
    v47 = v88;
    v70[-2] = v87;
    v70[-1] = v47;
    sub_1E68B2140();
    sub_1E68B2C40();
    v48 = swift_getWitnessTable();
    v49 = v71;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v50 = *(v72 + 8);
    v50(v23, v20);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v51 = swift_getWitnessTable();
    v52 = v78;
    sub_1E6744CC0(v23, v20, v12, v48, v51);
    v50(v23, v20);
    v53 = v49;
    v54 = v20;
  }

  else
  {
    v55 = sub_1E68B21D0();
    MEMORY[0x1EEE9AC00](v55, *(v7 + *(v84 + 52) + 32));
    v57 = *(v56 + 24);
    v70[-10] = v82;
    v70[-9] = v57;
    v58 = v81;
    v70[-8] = v83;
    v70[-7] = v58;
    v59 = v85;
    v60 = v86;
    v70[-6] = *(v56 + 40);
    v70[-5] = v60;
    v70[-4] = v7;
    v70[-3] = v59;
    v61 = v88;
    v70[-2] = v87;
    v70[-1] = v61;
    v62 = v76;
    sub_1E68B2CB0();
    v63 = swift_getWitnessTable();
    v64 = v75;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v50 = *(v77 + 8);
    v50(v62, v12);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v65 = swift_getWitnessTable();
    v52 = v78;
    sub_1E6744DB8(v62, v20, v12, v65, v63);
    v50(v62, v12);
    v53 = v64;
    v54 = v12;
  }

  v50(v53, v54);
  v66 = swift_getWitnessTable();
  v67 = swift_getWitnessTable();
  v90 = v66;
  v91 = v67;
  v68 = v80;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (*(v79 + 8))(v52, v68);
}

uint64_t sub_1E6802CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v62 = a6;
  v71 = a4;
  v72 = a3;
  v63 = a2;
  v64 = a1;
  v76 = a9;
  v77 = a7;
  v73 = *(a7 - 8);
  v60 = a10;
  MEMORY[0x1EEE9AC00](a1, a2);
  v75 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v74 = &v59 - v16;
  v17 = sub_1E68B1E40();
  v59 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v59 - v19;
  v21 = sub_1E68B1E40();
  v61 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v59 - v23;
  v88 = a8;
  v89 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v26 = sub_1E67979F0();
  v86 = WitnessTable;
  v87 = v26;
  v27 = swift_getWitnessTable();
  v82 = v21;
  v83 = v27;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, OpaqueTypeMetadata2);
  v30 = &v59 - v29;
  v67 = v31;
  v69 = sub_1E68B1E40();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v32);
  v70 = &v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v65 = &v59 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v78 = &v59 - v39;
  v82 = a5;
  v83 = v62;
  v84 = a8;
  v85 = v60;
  v40 = type metadata accessor for StandardHorizontalStackView(0, &v82);
  v41 = v63 + *(v40 + 52);
  sub_1E68B2780();
  View.artworkClipShape(_:)(*(v41 + 16), *(v41 + 24), v17);
  (*(v59 + 8))(v20, v17);
  sub_1E68B24B0();
  sub_1E68B2E80();
  sub_1E68B2960();
  (*(v61 + 8))(v24, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097968, &qword_1E68C63B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E68B77B0;
  LOBYTE(v24) = sub_1E68B2510();
  *(inited + 32) = v24;
  v43 = sub_1E68B2520();
  *(inited + 33) = v43;
  sub_1E68B2540();
  sub_1E68B2540();
  if (sub_1E68B2540() != v24)
  {
    sub_1E68B2540();
  }

  v64 = a11;

  sub_1E68B2540();
  if (sub_1E68B2540() != v43)
  {
    sub_1E68B2540();
  }

  v82 = v21;
  v83 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v65;
  v46 = v67;
  sub_1E68B2A70();
  (*(v66 + 8))(v30, v46);
  v81[2] = OpaqueTypeConformance2;
  v81[3] = MEMORY[0x1E697E5D8];
  v47 = v69;
  v66 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v48 = v68;
  v67 = *(v68 + 8);
  v49 = v67(v45, v47);
  v50 = v75;
  v72(v49);
  v51 = v74;
  v52 = v77;
  v53 = v64;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v54 = v73;
  v72 = *(v73 + 8);
  (v72)(v50, v52);
  v55 = v70;
  (*(v48 + 16))(v70, v78, v47);
  v82 = v55;
  (*(v54 + 16))(v50, v51, v52);
  v83 = v50;
  v81[0] = v47;
  v81[1] = v52;
  v79 = v66;
  v80 = v53;
  sub_1E6848F14(&v82, 2uLL, v81);
  v56 = v72;
  (v72)(v51, v52);
  v57 = v67;
  v67(v78, v47);
  (v56)(v50, v52);
  return v57(v55, v47);
}

uint64_t sub_1E68034D8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void)@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v47 = a7;
  v53 = a4;
  v54 = a3;
  v49 = a2;
  v48 = a1;
  v55 = a9;
  v52 = *(a7 - 8);
  v56 = a11;
  MEMORY[0x1EEE9AC00](a1, a2);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v51 = &v43 - v17;
  sub_1E68B1E40();
  v18 = sub_1E68B1E40();
  v76 = a8;
  v77 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1E67979F0();
  v74 = WitnessTable;
  v75 = v20;
  v21 = swift_getWitnessTable();
  v68 = v18;
  v69 = v21;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  v68 = v18;
  v69 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v22 = sub_1E68B2C50();
  v46 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v45 = &v43 - v28;
  v68 = a5;
  v69 = a6;
  v70 = a8;
  v71 = a10;
  type metadata accessor for StandardHorizontalStackView(0, &v68);
  v57 = a5;
  v58 = a6;
  v29 = v47;
  v59 = v47;
  v60 = a8;
  v61 = a10;
  v62 = v56;
  v63 = v49;
  v64 = v48;
  sub_1E68B2140();
  v44 = v25;
  sub_1E68B2C40();
  v48 = swift_getWitnessTable();
  v30 = v45;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v31 = v46;
  v49 = *(v46 + 8);
  v32 = v49(v25, v22);
  v33 = v50;
  v54(v32);
  v34 = v51;
  v35 = v29;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v36 = v52;
  v37 = *(v52 + 8);
  v37(v33, v35);
  v38 = *(v31 + 16);
  v39 = v44;
  v38(v44, v30, v22);
  v68 = v39;
  (*(v36 + 16))(v33, v34, v35);
  v69 = v33;
  v67[0] = v22;
  v67[1] = v35;
  v65 = v48;
  v66 = v56;
  sub_1E6848F14(&v68, 2uLL, v67);
  v37(v34, v35);
  v40 = v30;
  v41 = v49;
  v49(v40, v22);
  v37(v33, v35);
  return v41(v39, v22);
}

uint64_t sub_1E68039FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v44 = a6;
  v43 = a4;
  v46 = a1;
  v53 = a7;
  v10 = sub_1E68B1E40();
  v45 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v42 - v12;
  v14 = sub_1E68B1E40();
  v47 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v42 - v16;
  v62 = a5;
  v63 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v42 = WitnessTable;
  v19 = sub_1E67979F0();
  v60 = WitnessTable;
  v61 = v19;
  v20 = swift_getWitnessTable();
  v56 = v14;
  v57 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v50 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, OpaqueTypeMetadata2);
  v23 = &v42 - v22;
  v51 = v24;
  v25 = sub_1E68B1E40();
  v52 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v48 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v49 = &v42 - v30;
  v56 = a3;
  v57 = v43;
  v58 = a5;
  v59 = v44;
  v31 = a2 + *(type metadata accessor for StandardHorizontalStackView(0, &v56) + 52);
  v32 = v14;
  sub_1E68B2780();
  View.artworkClipShape(_:)(*(v31 + 16), *(v31 + 24), v10);
  (*(v45 + 8))(v13, v10);
  v33 = v20;
  sub_1E68B24B0();
  sub_1E68B2E80();
  sub_1E68B2960();
  (*(v47 + 8))(v17, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097968, &qword_1E68C63B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E68B77B0;
  LOBYTE(v20) = sub_1E68B2510();
  *(inited + 32) = v20;
  v35 = sub_1E68B2520();
  *(inited + 33) = v35;
  sub_1E68B2540();
  sub_1E68B2540();
  if (sub_1E68B2540() != v20)
  {
    sub_1E68B2540();
  }

  sub_1E68B2540();
  if (sub_1E68B2540() != v35)
  {
    sub_1E68B2540();
  }

  v56 = v32;
  v57 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v48;
  v38 = v51;
  sub_1E68B2A70();
  (*(v50 + 8))(v23, v38);
  v54 = OpaqueTypeConformance2;
  v55 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v39 = v49;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v40 = *(v52 + 8);
  v40(v37, v25);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v40)(v39, v25);
}

uint64_t sub_1E6803FBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E68B2040();
  *a1 = result;
  return result;
}

BOOL _s15FitnessCanvasUI33StandardHorizontalStackViewLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return result;
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 48);
  v6.f64[0] = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  v11 = *(a1 + 104);
  v10 = *(a1 + 112);
  v12 = *(a1 + 120);
  v13.f64[0] = *(a1 + 128);
  v14 = *(a1 + 136);
  v16 = *(a1 + 144);
  v15 = *(a1 + 152);
  v17 = *(a2 + 24);
  v19 = *(a2 + 32);
  v18 = *(a2 + 48);
  v20.f64[0] = *(a2 + 64);
  v21 = *(a2 + 72);
  v22 = *(a2 + 88);
  v23 = *(a2 + 96);
  v24 = *(a2 + 104);
  v25 = *(a2 + 112);
  v26 = *(a2 + 120);
  v27.f64[0] = *(a2 + 128);
  if (*(a1 + 24))
  {
    result = 0;
    v28 = vmovn_s64(vceqq_f64(v5, v19));
    v6.f64[1] = *(a1 + 80);
    v20.f64[1] = *(a2 + 80);
    v29 = vmovn_s32(vuzp1q_s32(vceqq_f64(v4, v18), vceqq_f64(v6, v20)));
    v29.i16[0] = vminv_u16(v29);
    v30 = v29.i32[0] & v28.i32[1] & (v13.f64[0] == v27.f64[0]);
    if (v16 != *(a2 + 144))
    {
      v30 = 0;
    }

    v31 = v9 ^ v23 ^ 1;
    if (v7 != v21 || v8 != v22 || v11 != v24)
    {
      v30 = 0;
    }

    v34 = (v12 == v26) & v31;
    if (v10 != v25)
    {
      v30 = 0;
    }

    if ((v30 & v34 & v17) != 1 || (v28.i8[0] & 1) == 0)
    {
      return result;
    }

LABEL_32:
    if (((v14 ^ *(a2 + 136)) & 1) == 0)
    {
      return v15 == *(a2 + 152);
    }

    return result;
  }

  result = 0;
  v35 = *(a1 + 16);
  v6.f64[1] = *(a1 + 80);
  v13.f64[1] = *(a1 + 144);
  v20.f64[1] = *(a2 + 80);
  v27.f64[1] = *(a2 + 144);
  v36 = vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v5, v19), vceqq_f64(v4, v18)), vuzp1q_s32(vceqq_f64(v6, v20), vceqq_f64(v13, v27))))) & (v7 == v21);
  if (v35 != *(a2 + 16))
  {
    v36 = 0;
  }

  if (v8 != v22)
  {
    v36 = 0;
  }

  if (v11 != v24 || v10 != v25)
  {
    v36 = 0;
  }

  v38 = v36 & ~v17;
  if (v12 != v26)
  {
    v38 = 0;
  }

  if (v9 == v23 && v38)
  {
    goto LABEL_32;
  }

  return result;
}

unint64_t sub_1E68041C8()
{
  result = qword_1ED098A48;
  if (!qword_1ED098A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098A48);
  }

  return result;
}

unint64_t sub_1E680421C()
{
  result = qword_1EE2EBC28;
  if (!qword_1EE2EBC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBC28);
  }

  return result;
}

unint64_t sub_1E6804270()
{
  result = qword_1EE2EC870;
  if (!qword_1EE2EC870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC870);
  }

  return result;
}

unint64_t sub_1E68042C4()
{
  result = qword_1ED098A58;
  if (!qword_1ED098A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098A58);
  }

  return result;
}

unint64_t sub_1E6804318()
{
  result = qword_1ED098A60;
  if (!qword_1ED098A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098A60);
  }

  return result;
}

unint64_t sub_1E6804370()
{
  result = qword_1ED098A68;
  if (!qword_1ED098A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098A68);
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1E68043F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 160))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 96);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E6804444(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 96) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StandardHorizontalStackViewLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StandardHorizontalStackViewLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1E6804618(uint64_t a1)
{
  sub_1E674828C(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1E673ED38();
      if (v3 <= 0x3F)
      {
        sub_1E68B3750();
        if (v4 <= 0x3F)
        {
          sub_1E673ED88(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E68046F8(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1E68B1DE0() - 8) + 64);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  if (v6 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v6;
  }

  v10 = *(v8 + 84);
  v11 = *(*(a3 + 24) - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = *(v11 + 80);
  v16 = *(v11 + 64);
  if (v12)
  {
    v17 = v12 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v10 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(v8 + 84);
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  if (!v12)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v14 + 7;
  v20 = v15 + 32;
  v21 = v16 + 7;
  if (v18 < a2)
  {
    v22 = ((v21 + ((v20 + ((((((((v19 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v13 + 168) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v23 = v22 & 0xFFFFFFF8;
    if ((v22 & 0xFFFFFFF8) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = a2 - v18 + 1;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *(a1 + v22);
        if (v27)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v27 = *(a1 + v22);
        if (v27)
        {
          goto LABEL_30;
        }
      }
    }

    else if (v26)
    {
      v27 = *(a1 + v22);
      if (v27)
      {
LABEL_30:
        v28 = v27 - 1;
        if (v23)
        {
          v28 = 0;
          v29 = *a1;
        }

        else
        {
          v29 = 0;
        }

        return v18 + (v29 | v28) + 1;
      }
    }
  }

  v30 = (((a1 + v9 + 8) & 0xFFFFFFFFFFFFFFF8) + v13 + 160) & ~v13;
  if (v10 == v18)
  {
    v31 = *(*(*(a3 + 16) - 8) + 48);

    return v31(v30, v10, v7);
  }

  v33 = (v20 + ((((((((v19 + v30) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
  if (v17 == v18)
  {
    if (v12 >= 2)
    {
      v35 = (*(v11 + 48))(v33);
      if (v35 >= 2)
      {
        return v35 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v34 = *((v21 + v33) & 0xFFFFFFFFFFFFFFF8);
  if (v34 >= 0xFFFFFFFF)
  {
    LODWORD(v34) = -1;
  }

  return (v34 + 1);
}

void sub_1E68049CC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(*(sub_1E68B1DE0() - 8) + 64);
  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(*(a4 + 24) - 8);
  v15 = *(v14 + 84);
  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  v18 = *(v14 + 80);
  v19 = *(v14 + 64);
  if (v15)
  {
    v20 = v15 - 1;
  }

  else
  {
    v20 = 0;
  }

  if (v13 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = *(v12 + 84);
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  v22 = v17 + 7;
  v23 = (v18 + 32 + ((((((((v17 + 7 + (((v10 & 0xFFFFFFFFFFFFFFF8) + v16 + 168) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v18;
  if (!v15)
  {
    ++v19;
  }

  v24 = v19 + 7;
  v25 = ((v24 + v23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v21 < a3)
  {
    if (((v24 + v23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v26 = a3 - v21 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v8 = v27;
    }

    else
    {
      v8 = 0;
    }
  }

  if (a2 > v21)
  {
    if (v25)
    {
      v28 = 1;
    }

    else
    {
      v28 = a2 - v21;
    }

    if (v25)
    {
      v29 = ~v21 + a2;
      bzero(a1, v25);
      *a1 = v29;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(a1 + v25) = v28;
      }

      else
      {
        *(a1 + v25) = v28;
      }
    }

    else if (v8)
    {
      *(a1 + v25) = v28;
    }

    return;
  }

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *(a1 + v25) = 0;
  }

  else if (v8)
  {
    *(a1 + v25) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    return;
  }

LABEL_44:
  v30 = (((a1 + v10 + 8) & 0xFFFFFFFFFFFFFFF8) + v16 + 160) & ~v16;
  if (v13 == v21)
  {
    v31 = *(v12 + 56);

    v31(v30, a2, v13, v11);
  }

  else
  {
    v32 = (v18 + 32 + ((((((((v22 + v30) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v18;
    if (v20 == v21)
    {
      v33 = *(v14 + 56);

      v33(v32, (a2 + 1));
    }

    else
    {
      v34 = ((v24 + v32) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v34 = a2 & 0x7FFFFFFF;
        v34[1] = 0;
      }

      else
      {
        *v34 = (a2 - 1);
      }
    }
  }
}

unint64_t sub_1E6804D08()
{
  result = qword_1ED098A70;
  if (!qword_1ED098A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098A70);
  }

  return result;
}

unint64_t sub_1E6804D60()
{
  result = qword_1ED098A78;
  if (!qword_1ED098A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098A78);
  }

  return result;
}

unint64_t sub_1E6804DB8()
{
  result = qword_1ED098A80;
  if (!qword_1ED098A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098A80);
  }

  return result;
}

unint64_t sub_1E6804E68()
{
  result = qword_1ED098AA8;
  if (!qword_1ED098AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098A98, &qword_1E68BE330);
    sub_1E6804EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098AA8);
  }

  return result;
}

unint64_t sub_1E6804EEC()
{
  result = qword_1ED098AB0;
  if (!qword_1ED098AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098A90, &qword_1E68BE328);
    sub_1E6804FA8();
    sub_1E68050F0(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098AB0);
  }

  return result;
}

unint64_t sub_1E6804FA8()
{
  result = qword_1ED098AB8;
  if (!qword_1ED098AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098A88, &qword_1E68BE320);
    sub_1E6805034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098AB8);
  }

  return result;
}

unint64_t sub_1E6805034()
{
  result = qword_1ED098AC0;
  if (!qword_1ED098AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098AC8, &qword_1E68BE348);
    sub_1E68050F0(&qword_1EE2EA4E8, MEMORY[0x1E697D6D0], MEMORY[0x1E697D6C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098AC0);
  }

  return result;
}

uint64_t sub_1E68050F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6805180@<X0>(void *a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for StandardHorizontalStackView(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1E6801738(v8, v3, v4, v5, v6, a1);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v15 = v1;
  v14 = *(v0 + 24);
  v16 = v14;
  v17 = v2;
  v3 = type metadata accessor for StandardHorizontalStackView(0, &v15);
  v4 = (*(*(v3 - 1) + 80) + 48) & ~*(*(v3 - 1) + 80);
  v5 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8, &qword_1E68B4950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1E68B1DE0();
    (*(*(v6 - 8) + 8))(v0 + v4, v6);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v5 + v3[14], v1);
  v7 = v5 + v3[15];
  if (*(v7 + 24))
  {
    sub_1E673F0D4(*v7, *(v7 + 8), *(v7 + 16));
  }

  v8 = v5 + v3[16];
  if (*(v8 + 24))
  {
    sub_1E673F0D4(*v8, *(v8 + 8), *(v8 + 16));
  }

  v9 = v5 + v3[17];
  if (*(v9 + 24))
  {
    sub_1E673F0D4(*v9, *(v9 + 8), *(v9 + 16));
  }

  v10 = v5 + v3[18];
  if (*(v10 + 24))
  {
    sub_1E673F0D4(*v10, *(v10 + 8), *(v10 + 16));
  }

  v11 = v3[19];
  v12 = *(v14 - 8);
  if (!(*(v12 + 48))(v5 + v11, 1, v14))
  {
    (*(v12 + 8))(v5 + v11, v14);
  }

  return swift_deallocObject();
}

uint64_t sub_1E6805550()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v7[0] = v0[2];
  v1 = v7[0];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = v4;
  v5 = *(type metadata accessor for StandardHorizontalStackView(0, v7) - 8);
  return sub_1E68022E4(v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80)), v1, v2, v3, v4);
}

unint64_t sub_1E68055E8()
{
  result = qword_1ED098B00;
  if (!qword_1ED098B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ED097F88, &qword_1E68B9538);
    sub_1E6805674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098B00);
  }

  return result;
}

unint64_t sub_1E6805674()
{
  result = qword_1ED098B08;
  if (!qword_1ED098B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098B10, &unk_1E68BE380);
    sub_1E673F530(&qword_1EE2EA5B0, &qword_1ED0981D8, &qword_1E68BB6E8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098B08);
  }

  return result;
}

uint64_t sub_1E680572C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001E68E2580 == a2;
  if (v3 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2CC0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E68E2CE0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEE00797469736E65 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2D00 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E694C656C746974 && a2 == 0xEE0074696D694C65 || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E68E2BA0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2BC0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x486B726F77747261 && a2 == 0xED00007468676965 || (sub_1E68B3B00() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x76656843776F6873 && a2 == 0xEB000000006E6F72 || (sub_1E68B3B00() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2D20 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E68E2D40 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

__n128 CanvasItemPlaceholder.content.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 52);
  v4 = *(v3 + 208);
  *(a2 + 192) = *(v3 + 192);
  *(a2 + 208) = v4;
  *(a2 + 224) = *(v3 + 224);
  *(a2 + 233) = *(v3 + 233);
  v5 = *(v3 + 144);
  *(a2 + 128) = *(v3 + 128);
  *(a2 + 144) = v5;
  v6 = *(v3 + 176);
  *(a2 + 160) = *(v3 + 160);
  *(a2 + 176) = v6;
  v7 = *(v3 + 80);
  *(a2 + 64) = *(v3 + 64);
  *(a2 + 80) = v7;
  v8 = *(v3 + 112);
  *(a2 + 96) = *(v3 + 96);
  *(a2 + 112) = v8;
  v9 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v9;
  result = *(v3 + 32);
  v11 = *(v3 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v11;
  return result;
}

__n128 CanvasItemPlaceholder.init(identifier:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v22[0] = a3;
  v22[1] = a4;
  v22[2] = a5;
  v22[3] = a6;
  v13 = a7 + *(type metadata accessor for CanvasItemPlaceholder(0, v22) + 52);
  v14 = *(a2 + 208);
  *(v13 + 192) = *(a2 + 192);
  *(v13 + 208) = v14;
  *(v13 + 224) = *(a2 + 224);
  *(v13 + 233) = *(a2 + 233);
  v15 = *(a2 + 144);
  *(v13 + 128) = *(a2 + 128);
  *(v13 + 144) = v15;
  v16 = *(a2 + 176);
  *(v13 + 160) = *(a2 + 160);
  *(v13 + 176) = v16;
  v17 = *(a2 + 80);
  *(v13 + 64) = *(a2 + 64);
  *(v13 + 80) = v17;
  v18 = *(a2 + 112);
  *(v13 + 96) = *(a2 + 96);
  *(v13 + 112) = v18;
  v19 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v19;
  result = *(a2 + 32);
  v21 = *(a2 + 48);
  *(v13 + 32) = result;
  *(v13 + 48) = v21;
  return result;
}

uint64_t sub_1E6805CE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E6805DBC(char a1)
{
  if (a1)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1E6805E38(uint64_t a1)
{
  sub_1E68B3B70();
  sub_1E672A420(v3, *v1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6805E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6805CE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6805ECC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E67634C8();
  *a1 = result;
  return result;
}

uint64_t sub_1E6805F00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6805F54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasItemPlaceholder.encode(to:)(void *a1, uint64_t a2)
{
  v21[0] = a2;
  v3 = *(a2 + 16);
  v22 = *(a2 + 32);
  v23 = v3;
  v25 = v3;
  v26 = v22;
  type metadata accessor for CanvasItemPlaceholder.CodingKeys(255, &v25);
  swift_getWitnessTable();
  v4 = sub_1E68B3AC0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v4;
  v10 = v21[1];
  sub_1E68B3BD0();
  v40[0] = 0;
  v11 = v41;
  sub_1E68B3AB0();
  if (!v11)
  {
    v12 = (v10 + *(v21[0] + 52));
    v13 = v12[13];
    v37 = v12[12];
    v38 = v13;
    *v39 = v12[14];
    *&v39[9] = *(v12 + 233);
    v14 = v12[9];
    v33 = v12[8];
    v34 = v14;
    v15 = v12[11];
    v35 = v12[10];
    v36 = v15;
    v16 = v12[5];
    v29 = v12[4];
    v30 = v16;
    v17 = v12[7];
    v31 = v12[6];
    v32 = v17;
    v18 = v12[1];
    v25 = *v12;
    v26 = v18;
    v19 = v12[3];
    v27 = v12[2];
    v28 = v19;
    v24 = 1;
    sub_1E68061E0();
    sub_1E68B3AB0();
  }

  return (*(v5 + 8))(v8, v9);
}

unint64_t sub_1E68061E0()
{
  result = qword_1ED098B20;
  if (!qword_1ED098B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098B20);
  }

  return result;
}

uint64_t CanvasItemPlaceholder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a6;
  v43 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v51 = v12;
  *(&v51 + 1) = v13;
  *&v52 = v14;
  *(&v52 + 1) = v15;
  type metadata accessor for CanvasItemPlaceholder.CodingKeys(255, &v51);
  WitnessTable = swift_getWitnessTable();
  v45 = sub_1E68B3A20();
  v42 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v16);
  v18 = &v40 - v17;
  v47 = a2;
  *&v51 = a2;
  *(&v51 + 1) = a3;
  v44 = a3;
  *&v52 = a4;
  *(&v52 + 1) = a5;
  v19 = type metadata accessor for CanvasItemPlaceholder(0, &v51);
  v40 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v40 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v48 = v18;
  v23 = v66;
  sub_1E68B3BC0();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v42;
  v25 = v22;
  v66 = v19;
  v26 = v43;
  v27 = a1;
  LOBYTE(v51) = 0;
  v28 = v45;
  sub_1E68B3A00();
  (*(v26 + 32))(v25, v46, v47);
  v50 = 1;
  sub_1E680664C();
  sub_1E68B3A00();
  (*(v24 + 8))(v48, v28);
  v29 = v66;
  v30 = &v25[*(v66 + 52)];
  v31 = v64;
  *(v30 + 12) = v63;
  *(v30 + 13) = v31;
  *(v30 + 14) = v65[0];
  *(v30 + 233) = *(v65 + 9);
  v32 = v60;
  *(v30 + 8) = v59;
  *(v30 + 9) = v32;
  v33 = v62;
  *(v30 + 10) = v61;
  *(v30 + 11) = v33;
  v34 = v56;
  *(v30 + 4) = v55;
  *(v30 + 5) = v34;
  v35 = v58;
  *(v30 + 6) = v57;
  *(v30 + 7) = v35;
  v36 = v52;
  *v30 = v51;
  *(v30 + 1) = v36;
  v37 = v54;
  *(v30 + 2) = v53;
  *(v30 + 3) = v37;
  v38 = v40;
  (*(v40 + 16))(v41, v25, v29);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return (*(v38 + 8))(v25, v29);
}

unint64_t sub_1E680664C()
{
  result = qword_1ED098B28[0];
  if (!qword_1ED098B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED098B28);
  }

  return result;
}

uint64_t static CanvasItemPlaceholder.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1E68B3190())
  {
    *&v33 = a3;
    *(&v33 + 1) = a4;
    *&v34 = a5;
    *(&v34 + 1) = a6;
    v12 = type metadata accessor for CanvasItemPlaceholder(0, &v33);
    v13 = (a1 + *(v12 + 52));
    v14 = v13[13];
    v45 = v13[12];
    v46 = v14;
    v47[0] = v13[14];
    *(v47 + 9) = *(v13 + 233);
    v15 = v13[9];
    v41 = v13[8];
    v42 = v15;
    v16 = v13[11];
    v43 = v13[10];
    v44 = v16;
    v17 = v13[5];
    v37 = v13[4];
    v38 = v17;
    v18 = v13[7];
    v39 = v13[6];
    v40 = v18;
    v19 = v13[1];
    v33 = *v13;
    v34 = v19;
    v20 = v13[3];
    v35 = v13[2];
    v36 = v20;
    v21 = (a2 + *(v12 + 52));
    v22 = v21[13];
    v31[12] = v21[12];
    v31[13] = v22;
    *v32 = v21[14];
    *&v32[9] = *(v21 + 233);
    v23 = v21[9];
    v31[8] = v21[8];
    v31[9] = v23;
    v24 = v21[11];
    v31[10] = v21[10];
    v31[11] = v24;
    v25 = v21[5];
    v31[4] = v21[4];
    v31[5] = v25;
    v26 = v21[7];
    v31[6] = v21[6];
    v31[7] = v26;
    v27 = v21[1];
    v31[0] = *v21;
    v31[1] = v27;
    v28 = v21[3];
    v31[2] = v21[2];
    v31[3] = v28;
    v29 = _s15FitnessCanvasUI04LazyB11ItemContentO2eeoiySbAC_ACtFZ_0(&v33, v31);
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t CanvasItemPlaceholder.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  sub_1E68B3140();
  v3 = (v1 + *(a1 + 52));
  v4 = v3[13];
  v25 = v3[12];
  v26 = v4;
  v27[0] = v3[14];
  *(v27 + 9) = *(v3 + 233);
  v5 = v3[9];
  v21 = v3[8];
  v22 = v5;
  v6 = v3[11];
  v23 = v3[10];
  v24 = v6;
  v7 = v3[5];
  v17 = v3[4];
  v18 = v7;
  v8 = v3[7];
  v19 = v3[6];
  v20 = v8;
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v10 = v3[3];
  v15 = v3[2];
  v16 = v10;
  LazyCanvasItemContent.hash(into:)(v12);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6806964(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  CanvasItemPlaceholder.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E68069D4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E6806A4C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xF3)
  {
    v7 = 243;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 249;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xF3)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 248);
    if (v17 >= 0xD)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * (((v6 + 7) & 0xF8) - 7));
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double sub_1E6806B98(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xF3)
  {
    v8 = 243;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 249;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0xF3)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xF3)
        {
          result = 0.0;
          *(v19 + 233) = 0u;
          *(v19 + 208) = 0u;
          *(v19 + 224) = 0u;
          *(v19 + 176) = 0u;
          *(v19 + 192) = 0u;
          *(v19 + 144) = 0u;
          *(v19 + 160) = 0u;
          *(v19 + 112) = 0u;
          *(v19 + 128) = 0u;
          *(v19 + 80) = 0u;
          *(v19 + 96) = 0u;
          *(v19 + 48) = 0u;
          *(v19 + 64) = 0u;
          *(v19 + 16) = 0u;
          *(v19 + 32) = 0u;
          *v19 = 0u;
          *v19 = a2 - 244;
        }

        else
        {
          *(v19 + 248) = -a2;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 249);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

uint64_t sub_1E6806E08(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E6806E44(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t CanvasSectionViewDescriptor.header.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 164);
  v5 = *(a1 + 64);
  v6 = *(a1 + 80);
  v7 = *(a1 + 144);
  v10[0] = *(a1 + 16);
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  type metadata accessor for CanvasSectionHeader(255, v10);
  v8 = sub_1E68B3750();
  return (*(*(v8 - 8) + 16))(a2, v2 + v4, v8);
}

uint64_t CanvasSectionViewDescriptor.identifier.getter(uint64_t a1)
{
  v1 = sub_1E6730FE0(a1);

  return v1;
}

uint64_t CanvasSectionViewDescriptor.items.getter(uint64_t a1)
{
  sub_1E674B098(a1);
}

uint64_t CanvasSectionViewDescriptor.items.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 172);

  *(v2 + v4) = a1;
  return result;
}

uint64_t CanvasSectionViewDescriptor.metrics.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 176);
  v5 = sub_1E68B3750();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CanvasSectionViewDescriptor.init(identifier:header:footer:items:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v25 = *a4;
  v36 = a7;
  v37 = a8;
  v38 = a10;
  v39 = a11;
  v40 = a12;
  v41 = a13;
  v42 = a14;
  v43 = a15;
  v44 = a16;
  v45 = a17;
  v46 = a18;
  v47 = a19;
  v48 = a20;
  v49 = a21;
  v26 = type metadata accessor for CanvasSectionViewDescriptor(0, &v36);
  v27 = &a9[v26[42]];
  *v27 = a1;
  v27[1] = a2;
  v28 = v26[41];
  v36 = a7;
  v37 = a13;
  *&v38 = a15;
  *(&v38 + 1) = a20;
  type metadata accessor for CanvasSectionHeader(255, &v36);
  v29 = sub_1E68B3750();
  (*(*(v29 - 8) + 32))(&a9[v28], a3, v29);
  *a9 = v25;
  *&a9[v26[43]] = a5;
  v30 = v26[44];
  v31 = sub_1E68B3750();
  return (*(*(v31 - 8) + 32))(&a9[v30], a6, v31);
}

uint64_t sub_1E68071F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746F6F66 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E680739C(unsigned __int8 a1)
{
  v1 = 0x7265746F6F66;
  v2 = 0x696669746E656469;
  v3 = 0x736D657469;
  if (a1 != 3)
  {
    v3 = 0x7363697274656DLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x726564616568;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E680748C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E68071F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E68074EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6807540(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E6807594@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1E6730FE0(a1);
  a2[1] = v3;
}

uint64_t sub_1E68075D8(uint64_t a1)
{
  v1 = sub_1E6730FE0(a1);

  return v1;
}

uint64_t CanvasSectionViewDescriptor.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  v13 = *(a2 + 88);
  v14 = *(a2 + 96);
  v15 = *(a2 + 104);
  v16 = *(a2 + 112);
  v17 = *(a2 + 120);
  v18 = *(a2 + 128);
  v19 = *(a2 + 136);
  v21 = *(a2 + 144);
  v20 = *(a2 + 152);
  v47 = v4;
  v53 = v4;
  v54 = v5;
  v44 = v5;
  v43 = v6;
  v55 = v6;
  v56 = v7;
  v42 = v7;
  v41 = v8;
  v57 = v8;
  v58 = v9;
  v32[2] = v9;
  v46 = v10;
  v59 = v10;
  v60 = v11;
  v40 = v11;
  v48 = v12;
  v61 = v12;
  v62 = v13;
  v39 = v13;
  v38 = v14;
  v63 = v14;
  v64 = v15;
  v37 = v15;
  v36 = v16;
  v65 = v16;
  v66 = v17;
  v35 = v17;
  v34 = v18;
  v67 = v18;
  v68 = v19;
  v32[1] = v19;
  v45 = v21;
  v69 = v21;
  v70 = v20;
  v33 = v20;
  type metadata accessor for CanvasSectionViewDescriptor.CodingKeys(255, &v53);
  swift_getWitnessTable();
  v22 = sub_1E68B3AC0();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = v32 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = v49;
  sub_1E68B3BD0();
  LOBYTE(v53) = *v27;
  LOBYTE(v71) = 0;
  sub_1E674B0D4();
  v28 = v50;
  sub_1E68B3AB0();
  if (!v28)
  {
    v50 = v23;
    LOBYTE(v71) = 1;
    v30 = v47;
    v53 = v47;
    v54 = v46;
    v55 = v48;
    v56 = v45;
    type metadata accessor for CanvasSectionHeader(0, &v53);
    swift_getWitnessTable();
    sub_1E68B3A60();
    v31 = v30;
    LOBYTE(v53) = 2;
    sub_1E68B3A70();
    v23 = v50;
    v71 = *&v27[*(a2 + 172)];
    v52 = 3;
    v53 = v31;
    v54 = v44;
    v55 = v43;
    v56 = v42;
    v57 = v41;
    v58 = v40;
    v59 = v48;
    v60 = v39;
    v61 = v38;
    v62 = v37;
    v63 = v36;
    v64 = v35;
    v65 = v34;
    v66 = v33;
    type metadata accessor for CanvasItemDescriptor(255, &v53);
    sub_1E68B33B0();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1E68B3AB0();
    LOBYTE(v53) = 4;
    sub_1E68B3A60();
  }

  return (*(v23 + 8))(v26, v22);
}

uint64_t CanvasSectionViewDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20)
{
  v74 = a6;
  v79 = a5;
  v77 = a4;
  v76 = a1;
  v55 = a9;
  v81 = a17;
  v82 = a20;
  v75 = a16;
  v80 = a15;
  v78 = a14;
  v73 = a13;
  v72 = a12;
  v71 = a10;
  v70 = a18;
  v69 = a7;
  v54 = sub_1E68B3750();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v24);
  v56 = &v51 - v25;
  v84 = a2;
  v85 = a8;
  v65 = a8;
  v86 = a11;
  v87 = a19;
  v66 = a19;
  v62 = type metadata accessor for CanvasSectionHeader(255, &v84);
  v59 = sub_1E68B3750();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v26);
  v61 = &v51 - v27;
  v84 = a2;
  v85 = a3;
  v86 = v77;
  v87 = v79;
  v28 = v74;
  v88 = v74;
  v89 = a7;
  v90 = a8;
  v91 = a10;
  v92 = a11;
  v93 = a12;
  v29 = v73;
  v94 = v73;
  v95 = v78;
  v30 = v75;
  v96 = v80;
  v97 = v75;
  v31 = v70;
  v98 = v81;
  v99 = v70;
  v100 = a19;
  v101 = v82;
  type metadata accessor for CanvasSectionViewDescriptor.CodingKeys(255, &v84);
  WitnessTable = swift_getWitnessTable();
  v64 = sub_1E68B3A20();
  v60 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v32);
  v34 = &v51 - v33;
  v63 = a2;
  v84 = a2;
  v85 = a3;
  v57 = a3;
  v86 = v77;
  v87 = v79;
  v88 = v28;
  v89 = v69;
  v90 = v65;
  v91 = v71;
  v65 = a11;
  v92 = a11;
  v93 = v72;
  v94 = v29;
  v95 = v78;
  v96 = v80;
  v97 = v30;
  v35 = v76;
  v98 = v81;
  v99 = v31;
  v100 = v66;
  v101 = v82;
  v36 = type metadata accessor for CanvasSectionViewDescriptor(0, &v84);
  v52 = *(v36 - 1);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v51 - v38;
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v66 = v34;
  v40 = v68;
  sub_1E68B3BC0();
  if (v40)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v41 = v61;
  v42 = v63;
  v43 = v60;
  v68 = v39;
  LOBYTE(v102) = 0;
  sub_1E674B128();
  sub_1E68B3A00();
  v44 = v68;
  *v68 = v84;
  LOBYTE(v84) = 1;
  swift_getWitnessTable();
  sub_1E68B39B0();
  (*(v58 + 32))(&v44[v36[41]], v41, v59);
  LOBYTE(v84) = 2;
  v45 = sub_1E68B39C0();
  v46 = &v44[v36[42]];
  *v46 = v45;
  v46[1] = v47;
  v84 = v42;
  v85 = v57;
  v86 = v77;
  v87 = v79;
  v88 = v74;
  v89 = v71;
  v90 = v65;
  v91 = v72;
  v92 = v73;
  v93 = v78;
  v94 = v80;
  v95 = v75;
  v96 = v81;
  v97 = v82;
  type metadata accessor for CanvasItemDescriptor(255, &v84);
  sub_1E68B33B0();
  LOBYTE(v84) = 3;
  v83 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B3A00();
  *&v44[v36[43]] = v102;
  LOBYTE(v84) = 4;
  v48 = v56;
  sub_1E68B39B0();
  (*(v43 + 8))(v66, v64);
  (*(v53 + 32))(&v44[v36[44]], v48, v54);
  v49 = v52;
  (*(v52 + 16))(v55, v44, v36);
  __swift_destroy_boxed_opaque_existential_1(v76);
  return (*(v49 + 8))(v44, v36);
}

BOOL static CanvasSectionViewDescriptor.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v107 = a7;
  v106 = a6;
  v105 = a5;
  v104 = a4;
  v97 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v92 = v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E68B3750();
  v96 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v94 = v76 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v93 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v28);
  v95 = v76 - v29;
  v108 = a3;
  v110 = a3;
  v111 = a9;
  v102 = a9;
  v109 = a11;
  v112 = a11;
  v113 = a19;
  v103 = a19;
  v30 = type metadata accessor for CanvasSectionHeader(0, &v110);
  v100 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v99 = v76 - v32;
  v33 = sub_1E68B3750();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v101 = v76 - v36;
  v37 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v37, v38);
  v41 = v76 - v40;
  if (*a1 != *a2)
  {
    return 0;
  }

  v42 = a1;
  v43 = a2;
  v90 = v39;
  v77 = v25;
  v110 = v108;
  v111 = v104;
  v112 = v105;
  v113 = v106;
  v114 = v107;
  v115 = a8;
  v78 = a8;
  v116 = v102;
  v117 = a10;
  v79 = a10;
  v118 = v109;
  v119 = a12;
  v80 = a12;
  v81 = a13;
  v120 = a13;
  v121 = a14;
  v82 = a14;
  v83 = a15;
  v122 = a15;
  v123 = a16;
  v84 = a16;
  v85 = a17;
  v124 = a17;
  v125 = a18;
  v76[1] = a18;
  v126 = v103;
  v127 = a20;
  v86 = a20;
  v87 = type metadata accessor for CanvasSectionViewDescriptor(0, &v110);
  v44 = *(v87 + 164);
  v45 = *(v37 + 48);
  v91 = v34;
  v46 = *(v34 + 16);
  v88 = v42;
  v46(v41, &v42[v44], v33);
  v89 = v43;
  v46(&v41[v45], &v43[v44], v33);
  v47 = v100;
  v48 = *(v100 + 48);
  if (v48(v41, 1, v30) != 1)
  {
    v46(v101, v41, v33);
    if (v48(&v41[v45], 1, v30) != 1)
    {
      v52 = v99;
      (*(v47 + 32))(v99, &v41[v45], v30);
      v53 = v101;
      v50 = v108;
      v49 = v109;
      v54 = static CanvasSectionHeader.== infix(_:_:)(v101, v52, v108, v102, v109, v103);
      v55 = *(v47 + 8);
      v55(v52, v30);
      v55(v53, v30);
      (*(v91 + 8))(v41, v33);
      if (!v54)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v47 + 8))(v101, v30);
LABEL_7:
    (*(v90 + 8))(v41, v37);
    return 0;
  }

  if (v48(&v41[v45], 1, v30) != 1)
  {
    goto LABEL_7;
  }

  (*(v91 + 8))(v41, v33);
  v50 = v108;
  v49 = v109;
LABEL_11:
  v56 = v87;
  v57 = *(v87 + 168);
  v58 = v88;
  v59 = *&v88[v57];
  v60 = *&v88[v57 + 8];
  v61 = v89;
  v62 = &v89[v57];
  if ((v59 != *v62 || v60 != *(v62 + 1)) && (sub_1E68B3B00() & 1) == 0)
  {
    return 0;
  }

  v110 = v50;
  v111 = v104;
  v112 = v105;
  v113 = v106;
  v114 = v107;
  v115 = v79;
  v116 = v49;
  v117 = v80;
  v118 = v81;
  v119 = v82;
  v120 = v83;
  v121 = v84;
  v122 = v85;
  v123 = v86;
  type metadata accessor for CanvasItemDescriptor(0, &v110);
  swift_getWitnessTable();
  if ((sub_1E68B33D0() & 1) == 0)
  {
    return 0;
  }

  v63 = *(v56 + 176);
  v64 = *(TupleTypeMetadata2 + 48);
  v65 = v96;
  v66 = *(v96 + 16);
  v67 = v95;
  v68 = v77;
  v66(v95, &v58[v63], v77);
  v66(&v67[v64], &v61[v63], v68);
  v69 = v97;
  v70 = *(v97 + 48);
  v71 = v78;
  if (v70(v67, 1, v78) == 1)
  {
    if (v70(&v67[v64], 1, v71) == 1)
    {
      (*(v65 + 8))(v67, v68);
      return 1;
    }

    goto LABEL_20;
  }

  v66(v94, v67, v68);
  if (v70(&v67[v64], 1, v71) == 1)
  {
    (*(v69 + 8))(v94, v71);
LABEL_20:
    (*(v93 + 8))(v67, TupleTypeMetadata2);
    return 0;
  }

  v72 = v92;
  (*(v69 + 32))(v92, &v67[v64], v71);
  v73 = v94;
  v74 = sub_1E68B3190();
  v75 = *(v69 + 8);
  v75(v72, v71);
  v75(v73, v71);
  (*(v65 + 8))(v67, v68);
  return (v74 & 1) != 0;
}

uint64_t CanvasSectionViewDescriptor.hash(into:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69523D0](*v2);
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  v7 = *(a2 + 144);
  v11 = *(a2 + 16);
  v4 = v11;
  *&v12 = v5;
  *(&v12 + 1) = v6;
  *&v13 = v7;
  type metadata accessor for CanvasSectionHeader(255, &v11);
  sub_1E68B3750();
  swift_getWitnessTable();
  sub_1E68B3760();
  sub_1E68B31F0();
  v8 = *(a2 + 72);
  v9 = *(a2 + 152);
  v11 = v4;
  v12 = *(a2 + 24);
  v13 = *(a2 + 40);
  v14 = v8;
  v15 = v6;
  v16 = *(a2 + 88);
  v17 = *(a2 + 104);
  v18 = *(a2 + 120);
  v19 = v9;
  type metadata accessor for CanvasItemDescriptor(0, &v11);
  swift_getWitnessTable();
  sub_1E68B33C0();
  sub_1E68B3750();
  return sub_1E68B3760();
}

uint64_t CanvasSectionViewDescriptor.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  CanvasSectionViewDescriptor.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6808FE4(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  CanvasSectionViewDescriptor.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E68090AC(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_1E68091CC(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(sub_1E68B1820() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v54 = a3[8];
  v8 = *(v54 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v53 = a3[2];
  v11 = *(v53 - 8);
  if (v10 <= v7)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = v10;
  }

  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a3[7] - 8);
  v18 = v17;
  v19 = *(v17 + 84);
  v20 = v19 - 1;
  if (!v19)
  {
    v20 = 0;
  }

  if (v16 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v16;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  if (v9)
  {
    v23 = *(v8 + 64);
  }

  else
  {
    v23 = *(v8 + 64) + 1;
  }

  if (v13)
  {
    v24 = v15 == 0;
  }

  else
  {
    v24 = (v15 == 0) + 1;
  }

  v25 = *(v8 + 80);
  v26 = *(v11 + 80);
  v27 = *(v5 + 64);
  v28 = *(v11 + 64);
  v29 = *(v17 + 80);
  if (v19)
  {
    v30 = *(v17 + 64);
  }

  else
  {
    v30 = *(v17 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v31 = *(v11 + 80);
  v32 = (v25 | *(v5 + 80) | v26);
  v33 = v27 + v25;
  v34 = v23 + v26;
  v35 = v24 + v28 + ((v34 + (v33 & ~v25)) & ~v26);
  v36 = v29 + 8;
  v37 = a2 - v22;
  if (a2 <= v22)
  {
    goto LABEL_55;
  }

  v38 = (v36 + ((((v35 + ((v32 + 1) & ~v32) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v29;
  v39 = v30 + v38;
  v40 = 8 * (v30 + v38);
  if (v39 > 3)
  {
    goto LABEL_35;
  }

  v42 = ((v37 + ~(-1 << v40)) >> v40) + 1;
  if (HIWORD(v42))
  {
    v41 = *(a1 + v39);
    if (v41)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v42 <= 0xFF)
    {
      if (v42 < 2)
      {
        goto LABEL_55;
      }

LABEL_35:
      v41 = *(a1 + v39);
      if (!*(a1 + v39))
      {
        goto LABEL_55;
      }

LABEL_42:
      v43 = (v41 - 1) << v40;
      if (v39 > 3)
      {
        v43 = 0;
      }

      if (v39)
      {
        if (v39 <= 3)
        {
          v44 = v39;
        }

        else
        {
          v44 = 4;
        }

        if (v44 > 2)
        {
          if (v44 == 3)
          {
            v45 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v45 = *a1;
          }
        }

        else if (v44 == 1)
        {
          v45 = *a1;
        }

        else
        {
          v45 = *a1;
        }
      }

      else
      {
        v45 = 0;
      }

      return v22 + (v45 | v43) + 1;
    }

    v41 = *(a1 + v39);
    if (*(a1 + v39))
    {
      goto LABEL_42;
    }
  }

LABEL_55:
  v46 = (a1 + v32 + 1) & ~v32;
  if (v16 == v22)
  {
    if (v15 < 2)
    {
      return 0;
    }

    if (v7 == v15)
    {
      v50 = (*(v6 + 48))(v46);
    }

    else
    {
      v51 = (v33 + v46) & ~v25;
      if (v10 == v15)
      {
        v52 = (*(*(v54 - 8) + 48))(v51, v9, v54);
      }

      else
      {
        v52 = (*(*(v53 - 8) + 48))((v34 + v51) & ~v31, v13, v53);
      }

      if (v52 >= 2)
      {
        v50 = v52 - 1;
      }

      else
      {
        v50 = 0;
      }
    }

    goto LABEL_74;
  }

  v48 = (v46 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v21 & 0x80000000) != 0)
  {
    v50 = (*(v18 + 48))((v36 + ((v48 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v29, v19);
LABEL_74:
    if (v50 >= 2)
    {
      return v50 - 1;
    }

    else
    {
      return 0;
    }
  }

  v49 = *(v48 + 8);
  if (v49 >= 0xFFFFFFFF)
  {
    LODWORD(v49) = -1;
  }

  return (v49 + 1);
}

void sub_1E6809614(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = sub_1E68B1820();
  v7 = 0;
  v8 = *(v6 - 8);
  v63 = a4[8];
  v9 = *(v8 + 84);
  v10 = *(v63 - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = v12;
  }

  v61 = a4[2];
  v14 = *(v61 - 8);
  v15 = *(v14 + 84);
  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16 <= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a4[7] - 8);
  v20 = *(v19 + 84);
  v62 = *(v63 - 8);
  v60 = *(v61 - 8);
  v64 = *(v6 - 8);
  v21 = *(v8 + 80);
  v22 = *(v19 + 80);
  v23 = v20 - 1;
  if (!v20)
  {
    v23 = 0;
  }

  if (v18 <= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v18;
  }

  if (v24 <= 0x7FFFFFFF)
  {
    v25 = 0x7FFFFFFF;
  }

  else
  {
    v25 = v24;
  }

  if (v11)
  {
    v26 = *(*(v63 - 8) + 64);
  }

  else
  {
    v26 = *(*(v63 - 8) + 64) + 1;
  }

  if (v15)
  {
    v27 = *(*(v61 - 8) + 64);
  }

  else
  {
    v27 = *(*(v61 - 8) + 64) + 1;
  }

  v28 = *(v10 + 80);
  v29 = *(v14 + 80);
  v30 = *(*(v6 - 8) + 64) + v28;
  v31 = v26 + v29;
  v32 = (v26 + v29 + (v30 & ~v28)) & ~v29;
  v33 = v32 + v27;
  v34 = *(v10 + 80) | v21;
  if (v17)
  {
    v35 = v32 + v27;
  }

  else
  {
    v35 = v33 + 1;
  }

  v36 = (v34 | *(v14 + 80));
  if (v20)
  {
    v37 = *(v19 + 64);
  }

  else
  {
    v37 = *(v19 + 64) + 1;
  }

  v38 = ((v22 + 8 + ((((v35 + ((v36 + 1) & ~v36) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v22) + v37;
  v39 = a3 >= v25;
  v40 = a3 - v25;
  if (v40 != 0 && v39)
  {
    if (v38 <= 3)
    {
      v41 = ((v40 + ~(-1 << (8 * v38))) >> (8 * v38)) + 1;
      if (HIWORD(v41))
      {
        v7 = 4;
      }

      else
      {
        if (v41 < 0x100)
        {
          v42 = 1;
        }

        else
        {
          v42 = 2;
        }

        if (v41 >= 2)
        {
          v7 = v42;
        }

        else
        {
          v7 = 0;
        }
      }
    }

    else
    {
      v7 = 1;
    }
  }

  if (v25 < a2)
  {
    v43 = ~v25 + a2;
    if (v38 < 4)
    {
      v44 = (v43 >> (8 * v38)) + 1;
      if (v38)
      {
        v45 = v43 & ~(-1 << (8 * v38));
        bzero(a1, v38);
        if (v38 != 3)
        {
          if (v38 == 2)
          {
            *a1 = v45;
            if (v7 > 1)
            {
LABEL_82:
              if (v7 == 2)
              {
                *&a1[v38] = v44;
              }

              else
              {
                *&a1[v38] = v44;
              }

              return;
            }
          }

          else
          {
            *a1 = v43;
            if (v7 > 1)
            {
              goto LABEL_82;
            }
          }

          goto LABEL_79;
        }

        *a1 = v45;
        a1[2] = BYTE2(v45);
      }

      if (v7 > 1)
      {
        goto LABEL_82;
      }
    }

    else
    {
      bzero(a1, v38);
      *a1 = v43;
      v44 = 1;
      if (v7 > 1)
      {
        goto LABEL_82;
      }
    }

LABEL_79:
    if (v7)
    {
      a1[v38] = v44;
    }

    return;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      *&a1[v38] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_64;
    }

    *&a1[v38] = 0;
  }

  else if (v7)
  {
    a1[v38] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_64;
  }

  if (!a2)
  {
    return;
  }

LABEL_64:
  v46 = (&a1[v36 + 1] & ~v36);
  if (v18 == v25)
  {
    if (v17 < 2)
    {
      return;
    }

    if (a2 >= v17)
    {
      if (v33 <= 3)
      {
        v53 = ~(-1 << (8 * v33));
      }

      else
      {
        v53 = -1;
      }

      if (v33)
      {
        v54 = v53 & (a2 - v17);
        if (v33 <= 3)
        {
          v55 = v33;
        }

        else
        {
          v55 = 4;
        }

        bzero(v46, v33);
        if (v55 > 2)
        {
          if (v55 == 3)
          {
            *v46 = v54;
            v46[2] = BYTE2(v54);
          }

          else
          {
            *v46 = v54;
          }
        }

        else if (v55 == 1)
        {
          *v46 = v54;
        }

        else
        {
          *v46 = v54;
        }
      }
    }

    else
    {
      if (v9 == v17)
      {
        v47 = *(v64 + 56);
        v48 = a2 + 1;
        v49 = v6;
        v50 = &a1[v36 + 1] & ~v36;
        v11 = v9;
LABEL_103:

        v47(v50, v48, v11, v49);
        return;
      }

      v50 = &v46[v30] & ~v28;
      if (v12 == v17)
      {
        v49 = v63;
        v47 = *(v62 + 56);
        v48 = a2 + 2;
        goto LABEL_103;
      }

      v56 = (v31 + v50) & ~v29;
      if (a2 < v16)
      {
        v49 = v61;
        v47 = *(v60 + 56);
        v48 = a2 + 2;
        v50 = (v31 + v50) & ~v29;
        v11 = v15;
        goto LABEL_103;
      }

      if (v27 <= 3)
      {
        v57 = ~(-1 << (8 * v27));
      }

      else
      {
        v57 = -1;
      }

      if (v27)
      {
        v58 = v57 & (a2 - v16);
        if (v27 <= 3)
        {
          v59 = v27;
        }

        else
        {
          v59 = 4;
        }

        bzero(((v31 + v50) & ~v29), v27);
        if (v59 > 2)
        {
          if (v59 == 3)
          {
            *v56 = v58;
            *(v56 + 2) = BYTE2(v58);
          }

          else
          {
            *v56 = v58;
          }
        }

        else if (v59 == 1)
        {
          *v56 = v58;
        }

        else
        {
          *v56 = v58;
        }
      }
    }
  }

  else
  {
    v51 = (&v46[v35 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v24 & 0x80000000) != 0)
    {
      v52 = *(v19 + 56);

      v52((v22 + 8 + ((v51 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v22, a2 + 1, v20);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *v51 = a2 & 0x7FFFFFFF;
      v51[1] = 0;
    }

    else
    {
      v51[1] = a2 - 1;
    }
  }
}

uint64_t sub_1E6809C98()
{
  v1 = 0x6465726F7272696DLL;
  if (*v0 != 1)
  {
    v1 = 0x72657474616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1819047270;
  }
}

uint64_t sub_1E6809CEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E680AD84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E6809D14(uint64_t a1)
{
  v2 = sub_1E680A260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6809D50(uint64_t a1)
{
  v2 = sub_1E680A260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6809D8C(uint64_t a1)
{
  v2 = sub_1E680A35C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6809DC8(uint64_t a1)
{
  v2 = sub_1E680A35C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6809E04(uint64_t a1)
{
  v2 = sub_1E680A308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6809E40(uint64_t a1)
{
  v2 = sub_1E680A308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6809E7C(uint64_t a1)
{
  v2 = sub_1E680A2B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6809EB8(uint64_t a1)
{
  v2 = sub_1E680A2B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionCardViewStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C30, &qword_1E68BEAA0);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v28 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C38, &qword_1E68BEAA8);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v25 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C40, &qword_1E68BEAB0);
  v23 = *(v9 - 8);
  v24 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C48, &qword_1E68BEAB8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v22 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E680A260();
  sub_1E68B3BD0();
  if (v18)
  {
    if (v18 == 1)
    {
      v32 = 1;
      sub_1E680A308();
      v12 = v25;
      sub_1E68B3A30();
      v20 = v26;
      v19 = v27;
    }

    else
    {
      v33 = 2;
      sub_1E680A2B4();
      v12 = v28;
      sub_1E68B3A30();
      v20 = v29;
      v19 = v30;
    }
  }

  else
  {
    v31 = 0;
    sub_1E680A35C();
    sub_1E68B3A30();
    v20 = v23;
    v19 = v24;
  }

  (*(v20 + 8))(v12, v19);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1E680A260()
{
  result = qword_1EE2EB6F8;
  if (!qword_1EE2EB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6F8);
  }

  return result;
}

unint64_t sub_1E680A2B4()
{
  result = qword_1EE2EB6C8;
  if (!qword_1EE2EB6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6C8);
  }

  return result;
}

unint64_t sub_1E680A308()
{
  result = qword_1EE2EB6B0;
  if (!qword_1EE2EB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6B0);
  }

  return result;
}

unint64_t sub_1E680A35C()
{
  result = qword_1EE2EB6E0;
  if (!qword_1EE2EB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6E0);
  }

  return result;
}

uint64_t ActionCardViewStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C50, &qword_1E68BEAC0);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v38 = &v32 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C58, &qword_1E68BEAC8);
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C60, &qword_1E68BEAD0);
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C68, &unk_1E68BEAD8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v32 - v16;
  v18 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E680A260();
  v19 = v40;
  sub_1E68B3BC0();
  if (!v19)
  {
    v32 = v9;
    v40 = v14;
    v21 = v38;
    v20 = v39;
    v22 = sub_1E68B3A10();
    v23 = (2 * *(v22 + 16)) | 1;
    v42 = v22;
    v43 = v22 + 32;
    v44 = 0;
    v45 = v23;
    v24 = sub_1E676F5C0();
    if (v24 == 3 || v44 != v45 >> 1)
    {
      v26 = sub_1E68B3870();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
      *v28 = &type metadata for ActionCardViewStyle;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v40 + 8))(v17, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = v24;
      if (v24)
      {
        if (v24 == 1)
        {
          v47 = 1;
          sub_1E680A308();
          sub_1E68B3970();
          v25 = v40;
          (*(v34 + 8))(v8, v37);
          (*(v25 + 8))(v17, v13);
        }

        else
        {
          v47 = 2;
          sub_1E680A2B4();
          v30 = v21;
          sub_1E68B3970();
          v31 = v40;
          (*(v35 + 8))(v30, v36);
          (*(v31 + 8))(v17, v13);
        }
      }

      else
      {
        v47 = 0;
        sub_1E680A35C();
        sub_1E68B3970();
        (*(v33 + 8))(v12, v32);
        (*(v40 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v20 = v46;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t ActionCardViewStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E680A9C8()
{
  result = qword_1ED098C70;
  if (!qword_1ED098C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098C70);
  }

  return result;
}

unint64_t sub_1E680AA70()
{
  result = qword_1ED098C78;
  if (!qword_1ED098C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098C78);
  }

  return result;
}

unint64_t sub_1E680AAC8()
{
  result = qword_1EE2EB6D0;
  if (!qword_1EE2EB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6D0);
  }

  return result;
}

unint64_t sub_1E680AB20()
{
  result = qword_1EE2EB6D8;
  if (!qword_1EE2EB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6D8);
  }

  return result;
}

unint64_t sub_1E680AB78()
{
  result = qword_1EE2EB6A0;
  if (!qword_1EE2EB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6A0);
  }

  return result;
}

unint64_t sub_1E680ABD0()
{
  result = qword_1EE2EB6A8;
  if (!qword_1EE2EB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6A8);
  }

  return result;
}

unint64_t sub_1E680AC28()
{
  result = qword_1EE2EB6B8;
  if (!qword_1EE2EB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6B8);
  }

  return result;
}

unint64_t sub_1E680AC80()
{
  result = qword_1EE2EB6C0;
  if (!qword_1EE2EB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6C0);
  }

  return result;
}

unint64_t sub_1E680ACD8()
{
  result = qword_1EE2EB6E8;
  if (!qword_1EE2EB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6E8);
  }

  return result;
}

unint64_t sub_1E680AD30()
{
  result = qword_1EE2EB6F0;
  if (!qword_1EE2EB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB6F0);
  }

  return result;
}

uint64_t sub_1E680AD84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819047270 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465726F7272696DLL && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72657474616C70 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

double sub_1E680AEA4()
{
  sub_1E67E2E4C();
  sub_1E68B20E0();
  return v1;
}

__n128 sub_1E680AEF0@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #1.0 }

  *a1 = result;
  return result;
}

void sub_1E680AF38(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

_OWORD *sub_1E680AFF0(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1E67FCA14(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1E680C3E4(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_1E680B99C(a1);
    v7 = sub_1E680B874(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1E680C58C();
        v11 = v13;
      }

      sub_1E67FCA14((*(v11 + 56) + 32 * v9), v14);
      sub_1E680C1C8(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_1E680B99C(v14);
  }

  return result;
}

uint64_t sub_1E680B0D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  MEMORY[0x1E69523D0](v2);
  MEMORY[0x1E69523D0](v3);
  MEMORY[0x1E69523D0](v4);
  MEMORY[0x1E69523D0](v5);
  MEMORY[0x1E69523D0](v6);
  return sub_1E68B3BB0();
}

uint64_t sub_1E680B17C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  MEMORY[0x1E69523D0](*v0);
  MEMORY[0x1E69523D0](v1);
  MEMORY[0x1E69523D0](v2);
  MEMORY[0x1E69523D0](v3);
  MEMORY[0x1E69523D0](v4);
  return MEMORY[0x1E69523D0](v5);
}

uint64_t sub_1E680B1F0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v2);
  MEMORY[0x1E69523D0](v3);
  MEMORY[0x1E69523D0](v4);
  MEMORY[0x1E69523D0](v5);
  MEMORY[0x1E69523D0](v6);
  MEMORY[0x1E69523D0](v7);
  return sub_1E68B3BB0();
}

BOOL sub_1E680B290(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1E680C8D4(v7, v8);
}

uint64_t sub_1E680B2D8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E680B334(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 48))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1E680B378(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_1E680B3D8()
{
  result = qword_1EE2EC718;
  if (!qword_1EE2EC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC718);
  }

  return result;
}

void sub_1E680B42C(uint64_t *x8_0@<X8>)
{
  v9 = *(v7 + 16);
  swift_getExtendedExistentialTypeMetadata();
  v10 = *(*v9 + *MEMORY[0x1E69E6B68] + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v9 + v11));
  sub_1E680B748((v9 + v10), x8_0);
  os_unfair_lock_unlock((v9 + v11));
}

uint64_t sub_1E680B52C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = a2;
  v21 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_6;
  }

  v22 = sub_1E680B874(a2);
  if ((v23 & 1) == 0)
  {
    goto LABEL_6;
  }

  v28 = v19;
  sub_1E680B940(*(v21 + 56) + 32 * v22, v47);
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v39 = a10;
  v40 = a11;
  v41 = a12;
  v42 = a13;
  v43 = a14;
  v44 = a15;
  v45 = a16;
  v46 = a17;
  v24 = type metadata accessor for CanvasItemPlaceholderCache(0, &v33);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v19 = v28;
LABEL_6:
    v33 = a3;
    v34 = a4;
    v35 = a5;
    v36 = a6;
    v37 = a7;
    v38 = a8;
    v39 = a10;
    v40 = a11;
    v41 = a12;
    v42 = a13;
    v43 = a14;
    v44 = a15;
    v45 = a16;
    v46 = a17;
    v26 = v19;
    v24 = type metadata accessor for CanvasItemPlaceholderCache(0, &v33);
    v25 = sub_1E688E9D4();
    v36 = v24;
    v33 = v25;

    sub_1E680AFF0(&v33, v26);
    goto LABEL_7;
  }

  v25 = v48;
LABEL_7:
  a9[3] = v24;
  result = swift_getWitnessTable();
  a9[4] = result;
  *a9 = v25;
  return result;
}

unint64_t sub_1E680B790(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  sub_1E68B31F0();
  v4 = sub_1E68B3BB0();

  return sub_1E680BA04(a1, a2, v4);
}

unint64_t sub_1E680B808(uint64_t a1)
{
  v1 = a1;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  v2 = sub_1E68B3BB0();

  return sub_1E680BABC(v1, v2);
}

unint64_t sub_1E680B874(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v2);
  MEMORY[0x1E69523D0](v3);
  MEMORY[0x1E69523D0](v4);
  MEMORY[0x1E69523D0](v5);
  MEMORY[0x1E69523D0](v6);
  MEMORY[0x1E69523D0](v7);
  v8 = sub_1E68B3BB0();

  return sub_1E680BB2C(a1, v8);
}

uint64_t sub_1E680B940(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E680B99C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C80, &qword_1E68BF058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E680BA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1E68B3B00())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1E680BABC(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E680BB2C(void *a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 48 * result);
      if (*v7 == *a1 && v7[1] == a1[1] && v7[2] == a1[2] && v7[3] == a1[3] && v7[4] == a1[4] && v7[5] == a1[5])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1E680BBF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C88, &unk_1E68BF060);
  v36 = v4;
  result = sub_1E68B3930();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 48 * v20);
      v23 = v22[1];
      v39 = *v22;
      v24 = v22[2];
      v25 = v22[3];
      v37 = v22[5];
      v38 = v22[4];
      v26 = (v21 + 32 * v20);
      if (v36)
      {
        sub_1E67FCA14(v26, v40);
      }

      else
      {
        sub_1E680B940(v26, v40);
      }

      sub_1E68B3B70();
      MEMORY[0x1E69523D0](v39);
      MEMORY[0x1E69523D0](v23);
      MEMORY[0x1E69523D0](v24);
      MEMORY[0x1E69523D0](v25);
      MEMORY[0x1E69523D0](v38);
      MEMORY[0x1E69523D0](v37);
      result = sub_1E68B3BB0();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 48 * v15);
      *v16 = v39;
      v16[1] = v23;
      v16[2] = v24;
      v16[3] = v25;
      v16[4] = v38;
      v16[5] = v37;
      result = sub_1E67FCA14(v40, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1E680BF10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098920, &qword_1E68BDB98);
  v33 = v4;
  result = sub_1E68B3930();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1E67FCA14(v24, v34);
      }

      else
      {
        sub_1E680B940(v24, v34);
      }

      sub_1E68B3B70();
      sub_1E68B31F0();
      result = sub_1E68B3BB0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1E67FCA14(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1E680C1C8(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v32 = a2 + 64;
    v30 = (sub_1E68B37C0() + 1) & ~v5;
    do
    {
      v9 = (*(v2 + 48) + 48 * v6);
      v10 = v7;
      v11 = *v9;
      v12 = v9[1];
      v13 = v9[2];
      v14 = v9[3];
      v16 = v9[4];
      v15 = v9[5];
      sub_1E68B3B70();
      v17 = v11;
      v7 = v10;
      MEMORY[0x1E69523D0](v17);
      MEMORY[0x1E69523D0](v12);
      MEMORY[0x1E69523D0](v13);
      MEMORY[0x1E69523D0](v14);
      MEMORY[0x1E69523D0](v16);
      MEMORY[0x1E69523D0](v15);
      result = sub_1E68B3BB0();
      v18 = result & v10;
      if (v3 >= v30)
      {
        if (v18 < v30)
        {
          v2 = a2;
          v4 = v32;
        }

        else
        {
          v2 = a2;
          v4 = v32;
          if (v3 >= v18)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v2 = a2;
        v4 = v32;
        if (v18 >= v30 || v3 >= v18)
        {
LABEL_11:
          v19 = *(v2 + 48);
          v20 = (v19 + 48 * v3);
          v21 = (v19 + 48 * v6);
          if (v3 != v6 || v20 >= v21 + 3)
          {
            v22 = *v21;
            v23 = v21[2];
            v20[1] = v21[1];
            v20[2] = v23;
            *v20 = v22;
          }

          v24 = *(v2 + 56);
          v25 = (v24 + 32 * v3);
          v26 = (v24 + 32 * v6);
          if (v3 != v6 || v25 >= v26 + 2)
          {
            v8 = v26[1];
            *v25 = *v26;
            v25[1] = v8;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v10;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

_OWORD *sub_1E680C3E4(_OWORD *a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E680B874(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1E680C58C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1E680BBF8(v14, a3 & 1);
    v9 = sub_1E680B874(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1E68B3B20();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_1E67FCA14(a1, v20);
  }

  else
  {

    return sub_1E680C510(v9, a2, a1, v19);
  }
}

_OWORD *sub_1E680C510(unint64_t a1, _OWORD *a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = (a4[6] + 48 * a1);
  v6 = a2[1];
  *v5 = *a2;
  v5[1] = v6;
  v5[2] = a2[2];
  result = sub_1E67FCA14(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_1E680C58C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C88, &unk_1E68BF060);
  v2 = *v0;
  v3 = sub_1E68B3920();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 48 * v17;
        v19 = (*(v2 + 48) + 48 * v17);
        v23 = v19[1];
        v24 = *v19;
        v22 = v19[2];
        v20 = 32 * v17;
        sub_1E680B940(*(v2 + 56) + 32 * v17, v25);
        v21 = (*(v4 + 48) + v18);
        *v21 = v24;
        v21[1] = v23;
        v21[2] = v22;
        result = sub_1E67FCA14(v25, (*(v4 + 56) + v20));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1E680C730()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098920, &qword_1E68BDB98);
  v2 = *v0;
  v3 = sub_1E68B3920();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1E680B940(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1E67FCA14(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

BOOL sub_1E680C8D4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  if (a1[3] != a2[3])
  {
    return 0;
  }

  if (a1[4] == a2[4])
  {
    return a1[5] == a2[5];
  }

  return 0;
}

__n128 sub_1E680C960@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __n128 a11, unint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = *a6;
  v22 = *a7;
  v23 = a7[1];
  (*(*(a14 - 8) + 32))(a9, a1, a14);
  v25 = type metadata accessor for DynamicBrickView(0, a14, a15, v24);
  v26 = (a9 + v25[9]);
  *v26 = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  *(a9 + v25[10]) = v21;
  v27 = (a9 + v25[11]);
  *v27 = v22;
  v27[1] = v23;
  v28 = (a9 + v25[12]);
  v29 = swift_allocObject();
  *(v29 + 16) = a8;
  *(v29 + 24) = a10;
  *v28 = sub_1E673F5E0;
  v28[1] = v29;
  v30 = (a9 + v25[13]);
  result = a11;
  *v30 = a11;
  v30[1].n128_u64[0] = a12;
  v30[1].n128_u64[1] = a13;
  return result;
}

FitnessCanvasUI::DynamicBrickViewLayout __swiftcall DynamicBrickViewLayout.init(horizontalMargin:verticalMargin:)(Swift::Double horizontalMargin, Swift::Double verticalMargin)
{
  *v2 = horizontalMargin;
  v2[1] = verticalMargin;
  result.verticalMargin = verticalMargin;
  result.horizontalMargin = horizontalMargin;
  return result;
}

uint64_t sub_1E680CAE8()
{
  if (*v0)
  {
    return 0x6C61636974726576;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1E680CB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001E68E2DB0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xEE006E696772614DLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E68B3B00();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1E680CC24(uint64_t a1)
{
  v2 = sub_1E680CE24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E680CC60(uint64_t a1)
{
  v2 = sub_1E680CE24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicBrickViewLayout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098C90, &qword_1E68BF080);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E680CE24();
  sub_1E68B3BD0();
  v9[15] = 0;
  sub_1E68B3A90();
  if (!v1)
  {
    v9[14] = 1;
    sub_1E68B3A90();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E680CE24()
{
  result = qword_1ED098C98;
  if (!qword_1ED098C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098C98);
  }

  return result;
}

uint64_t DynamicBrickViewLayout.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098CA0, &qword_1E68BF088);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E680CE24();
  sub_1E68B3BC0();
  if (!v2)
  {
    v17 = 0;
    sub_1E68B39E0();
    v11 = v10;
    v16 = 1;
    sub_1E68B39E0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 1) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DynamicBrickViewLayout.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1E69523F0](*&v3);
}

uint64_t DynamicBrickViewLayout.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E68B3B70();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1E69523F0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1E69523F0](*&v4);
  return sub_1E68B3BB0();
}

uint64_t sub_1E680D124(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1E68B3B70();
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1E69523F0](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x1E69523F0](*&v5);
  return sub_1E68B3BB0();
}

uint64_t DynamicBrickView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v62 = a2;
  v3 = sub_1E68B1EB0();
  v48 = v3;
  v61 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v60 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(a1 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098CA8, &unk_1E68BF090);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B1D70();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  v10 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v11 = sub_1E68B1E40();
  WitnessTable = swift_getWitnessTable();
  v77 = MEMORY[0x1E697F568];
  v12 = swift_getWitnessTable();
  v13 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v74 = v12;
  v75 = v13;
  v14 = swift_getWitnessTable();
  v15 = MEMORY[0x1E6981CD8];
  v66 = v10;
  v67 = MEMORY[0x1E6981CD8];
  v68 = v11;
  v69 = v11;
  v16 = MEMORY[0x1E6981CD0];
  v70 = v12;
  v71 = MEMORY[0x1E6981CD0];
  v72 = v14;
  v73 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = v10;
  v67 = v15;
  v68 = v11;
  v69 = v11;
  v70 = v12;
  v71 = v16;
  v72 = v14;
  v73 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_1E68B2C30();
  v54 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v49 = &v45 - v19;
  v20 = swift_getWitnessTable();
  v47 = v20;
  v46 = sub_1E681132C(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v66 = v17;
  v67 = v3;
  v68 = v20;
  v69 = v46;
  v50 = MEMORY[0x1E697CDB0];
  v21 = swift_getOpaqueTypeMetadata2();
  v51 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v45 = &v45 - v28;
  v29 = v57;
  v30 = v59;
  v31 = v55;
  (*(v57 + 16))(v9, v59, v55, v27);
  v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v33 = swift_allocObject();
  v34 = v31;
  v35 = *(v31 + 24);
  v36 = v56;
  *(v33 + 16) = v56;
  *(v33 + 24) = v35;
  (*(v29 + 32))(v33 + v32, v9, v34);
  v63 = v36;
  v64 = v35;
  v65 = v30;
  v37 = v49;
  sub_1E68B2C20();
  v38 = v60;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  v39 = v48;
  v40 = v47;
  v41 = v46;
  sub_1E68B2790();
  (*(v61 + 8))(v38, v39);
  (*(v54 + 8))(v37, v17);
  v66 = v17;
  v67 = v39;
  v68 = v40;
  v69 = v41;
  swift_getOpaqueTypeConformance2();
  v42 = v45;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v43 = *(v51 + 8);
  v43(v24, v21);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v43)(v42, v21);
}

uint64_t sub_1E680D8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for DynamicBrickView(0, a2, a3, a4) + 48);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;

  sub_1E677A174(v5);
}

uint64_t sub_1E680D950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for DynamicBrickView(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1E680D8B8(v9, v5, v6, v7);
}

uint64_t sub_1E680D9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23[0] = a3;
  v30 = a1;
  v31 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098CA8, &unk_1E68BF090);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B1D70();
  WitnessTable = swift_getWitnessTable();
  v23[1] = sub_1E68B2CE0();
  v6 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v7 = sub_1E68B1E40();
  v25 = swift_getWitnessTable();
  v56 = v25;
  v57 = MEMORY[0x1E697F568];
  v54 = swift_getWitnessTable();
  v55 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v24 = v54;
  v8 = swift_getWitnessTable();
  *&v47 = v6;
  *(&v47 + 1) = MEMORY[0x1E6981CD8];
  v48 = v7;
  v49 = v7;
  v50 = v54;
  v51 = MEMORY[0x1E6981CD0];
  v52 = v8;
  v53 = v8;
  v28 = MEMORY[0x1E6981460];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v29 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v26 = v23 - v15;
  v36 = a2;
  v37 = a3;
  v38 = v30;
  sub_1E68B2E80();
  swift_checkMetadataState();
  sub_1E68B2CD0();
  v44 = v39;
  v45 = v40;
  v46 = v41;
  swift_checkMetadataState();
  sub_1E68B2770();

  v39 = v47;
  v40 = v48;
  v41 = v49;
  v42 = v50;
  v43 = v51;
  sub_1E68B2E00();
  v34 = a2;
  v35 = v23[0];
  v32 = a2;
  v33 = v23[0];
  v16 = swift_checkMetadataState();
  v17 = swift_checkMetadataState();
  v18 = v24;
  v19 = MEMORY[0x1E6981CD8];
  sub_1E68B2AD0();

  *&v47 = v16;
  *(&v47 + 1) = v19;
  v48 = v17;
  v49 = v17;
  v50 = v18;
  v51 = MEMORY[0x1E6981CD0];
  v52 = v8;
  v53 = v8;
  swift_getOpaqueTypeConformance2();
  v20 = v26;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v21 = *(v29 + 8);
  v21(v12, OpaqueTypeMetadata2);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v21)(v20, OpaqueTypeMetadata2);
}