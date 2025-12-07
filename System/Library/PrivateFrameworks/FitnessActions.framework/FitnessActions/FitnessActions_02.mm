uint64_t sub_1E5B8A28C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E5B8A304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F188, &qword_1E5BFB840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B8A374(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F188, &qword_1E5BFB840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5B8A3DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5B6E314;

  return sub_1E5B8980C(a1, v4);
}

uint64_t sub_1E5B8A494(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5B6D9A0;

  return sub_1E5B8980C(a1, v4);
}

uint64_t ViewStackButtonState.init(locale:upNextCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E5BF64B4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for ViewStackButtonState(0) + 20);

  return sub_1E5B8A640(a2, v7);
}

uint64_t type metadata accessor for ViewStackButtonState(uint64_t a1)
{
  result = qword_1ED03F1D0;
  if (!qword_1ED03F1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5B8A640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B8A6B0()
{
  if (*v0)
  {
    return 0x6F437478654E7075;
  }

  else
  {
    return 0x656C61636F6CLL;
  }
}

uint64_t sub_1E5B8A6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F437478654E7075 && a2 == 0xEB00000000746E75)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5B8A7CC(uint64_t a1)
{
  v2 = sub_1E5B8AA3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B8A808(uint64_t a1)
{
  v2 = sub_1E5B8AA3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewStackButtonState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F198, &qword_1E5BFB9C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B8AA3C();
  sub_1E5BF7524();
  v8[15] = 0;
  sub_1E5BF64B4();
  sub_1E5B8B304(&qword_1ED03E5C8, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
  sub_1E5BF7424();
  if (!v1)
  {
    type metadata accessor for ViewStackButtonState(0);
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
    sub_1E5B8AE5C(&qword_1ED03F1A8, MEMORY[0x1E6999B20]);
    sub_1E5BF7424();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E5B8AA3C()
{
  result = qword_1ED03F1A0;
  if (!qword_1ED03F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F1A0);
  }

  return result;
}

uint64_t ViewStackButtonState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v17 - v4;
  v25 = sub_1E5BF64B4();
  v21 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v23 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F1B0, &qword_1E5BFB9D0);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ViewStackButtonState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B8AA3C();
  sub_1E5BF7514();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v9;
  v19 = v11;
  v12 = v21;
  v28 = 0;
  sub_1E5B8B304(&qword_1ED03E600, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  v13 = v23;
  v14 = v25;
  sub_1E5BF7364();
  (*(v12 + 32))(v19, v13, v14);
  v27 = 1;
  sub_1E5B8AE5C(&qword_1ED03F1B8, MEMORY[0x1E6999B30]);
  sub_1E5BF7364();
  (*(v24 + 8))(v8, v26);
  v15 = v19;
  sub_1E5B8A640(v5, &v19[*(v18 + 20)]);
  sub_1E5B8AECC(v15, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E5B8AF30(v15);
}

uint64_t sub_1E5B8AE5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5B8AECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewStackButtonState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B8AF30(uint64_t a1)
{
  v2 = type metadata accessor for ViewStackButtonState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static ViewStackButtonState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1E6936BF0]() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ViewStackButtonState(0);

  return sub_1E5BF6DE4();
}

uint64_t ViewStackButtonState.hash(into:)(uint64_t a1)
{
  sub_1E5BF64B4();
  sub_1E5B8B304(&qword_1ED03E5F0, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1E5BF6EF4();
  type metadata accessor for ViewStackButtonState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
  return sub_1E5BF6DF4();
}

uint64_t ViewStackButtonState.hashValue.getter()
{
  sub_1E5BF74B4();
  type metadata accessor for ViewStackButtonState(0);
  sub_1E5B8B304(&qword_1ED03F1C0, type metadata accessor for ViewStackButtonState, &protocol conformance descriptor for ViewStackButtonState);
  sub_1E5BF6EF4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5B8B164(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  sub_1E5BF6EF4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5B8B1BC(uint64_t a1)
{
  sub_1E5BF64B4();
  sub_1E5B8B304(&qword_1ED03E5F0, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1E5BF6EF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
  return sub_1E5BF6DF4();
}

uint64_t sub_1E5B8B268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E5BF74B4();
  sub_1E5BF6EF4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5B8B304(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5B8B34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x1E6936BF0]() & 1) == 0)
  {
    return 0;
  }

  return sub_1E5BF6DE4();
}

void sub_1E5B8B3EC(uint64_t a1)
{
  sub_1E5BF64B4();
  if (v1 <= 0x3F)
  {
    sub_1E5B8B470();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5B8B470()
{
  if (!qword_1ED03F1E0)
  {
    v0 = sub_1E5BF6E04();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED03F1E0);
    }
  }
}

unint64_t sub_1E5B8B4DC()
{
  result = qword_1ED03F1E8;
  if (!qword_1ED03F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F1E8);
  }

  return result;
}

unint64_t sub_1E5B8B534()
{
  result = qword_1ED03F1F0;
  if (!qword_1ED03F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F1F0);
  }

  return result;
}

unint64_t sub_1E5B8B58C()
{
  result = qword_1ED03F1F8;
  if (!qword_1ED03F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F1F8);
  }

  return result;
}

uint64_t SampleContentButtonState.workoutIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for SampleContentButtonState(uint64_t a1)
{
  result = qword_1ED03F270;
  if (!qword_1ED03F270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SampleContentButtonState.init(workoutIdentifier:allowedMediaTypes:locale:presentationContextKey:detailLoadState:marketingItemLoadState:ongoingWorkoutAlert:missingAccountAlert:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  v16 = type metadata accessor for SampleContentButtonState(0);
  v17 = v16[6];
  v18 = sub_1E5BF64B4();
  (*(*(v18 - 8) + 32))(&a9[v17], a4, v18);
  v19 = v16[7];
  v20 = sub_1E5BF6494();
  (*(*(v20 - 8) + 32))(&a9[v19], a5, v20);
  sub_1E5B5F8D4(a6, &a9[v16[8]], &qword_1ED03E950, &unk_1E5BF95F0);
  sub_1E5B5F8D4(a7, &a9[v16[9]], &qword_1ED03E948, &qword_1E5BFD480);
  sub_1E5B5F8D4(a8, &a9[v16[10]], &qword_1ED03E5C0, &unk_1E5BF8A20);
  return sub_1E5B5F8D4(a10, &a9[v16[11]], &qword_1ED03E5C0, &unk_1E5BF8A20);
}

unint64_t sub_1E5B8BB2C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v2 = 0xD000000000000013;
    v3 = 0xD000000000000016;
    if (v1 == 4)
    {
      v3 = 0x6F4C6C6961746564;
    }

    v4 = *v0 <= 5u;
  }

  else
  {
    v2 = 0x656C61636F6CLL;
    if (v1 != 2)
    {
      v2 = 0xD000000000000016;
    }

    v3 = 0xD000000000000011;
    if (*v0)
    {
      v3 = 0xD000000000000011;
    }

    v4 = *v0 <= 1u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E5B8BC3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B8DE3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B8BC70(uint64_t a1)
{
  v2 = sub_1E5B8D4D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B8BCAC(uint64_t a1)
{
  v2 = sub_1E5B8D4D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentButtonState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F200, &qword_1E5BFBBC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B8D4D4();
  sub_1E5BF7524();
  LOBYTE(v11) = 0;
  sub_1E5BF73E4();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F210, &qword_1E5BFBBD0);
    sub_1E5B8D750(&qword_1ED03F218, sub_1E5B8D528, MEMORY[0x1E69E64F0]);
    sub_1E5BF7424();
    type metadata accessor for SampleContentButtonState(0);
    LOBYTE(v11) = 2;
    sub_1E5BF64B4();
    sub_1E5B8D99C(&qword_1ED03E5C8, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    sub_1E5BF7424();
    LOBYTE(v11) = 3;
    sub_1E5BF6494();
    sub_1E5B8D99C(&qword_1EE2C7AF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1E5BF7424();
    LOBYTE(v11) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
    sub_1E5B8D81C(&qword_1ED03F220, MEMORY[0x1E6999B20]);
    sub_1E5BF7424();
    LOBYTE(v11) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480);
    sub_1E5B8D624(&qword_1ED03F228, MEMORY[0x1E6999B20]);
    sub_1E5BF7424();
    LOBYTE(v11) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
    sub_1E5B5FC8C(&qword_1ED03E5E0, &qword_1ED03E5C0, &unk_1E5BF8A20, &protocol conformance descriptor for ModalPresentation<A>);
    sub_1E5BF7424();
    LOBYTE(v11) = 7;
    sub_1E5BF7424();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SampleContentButtonState.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1E5BF6494();
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v32 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v32 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v33 = &v32 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v39 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  sub_1E5BF6FE4();
  sub_1E5B8D230(a1, *(v1 + 16));
  v20 = type metadata accessor for SampleContentButtonState(0);
  sub_1E5BF64B4();
  sub_1E5B8D99C(&qword_1ED03E5F0, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1E5BF6EF4();
  v34 = sub_1E5B8D99C(&qword_1EE2C7AE8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5BF6EF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  sub_1E5B8D6FC();
  sub_1E5BF6DF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480);
  sub_1E5B5FC8C(&qword_1ED03F240, &qword_1ED03E960, &qword_1E5BFD4B0, MEMORY[0x1E699F0D8]);
  sub_1E5BF6DF4();
  sub_1E5B5F864(v1 + *(v20 + 40), v19, &qword_1ED03E5C0, &unk_1E5BF8A20);
  v21 = *(v7 + 48);
  v40 = v7 + 48;
  v41 = v6;
  if (v21(v19, 1, v6) == 1)
  {
    MEMORY[0x1E6937C10](0);
    v22 = v38;
  }

  else
  {
    v23 = v19;
    v24 = v33;
    sub_1E5B5F8D4(v23, v33, &qword_1ED03E5E8, &unk_1E5BF9600);
    MEMORY[0x1E6937C10](1);
    v25 = v32;
    v22 = v38;
    sub_1E5B5F864(v24, v32, &qword_1ED03E5E8, &unk_1E5BF9600);
    if ((*(v22 + 48))(v25, 1, v4) == 1)
    {
      sub_1E5BF74D4();
    }

    else
    {
      v26 = v37;
      (*(v22 + 32))(v37, v25, v4);
      sub_1E5BF74D4();
      sub_1E5BF6EF4();
      (*(v22 + 8))(v26, v4);
    }

    sub_1E5B5F804(v24, &qword_1ED03E5E8, &unk_1E5BF9600);
  }

  v27 = v39;
  sub_1E5B5F864(v2 + *(v20 + 44), v39, &qword_1ED03E5C0, &unk_1E5BF8A20);
  if (v21(v27, 1, v41) == 1)
  {
    return MEMORY[0x1E6937C10](0);
  }

  v29 = v36;
  sub_1E5B5F8D4(v27, v36, &qword_1ED03E5E8, &unk_1E5BF9600);
  MEMORY[0x1E6937C10](1);
  v30 = v35;
  sub_1E5B5F864(v29, v35, &qword_1ED03E5E8, &unk_1E5BF9600);
  if ((*(v22 + 48))(v30, 1, v4) == 1)
  {
    sub_1E5BF74D4();
  }

  else
  {
    v31 = v37;
    (*(v22 + 32))(v37, v30, v4);
    sub_1E5BF74D4();
    sub_1E5BF6EF4();
    (*(v22 + 8))(v31, v4);
  }

  return sub_1E5B5F804(v29, &qword_1ED03E5E8, &unk_1E5BF9600);
}

uint64_t SampleContentButtonState.hashValue.getter()
{
  sub_1E5BF74B4();
  SampleContentButtonState.hash(into:)(v1);
  return sub_1E5BF7504();
}

uint64_t SampleContentButtonState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v34 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v34 - v7;
  v8 = sub_1E5BF6494();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5BF64B4();
  v45 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F248, &qword_1E5BFBBD8);
  v48 = *(v14 - 8);
  v49 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = type metadata accessor for SampleContentButtonState(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E5B8D4D4();
  v50 = v16;
  v21 = v51;
  sub_1E5BF7514();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v22 = v13;
  v23 = v10;
  v51 = v11;
  v25 = v46;
  v24 = v47;
  LOBYTE(v54) = 0;
  *v19 = sub_1E5BF7324();
  v19[1] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F210, &qword_1E5BFBBD0);
  v53 = 1;
  sub_1E5B8D750(&qword_1ED03F250, sub_1E5B8D7C8, MEMORY[0x1E69E6510]);
  sub_1E5BF7364();
  v19[2] = v54;
  LOBYTE(v54) = 2;
  sub_1E5B8D99C(&qword_1ED03E600, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  v36 = v19;
  v27 = v51;
  sub_1E5BF7364();
  v35 = v17;
  (*(v45 + 32))(v36 + *(v17 + 24), v22, v27);
  LOBYTE(v54) = 3;
  sub_1E5B8D99C(&qword_1EE2C7AE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1E5BF7364();
  (*(v25 + 32))(v36 + v35[7], v23, v24);
  LOBYTE(v54) = 4;
  sub_1E5B8D81C(&qword_1ED03F260, MEMORY[0x1E6999B30]);
  v28 = v43;
  sub_1E5BF7364();
  v29 = v36;
  sub_1E5B5F8D4(v28, v36 + v35[8], &qword_1ED03E950, &unk_1E5BF95F0);
  LOBYTE(v54) = 5;
  sub_1E5B8D624(&qword_1ED03F268, MEMORY[0x1E6999B30]);
  v30 = v42;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v30, v29 + v35[9], &qword_1ED03E948, &qword_1E5BFD480);
  LOBYTE(v54) = 6;
  sub_1E5B5FC8C(qword_1ED03E618, &qword_1ED03E5C0, &unk_1E5BF8A20, &protocol conformance descriptor for ModalPresentation<A>);
  sub_1E5BF7364();
  v31 = v29;
  sub_1E5B5F8D4(v40, v29 + v35[10], &qword_1ED03E5C0, &unk_1E5BF8A20);
  LOBYTE(v54) = 7;
  v32 = v38;
  sub_1E5BF7364();
  (*(v48 + 8))(v50, v49);
  sub_1E5B5F8D4(v32, v31 + *(v17 + 44), &qword_1ED03E5C0, &unk_1E5BF8A20);
  sub_1E5B8D894(v31, v37);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return sub_1E5B8D8F8(v31);
}

uint64_t sub_1E5B8D1AC()
{
  sub_1E5BF74B4();
  SampleContentButtonState.hash(into:)(v1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B8D1F0(uint64_t a1)
{
  sub_1E5BF74B4();
  SampleContentButtonState.hash(into:)(v2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B8D230(__int128 *a1, uint64_t a2)
{
  result = sub_1E5BF7504();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_1E5BF74B4();
    MEMORY[0x1E6937C10](v12);
    result = sub_1E5BF7504();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1E6937C10](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s14FitnessActions24SampleContentButtonStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E5BF7444() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E5BC38D8(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for SampleContentButtonState(0);
  if ((MEMORY[0x1E6936BF0](a1 + v5[6], a2 + v5[6]) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E5BF6474() & 1) == 0)
  {
    return 0;
  }

  sub_1E5B8DC2C();
  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E960, &qword_1E5BFD4B0);
  sub_1E5B5FC8C(&qword_1ED03F288, &qword_1ED03E960, &qword_1E5BFD4B0, MEMORY[0x1E699F0E0]);
  if ((sub_1E5BF6DE4() & 1) == 0 || (sub_1E5B65C60(a1 + v5[10], a2 + v5[10]) & 1) == 0)
  {
    return 0;
  }

  v6 = v5[11];

  return sub_1E5B65C60(a1 + v6, a2 + v6);
}

unint64_t sub_1E5B8D4D4()
{
  result = qword_1ED03F208;
  if (!qword_1ED03F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F208);
  }

  return result;
}

unint64_t sub_1E5B8D528()
{
  result = qword_1EE2C74E0;
  if (!qword_1EE2C74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C74E0);
  }

  return result;
}

unint64_t sub_1E5B8D57C()
{
  result = qword_1EE2C72E0;
  if (!qword_1EE2C72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C72E0);
  }

  return result;
}

unint64_t sub_1E5B8D5D0()
{
  result = qword_1EE2C72F8;
  if (!qword_1EE2C72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C72F8);
  }

  return result;
}

uint64_t sub_1E5B8D624(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E948, &qword_1E5BFD480);
    sub_1E5B5FC8C(&qword_1ED03F230, &qword_1ED03E960, &qword_1E5BFD4B0, MEMORY[0x1E699F0E8]);
    sub_1E5B5FC8C(&qword_1ED03F238, &qword_1ED03E960, &qword_1E5BFD4B0, MEMORY[0x1E699F0D0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5B8D6FC()
{
  result = qword_1EE2C72F0;
  if (!qword_1EE2C72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C72F0);
  }

  return result;
}

uint64_t sub_1E5B8D750(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F210, &qword_1E5BFBBD0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5B8D7C8()
{
  result = qword_1ED03F258;
  if (!qword_1ED03F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F258);
  }

  return result;
}

uint64_t sub_1E5B8D81C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E950, &unk_1E5BF95F0);
    sub_1E5B8D57C();
    sub_1E5B8D5D0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5B8D894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentButtonState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B8D8F8(uint64_t a1)
{
  v2 = type metadata accessor for SampleContentButtonState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5B8D99C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E5B8DA0C(uint64_t a1)
{
  sub_1E5B8DBC4(319, &qword_1EE2C6210, sub_1E5B8DB70, &type metadata for WorkoutMediaType, MEMORY[0x1E69E64E8]);
  if (v1 <= 0x3F)
  {
    sub_1E5BF64B4();
    if (v2 <= 0x3F)
    {
      sub_1E5BF6494();
      if (v3 <= 0x3F)
      {
        sub_1E5B8DBC4(319, &qword_1EE2C6278, sub_1E5B8DC2C, &type metadata for StartWorkoutDetail, MEMORY[0x1E6999B18]);
        if (v4 <= 0x3F)
        {
          sub_1E5B8DC80(319);
          if (v5 <= 0x3F)
          {
            sub_1E5B6A50C(319);
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

unint64_t sub_1E5B8DB70()
{
  result = qword_1EE2C74D8;
  if (!qword_1EE2C74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C74D8);
  }

  return result;
}

void sub_1E5B8DBC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1E5B8DC2C()
{
  result = qword_1EE2C72E8;
  if (!qword_1EE2C72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C72E8);
  }

  return result;
}

void sub_1E5B8DC80(uint64_t a1)
{
  if (!qword_1ED03F280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E960, &qword_1E5BFD4B0);
    sub_1E5B5FC8C(&qword_1ED03F288, &qword_1ED03E960, &qword_1E5BFD4B0, MEMORY[0x1E699F0E0]);
    v1 = sub_1E5BF6E04();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED03F280);
    }
  }
}

unint64_t sub_1E5B8DD38()
{
  result = qword_1ED03F290;
  if (!qword_1ED03F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F290);
  }

  return result;
}

unint64_t sub_1E5B8DD90()
{
  result = qword_1ED03F298;
  if (!qword_1ED03F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F298);
  }

  return result;
}

unint64_t sub_1E5B8DDE8()
{
  result = qword_1ED03F2A0;
  if (!qword_1ED03F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F2A0);
  }

  return result;
}

uint64_t sub_1E5B8DE3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E5C07A80 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5C07AA0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5C077D0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4C6C6961746564 && a2 == 0xEF65746174536461 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5C07AC0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5C07AE0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5C07B00 == a2)
  {

    return 7;
  }

  else
  {
    v5 = sub_1E5BF7444();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t DynamicStartWorkoutState.sampleContentSessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DynamicStartWorkoutState(0) + 36);

  return sub_1E5B8E170(v3, a1);
}

uint64_t type metadata accessor for DynamicStartWorkoutState(uint64_t a1)
{
  result = qword_1EE2C6DD0;
  if (!qword_1EE2C6DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5B8E170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DynamicStartWorkoutState.sampleContentSessionState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DynamicStartWorkoutState(0) + 36);

  return sub_1E5B8E224(a1, v3);
}

uint64_t sub_1E5B8E224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DynamicStartWorkoutState.init(workoutIdentifier:locale:subscriptionState:sampleContentIdentifier:downloadState:sampleContentSessionState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  started = type metadata accessor for DynamicStartWorkoutState(0);
  v17 = started[5];
  v18 = sub_1E5BF64B4();
  (*(*(v18 - 8) + 32))(&a9[v17], a3, v18);
  a9[started[6]] = a4;
  v19 = &a9[started[7]];
  *v19 = a5;
  *(v19 + 1) = a6;
  sub_1E5B5F8D4(a8, &a9[started[9]], &qword_1ED03F2A8, &unk_1E5BFBDF0);
  return sub_1E5B5F8D4(a7, &a9[started[8]], &qword_1ED03E260, &qword_1E5BF9190);
}

unint64_t sub_1E5B8E3DC()
{
  v1 = *v0;
  v2 = 0x656C61636F6CLL;
  v3 = 0xD000000000000019;
  if (v1 == 4)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000017;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E5B8E4B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B8FB54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B8E4E4(uint64_t a1)
{
  v2 = sub_1E5B8F2E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B8E520(uint64_t a1)
{
  v2 = sub_1E5B8F2E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicStartWorkoutState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2B0, &qword_1E5BFBE00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B8F2E4();
  sub_1E5BF7524();
  v11[15] = 0;
  sub_1E5BF73E4();
  if (!v2)
  {
    started = type metadata accessor for DynamicStartWorkoutState(0);
    v11[14] = 1;
    sub_1E5BF64B4();
    sub_1E5B8F6C4(&qword_1ED03E5C8, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    sub_1E5BF7424();
    v11[13] = *(v3 + *(started + 24));
    v11[12] = 2;
    sub_1E5B8F338();
    sub_1E5BF7424();
    v11[11] = 3;
    sub_1E5BF73A4();
    v11[10] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
    sub_1E5B696FC(&qword_1ED03E5D8, MEMORY[0x1E6999B20]);
    sub_1E5BF7424();
    v11[9] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
    sub_1E5B8F38C(&qword_1ED03F2C8, MEMORY[0x1E6999B20]);
    sub_1E5BF7424();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DynamicStartWorkoutState.hash(into:)(uint64_t a1)
{
  sub_1E5BF6FE4();
  started = type metadata accessor for DynamicStartWorkoutState(0);
  sub_1E5BF64B4();
  sub_1E5B8F6C4(&qword_1ED03E5F0, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1E5BF6EF4();
  MEMORY[0x1E6937C10](*(v1 + *(started + 24)));
  if (*(v1 + *(started + 28) + 8))
  {
    sub_1E5BF74D4();
    sub_1E5BF6FE4();
  }

  else
  {
    sub_1E5BF74D4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  sub_1E5B69638();
  sub_1E5BF6DF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
  sub_1E5B8F4AC();
  return sub_1E5BF6DF4();
}

uint64_t DynamicStartWorkoutState.hashValue.getter()
{
  sub_1E5BF74B4();
  type metadata accessor for DynamicStartWorkoutState(0);
  sub_1E5B8F6C4(&qword_1ED03F2E8, type metadata accessor for DynamicStartWorkoutState, &protocol conformance descriptor for DynamicStartWorkoutState);
  sub_1E5BF6EF4();
  return sub_1E5BF7504();
}

uint64_t DynamicStartWorkoutState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
  MEMORY[0x1EEE9AC00](v27);
  v28 = &v26 - v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  MEMORY[0x1EEE9AC00](v29);
  v5 = &v26 - v4;
  v6 = sub_1E5BF64B4();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2F0, &qword_1E5BFBE08);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  started = type metadata accessor for DynamicStartWorkoutState(0);
  MEMORY[0x1EEE9AC00](started);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1E5B8F2E4();
  v33 = v11;
  v16 = v34;
  sub_1E5BF7514();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v34 = v5;
  v17 = v31;
  v42 = 0;
  v18 = v14;
  *v14 = sub_1E5BF7324();
  v14[1] = v19;
  v41 = 1;
  sub_1E5B8F6C4(&qword_1ED03E600, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  sub_1E5BF7364();
  (*(v30 + 32))(v14 + started[5], v8, v6);
  v39 = 2;
  sub_1E5B8F568();
  sub_1E5BF7364();
  *(v14 + started[6]) = v40;
  v38 = 3;
  v20 = sub_1E5BF72E4();
  v21 = (v14 + started[7]);
  *v21 = v20;
  v21[1] = v22;
  v37 = 4;
  sub_1E5B696FC(&qword_1ED03E610, MEMORY[0x1E6999B30]);
  v23 = v34;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v23, v18 + started[8], &qword_1ED03E260, &qword_1E5BF9190);
  v36 = 5;
  sub_1E5B8F38C(&qword_1ED03F300, MEMORY[0x1E6999B30]);
  v24 = v28;
  sub_1E5BF7364();
  (*(v17 + 8))(v33, v32);
  sub_1E5B5F8D4(v24, v18 + started[9], &qword_1ED03F2A8, &unk_1E5BFBDF0);
  sub_1E5B8F5BC(v18, v26);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return sub_1E5B8F620(v18);
}

uint64_t sub_1E5B8F064(uint64_t a1, uint64_t a2)
{
  sub_1E5BF6FE4();
  sub_1E5BF64B4();
  sub_1E5B8F6C4(&qword_1ED03E5F0, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1E5BF6EF4();
  MEMORY[0x1E6937C10](*(v2 + *(a2 + 24)));
  if (*(v2 + *(a2 + 28) + 8))
  {
    sub_1E5BF74D4();
    sub_1E5BF6FE4();
  }

  else
  {
    sub_1E5BF74D4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  sub_1E5B69638();
  sub_1E5BF6DF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
  sub_1E5B8F4AC();
  return sub_1E5BF6DF4();
}

uint64_t _s14FitnessActions24DynamicStartWorkoutStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E5BF7444() & 1) == 0)
  {
    return 0;
  }

  started = type metadata accessor for DynamicStartWorkoutState(0);
  if ((MEMORY[0x1E6936BF0](a1 + started[5], a2 + started[5]) & 1) == 0 || *(a1 + started[6]) != *(a2 + started[6]))
  {
    return 0;
  }

  v6 = started[7];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_1E5BF7444() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  sub_1E5B695CC();
  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  sub_1E5B8F8A8();

  return sub_1E5BF6DE4();
}

unint64_t sub_1E5B8F2E4()
{
  result = qword_1ED03F2B8;
  if (!qword_1ED03F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F2B8);
  }

  return result;
}

unint64_t sub_1E5B8F338()
{
  result = qword_1ED03F2C0;
  if (!qword_1ED03F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F2C0);
  }

  return result;
}

uint64_t sub_1E5B8F38C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
    sub_1E5B8F404();
    sub_1E5B8F458();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5B8F404()
{
  result = qword_1ED03F2D0;
  if (!qword_1ED03F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F2D0);
  }

  return result;
}

unint64_t sub_1E5B8F458()
{
  result = qword_1ED03F2D8;
  if (!qword_1ED03F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F2D8);
  }

  return result;
}

unint64_t sub_1E5B8F4AC()
{
  result = qword_1ED03F2E0;
  if (!qword_1ED03F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F2E0);
  }

  return result;
}

uint64_t sub_1E5B8F500(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E5B8F568()
{
  result = qword_1ED03F2F8;
  if (!qword_1ED03F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F2F8);
  }

  return result;
}

uint64_t sub_1E5B8F5BC(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for DynamicStartWorkoutState(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_1E5B8F620(uint64_t a1)
{
  started = type metadata accessor for DynamicStartWorkoutState(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_1E5B8F6C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E5B8F734(uint64_t a1)
{
  sub_1E5BF64B4();
  if (v1 <= 0x3F)
  {
    sub_1E5B7D23C();
    if (v2 <= 0x3F)
    {
      sub_1E5B8F848(319, &qword_1EE2C6280, sub_1E5B695CC, &type metadata for DownloadStatus);
      if (v3 <= 0x3F)
      {
        sub_1E5B8F848(319, &qword_1ED03F308, sub_1E5B8F8A8, &type metadata for SampleContentSessionStatus);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E5B8F848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1E5BF6E04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1E5B8F8A8()
{
  result = qword_1ED03F310;
  if (!qword_1ED03F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F310);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicStartWorkoutState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DynamicStartWorkoutState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5B8FA50()
{
  result = qword_1ED03F318;
  if (!qword_1ED03F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F318);
  }

  return result;
}

unint64_t sub_1E5B8FAA8()
{
  result = qword_1ED03F320;
  if (!qword_1ED03F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F320);
  }

  return result;
}

unint64_t sub_1E5B8FB00()
{
  result = qword_1ED03F328;
  if (!qword_1ED03F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F328);
  }

  return result;
}

uint64_t sub_1E5B8FB54(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E5C07A80 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5C07B20 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5C07900 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xED00006574617453 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E5C07B40 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E5BF7444();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E5B8FD70()
{
  v1 = 0x6269726373627573;
  if (*v0 != 1)
  {
    v1 = 0x7263736275736E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1E5B8FDD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B90580(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B8FE00(uint64_t a1)
{
  v2 = sub_1E5B90360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B8FE3C(uint64_t a1)
{
  v2 = sub_1E5B90360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B8FE78(uint64_t a1)
{
  v2 = sub_1E5B90408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B8FEB4(uint64_t a1)
{
  v2 = sub_1E5B90408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B8FEF0(uint64_t a1)
{
  v2 = sub_1E5B9045C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B8FF2C(uint64_t a1)
{
  v2 = sub_1E5B9045C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B8FF68(uint64_t a1)
{
  v2 = sub_1E5B903B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B8FFA4(uint64_t a1)
{
  v2 = sub_1E5B903B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SubscriptionState.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F330, &qword_1E5BFC010);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F338, &qword_1E5BFC018);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F340, &qword_1E5BFC020);
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F348, &qword_1E5BFC028);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B90360();
  sub_1E5BF7524();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1E5B90408();
      sub_1E5BF7394();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1E5B903B4();
      v16 = v22;
      sub_1E5BF7394();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1E5B9045C();
    sub_1E5BF7394();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

unint64_t sub_1E5B90360()
{
  result = qword_1ED03F350;
  if (!qword_1ED03F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F350);
  }

  return result;
}

unint64_t sub_1E5B903B4()
{
  result = qword_1ED03F358;
  if (!qword_1ED03F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F358);
  }

  return result;
}

unint64_t sub_1E5B90408()
{
  result = qword_1ED03F360;
  if (!qword_1ED03F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F360);
  }

  return result;
}

unint64_t sub_1E5B9045C()
{
  result = qword_1ED03F368;
  if (!qword_1ED03F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F368);
  }

  return result;
}

uint64_t sub_1E5B904C8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5B906A4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SubscriptionState.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B90580(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEA00000000006465 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7263736275736E75 && a2 == 0xEC00000064656269)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

uint64_t sub_1E5B906A4(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3C0, &qword_1E5BFC450);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3C8, &qword_1E5BFC458);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3D0, &qword_1E5BFC460);
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3D8, &qword_1E5BFC468);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E5B90360();
  v13 = v34;
  sub_1E5BF7514();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_1E5BF7374();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_1E5B7FB04();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1E5B90408();
          sub_1E5BF72C4();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v35);
          return v9;
        }

        v40 = 2;
        sub_1E5B903B4();
        v24 = v11;
        sub_1E5BF72C4();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1E5B9045C();
        v24 = v11;
        sub_1E5BF72C4();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_1E5BF7284();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
    *v22 = &type metadata for SubscriptionState;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v9;
}

unint64_t sub_1E5B90C18()
{
  result = qword_1ED03F370;
  if (!qword_1ED03F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F370);
  }

  return result;
}

unint64_t sub_1E5B90CC0()
{
  result = qword_1ED03F378;
  if (!qword_1ED03F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F378);
  }

  return result;
}

unint64_t sub_1E5B90D18()
{
  result = qword_1ED03F380;
  if (!qword_1ED03F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F380);
  }

  return result;
}

unint64_t sub_1E5B90D70()
{
  result = qword_1ED03F388;
  if (!qword_1ED03F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F388);
  }

  return result;
}

unint64_t sub_1E5B90DC8()
{
  result = qword_1ED03F390;
  if (!qword_1ED03F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F390);
  }

  return result;
}

unint64_t sub_1E5B90E20()
{
  result = qword_1ED03F398;
  if (!qword_1ED03F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F398);
  }

  return result;
}

unint64_t sub_1E5B90E78()
{
  result = qword_1ED03F3A0;
  if (!qword_1ED03F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F3A0);
  }

  return result;
}

unint64_t sub_1E5B90ED0()
{
  result = qword_1ED03F3A8;
  if (!qword_1ED03F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F3A8);
  }

  return result;
}

unint64_t sub_1E5B90F28()
{
  result = qword_1ED03F3B0;
  if (!qword_1ED03F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F3B0);
  }

  return result;
}

unint64_t sub_1E5B90F80()
{
  result = qword_1ED03F3B8;
  if (!qword_1ED03F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F3B8);
  }

  return result;
}

uint64_t sub_1E5B91008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5BF7444();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5B91094(uint64_t a1)
{
  v2 = sub_1E5B9135C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B910D0(uint64_t a1)
{
  v2 = sub_1E5B9135C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B9110C(uint64_t a1)
{
  v2 = sub_1E5B913B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B91148(uint64_t a1)
{
  v2 = sub_1E5B913B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicStartWorkoutAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3E0, &qword_1E5BFC470);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3E8, &qword_1E5BFC478);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B9135C();
  sub_1E5BF7524();
  sub_1E5B913B0();
  sub_1E5BF7394();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1E5B9135C()
{
  result = qword_1EE2C69E0;
  if (!qword_1EE2C69E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C69E0);
  }

  return result;
}

unint64_t sub_1E5B913B0()
{
  result = qword_1EE2C69C8;
  if (!qword_1EE2C69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C69C8);
  }

  return result;
}

uint64_t DynamicStartWorkoutAction.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3F0, &qword_1E5BFC480);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3F8, &unk_1E5BFC488);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B9135C();
  sub_1E5BF7514();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_1E5BF7374();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_1E5B7FB14() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_1E5BF7284();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770);
    *v16 = &type metadata for DynamicStartWorkoutAction;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_1E5B913B0();
  sub_1E5BF72C4();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1E5B91768(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3E0, &qword_1E5BFC470);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F3E8, &qword_1E5BFC478);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B9135C();
  sub_1E5BF7524();
  sub_1E5B913B0();
  sub_1E5BF7394();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t DynamicStartWorkoutAction.hashValue.getter()
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](0);
  return sub_1E5BF7504();
}

unint64_t sub_1E5B919B0()
{
  result = qword_1ED03F400;
  if (!qword_1ED03F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F400);
  }

  return result;
}

unint64_t sub_1E5B91A38()
{
  result = qword_1ED03F408;
  if (!qword_1ED03F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F408);
  }

  return result;
}

unint64_t sub_1E5B91A90()
{
  result = qword_1EE2C69B8;
  if (!qword_1EE2C69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C69B8);
  }

  return result;
}

unint64_t sub_1E5B91AE8()
{
  result = qword_1EE2C69C0;
  if (!qword_1EE2C69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C69C0);
  }

  return result;
}

unint64_t sub_1E5B91B40()
{
  result = qword_1EE2C69D0;
  if (!qword_1EE2C69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C69D0);
  }

  return result;
}

unint64_t sub_1E5B91B98()
{
  result = qword_1EE2C69D8;
  if (!qword_1EE2C69D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C69D8);
  }

  return result;
}

uint64_t sub_1E5B91C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BookmarkButtonFeature(255, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();

  return sub_1E5BF6614();
}

uint64_t BookmarkButton.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  type metadata accessor for BookmarkButtonFeature(255, a3, a4, v11);
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();
  result = sub_1E5BF6604();
  *a5 = result;
  *(a5 + 8) = v13;
  *(a5 + 16) = v14 & 1;
  return result;
}

uint64_t sub_1E5B91D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1E5B5F77C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E310, &unk_1E5BFD4F0);
  sub_1E5B5FC8C(&qword_1ED03E318, &qword_1ED03E310, &unk_1E5BFD4F0, MEMORY[0x1E697D658]);
  sub_1E5BF6C84();
  v8 = a1 == 0;
  KeyPath = swift_getKeyPath();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E288, &qword_1E5BF7CD8);
  v12 = (a4 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = sub_1E5B939AC;
  v12[2] = v10;
  return result;
}

uint64_t sub_1E5B91F18(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E320, &qword_1E5BF7E80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E328, &unk_1E5BFD530);
  sub_1E5B5FC8C(&qword_1EE2C61F0, &qword_1ED03E328, &unk_1E5BFD530, MEMORY[0x1E69E6ED8]);
  swift_getOpaqueTypeConformance2();
  return sub_1E5BF6C24();
}

uint64_t sub_1E5B92048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE2CD210;
  v26[1] = a1;
  v26[2] = a2;
  v27 = a3 & 1;
  v16 = type metadata accessor for BookmarkButton(0, a4, a5, v14);
  v17 = v15;
  v21 = sub_1E5B91C00(v16, v18, v19, v20);
  MEMORY[0x1EEE9AC00](v21);
  v26[-2] = a4;
  v26[-1] = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a6 = result;
  *(a6 + 8) = v23;
  *(a6 + 16) = v24 & 1;
  *(a6 + 24) = v25;
  return result;
}

uint64_t sub_1E5B92244()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E328, &unk_1E5BFD530);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v6 - v1;
  v6[1] = sub_1E5BF6BE4();
  v3 = *MEMORY[0x1E697E6E8];
  v4 = sub_1E5BF66D4();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  sub_1E5B5F7AC();
  result = sub_1E5BF6F14();
  if (result)
  {
    sub_1E5B5FC8C(&qword_1EE2C61F0, &qword_1ED03E328, &unk_1E5BFD530, MEMORY[0x1E69E6ED8]);
    sub_1E5BF6A84();
    sub_1E5B5F804(v2, &qword_1ED03E328, &unk_1E5BFD530);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5B923D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-v4];
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  sub_1E5BF65C4();
  v9 = sub_1E5BF65E4();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  v10 = swift_allocObject();
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  v15 = v11;
  v16 = v12;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  sub_1E5B5F5EC(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
  sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810, MEMORY[0x1E697D658]);
  return sub_1E5BF6C74();
}

uint64_t sub_1E5B92588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE2CD210;
  v26[1] = a1;
  v26[2] = a2;
  v27 = a3 & 1;
  v16 = type metadata accessor for BookmarkButton(0, a4, a5, v14);
  v17 = v15;
  v21 = sub_1E5B91C00(v16, v18, v19, v20);
  MEMORY[0x1EEE9AC00](v21);
  v26[-2] = a4;
  v26[-1] = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a6 = result;
  *(a6 + 8) = v23;
  *(a6 + 16) = v24 & 1;
  *(a6 + 24) = v25;
  return result;
}

uint64_t BookmarkButton.body.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_1E5B9284C(v4, v5, v6, v7, v8, a2);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F410, &qword_1E5BFC750) + 36));
  *v10 = sub_1E5B93424;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;

  return sub_1E5B5F5EC(v4, v5);
}

uint64_t sub_1E5B9284C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  v99 = a6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F480, &qword_1E5BFC888);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v74 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v76 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v75 = &v74 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F478, &qword_1E5BFC880);
  MEMORY[0x1EEE9AC00](v84);
  v80 = &v74 - v13;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F488, &qword_1E5BFC890);
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v74 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E288, &qword_1E5BF7CD8);
  MEMORY[0x1EEE9AC00](v89);
  v81 = &v74 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F468, &qword_1E5BFC878);
  v17 = *(v16 - 8);
  v91 = v16;
  v92 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v74 - v18;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F458, &qword_1E5BFC870);
  MEMORY[0x1EEE9AC00](v98);
  v90 = &v74 - v19;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F490, &qword_1E5BFC898);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v74 - v20;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F448, &qword_1E5BFC868);
  MEMORY[0x1EEE9AC00](v97);
  v22 = &v74 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v74 - v27;
  v93 = a1;
  v94 = a2;
  v102 = a1;
  v103 = a2;
  v87 = a3;
  v29 = a3 & 1;
  v104 = v29;
  v31 = type metadata accessor for BookmarkButton(0, a4, a5, v30);
  sub_1E5B91C00(v31, v32, v33, v34);
  v85 = a4;
  v86 = a5;
  v100 = a4;
  v101 = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      if ((*v28 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v39 = *v28;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
      v41 = sub_1E5BF6464();
      (*(*(v41 - 8) + 8))(&v28[v40], v41);
      if (v39 != 1)
      {
LABEL_5:
        v42 = 1;
        v44 = v90;
        v43 = v91;
        v45 = v92;
        v46 = v95;
LABEL_20:
        (*(v45 + 56))(v44, v42, 1, v43);
        v65 = &qword_1ED03F458;
        v66 = &qword_1E5BFC870;
        sub_1E5B5F864(v44, v46, &qword_1ED03F458, &qword_1E5BFC870);
        swift_storeEnumTagMultiPayload();
        sub_1E5B9361C();
        sub_1E5B936D4();
        sub_1E5BF6864();
        v67 = v44;
        return sub_1E5B5F804(v67, v65, v66);
      }

LABEL_7:
      v102 = v93;
      v103 = v94;
      v47 = v87 & 1;
      v104 = v87 & 1;
      v48 = sub_1E5B91C00(v31, v36, v37, v38);
      MEMORY[0x1EEE9AC00](v48);
      v49 = v86;
      *(&v74 - 2) = v85;
      *(&v74 - 1) = v49;
      swift_getKeyPath();
      sub_1E5BF6E34();

      v50 = swift_getEnumCaseMultiPayload();
      v51 = v88;
      if (v50 <= 2)
      {
        if (!v50)
        {
          if ((*v25 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_15;
        }

        if (v50 == 1)
        {
          v52 = *v25;
          v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
          v54 = sub_1E5BF6464();
          (*(*(v54 - 8) + 8))(&v25[v53], v54);
          if (v52 != 1)
          {
LABEL_11:
            v56 = v93;
            v55 = v94;
            v102 = v93;
            v103 = v94;
            v57 = v87 & 1;
            v104 = v87 & 1;
            v58 = swift_allocObject();
            v59 = v86;
            *(v58 + 16) = v85;
            *(v58 + 24) = v59;
            *(v58 + 32) = v56;
            *(v58 + 40) = v55;
            *(v58 + 48) = v57;
            sub_1E5B5F5EC(v56, v55);
            v60 = v81;
            sub_1E5B91D9C(sub_1E5B9389C, v58, v81);

            sub_1E5B5F864(v60, v78, &qword_1ED03E288, &qword_1E5BF7CD8);
            swift_storeEnumTagMultiPayload();
            sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
            sub_1E5B5F144();
            v61 = v80;
            sub_1E5BF6864();
            sub_1E5B5F804(v60, &qword_1ED03E288, &qword_1E5BF7CD8);
LABEL_16:
            v44 = v90;
            v43 = v91;
            sub_1E5B5F864(v61, v83, &qword_1ED03F478, &qword_1E5BFC880);
            swift_storeEnumTagMultiPayload();
            v99 = sub_1E5B5F144();
            sub_1E5B937E4();
            v71 = v61;
            v51 = v88;
            sub_1E5BF6864();
            sub_1E5B5F804(v71, &qword_1ED03F478, &qword_1E5BFC880);
LABEL_19:
            v46 = v95;
            sub_1E5B58798(v51, v44);
            v42 = 0;
            v45 = v92;
            goto LABEL_20;
          }

LABEL_15:
          v102 = v93;
          v103 = v94;
          v104 = v87 & 1;
          v68 = v75;
          sub_1E5B923D8(v31);
          v69 = v76;
          v70 = v79;
          (*(v76 + 16))(v78, v68, v79);
          swift_storeEnumTagMultiPayload();
          sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
          sub_1E5B5F144();
          v61 = v80;
          sub_1E5BF6864();
          (*(v69 + 8))(v68, v70);
          goto LABEL_16;
        }

        sub_1E5B5F804(v25, &qword_1ED03E238, &unk_1E5BF8A10);
      }

      v102 = v93;
      v103 = v94;
      v104 = v47;
      v72 = v81;
      sub_1E5B91D9C(0, 0, v81);
      sub_1E5B5F864(v72, v83, &qword_1ED03E288, &qword_1E5BF7CD8);
      swift_storeEnumTagMultiPayload();
      sub_1E5B5F144();
      sub_1E5B937E4();
      sub_1E5BF6864();
      sub_1E5B5F804(v72, &qword_1ED03E288, &qword_1E5BF7CD8);
      v44 = v90;
      v43 = v91;
      goto LABEL_19;
    }

    sub_1E5B5F804(v28, &qword_1ED03E238, &unk_1E5BF8A10);
  }

  v102 = v93;
  v103 = v94;
  v104 = v29;
  sub_1E5B91D9C(0, 0, v22);
  KeyPath = swift_getKeyPath();
  v63 = swift_allocObject();
  *(v63 + 16) = 1;
  v64 = &v22[*(v97 + 36)];
  *v64 = KeyPath;
  v64[1] = sub_1E5B5F78C;
  v64[2] = v63;
  v65 = &qword_1ED03F448;
  v66 = &qword_1E5BFC868;
  sub_1E5B5F864(v22, v95, &qword_1ED03F448, &qword_1E5BFC868);
  swift_storeEnumTagMultiPayload();
  sub_1E5B9361C();
  sub_1E5B936D4();
  sub_1E5BF6864();
  v67 = v22;
  return sub_1E5B5F804(v67, v65, v66);
}

uint64_t sub_1E5B933C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = type metadata accessor for BookmarkButton(0, a4, a5, a4);
  sub_1E5B91C00(v6, v7, v8, v9);
  sub_1E5BF6E44();
}

unint64_t sub_1E5B93480()
{
  result = qword_1ED03F418;
  if (!qword_1ED03F418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F410, &qword_1E5BFC750);
    sub_1E5B9350C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F418);
  }

  return result;
}

unint64_t sub_1E5B9350C()
{
  result = qword_1ED03F420;
  if (!qword_1ED03F420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F428, &qword_1E5BFC858);
    sub_1E5B93590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F420);
  }

  return result;
}

unint64_t sub_1E5B93590()
{
  result = qword_1ED03F430;
  if (!qword_1ED03F430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F438, &qword_1E5BFC860);
    sub_1E5B9361C();
    sub_1E5B936D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F430);
  }

  return result;
}

unint64_t sub_1E5B9361C()
{
  result = qword_1ED03F440;
  if (!qword_1ED03F440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F448, &qword_1E5BFC868);
    sub_1E5B5F144();
    sub_1E5B5FC8C(&qword_1ED03E2A0, &qword_1ED03E2A8, &qword_1E5BF7CE8, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F440);
  }

  return result;
}

unint64_t sub_1E5B936D4()
{
  result = qword_1ED03F450;
  if (!qword_1ED03F450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F458, &qword_1E5BFC870);
    sub_1E5B93758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F450);
  }

  return result;
}

unint64_t sub_1E5B93758()
{
  result = qword_1ED03F460;
  if (!qword_1ED03F460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F468, &qword_1E5BFC878);
    sub_1E5B5F144();
    sub_1E5B937E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F460);
  }

  return result;
}

unint64_t sub_1E5B937E4()
{
  result = qword_1ED03F470;
  if (!qword_1ED03F470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F478, &qword_1E5BFC880);
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
    sub_1E5B5F144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F470);
  }

  return result;
}

uint64_t sub_1E5B939B4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0xD000000000000017;
    if (v1 == 1)
    {
      v4 = 0xD000000000000023;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 0x6570704177656976;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001ALL;
    }

    if (*v0 <= 4u)
    {
      return 0xD000000000000012;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E5B93AB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B94C48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B93AE0(uint64_t a1)
{
  v2 = sub_1E5B949A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B93B1C(uint64_t a1)
{
  v2 = sub_1E5B949A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B93B58(uint64_t a1)
{
  v2 = sub_1E5B949FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B93B94(uint64_t a1)
{
  v2 = sub_1E5B949FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B93BD0(uint64_t a1)
{
  v2 = sub_1E5B94BA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B93C0C(uint64_t a1)
{
  v2 = sub_1E5B94BA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B93C48(uint64_t a1)
{
  v2 = sub_1E5B94A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B93C84(uint64_t a1)
{
  v2 = sub_1E5B94A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B93CC0(uint64_t a1)
{
  v2 = sub_1E5B94B4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B93CFC(uint64_t a1)
{
  v2 = sub_1E5B94B4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B93D5C(uint64_t a1)
{
  v2 = sub_1E5B94AA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B93D98(uint64_t a1)
{
  v2 = sub_1E5B94AA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B93DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7669746341776172 && a2 == 0xEF65707954797469)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5BF7444();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5B93E64(uint64_t a1)
{
  v2 = sub_1E5B94AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B93EA0(uint64_t a1)
{
  v2 = sub_1E5B94AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B93EDC(uint64_t a1)
{
  v2 = sub_1E5B94BF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B93F18(uint64_t a1)
{
  v2 = sub_1E5B94BF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentButtonAction.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v51 = a3;
  v52 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F498, &qword_1E5BFC930);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F4A0, &qword_1E5BFC938);
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F4A8, &qword_1E5BFC940);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F4B0, &qword_1E5BFC948);
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F4B8, &qword_1E5BFC950);
  v39 = *(v14 - 8);
  v40 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v35 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F4C0, &qword_1E5BFC958);
  v36 = *(v16 - 8);
  v37 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F4C8, &qword_1E5BFC960);
  v35 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F4D0, &qword_1E5BFC968);
  v53 = *(v22 - 8);
  v54 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v35 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B949A8();
  sub_1E5BF7524();
  if (!v51)
  {
    v58 = 3;
    sub_1E5B94AF8();
    v25 = v54;
    sub_1E5BF7394();
    v27 = v48;
    sub_1E5BF7414();
    (*(v47 + 8))(v13, v27);
    return (*(v53 + 8))(v24, v25);
  }

  if (v51 == 1)
  {
    v59 = 4;
    sub_1E5B94AA4();
    v25 = v54;
    sub_1E5BF7394();
    v26 = v50;
    sub_1E5BF7414();
    (*(v49 + 8))(v10, v26);
    return (*(v53 + 8))(v24, v25);
  }

  if (v52 > 1)
  {
    if (v52 != 2)
    {
      if (v52 == 3)
      {
        v60 = 5;
        sub_1E5B94A50();
        v28 = v41;
        v25 = v54;
        sub_1E5BF7394();
        v30 = v42;
        v29 = v43;
      }

      else
      {
        v61 = 6;
        sub_1E5B949FC();
        v28 = v44;
        v25 = v54;
        sub_1E5BF7394();
        v30 = v45;
        v29 = v46;
      }

      (*(v30 + 8))(v28, v29);
      return (*(v53 + 8))(v24, v25);
    }

    v57 = 2;
    sub_1E5B94B4C();
    v32 = v38;
    v31 = v54;
    sub_1E5BF7394();
    (*(v39 + 8))(v32, v40);
    return (*(v53 + 8))(v24, v31);
  }

  if (!v52)
  {
    v55 = 0;
    sub_1E5B94BF4();
    v31 = v54;
    sub_1E5BF7394();
    (*(v35 + 8))(v21, v19);
    return (*(v53 + 8))(v24, v31);
  }

  v56 = 1;
  sub_1E5B94BA0();
  v34 = v54;
  sub_1E5BF7394();
  (*(v36 + 8))(v18, v37);
  return (*(v53 + 8))(v24, v34);
}

uint64_t SampleContentButtonAction.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a2;
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x1E6937C10](4);
    }

    else
    {
      v3 = qword_1E5BFD1F0[a2];
    }
  }

  else
  {
    MEMORY[0x1E6937C10](3);
  }

  return MEMORY[0x1E6937C10](v3);
}

uint64_t SampleContentButtonAction.hashValue.getter(uint64_t a1, char a2)
{
  sub_1E5BF74B4();
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x1E6937C10](4);
    }

    else
    {
      a1 = qword_1E5BFD1F0[a1];
    }
  }

  else
  {
    MEMORY[0x1E6937C10](3);
  }

  MEMORY[0x1E6937C10](a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B94794@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5B94E98(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_1E5B947F0()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x1E6937C10](4);
    }

    else
    {
      v1 = qword_1E5BFD1F0[v1];
    }
  }

  else
  {
    MEMORY[0x1E6937C10](3);
  }

  return MEMORY[0x1E6937C10](v1);
}

uint64_t sub_1E5B94854(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1E5BF74B4();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1E6937C10](4);
    }

    else
    {
      v2 = qword_1E5BFD1F0[v2];
    }
  }

  else
  {
    MEMORY[0x1E6937C10](3);
  }

  MEMORY[0x1E6937C10](v2);
  return sub_1E5BF7504();
}

BOOL _s14FitnessActions25SampleContentButtonActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a4 == 1)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a4 != 2 || a3 != 1)
      {
        return 0;
      }
    }

    else if (a4 != 2 || a3)
    {
      return 0;
    }
  }

  else if (a1 == 2)
  {
    if (a4 != 2 || a3 != 2)
    {
      return 0;
    }
  }

  else if (a1 == 3)
  {
    if (a4 != 2 || a3 != 3)
    {
      return 0;
    }
  }

  else if (a4 != 2 || a3 != 4)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1E5B949A8()
{
  result = qword_1ED03F4D8;
  if (!qword_1ED03F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F4D8);
  }

  return result;
}

unint64_t sub_1E5B949FC()
{
  result = qword_1ED03F4E0;
  if (!qword_1ED03F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F4E0);
  }

  return result;
}

unint64_t sub_1E5B94A50()
{
  result = qword_1ED03F4E8;
  if (!qword_1ED03F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F4E8);
  }

  return result;
}

unint64_t sub_1E5B94AA4()
{
  result = qword_1ED03F4F0;
  if (!qword_1ED03F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F4F0);
  }

  return result;
}

unint64_t sub_1E5B94AF8()
{
  result = qword_1ED03F4F8;
  if (!qword_1ED03F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F4F8);
  }

  return result;
}

unint64_t sub_1E5B94B4C()
{
  result = qword_1ED03F500;
  if (!qword_1ED03F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F500);
  }

  return result;
}

unint64_t sub_1E5B94BA0()
{
  result = qword_1ED03F508;
  if (!qword_1ED03F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F508);
  }

  return result;
}

unint64_t sub_1E5B94BF4()
{
  result = qword_1ED03F510;
  if (!qword_1ED03F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F510);
  }

  return result;
}

uint64_t sub_1E5B94C48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001E5C07B80 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5C07BB0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5C07BD0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5C07BF0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5C07C10 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E5C07C30 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E5BF7444();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1E5B94E98(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F5B8, &qword_1E5BFD1B0);
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v63 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F5C0, &qword_1E5BFD1B8);
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F5C8, &qword_1E5BFD1C0);
  v7 = *(v6 - 8);
  v53 = v6;
  v54 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F5D0, &qword_1E5BFD1C8);
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F5D8, &qword_1E5BFD1D0);
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v43 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F5E0, &qword_1E5BFD1D8);
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F5E8, &qword_1E5BFD1E0);
  v46 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F5F0, &qword_1E5BFD1E8);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v43 - v20;
  v22 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1E5B949A8();
  v23 = v65;
  sub_1E5BF7514();
  if (v23)
  {
    goto LABEL_10;
  }

  v24 = v17;
  v44 = v15;
  v45 = v14;
  v26 = v61;
  v25 = v62;
  v27 = v63;
  v65 = v19;
  v28 = sub_1E5BF7374();
  v29 = (2 * *(v28 + 16)) | 1;
  v66 = v28;
  v67 = v28 + 32;
  v68 = 0;
  v69 = v29;
  v30 = sub_1E5B7FB08();
  if (v30 == 7 || v68 != v69 >> 1)
  {
    v19 = sub_1E5BF7284();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770);
    *v34 = &type metadata for SampleContentButtonAction;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v19 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v65 + 8))(v21, v18);
    swift_unknownObjectRelease();
LABEL_10:
    v42 = v64;
    goto LABEL_11;
  }

  if (v30 <= 2u)
  {
    if (v30)
    {
      if (v30 == 1)
      {
        v70 = 1;
        sub_1E5B94BA0();
        v36 = v45;
        sub_1E5BF72C4();
        (*(v47 + 8))(v36, v48);
        (*(v65 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v19 = 1;
        v42 = v64;
        goto LABEL_11;
      }

      v70 = 2;
      sub_1E5B94B4C();
      v39 = v60;
      sub_1E5BF72C4();
      (*(v49 + 8))(v39, v50);
      (*(v65 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v19 = 2;
    }

    else
    {
      v70 = 0;
      sub_1E5B94BF4();
      sub_1E5BF72C4();
      (*(v46 + 8))(v24, v44);
      (*(v65 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v19 = 0;
    }

    v42 = v64;
    goto LABEL_11;
  }

  if (v30 > 4u)
  {
    v38 = v64;
    v37 = v65;
    if (v30 == 5)
    {
      v70 = 5;
      sub_1E5B94A50();
      sub_1E5BF72C4();
      (*(v55 + 8))(v25, v56);
      (*(v37 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v19 = 3;
    }

    else
    {
      v70 = 6;
      sub_1E5B949FC();
      sub_1E5BF72C4();
      (*(v57 + 8))(v27, v58);
      (*(v37 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v19 = 4;
    }

    v42 = v38;
  }

  else
  {
    v31 = v65;
    if (v30 == 3)
    {
      v70 = 3;
      sub_1E5B94AF8();
      sub_1E5BF72C4();
      v32 = v52;
      v19 = sub_1E5BF7354();
      (*(v51 + 8))(v26, v32);
    }

    else
    {
      v70 = 4;
      sub_1E5B94AA4();
      v40 = v59;
      sub_1E5BF72C4();
      v41 = v53;
      v19 = sub_1E5BF7354();
      (*(v54 + 8))(v40, v41);
    }

    (*(v31 + 8))(v21, v18);
    swift_unknownObjectRelease();
    v42 = v64;
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v19;
}

unint64_t sub_1E5B95930()
{
  result = qword_1ED03F518;
  if (!qword_1ED03F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F518);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SampleContentButtonAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SampleContentButtonAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5B95A24(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1E5B95A3C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1E5B95AE8()
{
  result = qword_1ED03F520;
  if (!qword_1ED03F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F520);
  }

  return result;
}

unint64_t sub_1E5B95B40()
{
  result = qword_1ED03F528;
  if (!qword_1ED03F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F528);
  }

  return result;
}

unint64_t sub_1E5B95B98()
{
  result = qword_1ED03F530;
  if (!qword_1ED03F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F530);
  }

  return result;
}

unint64_t sub_1E5B95BF0()
{
  result = qword_1ED03F538;
  if (!qword_1ED03F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F538);
  }

  return result;
}

unint64_t sub_1E5B95C48()
{
  result = qword_1ED03F540;
  if (!qword_1ED03F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F540);
  }

  return result;
}

unint64_t sub_1E5B95CA0()
{
  result = qword_1ED03F548;
  if (!qword_1ED03F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F548);
  }

  return result;
}

unint64_t sub_1E5B95CF8()
{
  result = qword_1ED03F550;
  if (!qword_1ED03F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F550);
  }

  return result;
}

unint64_t sub_1E5B95D50()
{
  result = qword_1ED03F558;
  if (!qword_1ED03F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F558);
  }

  return result;
}

unint64_t sub_1E5B95DA8()
{
  result = qword_1ED03F560;
  if (!qword_1ED03F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F560);
  }

  return result;
}

unint64_t sub_1E5B95E00()
{
  result = qword_1ED03F568;
  if (!qword_1ED03F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F568);
  }

  return result;
}

unint64_t sub_1E5B95E58()
{
  result = qword_1ED03F570;
  if (!qword_1ED03F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F570);
  }

  return result;
}

unint64_t sub_1E5B95EB0()
{
  result = qword_1ED03F578;
  if (!qword_1ED03F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F578);
  }

  return result;
}

unint64_t sub_1E5B95F08()
{
  result = qword_1ED03F580;
  if (!qword_1ED03F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F580);
  }

  return result;
}

unint64_t sub_1E5B95F60()
{
  result = qword_1ED03F588;
  if (!qword_1ED03F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F588);
  }

  return result;
}

unint64_t sub_1E5B95FB8()
{
  result = qword_1ED03F590;
  if (!qword_1ED03F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F590);
  }

  return result;
}

unint64_t sub_1E5B96010()
{
  result = qword_1ED03F598;
  if (!qword_1ED03F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F598);
  }

  return result;
}

unint64_t sub_1E5B96068()
{
  result = qword_1ED03F5A0;
  if (!qword_1ED03F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F5A0);
  }

  return result;
}

unint64_t sub_1E5B960C0()
{
  result = qword_1ED03F5A8;
  if (!qword_1ED03F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F5A8);
  }

  return result;
}

unint64_t sub_1E5B96118()
{
  result = qword_1ED03F5B0;
  if (!qword_1ED03F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F5B0);
  }

  return result;
}

__n128 SampleContentStartButton.init(store:labelContent:layout:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  result = *a4;
  v12 = *(a4 + 16);
  *(a5 + 24) = *a4;
  *a5 = sub_1E5B62F34;
  *(a5 + 8) = v10;
  *(a5 + 16) = 0;
  *(a5 + 17) = v9;
  *(a5 + 40) = v12;
  *(a5 + 56) = *(a4 + 32);
  return result;
}

uint64_t sub_1E5B961F8@<X0>(uint64_t a3@<X8>)
{
  sub_1E5B81070();

  result = sub_1E5BF69E4();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1E5B96264@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v49 = a2;
  v51 = a1;
  v58 = a4;
  v59 = sub_1E5BF6EE4();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5BF6E84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5BF6EA4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6D8, &qword_1E5BFD4B8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v52 = &v42 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E530, &qword_1E5BF8830);
  v47 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v46 = &v42 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F680, &unk_1E5BFD288);
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v60 = &v42 - v13;
  v14 = sub_1E5BF64B4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v4;
  LOBYTE(v64[0]) = *(v4 + 17);
  v18 = *v4;
  v44 = *(v4 + 8);
  v45 = v18;
  v43 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v19 = v48;
  v20 = WorkoutMediaType.localizedTitle(labelContent:rawActivityType:locale:)(v64, v48, v17, v49);
  v22 = v21;
  (*(v15 + 8))(v17, v14);
  sub_1E5B989E0(v42, v64);
  v23 = swift_allocObject();
  v24 = v64[1];
  *(v23 + 16) = v64[0];
  *(v23 + 32) = v24;
  v25 = v64[3];
  *(v23 + 48) = v64[2];
  *(v23 + 64) = v25;
  *(v23 + 80) = v19;
  v62 = v20;
  v63 = v22;
  v26 = v22;
  v27 = v46;
  sub_1E5BF6C84();
  v28 = sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830, MEMORY[0x1E697D680]);
  v29 = v61;
  sub_1E5BF69F4();
  (*(v47 + 8))(v27, v29);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v30 = v51;
  sub_1E5BF6E94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6E0, &qword_1E5BFD4E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5BFD220;
  *(inited + 32) = 1701667182;
  v32 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v20;
  *(inited + 56) = v26;
  *(inited + 72) = v32;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x6E6F74747562;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v32;
  *(inited + 128) = 0x6973736572706D69;
  v33 = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v30;
  *(inited + 168) = v33;
  *(inited + 176) = 0x657079546469;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  *(inited + 216) = v32;
  *(inited + 224) = 0x54746E65746E6F63;
  *(inited + 232) = 0xEB00000000657079;
  *(inited + 240) = 0x74756F6B726F77;
  *(inited + 248) = 0xE700000000000000;
  *(inited + 264) = v32;
  *(inited + 272) = 0xD000000000000013;
  *(inited + 312) = v32;
  *(inited + 280) = 0x80000001E5C07C50;
  *(inited + 288) = 1701147238;
  *(inited + 296) = 0xE400000000000000;
  sub_1E5BA717C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6E8, &qword_1E5BFD4E8);
  swift_arrayDestroy();
  sub_1E5BF6E74();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1E5BA717C(MEMORY[0x1E69E7CC0]);
  sub_1E5BA717C(v34);
  v35 = v52;
  sub_1E5BF6EB4();
  v36 = sub_1E5BF6EC4();
  v37 = v35;
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v38 = v56;
  sub_1E5BF6ED4();
  *&v64[0] = v61;
  *(&v64[0] + 1) = v28;
  swift_getOpaqueTypeConformance2();
  v39 = v53;
  v40 = v60;
  sub_1E5BF6A04();
  (*(v57 + 8))(v38, v59);
  sub_1E5B5F804(v37, &qword_1ED03F6D8, &qword_1E5BFD4B8);
  return (*(v55 + 8))(v40, v39);
}

uint64_t sub_1E5B96A84(uint64_t *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  sub_1E5BF6E44();
}

uint64_t SampleContentStartButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F5F8, &qword_1E5BFD240);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v12 - v5;
  sub_1E5B96CD8(v2, v12 - v5);
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  *&v12[0] = sub_1E5BF6B94();
  sub_1E5B984A4();
  sub_1E5B9898C();
  sub_1E5BF6A44();

  sub_1E5B5F804(v6, &qword_1ED03F5F8, &qword_1E5BFD240);
  sub_1E5B989E0(v2, v12);
  v7 = swift_allocObject();
  v8 = v12[1];
  *(v7 + 1) = v12[0];
  *(v7 + 2) = v8;
  v9 = v12[3];
  *(v7 + 3) = v12[2];
  *(v7 + 4) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F688, &qword_1E5BFD298);
  v11 = (a1 + *(result + 36));
  *v11 = sub_1E5B98A18;
  v11[1] = v7;
  v11[2] = 0;
  v11[3] = 0;
  return result;
}

uint64_t sub_1E5B96CD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F668, &qword_1E5BFD278);
  v54 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v53 = &v52 - v3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F698, &qword_1E5BFD3B8);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v52 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F650, &qword_1E5BFD268);
  MEMORY[0x1EEE9AC00](v57);
  v55 = (&v52 - v5);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F640, &qword_1E5BFD260);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v52 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F630, &qword_1E5BFD258);
  MEMORY[0x1EEE9AC00](v73);
  v64 = &v52 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6A0, &unk_1E5BFD3C0);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v52 - v10;
  v66 = sub_1E5BF64B4();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F620, &qword_1E5BFD250);
  v68 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  v69 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    v18 = *(v16 + 1);
    v19 = *(v16 + 4);
    v68 = *(v16 + 3);
    v20 = v16[40];
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5B5F804(v16, &qword_1ED03E950, &unk_1E5BF95F0);
LABEL_11:
    LOBYTE(v82) = *(v69 + 17);
    sub_1E5BF6614();
    swift_getKeyPath();
    sub_1E5BF6E34();

    WorkoutMediaType.localizedTitle(labelContent:rawActivityType:locale:)(&v82, 3000, v12, 0);
    v39 = (*(v65 + 8))(v12, v66);
    MEMORY[0x1EEE9AC00](v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6B8, &qword_1E5BFD468);
    sub_1E5B5FC8C(&qword_1ED03F6C0, &qword_1ED03F6B8, &qword_1E5BFD468, MEMORY[0x1E697D658]);
    v40 = v67;
    sub_1E5BF6C84();

    v41 = v68;
    v42 = v71;
    (*(v68 + 16))(v72, v40, v71);
    swift_storeEnumTagMultiPayload();
    sub_1E5B5FC8C(&qword_1ED03F618, &qword_1ED03F620, &qword_1E5BFD250, MEMORY[0x1E697D680]);
    sub_1E5B985E0();
    sub_1E5BF6864();
    return (*(v41 + 8))(v40, v42);
  }

  v18 = *(v16 + 1);
  v19 = *(v16 + 4);
  v68 = *(v16 + 3);
  v20 = v16[40];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E970, &qword_1E5BFD440) + 48);
  v22 = sub_1E5BF6464();
  (*(*(v22 - 8) + 8))(&v16[v21], v22);
LABEL_6:
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v23 = sub_1E5BEF624(v20, v82);

  if (v23)
  {
    v24 = v69;
    sub_1E5B989E0(v69, &v82);
    sub_1E5B989E0(v24, v81);
    sub_1E5B98C08((v24 + 3), &v76);
    if (*(&v77 + 1))
    {
      sub_1E5B98CE4(&v76, v80);
      v25 = __swift_project_boxed_opaque_existential_1(v80, v80[3]);
      v26 = MEMORY[0x1EEE9AC00](v25);
      (*(v28 + 16))(&v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
      v29 = sub_1E5BF6D94();
      v69 = v18;
      v30 = v55;
      *v55 = v29;
      v66 = *(v57 + 44);

      v67 = v19;
      v75 = sub_1E5BA6E58(v19);
      swift_getKeyPath();
      sub_1E5B989E0(v81, &v76);
      v31 = swift_allocObject();
      v32 = v77;
      *(v31 + 16) = v76;
      *(v31 + 32) = v32;
      v33 = v79;
      *(v31 + 48) = v78;
      *(v31 + 64) = v33;
      *(v31 + 80) = v20;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_1E5B98E00;
      *(v34 + 24) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6B0, &qword_1E5BFD438);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F678, &qword_1E5BFD280);
      sub_1E5B5FC8C(&qword_1EE2C6228, &qword_1ED03F6B0, &qword_1E5BFD438, MEMORY[0x1E69E6338]);
      sub_1E5B9882C();
      sub_1E5BF6D44();

      sub_1E5B5F864(v30, v58, &qword_1ED03F650, &qword_1E5BFD268);
      swift_storeEnumTagMultiPayload();
      sub_1E5B986F0();
      sub_1E5B987A8();
      v35 = v59;
      sub_1E5BF6864();

      sub_1E5B98CB4(v81);
      sub_1E5B5F804(v30, &qword_1ED03F650, &qword_1E5BFD268);
      __swift_destroy_boxed_opaque_existential_1(v80);
    }

    else
    {

      sub_1E5B5F804(&v76, &qword_1ED03F6A8, &qword_1E5BFD410);
      v80[0] = sub_1E5BA6E58(v19);
      swift_getKeyPath();
      sub_1E5B989E0(&v82, &v76);
      v44 = swift_allocObject();
      v45 = v77;
      *(v44 + 16) = v76;
      *(v44 + 32) = v45;
      v46 = v79;
      *(v44 + 48) = v78;
      *(v44 + 64) = v46;
      *(v44 + 80) = v20;
      v47 = swift_allocObject();
      *(v47 + 16) = sub_1E5B98C78;
      *(v47 + 24) = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6B0, &qword_1E5BFD438);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F678, &qword_1E5BFD280);
      sub_1E5B5FC8C(&qword_1EE2C6228, &qword_1ED03F6B0, &qword_1E5BFD438, MEMORY[0x1E69E6338]);
      sub_1E5B9882C();
      v48 = v53;
      sub_1E5BF6D44();

      v49 = v54;
      v50 = v61;
      (*(v54 + 16))(v58, v48, v61);
      swift_storeEnumTagMultiPayload();
      sub_1E5B986F0();
      sub_1E5B987A8();
      v35 = v59;
      sub_1E5BF6864();

      sub_1E5B98CB4(v81);
      (*(v49 + 8))(v48, v50);
    }

    v51 = v60;
    sub_1E5B588C0(v35, v60);
    sub_1E5B98CB4(&v82);
    v38 = v64;
    sub_1E5B588C0(v51, v64);
    v36 = 0;
    v37 = v72;
  }

  else
  {

    v36 = 1;
    v37 = v72;
    v38 = v64;
  }

  (*(v62 + 56))(v38, v36, 1, v63);
  sub_1E5B5F864(v38, v37, &qword_1ED03F630, &qword_1E5BFD258);
  swift_storeEnumTagMultiPayload();
  sub_1E5B5FC8C(&qword_1ED03F618, &qword_1ED03F620, &qword_1E5BFD250, MEMORY[0x1E697D680]);
  sub_1E5B985E0();
  sub_1E5BF6864();
  return sub_1E5B5F804(v38, &qword_1ED03F630, &qword_1E5BFD258);
}

uint64_t sub_1E5B97C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v49 = a4;
  v48 = a2;
  v43 = a1;
  v53 = a5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6C8, &qword_1E5BFD470);
  v47 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v45 = &v39 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6D0, &qword_1E5BFD478);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v39 - v7;
  v8 = sub_1E5BF64B4();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F620, &qword_1E5BFD250);
  v46 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v44 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E968, &unk_1E5BF9620) + 48);
    v15 = sub_1E5BF6464();
    (*(*(v15 - 8) + 8))(&v13[v14], v15);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E960, &qword_1E5BFD4B0);
    (*(*(v16 - 8) + 8))(v13, v16);
    v17 = v45;
    sub_1E5B96264(v43, v49, v48, v45);
    v18 = v47;
    v19 = v54;
    (*(v47 + 16))(v52, v17, v54);
    swift_storeEnumTagMultiPayload();
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F680, &unk_1E5BFD288);
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E530, &qword_1E5BF8830);
    v22 = MEMORY[0x1E697D680];
    v23 = sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830, MEMORY[0x1E697D680]);
    v55 = v21;
    v56 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v55 = v20;
    v56 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1E5B5FC8C(&qword_1ED03F618, &qword_1ED03F620, &qword_1E5BFD250, v22);
    sub_1E5BF6864();
    return (*(v18 + 8))(v17, v19);
  }

  else
  {
    sub_1E5B5F804(v13, &qword_1ED03E948, &qword_1E5BFD480);
    LOBYTE(v55) = *(a3 + 17);
    sub_1E5BF6614();
    swift_getKeyPath();
    v26 = v40;
    sub_1E5BF6E34();

    v27 = WorkoutMediaType.localizedTitle(labelContent:rawActivityType:locale:)(&v55, v48, v26, v49);
    v29 = v28;
    v30 = (*(v41 + 8))(v26, v42);
    MEMORY[0x1EEE9AC00](v30);
    *(&v39 - 2) = v27;
    *(&v39 - 1) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6B8, &qword_1E5BFD468);
    sub_1E5B5FC8C(&qword_1ED03F6C0, &qword_1ED03F6B8, &qword_1E5BFD468, MEMORY[0x1E697D658]);
    v31 = v44;
    sub_1E5BF6C84();

    v32 = v46;
    v33 = v51;
    (*(v46 + 16))(v52, v31, v51);
    swift_storeEnumTagMultiPayload();
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F680, &unk_1E5BFD288);
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E530, &qword_1E5BF8830);
    v36 = MEMORY[0x1E697D680];
    v37 = sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830, MEMORY[0x1E697D680]);
    v55 = v35;
    v56 = v37;
    v38 = swift_getOpaqueTypeConformance2();
    v55 = v34;
    v56 = v38;
    swift_getOpaqueTypeConformance2();
    sub_1E5B5FC8C(&qword_1ED03F618, &qword_1ED03F620, &qword_1E5BFD250, v36);
    sub_1E5BF6864();
    return (*(v32 + 8))(v31, v33);
  }
}

uint64_t sub_1E5B983E4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  sub_1E5BF6E44();
}

unint64_t sub_1E5B984A4()
{
  result = qword_1ED03F600;
  if (!qword_1ED03F600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F5F8, &qword_1E5BFD240);
    sub_1E5B98528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F600);
  }

  return result;
}

unint64_t sub_1E5B98528()
{
  result = qword_1ED03F608;
  if (!qword_1ED03F608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F610, &qword_1E5BFD248);
    sub_1E5B5FC8C(&qword_1ED03F618, &qword_1ED03F620, &qword_1E5BFD250, MEMORY[0x1E697D680]);
    sub_1E5B985E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F608);
  }

  return result;
}

unint64_t sub_1E5B985E0()
{
  result = qword_1ED03F628;
  if (!qword_1ED03F628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F630, &qword_1E5BFD258);
    sub_1E5B98664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F628);
  }

  return result;
}

unint64_t sub_1E5B98664()
{
  result = qword_1ED03F638;
  if (!qword_1ED03F638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F640, &qword_1E5BFD260);
    sub_1E5B986F0();
    sub_1E5B987A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F638);
  }

  return result;
}

unint64_t sub_1E5B986F0()
{
  result = qword_1ED03F648;
  if (!qword_1ED03F648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F650, &qword_1E5BFD268);
    sub_1E5B5FC8C(&qword_1EE2C63C8, &qword_1ED03F658, &qword_1E5BFD270, MEMORY[0x1E697DDD0]);
    sub_1E5B987A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F648);
  }

  return result;
}

unint64_t sub_1E5B987A8()
{
  result = qword_1ED03F660;
  if (!qword_1ED03F660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F668, &qword_1E5BFD278);
    sub_1E5B9882C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F660);
  }

  return result;
}

unint64_t sub_1E5B9882C()
{
  result = qword_1ED03F670;
  if (!qword_1ED03F670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F678, &qword_1E5BFD280);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F680, &unk_1E5BFD288);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E530, &qword_1E5BF8830);
    v1 = MEMORY[0x1E697D680];
    sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E5B5FC8C(&qword_1ED03F618, &qword_1ED03F620, &qword_1E5BFD250, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F670);
  }

  return result;
}

unint64_t sub_1E5B9898C()
{
  result = qword_1EE2C6EA0;
  if (!qword_1EE2C6EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6EA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI6Layout_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E5B98A54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1E5B98AB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

unint64_t sub_1E5B98B24()
{
  result = qword_1ED03F690;
  if (!qword_1ED03F690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F688, &qword_1E5BFD298);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F5F8, &qword_1E5BFD240);
    sub_1E5B984A4();
    sub_1E5B9898C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F690);
  }

  return result;
}

uint64_t sub_1E5B98C08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6A8, &qword_1E5BFD410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B98CE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t objectdestroy_4Tm_0(uint64_t a1)
{
  sub_1E5B5C0A8(v1[2], v1[3]);
  if (v1[8])
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + 5);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5B98DE4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t static ActionButtonBuilder.downloadedStatusViewBuilder(locale:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1E5B5F77C(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E310, &unk_1E5BFD4F0);
  sub_1E5B5FC8C(&qword_1ED03E318, &qword_1ED03E310, &unk_1E5BFD4F0, MEMORY[0x1E697D658]);
  return sub_1E5BF6C84();
}

uint64_t sub_1E5B98F04(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E320, &qword_1E5BF7E80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E328, &unk_1E5BFD530);
  sub_1E5B5FC8C(&qword_1EE2C61F0, &qword_1ED03E328, &unk_1E5BFD530, MEMORY[0x1E69E6ED8]);
  swift_getOpaqueTypeConformance2();
  return sub_1E5BF6C24();
}

uint64_t sub_1E5B99030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5BF64B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE2CD210;
  (*(v5 + 16))(v7, a1, v4);
  v10 = v9;
  result = sub_1E5BF6FD4();
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1E5B991E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E328, &unk_1E5BFD530);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v6 - v1;
  v6[1] = sub_1E5BF6BE4();
  v3 = *MEMORY[0x1E697E6E8];
  v4 = sub_1E5BF66D4();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  sub_1E5B5F7AC();
  result = sub_1E5BF6F14();
  if (result)
  {
    sub_1E5B5FC8C(&qword_1EE2C61F0, &qword_1ED03E328, &unk_1E5BFD530, MEMORY[0x1E69E6ED8]);
    sub_1E5BF6A84();
    sub_1E5B99720(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ActionButtonBuilder.bookmarkedStatusViewBuilder(locale:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1E5B5F77C(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
  sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810, MEMORY[0x1E697D658]);
  return sub_1E5BF6C84();
}

uint64_t objectdestroyTm_3()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E5B99530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5BF64B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE2CD210;
  (*(v5 + 16))(v7, a1, v4);
  v10 = v9;
  result = sub_1E5BF69D4();
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_1E5B996D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6BE4();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B99720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E328, &unk_1E5BFD530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WorkoutMediaType.localizedTitle(labelContent:rawActivityType:locale:)(char *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = sub_1E5BF64B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v12 - 8);
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      if (*a1)
      {
        sub_1E5BF6F24();
        if (qword_1EE2C6208 == -1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_1E5BF6F24();
        if (qword_1EE2C6208 == -1)
        {
          goto LABEL_23;
        }
      }
    }

    else if (*a1)
    {
      sub_1E5BF6F24();
      if (qword_1EE2C6208 == -1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1E5BF6F24();
      if (qword_1EE2C6208 == -1)
      {
LABEL_23:
        v13 = qword_1EE2CD210;
        (*(v9 + 16))(v11, a3, v8);
        v14 = v13;
        return sub_1E5BF6FD4();
      }
    }

LABEL_32:
    swift_once();
    goto LABEL_23;
  }

  if (a4)
  {
    if (*a1)
    {
      sub_1E5BF6F24();
      if (qword_1EE2C6208 == -1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1E5BF6F24();
      if (qword_1EE2C6208 == -1)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_32;
  }

  if (a2 == 52)
  {
    if (*a1)
    {
      sub_1E5BF6F24();
      if (qword_1EE2C6208 == -1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1E5BF6F24();
      if (qword_1EE2C6208 == -1)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_32;
  }

  if (a2 == 37)
  {
    if (*a1)
    {
      sub_1E5BF6F24();
      if (qword_1EE2C6208 == -1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1E5BF6F24();
      if (qword_1EE2C6208 == -1)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_32;
  }

  v17 = *a1;
  return sub_1E5B99EA8(&v17, a3);
}

uint64_t sub_1E5B99EA8(_BYTE *a1, uint64_t a2)
{
  v4 = sub_1E5BF64B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v8 - 8);
  if (*a1)
  {
    sub_1E5BF6F24();
    if (qword_1EE2C6208 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v9 = qword_1EE2CD210;
  (*(v5 + 16))(v7, a2, v4);
  v10 = v9;
  return sub_1E5BF6FD4();
}

uint64_t SampleContentButtonEnvironment.init(resolveMarketingOffer:requestStartWorkout:requireAccount:requireNewSessionsAllowed:resolveWorkoutDetail:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

unint64_t sub_1E5B9A128()
{
  v1 = 0x6570704177656976;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x5474736575716572;
  }

  if (*v0)
  {
    v1 = 0x417373696D736964;
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

uint64_t sub_1E5B9A1C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B9AAF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B9A1EC(uint64_t a1)
{
  v2 = sub_1E5B9A880();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B9A228(uint64_t a1)
{
  v2 = sub_1E5B9A880();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B9A264(uint64_t a1)
{
  v2 = sub_1E5B9A97C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B9A2A0(uint64_t a1)
{
  v2 = sub_1E5B9A97C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B9A2DC(uint64_t a1)
{
  v2 = sub_1E5B9A8D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B9A318(uint64_t a1)
{
  v2 = sub_1E5B9A8D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B9A354(uint64_t a1)
{
  v2 = sub_1E5B9A9D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B9A390(uint64_t a1)
{
  v2 = sub_1E5B9A9D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B9A3CC(uint64_t a1)
{
  v2 = sub_1E5B9A928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B9A408(uint64_t a1)
{
  v2 = sub_1E5B9A928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CreatePlanAlertAction.encode(to:)(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6F0, &qword_1E5BFD5A0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6F8, &qword_1E5BFD5A8);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F700, &qword_1E5BFD5B0);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F708, &qword_1E5BFD5B8);
  v20 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F710, &qword_1E5BFD5C0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B9A880();
  sub_1E5BF7524();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_1E5B9A928();
      v9 = v23;
      sub_1E5BF7394();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_1E5B9A8D4();
      v9 = v26;
      sub_1E5BF7394();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_1E5B9A97C();
    sub_1E5BF7394();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_1E5B9A9D0();
  sub_1E5BF7394();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_1E5B9A880()
{
  result = qword_1ED03F718;
  if (!qword_1ED03F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F718);
  }

  return result;
}

unint64_t sub_1E5B9A8D4()
{
  result = qword_1ED03F720;
  if (!qword_1ED03F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F720);
  }

  return result;
}

unint64_t sub_1E5B9A928()
{
  result = qword_1ED03F728;
  if (!qword_1ED03F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F728);
  }

  return result;
}

unint64_t sub_1E5B9A97C()
{
  result = qword_1ED03F730;
  if (!qword_1ED03F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F730);
  }

  return result;
}

unint64_t sub_1E5B9A9D0()
{
  result = qword_1ED03F738;
  if (!qword_1ED03F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F738);
  }

  return result;
}

uint64_t CreatePlanAlertAction.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1);
  return sub_1E5BF7504();
}

void *sub_1E5B9AAAC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5B9AC70(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E5B9AAF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x417373696D736964 && a2 == 0xEC0000007472656CLL || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5C07EA0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5474736575716572 && a2 == 0xEF74754F64656D69)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5BF7444();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_1E5B9AC70(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F7A0, &qword_1E5BFDAC8);
  v34 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v31 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F7A8, &qword_1E5BFDAD0);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F7B0, &qword_1E5BFDAD8);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F7B8, &qword_1E5BFDAE0);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F7C0, &qword_1E5BFDAE8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E5B9A880();
  v15 = v43;
  sub_1E5BF7514();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_1E5BF7374();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_1E5B7FB10();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_1E5B9A97C();
        v29 = v33;
        sub_1E5BF72C4();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_1E5B9A9D0();
        v23 = v33;
        sub_1E5BF72C4();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_1E5B9A928();
      v28 = v33;
      sub_1E5BF72C4();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_1E5B9A8D4();
      v30 = v33;
      sub_1E5BF72C4();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_1E5BF7284();
  swift_allocError();
  v11 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770);
  *v11 = &type metadata for CreatePlanAlertAction;
  sub_1E5BF72D4();
  sub_1E5BF7274();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x1E69E6AF8], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v11;
}

unint64_t sub_1E5B9B2B4()
{
  result = qword_1ED03F740;
  if (!qword_1ED03F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F740);
  }

  return result;
}

unint64_t sub_1E5B9B36C()
{
  result = qword_1ED03F748;
  if (!qword_1ED03F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F748);
  }

  return result;
}

unint64_t sub_1E5B9B3C4()
{
  result = qword_1ED03F750;
  if (!qword_1ED03F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F750);
  }

  return result;
}

unint64_t sub_1E5B9B41C()
{
  result = qword_1ED03F758;
  if (!qword_1ED03F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F758);
  }

  return result;
}

unint64_t sub_1E5B9B474()
{
  result = qword_1ED03F760;
  if (!qword_1ED03F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F760);
  }

  return result;
}

unint64_t sub_1E5B9B4CC()
{
  result = qword_1ED03F768;
  if (!qword_1ED03F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F768);
  }

  return result;
}

unint64_t sub_1E5B9B524()
{
  result = qword_1ED03F770;
  if (!qword_1ED03F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F770);
  }

  return result;
}

unint64_t sub_1E5B9B57C()
{
  result = qword_1ED03F778;
  if (!qword_1ED03F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F778);
  }

  return result;
}

unint64_t sub_1E5B9B5D4()
{
  result = qword_1ED03F780;
  if (!qword_1ED03F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F780);
  }

  return result;
}

unint64_t sub_1E5B9B62C()
{
  result = qword_1ED03F788;
  if (!qword_1ED03F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F788);
  }

  return result;
}

unint64_t sub_1E5B9B684()
{
  result = qword_1ED03F790;
  if (!qword_1ED03F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F790);
  }

  return result;
}

unint64_t sub_1E5B9B6DC()
{
  result = qword_1ED03F798;
  if (!qword_1ED03F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F798);
  }

  return result;
}

uint64_t sub_1E5B9B748(uint64_t a1)
{
  v2 = sub_1E5B9BD38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B9B784(uint64_t a1)
{
  v2 = sub_1E5B9BD38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B9B7C0()
{
  if (*v0)
  {
    return 0x7463697274736572;
  }

  else
  {
    return 0x6465776F6C6C61;
  }
}

uint64_t sub_1E5B9B800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465776F6C6C61 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7463697274736572 && a2 == 0xEA00000000006465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5B9B8E4(uint64_t a1)
{
  v2 = sub_1E5B9BC90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B9B920(uint64_t a1)
{
  v2 = sub_1E5B9BC90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B9B95C(uint64_t a1)
{
  v2 = sub_1E5B9BCE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B9B998(uint64_t a1)
{
  v2 = sub_1E5B9BCE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentSessionStatus.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F7C8, &qword_1E5BFDAF0);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F7D0, &qword_1E5BFDAF8);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F7D8, &qword_1E5BFDB00);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B9BC90();
  sub_1E5BF7524();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1E5B9BCE4();
    sub_1E5BF7394();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1E5B9BD38();
    sub_1E5BF7394();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_1E5B9BC90()
{
  result = qword_1ED03F7E0;
  if (!qword_1ED03F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F7E0);
  }

  return result;
}

unint64_t sub_1E5B9BCE4()
{
  result = qword_1ED03F7E8;
  if (!qword_1ED03F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F7E8);
  }

  return result;
}

unint64_t sub_1E5B9BD38()
{
  result = qword_1ED03F7F0;
  if (!qword_1ED03F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F7F0);
  }

  return result;
}

uint64_t SampleContentSessionStatus.hashValue.getter(char a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1 & 1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B9BE18@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5B9BE64(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1E5B9BE64(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F830, &qword_1E5BFDE80);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F838, &qword_1E5BFDE88);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F840, &unk_1E5BFDE90);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B9BC90();
  v11 = v26;
  sub_1E5BF7514();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1E5BF7374();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1E5B7FB0C();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_1E5BF7284();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770);
    *v19 = &type metadata for SampleContentSessionStatus;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1E5B9BCE4();
    sub_1E5BF72C4();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1E5B9BD38();
    sub_1E5BF72C4();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_1E5B9C368()
{
  result = qword_1ED03F7F8;
  if (!qword_1ED03F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F7F8);
  }

  return result;
}

unint64_t sub_1E5B9C3C0()
{
  result = qword_1ED03F800;
  if (!qword_1ED03F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F800);
  }

  return result;
}

unint64_t sub_1E5B9C418()
{
  result = qword_1ED03F808;
  if (!qword_1ED03F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F808);
  }

  return result;
}

unint64_t sub_1E5B9C470()
{
  result = qword_1ED03F810;
  if (!qword_1ED03F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F810);
  }

  return result;
}

unint64_t sub_1E5B9C4C8()
{
  result = qword_1ED03F818;
  if (!qword_1ED03F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F818);
  }

  return result;
}

unint64_t sub_1E5B9C520()
{
  result = qword_1ED03F820;
  if (!qword_1ED03F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F820);
  }

  return result;
}

unint64_t sub_1E5B9C578()
{
  result = qword_1ED03F828;
  if (!qword_1ED03F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F828);
  }

  return result;
}

uint64_t sub_1E5B9C5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v29 = a1;
  v8 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v11 = sub_1E5BF69D4();
  v26 = v12;
  v27 = v11;
  v24 = v13;
  v25 = v14;
  sub_1E5BF6614();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4 & 1;
  sub_1E5B5F5EC(a2, a3);
  v16 = sub_1E5BF6D34();
  v23 = v22;
  v22[1] = v30;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F848, &unk_1E5BFDFA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E530, &qword_1E5BF8830);
  sub_1E5B5FC8C(&qword_1EE2C6328, &qword_1ED03F848, &unk_1E5BFDFA0, MEMORY[0x1E697FDF8]);
  sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830, MEMORY[0x1E697D680]);
  v18 = v24;
  v19 = v27;
  v20 = v26;
  sub_1E5BF6B04();
  sub_1E5B7AD08(v19, v20, v18 & 1);
}

uint64_t sub_1E5B9CA28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, _BYTE *a4@<X8>)
{
  v36 = a3;
  v37 = a2;
  v35 = a1;
  v39 = a4;
  v4 = sub_1E5BF6494();
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E790, &qword_1E5BF9150);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v32 - v19;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = (*(v10 + 48))(v20, 1, v9);
  if (result != 1)
  {
    sub_1E5B7AD6C(v20, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
    sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
    sub_1E5BF6614();
    swift_getKeyPath();
    sub_1E5BF6E34();

    v23 = v38;
    (*(v38 + 56))(v14, 0, 1, v4);
    v24 = *(v6 + 48);
    sub_1E5B7ADDC(v17, v8);
    sub_1E5B7ADDC(v14, &v8[v24]);
    v25 = *(v23 + 48);
    if (v25(v8, 1, v4) == 1)
    {
      sub_1E5B5F804(v14, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v17, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v25(&v8[v24], 1, v4) == 1)
      {
        result = sub_1E5B5F804(v8, &qword_1ED03E5E8, &unk_1E5BF9600);
        v26 = 1;
LABEL_10:
        v22 = v26 & 1;
        goto LABEL_11;
      }
    }

    else
    {
      v27 = v34;
      sub_1E5B7ADDC(v8, v34);
      if (v25(&v8[v24], 1, v4) != 1)
      {
        v28 = &v8[v24];
        v29 = v33;
        (*(v23 + 32))(v33, v28, v4);
        sub_1E5B7AE4C();
        v30 = v23;
        v26 = sub_1E5BF6F14();
        v31 = *(v30 + 8);
        v31(v29, v4);
        sub_1E5B5F804(v14, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v17, &qword_1ED03E5E8, &unk_1E5BF9600);
        v31(v27, v4);
        result = sub_1E5B5F804(v8, &qword_1ED03E5E8, &unk_1E5BF9600);
        goto LABEL_10;
      }

      sub_1E5B5F804(v14, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v17, &qword_1ED03E5E8, &unk_1E5BF9600);
      (*(v23 + 8))(v27, v4);
    }

    result = sub_1E5B5F804(v8, &qword_1ED03E790, &qword_1E5BF9150);
    v26 = 0;
    goto LABEL_10;
  }

  v22 = 0;
LABEL_11:
  *v39 = v22;
  return result;
}

uint64_t sub_1E5B9CF84()
{
  type metadata accessor for StartWorkoutButtonAction(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E5B9CFC8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12[-v7];
  sub_1E5BF65D4();
  v9 = sub_1E5BF65E4();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3 & 1;
  v13 = a1;
  v14 = a2;
  v15 = a3 & 1;
  sub_1E5B5F5EC(a1, a2);
  return sub_1E5BF6C74();
}

uint64_t sub_1E5B9D124(uint64_t a1, uint64_t a2, char a3)
{
  started = type metadata accessor for StartWorkoutButtonAction(0);
  MEMORY[0x1EEE9AC00](started);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_storeEnumTagMultiPayload();
  sub_1E5BF6E44();

  return sub_1E5B9D664(v5);
}

uint64_t sub_1E5B9D240@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t sub_1E5B9D428@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t sub_1E5B9D664(uint64_t a1)
{
  started = type metadata accessor for StartWorkoutButtonAction(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

id static NSBundle.actionsLocalization.getter()
{
  if (qword_1ED03E1D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1ED03F850;

  return v0;
}

void static NSBundle.actionsLocalization.setter(uint64_t a1)
{
  if (qword_1ED03E1D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1ED03F850;
  qword_1ED03F850 = a1;
}

uint64_t (*static NSBundle.actionsLocalization.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ED03E1D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1E5B9D89C(uint64_t a1, void *a2)
{
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  *a2 = result;
  return result;
}

uint64_t sub_1E5B9D8F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F858, qword_1E5BFE088);
  sub_1E5B9F514();

  return sub_1E5BF6614();
}

uint64_t sub_1E5B9D95C(uint64_t a1)
{
  swift_getFunctionTypeMetadata0();
  sub_1E5BF6544();
  sub_1E5BF6534();
  return v2;
}

uint64_t sub_1E5B9D9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a8;
  v18[8] = a9;
  v18[9] = a10;
  v18[10] = a1;
  v18[11] = a2;
  swift_getFunctionTypeMetadata1();
  return sub_1E5BF6524();
}

uint64_t (*sub_1E5B9DA7C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  swift_getFunctionTypeMetadata1();
  sub_1E5BF6544();
  sub_1E5BF6534();
  v3 = swift_allocObject();
  *(v3 + 16) = *(a1 + 16);
  *(v3 + 32) = v2;
  *(v3 + 40) = *(a1 + 40);
  *(v3 + 56) = *(a1 + 56);
  *(v3 + 72) = *(a1 + 72);
  *(v3 + 80) = v5;
  return sub_1E5B9F5E8;
}

uint64_t sub_1E5B9DB3C(uint64_t a1)
{
  swift_getFunctionTypeMetadata0();
  sub_1E5BF6544();
  sub_1E5BF6534();
  return v2;
}

uint64_t sub_1E5B9DB8C(uint64_t a1)
{
  swift_getFunctionTypeMetadata0();
  sub_1E5BF6544();
  sub_1E5BF6534();
  return v2;
}

uint64_t DynamicStartWorkoutView.init(store:startWorkoutActionViewBuilder:startSampleContentActionViewBuilder:marketingActionViewBuilder:sampleContentMarketingActionViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *a9 = sub_1E5B62F34;
  *(a9 + 8) = v22;
  *(a9 + 16) = 0;
  v30 = a12;
  v31 = a13;
  v32 = a14;
  v33 = a15;
  v34 = a16;
  v35 = a17;
  v36 = a18;
  v37 = a19;
  type metadata accessor for DynamicStartWorkoutView(0, &v30);

  v30 = a3;
  v31 = v23;
  swift_getFunctionTypeMetadata0();
  sub_1E5BF6524();

  sub_1E5B9D9AC(a5, a6, a12, a13, a14, a15, a16, a17, a18, a19);

  v30 = a7;
  v31 = a8;
  swift_getFunctionTypeMetadata0();
  sub_1E5BF6524();
  v30 = a10;
  v31 = a11;
  swift_getFunctionTypeMetadata0();
  sub_1E5BF6524();
}

uint64_t DynamicStartWorkoutView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v35 = *(a1 - 8);
  v37 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v32 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v6 + 32);
  sub_1E5BF6874();
  v42 = *(a1 + 16);
  v31[1] = sub_1E5BF6874();
  sub_1E5BF6874();
  v34 = sub_1E5BF6BD4();
  v39 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v31[0] = v31 - v7;
  v38 = sub_1E5BF66E4();
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v33 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v36 = v31 - v10;
  v44 = v42;
  v45 = v43;
  v12 = *(a1 + 56);
  v46 = *(a1 + 48);
  v11 = v46;
  v47 = v12;
  v14 = *(a1 + 64);
  v13 = *(a1 + 72);
  v48 = v14;
  v49 = v13;
  v50 = v3;
  v58 = v14;
  v59 = v13;
  WitnessTable = swift_getWitnessTable();
  v56 = v12;
  v57 = v11;
  v16 = swift_getWitnessTable();
  v54 = WitnessTable;
  v55 = v16;
  v17 = swift_getWitnessTable();
  sub_1E5BF6BC4();
  v18 = v35;
  v19 = v32;
  (*(v35 + 16))(v32, v3, a1);
  v20 = (*(v18 + 80) + 80) & ~*(v18 + 80);
  v21 = swift_allocObject();
  v22 = v43;
  *(v21 + 16) = v42;
  *(v21 + 32) = v22;
  *(v21 + 48) = v11;
  *(v21 + 56) = v12;
  *(v21 + 64) = v14;
  *(v21 + 72) = v13;
  (*(v18 + 32))(v21 + v20, v19, a1);
  v53 = v17;
  v23 = v34;
  v24 = swift_getWitnessTable();
  v25 = v33;
  v26 = v31[0];
  sub_1E5BF6B44();

  (*(v39 + 8))(v26, v23);
  v51 = v24;
  v52 = MEMORY[0x1E69805D0];
  v27 = v38;
  swift_getWitnessTable();
  v28 = v36;
  sub_1E5B64D48();
  v29 = *(v40 + 8);
  v29(v25, v27);
  sub_1E5B64D48();
  return (v29)(v28, v27);
}

uint64_t sub_1E5B9E29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v149 = a8;
  v150 = a7;
  v148 = a1;
  v147 = a9;
  v129 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v128 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v120 = &v119 - v17;
  v126 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v125 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v124 = &v119 - v22;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  MEMORY[0x1EEE9AC00](v131);
  v130 = (&v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v127 = &v119 - v25;
  v26 = sub_1E5BF6874();
  v134 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v133 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v132 = &v119 - v29;
  v136 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v135 = &v119 - v34;
  v123 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v122 = &v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v121 = &v119 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v119 - v40;
  v42 = sub_1E5BF6874();
  v139 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v138 = &v119 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v137 = &v119 - v45;
  v143 = v46;
  v145 = v26;
  v144 = sub_1E5BF6874();
  v142 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v141 = &v119 - v47;
  v168 = a2;
  v169 = a3;
  v140 = a4;
  v170 = a4;
  v171 = a5;
  v151 = a6;
  v172 = a6;
  v173 = v150;
  v174 = v149;
  v175 = a10;
  v146 = a10;
  started = type metadata accessor for DynamicStartWorkoutView(0, &v168);
  sub_1E5B9D8F0();
  swift_getKeyPath();
  sub_1E5BF6E34();

  if (v169)
  {

    sub_1E5B9D8F0();
    swift_getKeyPath();
    sub_1E5BF6E34();

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v49 = *v41;
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F860, &qword_1E5BFE128) + 48);
      v51 = sub_1E5BF6464();
      (*(*(v51 - 8) + 8))(&v41[v50], v51);
      v52 = v143;
      v53 = v141;
      v54 = v137;
      if ((v49 & 1) == 0)
      {
        sub_1E5B9DA7C(started);
        v56 = v55;
        sub_1E5B9D8F0();
        swift_getKeyPath();
        v57 = a5;
        sub_1E5BF6E34();

        v58 = *(v56 + 80);
        v168 = v152;
        v169 = v153;
        v59 = v122;
        v58(&v168);

        v60 = v121;
        v61 = v140;
        v62 = v149;
        sub_1E5B64D48();
        v63 = *(v123 + 8);
        v63(v59, v61);
        sub_1E5B64D48();
        v64 = v57;
        v65 = v146;
        sub_1E5BE14D8(v59, v61, v64, v62, v146);
        v63(v59, v61);
        v63(v60, v61);
LABEL_11:
        v156 = v62;
        v157 = v65;
        WitnessTable = swift_getWitnessTable();
        v87 = v138;
        sub_1E5B64D48();
        v88 = v150;
        v154 = v150;
        v155 = v151;
        v89 = v145;
        v90 = swift_getWitnessTable();
        sub_1E5BE14D8(v87, v52, v89, WitnessTable, v90);
        v91 = *(v139 + 8);
        v91(v87, v52);
        v92 = v54;
        v93 = v52;
        goto LABEL_20;
      }
    }

    else
    {
      sub_1E5B5F804(v41, &qword_1ED03F2A8, &unk_1E5BFBDF0);
      v52 = v143;
      v53 = v141;
      v54 = v137;
    }

    v81 = sub_1E5B9DB8C(started);
    v81();

    v82 = v135;
    v65 = v146;
    sub_1E5B64D48();
    v83 = *(v136 + 8);
    v83(v32, a5);
    sub_1E5B64D48();
    v84 = a5;
    v85 = a5;
    v62 = v149;
    sub_1E5BE15D0(v32, v140, v84, v149, v65);
    v83(v32, v85);
    v83(v82, v85);
    goto LABEL_11;
  }

  v66 = v128;
  v67 = v129;
  v140 = a3;
  v68 = a2;
  sub_1E5B9D8F0();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v69 = v168;
  sub_1E5B9D8F0();
  swift_getKeyPath();
  v70 = v127;
  sub_1E5BF6E34();

  v71 = v130;
  sub_1E5B9F578(v70, v130);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v75 = 0;
    v77 = 0;
    v80 = 1;
    v73 = v145;
    v53 = v141;
    v74 = v68;
  }

  else
  {
    v73 = v145;
    v53 = v141;
    v74 = a2;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v139 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0) + 48);
        v75 = *v71 | (*(v71 + 4) << 32);
        v76 = v71;
        v77 = *(v71 + 5);
        v78 = sub_1E5BF6464();
        v79 = v76 + v139;
        v74 = v68;
        (*(*(v78 - 8) + 8))(v79, v78);
        v80 = 0;
      }

      else
      {
        sub_1E5B5F804(v71, &qword_1ED03E260, &qword_1E5BF9190);
        v75 = 0;
        v77 = 0;
        v80 = 1;
      }
    }

    else
    {
      v80 = 0;
      v75 = *v71 | (*(v71 + 4) << 32);
      v77 = *(v71 + 5);
    }
  }

  v94 = v140;
  if (v69 == 1 || !(v80 & 1 | v77 & (v75 == 0)))
  {
    v103 = sub_1E5B9D95C(started);
    v104 = v125;
    v103();

    v105 = v124;
    v106 = v150;
    sub_1E5B64D48();
    v107 = *(v126 + 8);
    v107(v104, v94);
    sub_1E5B64D48();
    v99 = v132;
    v108 = v74;
    v88 = v106;
    v109 = v106;
    v97 = v151;
    sub_1E5BE14D8(v104, v94, v108, v109, v151);
    v107(v104, v94);
    v107(v105, v94);
  }

  else
  {
    v95 = sub_1E5B9DB3C(started);
    v95();

    v96 = v120;
    v97 = v151;
    sub_1E5B64D48();
    v98 = *(v67 + 8);
    v98(v66, v74);
    sub_1E5B64D48();
    v99 = v132;
    v100 = v94;
    v101 = v150;
    sub_1E5BE15D0(v66, v100, v74, v150, v97);
    v98(v66, v74);
    v102 = v74;
    v88 = v101;
    v98(v96, v102);
  }

  v166 = v88;
  v167 = v97;
  v110 = swift_getWitnessTable();
  v111 = v133;
  sub_1E5B64D48();
  v62 = v149;
  v112 = v99;
  v65 = v146;
  v164 = v149;
  v165 = v146;
  v113 = v143;
  v114 = swift_getWitnessTable();
  sub_1E5BE15D0(v111, v113, v73, v114, v110);
  v91 = *(v134 + 8);
  v91(v111, v73);
  v92 = v112;
  v93 = v73;
LABEL_20:
  v91(v92, v93);
  v162 = v62;
  v163 = v65;
  v115 = swift_getWitnessTable();
  v160 = v88;
  v161 = v151;
  v116 = swift_getWitnessTable();
  v158 = v115;
  v159 = v116;
  v117 = v144;
  swift_getWitnessTable();
  sub_1E5B64D48();
  return (*(v142 + 8))(v53, v117);
}

uint64_t sub_1E5B9F1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v10[5] = a7;
  v10[6] = a8;
  v10[7] = a9;
  type metadata accessor for DynamicStartWorkoutView(0, v10);
  sub_1E5B9D8F0();
  sub_1E5BF6E44();
}

uint64_t sub_1E5B9F24C()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v11[0] = v0[2];
  v1 = v11[0];
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v5;
  v11[5] = v6;
  v11[6] = v7;
  v11[7] = v8;
  v9 = *(type metadata accessor for DynamicStartWorkoutView(0, v11) - 8);
  return sub_1E5B9F1F0(v0 + ((*(v9 + 80) + 80) & ~*(v9 + 80)), v1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_1E5B9F364(void *a1)
{
  sub_1E5B9F4A4(319);
  if (v1 <= 0x3F)
  {
    swift_getFunctionTypeMetadata0();
    sub_1E5BF6544();
    if (v2 <= 0x3F)
    {
      swift_getFunctionTypeMetadata1();
      sub_1E5BF6544();
      if (v3 <= 0x3F)
      {
        swift_getFunctionTypeMetadata0();
        sub_1E5BF6544();
        if (v4 <= 0x3F)
        {
          swift_getFunctionTypeMetadata0();
          sub_1E5BF6544();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E5B9F4A4(uint64_t a1)
{
  if (!qword_1EE2C63D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F858, qword_1E5BFE088);
    sub_1E5B9F514();
    v1 = sub_1E5BF6624();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2C63D8);
    }
  }
}

unint64_t sub_1E5B9F514()
{
  result = qword_1EE2C6250;
  if (!qword_1EE2C6250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F858, qword_1E5BFE088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6250);
  }

  return result;
}

uint64_t sub_1E5B9F578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B9F5E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 80);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t StackButtonEnvironment.init(resolveStackItem:resolveWorkoutDetail:requestAddStackItem:requestRemoveStackItem:presentToastConfirmation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t sub_1E5B9F67C(uint64_t a1)
{
  sub_1E5BA0F18(v1, &v9);
  if (!v13)
  {
    v6 = v9;
    v7 = v10;
    v8 = v11;
    v2 = 0;
    goto LABEL_5;
  }

  if (v13 == 1)
  {
    v6 = v9;
    v7 = v10;
    v8 = v11;
    v2 = 1;
LABEL_5:
    MEMORY[0x1E6937C10](v2);
    sub_1E5BF7244();
    return sub_1E5B6E230(&v6);
  }

  v3 = v12;
  v6 = v9;
  v7 = v10;
  v8 = v11;
  MEMORY[0x1E6937C10](2);
  sub_1E5BF7244();
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x1E6937C40](*&v4);
  return sub_1E5B6E230(&v6);
}

uint64_t sub_1E5B9F764()
{
  sub_1E5BF74B4();
  sub_1E5B9F67C(v1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B9F7A8(uint64_t a1)
{
  sub_1E5BF74B4();
  sub_1E5B9F67C(v2);
  return sub_1E5BF7504();
}

__n128 StartWorkoutButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t StartWorkoutButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v206 = a3;
  v202 = a1;
  v7 = sub_1E5BF6464();
  v194 = *(v7 - 8);
  v195 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v193 = &v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E8F0, &qword_1E5BF9590);
  v203 = *(v9 - 8);
  v204 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v199 = &v192 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v200 = &v192 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v198 = &v192 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v197 = &v192 - v16;
  started = type metadata accessor for StartWorkoutButtonAction(0);
  MEMORY[0x1EEE9AC00](started);
  v201 = &v192 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v192 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v196 = *(v22 - 8);
  v23 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v192 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v192 = &v192 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v28 = v4[5];
  v222 = v4[4];
  v223 = v28;
  v224 = v4[6];
  v29 = v4[1];
  v218 = *v4;
  v219 = v29;
  v31 = v4[2];
  v30 = v4[3];
  v33 = &v192 - v32;
  v220 = v31;
  v221 = v30;
  v34 = *(a2 + 1);
  v205 = *a2;
  v35 = type metadata accessor for StartWorkoutButtonState(0);
  v36 = v35[13];
  v207 = a2;
  sub_1E5BA0E44(&a2[v36], v33);
  sub_1E5BA0EB4(a4, v21);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1E5B5F804(v33, &qword_1ED03E950, &unk_1E5BF95F0);
      v145 = *v21;
      v146 = v21[1];
      v147 = v21[2];
      v148 = v21[3];
      v149 = v21[4];
      v150 = v21[5];
      v151 = v207;
      v117 = &v207[v35[11]];
      sub_1E5B5F804(v117, &qword_1ED03E760, &qword_1E5BF9120);
      v152 = v35[7];
      v153 = sub_1E5BF6494();
      (*(*(v153 - 8) + 16))(v117, &v151[v152], v153);
      v154 = type metadata accessor for PlannedWorkoutConfirmation(0);
      *(v117 + v154[5]) = v150;
      *(v117 + v154[6]) = v149;
      v155 = (v117 + v154[7]);
      *v155 = v145;
      v155[1] = v146;
      v156 = (v117 + v154[8]);
      *v156 = v147;
      v156[1] = v148;
      (*(*(v154 - 1) + 56))(v117, 0, 1, v154);
      v121 = &qword_1ED03E758;
      v122 = &unk_1E5BFB490;
      goto LABEL_26;
    case 2u:
      v77 = v33;
      v78 = v21[2];
      v202 = v21[3];
      v79 = v34;

      v80 = v35[11];
      v81 = v207;
      sub_1E5B5F804(&v207[v80], &qword_1ED03E760, &qword_1E5BF9120);
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E758, &unk_1E5BFB490);
      (*(*(v82 - 8) + 56))(&v81[v80], 1, 1, v82);
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v201 = v83[12];
      v84 = v83[16];
      v85 = v83[20];
      v86 = v200;
      v199 = &v200[v83[24]];
      *&v208 = v205;
      *(&v208 + 1) = v79;

      sub_1E5BF7254();
      v216 = v78;
      v217 = 2;
      sub_1E5BA0F18(v215, &v208);
      sub_1E5BA0F50();
      sub_1E5BF7254();
      sub_1E5BA0FA4(v215);
      v87 = *MEMORY[0x1E6999B50];
      v88 = sub_1E5BF6E24();
      (*(*(v88 - 8) + 104))(&v86[v84], v87, v88);
      v89 = *MEMORY[0x1E6999B40];
      v90 = sub_1E5BF6E14();
      (*(*(v90 - 8) + 104))(&v86[v85], v89, v90);
      v207 = v77;
      v91 = v192;
      sub_1E5BA0E44(v77, v192);
      v92 = (*(v196 + 80) + 16) & ~*(v196 + 80);
      v93 = (v23 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
      v94 = (v93 + 119) & 0xFFFFFFFFFFFFFFF8;
      v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
      v96 = swift_allocObject();
      sub_1E5BA30DC(v91, v96 + v92);
      v97 = (v96 + v93);
      v98 = v223;
      v97[4] = v222;
      v97[5] = v98;
      v97[6] = v224;
      v99 = v219;
      *v97 = v218;
      v97[1] = v99;
      v100 = v221;
      v97[2] = v220;
      v97[3] = v100;
      v101 = (v96 + v94);
      *v101 = v205;
      v101[1] = v79;
      *(v96 + v95) = v202;
      *(v96 + ((v95 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;
      v102 = v199;
      *v199 = &unk_1E5BFE1F0;
      *(v102 + 1) = v96;
      sub_1E5BA32A4(&v218, &v208);
      sub_1E5BF7094();
      v103 = v203;
      v104 = v86;
      v105 = v204;
      (*(v203 + 104))(v104, *MEMORY[0x1E6999AD8], v204);
      v106 = v206;
      v107 = *v206;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = sub_1E5B7170C(0, v107[2] + 1, 1, v107);
      }

      v109 = v107[2];
      v108 = v107[3];
      if (v109 >= v108 >> 1)
      {
        v107 = sub_1E5B7170C((v108 > 1), v109 + 1, 1, v107);
      }

      sub_1E5B5F804(v207, &qword_1ED03E950, &unk_1E5BF95F0);
      v107[2] = v109 + 1;
      result = (*(v103 + 32))(v107 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v109, v200, v105);
      goto LABEL_36;
    case 3u:
      sub_1E5B5F804(v33, &qword_1ED03E950, &unk_1E5BF95F0);
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F868, &unk_1E5BFE1B0);
      v111 = *(v21 + *(v110 + 48));
      v112 = *(v21 + *(v110 + 64));
      v113 = v193;
      v114 = *(v194 + 32);
      v115 = v195;
      v114(v193, v21, v195);
      v116 = v207;
      v117 = &v207[v35[12]];
      sub_1E5B5F804(v117, &qword_1ED03E740, &qword_1E5BF9100);
      v118 = v35[7];
      v119 = sub_1E5BF6494();
      (*(*(v119 - 8) + 16))(v117, &v116[v118], v119);
      v120 = type metadata accessor for FutureWorkoutConfirmation(0);
      *(v117 + v120[5]) = v112;
      *(v117 + v120[6]) = v111;
      v114((v117 + v120[7]), v113, v115);
      (*(*(v120 - 1) + 56))(v117, 0, 1, v120);
      v121 = &qword_1ED03E738;
      v122 = &unk_1E5BFE1C0;
      goto LABEL_26;
    case 4u:
      v62 = *v21;
      v63 = v33;
      v64 = v21[1];
      v65 = v35[12];
      v66 = v207;
      sub_1E5B5F804(&v207[v65], &qword_1ED03E740, &qword_1E5BF9100);
      v67 = &qword_1ED03E738;
      v68 = &unk_1E5BFE1C0;
      goto LABEL_29;
    case 5u:
      sub_1E5B5F804(v33, &qword_1ED03E950, &unk_1E5BF95F0);
      v157 = *v21;
      v158 = v21[1];
      v159 = v207;
      v117 = &v207[v35[10]];
      sub_1E5B5F804(v117, &qword_1ED03E780, &qword_1E5BF9140);
      v160 = v35[7];
      v161 = sub_1E5BF6494();
      (*(*(v161 - 8) + 16))(v117, &v159[v160], v161);
      v162 = type metadata accessor for ResumeWorkoutConfirmation(0);
      *(v117 + *(v162 + 20)) = v158;
      *(v117 + *(v162 + 24)) = v157;
      (*(*(v162 - 8) + 56))(v117, 0, 1, v162);
      v121 = &qword_1ED03E778;
      v122 = &qword_1E5C00D60;
LABEL_26:
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(v121, v122);
      v75 = *(*(v74 - 8) + 56);
      v76 = v117;
      goto LABEL_27;
    case 6u:
      v62 = *v21;
      v63 = v33;
      v64 = v21[1];
      v65 = v35[10];
      v66 = v207;
      sub_1E5B5F804(&v207[v65], &qword_1ED03E780, &qword_1E5BF9140);
      v67 = &qword_1ED03E778;
      v68 = &qword_1E5C00D60;
LABEL_29:
      v164 = __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
      (*(*(v164 - 8) + 56))(&v66[v65], 1, 1, v164);
      v212 = v222;
      v213 = v223;
      v214 = v224;
      v208 = v218;
      v209 = v219;
      v210 = v220;
      v211 = v221;
      v125 = v201;
      *v201 = v62;
      goto LABEL_30;
    case 7u:
      v63 = v33;
      v64 = *v21;
      v123 = v35[10];
      v66 = v207;
      sub_1E5B5F804(&v207[v123], &qword_1ED03E780, &qword_1E5BF9140);
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E778, &qword_1E5C00D60);
      (*(*(v124 - 8) + 56))(&v66[v123], 1, 1, v124);
      v212 = v222;
      v213 = v223;
      v214 = v224;
      v208 = v218;
      v209 = v219;
      v210 = v220;
      v211 = v221;
      v125 = v201;
      *v201 = 0;
LABEL_30:
      *(v125 + 8) = v64;
      swift_storeEnumTagMultiPayload();
      StartWorkoutButtonFeature.reduce(localState:sharedState:sideEffects:action:)(v202, v66, v206, v125);
      sub_1E5B9D664(v125);
      return sub_1E5B5F804(v63, &qword_1ED03E950, &unk_1E5BF95F0);
    case 8u:
      v165 = *v21;
      v201 = v21[1];
      v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v202 = v166[12];
      v167 = v166[16];
      v168 = v166[20];
      v169 = v199;
      v200 = &v199[v166[24]];
      *&v208 = v205;
      *(&v208 + 1) = v34;
      v170 = v34;
      v171 = v33;
      swift_bridgeObjectRetain_n();
      sub_1E5BF7254();
      v216 = v165;
      v217 = 2;
      sub_1E5BA0F18(v215, &v208);
      sub_1E5BA0F50();
      sub_1E5BF7254();
      sub_1E5BA0FA4(v215);
      v172 = *MEMORY[0x1E6999B50];
      v173 = sub_1E5BF6E24();
      (*(*(v173 - 8) + 104))(&v169[v167], v172, v173);
      v174 = *MEMORY[0x1E6999B40];
      v175 = sub_1E5BF6E14();
      (*(*(v175 - 8) + 104))(&v169[v168], v174, v175);
      v207 = v171;
      sub_1E5BA0E44(v171, v24);
      v176 = (*(v196 + 80) + 16) & ~*(v196 + 80);
      v177 = (v23 + v176 + 7) & 0xFFFFFFFFFFFFFFF8;
      v178 = (v177 + 119) & 0xFFFFFFFFFFFFFFF8;
      v179 = (v178 + 23) & 0xFFFFFFFFFFFFFFF8;
      v180 = swift_allocObject();
      sub_1E5BA30DC(v24, v180 + v176);
      v181 = (v180 + v177);
      v182 = v223;
      v181[4] = v222;
      v181[5] = v182;
      v181[6] = v224;
      v183 = v219;
      *v181 = v218;
      v181[1] = v183;
      v184 = v221;
      v181[2] = v220;
      v181[3] = v184;
      v185 = (v180 + v178);
      *v185 = v205;
      v185[1] = v170;
      v186 = v200;
      *(v180 + v179) = v201;
      *(v180 + ((v179 + 15) & 0xFFFFFFFFFFFFFFF8)) = v165;
      *v186 = &unk_1E5BFE1E0;
      *(v186 + 1) = v180;
      sub_1E5BA32A4(&v218, &v208);
      sub_1E5BF7094();
      v187 = v203;
      v188 = v169;
      v189 = v204;
      (*(v203 + 104))(v188, *MEMORY[0x1E6999AD8], v204);
      v106 = v206;
      v107 = *v206;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = sub_1E5B7170C(0, v107[2] + 1, 1, v107);
      }

      v191 = v107[2];
      v190 = v107[3];
      if (v191 >= v190 >> 1)
      {
        v107 = sub_1E5B7170C((v190 > 1), v191 + 1, 1, v107);
      }

      sub_1E5B5F804(v207, &qword_1ED03E950, &unk_1E5BF95F0);
      v107[2] = v191 + 1;
      result = (*(v187 + 32))(v107 + ((*(v187 + 80) + 32) & ~*(v187 + 80)) + *(v187 + 72) * v191, v199, v189);
      goto LABEL_36;
    case 9u:
    case 0xDu:
      sub_1E5B5F804(v33, &qword_1ED03E950, &unk_1E5BF95F0);
      v37 = v35[11];
      v38 = v207;
      sub_1E5B5F804(&v207[v37], &qword_1ED03E760, &qword_1E5BF9120);
      v39 = &qword_1ED03E758;
      v40 = &unk_1E5BFB490;
      goto LABEL_38;
    case 0xAu:
      v207 = v33;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v42 = v41[16];
      v43 = v41[20];
      v44 = v197;
      v45 = &v197[v41[24]];
      v46 = v205;
      *&v208 = v205;
      *(&v208 + 1) = v34;
      swift_bridgeObjectRetain_n();
      sub_1E5BF7254();
      v217 = 0;
      sub_1E5BA0F18(v215, &v208);
      sub_1E5BA0F50();
      sub_1E5BF7254();
      sub_1E5BA0FA4(v215);
      v47 = *MEMORY[0x1E6999B50];
      v48 = sub_1E5BF6E24();
      (*(*(v48 - 8) + 104))(&v44[v42], v47, v48);
      v49 = *MEMORY[0x1E6999B40];
      v50 = sub_1E5BF6E14();
      (*(*(v50 - 8) + 104))(&v44[v43], v49, v50);
      v51 = swift_allocObject();
      v52 = v223;
      *(v51 + 80) = v222;
      *(v51 + 96) = v52;
      *(v51 + 112) = v224;
      v53 = v219;
      *(v51 + 16) = v218;
      *(v51 + 32) = v53;
      v54 = v221;
      *(v51 + 48) = v220;
      *(v51 + 64) = v54;
      *(v51 + 128) = v46;
      *(v51 + 136) = v34;
      *v45 = &unk_1E5BFE210;
      *(v45 + 1) = v51;
      sub_1E5BA32A4(&v218, &v208);
      sub_1E5BF7094();
      v56 = v203;
      v55 = v204;
      (*(v203 + 104))(v44, *MEMORY[0x1E6999AD8], v204);
      v57 = v206;
      v58 = *v206;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1E5B7170C(0, v58[2] + 1, 1, v58);
      }

      v60 = v58[2];
      v59 = v58[3];
      if (v60 >= v59 >> 1)
      {
        v58 = sub_1E5B7170C((v59 > 1), v60 + 1, 1, v58);
      }

      sub_1E5B5F804(v207, &qword_1ED03E950, &unk_1E5BF95F0);
      v58[2] = v60 + 1;
      result = (*(v56 + 32))(v58 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v60, v197, v55);
      *v57 = v58;
      return result;
    case 0xBu:
      sub_1E5B5F804(v33, &qword_1ED03E950, &unk_1E5BF95F0);
      v69 = v35[9];
      v70 = v207;
      sub_1E5B5F804(&v207[v69], &qword_1ED03E5C0, &unk_1E5BF8A20);
      v71 = v35[7];
      v72 = sub_1E5BF6494();
      v73 = *(v72 - 8);
      (*(v73 + 16))(&v70[v69], &v70[v71], v72);
      (*(v73 + 56))(&v70[v69], 0, 1, v72);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
      v75 = *(*(v74 - 8) + 56);
      v76 = &v70[v69];
LABEL_27:
      v163 = 0;
      goto LABEL_39;
    case 0xCu:
      sub_1E5B5F804(v33, &qword_1ED03E950, &unk_1E5BF95F0);
      v37 = v35[9];
      v38 = v207;
      sub_1E5B5F804(&v207[v37], &qword_1ED03E5C0, &unk_1E5BF8A20);
      v39 = &qword_1ED03E5E8;
      v40 = &unk_1E5BF9600;
      goto LABEL_38;
    case 0xEu:
      sub_1E5B5F804(v33, &qword_1ED03E950, &unk_1E5BF95F0);
      v37 = v35[12];
      v38 = v207;
      sub_1E5B5F804(&v207[v37], &qword_1ED03E740, &qword_1E5BF9100);
      v39 = &qword_1ED03E738;
      v40 = &unk_1E5BFE1C0;
      goto LABEL_38;
    case 0xFu:
      sub_1E5B5F804(v33, &qword_1ED03E950, &unk_1E5BF95F0);
      v37 = v35[10];
      v38 = v207;
      sub_1E5B5F804(&v207[v37], &qword_1ED03E780, &qword_1E5BF9140);
      v39 = &qword_1ED03E778;
      v40 = &qword_1E5C00D60;
LABEL_38:
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
      v75 = *(*(v74 - 8) + 56);
      v76 = v38 + v37;
      v163 = 1;
LABEL_39:
      result = v75(v76, v163, 1, v74);
      break;
    default:
      v207 = v33;
      v126 = *v21;
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v128 = v127[16];
      v129 = v127[20];
      v130 = v198;
      v131 = &v198[v127[24]];
      v132 = v205;
      *&v208 = v205;
      *(&v208 + 1) = v34;
      swift_bridgeObjectRetain_n();
      sub_1E5BF7254();
      v217 = 1;
      sub_1E5BA0F18(v215, &v208);
      sub_1E5BA0F50();
      sub_1E5BF7254();
      sub_1E5BA0FA4(v215);
      v133 = *MEMORY[0x1E6999B50];
      v134 = sub_1E5BF6E24();
      (*(*(v134 - 8) + 104))(&v130[v128], v133, v134);
      v135 = *MEMORY[0x1E6999B40];
      v136 = sub_1E5BF6E14();
      (*(*(v136 - 8) + 104))(&v130[v129], v135, v136);
      v137 = swift_allocObject();
      v138 = v223;
      *(v137 + 80) = v222;
      *(v137 + 96) = v138;
      *(v137 + 112) = v224;
      v139 = v219;
      *(v137 + 16) = v218;
      *(v137 + 32) = v139;
      v140 = v221;
      *(v137 + 48) = v220;
      *(v137 + 64) = v140;
      *(v137 + 128) = v132;
      *(v137 + 136) = v34;
      *(v137 + 144) = v126;
      *v131 = &unk_1E5BFE200;
      *(v131 + 1) = v137;
      sub_1E5BA32A4(&v218, &v208);
      sub_1E5BF7094();
      v142 = v203;
      v141 = v204;
      (*(v203 + 104))(v130, *MEMORY[0x1E6999AD8], v204);
      v106 = v206;
      v107 = *v206;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = sub_1E5B7170C(0, v107[2] + 1, 1, v107);
      }

      v144 = v107[2];
      v143 = v107[3];
      if (v144 >= v143 >> 1)
      {
        v107 = sub_1E5B7170C((v143 > 1), v144 + 1, 1, v107);
      }

      sub_1E5B5F804(v207, &qword_1ED03E950, &unk_1E5BF95F0);
      v107[2] = v144 + 1;
      result = (*(v142 + 32))(v107 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v144, v198, v141);
LABEL_36:
      *v106 = v107;
      break;
  }

  return result;
}

uint64_t sub_1E5BA0E44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BA0EB4(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWorkoutButtonAction(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

unint64_t sub_1E5BA0F50()
{
  result = qword_1ED03F870;
  if (!qword_1ED03F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F870);
  }

  return result;
}

uint64_t sub_1E5BA0FD4(uint64_t a1, int **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  *(v5 + 48) = a1;
  *(v5 + 56) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F888, &qword_1E5BFE3F8);
  *(v5 + 80) = swift_task_alloc();
  v7 = sub_1E5BF6464();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = type metadata accessor for StartWorkoutButtonAction(0);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = sub_1E5BF7084();
  *(v5 + 152) = sub_1E5BF7074();
  v8 = *a2;
  v9 = *(a2 + 3);
  *(v5 + 160) = *(a2 + 2);
  *(v5 + 176) = v9;
  *(v5 + 192) = *(a2 + 4);
  v12 = (v8 + *v8);
  v10 = swift_task_alloc();
  *(v5 + 208) = v10;
  *v10 = v5;
  v10[1] = sub_1E5BA11D0;

  return v12();
}

uint64_t sub_1E5BA11D0()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v5 = sub_1E5BF7054();
    v2[39] = v5;
    v2[40] = v4;

    return MEMORY[0x1EEE6DFA0](sub_1E5BA1F00, v5, v4);
  }

  else
  {
    v10 = (v2[20] + *v2[20]);
    v6 = swift_task_alloc();
    v2[28] = v6;
    *v6 = v3;
    v6[1] = sub_1E5BA13C8;
    v7 = v2[8];
    v8 = v2[7];

    return v10(v8, v7);
  }
}

uint64_t sub_1E5BA13C8(double a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {

    a1 = 0.0;
  }

  *(v4 + 240) = a1;
  v10 = (*(v4 + 176) + **(v4 + 176));
  v6 = swift_task_alloc();
  *(v4 + 248) = v6;
  *v6 = v5;
  v6[1] = sub_1E5BA1584;
  v7 = *(v4 + 56);
  v8 = *(v4 + 64);

  return v10(v4 + 16, v7, v8);
}

uint64_t sub_1E5BA1584()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_1E5BF7054();
    v5 = v4;
    v2[42] = v3;
    v2[43] = v4;
    v6 = sub_1E5BA21B0;
  }

  else
  {
    v3 = sub_1E5BF7054();
    v5 = v7;
    v2[32] = v3;
    v2[33] = v7;
    v6 = sub_1E5BA1710;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1E5BA1710()
{
  v1 = v0[30];
  v2 = v0[17];
  v3 = v0[9];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v0[34] = v5;
  v0[35] = v7;
  *v2 = v4;
  v2[1] = v5;
  v2[2] = v6;
  v2[3] = v7;
  v2[4] = v1;
  v2[5] = v3;
  swift_storeEnumTagMultiPayload();

  v8 = swift_task_alloc();
  v0[36] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F890, &unk_1E5BFE400);
  *v8 = v0;
  v8[1] = sub_1E5BA1814;
  v10 = v0[17];

  return MEMORY[0x1EEE01A40](v10, v9);
}

uint64_t sub_1E5BA1814()
{
  v1 = *v0;
  v2 = *(*v0 + 136);

  sub_1E5B9D664(v2);
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1E5BA3C88, v4, v3);
}

uint64_t sub_1E5BA1998()
{
  v1 = v0[30];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  (*(v5 + 56))(v6, 0, 1, v4);
  (*(v5 + 32))(v3, v6, v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F868, &unk_1E5BFE1B0);
  v9 = *(v8 + 48);
  (*(v5 + 16))(v2, v3, v4);
  *(v2 + v9) = v1;
  *(v2 + *(v8 + 64)) = v7;
  swift_storeEnumTagMultiPayload();
  v10 = swift_task_alloc();
  v0[37] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F890, &unk_1E5BFE400);
  *v10 = v0;
  v10[1] = sub_1E5BA1B18;
  v12 = v0[16];

  return MEMORY[0x1EEE01A40](v12, v11);
}

uint64_t sub_1E5BA1B18()
{
  v1 = *v0;
  v2 = *(*v0 + 128);

  sub_1E5B9D664(v2);
  v3 = *(v1 + 344);
  v4 = *(v1 + 336);

  return MEMORY[0x1EEE6DFA0](sub_1E5BA1C5C, v4, v3);
}

uint64_t sub_1E5BA1C5C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5BA1D1C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);

  sub_1E5B9D664(v2);
  v3 = *(v1 + 344);
  v4 = *(v1 + 336);

  return MEMORY[0x1EEE6DFA0](sub_1E5BA1E60, v4, v3);
}

uint64_t sub_1E5BA1E60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5BA1F00()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F890, &unk_1E5BFE400);
  *v1 = v0;
  v1[1] = sub_1E5BA1FC0;
  v3 = *(v0 + 120);

  return MEMORY[0x1EEE01A40](v3, v2);
}

uint64_t sub_1E5BA1FC0()
{
  v1 = *v0;
  v2 = *(*v0 + 120);

  sub_1E5B9D664(v2);
  v3 = *(v1 + 320);
  v4 = *(v1 + 312);

  return MEMORY[0x1EEE6DFA0](sub_1E5BA2104, v4, v3);
}

uint64_t sub_1E5BA2104()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5BA21B0()
{
  v6 = (v0[24] + *v0[24]);
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_1E5BA22A8;
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  return v6(v2, v3, v4);
}

uint64_t sub_1E5BA22A8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_1E5BA23CC;
  }

  else
  {
    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_1E5BA1998;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E5BA23CC()
{
  v1 = v0[29];
  v2 = v0[15];
  v3 = v0[10];
  (*(v0[12] + 56))(v3, 1, 1, v0[11]);
  sub_1E5B5F804(v3, &qword_1ED03F888, &qword_1E5BFE3F8);
  v4 = v0[9];
  if (v1)
  {
    *v0[15] = 0;
    *(v2 + 8) = v4;
    swift_storeEnumTagMultiPayload();
    v5 = swift_task_alloc();
    v0[38] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F890, &unk_1E5BFE400);
    *v5 = v0;
    v7 = sub_1E5BA1D1C;
  }

  else
  {
    *v0[15] = v0[30];
    *(v2 + 8) = v4;
    swift_storeEnumTagMultiPayload();
    v5 = swift_task_alloc();
    v0[45] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F890, &unk_1E5BFE400);
    *v5 = v0;
    v7 = sub_1E5BA2564;
  }

  v5[1] = v7;
  v8 = v0[15];

  return MEMORY[0x1EEE01A40](v8, v6);
}

uint64_t sub_1E5BA2564()
{
  v1 = *v0;
  v2 = *(*v0 + 120);

  sub_1E5B9D664(v2);
  v3 = *(v1 + 344);
  v4 = *(v1 + 336);

  return MEMORY[0x1EEE6DFA0](sub_1E5BA3C88, v4, v3);
}

uint64_t sub_1E5BA26A8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a1;
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 16) = a3;
  *(v7 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  *(v7 + 72) = swift_task_alloc();
  sub_1E5BF7084();
  *(v7 + 80) = sub_1E5BF7074();
  v9 = sub_1E5BF7054();
  *(v7 + 88) = v9;
  *(v7 + 96) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E5BA2788, v9, v8);
}

uint64_t sub_1E5BA2788()
{
  sub_1E5BA0E44(v0[2], v0[9]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v9 = v0[9];
      v3 = *(v9 + 8);
      v4 = *(v9 + 24);
      v5 = *(v9 + 32);
      v6 = *(v9 + 40);
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E970, &qword_1E5BFD440) + 48);
      v11 = sub_1E5BF6464();
      (*(*(v11 - 8) + 8))(v9 + v10, v11);
    }

    else
    {
      v2 = v0[9];
      v3 = *(v2 + 8);
      v4 = *(v2 + 24);
      v5 = *(v2 + 32);
      v6 = *(v2 + 40);
    }

    v0[14] = v4;
    v0[15] = v5;
    v0[13] = v3;
    sub_1E5BF70E4();
    v18 = (*(v0[3] + 96) + **(v0[3] + 96));
    v13 = swift_task_alloc();
    v0[16] = v13;
    *v13 = v0;
    v13[1] = sub_1E5BA2A0C;
    v14.n128_u64[0] = v0[7];
    v15 = v0[5];
    v16 = v0[6];
    v17 = v0[4];

    return v18(v17, v15, v16, v6, v14);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v7 = v0[9];

      sub_1E5B5F804(v7, &qword_1ED03E950, &unk_1E5BF95F0);
    }

    else
    {
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1E5BA2A0C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1E5BA2BB0;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1E5BA2B44;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E5BA2B44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5BA2BB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5BA2C40(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a1;
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 16) = a3;
  *(v7 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  *(v7 + 72) = swift_task_alloc();
  sub_1E5BF7084();
  *(v7 + 80) = sub_1E5BF7074();
  v9 = sub_1E5BF7054();
  *(v7 + 88) = v9;
  *(v7 + 96) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E5BA2D20, v9, v8);
}

uint64_t sub_1E5BA2D20()
{
  sub_1E5BA0E44(v0[2], v0[9]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v9 = v0[9];
      v3 = *(v9 + 8);
      v4 = *(v9 + 24);
      v5 = *(v9 + 32);
      v6 = *(v9 + 40);
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E970, &qword_1E5BFD440) + 48);
      v11 = sub_1E5BF6464();
      (*(*(v11 - 8) + 8))(v9 + v10, v11);
    }

    else
    {
      v2 = v0[9];
      v3 = *(v2 + 8);
      v4 = *(v2 + 24);
      v5 = *(v2 + 32);
      v6 = *(v2 + 40);
    }

    v0[14] = v4;
    v0[15] = v5;
    v0[13] = v3;
    sub_1E5BF70E4();
    v18 = (*(v0[3] + 80) + **(v0[3] + 80));
    v13 = swift_task_alloc();
    v0[16] = v13;
    *v13 = v0;
    v13[1] = sub_1E5BA2FA4;
    v14.n128_u64[0] = v0[7];
    v15 = v0[5];
    v16 = v0[6];
    v17 = v0[4];

    return v18(v17, v15, v16, v6, v14);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v7 = v0[9];

      sub_1E5B5F804(v7, &qword_1ED03E950, &unk_1E5BF95F0);
    }

    else
    {
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1E5BA2FA4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1E5BA3C84;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1E5BA3C8C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E5BA30DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BA314C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 119) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1E5B6E314;

  return sub_1E5BA2C40(v13, a1, v1 + v5, v1 + v6, v10, v11, v12);
}

uint64_t objectdestroyTm_4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E970, &qword_1E5BFD440) + 48);
      v5 = sub_1E5BF6464();
      (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_7;
    }
  }

LABEL_7:

  return swift_deallocObject();
}

uint64_t sub_1E5BA34AC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 119) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1E5B6D9A0;

  return sub_1E5BA26A8(v13, a1, v1 + v5, v1 + v6, v10, v11, v12);
}

uint64_t sub_1E5BA3604(uint64_t a1)
{
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5B6E314;

  return sub_1E5BA0FD4(a1, (v1 + 16), v4, v5, v6);
}

uint64_t objectdestroy_7Tm_0(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_1E5BA373C(uint64_t a1)
{
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6E314;

  return sub_1E5B6F7C4(a1, v1 + 16, v4, v5);
}

uint64_t sub_1E5BA38C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1E5BA392C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E5BA3974(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_1E5BA3A08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5BA3A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5BA3A94(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_1E5BA3AD0()
{
  result = qword_1ED03F878;
  if (!qword_1ED03F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F878);
  }

  return result;
}

uint64_t sub_1E5BA3B24(uint64_t a1, uint64_t a2)
{
  sub_1E5BA0F18(a1, v13);
  sub_1E5BA0F18(a2, &v15);
  if (!v14)
  {
    sub_1E5BA0F18(v13, v11);
    if (!v19)
    {
LABEL_6:
      v8 = v15;
      v9 = v16;
      v10 = v17;
      v3 = MEMORY[0x1E6937980](v11, &v8);
      sub_1E5B6E230(&v8);
      sub_1E5B6E230(v11);
      goto LABEL_10;
    }

LABEL_11:
    sub_1E5B6E230(v11);
    sub_1E5B5F804(v13, &qword_1ED03F880, &qword_1E5BFE3F0);
LABEL_12:
    v3 = 0;
    return v3 & 1;
  }

  if (v14 == 1)
  {
    sub_1E5BA0F18(v13, v11);
    if (v19 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_1E5BA0F18(v13, v11);
  if (v19 != 2)
  {
    goto LABEL_11;
  }

  v4 = v12;
  v5 = v18;
  v8 = v15;
  v9 = v16;
  v10 = v17;
  v6 = MEMORY[0x1E6937980](v11, &v8);
  sub_1E5B6E230(&v8);
  sub_1E5B6E230(v11);
  if ((v6 & 1) == 0)
  {
    sub_1E5BA0FA4(v13);
    goto LABEL_12;
  }

  v3 = v4 == v5;
LABEL_10:
  sub_1E5BA0FA4(v13);
  return v3 & 1;
}

__n128 ViewStackButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t ViewStackButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v43 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E8E0, &qword_1E5BF9580);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v14 = *v4;
  v13 = v4[1];
  v15 = v4[3];
  v40 = v4[2];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
  v17 = v16[16];
  v18 = v16[20];
  v41 = v16[12];
  v42 = v18;
  v19 = v16[24];
  if (a4)
  {
    v20 = &v9[v19];
    v45 = 1;
    sub_1E5BA4130();
    sub_1E5BF7254();
    v21 = *MEMORY[0x1E6999B50];
    v22 = sub_1E5BF6E24();
    (*(*(v22 - 8) + 104))(&v9[v17], v21, v22);
    v23 = swift_allocObject();
    v23[2] = v14;
    v23[3] = v13;
    v23[4] = v40;
    v23[5] = v15;
    *v20 = &unk_1E5BFE418;
    *(v20 + 1) = v23;

    sub_1E5BF7094();
    v24 = *MEMORY[0x1E6999B48];
    v25 = sub_1E5BF6E14();
    (*(*(v25 - 8) + 104))(&v9[v42], v24, v25);
    (*(v7 + 104))(v9, *MEMORY[0x1E6999AD8], v6);
    v26 = v43;
    v27 = *v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1E5B71730(0, v27[2] + 1, 1, v27);
    }

    v29 = v27[2];
    v28 = v27[3];
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v27 = sub_1E5B71730((v28 > 1), v29 + 1, 1, v27);
    }

    v12 = v9;
  }

  else
  {
    v31 = &v12[v19];
    v44 = 0;
    sub_1E5BA4130();
    sub_1E5BF7254();
    v32 = *MEMORY[0x1E6999B50];
    v33 = sub_1E5BF6E24();
    (*(*(v33 - 8) + 104))(&v12[v17], v32, v33);
    v34 = swift_allocObject();
    v34[2] = v14;
    v34[3] = v13;
    v34[4] = v40;
    v34[5] = v15;
    *v31 = &unk_1E5BFE428;
    *(v31 + 1) = v34;

    sub_1E5BF7094();
    v35 = *MEMORY[0x1E6999B48];
    v36 = sub_1E5BF6E14();
    (*(*(v36 - 8) + 104))(&v12[v42], v35, v36);
    (*(v7 + 104))(v12, *MEMORY[0x1E6999AD8], v6);
    v26 = v43;
    v27 = *v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1E5B71730(0, v27[2] + 1, 1, v27);
    }

    v29 = v27[2];
    v37 = v27[3];
    v30 = v29 + 1;
    if (v29 >= v37 >> 1)
    {
      v27 = sub_1E5B71730((v37 > 1), v29 + 1, 1, v27);
    }
  }

  v27[2] = v30;
  result = (*(v7 + 32))(v27 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v29, v12, v6);
  *v26 = v27;
  return result;
}

unint64_t sub_1E5BA4130()
{
  result = qword_1ED03F898;
  if (!qword_1ED03F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F898);
  }

  return result;
}

uint64_t sub_1E5BA4184(uint64_t a1, int *a2)
{
  v2[2] = sub_1E5BF7084();
  v2[3] = sub_1E5BF7074();
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E5B6F688;

  return v6();
}

uint64_t sub_1E5BA4294(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1E5BF7084();
  v4[3] = sub_1E5BF7074();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1E5B79670;

  return v8();
}

uint64_t sub_1E5BA43A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5B6D9A0;

  return sub_1E5BA4294(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_5()
{

  return swift_deallocObject();
}

uint64_t sub_1E5BA44AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5B6E314;

  return sub_1E5BA4184(a1, v4);
}

unint64_t sub_1E5BA456C()
{
  result = qword_1ED03F8A0;
  if (!qword_1ED03F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F8A0);
  }

  return result;
}

unint64_t sub_1E5BA45C4()
{
  result = qword_1ED03F8A8;
  if (!qword_1ED03F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F8A8);
  }

  return result;
}

unint64_t sub_1E5BA461C()
{
  result = qword_1ED03F1C8;
  if (!qword_1ED03F1C8)
  {
    type metadata accessor for ViewStackButtonState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F1C8);
  }

  return result;
}

unint64_t sub_1E5BA4698()
{
  result = qword_1ED03F8B0;
  if (!qword_1ED03F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F8B0);
  }

  return result;
}

uint64_t StartWorkoutButtonContent.hashValue.getter()
{
  v1 = *v0;
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](v1);
  return sub_1E5BF7504();
}

__n128 StartWorkoutButton.init(store:labelContent:layout:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  result = *a4;
  v12 = *(a4 + 16);
  *(a5 + 24) = *a4;
  *a5 = sub_1E5B62F34;
  *(a5 + 8) = v10;
  *(a5 + 16) = 0;
  *(a5 + 17) = v9;
  *(a5 + 40) = v12;
  *(a5 + 56) = *(a4 + 32);
  return result;
}

uint64_t sub_1E5BA4800@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5BF64B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v8 = sub_1E5B99EA8(&v13, v7);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1E5BA49A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6BE4();
  *a1 = result;
  return result;
}

uint64_t sub_1E5BA49E4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v55 = a2;
  v59 = a1;
  v66 = a4;
  v67 = sub_1E5BF6EE4();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5BF6E84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v62 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5BF6EA4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6D8, &qword_1E5BFD4B8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v13 = *(v12 - 8);
  v56 = v12;
  v57 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v44 - v14;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F920, &qword_1E5BFE5D0);
  v63 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v54 = &v44 - v15;
  v16 = sub_1E5BF64B4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v4;
  LOBYTE(v71[0]) = *(v4 + 17);
  v20 = *v4;
  v50 = *(v4 + 8);
  v51 = v20;
  v49 = *(v4 + 16);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  v47 = sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v21 = v52;
  v22 = v55;
  v23 = WorkoutMediaType.localizedTitle(labelContent:rawActivityType:locale:)(v71, v52, v19, v55);
  v25 = v24;
  v46 = v24;
  (*(v17 + 8))(v19, v16);
  sub_1E5BA6B74(v45, v71);
  v26 = swift_allocObject();
  v27 = v71[1];
  *(v26 + 16) = v71[0];
  *(v26 + 32) = v27;
  v28 = v71[3];
  *(v26 + 48) = v71[2];
  *(v26 + 64) = v28;
  *(v26 + 80) = v21;
  v68 = v23;
  v69 = v25;
  v70 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
  sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810, MEMORY[0x1E697D658]);
  v29 = v53;
  sub_1E5BF6C84();
  v30 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
  v31 = v54;
  v32 = v56;
  sub_1E5BF69F4();
  v33 = v32;
  (*(v57 + 8))(v29, v32);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v34 = v59;
  sub_1E5BF6E94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6E0, &qword_1E5BFD4E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5BFE550;
  *(inited + 32) = 1701667182;
  v36 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v23;
  *(inited + 56) = v46;
  *(inited + 72) = v36;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x6E6F74747562;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v36;
  *(inited + 128) = 0x6973736572706D69;
  v37 = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v34;
  *(inited + 168) = v37;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v36;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_1E5BA717C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6E8, &qword_1E5BFD4E8);
  swift_arrayDestroy();
  sub_1E5BF6E74();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1E5BA717C(MEMORY[0x1E69E7CC0]);
  sub_1E5BA717C(v38);
  v39 = v60;
  sub_1E5BF6EB4();
  v40 = sub_1E5BF6EC4();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  v41 = v64;
  sub_1E5BF6ED4();
  *&v71[0] = v33;
  *(&v71[0] + 1) = v30;
  swift_getOpaqueTypeConformance2();
  v42 = v61;
  sub_1E5BF6A04();
  (*(v65 + 8))(v41, v67);
  sub_1E5B5F804(v39, &qword_1ED03F6D8, &qword_1E5BFD4B8);
  return (*(v63 + 8))(v31, v42);
}

uint64_t sub_1E5BA51EC(uint64_t *a1, uint64_t a2)
{
  started = type metadata accessor for StartWorkoutButtonAction(0);
  MEMORY[0x1EEE9AC00](started);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  *v5 = a2;
  swift_storeEnumTagMultiPayload();
  sub_1E5BF6E44();

  return sub_1E5B9D664(v5);
}

uint64_t StartWorkoutButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F8B8, &qword_1E5BFE560);
  MEMORY[0x1EEE9AC00](v15);
  v3 = &v14 - v2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F8C0, &unk_1E5BFE568);
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v14 - v5;
  sub_1E5BA55F8(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  if (v18[0])
  {
    v7 = 0;
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    v7 = sub_1E5BF6B94();
  }

  *&v18[0] = v7;
  sub_1E5BA6738();
  sub_1E5B9898C();
  sub_1E5BF6A44();

  sub_1E5B5F804(v3, &qword_1ED03F8B8, &qword_1E5BFE560);
  sub_1E5BA6B74(v1, v18);
  v8 = swift_allocObject();
  v9 = v18[1];
  *(v8 + 1) = v18[0];
  *(v8 + 2) = v9;
  v10 = v18[3];
  *(v8 + 3) = v18[2];
  *(v8 + 4) = v10;
  v11 = v17;
  (*(v4 + 32))(v17, v6, v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F928, &qword_1E5BFE5D8);
  v13 = (v11 + *(result + 36));
  *v13 = sub_1E5BA6BAC;
  v13[1] = v8;
  v13[2] = 0;
  v13[3] = 0;
  return result;
}

uint64_t sub_1E5BA55F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F918, &qword_1E5BFE5C8);
  v68 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v67 = &v63 - v3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F940, &qword_1E5BFE778);
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v63 - v4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F908, &unk_1E5BFE5B8);
  MEMORY[0x1EEE9AC00](v75);
  v69 = (&v63 - v5);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F8F8, &qword_1E5BFE5B0);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v72 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v63 - v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F8E8, &qword_1E5BFE5A8);
  MEMORY[0x1EEE9AC00](v83);
  v79 = &v63 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F948, &unk_1E5BFE780);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v63 - v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v11 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v13 = &v63 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  v17 = a1[1];
  v80 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  KeyPath = v17;
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    v19 = *(v16 + 1);
    v65 = *v16;
    v25 = *(v16 + 3);
    v64 = *(v16 + 2);
    v66 = v25;
    v21 = *(v16 + 4);
    v22 = v16[40];
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    EnumCaseMultiPayload = sub_1E5B5F804(v16, &qword_1ED03E950, &unk_1E5BF95F0);
LABEL_11:
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
    sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810, MEMORY[0x1E697D658]);
    sub_1E5BF6C84();
    v49 = v85;
    (*(v11 + 16))(v82, v13, v85);
    swift_storeEnumTagMultiPayload();
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
    sub_1E5BA6874();
    sub_1E5BF6864();
    return (*(v11 + 8))(v13, v49);
  }

  v19 = *(v16 + 1);
  v65 = *v16;
  v20 = *(v16 + 3);
  v64 = *(v16 + 2);
  v66 = v20;
  v21 = *(v16 + 4);
  v22 = v16[40];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E970, &qword_1E5BFD440) + 48);
  v24 = sub_1E5BF6464();
  (*(*(v24 - 8) + 8))(&v16[v23], v24);
LABEL_6:
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v26 = sub_1E5BEF624(v22, v93);

  if (v26)
  {
    v27 = v80;
    sub_1E5BA6B74(v80, &v93);
    sub_1E5BA6B74(v27, v92);
    sub_1E5B5F864(v27 + 24, &v87, &qword_1ED03F6A8, &qword_1E5BFD410);
    v28 = v85;
    if (*(&v88 + 1))
    {
      sub_1E5B98CE4(&v87, v91);
      v29 = __swift_project_boxed_opaque_existential_1(v91, v91[3]);
      v30 = MEMORY[0x1EEE9AC00](v29);
      (*(v32 + 16))(&v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
      v33 = sub_1E5BF6D94();
      v34 = v69;
      *v69 = v33;
      v80 = *(v75 + 44);

      v86 = sub_1E5BA6E58(v21);
      KeyPath = swift_getKeyPath();
      sub_1E5BA6B74(v92, &v87);
      v35 = swift_allocObject();
      v36 = v88;
      *(v35 + 16) = v87;
      *(v35 + 32) = v36;
      v37 = v90;
      *(v35 + 48) = v89;
      *(v35 + 64) = v37;
      *(v35 + 80) = v65;
      *(v35 + 88) = v19;
      v63 = v19;
      v38 = v66;
      *(v35 + 96) = v64;
      *(v35 + 104) = v38;
      *(v35 + 112) = v21;
      *(v35 + 120) = v22;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_1E5BA7344;
      *(v39 + 24) = v35;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6B0, &qword_1E5BFD438);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F950, &unk_1E5BFE800);
      sub_1E5B5FC8C(&qword_1EE2C6228, &qword_1ED03F6B0, &qword_1E5BFD438, MEMORY[0x1E69E6338]);
      v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F920, &qword_1E5BFE5D0);
      v41 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
      *&v87 = v28;
      *(&v87 + 1) = v41;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      *&v87 = v40;
      *(&v87 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      sub_1E5BF6D44();

      sub_1E5B5F864(v34, v71, &qword_1ED03F908, &unk_1E5BFE5B8);
      swift_storeEnumTagMultiPayload();
      sub_1E5BA6984();
      sub_1E5BA6A3C();
      v43 = v72;
      sub_1E5BF6864();

      sub_1E5BA6FDC(v92);
      sub_1E5B5F804(v34, &qword_1ED03F908, &unk_1E5BFE5B8);
      __swift_destroy_boxed_opaque_existential_1(v91);
    }

    else
    {
      v51 = v66;

      sub_1E5B5F804(&v87, &qword_1ED03F6A8, &qword_1E5BFD410);
      v91[0] = sub_1E5BA6E58(v21);
      swift_getKeyPath();
      sub_1E5BA6B74(&v93, &v87);
      v52 = swift_allocObject();
      v53 = v88;
      *(v52 + 16) = v87;
      *(v52 + 32) = v53;
      v54 = v90;
      *(v52 + 48) = v89;
      *(v52 + 64) = v54;
      *(v52 + 80) = v65;
      *(v52 + 88) = v19;
      *(v52 + 96) = v64;
      *(v52 + 104) = v51;
      *(v52 + 112) = v21;
      *(v52 + 120) = v22;
      v55 = swift_allocObject();
      *(v55 + 16) = sub_1E5BA6FB0;
      *(v55 + 24) = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6B0, &qword_1E5BFD438);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F950, &unk_1E5BFE800);
      sub_1E5B5FC8C(&qword_1EE2C6228, &qword_1ED03F6B0, &qword_1E5BFD438, MEMORY[0x1E69E6338]);
      v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F920, &qword_1E5BFE5D0);
      v57 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
      *&v87 = v28;
      *(&v87 + 1) = v57;
      v58 = swift_getOpaqueTypeConformance2();
      *&v87 = v56;
      *(&v87 + 1) = v58;
      swift_getOpaqueTypeConformance2();
      v59 = v67;
      sub_1E5BF6D44();
      v60 = v68;
      v61 = v74;
      (*(v68 + 16))(v71, v59, v74);
      swift_storeEnumTagMultiPayload();
      sub_1E5BA6984();
      sub_1E5BA6A3C();
      v43 = v72;
      sub_1E5BF6864();

      sub_1E5BA6FDC(v92);
      (*(v60 + 8))(v59, v61);
    }

    v62 = v73;
    sub_1E5B59378(v43, v73);
    sub_1E5BA6FDC(&v93);
    v46 = v79;
    sub_1E5B59378(v62, v79);
    v44 = 0;
    v45 = v82;
    v47 = v78;
    v48 = v77;
  }

  else
  {

    v44 = 1;
    v45 = v82;
    v46 = v79;
    v47 = v78;
    v48 = v77;
  }

  (*(v48 + 56))(v46, v44, 1, v47);
  sub_1E5B5F864(v46, v45, &qword_1ED03F8E8, &qword_1E5BFE5A8);
  swift_storeEnumTagMultiPayload();
  sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
  sub_1E5BA6874();
  sub_1E5BF6864();
  return sub_1E5B5F804(v46, &qword_1ED03F8E8, &qword_1E5BFE5A8);
}

uint64_t sub_1E5BA6614(uint64_t *a1)
{
  started = type metadata accessor for StartWorkoutButtonAction(0);
  MEMORY[0x1EEE9AC00](started);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_storeEnumTagMultiPayload();
  sub_1E5BF6E44();

  return sub_1E5B9D664(v3);
}

unint64_t sub_1E5BA6738()
{
  result = qword_1ED03F8C8;
  if (!qword_1ED03F8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F8B8, &qword_1E5BFE560);
    sub_1E5BA67BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F8C8);
  }

  return result;
}

unint64_t sub_1E5BA67BC()
{
  result = qword_1ED03F8D0;
  if (!qword_1ED03F8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F8D8, &unk_1E5BFE598);
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
    sub_1E5BA6874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F8D0);
  }

  return result;
}

unint64_t sub_1E5BA6874()
{
  result = qword_1ED03F8E0;
  if (!qword_1ED03F8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F8E8, &qword_1E5BFE5A8);
    sub_1E5BA68F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F8E0);
  }

  return result;
}

unint64_t sub_1E5BA68F8()
{
  result = qword_1ED03F8F0;
  if (!qword_1ED03F8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F8F8, &qword_1E5BFE5B0);
    sub_1E5BA6984();
    sub_1E5BA6A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F8F0);
  }

  return result;
}

unint64_t sub_1E5BA6984()
{
  result = qword_1ED03F900;
  if (!qword_1ED03F900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F908, &unk_1E5BFE5B8);
    sub_1E5B5FC8C(&qword_1EE2C63C8, &qword_1ED03F658, &qword_1E5BFD270, MEMORY[0x1E697DDD0]);
    sub_1E5BA6A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F900);
  }

  return result;
}

unint64_t sub_1E5BA6A3C()
{
  result = qword_1ED03F910;
  if (!qword_1ED03F910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F918, &qword_1E5BFE5C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F920, &qword_1E5BFE5D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F910);
  }

  return result;
}

unint64_t sub_1E5BA6BB8()
{
  result = qword_1ED03F930;
  if (!qword_1ED03F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F930);
  }

  return result;
}

unint64_t sub_1E5BA6C38()
{
  result = qword_1ED03F938;
  if (!qword_1ED03F938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F928, &qword_1E5BFE5D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F8B8, &qword_1E5BFE560);
    sub_1E5BA6738();
    sub_1E5B9898C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F938);
  }

  return result;
}

unint64_t sub_1E5BA6D1C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1E5BF7444())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1E5BA6DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1E5BF74B4();
  sub_1E5BF6FE4();
  v5 = sub_1E5BF7504();

  return a3(a1, a2, v5);
}

void *sub_1E5BA6E58(void *result)
{
  v1 = result[2];
  v2 = MEMORY[0x1E69E7CC0];
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    v6 = result + 4;
    while (1)
    {
      v7 = v6[v4];
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F960, &qword_1E5BFE868);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 17;
        }

        v14 = v13 >> 4;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 4);
        v15 = (v11 + 4);
        v16 = v2[3] >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v15 >= &v2[2 * v16 + 4])
          {
            memmove(v11 + 4, v2 + 4, 16 * v16);
          }

          v2[2] = 0;
        }

        v5 = (v15 + 16 * v16);
        v3 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v2 = v11;
      }

      v18 = __OFSUB__(v3--, 1);
      if (v18)
      {
        break;
      }

      *v5 = v4;
      v5[1] = v7;
      v5 += 2;
      if (v1 == ++v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v19 = v2[3];
  if (v19 < 2)
  {
    return v2;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v3);
  v21 = v20 - v3;
  if (!v18)
  {
    v2[2] = v21;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t objectdestroy_19Tm()
{
  sub_1E5B5C0A8(v0[2], v0[3]);
  if (v0[8])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  }

  return swift_deallocObject();
}

unint64_t sub_1E5BA717C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F958, &qword_1E5BFE860);
    v3 = sub_1E5BF72A4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E5B5F864(v4, &v13, &qword_1ED03F6E8, &qword_1E5BFD4E8);
      v5 = v13;
      v6 = v14;
      result = sub_1E5BA6DD4(v13, v14, sub_1E5BA6D1C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E5BA72C0(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_1E5BA72C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1E5BA72D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6BE4();
  *a1 = result;
  return result;
}

unint64_t sub_1E5BA734C(char a1)
{
  result = 0x7369447472656C61;
  switch(a1)
  {
    case 1:
      result = 0x6570704177656976;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      v3 = 5;
      goto LABEL_11;
    case 4:
      result = 0xD000000000000023;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 7:
      result = 0xD00000000000001ELL;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      v3 = 9;
LABEL_11:
      result = v3 | 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000025;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x65764F7472617473;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0x726F577472617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E5BA7570(uint64_t a1)
{
  v2 = sub_1E5BAC7B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BA75AC(uint64_t a1)
{
  v2 = sub_1E5BAC7B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BA75E8(uint64_t a1)
{
  v2 = sub_1E5BAC468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}