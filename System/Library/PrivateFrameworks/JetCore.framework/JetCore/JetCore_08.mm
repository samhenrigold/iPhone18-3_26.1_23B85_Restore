uint64_t sub_1DB3A00B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB3A00EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DB306AF4;

  return Future.then()(a1, a2, a3);
}

uint64_t Future.then()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB3A01C0, 0, 0);
}

uint64_t sub_1DB3A01C0()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  swift_getAssociatedTypeWitness();
  *v4 = v0;
  v4[1] = sub_1DB3A02D8;
  v5 = *(v0 + 16);

  return sub_1DB4B3EB0(v5, 0, 0, sub_1DB3A05A4, v2);
}

uint64_t sub_1DB3A02D8()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB3A0414, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DB3A0414()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB3A0478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a1;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1DB3A09E0;
  *(v9 + 24) = v8;
  v11[3] = &type metadata for SyncTaskScheduler;
  v11[4] = &protocol witness table for SyncTaskScheduler;
  (*(a4 + 16))(sub_1DB3A0998, v7, sub_1DB3A09A4, v9, v11, a3, a4);

  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_1DB3A05B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, a1, AssociatedTypeWitness, v8);
  (*(v7 + 32))(*(*(a2 + 64) + 40), v10, AssociatedTypeWitness);
  return swift_continuation_throwingResume();
}

uint64_t sub_1DB3A06CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_throwingResume();
}

uint64_t sub_1DB3A0744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  return sub_1DB3A07C4(&v8, a2, AssociatedTypeWitness, v6, MEMORY[0x1E69E7288]);
}

uint64_t sub_1DB3A07C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v7, a1, a4);

  return swift_continuation_throwingResumeWithError();
}

uint64_t dispatch thunk of Future.then()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DB306AF4;

  return v9(a1, a2, a3);
}

uint64_t sub_1DB3A09A4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = a1;
  return v3(a1);
}

double sub_1DB3A09EC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v7 = a2;
  v8 = a2 / a4;
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v8;
  }

  if (a5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a3 / a5;
  }

  v11 = sub_1DB50A650();
  v13 = v12;
  if (v11 == sub_1DB50A650() && v13 == v14)
  {
  }

  else
  {
    v15 = sub_1DB50BA30();

    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (v7 == a3)
  {
    return floor(v7);
  }

LABEL_12:
  v16 = sub_1DB50A650();
  v18 = v17;
  if (v16 == sub_1DB50A650() && v18 == v19)
  {

    return floor(v7);
  }

  v20 = sub_1DB50BA30();

  if (v20)
  {
    return floor(v7);
  }

  v21 = sub_1DB50A650();
  v23 = v22;
  if (v21 == sub_1DB50A650() && v23 == v24)
  {

LABEL_20:
    v7 = a4;
    return floor(v7);
  }

  v25 = sub_1DB50BA30();

  if (v25)
  {
    goto LABEL_20;
  }

  v27 = v10 * a4;
  v28 = sub_1DB50A650();
  v30 = v29;
  if (v28 == sub_1DB50A650() && v30 == v31)
  {

    goto LABEL_26;
  }

  v32 = sub_1DB50BA30();

  if (v32)
  {
LABEL_26:
    if (v9 >= v10)
    {
      v7 = v27;
    }

    return floor(v7);
  }

  if (v9 < v10)
  {
    v7 = v27;
  }

  return floor(v7);
}

void *Dictionary<>.init(tryDeserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = v5;
  v6 = JSONDictionary.compactMap<A, B>(_:)(sub_1DB3A117C, v8, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);

  sub_1DB317740(a1);
  return v6;
}

void *Dictionary<>.init(deserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = v5;
  v6 = JSONDictionary.compactMap<A, B>(_:)(sub_1DB3A119C, v8, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
  sub_1DB317740(a1);

  return v6;
}

uint64_t sub_1DB3A0D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a7 = a1;
  a7[1] = a2;
  sub_1DB3171C0(a3, v18);
  v19 = a4;
  v15 = *(a6 + 8);

  v15(v18, &v19, a5, a6);
  if (v17)
  {
  }

  else
  {
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a7, 0, 1, TupleTypeMetadata2);
  }
}

uint64_t sub_1DB3A0EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v30 = a7;
  v28 = a1;
  v29 = a2;
  v11 = sub_1DB50B120();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB3171C0(a3, v31);
  v32 = a4;
  v19 = *(a6 + 16);

  v19(v31, &v32, a5, a6);
  if ((*(v15 + 48))(v14, 1, a5) == 1)
  {
    (*(v12 + 8))(v14, v11);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v30, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v22 = *(v15 + 32);
    v22(v18, v14, a5);
    v23 = swift_getTupleTypeMetadata2();
    v24 = *(v23 + 48);
    v26 = v29;
    v25 = v30;
    *v30 = v28;
    *(v25 + 1) = v26;
    v22(&v25[v24], v18, a5);
    (*(*(v23 - 8) + 56))(v25, 0, 1, v23);
  }
}

void *Dictionary<>.init(deserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a2;
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = a7;
  v11[7] = v8;
  v9 = JSONDictionary.compactMap<A, B>(_:)(sub_1DB3A154C, v11, a3, a4, a5);
  sub_1DB317740(a1);

  return v9;
}

uint64_t sub_1DB3A1238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X8>, uint64_t a9)
{
  v31 = a6;
  v29 = a3;
  v30 = a4;
  v33 = a8;
  v12 = sub_1DB50B120();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v16 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = a1;
  v34[0] = a1;
  v34[1] = a2;

  sub_1DB50A920();
  if ((*(v16 + 48))(v15, 1, a5) == 1)
  {
    (*(v13 + 8))(v15, v12);
    sub_1DB315178();
    swift_allocError();
    *v20 = TupleTypeMetadata2;
    v20[1] = a2;
    v20[2] = a5 | 0x6000000000000000;
    v20[3] = 0;
    swift_willThrow();
  }

  else
  {
    (*(v16 + 32))(v19, v15, a5);
    v22 = v31;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v23 = v33;
    (*(v16 + 16))(v33, v19, a5);
    sub_1DB3171C0(v29, v34);
    v35 = v30;
    v24 = *(a9 + 8);

    v25 = v32;
    v24(v34, &v35, v22, a9);
    v26 = *(v16 + 8);
    v26(v19, a5);
    if (v25)
    {
      return (v26)(v23, a5);
    }

    else
    {
      return (*(*(TupleTypeMetadata2 - 8) + 56))(v23, 0, 1);
    }
  }
}

void *Dictionary<>.init(tryDeserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a2;
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = a7;
  v11[7] = v8;
  v9 = JSONDictionary.compactMap<A, B>(_:)(sub_1DB3A1B30, v11, a3, a4, a5);

  sub_1DB317740(a1);
  return v9;
}

uint64_t sub_1DB3A15F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, char *, uint64_t)@<X7>, char *a8@<X8>, uint64_t a9)
{
  v46 = a7;
  v47 = a4;
  v43 = a3;
  v48 = a8;
  v13 = sub_1DB50B120();
  v40 = *(v13 - 8);
  v41 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v38 - v14;
  v45 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DB50B120();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v38 - v19;
  v21 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v52[0] = a1;
  v52[1] = a2;

  sub_1DB50A920();
  if ((*(v21 + 48))(v20, 1, a5) == 1)
  {
    (*(v18 + 8))(v20, v17);
    sub_1DB31556C(0xD000000000000027, 0x80000001DB529830, v47, v52);
    sub_1DB3A1B94(v52, v49);
    v25 = v50;
    if (v50)
    {
      v26 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      sub_1DB315178();
      v27 = swift_allocError();
      *v28 = v42;
      v28[1] = a2;
      v28[2] = a5 | 0x6000000000000000;
      v28[3] = 0;
      v29 = *(v26 + 8);

      v29(a5, v27, v25, v26);
      sub_1DB3A1C04(v52);

      __swift_destroy_boxed_opaque_existential_0(v49);
    }

    else
    {
      sub_1DB3A1C04(v52);
      sub_1DB3A1C04(v49);
    }
  }

  else
  {
    v46 = *(v21 + 32);
    v46(v24, v20, a5);
    sub_1DB3171C0(v43, v52);
    v49[0] = v47;
    v30 = *(a9 + 16);

    v31 = v44;
    v30(v52, v49, a6, a9);
    if ((*(v45 + 48))(v31, 1, a6) != 1)
    {
      v47 = *(v45 + 32);
      v32 = v39;
      v47(v39, v31, a6);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v34 = *(TupleTypeMetadata2 + 48);
      v35 = v48;
      v46(v48, v24, a5);
      v47(&v35[v34], v32, a6);
      return (*(*(TupleTypeMetadata2 - 8) + 56))(v35, 0, 1, TupleTypeMetadata2);
    }

    (*(v21 + 8))(v24, a5);
    (*(v40 + 8))(v31, v41);
  }

  v37 = swift_getTupleTypeMetadata2();
  return (*(*(v37 - 8) + 56))(v48, 1, 1, v37);
}

uint64_t sub_1DB3A1B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E48, &qword_1DB50FB90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB3A1C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E48, &qword_1DB50FB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static IntentDispatchTimeout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL sub_1DB3A1CA4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IntentDispatchTimeout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntentDispatchTimeout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1DB3A1D40(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB3A1D5C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

Swift::Double __swiftcall JSONTimeUnit.value(byConverting:)(Swift::Double byConverting)
{
  if (*v1)
  {
    return byConverting * 1000.0;
  }

  return byConverting;
}

Swift::Double __swiftcall JSONTimeUnit.timeInterval(byConverting:)(Swift::Double byConverting)
{
  if (*v1)
  {
    return byConverting / 1000.0;
  }

  return byConverting;
}

uint64_t JSONTimeUnit.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB3A1E5C()
{
  result = qword_1ECC44760;
  if (!qword_1ECC44760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44760);
  }

  return result;
}

uint64_t EmptyAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, v12);
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v11);

  v6 = sub_1DB320870(v11, v5);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v11);
  v9 = v5;
  ScalarDictionary.init(tryDeserializing:using:)(v11, &v9, &v10);
  sub_1DB3151CC(a1);
  result = sub_1DB3151CC(v12);
  v8 = v10;
  *a3 = v6;
  a3[1] = v8;
  return result;
}

uint64_t EmptyAction.actionMetrics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 EmptyAction.actionMetrics.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t sub_1DB3A2078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB50BA30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB3A2108(uint64_t a1)
{
  v2 = sub_1DB3A22F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3A2144(uint64_t a1)
{
  v2 = sub_1DB3A22F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EmptyAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44768, &qword_1DB515BE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3A22F8();

  sub_1DB50BE40();
  v10[0] = v7;
  v10[1] = v8;
  sub_1DB37BCC8();
  sub_1DB50B8A0();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DB3A22F8()
{
  result = qword_1ECC44770;
  if (!qword_1ECC44770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44770);
  }

  return result;
}

uint64_t EmptyAction.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44778, &qword_1DB515BF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3A22F8();
  sub_1DB50BDF0();
  if (!v2)
  {
    sub_1DB37C0CC();
    sub_1DB50B780();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB3A2528()
{
  result = qword_1ECC44780;
  if (!qword_1ECC44780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44780);
  }

  return result;
}

unint64_t sub_1DB3A2580()
{
  result = qword_1ECC44788;
  if (!qword_1ECC44788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44788);
  }

  return result;
}

unint64_t sub_1DB3A25D8()
{
  result = qword_1ECC44790;
  if (!qword_1ECC44790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44790);
  }

  return result;
}

JetCore::LintedMetricsEvent __swiftcall LintedMetricsEvent.init(fields:issues:)(Swift::OpaquePointer fields, Swift::OpaquePointer issues)
{
  v2->_rawValue = fields._rawValue;
  v2[1]._rawValue = issues._rawValue;
  result.issues = issues;
  result.fields = fields;
  return result;
}

uint64_t sub_1DB3A268C(uint64_t a1)
{
  v2 = sub_1DB3A2818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3A26C8(uint64_t a1)
{
  v2 = sub_1DB3A2818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LintedMetricsEvent.Issue.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44798, &qword_1DB515DC0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3A2818();
  sub_1DB50BE40();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DB3A2818()
{
  result = qword_1ECC447A0;
  if (!qword_1ECC447A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC447A0);
  }

  return result;
}

uint64_t sub_1DB3A2894(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44798, &qword_1DB515DC0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3A2818();
  sub_1DB50BE40();
  return (*(v3 + 8))(v5, v2);
}

unint64_t static LintedMetricsEvent.empty.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1DB3A2A10()
{
  if (*v0)
  {
    return 0x736575737369;
  }

  else
  {
    return 0x73646C656966;
  }
}

uint64_t sub_1DB3A2A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
  if (v6 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736575737369 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();

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

uint64_t sub_1DB3A2B10(uint64_t a1)
{
  v2 = sub_1DB3A3454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3A2B4C(uint64_t a1)
{
  v2 = sub_1DB3A3454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LintedMetricsEvent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC447A8, &qword_1DB515DC8);
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_1DB3A3454();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = v6;
  v8 = v22;
  v21 = v4;
  sub_1DB30BE90(a1, &v26);
  JSONObject.init(from:)(&v26, v29);
  JSONObject.subscript.getter(0x73646C656966, 0xE600000000000000, v25);
  sub_1DB330D60(v25, v23);
  if (!v24)
  {
    sub_1DB3151CC(v25);
    sub_1DB30623C(v23, &qword_1ECC42E38, &qword_1DB50FB80);
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(v23, v24);
  sub_1DB408B14(&v26);
  sub_1DB3151CC(v25);
  __swift_destroy_boxed_opaque_existential_0(v23);
  if (!*(&v27 + 1))
  {
LABEL_7:
    sub_1DB30623C(&v26, &qword_1ECC42EA0, &qword_1DB50FB88);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
  v23[0] = 0;
  sub_1DB50A4A0();
  v9 = v23[0];
  sub_1DB317740(&v26);
  if (!v9)
  {
LABEL_8:
    v12 = sub_1DB50B3E0();
    swift_allocError();
    v14 = v13;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434F0, &qword_1DB515DD0) + 48);
    *(v14 + 24) = &type metadata for LintedMetricsEvent.CodingKeys;
    *(v14 + 32) = v7;
    *v14 = 0;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BDB0();
    sub_1DB50B3C0();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6AF0], v12);
    swift_willThrow();
    sub_1DB3151CC(v29);
    (*(v30 + 8))(v20, v21);
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC447B8, &qword_1DB515DD8);
  v25[0] = 1;
  sub_1DB3A34A8();
  v10 = v21;
  v11 = v20;
  sub_1DB50B710();
  v16 = a1;
  v17 = v26;
  v18 = v30;
  if (!v26)
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1DB3151CC(v29);
  (*(v18 + 8))(v11, v10);
  *v8 = v9;
  v8[1] = v17;

  __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t LintedMetricsEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC447D8, &unk_1DB515DE8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v14 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3A3454();

  sub_1DB50BE40();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
  *&v11 = v8;
  v13[3] = &type metadata for FoundationValue;
  v13[4] = &off_1F56FB6B0;
  v13[0] = swift_allocObject();
  sub_1DB30C200(&v11, (v13[0] + 16));
  LOBYTE(v11) = 0;
  sub_1DB325078();
  sub_1DB50B8A0();
  sub_1DB3151CC(v13);
  if (!v2)
  {
    v13[0] = v14;
    LOBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43088, &qword_1DB515DE0);
    sub_1DB3A35B0(&qword_1ECC447E0, sub_1DB3A3628, MEMORY[0x1E69E6300]);
    sub_1DB50B8A0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t LintedMetricsEvent.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(0x73646C656966, 0xE600000000000000, v12);
  sub_1DB330D60(v12, v10);
  if (!v11)
  {

    sub_1DB3151CC(v12);
    sub_1DB30623C(v10, &qword_1ECC42E38, &qword_1DB50FB80);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
LABEL_7:
    sub_1DB30623C(&v13, &qword_1ECC42EA0, &qword_1DB50FB88);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(v10, v11);
  sub_1DB408B14(&v13);
  sub_1DB3151CC(v12);
  __swift_destroy_boxed_opaque_existential_0(v10);
  if (!*(&v14 + 1))
  {

    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
  v10[0] = 0;
  sub_1DB50A4A0();
  v6 = v10[0];
  if (v10[0])
  {
    sub_1DB317740(&v13);
    JSONObject.subscript.getter(0x736575737369, 0xE600000000000000, &v13);
    v7 = sub_1DB320BF8(&v13, v5);
    result = sub_1DB3151CC(a1);
    *a3 = v6;
    a3[1] = v7;
    return result;
  }

  sub_1DB317740(&v13);
LABEL_8:
  sub_1DB315178();
  swift_allocError();
  *v9 = xmmword_1DB50FF40;
  *(v9 + 16) = 0x20000001F56F6458uLL;
  *(v9 + 24) = 0;
  swift_willThrow();
  return sub_1DB3151CC(a1);
}

unint64_t sub_1DB3A3454()
{
  result = qword_1ECC447B0;
  if (!qword_1ECC447B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC447B0);
  }

  return result;
}

unint64_t sub_1DB3A34A8()
{
  result = qword_1ECC447C0;
  if (!qword_1ECC447C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC447B8, &qword_1DB515DD8);
    sub_1DB3A35B0(&qword_1ECC447C8, sub_1DB3A355C, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC447C0);
  }

  return result;
}

unint64_t sub_1DB3A355C()
{
  result = qword_1ECC447D0;
  if (!qword_1ECC447D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC447D0);
  }

  return result;
}

uint64_t sub_1DB3A35B0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43088, &qword_1DB515DE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB3A3628()
{
  result = qword_1ECC447E8;
  if (!qword_1ECC447E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC447E8);
  }

  return result;
}

unint64_t sub_1DB3A36C0()
{
  result = qword_1ECC447F0;
  if (!qword_1ECC447F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC447F0);
  }

  return result;
}

unint64_t sub_1DB3A3718()
{
  result = qword_1ECC447F8;
  if (!qword_1ECC447F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC447F8);
  }

  return result;
}

unint64_t sub_1DB3A3770()
{
  result = qword_1ECC44800;
  if (!qword_1ECC44800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44800);
  }

  return result;
}

unint64_t sub_1DB3A37C8()
{
  result = qword_1ECC44808;
  if (!qword_1ECC44808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44808);
  }

  return result;
}

unint64_t sub_1DB3A3820()
{
  result = qword_1ECC44810;
  if (!qword_1ECC44810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44810);
  }

  return result;
}

uint64_t Preferences.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v61 = sub_1DB50B120();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v13 = &v58 - v12;
  v14 = *a1;
  v15 = a1[1];
  v62 = type metadata accessor for PreferenceKey(0, a3, v16, v17);
  v63 = v14;
  *(&v70 + 1) = v62;
  v71 = &protocol witness table for PreferenceKey<A>;
  *&v69 = v14;
  *(&v69 + 1) = v15;
  v18 = *(a4 + 8);

  v64 = v6;
  v19 = a2;
  v18(&v67, &v69, a2, a4);
  if (MetatypeMetadata)
  {
    sub_1DB30C200(&v67, v72);
    __swift_destroy_boxed_opaque_existential_0(&v69);
    sub_1DB300B14(v72, &v69);
    v20 = a3;
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v72);
      v21 = *(a3 - 8);
      v22 = *(v21 + 56);
      v22(v13, 0, 1, a3);
      (*(v21 + 32))(a5, v13, a3);
      return (v22)(a5, 0, 1, a3);
    }

    else
    {
      v59 = *(*(a3 - 8) + 56);
      v59(v13, 1, 1, a3);
      (*(v60 + 8))(v13, v61);
      if (qword_1ECC42278 != -1)
      {
        swift_once();
      }

      v24 = qword_1ECC46730;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1DB50F8D0;
      v66 = sub_1DB301BC0(0, 16, 0, MEMORY[0x1E69E7CC0]);
      v26._countAndFlagsBits = 0x6F662065756C6156;
      v26._object = 0xEA00000000002072;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      MetatypeMetadata = v62;
      *&v67 = v63;
      *(&v67 + 1) = v15;
      sub_1DB301CDC(&v67, v65);
      v69 = 0u;
      v70 = 0u;

      sub_1DB301D4C(v65, &v69);
      LOBYTE(v71) = 0;
      v27 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
        v66 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v69;
      v32 = v70;
      v30[64] = v71;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v66 = v27;
      sub_1DB301DBC(&v67);
      v33._countAndFlagsBits = 544106784;
      v33._object = 0xE400000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      MetatypeMetadata = v19;
      *&v67 = v64;
      sub_1DB301CDC(&v67, v65);
      v69 = 0u;
      v70 = 0u;
      swift_unknownObjectRetain();
      sub_1DB301D4C(v65, &v69);
      LOBYTE(v71) = 0;
      v34 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1DB301BC0(0, *(v34 + 2) + 1, 1, v34);
        v66 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1DB301BC0((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v69;
      v39 = v70;
      v37[64] = v71;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v66 = v34;
      sub_1DB301DBC(&v67);
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      *(v25 + 32) = v66;
      v66 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
      v41._object = 0x80000001DB52B780;
      v41._countAndFlagsBits = 0xD000000000000015;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v67 = v20;
      sub_1DB301CDC(&v67, v65);
      v69 = 0u;
      v70 = 0u;
      sub_1DB301D4C(v65, &v69);
      LOBYTE(v71) = 0;
      v42 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1DB301BC0(0, *(v42 + 2) + 1, 1, v42);
      }

      v44 = *(v42 + 2);
      v43 = *(v42 + 3);
      if (v44 >= v43 >> 1)
      {
        v42 = sub_1DB301BC0((v43 > 1), v44 + 1, 1, v42);
      }

      *(v42 + 2) = v44 + 1;
      v45 = &v42[40 * v44];
      v46 = v69;
      v47 = v70;
      v45[64] = v71;
      *(v45 + 2) = v46;
      *(v45 + 3) = v47;
      v66 = v42;
      sub_1DB301DBC(&v67);
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      *(v25 + 40) = v66;
      v49 = sub_1DB50AF40();
      if (os_log_type_enabled(v24, v49))
      {
        v50 = v20;
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v51 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v51[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v51 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v20 = v50;
        v53 = swift_allocObject();
        *(v53 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v69 = v25;
        *(&v69 + 1) = sub_1DB31485C;
        *&v70 = v53;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v54 = sub_1DB50A5E0();
        v56 = v55;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1DB50EE90;
        *(v57 + 56) = MEMORY[0x1E69E6158];
        *(v57 + 64) = sub_1DB31494C();
        *(v57 + 32) = v54;
        *(v57 + 40) = v56;
        sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v24, v49, v57);
      }

      __swift_destroy_boxed_opaque_existential_0(v72);
      return (v59)(a5, 1, 1, v20);
    }
  }

  else
  {
    sub_1DB301DBC(&v67);
    __swift_destroy_boxed_opaque_existential_0(&v69);
    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }
}

uint64_t Preferences.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DB3A5500(a1, a2, a3, a4, a5);
  v6 = sub_1DB50B120();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t sub_1DB3A40FC@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + a2 - 24);
  v4 = *(a1 + a2 - 16);
  v6 = *(a1 + a2 - 8);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;

  Preferences.subscript.getter(v9, v5, v4, v6, a3);
}

uint64_t sub_1DB3A4180(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = a3[1];
  v10[0] = *a3;
  v10[1] = v8;

  return sub_1DB3A5500(a1, v10, v6, v5, v7);
}

void (*Preferences.subscript.modify(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x50uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[2] = a5;
  v12[3] = v5;
  *v12 = a3;
  v12[1] = a4;
  v14 = sub_1DB50B120();
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

  v18 = v17;
  v19 = *a2;
  v20 = a2[1];
  v13[7] = v17;
  v13[8] = v19;
  v13[9] = v20;
  v22[0] = v19;
  v22[1] = v20;
  swift_bridgeObjectRetain_n();
  Preferences.subscript.getter(v22, a3, a4, a5, v18);

  return sub_1DB3A4354;
}

void sub_1DB3A4354(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  v5 = (*a1)[6];
  v6 = (*a1)[7];
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v11 = **a1;
  v10 = (*a1)[1];
  if (a2)
  {
    v12 = (*a1)[2];
    (*(v8 + 16))(v5, v6, v7);
    v14 = v3;
    v15 = v4;
    sub_1DB3A5500(v5, &v14, v11, v10, v12);
    v13 = *(v8 + 8);
    v13(v5, v7);
    v13(v6, v7);
  }

  else
  {
    v14 = (*a1)[8];
    v15 = v4;
    sub_1DB3A5500(v6, &v14, v11, v10, v9);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v2);
}

uint64_t Preferences.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1DB50B120();
  v61 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  v17 = *(a5 + 8);
  *(&v71 + 1) = a3;
  v72 = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v70);
  v19 = *(a3 - 8);
  v63 = *(v19 + 16);
  v62 = v19 + 16;
  v63(boxed_opaque_existential_0, a1, a3);
  v20 = *(a4 + 8);
  v64 = a2;
  v65 = v6;
  v20(&v68, &v70, a2, a4);
  if (MetatypeMetadata)
  {
    sub_1DB30C200(&v68, v73);
    __swift_destroy_boxed_opaque_existential_0(&v70);
    (*(a5 + 32))(v73, a3, a5);
    v21 = *(AssociatedTypeWitness - 8);
    if ((*(v21 + 48))(v16, 1, AssociatedTypeWitness) == 1)
    {
      v60 = AssociatedTypeWitness;
      (*(v61 + 8))(v16, v14);
      if (qword_1ECC42278 != -1)
      {
        swift_once();
      }

      v22 = qword_1ECC46730;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1DB50F8D0;
      v67 = sub_1DB301BC0(0, 16, 0, MEMORY[0x1E69E7CC0]);
      v24._countAndFlagsBits = 0x6F662065756C6156;
      v24._object = 0xEA00000000002072;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      MetatypeMetadata = a3;
      v25 = __swift_allocate_boxed_opaque_existential_0(&v68);
      v63(v25, a1, a3);
      sub_1DB301CDC(&v68, v66);
      v70 = 0u;
      v71 = 0u;
      sub_1DB301D4C(v66, &v70);
      LOBYTE(v72) = 0;
      v26 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1DB301BC0(0, *(v26 + 2) + 1, 1, v26);
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v70;
      v31 = v71;
      v29[64] = v72;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v67 = v26;
      sub_1DB301DBC(&v68);
      v32._countAndFlagsBits = 544106784;
      v32._object = 0xE400000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      MetatypeMetadata = v64;
      *&v68 = v65;
      sub_1DB301CDC(&v68, v66);
      v70 = 0u;
      v71 = 0u;
      swift_unknownObjectRetain();
      sub_1DB301D4C(v66, &v70);
      LOBYTE(v72) = 0;
      v33 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
        v67 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v70;
      v38 = v71;
      v36[64] = v72;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v67 = v33;
      sub_1DB301DBC(&v68);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v23 + 32) = v67;
      v67 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
      v40._object = 0x80000001DB52B780;
      v40._countAndFlagsBits = 0xD000000000000015;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      v41 = v60;
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v68 = v41;
      sub_1DB301CDC(&v68, v66);
      v70 = 0u;
      v71 = 0u;
      sub_1DB301D4C(v66, &v70);
      LOBYTE(v72) = 0;
      v42 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1DB301BC0(0, *(v42 + 2) + 1, 1, v42);
      }

      v44 = *(v42 + 2);
      v43 = *(v42 + 3);
      if (v44 >= v43 >> 1)
      {
        v42 = sub_1DB301BC0((v43 > 1), v44 + 1, 1, v42);
      }

      *(v42 + 2) = v44 + 1;
      v45 = &v42[40 * v44];
      v46 = v70;
      v47 = v71;
      v45[64] = v72;
      *(v45 + 2) = v46;
      *(v45 + 3) = v47;
      v67 = v42;
      sub_1DB301DBC(&v68);
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      *(v23 + 40) = v67;
      v49 = sub_1DB50AF40();
      if (os_log_type_enabled(v22, v49))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v50 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v50[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v50 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v52 = swift_allocObject();
        *(v52 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v70 = v23;
        *(&v70 + 1) = sub_1DB314CB0;
        *&v71 = v52;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v53 = sub_1DB50A5E0();
        v55 = v54;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_1DB50EE90;
        *(v56 + 56) = MEMORY[0x1E69E6158];
        *(v56 + 64) = sub_1DB31494C();
        *(v56 + 32) = v53;
        *(v56 + 40) = v55;
        sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v22, v49, v56);
      }

      v58 = v60;
      __swift_destroy_boxed_opaque_existential_0(v73);
      return (*(v21 + 56))(a6, 1, 1, v58);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v73);
      (*(v21 + 32))(a6, v16, AssociatedTypeWitness);
      return (*(v21 + 56))(a6, 0, 1, AssociatedTypeWitness);
    }
  }

  else
  {
    sub_1DB301DBC(&v68);
    __swift_destroy_boxed_opaque_existential_0(&v70);
    return (*(*(AssociatedTypeWitness - 8) + 56))(a6, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t sub_1DB3A4C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v20 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  v9 = sub_1DB50B120();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a3, v6, v14);
  (*(v10 + 16))(v12, a1, v9);
  return Preferences.subscript.setter(v12, v16, v20, v6, v7, v8);
}

uint64_t Preferences.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v29 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1DB50B120();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  v20 = *(v12 + 16);
  v31 = a1;
  v20(v14, a1, v11, v17);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    v21 = *(v12 + 8);
    v21(v14, v11);
    v22 = *(a6 + 8);
    v34 = a4;
    v35 = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    v24 = *(a4 - 8);
    (*(v24 + 16))(boxed_opaque_existential_0, a2, a4);
    memset(v32, 0, sizeof(v32));
    (*(v30 + 16))(v32, v33, v29);
    (*(v24 + 8))(a2, a4);
    return (v21)(v31, v11);
  }

  else
  {
    (*(v15 + 32))(v19, v14, AssociatedTypeWitness);
    v26 = *(a6 + 8);
    v34 = a4;
    v35 = v26;
    v27 = __swift_allocate_boxed_opaque_existential_0(v33);
    v28 = *(a4 - 8);
    (*(v28 + 16))(v27, a2, a4);
    (*(a6 + 24))(v32, v19, a4, a6);
    (*(v30 + 16))(v32, v33, v29);
    (*(v28 + 8))(a2, a4);
    (*(v12 + 8))(v31, v11);
    return (*(v15 + 8))(v19, AssociatedTypeWitness);
  }
}

void (*Preferences.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t **a1, char a2)
{
  v13 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x60uLL);
  }

  v15 = v14;
  *a1 = v14;
  v27 = a3;
  v14[3] = a6;
  v14[4] = v6;
  v14[1] = a4;
  v14[2] = a5;
  *v14 = a3;
  swift_getAssociatedTypeWitness();
  v16 = sub_1DB50B120();
  v15[5] = v16;
  v17 = *(v16 - 8);
  v15[6] = v17;
  v18 = *(v17 + 64);
  v19 = v13;
  if (v13)
  {
    v15[7] = swift_coroFrameAlloc();
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v15[7] = malloc(*(v17 + 64));
    v20 = malloc(v18);
  }

  v21 = v20;
  v15[8] = v20;
  v22 = *(a4 - 8);
  v23 = v22;
  v15[9] = v22;
  v24 = *(v22 + 64);
  if (v19)
  {
    v15[10] = swift_coroFrameAlloc();
    v25 = swift_coroFrameAlloc();
  }

  else
  {
    v15[10] = malloc(*(v22 + 64));
    v25 = malloc(v24);
  }

  v15[11] = v25;
  (*(v23 + 16))();
  Preferences.subscript.getter(a2, v27, a4, a5, a6, v21);
  return sub_1DB3A53D0;
}

void sub_1DB3A53D0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[10];
  v4 = (*a1)[11];
  if (a2)
  {
    v6 = v2[8];
    v5 = v2[9];
    v8 = v2[6];
    v7 = v2[7];
    v9 = v2[5];
    v13 = v2[3];
    v12 = v2[2];
    v10 = *v2;
    v11 = v2[1];
    (*(v8 + 16))(v7, v6, v9);
    (*(v5 + 32))(v3, v4, v11);
    Preferences.subscript.setter(v7, v3, v10, v11, v12, v13);
    (*(v8 + 8))(v6, v9);
  }

  else
  {
    v7 = v2[7];
    v6 = v2[8];
    Preferences.subscript.setter(v6, v4, *v2, v2[1], v2[2], v2[3]);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t sub_1DB3A5500(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1DB50B120();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v15 = *a2;
  v14 = a2[1];
  v23[3] = type metadata accessor for PreferenceKey(0, a4, v16, v17);
  v23[4] = &protocol witness table for PreferenceKey<A>;
  v23[0] = v15;
  v23[1] = v14;
  (*(v11 + 16))(v13, a1, v10);
  v18 = *(a4 - 8);
  if ((*(v18 + 48))(v13, 1, a4) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v21 = 0u;
    v22 = 0u;
  }

  else
  {
    *(&v22 + 1) = a4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v21);
    (*(v18 + 32))(boxed_opaque_existential_0, v13, a4);
  }

  return (*(a5 + 16))(&v21, v23, a3, a5);
}

uint64_t sub_1DB3A5730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42918, &qword_1DB50F3D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DB50EE90;
  (*(v7 + 16))(v9, a1, a2);
  v11 = sub_1DB50B9F0();
  if (v11)
  {
    v12 = v11;
    (*(v7 + 8))(v9, a2);
  }

  else
  {
    v12 = swift_allocError();
    (*(v7 + 32))(v13, v9, a2);
  }

  *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44820, &qword_1DB516218);
  *(v10 + 64) = sub_1DB3370CC(&qword_1EE30C788, &qword_1ECC44820, &qword_1DB516218, MEMORY[0x1E69E6BB8]);
  *(v10 + 32) = v12;
  result = (*(v7 + 8))(a1, a2);
  *a4 = v10;
  return result;
}

void *_ErrorTraverser.Iterator.next()()
{
  v4 = v0;
  v5 = *v0;
  v6 = *(*v0 + 16);
  if (!v6)
  {
    return 0;
  }

  while (1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1DB3A6A80(v5);
      *v4 = v5;
    }

    v8 = v5[2];
    if (v6 > v8)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v2 = v5 + 4;
    v9 = &v5[5 * v6 + 4];
    v1 = *(v9 - 16);
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v9 - 40, v1);
    sub_1DB50B170();
    *v4 = v5;
    if (v14)
    {
      break;
    }

    v8 = v5[2];
    if (!v8)
    {
      goto LABEL_15;
    }

    *v4 = v5;
    v10 = v8 - 1;
    __swift_destroy_boxed_opaque_existential_0(&v2[5 * v8 - 5]);
    v5[2] = v10;
    *v4 = v5;
    v6 = v5[2];
    if (!v6)
    {
      return 0;
    }
  }

  v2 = v14;
  v12 = sub_1DB509B10();
  v13 = [v12 underlyingErrors];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v6 = sub_1DB50A9A0();

  if (*(v6 + 16))
  {
    *v4 = v5;
    v3 = v5[2];
    v8 = v5[3];
    v1 = v3 + 1;
    if (v3 < v8 >> 1)
    {
LABEL_11:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44818, &qword_1DB5160D0);
      v16 = sub_1DB3370CC(&qword_1EE30C778, &qword_1ECC44818, &qword_1DB5160D0, MEMORY[0x1E69E6CF8]);
      v14 = v6;
      v5[2] = v1;
      sub_1DB2FEA0C(&v14, &v5[5 * v3 + 4]);
      *v4 = v5;
      return v2;
    }

LABEL_16:
    v5 = sub_1DB3023E0((v8 > 1), v1, 1, v5);
    *v4 = v5;
    goto LABEL_11;
  }

  return v2;
}

void *sub_1DB3A5B10@<X0>(uint64_t *a1@<X8>)
{
  result = _ErrorTraverser.Iterator.next()();
  *a1 = result;
  return result;
}

uint64_t sub_1DB3A5BF4(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, _OWORD *, uint64_t, uint64_t))
{
  v9[1] = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(a3, v9, a2, WitnessTable) & 1;
}

uint64_t _ErrorTraverser.first(_:)(_OWORD *a1, uint64_t a2)
{
  swift_getWitnessTable();
  sub_1DB50A8E0();
  return v3;
}

uint64_t _ErrorTraverser.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return sub_1DB3A5730(v6, v3, a2);
}

uint64_t sub_1DB3A5DBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  _ErrorTraverser.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1DB3A5E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB4ED3FC(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

void *sub_1DB3A5EBC()
{
  v0 = sub_1DB509EE0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42910, qword_1DB50F390);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB511620;
  sub_1DB509EC0();
  sub_1DB509F00();
  sub_1DB3A6DAC(&qword_1EE30E258, MEMORY[0x1E6969C20], MEMORY[0x1E6969C10]);
  v5 = sub_1DB5099B0();
  v7 = v6;
  v21[0] = sub_1DB3A6DAC(&qword_1EE30E260, MEMORY[0x1E6969BF8], MEMORY[0x1E6969C08]);
  sub_1DB50A910();
  v22 = *(v1 + 8);
  v22(v3, v0);
  v21[1] = v1 + 8;
  v8 = v23;
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v7;
  v9[4] = v8;
  *(v4 + 32) = sub_1DB3A6DF4;
  *(v4 + 40) = v9;
  sub_1DB509EA0();
  v10 = sub_1DB5099B0();
  v12 = v11;
  sub_1DB50A910();
  v13 = v22;
  v22(v3, v0);
  v14 = v23;
  v15 = swift_allocObject();
  v15[2] = v10;
  v15[3] = v12;
  v15[4] = v14;
  *(v4 + 48) = sub_1DB3A6DF4;
  *(v4 + 56) = v15;
  sub_1DB509EB0();
  v16 = sub_1DB5099B0();
  v18 = v17;
  sub_1DB50A910();
  v13(v3, v0);
  v19 = v23;
  result = swift_allocObject();
  result[2] = v16;
  result[3] = v18;
  result[4] = v19;
  *(v4 + 64) = sub_1DB3A6DF4;
  *(v4 + 72) = result;
  qword_1EE30D608 = v4;
  return result;
}

uint64_t (*_ErrorPredicate.init<A, B>(domain:code:)@<X0>(uint64_t a1@<X1>, uint64_t a3@<X3>, uint64_t (**a6)(uint64_t a1)@<X8>))(uint64_t a1)
{
  v9 = sub_1DB5099B0();
  v11 = v10;
  sub_1DB50A910();
  (*(*(a3 - 8) + 8))(a1, a3);
  result = swift_allocObject();
  *(result + 2) = v9;
  *(result + 3) = v11;
  *(result + 4) = v13;
  *a6 = sub_1DB3A6ACC;
  a6[1] = result;
  return result;
}

void *sub_1DB3A6294()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42910, qword_1DB50F390);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DB50F8D0;
  v1 = sub_1DB50A650();
  v3 = v2;
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = 206;
  *(v0 + 32) = sub_1DB3A6DF4;
  *(v0 + 40) = v4;
  v5 = sub_1DB50A650();
  v7 = v6;
  result = swift_allocObject();
  result[2] = v5;
  result[3] = v7;
  result[4] = 1;
  *(v0 + 48) = sub_1DB3A6DF4;
  *(v0 + 56) = result;
  qword_1EE30D5F0 = v0;
  return result;
}

uint64_t (*_ErrorPredicate.init<A>(domain:code:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a6)(uint64_t a1)@<X8>))(uint64_t a1)
{
  sub_1DB50A910();
  (*(*(a4 - 8) + 8))(a3, a4);
  result = swift_allocObject();
  *(result + 2) = a1;
  *(result + 3) = a2;
  *(result + 4) = v12;
  *a6 = sub_1DB3A6DF4;
  a6[1] = result;
  return result;
}

uint64_t sub_1DB3A6440()
{
  if (qword_1EE30D600 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE30D608;
  v1 = qword_1EE30D5E8;

  if (v1 != -1)
  {
    swift_once();
  }

  sub_1DB3991F0(v2);
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_1EE30D618 = sub_1DB3A6DA4;
  unk_1EE30D620 = result;
  return result;
}

uint64_t static _ErrorPredicate.noConnection.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE30D610 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = unk_1EE30D620;
  *a1 = qword_1EE30D618;
  a1[1] = v2;
}

uint64_t (*_ErrorPredicate.init(domain:code:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1)@<X8>))(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 2) = a1;
  *(result + 3) = a2;
  *(result + 4) = a3;
  *a4 = sub_1DB3A6DF4;
  a4[1] = result;
  return result;
}

uint64_t sub_1DB3A661C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1DB509B10();
  v5 = sub_1DB50A620();
  IsEqual = AMSErrorIsEqual();

  return IsEqual;
}

uint64_t sub_1DB3A66A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *(a2 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  result = (*(v11 + 32))(v13 + v12, a1, a2);
  *a6 = a5;
  a6[1] = v13;
  return result;
}

BOOL sub_1DB3A6774(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 40;
  v4 = *(a2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 16;
    v6 = *(v3 - 8);

    LOBYTE(v6) = v6(a1);

    v3 = v5;
  }

  while ((v6 & 1) == 0);
  return v4 != 0;
}

uint64_t (*_ErrorPredicate.init<A>(type:test:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (**a5)(void *a1)@<X8>))(void *a1)
{
  result = swift_allocObject();
  *(result + 2) = a3;
  *(result + 3) = a4;
  *(result + 4) = a1;
  *(result + 5) = a2;
  *a5 = sub_1DB3A6C38;
  a5[1] = result;
  return result;
}

uint64_t sub_1DB3A6860(void *a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = sub_1DB50B120();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - v9;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v16 = swift_dynamicCast();
  v17 = *(v11 + 56);
  if (v16)
  {
    v17(v10, 0, 1, a4);
    (*(v11 + 32))(v14, v10, a4);
    v18 = a2(v14);
    (*(v11 + 8))(v14, a4);
  }

  else
  {
    v17(v10, 1, 1, a4);
    (*(v8 + 8))(v10, v7);
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DB3A6C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB3A6DAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t JSONArray.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 48))(a1, a2, a3, v7, v8);
}

uint64_t JSONArray.compactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 56))(a1, a2, a3, v7, v8);
}

_OWORD *sub_1DB3A6F38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DB300B14(a1, v5);
  a2[3] = &type metadata for FoundationValue;
  a2[4] = &off_1F56FB6B0;
  v3 = swift_allocObject();
  *a2 = v3;
  return sub_1DB30C200(v5, (v3 + 16));
}

uint64_t JSONArray.isEmpty.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

uint64_t JSONArray.count.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t JSONArray.subscript.getter(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t JSONArray.objects.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t JSONArray.bridgedPrimitiveValues<A>()(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 40))(a1, v3, v4);
}

uint64_t JSONArray.flatMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 56))(a1, a2, a3, v7, v8);
}

uint64_t JSONArray.filter(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 64))(a1, a2, v5, v6);
}

uint64_t JSONArray.reduce<A>(_:nextResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  return (*(v10 + 72))(a1, a2, a3, a4, v9, v10);
}

uint64_t JSONArray.forEach(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 80))(a1, a2, v5, v6);
}

uint64_t JSONArray.contains(where:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 88))(a1, a2, v5, v6) & 1;
}

uint64_t Dictionary<>.init(_partiallyFrom:)(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v5 = sub_1DB50B120();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A40, &unk_1DB516260);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v40 = sub_1DB50A470();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1DB50BDE0();
  sub_1DB31F900(0xD000000000000027, 0x80000001DB529830, v12, v39);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3053A8();
  sub_1DB50BDF0();
  v30 = v7;
  v25 = a1;
  v31 = v11;
  v32 = v8;
  v13 = sub_1DB50B7A0();
  v35 = a2;
  v28 = sub_1DB50A540();
  sub_1DB50A4F0();
  v26 = v13;
  v14 = *(v13 + 16);
  if (v14)
  {
    v27 = v35 - 8;
    v15 = (v26 + 48);
    v29 = v9;
    do
    {
      v16 = *(v15 - 2);
      v17 = *(v15 - 1);
      v18 = *v15;
      if (v18 == 1)
      {
        sub_1DB3184A4(*(v15 - 2), *(v15 - 1), 1);

        v34 = v16;
        v19 = v17;
      }

      else
      {
        v36 = *(v15 - 2);
        v34 = sub_1DB50B8F0();
        v19 = v20;
      }

      v36 = v16;
      v37 = v17;
      v38 = v18;
      v21 = v30;
      v22 = v35;
      sub_1DB50B780();
      sub_1DB3184B4(v16, v17, v18);
      (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
      v36 = v34;
      v37 = v19;
      sub_1DB50A5A0();
      v9 = v29;
      v15 += 24;
      --v14;
    }

    while (v14);
  }

  (*(v9 + 8))(v31, v32);
  sub_1DB3A1C04(v39);
  v23 = v40;
  __swift_destroy_boxed_opaque_existential_0(v25);
  return v23;
}

uint64_t Optional<A>.init(_partiallyFrom:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v16 = a4;
  v15 = sub_1DB50B120();
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  __swift_project_boxed_opaque_existential_1(v17, v18);
  if (sub_1DB50BA90())
  {
    (*(*(a2 - 8) + 56))(v11, 1, 1, a2);
    v12 = v15;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_1DB50BA80();
    (*(*(a2 - 8) + 56))(v8, 0, 1, a2);
    v12 = v15;
    (*(v6 + 32))(v11, v8);
  }

  __swift_destroy_boxed_opaque_existential_0(v17);
  (*(v6 + 32))(v16, v11, v12);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t Bool.init(_partiallyFrom:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  if (sub_1DB50BA90())
  {
    v2 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v2 = sub_1DB50BA50();
  }

  __swift_destroy_boxed_opaque_existential_0(v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2 & 1;
}

uint64_t sub_1DB3A7DC0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Bool.init(_partiallyFrom:)(a1);
  *a2 = result & 1;
  return result;
}

uint64_t Array<A>.init(_partiallyFrom:)(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = sub_1DB50A480();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1DB50BDE0();
  sub_1DB31F900(0xD000000000000027, 0x80000001DB529830, v4, v10);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDC0();
  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_1DB50B910();
  if ((v5 & 1) == 0)
  {
    sub_1DB50AA60();
    sub_1DB50A9C0();
  }

  __swift_project_boxed_opaque_existential_1(v8, v9);
  while ((sub_1DB50B930() & 1) == 0)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    sub_1DB50B920();
    sub_1DB50AA60();
    sub_1DB50AA10();
    __swift_project_boxed_opaque_existential_1(v8, v9);
  }

  sub_1DB3A1C04(v10);
  __swift_destroy_boxed_opaque_existential_0(v8);
  v6 = v11;
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

unint64_t sub_1DB3A81A4()
{
  result = qword_1ECC44828;
  if (!qword_1ECC44828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44828);
  }

  return result;
}

unint64_t sub_1DB3A81F8(uint64_t a1)
{
  sub_1DB50B320();

  v1 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v1);

  return 0xD00000000000002CLL;
}

uint64_t sub_1DB3A8284@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Array<A>.init(_partiallyFrom:)(a1, *(a2 + 16), *(a3 - 8));
  *a4 = result;
  return result;
}

uint64_t sub_1DB3A82B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Dictionary<>.init(_partiallyFrom:)(a1, *(a2 + 24), *(a3 - 8));
  *a4 = result;
  return result;
}

uint64_t ImpressionMetrics.ID.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_1DB509E00();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  JSONObject.subscript.getter(25705, 0xE200000000000000, v30);
  v9 = JSONObject.string.getter();
  v11 = v10;
  sub_1DB3151CC(v30);
  if (v11)
  {
    v27 = v6;
    v31 = v9;
    JSONObject.subscript.getter(0x6973736572706D69, 0xEF7865646E496E6FLL, v30);
    v12 = JSONObject.int.getter();
    v14 = v13;
    sub_1DB3151CC(v30);
    if (v14)
    {
      v15 = -1;
    }

    else
    {
      v15 = v12;
    }

    JSONObject.subscript.getter(0x6449746E65726170, 0xE800000000000000, v30);
    v16 = JSONObject.string.getter();
    v28 = v17;
    v29 = v16;
    sub_1DB3151CC(v30);
    JSONObject.subscript.getter(0x4449657571696E75, 0xE800000000000000, v30);
    v18 = JSONObject.string.getter();
    v20 = v19;
    sub_1DB3151CC(v30);
    if (!v20)
    {
      if (v15 == -1)
      {
        sub_1DB509DF0();
        v18 = sub_1DB509DE0();
        v20 = v26;
        sub_1DB3151CC(a1);
        result = (*(v27 + 8))(v8, v5);
        goto LABEL_9;
      }

      v30[0] = v15;
      v18 = sub_1DB50B8F0();
      v20 = v21;
    }

    result = sub_1DB3151CC(a1);
LABEL_9:
    v23 = v28;
    *a3 = v29;
    a3[1] = v23;
    a3[2] = v31;
    a3[3] = v11;
    a3[4] = v15;
    a3[5] = v18;
    a3[6] = v20;
    return result;
  }

  sub_1DB315178();
  swift_allocError();
  *v24 = xmmword_1DB516330;
  v25 = MEMORY[0x1E69E7CC0];
  *(v24 + 16) = 0x40000001F56F6B28uLL;
  *(v24 + 24) = v25;
  swift_willThrow();
  return sub_1DB3151CC(a1);
}

void __swiftcall ImpressionMetrics.ID.init(parent:element:index:uniqueID:)(JetCore::ImpressionMetrics::ID *__return_ptr retstr, Swift::String_optional parent, Swift::String element, Swift::Int index, Swift::String_optional uniqueID)
{
  object = uniqueID.value._object;
  countAndFlagsBits = uniqueID.value._countAndFlagsBits;
  v8 = element._object;
  v9 = element._countAndFlagsBits;
  v10 = parent.value._object;
  v11 = parent.value._countAndFlagsBits;
  v13 = sub_1DB509E00();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!object)
  {
    if (index == -1)
    {
      v20[0] = v15;
      sub_1DB509DF0();
      countAndFlagsBits = sub_1DB509DE0();
      object = v19;
      (*(v14 + 8))(v17, v20[0]);
    }

    else
    {
      v20[1] = index;
      countAndFlagsBits = sub_1DB50B8F0();
      object = v18;
    }
  }

  retstr->parent.value._countAndFlagsBits = v11;
  retstr->parent.value._object = v10;
  retstr->element._countAndFlagsBits = v9;
  retstr->element._object = v8;
  retstr->index = index;
  retstr->uniqueID.value._countAndFlagsBits = countAndFlagsBits;
  retstr->uniqueID.value._object = object;
}

void __swiftcall ImpressionMetrics.ID.init(parent:element:index:)(JetCore::ImpressionMetrics::ID *__return_ptr retstr, Swift::String_optional parent, Swift::String element, Swift::Int index)
{
  v18[0] = element._object;
  countAndFlagsBits = element._countAndFlagsBits;
  object = parent.value._object;
  v7 = parent.value._countAndFlagsBits;
  v9 = sub_1DB509E00();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (index == -1)
  {
    sub_1DB509DF0();
    v13 = sub_1DB509DE0();
    v15 = v16;
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v18[1] = index;
    v13 = sub_1DB50B8F0();
    v15 = v14;
  }

  retstr->parent.value._countAndFlagsBits = v7;
  retstr->parent.value._object = object;
  v17 = v18[0];
  retstr->element._countAndFlagsBits = countAndFlagsBits;
  retstr->element._object = v17;
  retstr->index = index;
  retstr->uniqueID.value._countAndFlagsBits = v13;
  retstr->uniqueID.value._object = v15;
}

void __swiftcall ImpressionMetrics.ID.init(element:)(JetCore::ImpressionMetrics::ID *__return_ptr retstr, Swift::String element)
{
  object = element._object;
  countAndFlagsBits = element._countAndFlagsBits;
  v5 = sub_1DB509E00();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB509DF0();
  v9 = sub_1DB509DE0();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  retstr->parent.value._countAndFlagsBits = 0;
  retstr->parent.value._object = 0;
  retstr->element._countAndFlagsBits = countAndFlagsBits;
  retstr->element._object = object;
  retstr->index = -1;
  retstr->uniqueID.value._countAndFlagsBits = v9;
  retstr->uniqueID.value._object = v11;
}

uint64_t ImpressionMetrics.ID.parent.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ImpressionMetrics.ID.parent.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ImpressionMetrics.ID.element.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ImpressionMetrics.ID.element.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ImpressionMetrics.ID.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  if (*(v1 + 8))
  {
    sub_1DB50BD10();
    sub_1DB50A740();
  }

  else
  {
    sub_1DB50BD10();
  }

  sub_1DB50A740();
  if (!v2)
  {
    return sub_1DB50BD10();
  }

  sub_1DB50BD10();

  return sub_1DB50A740();
}

uint64_t ImpressionMetrics.ID.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);
  sub_1DB50BCF0();
  sub_1DB50BD10();
  if (v1)
  {
    sub_1DB50A740();
  }

  sub_1DB50A740();
  sub_1DB50BD10();
  if (v2)
  {
    sub_1DB50A740();
  }

  return sub_1DB50BD30();
}

uint64_t sub_1DB3A8C38(uint64_t a1)
{
  v2 = *(v1 + 48);
  if (*(v1 + 8))
  {
    sub_1DB50BD10();
    sub_1DB50A740();
  }

  else
  {
    sub_1DB50BD10();
  }

  sub_1DB50A740();
  if (!v2)
  {
    return sub_1DB50BD10();
  }

  sub_1DB50BD10();

  return sub_1DB50A740();
}

uint64_t sub_1DB3A8D10(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 48);
  sub_1DB50BCF0();
  sub_1DB50BD10();
  if (v2)
  {
    sub_1DB50A740();
  }

  sub_1DB50A740();
  sub_1DB50BD10();
  if (v3)
  {
    sub_1DB50A740();
  }

  return sub_1DB50BD30();
}

uint64_t ImpressionMetrics.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x73646C656966, 0xE600000000000000, v30);
  sub_1DB330D60(v30, v28);
  if (!v29)
  {

    sub_1DB3151CC(v30);
    sub_1DB30623C(v28, &qword_1ECC42E38, &qword_1DB50FB80);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
LABEL_12:
    sub_1DB30623C(&v23, &qword_1ECC42EA0, &qword_1DB50FB88);
LABEL_13:
    sub_1DB315178();
    swift_allocError();
    *v11 = xmmword_1DB50FF40;
    v12 = MEMORY[0x1E69E7CC0];
    *(v11 + 16) = 0x40000001F56F6AA0uLL;
    *(v11 + 24) = v12;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  __swift_project_boxed_opaque_existential_1(v28, v29);
  sub_1DB408B14(&v23);
  sub_1DB3151CC(v30);
  __swift_destroy_boxed_opaque_existential_0(v28);
  if (!*(&v24 + 1))
  {

    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
  v28[0] = 0;
  sub_1DB50A4A0();
  v7 = v28[0];
  if (!v28[0])
  {

    sub_1DB317740(&v23);
    goto LABEL_13;
  }

  sub_1DB317740(&v23);
  JSONObject.subscript.getter(25705, 0xE200000000000000, v30);

  sub_1DB391A2C(v30, v6, &v23);
  v8 = *(&v24 + 1);
  if (*(&v24 + 1))
  {
    v31 = v27;
    v21 = v24;
    v22 = v26;
    v20 = v25;
    v19 = v23;
  }

  else
  {
    JSONObject.subscript.getter(0x73646C656966, 0xE600000000000000, v30);
    v28[0] = v6;

    ImpressionMetrics.ID.init(deserializing:using:)(v30, &v23);
    if (v3)
    {
      sub_1DB3151CC(a1);
    }

    v19 = v23;
    v8 = *(&v24 + 1);
    v20 = v25;
    v21 = v24;
    v22 = v26;
    v31 = v27;
  }

  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, &v23);
  v28[0] = v6;
  ScalarDictionary.init(tryDeserializing:using:)(&v23, v28, v30);
  v9 = v30[0];
  JSONObject.subscript.getter(0x69466E6F6D6D6F63, 0xEC00000073646C65, v30);
  sub_1DB330D60(v30, v28);
  if (v29)
  {
    __swift_project_boxed_opaque_existential_1(v28, v29);
    sub_1DB408B14(&v23);
    sub_1DB3151CC(v30);
    __swift_destroy_boxed_opaque_existential_0(v28);
    if (*(&v24 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
      v28[0] = 0;
      sub_1DB50A4A0();
      v10 = v28[0];
      sub_1DB317740(&v23);
      if (v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else
  {
    sub_1DB3151CC(v30);
    sub_1DB30623C(v28, &qword_1ECC42E38, &qword_1DB50FB80);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
  }

  sub_1DB30623C(&v23, &qword_1ECC42EA0, &qword_1DB50FB88);
LABEL_19:
  v10 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
LABEL_20:
  JSONObject.subscript.getter(0xD000000000000013, 0x80000001DB529090, v30);
  sub_1DB330D60(v30, v28);
  if (v29)
  {
    __swift_project_boxed_opaque_existential_1(v28, v29);
    sub_1DB408B14(&v23);
    sub_1DB3151CC(v30);
    __swift_destroy_boxed_opaque_existential_0(v28);
    if (*(&v24 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
      v28[0] = 0;
      sub_1DB50A4A0();
      v14 = v28[0];
      sub_1DB317740(&v23);
      if (v14)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else
  {
    sub_1DB3151CC(v30);
    sub_1DB30623C(v28, &qword_1ECC42E38, &qword_1DB50FB80);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
  }

  sub_1DB30623C(&v23, &qword_1ECC42EA0, &qword_1DB50FB88);
LABEL_26:
  v14 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
LABEL_27:

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v23 = v10;
  sub_1DB314534(v7, sub_1DB313340, 0, isUniquelyReferenced_nonNull_native, &v23);

  if (v3)
  {

    __break(1u);
  }

  else
  {
    v16 = v23;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *&v23 = v10;
    sub_1DB314534(v14, sub_1DB313340, 0, v17, &v23);

    v18 = v23;
    result = sub_1DB3151CC(a1);
    *a3 = v19;
    *(a3 + 16) = v21;
    *(a3 + 24) = v8;
    *(a3 + 32) = v20;
    *(a3 + 40) = v22;
    *(a3 + 48) = v31;
    *(a3 + 56) = v16;
    *(a3 + 64) = v9;
    *(a3 + 72) = v18;
  }

  return result;
}

void __swiftcall ImpressionMetrics.init(id:fields:custom:commonFields:clickLocationFields:)(JetCore::ImpressionMetrics *__return_ptr retstr, JetCore::ImpressionMetrics::ID *id, Swift::OpaquePointer fields, JetCore::ScalarDictionary custom, Swift::OpaquePointer commonFields, Swift::OpaquePointer clickLocationFields)
{
  countAndFlagsBits = id->parent.value._countAndFlagsBits;
  object = id->parent.value._object;
  v12 = id->element._countAndFlagsBits;
  v13 = id->element._object;
  index = id->index;
  v19 = id->uniqueID.value._object;
  v20 = id->uniqueID.value._countAndFlagsBits;
  v21 = *custom.values._rawValue;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = commonFields._rawValue;
  sub_1DB314534(fields._rawValue, sub_1DB313340, 0, isUniquelyReferenced_nonNull_native, &rawValue);

  v16 = rawValue;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  rawValue = commonFields._rawValue;
  sub_1DB314534(clickLocationFields._rawValue, sub_1DB313340, 0, v17, &rawValue);

  v18 = rawValue;
  retstr->id.parent.value._countAndFlagsBits = countAndFlagsBits;
  retstr->id.parent.value._object = object;
  retstr->id.element._countAndFlagsBits = v12;
  retstr->id.element._object = v13;
  retstr->id.index = index;
  retstr->id.uniqueID.value._countAndFlagsBits = v20;
  retstr->id.uniqueID.value._object = v19;
  retstr->fields._rawValue = v16;
  retstr->custom.values._rawValue = v21;
  retstr->clickLocationFields._rawValue = v18;
}

uint64_t ImpressionMetrics.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v3;
}

__n128 ImpressionMetrics.id.setter(__int128 *a1)
{
  v5 = a1[1];
  v6 = *a1;
  v4 = a1[2];
  v2 = *(a1 + 6);

  *v1 = v6;
  *(v1 + 16) = v5;
  result = v4;
  *(v1 + 32) = v4;
  *(v1 + 48) = v2;
  return result;
}

uint64_t ImpressionMetrics.fields.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t ImpressionMetrics.custom.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 64) = v2;
  return result;
}

uint64_t ImpressionMetrics.clickLocationFields.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_1DB3A96C0()
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB3A9784(uint64_t a1)
{
  sub_1DB50A740();
}

uint64_t sub_1DB3A9834(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

unint64_t sub_1DB3A98F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB3ABE58(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DB3A9924(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6449746E65726170;
  v4 = 0xEF7865646E496E6FLL;
  v5 = 0x6973736572706D69;
  if (*v1 != 2)
  {
    v5 = 0x4449657571696E75;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 25705;
    v2 = 0xE200000000000000;
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

uint64_t sub_1DB3A99A4()
{
  v1 = 0x6449746E65726170;
  v2 = 0x6973736572706D69;
  if (*v0 != 2)
  {
    v2 = 0x4449657571696E75;
  }

  if (*v0)
  {
    v1 = 25705;
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

unint64_t sub_1DB3A9A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB3ABE58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB3A9A48(uint64_t a1)
{
  v2 = sub_1DB3AB91C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3A9A84(uint64_t a1)
{
  v2 = sub_1DB3AB91C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImpressionMetrics.ID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v4 = sub_1DB509E00();
  v42 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44830, &unk_1DB516340);
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3AB91C();
  sub_1DB50BDF0();
  if (!v2)
  {
    v38 = v6;
    v10 = v41;
    v11 = v42;
    LOBYTE(v43) = 0;
    if (sub_1DB50B7B0())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44330, &unk_1DB516CE0);
      v45 = 0;
      sub_1DB3980E8();
      sub_1DB50B780();
      v12 = v4;
      v37 = v43;
      v39 = v44;
    }

    else
    {
      v37 = 0;
      v39 = 0;
      v12 = v4;
    }

    LOBYTE(v43) = 1;
    v13 = v7;
    v14 = sub_1DB50B740();
    v16 = v15;
    v36 = v14;
    LOBYTE(v43) = 2;
    v17 = sub_1DB50B700();
    if (v18)
    {
      v21 = -1;
    }

    else
    {
      v21 = v17;
    }

    v35 = v21;
    LOBYTE(v43) = 3;
    if (sub_1DB50B7B0())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44330, &unk_1DB516CE0);
      v45 = 3;
      sub_1DB3980E8();
      sub_1DB50B780();
      v34 = v16;
      v22 = v44;
      if (v44)
      {
        v23 = v43;
        (*(v10 + 8))(v9, v13);
        v19 = a1;
        v24 = v35;
LABEL_19:
        v30 = v40;
        v31 = v39;
        *v40 = v37;
        v30[1] = v31;
        v32 = v34;
        v30[2] = v36;
        v30[3] = v32;
        v30[4] = v24;
        v30[5] = v23;
        v30[6] = v22;
        return __swift_destroy_boxed_opaque_existential_0(v19);
      }
    }

    else
    {
      v34 = v16;
    }

    v33 = a1;
    v24 = v35;
    v25 = v38;
    if (v35 == -1)
    {
      sub_1DB509DF0();
      v27 = sub_1DB509DE0();
      v22 = v28;
      v29 = v12;
      v23 = v27;
      (*(v11 + 8))(v25, v29);
    }

    else
    {
      v43 = v35;
      v23 = sub_1DB50B8F0();
      v22 = v26;
    }

    (*(v10 + 8))(v9, v13);
    v19 = v33;
    goto LABEL_19;
  }

  v19 = a1;
  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t ImpressionMetrics.ID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44840, &qword_1DB516358);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v17 = v1[3];
  v18 = v9;
  v10 = v1[4];
  v15 = v1[5];
  v16 = v10;
  v14 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3AB91C();

  sub_1DB50BE40();
  v20 = v7;
  v21 = v8;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46C00, &qword_1DB516350);
  sub_1DB32500C(&qword_1ECC42FF0, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
  v11 = v19;
  sub_1DB50B8A0();

  if (!v11)
  {
    v12 = v15;
    LOBYTE(v20) = 1;
    sub_1DB50B860();
    LOBYTE(v20) = 2;
    sub_1DB50B890();
    v20 = v12;
    v21 = v14;
    v22 = 3;
    sub_1DB50B8A0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DB3AA188()
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB3AA264(uint64_t a1)
{
  sub_1DB50A740();
}

uint64_t sub_1DB3AA32C(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

unint64_t sub_1DB3AA404@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB3ABE0C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DB3AA434(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE600000000000000;
  v6 = 0x6D6F74737563;
  v7 = 0xEC00000073646C65;
  v8 = 0x69466E6F6D6D6F63;
  if (v2 != 3)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000001DB529090;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x73646C656966;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DB3AA4CC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6D6F74737563;
  v4 = 0x69466E6F6D6D6F63;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73646C656966;
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

unint64_t sub_1DB3AA560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB3ABE0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB3AA588(uint64_t a1)
{
  v2 = sub_1DB3258F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3AA5C4(uint64_t a1)
{
  v2 = sub_1DB3258F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImpressionMetrics.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44848, &unk_1DB516360);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3258F4();
  sub_1DB50BDF0();
  if (!v2)
  {
    LOBYTE(v52) = 0;
    sub_1DB3AB970();
    sub_1DB50B780();
    v56 = v6;
    v47 = a2;
    v9 = v55[1];
    v46 = v55[0];
    v10 = v55[3];
    v45 = v55[2];
    v44 = v55[4];
    v43 = v55[5];
    v11 = v55[6];
    LOBYTE(v52) = 1;
    v12 = sub_1DB324D00();
    sub_1DB50B780();
    v39 = v12;
    v42 = v10;
    v41 = v11;
    sub_1DB330D60(v55, v50);
    if (v51)
    {
      __swift_project_boxed_opaque_existential_1(v50, v51);
      sub_1DB408B14(&v52);
      __swift_destroy_boxed_opaque_existential_0(v50);
      if (*(&v53 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
        v50[0] = 0;
        sub_1DB50A4A0();
        v14 = v56;
        v38 = v50[0];
        if (v50[0])
        {
          sub_1DB317740(&v52);
          LOBYTE(v52) = 2;
          if (sub_1DB50B7B0())
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC444B0, &qword_1DB514F98);
            LOBYTE(v50[0]) = 2;
            sub_1DB39A328(&qword_1ECC444B8, &protocol witness table for ScalarDictionary, &protocol conformance descriptor for <A> DiscardOnError<A>);
            sub_1DB50B780();
            v19 = v52;
          }

          else
          {
            v19 = MEMORY[0x1E69E7CC8];
          }

          v37 = v19;
          v20 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
          LOBYTE(v52) = 3;
          if ((sub_1DB50B7B0() & 1) == 0)
          {
            v36 = v20;
            v35 = v9;
            v21 = v56;
            goto LABEL_25;
          }

          LOBYTE(v48[0]) = 3;
          sub_1DB50B780();
          sub_1DB330D60(v50, v48);
          v35 = v9;
          if (v49)
          {
            __swift_project_boxed_opaque_existential_1(v48, v49);
            sub_1DB408B14(&v52);
            sub_1DB3151CC(v50);
            __swift_destroy_boxed_opaque_existential_0(v48);
            if (*(&v53 + 1))
            {
              __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
              v48[0] = 0;
              sub_1DB50A4A0();
              v22 = v48[0];
              sub_1DB317740(&v52);
              v21 = v56;
              if (v22)
              {
                v36 = v22;
                goto LABEL_25;
              }

LABEL_24:
              v36 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
LABEL_25:
              v23 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
              LOBYTE(v52) = 4;
              if (sub_1DB50B7B0())
              {

                LOBYTE(v48[0]) = 4;
                sub_1DB50B780();
                sub_1DB330D60(v50, v48);
                if (v49)
                {
                  __swift_project_boxed_opaque_existential_1(v48, v49);
                  sub_1DB408B14(&v52);
                  sub_1DB3151CC(v50);
                  __swift_destroy_boxed_opaque_existential_0(v48);
                  v24 = v38;
                  v25 = v36;
                  if (*(&v53 + 1))
                  {
                    __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
                    v48[0] = 0;
                    sub_1DB50A4A0();
                    v23 = v48[0];
                    sub_1DB317740(&v52);
                    if (!v23)
                    {
                      goto LABEL_34;
                    }

LABEL_35:

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *&v52 = v25;
                    sub_1DB314534(v24, sub_1DB313340, 0, isUniquelyReferenced_nonNull_native, &v52);

                    v27 = v52;
                    v28 = swift_isUniquelyReferenced_nonNull_native();
                    *&v52 = v25;
                    sub_1DB314534(v23, sub_1DB313340, 0, v28, &v52);

                    v29 = v52;
                    sub_1DB3151CC(v55);
                    (*(v21 + 8))(v8, v5);
                    v30 = v47;
                    v31 = v35;
                    *v47 = v46;
                    v30[1] = v31;
                    v32 = v42;
                    v30[2] = v45;
                    v30[3] = v32;
                    v33 = v43;
                    v30[4] = v44;
                    v30[5] = v33;
                    v30[6] = v41;
                    v30[7] = v27;
                    v30[8] = v37;
                    v30[9] = v29;
                    return __swift_destroy_boxed_opaque_existential_0(a1);
                  }
                }

                else
                {
                  sub_1DB3151CC(v50);
                  sub_1DB30623C(v48, &qword_1ECC42E38, &qword_1DB50FB80);
                  v52 = 0u;
                  v53 = 0u;
                  v54 = 0;
                  v24 = v38;
                  v25 = v36;
                }

                sub_1DB30623C(&v52, &qword_1ECC42EA0, &qword_1DB50FB88);
LABEL_34:
                v23 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
                goto LABEL_35;
              }

              v24 = v38;
              v25 = v36;
              goto LABEL_35;
            }
          }

          else
          {
            sub_1DB3151CC(v50);
            sub_1DB30623C(v48, &qword_1ECC42E38, &qword_1DB50FB80);
            v52 = 0u;
            v53 = 0u;
            v54 = 0;
          }

          sub_1DB30623C(&v52, &qword_1ECC42EA0, &qword_1DB50FB88);
          v21 = v56;
          goto LABEL_24;
        }

        v40 = v5;

        sub_1DB317740(&v52);
        goto LABEL_12;
      }
    }

    else
    {

      sub_1DB30623C(v50, &qword_1ECC42E38, &qword_1DB50FB80);
      v52 = 0u;
      v53 = 0u;
      v54 = 0;
    }

    v14 = v56;
    v40 = v5;
    sub_1DB30623C(&v52, &qword_1ECC42EA0, &qword_1DB50FB88);
LABEL_12:
    v15 = sub_1DB50B3E0();
    swift_allocError();
    v17 = v16;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v18 = sub_1DB50BDB0();
    sub_1DB324928(1, v18);

    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](96, 0xE100000000000000);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0xD000000000000018, 0x80000001DB5299D0);
    sub_1DB50B3C0();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6AF8], v15);
    swift_willThrow();
    sub_1DB3151CC(v55);
    (*(v14 + 8))(v8, v40);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ImpressionMetrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44858, &qword_1DB516370);
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[3];
  v25 = v1[2];
  v26 = v6;
  v9 = v1[4];
  v23 = v1[5];
  v24 = v9;
  v11 = v1[6];
  v10 = v1[7];
  v12 = v1[9];
  v21 = v1[8];
  v22 = v10;
  v20 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3258F4();

  sub_1DB50BE40();
  v30[0] = v26;
  v30[1] = v7;
  v30[2] = v25;
  v31 = v8;
  v32 = v24;
  v33 = v23;
  v34 = v11;
  LOBYTE(v28) = 0;
  sub_1DB3AB9C4();
  v13 = v5;
  v14 = v27;
  sub_1DB50B8A0();
  if (v14)
  {

    return (*(v35 + 8))(v5, v3);
  }

  else
  {
    v16 = v21;
    v17 = v35;

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
    v29 = v18;
    *&v28 = v22;
    v31 = &type metadata for FoundationValue;
    v32 = &off_1F56FB6B0;
    v30[0] = swift_allocObject();
    sub_1DB30C200(&v28, (v30[0] + 16));
    LOBYTE(v28) = 1;
    sub_1DB325078();

    sub_1DB50B8A0();
    sub_1DB3151CC(v30);
    v30[0] = v16;
    LOBYTE(v28) = 2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC444B0, &qword_1DB514F98);
    sub_1DB39A328(&qword_1ECC44500, &protocol witness table for ScalarDictionary, &protocol conformance descriptor for <A> DiscardOnError<A>);
    sub_1DB50B8A0();

    v29 = v18;
    *&v28 = v20;
    v31 = &type metadata for FoundationValue;
    v32 = &off_1F56FB6B0;
    v30[0] = swift_allocObject();
    sub_1DB30C200(&v28, (v30[0] + 16));
    LOBYTE(v28) = 4;

    sub_1DB50B8A0();
    sub_1DB3151CC(v30);
    return (*(v17 + 8))(v13, v3);
  }
}

void __swiftcall ImpressionMetrics.init(id:fields:custom:)(JetCore::ImpressionMetrics *__return_ptr retstr, JetCore::ImpressionMetrics::ID *id, Swift::OpaquePointer fields, JetCore::ScalarDictionary custom)
{
  countAndFlagsBits = id->parent.value._countAndFlagsBits;
  object = id->parent.value._object;
  v8 = id->element._countAndFlagsBits;
  v9 = id->element._object;
  index = id->index;
  v18 = id->uniqueID.value._object;
  v19 = id->uniqueID.value._countAndFlagsBits;
  v20 = *custom.values._rawValue;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  v13 = sub_1DB3135C0(v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v12;
  sub_1DB314534(fields._rawValue, sub_1DB313340, 0, isUniquelyReferenced_nonNull_native, &v21);

  v15 = v21;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = v12;
  sub_1DB314534(v13, sub_1DB313340, 0, v16, &v21);

  v17 = v21;
  retstr->id.parent.value._countAndFlagsBits = countAndFlagsBits;
  retstr->id.parent.value._object = object;
  retstr->id.element._countAndFlagsBits = v8;
  retstr->id.element._object = v9;
  retstr->id.index = index;
  retstr->id.uniqueID.value._countAndFlagsBits = v19;
  retstr->id.uniqueID.value._object = v18;
  retstr->fields._rawValue = v15;
  retstr->custom.values._rawValue = v20;
  retstr->clickLocationFields._rawValue = v17;
}

uint64_t _s7JetCore17ImpressionMetricsV2IDV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[5];
  v5 = a1[6];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[5];
  v9 = a2[6];
  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1DB50BA30() & 1) == 0)
  {
    return 0;
  }

  if (!v3)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v6 || (v2 != v7 || v3 != v6) && (sub_1DB50BA30() & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  result = (v5 | v9) == 0;
  if (v5 && v9)
  {
    if (v4 == v8 && v5 == v9)
    {
      return 1;
    }

    else
    {

      return sub_1DB50BA30();
    }
  }

  return result;
}

uint64_t _s7JetCore17ImpressionMetricsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 48);
  v14 = *(a1 + 64);
  v15 = *(a1 + 56);
  v12 = *(a1 + 72);
  v5 = *a2;
  v6 = *(a2 + 24);
  v7 = *(a2 + 56);
  v13 = *(a2 + 64);
  v11 = *(a2 + 72);
  v20 = *(a2 + 48);
  v21 = v2;
  v22 = *(a1 + 8);
  v23 = v3;
  v24 = *(a1 + 32);
  v25 = v4;
  v16 = v5;
  v17 = *(a2 + 8);
  v18 = v6;
  v19 = *(a2 + 32);
  v8 = _s7JetCore17ImpressionMetricsV2IDV2eeoiySbAE_AEtFZ_0(&v21, &v16);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1DB404C28(v15, v7, 3uLL, 0) & 1) == 0)
  {
    return 0;
  }

  v9 = sub_1DB33C710(v14, v13);

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  return sub_1DB404C28(v12, v11, 3uLL, 0);
}

unint64_t sub_1DB3AB91C()
{
  result = qword_1ECC44838;
  if (!qword_1ECC44838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44838);
  }

  return result;
}

unint64_t sub_1DB3AB970()
{
  result = qword_1ECC44850;
  if (!qword_1ECC44850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44850);
  }

  return result;
}

unint64_t sub_1DB3AB9C4()
{
  result = qword_1ECC44860;
  if (!qword_1ECC44860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44860);
  }

  return result;
}

unint64_t sub_1DB3ABA1C()
{
  result = qword_1ECC44868;
  if (!qword_1ECC44868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44868);
  }

  return result;
}

uint64_t sub_1DB3ABA70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1DB3ABAB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DB3ABB38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1DB3ABB80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB3ABC00()
{
  result = qword_1ECC44870;
  if (!qword_1ECC44870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44870);
  }

  return result;
}

unint64_t sub_1DB3ABC58()
{
  result = qword_1ECC44878;
  if (!qword_1ECC44878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44878);
  }

  return result;
}

unint64_t sub_1DB3ABCB0()
{
  result = qword_1ECC44880;
  if (!qword_1ECC44880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44880);
  }

  return result;
}

unint64_t sub_1DB3ABD08()
{
  result = qword_1ECC44888;
  if (!qword_1ECC44888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44888);
  }

  return result;
}

unint64_t sub_1DB3ABD60()
{
  result = qword_1ECC44890;
  if (!qword_1ECC44890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44890);
  }

  return result;
}

unint64_t sub_1DB3ABDB8()
{
  result = qword_1ECC44898;
  if (!qword_1ECC44898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44898);
  }

  return result;
}

unint64_t sub_1DB3ABE0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB50B680();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DB3ABE58(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB50B680();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB3ABEA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1DB3413EC(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1DB50B250();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 8 * result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1DB3413EC((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1DB3ADCD0(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1DB3ADCD0(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
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
  return result;
}

uint64_t static StartUpPerformanceEvent.Checkpoint.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 == v2)
    {
      return 1;
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t StartUpPerformanceEvent.Checkpoint.hash(into:)()
{
  v1 = *v0;
  if (*v0)
  {
    MEMORY[0x1E12871F0](0);
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x1E12871F0](v1);
}

uint64_t StartUpPerformanceEvent.Checkpoint.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  if (v1)
  {
    MEMORY[0x1E12871F0](0);
  }

  else
  {
    v1 = 1;
  }

  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB3AC1B0()
{
  v1 = *v0;
  sub_1DB50BCF0();
  if (v1)
  {
    MEMORY[0x1E12871F0](0);
  }

  else
  {
    v1 = 1;
  }

  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB3AC210()
{
  v1 = *v0;
  if (*v0)
  {
    MEMORY[0x1E12871F0](0);
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x1E12871F0](v1);
}

uint64_t sub_1DB3AC254(uint64_t a1)
{
  v2 = *v1;
  sub_1DB50BCF0();
  if (v2)
  {
    MEMORY[0x1E12871F0](0);
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1E12871F0](v2);
  return sub_1DB50BD30();
}

uint64_t sub_1DB3AC2B0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 == v2)
    {
      return 1;
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

void *sub_1DB3AC2D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[2] = a1;
  sub_1DB50A3E0();
  v2[3] = sub_1DB50A3B0();
  v5 = sub_1DB3ABEA4(a2);

  v6 = sub_1DB324AF8(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC448D0, &qword_1DB516A00);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v6;
  v3[5] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC448D8, &qword_1DB516A08);
  v8 = swift_allocObject();
  *(v8 + 20) = 0;
  *(v8 + 16) = 0;
  v3[6] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC448E0, &unk_1DB516A10);
  swift_allocObject();
  v3[4] = sub_1DB3AD334();
  return v3;
}

void *static StartUpPerformanceEvent.forLazy(domain:withCheckpoints:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    sub_1DB3D2874("JetCore/StartUpPerformanceEvent.swift", 0x25uLL, 2, 0x5CuLL);
  }

  swift_allocObject();

  return sub_1DB3AC2D8(a1, a2);
}

void *static StartUpPerformanceEvent.forBootstrap(domain:)(uint64_t a1)
{
  v2 = sub_1DB3AD894(&unk_1F56F05C0);
  swift_allocObject();
  return sub_1DB3AC2D8(a1, v2);
}

void *StartUpPerformanceEvent.deinit()
{
  v1 = *(v0 + 48);

  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));

  if (v2 == 1)
  {
    sub_1DB3AC58C();
  }

  return v0;
}

uint64_t sub_1DB3AC58C()
{
  v1 = v0;
  v2 = sub_1DB50A3A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 48);

  os_unfair_lock_lock((v6 + 20));
  sub_1DB3AD04C((v6 + 16), &v21);
  os_unfair_lock_unlock((v6 + 20));
  v7 = v21;

  if (v7 == 1)
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E6977AC8], v2);
    sub_1DB50A3D0();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v9 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DB50EE90;
    v25 = sub_1DB301BC0(0, 55, 0, MEMORY[0x1E69E7CC0]);
    v11._object = 0x80000001DB52C060;
    v11._countAndFlagsBits = 0xD000000000000036;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    v12 = *(v1 + 48);
    v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC448C0, &qword_1DB5169F0);
    v24[0] = v12;
    sub_1DB301CDC(v24, v20);
    v21 = 0u;
    v22 = 0u;

    sub_1DB301D4C(v20, &v21);
    v23 = 0;
    v13 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1DB301BC0(0, *(v13 + 2) + 1, 1, v13);
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1DB301BC0((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[40 * v15];
    v17 = v21;
    v18 = v22;
    v16[64] = v23;
    *(v16 + 2) = v17;
    *(v16 + 3) = v18;
    v25 = v13;
    sub_1DB301DBC(v24);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(v10 + 32) = v25;
    *&v21 = v9;
    LOBYTE(v24[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v10, v24);
  }
}

uint64_t StartUpPerformanceEvent.__deallocating_deinit()
{
  v1 = *(v0 + 48);

  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));

  if (v2 == 1)
  {
    sub_1DB3AC58C();
  }

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

Swift::Void __swiftcall StartUpPerformanceEvent.start()()
{
  if (!sub_1DB3AC958())
  {

    sub_1DB3D2E4C("JetCore/StartUpPerformanceEvent.swift", 0x25uLL, 2, 0x89uLL);
  }
}

BOOL sub_1DB3AC958()
{
  v1 = *(v0 + 48);

  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  if (*(v1 + 16))
  {
    os_unfair_lock_unlock((v1 + 20));
  }

  else
  {
    *(v1 + 16) = 1;
    os_unfair_lock_unlock((v1 + 20));

    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v3 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1DB50EE90;
    v6 = MEMORY[0x1E69E6158];
    v19 = MEMORY[0x1E69E6158];
    v16 = 0xD00000000000001ALL;
    v17 = 0x80000001DB52C040;
    *(v5 + 48) = 0u;
    *(v5 + 32) = 0u;
    sub_1DB301D4C(&v16, v5 + 32);
    *(v5 + 64) = 0;
    *(v4 + 32) = v5;
    v7 = sub_1DB50AF40();
    if (os_log_type_enabled(v3, v7))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v8 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v8[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v8 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v10 = swift_allocObject();
      *(v10 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      v16 = v4;
      v17 = sub_1DB31485C;
      v18 = v10;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v11 = sub_1DB50A5E0();
      v13 = v12;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1DB50EE90;
      *(v14 + 56) = v6;
      *(v14 + 64) = sub_1DB31494C();
      *(v14 + 32) = v11;
      *(v14 + 40) = v13;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v3, v7, v14);
    }

    else
    {
    }

    sub_1DB50A3C0();
  }

  return v2 == 0;
}

uint64_t StartUpPerformanceEvent.record(checkpoint:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 48);

  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));

  if (!v4)
  {
    sub_1DB3D3424("JetCore/StartUpPerformanceEvent.swift", 37, 2, 145, v2);
  }

  v5 = *(v1 + 40);

  os_unfair_lock_lock(v5 + 6);
  sub_1DB3ACD48(&v5[4], v2, &v8);
  os_unfair_lock_unlock(v5 + 6);
  v6 = v8;

  if (v6)
  {

    return sub_1DB3AC58C();
  }

  return result;
}

uint64_t sub_1DB3ACD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  result = sub_1DB336000(a2, &v26);
  v6 = v26;
  if (v26 != 1)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v7 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1DB50EE90;
    v31 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v9._object = 0x80000001DB52C020;
    v9._countAndFlagsBits = 0xD00000000000001ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    v30 = &type metadata for StartUpPerformanceEvent.RawCheckpoint;
    v29[0] = v6;
    sub_1DB301CDC(v29, v25);
    v26 = 0u;
    v27 = 0u;
    sub_1DB301D4C(v25, &v26);
    v28 = 0;
    v10 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1DB301BC0(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[40 * v12];
    v14 = v26;
    v15 = v27;
    v13[64] = v28;
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    v31 = v10;
    sub_1DB301DBC(v29);
    v16._countAndFlagsBits = 10272;
    v16._object = 0xE200000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    v17 = *(*a1 + 16);
    v30 = MEMORY[0x1E69E6530];
    v29[0] = v17;
    sub_1DB301CDC(v29, v25);
    v26 = 0u;
    v27 = 0u;
    sub_1DB301D4C(v25, &v26);
    v28 = 0;
    v18 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1DB301BC0(0, *(v18 + 2) + 1, 1, v18);
      v31 = v18;
    }

    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1DB301BC0((v19 > 1), v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v21 = &v18[40 * v20];
    v22 = v26;
    v23 = v27;
    v21[64] = v28;
    *(v21 + 2) = v22;
    *(v21 + 3) = v23;
    v31 = v18;
    sub_1DB301DBC(v29);
    v24._countAndFlagsBits = 0x696E69616D657220;
    v24._object = 0xEB0000000029676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    *(v8 + 32) = v31;
    *&v26 = v7;
    LOBYTE(v29[0]) = 3;
    OSLogger.log(contentsOf:withLevel:)(v8, v29);
  }

  *a3 = *(*a1 + 16) == 0;
  return result;
}

_BYTE *sub_1DB3AD04C@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v3 = result;
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v4 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1DB50EE90;
    v19 = MEMORY[0x1E69E6158];
    v16 = 0xD000000000000024;
    v17 = 0x80000001DB52C0A0;
    *(v6 + 48) = 0u;
    *(v6 + 32) = 0u;
    sub_1DB301D4C(&v16, v6 + 32);
    *(v6 + 64) = 0;
    *(v5 + 32) = v6;
    v7 = sub_1DB50AF40();
    if (os_log_type_enabled(v4, v7))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v8 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v8[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v8 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v10 = swift_allocObject();
      *(v10 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      v16 = v5;
      v17 = sub_1DB314CB0;
      v18 = v10;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v11 = sub_1DB50A5E0();
      v13 = v12;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1DB50EE90;
      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = sub_1DB31494C();
      *(v14 + 32) = v11;
      *(v14 + 40) = v13;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v4, v7, v14);
    }

    *v3 = 2;
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  *a2 = v15;
  return result;
}

uint64_t sub_1DB3AD334()
{
  v12 = sub_1DB50AFA0();
  v1 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DB50A440();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DB50AF80();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1DB357BD4();
  v11[0] = "up performance event";
  v11[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC448E8, &unk_1DB518F40);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB50EE90;
  sub_1DB50AF70();
  v13 = v7;
  sub_1DB37B35C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB3370CC(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400, MEMORY[0x1E69E6328]);
  sub_1DB50B240();
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v12);
  v8 = sub_1DB50AFD0();
  v9 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v8;
  *(v0 + 24) = v9;
  return v0;
}

uint64_t sub_1DB3AD5F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC448B8, &unk_1DB5169E0);
    v3 = sub_1DB50B2F0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 4 * v4);
      sub_1DB50BCF0();
      sub_1DB50BD20();
      result = sub_1DB50BD30();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 4 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 4 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1DB3AD72C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43170, &qword_1DB510A68);
    v3 = sub_1DB50B2F0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1DB50BCF0();

      sub_1DB50A740();
      result = sub_1DB50BD30();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1DB50BA30();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1DB3AD894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC448C8, &qword_1DB5169F8);
    v3 = sub_1DB50B2F0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_1DB50BCF0();
      if (v10)
      {
        MEMORY[0x1E12871F0](0);
        v11 = v10;
      }

      else
      {
        v11 = 1;
      }

      MEMORY[0x1E12871F0](v11);
      result = sub_1DB50BD30();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        do
        {
          v19 = *(v18 + 8 * v14);
          if (v19)
          {
            if (v19 == v10)
            {
              goto LABEL_5;
            }
          }

          else if (!v10)
          {
            goto LABEL_5;
          }

          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
        }

        while ((v16 & (1 << v14)) != 0);
      }

      *(v5 + 8 * v15) = v16 | v17;
      *(v18 + 8 * v14) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        break;
      }

      *(v3 + 16) = v9;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1DB3AD9F8()
{
  result = qword_1ECC448A0;
  if (!qword_1ECC448A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC448A0);
  }

  return result;
}

unint64_t sub_1DB3ADABC()
{
  result = qword_1ECC448A8;
  if (!qword_1ECC448A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC448A8);
  }

  return result;
}

unint64_t sub_1DB3ADB14()
{
  result = qword_1ECC448B0;
  if (!qword_1ECC448B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC448B0);
  }

  return result;
}

uint64_t sub_1DB3ADB68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43140, &unk_1DB521640);
    v3 = sub_1DB50B2F0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1DB50BCF0();

      sub_1DB50A740();
      result = sub_1DB50BD30();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1DB50BA30();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1DB3ADCD0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t MonotonicTimeReference.init(date:time:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = sub_1DB509DD0();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  result = type metadata accessor for MonotonicTimeReference(0);
  v9 = (a3 + *(result + 20));
  *v9 = v5;
  v9[1] = v6;
  return result;
}

uint64_t type metadata accessor for MonotonicTimeReference(uint64_t a1)
{
  result = qword_1ECC448F0;
  if (!qword_1ECC448F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double static MonotonicTimeReference.-= infix(_:_:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for MonotonicTimeReference(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB3ADED8(a1, v6);
  sub_1DB509D70();
  v7 = &v6[*(v4 + 20)];
  v8 = *v7;
  v9 = v7[1];
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  MonotonicTime.init(timeInterval:)(v9 / *&qword_1EE30ED50 + v8 - a2);
  sub_1DB38288C(v6);
  result = *&v11;
  *(a1 + *(v4 + 20)) = v11;
  return result;
}

uint64_t sub_1DB3ADED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonotonicTimeReference(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

JetCore::MonotonicTime __swiftcall MonotonicTimeReference.time(fromIntervalSince1970:)(Swift::Double fromIntervalSince1970)
{
  v2 = v1;
  v3 = sub_1DB509DD0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB509D80();
  sub_1DB509D20();
  v8 = v7;
  v9 = (v2 + *(type metadata accessor for MonotonicTimeReference(0) + 20));
  v10 = *v9;
  v11 = v9[1];
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  MonotonicTime.init(timeInterval:)(v8 + v11 / *&qword_1EE30ED50 + v10);
  v12 = (*(v4 + 8))(v6, v3);
  result.nanoseconds = v13;
  result.seconds = v12;
  return result;
}

uint64_t MonotonicTimeReference.referenceDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DB509DD0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__n128 MonotonicTimeReference.referenceTime.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for MonotonicTimeReference(0) + 20));
  *a1 = result;
  return result;
}

double static MonotonicTimeReference.+ infix(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_1DB509D60();
  v6 = type metadata accessor for MonotonicTimeReference(0);
  v7 = (a1 + *(v6 + 20));
  v8 = *v7;
  v9 = v7[1];
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  MonotonicTime.init(timeInterval:)(v9 / *&qword_1EE30ED50 + v8 + a3);
  result = *&v11;
  *(a2 + *(v6 + 20)) = v11;
  return result;
}

double static MonotonicTimeReference.+= infix(_:_:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for MonotonicTimeReference(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB3ADED8(a1, v6);
  sub_1DB509D60();
  v7 = &v6[*(v4 + 20)];
  v8 = *v7;
  v9 = v7[1];
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  MonotonicTime.init(timeInterval:)(v9 / *&qword_1EE30ED50 + v8 + a2);
  sub_1DB38288C(v6);
  result = *&v11;
  *(a1 + *(v4 + 20)) = v11;
  return result;
}

double static MonotonicTimeReference.- infix(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_1DB509D70();
  v6 = type metadata accessor for MonotonicTimeReference(0);
  v7 = (a1 + *(v6 + 20));
  v8 = *v7;
  v9 = v7[1];
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  MonotonicTime.init(timeInterval:)(v9 / *&qword_1EE30ED50 + v8 - a3);
  result = *&v11;
  *(a2 + *(v6 + 20)) = v11;
  return result;
}

uint64_t MonotonicTimeReference.date(from:)(uint64_t *a1)
{
  type metadata accessor for MonotonicTimeReference(0);
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  return sub_1DB509D60();
}

Swift::Int MonotonicTimeReference.time(from:)()
{
  sub_1DB509D20();
  v2 = v1;
  v3 = (v0 + *(type metadata accessor for MonotonicTimeReference(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v6 = v2 + v5 / *&qword_1EE30ED50 + v4;

  return MonotonicTime.init(timeInterval:)(v6).seconds;
}

BOOL static MonotonicTimeReference.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1DB509DA0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MonotonicTimeReference(0) + 20);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  return v6 == v9 && v5 == v8;
}

BOOL sub_1DB3AE594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1DB509DA0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v11 = *v9;
  v10 = v9[1];
  return v8 == v11 && v7 == v10;
}

uint64_t sub_1DB3AE61C(uint64_t a1)
{
  result = sub_1DB509DD0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _DispatchQueueExecutor.__allocating_init(label:qos:target:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v22 = a4;
  v16 = a3;
  v20 = a1;
  v5 = sub_1DB50AFA0();
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v17 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DB50AF80();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DB50A440();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v15[1] = sub_1DB357BD4();
  (*(v9 + 16))(v11, a3, v8);
  v23 = MEMORY[0x1E69E7CC0];
  sub_1DB3AF044(&qword_1EE30C810, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB35AA0C(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400);
  sub_1DB50B240();
  (*(v18 + 104))(v17, *MEMORY[0x1E69E8098], v19);
  v13 = sub_1DB50AFD0();
  (*(v9 + 8))(v16, v8);
  *(v12 + 16) = v13;
  return v12;
}

uint64_t _DispatchQueueExecutor.init(label:qos:target:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v16 = a3;
  v19 = a1;
  v20 = a2;
  v5 = sub_1DB50AFA0();
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DB50AF80();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DB50A440();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = sub_1DB357BD4();
  (*(v10 + 16))(v12, a3, v9);
  v23 = MEMORY[0x1E69E7CC0];
  sub_1DB3AF044(&qword_1EE30C810, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB35AA0C(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400);
  sub_1DB50B240();
  (*(v17 + 104))(v7, *MEMORY[0x1E69E8098], v18);
  v13 = sub_1DB50AFD0();
  (*(v10 + 8))(v16, v9);
  result = v22;
  *(v22 + 16) = v13;
  return result;
}

uint64_t _DispatchQueueExecutor.enqueue(_:)(uint64_t a1)
{
  v3 = sub_1DB50A400();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DB50A440();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + 16);
  v11 = sub_1DB3AF044(&qword_1EE30CDB0, v10, type metadata accessor for _DispatchQueueExecutor, &protocol conformance descriptor for _DispatchQueueExecutor);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v1;
  v12[4] = v11;
  aBlock[4] = sub_1DB3AEF80;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  aBlock[3] = &block_descriptor_7;
  v13 = _Block_copy(aBlock);
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DB3AF044(qword_1EE30E380, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB35AA0C(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB50B240();
  MEMORY[0x1E12864B0](0, v9, v6, v13);
  _Block_release(v13);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _DispatchQueueExecutor.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DB3AF044(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB3AF0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_1DB3AF044(qword_1EE30CDB8, a2, type metadata accessor for _DispatchQueueExecutor, &protocol conformance descriptor for _DispatchQueueExecutor);

  return a4(a1, v6, v7);
}

void sub_1DB3AF284(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44918, &qword_1DB518DE0);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v38 - v4;
  v5 = sub_1DB50B560();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44920, &qword_1DB516B68);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v42 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v43 = a1;
  v41 = v18;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v20 << 6);
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v25, v5, v13);
    sub_1DB300B14(*(v15 + 56) + 32 * v25, v44);
    v26 = *(v40 + 48);
    v27 = v5;
    v28 = v40;
    (*(v6 + 32))(v14, v8, v27);
    sub_1DB30C200(v44, &v14[v26]);
    v29 = v39;
    (*(v39 + 56))(v14, 0, 1, v28);
    v23 = v20;
LABEL_11:
    *v1 = v15;
    v1[1] = v16;
    v1[2] = v41;
    v1[3] = v23;
    v1[4] = v24;
    v30 = v1[5];
    v31 = v42;
    sub_1DB30C06C(v14, v42, &qword_1ECC44920, &qword_1DB516B68);
    v32 = 1;
    v33 = (*(v29 + 48))(v31, 1, v28);
    v34 = v43;
    if (v33 != 1)
    {
      v35 = v31;
      v36 = v38;
      sub_1DB30C06C(v35, v38, &qword_1ECC44918, &qword_1DB518DE0);
      v30(v36);
      sub_1DB30623C(v36, &qword_1ECC44918, &qword_1DB518DE0);
      v32 = 0;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC44928, &qword_1DB516B70);
    (*(*(v37 - 8) + 56))(v34, v32, 1, v37);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v29 = v39;
        v28 = v40;
        (*(v39 + 56))(&v38 - v12, 1, 1, v40, v13);
        v24 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DB3AF664@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1DB300B14(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_1DB30C200(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_1DB30623C(v21, &qword_1ECC43438, &qword_1DB511338);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_1DB3AF7C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_1DB300B14(*(v3 + 56) + 32 * v13, &v18);
    *&v21[0] = v14;
    result = sub_1DB30C200(&v18, (v21 + 8));
    v16 = *&v21[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18 = v16;
      v19 = *(v21 + 8);
      v20 = *(&v21[1] + 8);
      v17(&v18);
      return sub_1DB30623C(&v18, &qword_1ECC44910, &qword_1DB516B60);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v21, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_1DB3AF910@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_1DB314C3C(*(v3 + 48) + 40 * v13, &v17);
    sub_1DB300B14(*(v3 + 56) + 32 * v13, v22);
    v23 = v17;
    v24 = v18;
    *&v25 = v19;
    result = sub_1DB30C200(v22, (&v25 + 8));
    v15 = *(&v24 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v16 = v1[5];
      v17 = v23;
      *&v18 = v24;
      *(&v18 + 1) = v15;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16(&v17);
      return sub_1DB30623C(&v17, &unk_1ECC46F10, &qword_1DB516B78);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DB3AFA98@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1DB30BE90(*(v3 + 56) + 40 * v13, v21);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_1DB30C7A8(v21, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v24;
      v21[2] = v25;
      v22 = v26;
      v20(v21);
      return sub_1DB30623C(v21, &qword_1ECC44900, &qword_1DB516B48);
    }

    else
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static NativeIntentDispatcher.Builder.buildBlock(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  v4 = (a2 + 40);
  sub_1DB30623C(a2 + 40, &qword_1ECC43570, &qword_1DB521A80);
  *v4 = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0;
  *v3 = sub_1DB313CA0(MEMORY[0x1E69E7CC0]);
  v5 = type metadata accessor for NoOpIntentCache();
  result = swift_allocObject();
  *(v3 + 32) = v5;
  *(v3 + 8) = result;
  v43 = *(a1 + 16);
  if (!v43)
  {
    return result;
  }

  v7 = 0;
  v44 = a1 + 32;
  v42 = v3;
LABEL_5:
  v45 = v7;
  sub_1DB356190(v44 + 80 * v7, v57);
  v8 = v57[0];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v56 = *v3;
  v11 = 1 << *(v8 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  while (v13)
  {
    v18 = v15;
LABEL_21:
    v21 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v22 = v21 | (v18 << 6);
    v23 = (*(v8 + 48) + 16 * v22);
    v25 = *v23;
    v24 = v23[1];
    sub_1DB30BE90(*(v8 + 56) + 40 * v22, &v46);
    *&v49 = v25;
    *(&v49 + 1) = v24;
    sub_1DB30C7A8(&v46, &v50);

LABEL_22:
    v46 = v49;
    v47[0] = v50;
    v47[1] = v51;
    v48 = v52;
    v26 = *(&v49 + 1);
    if (!*(&v49 + 1))
    {
      v55 = 0;
      memset(v54, 0, sizeof(v54));
      v53 = 0u;
LABEL_4:

      v7 = v45 + 1;
      v3 = v42;
      *v42 = v10;
      result = sub_1DB3B01C8(v57);
      if (v45 + 1 == v43)
      {
        return result;
      }

      goto LABEL_5;
    }

    v27 = v46;
    sub_1DB30BE90(v47, v54);
    *&v53 = v27;
    *(&v53 + 1) = v26;

    sub_1DB30623C(&v46, &qword_1ECC44900, &qword_1DB516B48);
    v28 = *(&v53 + 1);
    if (!*(&v53 + 1))
    {
      goto LABEL_4;
    }

    v29 = v53;
    sub_1DB30C7A8(v54, &v49);
    v30 = sub_1DB306160(v29, v28);
    v32 = v10[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_37;
    }

    v36 = v31;
    if (v10[3] < v35)
    {
      sub_1DB31B1F0(v35, isUniquelyReferenced_nonNull_native & 1);
      v30 = sub_1DB306160(v29, v28);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_39;
      }

LABEL_29:
      v10 = v56;
      if (v36)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_29;
    }

    v41 = v30;
    sub_1DB3123D8();
    v30 = v41;
    v10 = v56;
    if (v36)
    {
LABEL_9:
      v16 = v30;

      v17 = (v10[7] + 40 * v16);
      __swift_destroy_boxed_opaque_existential_0(v17);
      sub_1DB30C7A8(&v49, v17);
      goto LABEL_10;
    }

LABEL_30:
    v10[(v30 >> 6) + 8] |= 1 << v30;
    v38 = (v10[6] + 16 * v30);
    *v38 = v29;
    v38[1] = v28;
    sub_1DB30C7A8(&v49, v10[7] + 40 * v30);
    v39 = v10[2];
    v34 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v34)
    {
      goto LABEL_38;
    }

    v10[2] = v40;
LABEL_10:
    isUniquelyReferenced_nonNull_native = 1;
  }

  if (v14 <= v15 + 1)
  {
    v19 = v15 + 1;
  }

  else
  {
    v19 = v14;
  }

  v20 = v19 - 1;
  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      v13 = 0;
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      v15 = v20;
      v49 = 0u;
      goto LABEL_22;
    }

    v13 = *(v8 + 64 + 8 * v18);
    ++v15;
    if (v13)
    {
      v15 = v18;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

uint64_t static NativeIntentDispatcher.Builder.buildExpression<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  v11 = 0u;
  v10 = 0u;
  sub_1DB30623C(&v10, &qword_1ECC43570, &qword_1DB521A80);
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v9[0] = sub_1DB313CA0(MEMORY[0x1E69E7CC0]);
  v9[4] = type metadata accessor for NoOpIntentCache();
  v9[1] = swift_allocObject();
  NativeIntentDispatcher.registering<A>(_:)(a1, a2, a3, a4);
  return sub_1DB3B01C8(v9);
}

uint64_t static NativeIntentDispatcher.Builder.buildOptional(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DB3B021C(a1, v7);
  if (*&v7[0])
  {
    v4 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v4;
    *(a2 + 64) = v7[4];
    v5 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v5;
  }

  else
  {
    *(a2 + 72) = 0;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    sub_1DB30623C(a2 + 40, &qword_1ECC43570, &qword_1DB521A80);
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0;
    *a2 = sub_1DB313CA0(MEMORY[0x1E69E7CC0]);
    v6 = type metadata accessor for NoOpIntentCache();
    result = swift_allocObject();
    *(a2 + 32) = v6;
    *(a2 + 8) = result;
    if (*&v7[0])
    {
      return sub_1DB30623C(v7, &qword_1ECC44908, &qword_1DB516B50);
    }
  }

  return result;
}

uint64_t sub_1DB3B021C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44908, &qword_1DB516B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t static IntentKindTable._table.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  v3 = sub_1DB30E880(v2);

  return v3;
}

uint64_t static IntentKindTable._decode(_:from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v10 = dynamic_cast_existential_2_conditional(a1, a1, &protocol descriptor for IntentModel, MEMORY[0x1E69E6440]);
  if (v10)
  {
    v13 = v10;
    v14 = v12;
    v48 = v11;
    v15 = v4;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v16 = sub_1DB50BDE0();
    JSONContext.init(userInfo:)(v16);
    v17 = v52[0];
    sub_1DB316804(0xD00000000000001FLL, 0x80000001DB52BEC0, v52[0], &v54);
    v18 = v55;

    if (!v18)
    {
      v19 = sub_1DB313DD4(MEMORY[0x1E69E7CC0]);
      *&v54 = v15;
      *(&v54 + 1) = a3;
      v55 = v19;
      *&v56 = &type metadata for AnyIntentTypes;
      sub_1DB30C200(&v54, v53);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v52[0];
      sub_1DB31D16C(v53, 0xD00000000000001FLL, 0x80000001DB52BEC0, isUniquelyReferenced_nonNull_native);
      v21 = v58;

      v52[0] = v21;
      v17 = v21;
    }

    v22 = a2[3];
    v23 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v22);
    v58 = v17;

    v24 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v58);
    Decoder.withUserInfo(_:)(v24, v22, v23, v53);

    *&v56 = v13;
    *(&v56 + 1) = v48;
    v57 = v14;
    __swift_allocate_boxed_opaque_existential_0(&v54);
    sub_1DB50ADB0();
    if (v5)
    {

      return __swift_deallocate_boxed_opaque_existential_0(&v54);
    }

    v51 = v56;
    v35 = v56;
    v36 = __swift_project_boxed_opaque_existential_1(&v54, v56);
    *(a4 + 24) = v51;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
    (*(*(v35 - 8) + 16))(boxed_opaque_existential_0, v36, v35);
LABEL_12:

    return __swift_destroy_boxed_opaque_existential_0(&v54);
  }

  v26 = dynamic_cast_existential_2_conditional(a1, a1, &protocol descriptor for ExpressibleByJSON, &protocol descriptor for IntentModel);
  if (v26)
  {
    v29 = v26;
    v49 = v28;
    v50 = v27;
    v47 = a4;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v30 = sub_1DB50BDE0();
    JSONContext.init(userInfo:)(v30);
    v31 = v58;
    sub_1DB316804(0xD00000000000001FLL, 0x80000001DB52BEC0, v58, &v54);
    v32 = v55;

    if (!v32)
    {
      v33 = sub_1DB313DD4(MEMORY[0x1E69E7CC0]);
      *&v54 = v4;
      *(&v54 + 1) = a3;
      v55 = v33;
      *&v56 = &type metadata for AnyIntentTypes;
      sub_1DB30C200(&v54, v53);

      v34 = swift_isUniquelyReferenced_nonNull_native();
      v52[0] = v31;
      sub_1DB31D16C(v53, 0xD00000000000001FLL, 0x80000001DB52BEC0, v34);

      v58 = v31;
    }

    sub_1DB30BE90(a2, v52);
    JSONObject.init(from:)(v52, v53);
    if (v5)
    {
    }

    v52[0] = v31;
    v42 = *(v50 + 8);
    *&v56 = v29;
    *(&v56 + 1) = v50;
    v57 = v49;
    __swift_allocate_boxed_opaque_existential_0(&v54);

    v42(v53, v52, v29, v50);
    v43 = v56;
    v44 = v57;
    v45 = __swift_project_boxed_opaque_existential_1(&v54, v56);
    v47[3] = v43;
    v47[4] = v44;
    v46 = __swift_allocate_boxed_opaque_existential_0(v47);
    (*(*(v43 - 8) + 16))(v46, v45, v43);
    goto LABEL_12;
  }

  v38 = sub_1DB50B3E0();
  swift_allocError();
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
  *v40 = a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DB50BDB0();
  sub_1DB50B320();

  *&v54 = 60;
  *(&v54 + 1) = 0xE100000000000000;
  v41 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v41);

  MEMORY[0x1E1285C70](0xD000000000000012, 0x80000001DB52AB80);
  sub_1DB50B3C0();
  (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
  return swift_willThrow();
}

uint64_t static _IntentKindTable_Returning._table.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(a3 + 8) + 16))();
  v5 = static StaticIntent.kind.getter();
  v7 = v6;
  v10 = type metadata accessor for StaticIntent(0, a2, v8, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DB31D2BC(v10, v5, v7, isUniquelyReferenced_nonNull_native);

  v12 = static SidepackedIntent.kind.getter();
  v14 = v13;
  v17 = type metadata accessor for SidepackedIntent(0, a2, v15, v16);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DB31D2BC(v17, v12, v14, v18);

  return v4;
}

void *static _IntentKindTable_Returning._decode(_:from:)@<X0>(void *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  result = (*(*(a3 + 8) + 40))(v18);
  if (!v4)
  {
    sub_1DB30BE90(v18, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC446C8, &qword_1DB5159E0);
    v20 = a2;
    swift_getExtendedExistentialTypeMetadata();
    if (swift_dynamicCast())
    {
      sub_1DB2FEA0C(&v16, a4);
    }

    else
    {
      v9 = sub_1DB50B410();
      swift_allocError();
      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC426C0, &qword_1DB50EEC0);
      v12 = v19;
      v13 = __swift_project_boxed_opaque_existential_1(v18, v19);
      v11[3] = v12;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
      (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v13, v12);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1DB50BDB0();
      v17[0] = 0;
      v17[1] = 0xE000000000000000;
      sub_1DB50B320();
      __swift_project_boxed_opaque_existential_1(v18, v19);
      sub_1DB50BA00();
      MEMORY[0x1E1285C70](0xD000000000000012, 0x80000001DB52C120);
      v15 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v15);

      MEMORY[0x1E1285C70](62, 0xE100000000000000);
      sub_1DB50B3C0();
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69E6B30], v9);
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  return result;
}

uint64_t static _IntentKindTable_ReturningUnknown._unknownTypeWrapper.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _OpaqueIntentModelBody(255, a2, a4, a4);
  WitnessTable = swift_getWitnessTable();

  return type metadata accessor for OpenIntentModel(0, v4, WitnessTable, v6);
}

void *static _IntentKindTable_ReturningAny._decode(_:from:)@<X0>(void *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  result = static _IntentKindTable_Returning._decode(_:from:)(a1, a2, a3, v16);
  if (!v4)
  {
    v8 = v17;
    v9 = v18;
    v10 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v13 = &v16[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13, v11);
    AnyIntentModel.init<A>(_:)(v13, v8, v9, a4, a2);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  return result;
}

uint64_t sub_1DB3B0ECC(uint64_t a1)
{
  v32 = sub_1DB5099A0();
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v30 = v5;
  v25 = v1;
  v35 = MEMORY[0x1E69E7CC0];
  sub_1DB34140C(0, v6, 0);
  v7 = v35;
  v8 = a1 + 64;
  result = sub_1DB50B250();
  v10 = result;
  v11 = 0;
  v34 = *(a1 + 36);
  v28 = a1 + 64;
  v29 = v3 + 32;
  v26 = a1 + 72;
  v27 = v6;
  v31 = v3;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v33 = v11;
    v14 = a1;

    v15 = v30;
    sub_1DB509970();

    v35 = v7;
    v17 = *(v7 + 16);
    v16 = *(v7 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1DB34140C((v16 > 1), v17 + 1, 1);
      v7 = v35;
    }

    *(v7 + 16) = v17 + 1;
    result = (*(v31 + 32))(v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v17, v15, v32);
    v12 = 1 << *(v14 + 32);
    if (v10 >= v12)
    {
      goto LABEL_25;
    }

    v8 = v28;
    v18 = *(v28 + 8 * v13);
    if ((v18 & (1 << v10)) == 0)
    {
      goto LABEL_26;
    }

    a1 = v14;
    if (v34 != *(v14 + 36))
    {
      goto LABEL_27;
    }

    v19 = v18 & (-2 << (v10 & 0x3F));
    if (v19)
    {
      v12 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v13 << 6;
      v21 = v13 + 1;
      v22 = (v26 + 8 * v13);
      while (v21 < (v12 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1DB3ADCD0(v10, v34, 0);
          v12 = __clz(__rbit64(v23)) + v20;
          goto LABEL_20;
        }
      }

      result = sub_1DB3ADCD0(v10, v34, 0);
LABEL_20:
      a1 = v14;
    }

    v11 = v33 + 1;
    v10 = v12;
    if (v33 + 1 == v27)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t Models.HTTPTemplateAction.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t Models.HTTPTemplateAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for Models.HTTPTemplateAction(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for NetRequest(0);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = *a2;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, &v43);

  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v41);

  v36 = sub_1DB320870(v41, v13);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v41);
  v45 = v13;
  ScalarDictionary.init(tryDeserializing:using:)(v41, &v45, v37);
  sub_1DB3151CC(&v43);
  v34 = *&v37[0];
  JSONObject.subscript.getter(0x6574656D61726170, 0xEA00000000007372, &v43);

  v33 = sub_1DB320C58(&v43, v13);
  v14 = _s7JetCore26AppleServicesPropertyScopeV13allPropertiesSayAA010NetRequestE0_pXpGvgZ_0();
  v45 = v14;
  v15 = sub_1DB315A38(0xD00000000000001FLL, 0x80000001DB52A450, v13);
  if (v15)
  {
    sub_1DB39900C(v15);
    v14 = v45;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E68, &qword_1DB516CD0);
  *&v43 = v14;
  sub_1DB30C200(&v43, v41);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v13;
  sub_1DB31D16C(v41, 0xD00000000000001FLL, 0x80000001DB52A450, isUniquelyReferenced_nonNull_native);

  JSONObject.subscript.getter(0x74736575716572, 0xE700000000000000, &v43);
  v17 = v35;
  NetRequest.init(deserializing:using:)(&v43, &v40, v12);
  if (v17)
  {
    sub_1DB3151CC(a1);
  }

  else
  {
    JSONObject.subscript.getter(0x4173736563637573, 0xED00006E6F697463, &v43);
    *&v37[0] = v13;
    static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)(&v43, v37, v41);
    sub_1DB3151CC(&v43);
    JSONObject.subscript.getter(0x416572756C696166, 0xED00006E6F697463, &v43);
    v39 = v13;
    static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)(&v43, &v39, v37);
    sub_1DB3151CC(a1);
    sub_1DB3151CC(&v43);

    sub_1DB3B64D4(v12, v9, type metadata accessor for NetRequest);
    v19 = v33;
    v20 = v34;
    *v7 = v36;
    v7[1] = v20;
    v7[2] = v19;
    sub_1DB3983B8(v9, v7 + v5[6]);
    v21 = &v9[*(v31 + 40)];
    v23 = *v21;
    v22 = *(v21 + 1);

    sub_1DB39841C(v9);
    v24 = (v7 + v5[7]);
    if (v22)
    {
      *v24 = v23;
      v24[1] = v22;
      v25 = (v7 + v5[8]);
      *v25 = v23;
      v25[1] = v22;
    }

    else
    {
      *v24 = 0;
      v24[1] = 0;
      v26 = (v7 + v5[8]);
      *v26 = 0;
      v26[1] = 0;
    }

    v27 = v7 + v5[9];
    v28 = v41[1];
    *v27 = v41[0];
    *(v27 + 1) = v28;
    *(v27 + 4) = v42;
    v29 = v7 + v5[10];
    *(v29 + 4) = v38;
    v30 = v37[1];
    *v29 = v37[0];
    *(v29 + 1) = v30;
    sub_1DB3B64D4(v7, v32, type metadata accessor for Models.HTTPTemplateAction);
  }
}

uint64_t type metadata accessor for Models.HTTPTemplateAction(uint64_t a1)
{
  result = qword_1ECC44B80;
  if (!qword_1ECC44B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Models.HTTPTemplateAction.actionMetrics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Models.HTTPTemplateAction.makeAction(with:actionMetrics:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v57 = a3;
  v54 = sub_1DB509CA0();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v59 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for NetRequest(0);
  MEMORY[0x1EEE9AC00](v53);
  v66 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v14 = a2[1];
  v55 = *a2;
  v56 = v14;
  v15 = *(v13 + 16);
  v58 = v11;
  v62 = v10;
  v63 = v11;
  v64 = v13;
  v65 = v12;
  v16 = v12;
  if (v15)
  {
    v17 = type metadata accessor for Models.HTTPTemplateAction(0);
    v18 = (v5 + v17[7]);
    v19 = v18[1];
    v60 = *v18;
    v61 = v19;

    sub_1DB3B1B8C(&v60);
  }

  else
  {
    v17 = type metadata accessor for Models.HTTPTemplateAction(0);
    v22 = (v5 + v17[8]);
    v23 = v22[1];
    v60 = *v22;
    v61 = v23;

    v20 = sub_1DB3B1ECC(&v60);
  }

  v24 = v20;
  v25 = v21;

  if (!v4)
  {
    v49 = v16;
    v50 = v10;
    v48 = v24;
    v51 = v25;
    type metadata accessor for Models.HTTPTemplateAction(0);
    v27 = v17;
    v28 = v17[6];
    v47 = v5;
    v29 = v5 + v28;
    sub_1DB3983B8(v5 + v28, v66);
    v30 = v49;
    v31 = v50;
    v33 = v58;
    v32 = v59;
    v62 = v50;
    v63 = v58;
    v64 = v13;
    v65 = v49;
    sub_1DB3B2268(v29, v59);
    v34 = *(v52 + 5);
    v52 = v27;
    v35 = v66;
    v34(v66, v32, v54);
    v62 = v31;
    v63 = v33;
    v64 = v13;
    v65 = v30;
    v36 = v53;
    v37 = sub_1DB3B2B14(*(v29 + *(v53 + 28)));
    v38 = *(v36 + 28);

    *(v35 + v38) = v37;
    v39 = (v35 + *(v36 + 40));

    v40 = v51;
    *v39 = v48;
    v39[1] = v40;
    v41 = type metadata accessor for Models.HTTPAction(0);
    v42 = v57;
    sub_1DB3983B8(v35, v57 + v41[5]);
    v43 = v52;
    v44 = v47;
    sub_1DB30C4B8(v47 + v52[9], v42 + v41[6], &qword_1ECC42F50, &unk_1DB513AE0);
    sub_1DB30C4B8(v44 + v43[10], v42 + v41[7], &qword_1ECC42F50, &unk_1DB513AE0);
    v45 = v56;
    *v42 = v55;
    v42[1] = v45;

    return sub_1DB39841C(v35);
  }

  return result;
}

void sub_1DB3B1B8C(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = sub_1DB50A6B0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  if (v7)
  {
    v8 = *(v1 + 16);
    *&v42 = *a1;
    *(&v42 + 1) = v7;
    v9 = sub_1DB3B2DE8();
    if (!v2)
    {
      v34[1] = v6;
      v34[2] = 0;
      v35 = v9;
      v10 = 1 << *(v8 + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(v8 + 64);
      v13 = (v10 + 63) >> 6;

      v14 = 0;
      if (!v12)
      {
        goto LABEL_9;
      }

LABEL_8:
      v15 = v14;
LABEL_16:
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v19 = v18 | (v15 << 6);
      v20 = (*(v8 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      sub_1DB300B14(*(v8 + 56) + 32 * v19, v38);
      *&v39 = v22;
      *(&v39 + 1) = v21;
      sub_1DB30C200(v38, &v40);

      v17 = v15;
      while (1)
      {
        v42 = v39;
        v43[0] = v40;
        v43[1] = v41;
        v23 = *(&v39 + 1);
        if (!*(&v39 + 1))
        {
          break;
        }

        v24 = v42;
        sub_1DB30C200(v43, &v39);
        *&v38[0] = v24;
        *(&v38[0] + 1) = v23;
        v36 = 46;
        v37 = 0xE100000000000000;
        sub_1DB301E30();
        v25 = sub_1DB50B180();

        sub_1DB3B46D0(&v39, v25);

        __swift_destroy_boxed_opaque_existential_0(&v39);
        v14 = v17;
        if (v12)
        {
          goto LABEL_8;
        }

LABEL_9:
        if (v13 <= v14 + 1)
        {
          v16 = v14 + 1;
        }

        else
        {
          v16 = v13;
        }

        v17 = v16 - 1;
        while (1)
        {
          v15 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
          }

          if (v15 >= v13)
          {
            break;
          }

          v12 = *(v8 + 64 + 8 * v15);
          ++v14;
          if (v12)
          {
            goto LABEL_16;
          }
        }

        v12 = 0;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
      }

      v26 = objc_opt_self();
      *&v42 = 0;
      v27 = v35;
      v28 = [v26 dataWithJSONObject:v35 options:0 error:&v42];
      v29 = v42;
      if (v28)
      {
        v30 = sub_1DB509CE0();
        v32 = v31;

        sub_1DB50A690();
        sub_1DB50A670();

        sub_1DB30C158(v30, v32);
      }

      else
      {
        v33 = v29;
        sub_1DB509B20();

        swift_willThrow();
      }
    }
  }
}

uint64_t sub_1DB3B1ECC(uint64_t *a1)
{
  v3 = a1[1];
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 24);
  v56 = *a1;
  v57 = v3;
  result = sub_1DB3B3170();
  if (!v2)
  {
    v6 = result;
    v7 = v4 + 64;
    v8 = 1 << *(v4 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v4 + 64);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    v53 = v4 + 64;
    v54 = v4;
    while (v10)
    {
      v15 = v12;
LABEL_15:
      v16 = (v15 << 10) | (16 * __clz(__rbit64(v10)));
      v17 = (*(v4 + 48) + v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = (*(v4 + 56) + v16);
      v21 = v20[1];
      v59 = *v20;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v6;
      v23 = sub_1DB306160(v19, v18);
      v25 = *(v6 + 16);
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_37;
      }

      v29 = v24;
      if (*(v6 + 24) >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = v23;
          sub_1DB312580();
          v23 = v35;
        }
      }

      else
      {
        sub_1DB31B4B4(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_1DB306160(v19, v18);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_39;
        }
      }

      v10 &= v10 - 1;
      if (v29)
      {
        v13 = v23;

        v6 = v56;
        v14 = (*(v56 + 56) + 16 * v13);
        *v14 = v59;
        v14[1] = v21;
      }

      else
      {
        v6 = v56;
        *(v56 + 8 * (v23 >> 6) + 64) |= 1 << v23;
        v31 = (*(v6 + 48) + 16 * v23);
        *v31 = v19;
        v31[1] = v18;
        v32 = (*(v6 + 56) + 16 * v23);
        *v32 = v59;
        v32[1] = v21;
        v33 = *(v6 + 16);
        v27 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v27)
        {
          goto LABEL_38;
        }

        *(v6 + 16) = v34;
      }

      v12 = v15;
      v7 = v53;
      v4 = v54;
    }

    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v15);
      ++v12;
      if (v10)
      {
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v6 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v6 + 64);
    v39 = (v36 + 63) >> 6;

    v40 = 0;
    v59 = 0;
    for (i = 0xE000000000000000; v38; i = v52)
    {
      v42 = v40;
LABEL_32:
      v43 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v44 = (v42 << 10) | (16 * v43);
      v45 = (*(v6 + 48) + v44);
      v46 = *v45;
      v47 = v45[1];
      v48 = (*(v6 + 56) + v44);
      v49 = *v48;
      v50 = v48[1];
      v58 = MEMORY[0x1E69E6158];
      v56 = v46;
      v57 = v47;
      v55[3] = MEMORY[0x1E69E6158];
      v55[0] = v49;
      v55[1] = v50;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v59 = sub_1DB3B4950(v59, i, &v56, v55);
      v52 = v51;
      __swift_destroy_boxed_opaque_existential_0(v55);
      __swift_destroy_boxed_opaque_existential_0(&v56);
    }

    while (1)
    {
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v42 >= v39)
      {

        return v59;
      }

      v38 = *(v6 + 64 + 8 * v42);
      ++v40;
      if (v38)
      {
        v40 = v42;
        goto LABEL_32;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1DB50BC20();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB3B2268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v89 - v7;
  v9 = sub_1DB5099A0();
  v106 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44BF8, &qword_1DB5174C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v89 - v12;
  v14 = sub_1DB509A20();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *v2;
  if (!*(v97 + 16))
  {
    v19 = sub_1DB509CA0();
    return (*(*(v19 - 8) + 16))(a2, a1, v19);
  }

  sub_1DB509A00();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1DB30623C(v13, &qword_1ECC44BF8, &qword_1DB5174C0);
    sub_1DB3B779C();
    swift_allocError();
    *v17 = 0;
    return swift_willThrow();
  }

  (*(v15 + 32))(v95, v13, v14);
  v20 = sub_1DB5099E0();
  v93 = v8;
  v94 = v3;
  v90 = a2;
  v91 = v15;
  v92 = v14;
  if (!v20)
  {
    v23 = MEMORY[0x1E69E7CC8];
LABEL_31:
    v56 = (v97 + 64);
    v57 = 1 << *(v97 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & *(v97 + 64);
    v60 = (v57 + 63) >> 6;

    v61 = 0;
    v104 = v60;
    v105 = v56;
    while (v59)
    {
      v64 = v61;
LABEL_41:
      v65 = (v64 << 10) | (16 * __clz(__rbit64(v59)));
      v66 = (*(v97 + 48) + v65);
      v68 = *v66;
      v67 = v66[1];
      v69 = (*(v97 + 56) + v65);
      v70 = v69[1];
      v106 = *v69;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v23;
      v72 = sub_1DB306160(v68, v67);
      v74 = v23[2];
      v75 = (v73 & 1) == 0;
      v54 = __OFADD__(v74, v75);
      v76 = v74 + v75;
      if (v54)
      {
        goto LABEL_56;
      }

      v77 = v73;
      if (v23[3] >= v76)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v83 = v72;
          sub_1DB312580();
          v72 = v83;
        }
      }

      else
      {
        sub_1DB31B4B4(v76, isUniquelyReferenced_nonNull_native);
        v72 = sub_1DB306160(v68, v67);
        if ((v77 & 1) != (v78 & 1))
        {
          goto LABEL_59;
        }
      }

      v59 &= v59 - 1;
      if (v77)
      {
        v62 = v72;

        v23 = v107;
        v63 = (v107[7] + 16 * v62);
        *v63 = v106;
        v63[1] = v70;
      }

      else
      {
        v23 = v107;
        v107[(v72 >> 6) + 8] |= 1 << v72;
        v79 = (v23[6] + 16 * v72);
        *v79 = v68;
        v79[1] = v67;
        v80 = (v23[7] + 16 * v72);
        *v80 = v106;
        v80[1] = v70;
        v81 = v23[2];
        v54 = __OFADD__(v81, 1);
        v82 = v81 + 1;
        if (v54)
        {
          goto LABEL_58;
        }

        v23[2] = v82;
      }

      v61 = v64;
      v60 = v104;
      v56 = v105;
    }

    while (1)
    {
      v64 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v64 >= v60)
      {
        break;
      }

      v59 = *&v56[8 * v64];
      ++v61;
      if (v59)
      {
        goto LABEL_41;
      }
    }

    sub_1DB3B0ECC(v23);

    v84 = v95;
    sub_1DB5099F0();
    v85 = v93;
    sub_1DB509A10();
    v86 = sub_1DB509CA0();
    v87 = *(v86 - 8);
    if ((*(v87 + 48))(v85, 1, v86) == 1)
    {
      sub_1DB30623C(v85, &unk_1ECC42B20, &unk_1DB50F6A0);
      sub_1DB3B779C();
      swift_allocError();
      *v88 = 0;
      swift_willThrow();
      return (*(v91 + 8))(v84, v92);
    }

    else
    {
      (*(v91 + 8))(v84, v92);
      return (*(v87 + 32))(v90, v85, v86);
    }
  }

  v21 = v20;
  v102 = *(v20 + 16);
  if (!v102)
  {
    v23 = MEMORY[0x1E69E7CC8];
LABEL_30:

    goto LABEL_31;
  }

  v22 = 0;
  v100 = v20 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
  v98 = v106 + 8;
  v99 = v106 + 16;
  v23 = MEMORY[0x1E69E7CC8];
  v96 = v9;
  v101 = v20;
  while (v22 < *(v21 + 16))
  {
    v25 = v23;
    v26 = v105;
    v27 = v106;
    (*(v106 + 16))(v105, v100 + *(v106 + 72) * v22, v9);
    v28 = sub_1DB509980();
    v30 = v29;
    v31 = sub_1DB509990();
    v33 = v32;
    (*(v27 + 8))(v26, v9);
    if (!v33)
    {
      v47 = sub_1DB306160(v28, v30);
      v49 = v48;

      if (v49)
      {
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v25;
        v23 = v25;
        if (!v50)
        {
          sub_1DB312580();
          v23 = v107;
        }

        sub_1DB310C08(v47, v23);
        v21 = v101;
      }

      else
      {
        v23 = v25;
        v21 = v101;
      }

      goto LABEL_10;
    }

    v103 = v33;
    v104 = v31;
    v21 = v101;
    v34 = v25;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v25;
    v36 = v28;
    v38 = sub_1DB306160(v28, v30);
    v39 = v34[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_55;
    }

    v42 = v37;
    if (v34[3] >= v41)
    {
      if ((v35 & 1) == 0)
      {
        sub_1DB312580();
      }

      v43 = v30;
      v46 = v103;
      if ((v42 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_1DB31B4B4(v41, v35);
      v43 = v30;
      v44 = sub_1DB306160(v36, v30);
      if ((v42 & 1) != (v45 & 1))
      {
        goto LABEL_59;
      }

      v38 = v44;
      v46 = v103;
      if ((v42 & 1) == 0)
      {
LABEL_25:
        v23 = v107;
        v107[(v38 >> 6) + 8] |= 1 << v38;
        v51 = (v23[6] + 16 * v38);
        *v51 = v36;
        v51[1] = v43;
        v52 = (v23[7] + 16 * v38);
        *v52 = v104;
        v52[1] = v46;
        v53 = v23[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_57;
        }

        v23[2] = v55;
        goto LABEL_9;
      }
    }

    v23 = v107;
    v24 = (v107[7] + 16 * v38);
    *v24 = v104;
    v24[1] = v46;

LABEL_9:
    v9 = v96;
LABEL_10:
    if (v102 == ++v22)
    {
      goto LABEL_30;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

void *sub_1DB3B2B14(void *a1)
{
  v3 = *(v1 + 8);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v35 = v3;

  v9 = 0;
  v34 = v4;
  while (v7)
  {
    v12 = v9;
LABEL_11:
    v13 = (v12 << 10) | (16 * __clz(__rbit64(v7)));
    v14 = (*(v35 + 48) + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (*(v35 + 56) + v13);
    v18 = v17[1];
    v36 = *v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_1DB306160(v16, v15);
    v22 = a1[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_22;
    }

    v26 = v21;
    if (a1[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v20;
        sub_1DB312580();
        v20 = v32;
      }
    }

    else
    {
      sub_1DB31B4B4(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_1DB306160(v16, v15);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v7 &= v7 - 1;
    if (v26)
    {
      v10 = v20;

      v11 = (a1[7] + 16 * v10);
      *v11 = v36;
      v11[1] = v18;
    }

    else
    {
      a1[(v20 >> 6) + 8] |= 1 << v20;
      v28 = (a1[6] + 16 * v20);
      *v28 = v16;
      v28[1] = v15;
      v29 = (a1[7] + 16 * v20);
      *v29 = v36;
      v29[1] = v18;
      v30 = a1[2];
      v24 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      a1[2] = v31;
    }

    v9 = v12;
    v4 = v34;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return a1;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

unint64_t Models.HTTPTemplateAction.JSONBody.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB50B320();

  MEMORY[0x1E1285C70](v1, v2);
  return 0xD000000000000015;
}

uint64_t sub_1DB3B2DE8()
{
  v17[4] = *MEMORY[0x1E69E9840];
  v0 = sub_1DB50A6B0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB50A690();
  v4 = sub_1DB50A660();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    sub_1DB3B779C();
    swift_allocError();
    *v7 = 2;
    return swift_willThrow();
  }

  else
  {
    v9 = objc_opt_self();
    v10 = sub_1DB509CD0();
    v16[0] = 0;
    v11 = [v9 JSONObjectWithData:v10 options:1 error:v16];

    v12 = v16[0];
    if (v11)
    {
      sub_1DB50B200();
      swift_unknownObjectRelease();
      sub_1DB300B14(v17, v16);
      sub_1DB3B7750();
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v17);
        sub_1DB32E340(v4, v6);
        return v15;
      }

      else
      {
        sub_1DB3B779C();
        swift_allocError();
        *v14 = 1;
        swift_willThrow();
        sub_1DB32E340(v4, v6);
        return __swift_destroy_boxed_opaque_existential_0(v17);
      }
    }

    else
    {
      v13 = v12;
      sub_1DB509B20();

      swift_willThrow();
      return sub_1DB32E340(v4, v6);
    }
  }
}

unint64_t sub_1DB3B3078()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB50B320();

  MEMORY[0x1E1285C70](v1, v2);
  return 0xD000000000000015;
}

unint64_t Models.HTTPTemplateAction.FormBody.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB50B320();

  MEMORY[0x1E1285C70](v1, v2);
  return 0xD000000000000015;
}

void *sub_1DB3B3170()
{
  sub_1DB301E30();
  v0 = sub_1DB50B180();
  v1 = v0;
  v33 = *(v0 + 16);
  if (v33)
  {
    v2 = 0;
    v3 = v0 + 40;
    v4 = MEMORY[0x1E69E7CC8];
    v32 = v0;
    while (v2 < *(v1 + 16))
    {

      v6 = sub_1DB50B180();
      if (v6[2] < 2uLL)
      {

        sub_1DB3B779C();
        swift_allocError();
        *v30 = 2;
        swift_willThrow();

        return v4;
      }

      v7 = v6[4];
      v8 = v6[5];

      v9 = sub_1DB50B1C0();
      v11 = v10;

      if (v11)
      {
        v34 = v9;
        v35 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = sub_1DB306160(v7, v8);
        v15 = v4[2];
        v16 = (v13 & 1) == 0;
        v17 = v15 + v16;
        if (__OFADD__(v15, v16))
        {
          goto LABEL_28;
        }

        v18 = v13;
        if (v4[3] >= v17)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DB312580();
          }
        }

        else
        {
          sub_1DB31B4B4(v17, isUniquelyReferenced_nonNull_native);
          v19 = sub_1DB306160(v7, v8);
          if ((v18 & 1) != (v20 & 1))
          {
            goto LABEL_30;
          }

          v14 = v19;
        }

        v1 = v32;
        v24 = v4;
        if (v18)
        {
          v5 = (v4[7] + 16 * v14);
          *v5 = v34;
          v5[1] = v35;
        }

        else
        {
          v4[(v14 >> 6) + 8] |= 1 << v14;
          v25 = (v4[6] + 16 * v14);
          *v25 = v7;
          v25[1] = v8;
          v26 = (v4[7] + 16 * v14);
          *v26 = v34;
          v26[1] = v35;
          v27 = v4[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_29;
          }

          v4[2] = v29;
        }
      }

      else
      {
        v21 = sub_1DB306160(v7, v8);
        v23 = v22;

        if (v23)
        {
          v24 = v4;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DB312580();
            v24 = v4;
          }

          sub_1DB310C08(v21, v24);

          v1 = v32;
        }

        else
        {

          v24 = v4;
          v1 = v32;
        }
      }

      ++v2;
      v3 += 16;
      v4 = v24;
      if (v33 == v2)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    result = sub_1DB50BC20();
    __break(1u);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC8];
LABEL_24:

    return v24;
  }

  return result;
}

unint64_t sub_1DB3B357C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB50B320();

  MEMORY[0x1E1285C70](v1, v2);
  return 0xD000000000000015;
}

uint64_t Models.HTTPTemplateAction.Parameter.Target.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1DB50B680();

  v6 = 4;
  if (v4 < 4)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t Models.HTTPTemplateAction.Parameter.Target.rawValue.getter()
{
  v1 = 0x79726575516C7275;
  v2 = 0x79646F426E6F736ALL;
  if (*v0 != 2)
  {
    v2 = 0x79646F426D726F66;
  }

  if (*v0)
  {
    v1 = 0x726564616568;
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

uint64_t sub_1DB3B36D8()
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB3B3798(uint64_t a1)
{
  sub_1DB50A740();
}

uint64_t sub_1DB3B3844(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

void sub_1DB3B390C(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x79726575516C7275;
  v4 = 0x79646F426E6F736ALL;
  if (*v1 != 2)
  {
    v4 = 0x79646F426D726F66;
  }

  if (*v1)
  {
    v3 = 0x726564616568;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t Models.HTTPTemplateAction.Parameter.InputType.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1DB50B680();

  v6 = 4;
  if (v4 < 4)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t Models.HTTPTemplateAction.Parameter.InputType.rawValue.getter()
{
  v1 = 1954047348;
  v2 = 0x6D754E656E6F6870;
  if (*v0 != 2)
  {
    v2 = 0x506C616D69636564;
  }

  if (*v0)
  {
    v1 = 0x6C69616D65;
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

uint64_t sub_1DB3B3A6C()
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB3B3B30(uint64_t a1)
{
  sub_1DB50A740();
}

uint64_t sub_1DB3B3BE0(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

void sub_1DB3B3CAC(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1954047348;
  v4 = 0xEB00000000726562;
  v5 = 0x6D754E656E6F6870;
  if (*v1 != 2)
  {
    v5 = 0x506C616D69636564;
    v4 = 0xEA00000000006461;
  }

  if (*v1)
  {
    v3 = 0x6C69616D65;
    v2 = 0xE500000000000000;
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

uint64_t Models.HTTPTemplateAction.Parameter.init(key:target:inputType:title:isRequired:maximumLength:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v10 = *a3;
  v11 = *a4;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v10;
  *(a9 + 17) = v11;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10 & 1;
  return result;
}

uint64_t Models.HTTPTemplateAction.Parameter.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = 7955819;

  JSONObject.subscript.getter(7955819, 0xE300000000000000, v26);
  v6 = JSONObject.string.getter();
  v8 = v7;
  sub_1DB3151CC(v26);
  if (!v8)
  {
    v11 = 0xE300000000000000;
    goto LABEL_14;
  }

  v5 = 0x746567726174;
  JSONObject.subscript.getter(0x746567726174, 0xE600000000000000, v26);
  sub_1DB30C4B8(v26, v24, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v25)
  {
    sub_1DB3151CC(v26);
    sub_1DB30623C(v24, &qword_1ECC42E38, &qword_1DB50FB80);
LABEL_13:

    v11 = 0xE600000000000000;
    goto LABEL_14;
  }

  v9 = __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_1DB300B14(v9, v23);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1DB3151CC(v26);
    __swift_destroy_boxed_opaque_existential_0(v24);
    goto LABEL_13;
  }

  __swift_destroy_boxed_opaque_existential_0(v24);
  v10 = sub_1DB50B680();

  if (v10 >= 4)
  {
    sub_1DB3151CC(v26);
    goto LABEL_13;
  }

  v27 = v10;
  v11 = 0xE900000000000065;
  sub_1DB3151CC(v26);
  JSONObject.subscript.getter(0x7079547475706E69, 0xE900000000000065, v26);
  sub_1DB30C4B8(v26, v24, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v25)
  {
    v12 = __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_1DB300B14(v12, v23);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v24);
      v13 = sub_1DB50B680();

      if (v13 < 4)
      {
        sub_1DB3151CC(v26);
        JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, v26);
        v14 = JSONObject.string.getter();
        v22 = v15;
        sub_1DB3151CC(v26);
        JSONObject.subscript.getter(0x7269757165527369, 0xEA00000000006465, v24);
        v21 = JSONObject.BOOL.getter();
        sub_1DB3151CC(v24);
        JSONObject.subscript.getter(0x4C6D756D6978616DLL, 0xED00006874676E65, v23);
        v16 = JSONObject.int.getter();
        v18 = v17;
        sub_1DB3151CC(a1);
        result = sub_1DB3151CC(v23);
        v23[40] = v18 & 1;
        *a3 = v6;
        *(a3 + 8) = v8;
        *(a3 + 16) = v27;
        *(a3 + 17) = v13;
        *(a3 + 24) = v14;
        *(a3 + 32) = v22;
        *(a3 + 40) = v21 & 1;
        *(a3 + 48) = v16;
        *(a3 + 56) = v18 & 1;
        return result;
      }

      sub_1DB3151CC(v26);
    }

    else
    {
      sub_1DB3151CC(v26);
      __swift_destroy_boxed_opaque_existential_0(v24);
    }
  }

  else
  {
    sub_1DB3151CC(v26);
    sub_1DB30623C(v24, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v5 = 0x7059547475706E69;
LABEL_14:
  sub_1DB315178();
  swift_allocError();
  *v20 = v5;
  v20[1] = v11;
  v20[2] = 0x20000001F56F7170uLL;
  v20[3] = 0;
  swift_willThrow();
  return sub_1DB3151CC(a1);
}

uint64_t Models.HTTPTemplateAction.Parameter.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Models.HTTPTemplateAction.Parameter.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1DB3B41E0()
{
  v1 = *v0;
  v2 = 7955819;
  v3 = 0x656C746974;
  v4 = 0x7269757165527369;
  if (v1 != 4)
  {
    v4 = 0x4C6D756D6978616DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746567726174;
  if (v1 != 1)
  {
    v5 = 0x7079547475706E69;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1DB3B42A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB3B72CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB3B42C8(uint64_t a1)
{
  v2 = sub_1DB3B653C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3B4304(uint64_t a1)
{
  v2 = sub_1DB3B653C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.HTTPTemplateAction.Substitutions.urlQuery.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Models.HTTPTemplateAction.Substitutions.headers.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Models.HTTPTemplateAction.Substitutions.jsonBody.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Models.HTTPTemplateAction.Substitutions.formBody.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Models.HTTPTemplateAction.Substitutions.init(urlQuery:headers:jsonBody:formBody:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = MEMORY[0x1E69E7CC0];
  sub_1DB3136F0(MEMORY[0x1E69E7CC0]);
  sub_1DB3136F0(v10);
  sub_1DB3135C0(v10);
  sub_1DB3136F0(v10);

  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t Models.HTTPTemplateAction.Substitutions.setParameter(value:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *a3;
  v6 = *(a3 + 8);
  if (*(a3 + 16) > 1u)
  {
    if (*(a3 + 16) == 2)
    {
      v12[3] = MEMORY[0x1E69E6158];
      v12[0] = a1;
      v12[1] = a2;

      return sub_1DB30D454(v12, v7, v6);
    }

    else
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12[0] = v3[3];
      sub_1DB31DC44(a1, a2, v7, v6, isUniquelyReferenced_nonNull_native);

      v3[3] = v12[0];
    }
  }

  else if (*(a3 + 16))
  {

    v10 = swift_isUniquelyReferenced_nonNull_native();
    v12[0] = v3[1];
    sub_1DB31DC44(a1, a2, v7, v6, v10);

    v3[1] = v12[0];
  }

  else
  {

    v8 = swift_isUniquelyReferenced_nonNull_native();
    v12[0] = *v3;
    sub_1DB31DC44(a1, a2, v7, v6, v8);

    *v3 = v12[0];
  }

  return result;
}

void sub_1DB3B46D0(void *a1, uint64_t a2)
{
  v3 = (a2 + 16);
  v4 = *(a2 + 16);
  if (!v4)
  {
    return;
  }

  v5 = v4 - 1;
  if (v4 == 1)
  {
    v7 = v2;
    v15 = a1;
LABEL_17:
    v17 = &v3[2 * v4];
    v19 = *v17;
    v18 = v17[1];
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);

    v20 = sub_1DB50BA20();
    *&v26[0] = v19;
    *(&v26[0] + 1) = v18;
    [v7 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  v21 = *(a2 + 16);

  v7 = v2;
  v8 = 0;
  v9 = (a2 + 40);
  while (v5 != v8)
  {
    if (v8 >= *v3)
    {
      goto LABEL_20;
    }

    v13 = *(v9 - 1);
    v12 = *v9;
    *&v24 = v13;
    *(&v24 + 1) = *v9;
    swift_bridgeObjectRetain_n();
    v14 = [v7 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v14)
    {
      sub_1DB50B200();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v26[0] = v24;
    v26[1] = v25;
    if (*(&v25 + 1))
    {
      sub_1DB3B7750();
      if (swift_dynamicCast())
      {

        v7 = v23;
        goto LABEL_6;
      }
    }

    else
    {
      sub_1DB30623C(v26, &qword_1ECC426B0, &qword_1DB50EEB0);
    }

    v10 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    *&v26[0] = v13;
    *(&v26[0] + 1) = v12;
    v11 = v10;
    [v7 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v7 = v11;
LABEL_6:
    ++v8;
    v9 += 2;
    if (v5 == v8)
    {

      v4 = v21;
      v15 = a1;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1DB3B4950(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DB5098F0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB300B14(a3, v27);
  sub_1DB300B14(a4, &v28);
  sub_1DB30C4B8(v27, v25, &qword_1ECC44C00, qword_1DB5174C8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1DB30623C(v27, &qword_1ECC44C00, qword_1DB5174C8);
    v21 = v26;
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(v21);

    return a1;
  }

  v13 = v23;
  v12 = v24;
  __swift_destroy_boxed_opaque_existential_0(v26);
  sub_1DB30C4B8(v27, v25, &qword_1ECC44C00, qword_1DB5174C8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1DB30623C(v27, &qword_1ECC44C00, qword_1DB5174C8);

    v21 = v25;
    goto LABEL_14;
  }

  v15 = v23;
  v14 = v24;
  __swift_destroy_boxed_opaque_existential_0(v25);
  v25[0] = a1;
  v25[1] = a2;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    MEMORY[0x1E1285C70](38, 0xE100000000000000);
  }

  v23 = v15;
  v24 = v14;
  sub_1DB5098D0();
  sub_1DB301E30();
  v17 = sub_1DB50B1B0();
  v19 = v18;
  (*(v9 + 8))(v11, v8);

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v17 = 0;
    v20 = 0xE000000000000000;
  }

  v23 = v13;
  v24 = v12;
  MEMORY[0x1E1285C70](61, 0xE100000000000000);
  MEMORY[0x1E1285C70](v17, v20);

  MEMORY[0x1E1285C70](v23, v24);

  sub_1DB30623C(v27, &qword_1ECC44C00, qword_1DB5174C8);
  return v25[0];
}

uint64_t Models.HTTPTemplateAction.Parameter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44AB0, &qword_1DB516CD8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v27 = *(v1 + 16);
  v23 = *(v1 + 17);
  v7 = *(v1 + 24);
  v21 = *(v1 + 32);
  v22 = v7;
  HIDWORD(v19) = *(v1 + 40);
  v20 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1DB3B653C();
  sub_1DB50BE40();
  LOBYTE(v25) = 0;
  v13 = v24;
  sub_1DB50B860();
  if (!v13)
  {
    v14 = v23;
    v15 = v21;
    v16 = v22;
    LODWORD(v24) = v8;
    v17 = v20;
    LOBYTE(v25) = v27;
    v28 = 1;
    sub_1DB3B6590();
    sub_1DB50B8A0();
    LOBYTE(v25) = v14;
    v28 = 2;
    sub_1DB3B65E4();
    sub_1DB50B8A0();
    v25 = v16;
    v26 = v15;
    v28 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44330, &unk_1DB516CE0);
    sub_1DB39C530();
    sub_1DB50B8A0();
    LOBYTE(v25) = BYTE4(v19);
    v28 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44AD0, &qword_1DB516CF0);
    sub_1DB3B6638();
    sub_1DB50B8A0();
    v25 = v17;
    LOBYTE(v26) = v24;
    v28 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44AE0, &qword_1DB516CF8);
    sub_1DB3B66B4();
    sub_1DB50B8A0();
  }

  return (*(v4 + 8))(v6, v12);
}

uint64_t Models.HTTPTemplateAction.Parameter.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44B00, &qword_1DB516D08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3B653C();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v29) = 0;
  v9 = sub_1DB50B740();
  v11 = v10;
  v25 = v9;
  LOBYTE(v26) = 1;
  sub_1DB3B67B4();
  sub_1DB50B780();
  v12 = v29;
  LOBYTE(v26) = 2;
  sub_1DB3B6808();
  sub_1DB50B780();
  v24 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44330, &unk_1DB516CE0);
  LOBYTE(v26) = 3;
  sub_1DB3980E8();
  sub_1DB50B780();
  v22 = v12;
  v13 = v30;
  v23 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44AD0, &qword_1DB516CF0);
  LOBYTE(v26) = 4;
  sub_1DB3B685C();
  sub_1DB50B780();
  v21 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44AE0, &qword_1DB516CF8);
  v41 = 5;
  sub_1DB3B68D8();
  sub_1DB50B780();
  (*(v6 + 8))(v8, v5);
  v20 = v38;
  v14 = v39;
  v40 = v39;
  v15 = v25;
  *&v26 = v25;
  *(&v26 + 1) = v11;
  v16 = v22;
  LOBYTE(v27) = v22;
  v17 = v24;
  BYTE1(v27) = v24;
  *(&v27 + 1) = v23;
  *v28 = v13;
  v28[8] = v21;
  *&v28[16] = v38;
  v28[24] = v39;
  v18 = v27;
  *a2 = v26;
  a2[1] = v18;
  a2[2] = *v28;
  *(a2 + 41) = *&v28[9];
  sub_1DB3B69D8(&v26, &v29);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v29 = v15;
  v30 = v11;
  v31 = v16;
  v32 = v17;
  v33 = v23;
  v34 = v13;
  v35 = v21;
  v36 = v20;
  v37 = v14;
  return sub_1DB3B6A10(&v29);
}

uint64_t sub_1DB3B54C0()
{
  v1 = *v0;
  v2 = 0x654D6E6F69746361;
  v3 = 0x74736575716572;
  v4 = 0x4173736563637573;
  if (v1 != 3)
  {
    v4 = 0x416572756C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574656D61726170;
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

uint64_t sub_1DB3B5584@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB3B74D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB3B55AC(uint64_t a1)
{
  v2 = sub_1DB3B6A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3B55E8(uint64_t a1)
{
  v2 = sub_1DB3B6A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.HTTPTemplateAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v66 = type metadata accessor for Models.HTTPTemplateAction(0);
  MEMORY[0x1EEE9AC00](v66);
  v69 = (v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = type metadata accessor for NetRequest(0);
  MEMORY[0x1EEE9AC00](v68);
  v5 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v57 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44B30, &unk_1DB516D10);
  v70 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v57 - v10;
  v12 = a1[3];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v13 = sub_1DB3B6A40();
  v14 = v71;
  sub_1DB50BDF0();
  if (!v14)
  {
    v71 = v13;
    v64 = v5;
    v65 = v8;
    v15 = v70;
    LOBYTE(v82[0]) = 0;
    sub_1DB37C0CC();
    sub_1DB50B710();
    if (*&v84[0])
    {
      v17 = *&v84[0];
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    if (*&v84[0])
    {
      v18 = *(&v84[0] + 1);
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC8];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43070, &qword_1DB510228);
    LOBYTE(v82[0]) = 1;
    sub_1DB3B6A94();
    sub_1DB50B780();
    v60 = v18;
    v61 = v9;
    v62 = v17;
    v63 = v11;
    v19 = *&v84[0];
    __swift_project_boxed_opaque_existential_1(v86, v86[3]);
    v20 = sub_1DB50BDE0();
    v21 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v20);
    v23 = v22;

    if (v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = &type metadata for EmptyActionKindTable;
    }

    if (v21)
    {
      v25 = v23;
    }

    else
    {
      v25 = &off_1F56F1850;
    }

    LOBYTE(v82[0]) = 3;
    decodeActionModel<A, B>(using:container:forKey:)(v24, v25, v84);
    v59 = v19;
    __swift_project_boxed_opaque_existential_1(v86, v86[3]);
    v26 = sub_1DB50BDE0();
    v27 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v26);
    v29 = v28;

    if (v27)
    {
      v30 = v27;
    }

    else
    {
      v30 = &type metadata for EmptyActionKindTable;
    }

    if (v27)
    {
      v31 = v29;
    }

    else
    {
      v31 = &off_1F56F1850;
    }

    LOBYTE(v81[0]) = 4;
    decodeActionModel<A, B>(using:container:forKey:)(v30, v31, v82);
    v32 = v15;
    v33 = v60;
    LOBYTE(v72) = 2;
    v34 = v61;
    sub_1DB50B6C0();
    v35 = v59;
    v58 = v80;
    v71 = *(&v79 + 1);
    v57[1] = __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
    __swift_project_boxed_opaque_existential_1(v86, v86[3]);
    v36 = sub_1DB50BDE0();
    JSONContext.init(userInfo:)(v36);
    v37 = v72;
    v38 = _s7JetCore26AppleServicesPropertyScopeV13allPropertiesSayAA010NetRequestE0_pXpGvgZ_0();
    v77 = v38;
    v39 = sub_1DB315A38(0xD00000000000001FLL, 0x80000001DB52A450, v37);
    if (v39)
    {
      sub_1DB39900C(v39);
      v38 = v77;
    }

    *(&v73 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E68, &qword_1DB516CD0);
    *&v72 = v38;
    sub_1DB30C200(&v72, v76);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v37;
    sub_1DB31D16C(v76, 0xD00000000000001FLL, 0x80000001DB52A450, isUniquelyReferenced_nonNull_native);

    v41 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v75);
    Decoder.withUserInfo(_:)(v41, v71, v58, v81);

    __swift_destroy_boxed_opaque_existential_0(&v78);
    sub_1DB30BE90(v81, &v78);
    v42 = v65;
    NetRequest.init(from:)(&v78, v65);
    __swift_destroy_boxed_opaque_existential_0(v81);
    (*(v32 + 8))(v63, v34);
    v43 = v64;
    sub_1DB3B64D4(v42, v64, type metadata accessor for NetRequest);
    v78 = v84[0];
    v79 = v84[1];
    v80 = v85;
    v74 = v83;
    v72 = v82[0];
    v73 = v82[1];
    v44 = v69;
    *v69 = v62;
    *(v44 + 8) = v33;
    *(v44 + 16) = v35;
    v45 = v66;
    sub_1DB3983B8(v43, v44 + *(v66 + 24));
    v46 = (v43 + *(v68 + 40));
    v48 = *v46;
    v47 = v46[1];

    sub_1DB39841C(v43);
    v49 = (v44 + v45[7]);
    if (v47)
    {
      *v49 = v48;
      v49[1] = v47;
      v50 = (v44 + v45[8]);
      *v50 = v48;
      v50[1] = v47;
    }

    else
    {
      *v49 = 0;
      v49[1] = 0;
      v51 = (v44 + v45[8]);
      *v51 = 0;
      v51[1] = 0;
    }

    v52 = v67;
    v53 = v44 + v45[9];
    v54 = v79;
    *v53 = v78;
    *(v53 + 16) = v54;
    *(v53 + 32) = v80;
    v55 = v44 + v45[10];
    *(v55 + 32) = v74;
    v56 = v73;
    *v55 = v72;
    *(v55 + 16) = v56;
    sub_1DB3B64D4(v44, v52, type metadata accessor for Models.HTTPTemplateAction);
  }

  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t Models.HTTPTemplateAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44B50, &qword_1DB516D20);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v38 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1DB3B6A40();
  sub_1DB50BE40();
  v9 = v1[1];
  *&v47 = *v1;
  *(&v47 + 1) = v9;
  LOBYTE(v44[0]) = 0;
  sub_1DB37BCC8();

  v10 = v41;
  sub_1DB50B8A0();
  if (v10)
  {

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v41 = v5;

    *&v47 = v1[2];
    LOBYTE(v44[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43070, &qword_1DB510228);
    sub_1DB3B6B6C();
    sub_1DB50B8A0();
    v40 = v4;
    v12 = a1;
    v13 = v7;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = sub_1DB50BE30();
    v39 = "XCTestConfigurationFilePath";
    v15 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v14);
    v17 = v16;

    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = &type metadata for EmptyActionKindTable;
    }

    if (!v15)
    {
      v17 = &off_1F56F1850;
    }

    v19 = type metadata accessor for Models.HTTPTemplateAction(0);
    v20 = *(v19 + 36);
    LOBYTE(v47) = 3;
    encodeActionModel<A, B>(_:using:container:forKey:)(v2 + v20, v18, v13, &v47, v18, &_s18HTTPTemplateActionV10CodingKeysON, v17, v8);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v21 = sub_1DB50BE30();
    v22 = sub_1DB31F3BC(0xD000000000000023, v39 | 0x8000000000000000, v21);
    v24 = v23;

    if (v22)
    {
      v25 = v22;
    }

    else
    {
      v25 = &type metadata for EmptyActionKindTable;
    }

    if (v22)
    {
      v26 = v24;
    }

    else
    {
      v26 = &off_1F56F1850;
    }

    v27 = *(v19 + 40);
    LOBYTE(v47) = 4;
    encodeActionModel<A, B>(_:using:container:forKey:)(v2 + v27, v25, v13, &v47, v25, &_s18HTTPTemplateActionV10CodingKeysON, v26, v8);
    v39 = v19;
    LOBYTE(v47) = 2;
    v28 = v13;
    sub_1DB50B7F0();
    v29 = v45;
    v30 = v46;
    v38[1] = __swift_project_boxed_opaque_existential_1(v44, v45);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v31 = sub_1DB50BE30();
    JSONContext.init(userInfo:)(v31);
    v32 = v47;
    v33 = _s7JetCore26AppleServicesPropertyScopeV13allPropertiesSayAA010NetRequestE0_pXpGvgZ_0();
    v49 = v33;
    v34 = sub_1DB315A38(0xD00000000000001FLL, 0x80000001DB52A450, v32);
    if (v34)
    {
      sub_1DB39900C(v34);
      v33 = v49;
    }

    v35 = v41;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E68, &qword_1DB516CD0);
    *&v47 = v33;
    sub_1DB30C200(&v47, v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v32;
    sub_1DB31D16C(v43, 0xD00000000000001FLL, 0x80000001DB52A450, isUniquelyReferenced_nonNull_native);

    v37 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v42);
    Encoder.withUserInfo(_:)(v37, v29, v30, &v47);

    __swift_destroy_boxed_opaque_existential_0(v44);
    NetRequest.encode(to:)(&v47);
    __swift_destroy_boxed_opaque_existential_0(&v47);
    return (*(v35 + 8))(v28, v40);
  }
}

uint64_t _s7JetCore6ModelsO18HTTPTemplateActionV9ParameterV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = a1[6];
  v17 = *(a2 + 56);
  v18 = *(a1 + 56);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1DB50BA30() & 1) == 0 || (sub_1DB48E2C4(v2, v7) & 1) == 0 || (sub_1DB48E400(v3, v8) & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    result = 0;
    if (v9)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (v9)
  {
    if (v4 == v10 && v5 == v9)
    {
      if (v6 != v11)
      {
        return 0;
      }

LABEL_16:
      if (v18)
      {
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = v17;
        if (v16 != v15)
        {
          v14 = 1;
        }

        if (v14)
        {
          return 0;
        }
      }

      return 1;
    }

    v13 = sub_1DB50BA30();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

LABEL_15:
    if ((v6 ^ v11))
    {
      return result;
    }

    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_1DB3B64D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DB3B653C()
{
  result = qword_1ECC44AB8;
  if (!qword_1ECC44AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44AB8);
  }

  return result;
}

unint64_t sub_1DB3B6590()
{
  result = qword_1ECC44AC0;
  if (!qword_1ECC44AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44AC0);
  }

  return result;
}

unint64_t sub_1DB3B65E4()
{
  result = qword_1ECC44AC8;
  if (!qword_1ECC44AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44AC8);
  }

  return result;
}

unint64_t sub_1DB3B6638()
{
  result = qword_1ECC44AD8;
  if (!qword_1ECC44AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44AD0, &qword_1DB516CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44AD8);
  }

  return result;
}

unint64_t sub_1DB3B66B4()
{
  result = qword_1ECC44AE8;
  if (!qword_1ECC44AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44AE0, &qword_1DB516CF8);
    sub_1DB3B6738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44AE8);
  }

  return result;
}

unint64_t sub_1DB3B6738()
{
  result = qword_1ECC44AF0;
  if (!qword_1ECC44AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44AF8, &qword_1DB516D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44AF0);
  }

  return result;
}

unint64_t sub_1DB3B67B4()
{
  result = qword_1ECC44B08;
  if (!qword_1ECC44B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B08);
  }

  return result;
}

unint64_t sub_1DB3B6808()
{
  result = qword_1ECC44B10;
  if (!qword_1ECC44B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B10);
  }

  return result;
}

unint64_t sub_1DB3B685C()
{
  result = qword_1ECC44B18;
  if (!qword_1ECC44B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44AD0, &qword_1DB516CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B18);
  }

  return result;
}

unint64_t sub_1DB3B68D8()
{
  result = qword_1ECC44B20;
  if (!qword_1ECC44B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44AE0, &qword_1DB516CF8);
    sub_1DB3B695C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B20);
  }

  return result;
}

unint64_t sub_1DB3B695C()
{
  result = qword_1ECC44B28;
  if (!qword_1ECC44B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44AF8, &qword_1DB516D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B28);
  }

  return result;
}

unint64_t sub_1DB3B6A40()
{
  result = qword_1ECC44B38;
  if (!qword_1ECC44B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B38);
  }

  return result;
}

unint64_t sub_1DB3B6A94()
{
  result = qword_1ECC44B40;
  if (!qword_1ECC44B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43070, &qword_1DB510228);
    sub_1DB3B6B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B40);
  }

  return result;
}

unint64_t sub_1DB3B6B18()
{
  result = qword_1ECC44B48;
  if (!qword_1ECC44B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B48);
  }

  return result;
}

unint64_t sub_1DB3B6B6C()
{
  result = qword_1ECC44B58;
  if (!qword_1ECC44B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43070, &qword_1DB510228);
    sub_1DB3B6BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B58);
  }

  return result;
}

unint64_t sub_1DB3B6BF0()
{
  result = qword_1ECC44B60;
  if (!qword_1ECC44B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B60);
  }

  return result;
}

unint64_t sub_1DB3B6C48()
{
  result = qword_1ECC44B68;
  if (!qword_1ECC44B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B68);
  }

  return result;
}

unint64_t sub_1DB3B6CA0()
{
  result = qword_1ECC44B70;
  if (!qword_1ECC44B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B70);
  }

  return result;
}

unint64_t sub_1DB3B6CF8()
{
  result = qword_1ECC44B78;
  if (!qword_1ECC44B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44B78);
  }

  return result;
}

void sub_1DB3B6D74(uint64_t a1)
{
  sub_1DB3B6EBC(319, &qword_1ECC44B90, &type metadata for Models.HTTPTemplateAction.Parameter, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NetRequest(319);
    if (v2 <= 0x3F)
    {
      sub_1DB3B6EBC(319, &qword_1ECC44B98, &type metadata for Models.HTTPTemplateAction.JSONBody, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1DB3B6EBC(319, &qword_1ECC44BA0, &type metadata for Models.HTTPTemplateAction.FormBody, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1DB39EBD8(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}