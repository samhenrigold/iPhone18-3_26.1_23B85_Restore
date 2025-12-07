id sub_1DB3599A8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Result(255, a3, a3, a4);
  v7 = sub_1DB50B120();
  (*(*(v7 - 8) + 8))(a1, v7);
  *a1 = a2;
  swift_storeEnumTagMultiPayload();
  (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  return a2;
}

void sub_1DB359A7C(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Result(255, AssociatedTypeWitness, v9, v10);
  sub_1DB50B120();
  sub_1DB47D0C4(sub_1DB35AB20, v11, a2);
  dispatch_group_leave(a3);
}

uint64_t sub_1DB359B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Result(255, AssociatedTypeWitness, v8, v9);
  v11 = sub_1DB50B120();
  (*(*(v11 - 8) + 8))(a1, v11);
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a2, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
}

void sub_1DB359C5C(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Result(255, AssociatedTypeWitness, v9, v10);
  v11 = sub_1DB50B120();
  sub_1DB35B4EC(sub_1DB35AB00, v12, a2, v11, MEMORY[0x1E69E7CA8] + 8);
  dispatch_group_leave(a3);
}

id sub_1DB359D10(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Result(255, AssociatedTypeWitness, v8, v9);
  v11 = sub_1DB50B120();
  (*(*(v11 - 8) + 8))(a1, v11);
  *a1 = a2;
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  return a2;
}

void sub_1DB359E08(char *a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4, void (*a5)(void *), uint64_t a6, char *a7, char *a8, char *a9)
{
  v57 = a6;
  v58 = a5;
  v54 = a4;
  v55 = a3;
  v62 = a2;
  v63 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = &v50 - v12;
  v56 = *(a7 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Result(255, a7, v15, v16);
  v53 = AssociatedTypeWitness;
  v20 = type metadata accessor for Result(255, AssociatedTypeWitness, v18, v19);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v22 = (&v50 - v21);
  v23 = sub_1DB50B120();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  v26 = sub_1DB50B120();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v50 - v27;
  v65 = a7;
  v66 = a8;
  v60 = a9;
  v61 = a8;
  v67 = a9;
  sub_1DB47D0C4(sub_1DB35AA60, v64, v63);
  v29 = *(v17 - 8);
  v30 = (*(v29 + 48))(v28, 1, v17);
  if (v30 == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](v30);
  v63 = a7;
  v31 = v60;
  v32 = v61;
  *(&v50 - 4) = a7;
  *(&v50 - 3) = v32;
  *(&v50 - 2) = v31;
  sub_1DB47D0C4(sub_1DB35AAE0, (&v50 - 6), v62);
  v33 = *(v20 - 8);
  if ((*(v33 + 48))(v25, 1, v20) == 1)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v34 = *(TupleTypeMetadata2 + 48);
  (*(v29 + 32))(v22, v28, v17);
  (*(v33 + 32))(v22 + v34, v25, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *v22;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = *(v22 + v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1DB50F8D0;
      *(v37 + 32) = v35;
      *(v37 + 40) = v36;
      sub_1DB32E3B0();
      v38 = swift_allocError();
      v40 = v39;
      v41 = v35;
      v42 = v36;
      *v40 = v37;
      v58(v38);

LABEL_10:
      return;
    }

    (*(v33 + 8))(v22 + v34, v20);
LABEL_9:
    v58(v35);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *(v22 + v34);
    (*(v56 + 8))(v22, v63);
    goto LABEL_9;
  }

  v43 = v56;
  v44 = v50;
  v45 = v63;
  (*(v56 + 32))(v50, v22, v63);
  v47 = v51;
  v46 = v52;
  v48 = v22 + v34;
  v49 = v53;
  (*(v52 + 32))(v51, v48, v53);
  v55(v44, v47);
  (*(v46 + 8))(v47, v49);
  (*(v43 + 8))(v44, v45);
}

uint64_t sub_1DB35A3C0@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Result(255, AssociatedTypeWitness, v7, v8);
  v9 = sub_1DB50B120();
  return (*(*(v9 - 8) + 16))(a4, a1, v9);
}

uint64_t *LazyPromise.deinit()
{
  v1 = *v0;

  v4 = type metadata accessor for LazyPromise.State(0, *(v1 + 80), v2, v3);
  (*(*(v4 - 8) + 8))(v0 + 3, v4);
  return v0;
}

uint64_t LazyPromise.__deallocating_deinit()
{
  LazyPromise.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 81, 7);
}

uint64_t sub_1DB35A50C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB306AF4;

  return LazyPromise.then()(a1);
}

void *sub_1DB35A5A4@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_1DB35A5E8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1DB35A778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DB35A7DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB35A818(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DB35A868(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t objectdestroy_19Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DB35A9C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DB35AA0C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB35AA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for Result(255, *(v4 + 16), a3, a4);
  v7 = sub_1DB50B120();
  return (*(*(v7 - 8) + 16))(a2, a1, v7);
}

uint64_t sub_1DB35AB80()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  (*(v0 + 40))();
  (*(v2 + 16))(v3, v4, v5, v6, v0 + 88, v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t CompoundTreatmentFilter.addFilter(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1DB35AEA8(v4, v1, v2, v3);
}

JetCore::LintedMetricsEvent __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CompoundTreatmentFilter.treat(_:on:)(JetCore::LintedMetricsEvent _, Swift::String_optional on)
{
  v5 = v4;
  countAndFlagsBits = on.value._countAndFlagsBits;
  rawValue = _.issues._rawValue;
  v17 = v2;
  v7 = *_.fields._rawValue;
  v6 = *(_.fields._rawValue + 1);
  v8 = *v3;
  v9 = *(*v3 + 16);

  if (v9)
  {
    v12 = 0;
    v13 = v8 + 32;
    while (v12 < *(v8 + 16))
    {
      sub_1DB30BE90(v13, v21);
      v15 = v22;
      v14 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v19[0] = v7;
      v19[1] = v6;
      (*(v14 + 8))(v20, v19, rawValue, countAndFlagsBits, v15, v14);
      if (v5)
      {
        __swift_destroy_boxed_opaque_existential_0(v21);

        goto LABEL_9;
      }

      ++v12;
      __swift_destroy_boxed_opaque_existential_0(v21);

      v7 = v20[0];
      v6 = v20[1];
      v13 += 40;
      if (v9 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    *v17 = v7;
    v17[1] = v6;
  }

LABEL_9:
  result.issues._rawValue = v11;
  result.fields._rawValue = v10;
  return result;
}

uint64_t CompoundTreatmentFilter.addingFilter(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = *v2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_1DB35AEA8(v6, a2, v4, v5);
}

uint64_t sub_1DB35AEA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = *(v7 + 16);
  v14(&v20 - v12, v11);
  v15 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1DB302B68(0, v15[2] + 1, 1, v15);
    *a2 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1DB302B68((v17 > 1), v18 + 1, 1, v15);
    *a2 = v15;
  }

  (v14)(v9, v13, a3);
  sub_1DB35B060(v18, v9, a2, a3, a4);
  *a2 = v15;
  return (*(v7 + 8))(v13, a3);
}

uint64_t sub_1DB35B060(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1DB30C7A8(&v12, v10 + 40 * a1 + 32);
}

unint64_t static ComponentKindTable._table.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  v3 = sub_1DB30E86C(v2);

  return v3;
}

void *static ComponentKindTable._decode(_:from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = dynamic_cast_existential_2_conditional(a1, a1, &protocol descriptor for ComponentModel, MEMORY[0x1E69E6440]);
  if (v7)
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    sub_1DB30BE90(a2, v31);
    *&v33 = v10;
    *(&v33 + 1) = v11;
    v34 = v12;
    __swift_allocate_boxed_opaque_existential_0(v32);
    sub_1DB50ADB0();
    if (v3)
    {
      return __swift_deallocate_boxed_opaque_existential_0(v32);
    }

LABEL_7:
    v29 = v33;
    v22 = v33;
    v23 = __swift_project_boxed_opaque_existential_1(v32, v33);
    *(a3 + 24) = v29;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v23, v22);
    return __swift_destroy_boxed_opaque_existential_0(v32);
  }

  v14 = dynamic_cast_existential_2_conditional(a1, a1, &protocol descriptor for ComponentModel, &protocol descriptor for ExpressibleByJSON);
  if (v14)
  {
    v17 = v14;
    v18 = v15;
    v19 = v16;
    sub_1DB30BE90(a2, v30);
    result = JSONObject.init(from:)(v30, v31);
    if (v3)
    {
      return result;
    }

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v20 = sub_1DB50BDE0();
    JSONContext.init(userInfo:)(v20);
    v21 = *(v19 + 8);
    *&v33 = v17;
    *(&v33 + 1) = v18;
    v34 = v19;
    __swift_allocate_boxed_opaque_existential_0(v32);
    v21(v31, v30, v17, v19);
    goto LABEL_7;
  }

  v25 = sub_1DB50B3E0();
  swift_allocError();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
  *v27 = a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DB50BDB0();
  sub_1DB50B320();

  v32[0] = 60;
  v32[1] = 0xE100000000000000;
  v28 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v28);

  MEMORY[0x1E1285C70](0xD000000000000012, 0x80000001DB52AB80);
  sub_1DB50B3C0();
  (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
  return swift_willThrow();
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB35B504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for LazyValueWrapper.State(0, a3, a3, a5);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v14 - v10);
  *v11 = a1;
  v11[1] = a2;
  swift_storeEnumTagMultiPayload();
  v12 = sub_1DB388A48(v11, v8);
  result = (*(v9 + 8))(v11, v8);
  *a4 = v12;
  return result;
}

uint64_t sub_1DB35B5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for LazyValueWrapper.State(0, a2, a4, a5);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = *(a2 - 8);
  (*(v13 + 16))(&v16 - v11, a1, a2, v10);
  swift_storeEnumTagMultiPayload();
  v14 = sub_1DB388A48(v12, v8);
  (*(v9 + 8))(v12, v8);
  result = (*(v13 + 8))(a1, a2);
  *a3 = v14;
  return result;
}

uint64_t LazyValueWrapper.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v8 = *(a1 + 16);
  type metadata accessor for LazyValueWrapper.State(0, v8, a3, a4);
  sub_1DB47D0C4(sub_1DB35BA74, &v7, v5);
  return v9;
}

void sub_1DB35B7C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LazyValueWrapper.State(0, v9, v10, v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (v24 - v14);
  (*(v16 + 16))(v24 - v14, a1, v12, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v20 = *v15;
    v21 = v15[1];
    v25 = 0x646564616F6C6E75;
    v26 = 0xE900000000000028;
    v24[0] = v20;
    v24[1] = v21;
    swift_getFunctionTypeMetadata0();

    v22 = sub_1DB50A6C0();
    MEMORY[0x1E1285C70](v22);

    MEMORY[0x1E1285C70](41, 0xE100000000000000);

LABEL_6:
    v18 = v25;
    v19 = v26;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v23 = *v15;
    v25 = 0;
    v26 = 0xE000000000000000;
    MEMORY[0x1E1285C70](0x2864696C61766E69, 0xE800000000000000);
    swift_getErrorValue();
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](41, 0xE100000000000000);

    goto LABEL_6;
  }

  (*(v6 + 32))(v8, v15, a2);
  v25 = 0;
  v26 = 0xE000000000000000;
  MEMORY[0x1E1285C70](0x28646564616F6CLL, 0xE700000000000000);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  v18 = v25;
  v19 = v26;
  (*(v6 + 8))(v8, a2);
LABEL_7:
  *a3 = v18;
  a3[1] = v19;
}

void sub_1DB35BAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v7 = *(a1 + 16);
  type metadata accessor for LazyValueWrapper.State(0, v7, a3, a4);
  sub_1DB47D0C4(sub_1DB35C990, &v6, v5);
}

uint64_t sub_1DB35BB24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LazyValueWrapper.State(0, v10, v11, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v65 - v16);
  (*(v14 + 16))(&v65 - v16, a1, v13, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = v17;
      return (*(v7 + 32))(a3, v9, a2);
    }

    if (qword_1ECC42220 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v44 = v78;
    v45 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1DB50EE90;
    v80 = sub_1DB301BC0(0, 46, 0, MEMORY[0x1E69E7CC0]);
    v47._countAndFlagsBits = 91;
    v47._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v47);
    MetatypeMetadata = swift_getMetatypeMetadata();
    v75[0] = a2;
    sub_1DB301CDC(v75, v71);
    v72 = 0u;
    v73 = 0u;
    sub_1DB301D4C(v71, &v72);
    v74 = 0;
    v48 = v80;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_1DB301BC0(0, *(v48 + 2) + 1, 1, v48);
    }

    v50 = *(v48 + 2);
    v49 = *(v48 + 3);
    if (v50 >= v49 >> 1)
    {
      v48 = sub_1DB301BC0((v49 > 1), v50 + 1, 1, v48);
    }

    *(v48 + 2) = v50 + 1;
    v51 = &v48[40 * v50];
    v52 = v72;
    v53 = v73;
    v51[64] = v74;
    *(v51 + 2) = v52;
    *(v51 + 3) = v53;
    v80 = v48;
    sub_1DB301DBC(v75);
    v54._countAndFlagsBits = 0xD00000000000002BLL;
    v54._object = 0x80000001DB52ABA0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v54);
    swift_getErrorValue();
    v55 = v69;
    v56 = v70;
    MetatypeMetadata = v70;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v75);
    (*(*(v56 - 8) + 16))(boxed_opaque_existential_0, v55, v56);
    sub_1DB301CDC(v75, v71);
    v72 = 0u;
    v73 = 0u;
    sub_1DB301D4C(v71, &v72);
    v74 = 0;
    v58 = v80;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_1DB301BC0(0, *(v58 + 2) + 1, 1, v58);
      v80 = v58;
    }

    v60 = *(v58 + 2);
    v59 = *(v58 + 3);
    if (v60 >= v59 >> 1)
    {
      v58 = sub_1DB301BC0((v59 > 1), v60 + 1, 1, v58);
    }

    *(v58 + 2) = v60 + 1;
    v61 = &v58[40 * v60];
    v62 = v72;
    v63 = v73;
    v61[64] = v74;
    *(v61 + 2) = v62;
    *(v61 + 3) = v63;
    v80 = v58;
    sub_1DB301DBC(v75);
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v64);
    *(v46 + 32) = v80;
    Logger.error(_:)(v46, v44, v45);

    __swift_destroy_boxed_opaque_existential_0(v77);
    return swift_willThrow();
  }

  else
  {
    v19 = (*(v14 + 8))(a1, v13);
    (*v17)(v19);
    if (!v3)
    {

      (*(v7 + 16))(a1, v9, a2);
      swift_storeEnumTagMultiPayload();
      return (*(v7 + 32))(a3, v9, a2);
    }

    if (qword_1ECC42220 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v20 = v78;
    v21 = v79;
    v65 = __swift_project_boxed_opaque_existential_1(v77, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1DB50EE90;
    v80 = sub_1DB301BC0(0, 35, 0, MEMORY[0x1E69E7CC0]);
    v23._countAndFlagsBits = 91;
    v23._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    MetatypeMetadata = swift_getMetatypeMetadata();
    v75[0] = a2;
    sub_1DB301CDC(v75, v71);
    v72 = 0u;
    v73 = 0u;
    sub_1DB301D4C(v71, &v72);
    v74 = 0;
    v24 = v80;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      v24 = sub_1DB301BC0((v26 > 1), v27 + 1, 1, v24);
    }

    *(v24 + 2) = v27 + 1;
    v28 = &v24[40 * v27];
    v29 = v72;
    v30 = v73;
    v28[64] = v74;
    *(v28 + 2) = v29;
    *(v28 + 3) = v30;
    v80 = v24;
    sub_1DB301DBC(v75);
    v31._object = 0x80000001DB52ABD0;
    v31._countAndFlagsBits = 0xD000000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v31);
    swift_getErrorValue();
    v32 = v67;
    v33 = v68;
    MetatypeMetadata = v68;
    v34 = __swift_allocate_boxed_opaque_existential_0(v75);
    (*(*(v33 - 8) + 16))(v34, v32, v33);
    sub_1DB301CDC(v75, v71);
    v72 = 0u;
    v73 = 0u;
    sub_1DB301D4C(v71, &v72);
    v74 = 0;
    v35 = v80;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1DB301BC0(0, *(v35 + 2) + 1, 1, v35);
      v80 = v35;
    }

    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_1DB301BC0((v36 > 1), v37 + 1, 1, v35);
    }

    *(v35 + 2) = v37 + 1;
    v38 = &v35[40 * v37];
    v39 = v72;
    v40 = v73;
    v38[64] = v74;
    *(v38 + 2) = v39;
    *(v38 + 3) = v40;
    v80 = v35;
    sub_1DB301DBC(v75);
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v41);
    *(v22 + 32) = v80;
    Logger.error(_:)(v22, v20, v66);

    __swift_destroy_boxed_opaque_existential_0(v77);
    *a1 = v3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v42 = v3;
  }
}

void sub_1DB35C32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v7 = *(a2 + 16);
  v8 = a1;
  type metadata accessor for LazyValueWrapper.State(0, v7, a3, a4);
  sub_1DB47D0C4(sub_1DB35C974, &v6, v5);
}

uint64_t sub_1DB35C3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LazyValueWrapper.State(0, a3, a3, a4);
  (*(*(v7 - 8) + 8))(a1, v7);
  (*(*(a3 - 8) + 16))(a1, a2, a3);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB35C468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1DB35C564(uint64_t a1)
{
  result = sub_1DB35C8C0();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_1DB35C910();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DB35C5F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1DB35C708(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
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

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1DB35C8C0()
{
  result = qword_1EE30E2D0;
  if (!qword_1EE30E2D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE30E2D0);
  }

  return result;
}

unint64_t sub_1DB35C910()
{
  result = qword_1EE30E2E0;
  if (!qword_1EE30E2E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE30E2E0);
  }

  return result;
}

uint64_t sub_1DB35C9F4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1DB35CA44(a1, a2, v5, v6);
  return v4;
}

void *sub_1DB35CA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DependencyCell.ObjectState(0, *(*v4 + 80), a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v13 - v9);
  *v10 = a1;
  v10[1] = a2;
  swift_storeEnumTagMultiPayload();
  v11 = sub_1DB388A48(v10, v7);
  (*(v8 + 8))(v10, v7);
  v4[2] = v11;
  return v4;
}

uint64_t sub_1DB35CB48()
{
  v1 = *v0;

  sub_1DB330B68();
  v2 = v11;
  v3 = sub_1DB330884(&v11);
  v4 = v0[2];
  MEMORY[0x1EEE9AC00](v3);
  v9 = v0;
  v10 = v2;
  type metadata accessor for DependencyCell.ObjectState(0, *(v1 + 80), v5, v6);

  sub_1DB47D0C4(sub_1DB35DA24, &v8, v4);
}

uint64_t sub_1DB35CD5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a4;
  v56 = a3;
  v8 = *a2;
  v9 = sub_1DB50A230();
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v15 = *(v8 + 80);
  v18 = type metadata accessor for DependencyCell.ObjectState(0, v15, v16, v17);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (&v50 - v20);
  v23 = *(v22 + 16);
  v57 = a1;
  v23(v21, a1, v18, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(v15 - 8) + 32))(a5, v21, v15);
  }

  v25 = v21[1];
  v51 = *v21;
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v26 = sub_1DB50A270();
  __swift_project_value_buffer(v26, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v27 = sub_1DB50A250();
  v28 = sub_1DB50B070();
  v29 = sub_1DB50B0E0();
  v52 = a5;
  v53 = v5;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v50 = v25;
    v31 = v28;
    v32 = v30;
    v33 = swift_slowAlloc();
    v58.tv_sec = v33;
    *v32 = 136315138;
    v34 = sub_1DB50BEE0();
    v36 = sub_1DB3D4EE8(v34, v35, &v58.tv_sec);

    *(v32 + 4) = v36;
    v37 = sub_1DB50A210();
    v38 = v31;
    v25 = v50;
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v27, v38, v37, "MakeDependency", "object=%s,type=lazy", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x1E1288220](v33, -1, -1);
    MEMORY[0x1E1288220](v32, -1, -1);
  }

  v40 = v54;
  v39 = v55;
  (*(v54 + 16))(v11, v14, v55);
  sub_1DB50A2C0();
  swift_allocObject();
  v41 = sub_1DB50A2B0();
  (*(v40 + 8))(v14, v39);
  static MonotonicTime.now.getter(&v58);
  tv_sec = v58.tv_sec;
  tv_nsec = v58.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v44 = v58.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v45 = swift_allocObject();
  *(v45 + 24) = 0;
  *(v45 + 16) = 0;
  v58.tv_sec = v45;
  MEMORY[0x1EEE9AC00](v45);
  v46 = v51;
  *(&v50 - 12) = v15;
  *(&v50 - 11) = v46;
  v47 = v56;
  *(&v50 - 10) = v25;
  *(&v50 - 9) = v47;
  v48 = v57;
  *(&v50 - 8) = v59;
  *(&v50 - 7) = v48;
  *(&v50 - 6) = tv_sec;
  *(&v50 - 5) = tv_nsec;
  *(&v50 - 4) = v41;
  *(&v50 - 3) = v49;
  *(&v50 - 2) = v44;
  sub_1DB50BEC0();
}

void sub_1DB35D23C(uint64_t a1@<X0>, uint64_t a2@<X1>, __darwin_time_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v45 = a6;
  v46 = a7;
  v48 = a8;
  v49 = a10;
  v18 = sub_1DB50A280();
  v43 = *(v18 - 8);
  v44 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v47 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1DB50A230();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51.tv_sec = a3;
  v51.tv_nsec = a4;
  sub_1DB330574(a1, a2, &v51.tv_sec, a12);
  v24 = type metadata accessor for DependencyCell.ObjectState(0, a12, v22, v23);
  (*(*(v24 - 8) + 8))(a5, v24);
  (*(*(a12 - 8) + 16))(a5, a9, a12);
  swift_storeEnumTagMultiPayload();
  static MonotonicTime.now.getter(&v51);
  tv_sec = v51.tv_sec;
  tv_nsec = v51.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v27 = tv_nsec / *&qword_1EE30ED50 + tv_sec;
  v28 = v46 / *&qword_1EE30ED50 + v45;
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v29 = v27 - v28;
  v30 = sub_1DB50A270();
  __swift_project_value_buffer(v30, qword_1EE312DE8);
  v31 = v49;

  v32 = sub_1DB50A250();
  sub_1DB50A2A0();
  v33 = sub_1DB50B060();

  v34 = sub_1DB50B0E0();
  v35 = v47;
  if (v34)
  {

    sub_1DB50A2D0();

    v37 = v43;
    v36 = v44;
    if ((*(v43 + 88))(v35, v44) == *MEMORY[0x1E69E93E8])
    {
      v38 = 0;
      v39 = "[Error] Interval already ended";
    }

    else
    {
      (*(v37 + 8))(v35, v36);
      v39 = "selfTime=%f";
      v38 = 1;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    *(v40 + 1) = v38;
    *(v40 + 2) = 2048;
    os_unfair_lock_lock((v31 + 24));
    v41 = *(v31 + 16);
    os_unfair_lock_unlock((v31 + 24));
    *(v40 + 4) = v29 - v41;
    v42 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v32, v33, v42, "MakeDependency", v39, v40, 0xCu);
    MEMORY[0x1E1288220](v40, -1, -1);
  }

  (*(v50 + 8))(v21, v52);
  os_unfair_lock_lock((a11 + 24));
  *(a11 + 16) = v29 + *(a11 + 16);
  os_unfair_lock_unlock((a11 + 24));
}

unint64_t sub_1DB35D6A0(uint64_t a1)
{
  result = sub_1DB35C8C0();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB35D718(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1DB35D830(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
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

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

id sub_1DB35DA84()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1DB35DBE8()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x1E698C788];
  v3 = *(v0 + OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_backing);
  swift_unknownObjectRetain();
  if (sub_1DB509950())
  {
    v4 = sub_1DB50A490();
  }

  else
  {
    v4 = 0;
  }

  [v1 postNotificationName:v2 object:v3 userInfo:v4];

  swift_unknownObjectRelease();
}

id sub_1DB35DFFC(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_backing];
  v5 = a1;
  v6 = [v4 *a3];
  if (!v6)
  {
    sub_1DB50A650();
    v6 = sub_1DB50A620();
  }

  return v6;
}

id sub_1DB35E2F4(uint64_t a1, SEL *a2)
{
  if (*(*(v2 + OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_overrides) + 16) && (sub_1DB314CB4(), (v5 & 1) != 0) && (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
  {
    v7 = v6;
    swift_unknownObjectRetain();
    return v7;
  }

  else
  {
    v9 = [*(v2 + OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_backing) *a2];

    return v9;
  }
}

void sub_1DB35E428(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = objc_allocWithZone(type metadata accessor for OverriddenAMSBag());
    v9 = a1;

    v10 = sub_1DB35E854(v9, a5, v8);
    (a3)(v10, 0);
  }

  else
  {
    (a3)(0, a2, a3, a4, a5);
  }
}

id sub_1DB35E680()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_backing);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = [v2 profile];
    if (!v4)
    {
      sub_1DB50A650();
      v4 = sub_1DB50A620();
    }

    v5 = [v2 profileVersion];
    if (!v5)
    {
      sub_1DB50A650();
      v5 = sub_1DB50A620();
    }

    v6 = [objc_opt_self() bagForProfile:v4 profileVersion:v5];

    v7 = *(v0 + OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_overrides);
    v8 = objc_allocWithZone(ObjectType);

    return sub_1DB35E928(v6, v7, v8);
  }

  return result;
}

id sub_1DB35E854(void *a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  *&a3[OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_backing] = a1;
  *&a3[OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_overrides] = a2;
  v11.receiver = a3;
  v11.super_class = ObjectType;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = [objc_opt_self() defaultCenter];
  [v9 addObserver:v8 selector:sel_forwardSnapshotBagExpiredValueAccessed_ name:*MEMORY[0x1E698C788] object:v7];

  return v8;
}

id sub_1DB35E928(void *a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  *&a3[OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_backing] = a1;
  *&a3[OBJC_IVAR____TtC7JetCore16OverriddenAMSBag_overrides] = a2;
  v11.receiver = a3;
  v11.super_class = ObjectType;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v9 = [objc_opt_self() defaultCenter];
    [v9 addObserver:v8 selector:sel_forwardSnapshotBagExpiredValueAccessed_ name:*MEMORY[0x1E698C788] object:v7];
  }

  return v8;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DB35EA44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1DB35EAC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43840, &qword_1DB512218);
  v0 = swift_allocObject();
  *&result = 3;
  *(v0 + 16) = xmmword_1DB511620;
  *(v0 + 32) = &type metadata for _AMSBagProtocolForBagRule;
  *(v0 + 40) = &off_1EE30CB08;
  *(v0 + 48) = &type metadata for _BagForAMSBagProtocolRule;
  *(v0 + 56) = &off_1EE30CAE8;
  *(v0 + 64) = &type metadata for _AMSKitBagForBagRule;
  *(v0 + 72) = &off_1EE30E238;
  off_1EE30D3B0 = v0;
  return result;
}

uint64_t sub_1DB35EB4C(uint64_t a1, uint64_t a2)
{
  if (qword_1EE30D3A8 != -1)
  {
    swift_once();
  }

  *(swift_allocObject() + 16) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43848, &qword_1DB512220);
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_1DB3370CC(&qword_1EE30C790, &qword_1ECC43848, &qword_1DB512220, MEMORY[0x1E69E6A68]);
  sub_1DB50B640();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43850, &qword_1DB512228);
  sub_1DB50B120();
  sub_1DB3370CC(&unk_1EE30C850, &qword_1ECC43850, &qword_1DB512228, MEMORY[0x1E69E6328]);
  sub_1DB50B510();
  swift_getWitnessTable();
  sub_1DB50B5D0();
  swift_getWitnessTable();
  sub_1DB50B510();
  sub_1DB3370CC(&qword_1EE30C848, &qword_1ECC43850, &qword_1DB512228, MEMORY[0x1E69E6340]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DB50AE60();

  return v4;
}

uint64_t sub_1DB35EE60@<X0>(void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
  swift_getExtendedExistentialTypeMetadata_unique();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t ReadOnlyLens.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + *MEMORY[0x1E69E6F98] + 8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - v5;
  swift_getAtKeyPath();
  return (*(v4 + 32))(a2, v6, v3);
}

uint64_t ReadOnlyLens.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t x8_0@<X8>)
{
  return sub_1DB35F08C(a1, MEMORY[0x1E69E77B0], x8_0);
}

{
  return sub_1DB35F08C(a1, MEMORY[0x1E69E6F98], x8_0);
}

uint64_t sub_1DB35F08C@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getAtKeyPath();
  v7[0] = v7[1];
  return (*(*(*(v5 + *a2 + 8) - 8) + 32))(a3, v7);
}

uint64_t ReadOnlyLens.description.getter(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return sub_1DB50A6C0();
}

uint64_t ReadOnlyLens<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1DB50BCF0();
  sub_1DB50A5D0();
  return sub_1DB50BD30();
}

uint64_t sub_1DB35F2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1DB50BCF0();
  ReadOnlyLens<A>.hash(into:)(v6, a2, v4);
  return sub_1DB50BD30();
}

uint64_t sub_1DB35F33C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t PreferenceKey.init(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a3;
  v7 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB50F8D0;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  *(v9 + 48) = a1;
  *(v9 + 56) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v10 = sub_1DB50A5E0();
  v12 = v11;

  *a4 = v10;
  a4[1] = v12;
  return result;
}

uint64_t PreferenceKey.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PreferenceKey.lookupName.getter()
{
  v0 = sub_1DB35F5B4();

  return v0;
}

uint64_t PreferenceKey.lookupName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static PreferenceKey.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

uint64_t sub_1DB35F578()
{
  v0 = sub_1DB35F5B4();

  return v0;
}

uint64_t sub_1DB35F5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB35F694@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1DB50A300();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_sessionIfValid;
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v6, &v48, &qword_1ECC43918, &qword_1DB512418);
  if (v49)
  {
    return sub_1DB2FEA0C(&v48, a1);
  }

  v39 = a1;
  sub_1DB30623C(&v48, &qword_1ECC43918, &qword_1DB512418);
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v49;
  v40 = v50;
  __swift_project_boxed_opaque_existential_1(&v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB50EE90;
  v51 = sub_1DB301BC0(0, 26, 0, MEMORY[0x1E69E7CC0]);
  v10._object = 0x80000001DB52B1D0;
  v10._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v11 = *(v1 + 128);
  v12 = *(v1 + 136);
  v47 = MEMORY[0x1E69E6158];
  v46[0] = v11;
  v46[1] = v12;
  sub_1DB30C4B8(v46, v42, &qword_1ECC426B0, &qword_1DB50EEB0);
  v43 = 0u;
  v44 = 0u;

  sub_1DB30C2D8(v42, &v43, &qword_1ECC426B0, &qword_1DB50EEB0);
  v45 = 0;
  v13 = v51;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1DB301BC0(0, *(v13 + 2) + 1, 1, v13);
    v51 = v13;
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1DB301BC0((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[40 * v15];
  v17 = v43;
  v18 = v44;
  v16[64] = v45;
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  v51 = v13;
  sub_1DB30623C(v46, &qword_1ECC426B0, &qword_1DB50EEB0);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v9 + 32) = v51;
  Logger.info(_:)(v9, v8, v40);

  __swift_destroy_boxed_opaque_existential_0(&v48);
  if (qword_1EE30E190 != -1)
  {
    swift_once();
  }

  if (byte_1EE30E198 != 1 || (v20 = *(v3 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory)) == 0)
  {
    v23 = sub_1DB50A330();
    v24 = *(v3 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_workQueue);

    v25 = v24;

    sub_1DB50A2F0();
    v26 = sub_1DB50A2E0();
    if (v2)
    {
      goto LABEL_16;
    }

    v49 = v23;
    v50 = &protocol witness table for XPCSession;
    *&v48 = v26;
LABEL_23:
    sub_1DB2FEA0C(&v48, v39);
    sub_1DB30BE90(v39, &v48);
    swift_beginAccess();
    sub_1DB30C2D8(&v48, v3 + v6, &qword_1ECC43918, &qword_1DB512418);
    return swift_endAccess();
  }

  v21 = *(v3 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory + 8);

  v20(&v48, v22);
  if (!v2)
  {
    sub_1DB365724(v20, v21);
    goto LABEL_23;
  }

  sub_1DB365724(v20, v21);
LABEL_16:
  sub_1DB50BEB0();
  v27 = v49;
  v28 = v50;
  __swift_project_boxed_opaque_existential_1(&v48, v49);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1DB50EE90;
  v51 = sub_1DB301BC0(0, 43, 0, MEMORY[0x1E69E7CC0]);
  v30._countAndFlagsBits = 0xD00000000000002ALL;
  v30._object = 0x80000001DB52B1F0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v30);
  swift_getErrorValue();
  v47 = v41;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v46);
  (*(*(v41 - 8) + 16))(boxed_opaque_existential_0);
  sub_1DB30C4B8(v46, v42, &qword_1ECC426B0, &qword_1DB50EEB0);
  v43 = 0u;
  v44 = 0u;
  sub_1DB30C2D8(v42, &v43, &qword_1ECC426B0, &qword_1DB50EEB0);
  v45 = 0;
  v32 = v51;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_1DB301BC0(0, *(v32 + 2) + 1, 1, v32);
    v51 = v32;
  }

  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  if (v34 >= v33 >> 1)
  {
    v32 = sub_1DB301BC0((v33 > 1), v34 + 1, 1, v32);
  }

  *(v32 + 2) = v34 + 1;
  v35 = &v32[40 * v34];
  v36 = v43;
  v37 = v44;
  v35[64] = v45;
  *(v35 + 2) = v36;
  *(v35 + 3) = v37;
  v51 = v32;
  sub_1DB30623C(v46, &qword_1ECC426B0, &qword_1DB50EEB0);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v38);
  *(v29 + 32) = v51;
  Logger.error(_:)(v29, v27, v28);

  __swift_destroy_boxed_opaque_existential_0(&v48);
  return swift_willThrow();
}

uint64_t sub_1DB35FD4C(uint64_t a1)
{
  v2 = v1;
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v4 = *(&v26 + 1);
  v5 = v27;
  __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  v24 = sub_1DB301BC0(0, 41, 0, MEMORY[0x1E69E7CC0]);
  v7._object = 0x80000001DB52B220;
  v7._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v8 = sub_1DB50A350();
  v23[3] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a1, v8);
  sub_1DB30C4B8(v23, v19, &qword_1ECC426B0, &qword_1DB50EEB0);
  v20 = 0u;
  v21 = 0u;
  sub_1DB30C2D8(v19, &v20, &qword_1ECC426B0, &qword_1DB50EEB0);
  v22 = 0;
  v10 = v24;
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
  v14 = v20;
  v15 = v21;
  v13[64] = v22;
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v24 = v10;
  sub_1DB30623C(v23, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v6 + 32) = v24;
  Logger.error(_:)(v6, v4, v5);

  __swift_destroy_boxed_opaque_existential_0(&v25);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v17 = OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_sessionIfValid;
  swift_beginAccess();
  sub_1DB30C2D8(&v25, v2 + v17, &qword_1ECC43918, &qword_1DB512418);
  return swift_endAccess();
}

uint64_t DaemonSessionImplementation.__allocating_init(xpcServiceName:signposter:requestSizeLimit:timeout:xpcSessionProviderFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, double a8)
{
  v34 = a6;
  v35 = a7;
  v30 = a5;
  v31 = a4;
  v29[0] = a3;
  v33 = sub_1DB50AF80();
  MEMORY[0x1EEE9AC00](v33);
  v32 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DB50A440();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v29[1] = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DB50AFA0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  v20 = v19 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_sessionIfValid;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  *(v19 + 128) = a1;
  *(v19 + 136) = a2;
  v21 = OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_signposter;
  v22 = sub_1DB50A270();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v19 + v21, a3, v22);
  v24 = 0x100000;
  if ((v30 & 1) == 0)
  {
    v24 = v31;
  }

  *(v19 + 112) = v24;
  *(v19 + 120) = a8;
  v31 = sub_1DB357BD4();
  v36 = a1;
  v37 = a2;

  MEMORY[0x1E1285C70](0x6575516B726F772ELL, 0xEA00000000006575);
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8098], v15);
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1DB365680(&qword_1EE30C810, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB3606DC();
  sub_1DB50B240();
  v25 = sub_1DB50AFD0();
  (*(v23 + 8))(v29[0], v22);
  *(v19 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_workQueue) = v25;
  v26 = (v19 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory);
  v27 = v35;
  *v26 = v34;
  v26[1] = v27;
  return v19;
}

uint64_t DaemonSessionImplementation.init(xpcServiceName:signposter:requestSizeLimit:timeout:xpcSessionProviderFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  v36 = a6;
  v37 = a7;
  v32 = a5;
  v33 = a4;
  v31 = a3;
  v35 = sub_1DB50AF80();
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DB50A440();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v30 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DB50AFA0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v21 = v9 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_sessionIfValid;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  *(v9 + 128) = a1;
  *(v9 + 136) = a2;
  v22 = OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_signposter;
  v23 = sub_1DB50A270();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v9 + v22, a3, v23);
  v25 = 0x100000;
  if ((v32 & 1) == 0)
  {
    v25 = v33;
  }

  *(v9 + 112) = v25;
  *(v9 + 120) = a8;
  v33 = sub_1DB357BD4();
  v38 = a1;
  v39 = a2;

  MEMORY[0x1E1285C70](0x6575516B726F772ELL, 0xEA00000000006575);
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8098], v17);
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1DB365680(&qword_1EE30C810, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB3606DC();
  sub_1DB50B240();
  v26 = sub_1DB50AFD0();
  (*(v24 + 8))(v31, v23);
  *(v9 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_workQueue) = v26;
  v27 = (v9 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory);
  v28 = v37;
  *v27 = v36;
  v27[1] = v28;
  return v9;
}

unint64_t sub_1DB3606DC()
{
  result = qword_1EE30C838;
  if (!qword_1EE30C838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC44F80, &qword_1DB512400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30C838);
  }

  return result;
}

uint64_t DaemonSessionImplementation.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[117] = v4;
  v5[116] = a4;
  v5[115] = a3;
  v5[114] = a2;
  v5[113] = a1;
  v7 = sub_1DB50A350();
  v5[118] = v7;
  v5[119] = *(v7 - 8);
  v5[120] = swift_task_alloc();
  v5[121] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for DaemonResponse(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v5[122] = v11;
  v5[123] = *(v11 - 8);
  v5[124] = swift_task_alloc();
  v5[125] = swift_task_alloc();
  v12 = sub_1DB50A230();
  v5[126] = v12;
  v5[127] = *(v12 - 8);
  v5[128] = swift_task_alloc();
  v5[129] = swift_task_alloc();
  v5[130] = *(a3 - 8);
  v5[131] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB3609C4, v4, 0);
}

uint64_t sub_1DB3609C4()
{
  v52 = v0;
  v50 = *(*(v0 + 1040) + 16);
  v50(*(v0 + 1048), *(v0 + 912), *(v0 + 920));
  sub_1DB50A220();
  v1 = sub_1DB50A250();
  v2 = sub_1DB50B070();
  v3 = sub_1DB50B0E0();
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  if (v3)
  {
    v6 = *(v0 + 920);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v51 = v8;
    *v7 = 136315138;
    v9 = sub_1DB50B8F0();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_1DB3D4EE8(v9, v11, &v51);

    *(v7 + 4) = v12;
    v13 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v1, v2, v13, "DaemonSession.send", "request=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E1288220](v8, -1, -1);
    MEMORY[0x1E1288220](v7, -1, -1);
  }

  else
  {
    v14 = *(v0 + 920);

    (*(v5 + 8))(v4, v14);
  }

  v15 = *(v0 + 1032);
  v16 = *(v0 + 1016);
  v17 = *(v0 + 1008);
  v18 = *(v0 + 928);
  v19 = *(v0 + 920);
  (*(v16 + 16))(*(v0 + 1024), v15, v17);
  sub_1DB50A2C0();
  swift_allocObject();
  v20 = sub_1DB50A2B0();
  *(v0 + 1056) = v20;
  (*(v16 + 8))(v15, v17);
  v21 = (*(v18 + 96))(v19, v18);
  if ((v22 & 1) != 0 || (v23 = *(v0 + 936), v24 = *(v23 + 112), v24 >= v21))
  {
    if (qword_1ECC42298 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 920);
    v28 = *(v0 + 912);
    *(v0 + 1064) = qword_1ECC46748;
    sub_1DB50BEB0();
    v29 = *(v0 + 200);
    v30 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v29);
    *(v0 + 1072) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1DB50EE90;
    v51 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v32._countAndFlagsBits = 0xD00000000000001BLL;
    v32._object = 0x80000001DB52AE10;
    LogMessage.StringInterpolation.appendLiteral(_:)(v32);
    *(v0 + 816) = v27;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 792));
    v50(boxed_opaque_existential_0, v28, v27);
    sub_1DB30C4B8(v0 + 792, v0 + 728, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    sub_1DB30C2D8(v0 + 728, v0 + 336, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 368) = 0;
    v34 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1DB301BC0(0, *(v34 + 2) + 1, 1, v34);
    }

    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    if (v36 >= v35 >> 1)
    {
      v34 = sub_1DB301BC0((v35 > 1), v36 + 1, 1, v34);
    }

    *(v34 + 2) = v36 + 1;
    v37 = &v34[40 * v36];
    v38 = *(v0 + 336);
    v39 = *(v0 + 352);
    v37[64] = *(v0 + 368);
    *(v37 + 2) = v38;
    *(v37 + 3) = v39;
    v51 = v34;
    sub_1DB30623C(v0 + 792, &qword_1ECC426B0, &qword_1DB50EEB0);
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v40);
    *(v31 + 32) = v51;
    Logger.debug(_:)(v31, v29, v30);

    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    sub_1DB35F694(v0 + 56);
    v41 = *(v0 + 936);
    v42 = *(v0 + 912);
    v43 = sub_1DB365680(&qword_1ECC43910, type metadata accessor for DaemonSessionImplementation, &protocol conformance descriptor for DaemonSessionImplementation);
    v44 = swift_task_alloc();
    *(v0 + 1080) = v44;
    *(v44 + 16) = *(v0 + 920);
    *(v44 + 32) = v41;
    *(v44 + 40) = v0 + 56;
    *(v44 + 48) = v42;
    v45 = swift_task_alloc();
    *(v0 + 1088) = v45;
    *v45 = v0;
    v45[1] = sub_1DB361A00;
    v46 = *(v0 + 992);
    v47 = *(v0 + 976);

    return MEMORY[0x1EEE6DE38](v46, v41, v43, 0x293A5F28646E6573, 0xE800000000000000, sub_1DB365714, v44, v47);
  }

  else
  {
    v25 = v21;
    type metadata accessor for DaemonError(0);
    sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    *v26 = v25;
    v26[1] = v24;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1DB3632DC(v23, "DaemonSession.send", 18, 2, v20);

    v48 = *(v0 + 8);

    return v48();
  }
}

uint64_t sub_1DB361A00()
{
  v2 = *v1;
  *(*v1 + 1096) = v0;

  v3 = *(v2 + 936);

  if (v0)
  {
    v4 = sub_1DB362898;
  }

  else
  {
    v4 = sub_1DB361B48;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DB361B48()
{
  v1 = *(v0 + 976);
  (*(*(v0 + 984) + 32))(*(v0 + 1000), *(v0 + 992), v1);
  sub_1DB50BEB0();
  v2 = *(v0 + 280);
  v98 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1((v0 + 256), v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50EE90;
  v103 = sub_1DB301BC0(0, 36, 0, MEMORY[0x1E69E7CC0]);
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001DB52AEB0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v5 = sub_1DB3E3498(v1);
  *(v0 + 784) = MEMORY[0x1E69E6158];
  *(v0 + 760) = v5;
  *(v0 + 768) = v6;
  sub_1DB30C4B8(v0 + 760, v0 + 824, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  sub_1DB30C2D8(v0 + 824, v0 + 416, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 448) = 0;
  v7 = v103;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v103 + 2) + 1, 1, v103);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 1096);
  v11 = *(v0 + 976);
  v12 = *(v0 + 904);
  *(v7 + 2) = v9 + 1;
  v13 = &v7[40 * v9];
  v14 = *(v0 + 416);
  v15 = *(v0 + 432);
  v13[64] = *(v0 + 448);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  sub_1DB30623C(v0 + 760, &qword_1ECC426B0, &qword_1DB50EEB0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v3 + 32) = v7;
  Logger.info(_:)(v3, v2, v98);

  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  _s7JetCore14DaemonResponseO3getxyAA0cD12CodableErrorVYKF(v11, (v0 + 16), v12);
  if (!v10)
  {
    v44 = *(v0 + 1056);
    v45 = *(v0 + 936);
    (*(*(v0 + 984) + 8))(*(v0 + 1000), *(v0 + 976));
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    sub_1DB3632DC(v45, "DaemonSession.send", 18, 2, v44);

    v46 = *(v0 + 8);
    goto LABEL_29;
  }

  v17 = *(v0 + 1000);
  v18 = *(v0 + 984);
  v19 = *(v0 + 976);
  v20 = *(v0 + 48);
  sub_1DB36562C();
  v96 = *(v0 + 32);
  v99 = *(v0 + 16);
  v21 = swift_allocError();
  *v22 = v99;
  *(v22 + 16) = v96;
  *(v22 + 32) = v20;
  (*(v18 + 8))(v17, v19);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  *(v0 + 888) = v21;
  v23 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  if (swift_dynamicCast())
  {
    v24 = *(v0 + 968);
    v25 = *(v0 + 960);
    v26 = *(v0 + 952);
    v27 = *(v0 + 944);

    (*(v26 + 32))(v25, v24, v27);
    sub_1DB50BEB0();
    v97 = *(v0 + 328);
    v100 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1((v0 + 296), v100);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1DB50EE90;
    v104 = sub_1DB301BC0(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v29._object = 0x80000001DB52AE90;
    v29._countAndFlagsBits = 0xD000000000000017;
    LogMessage.StringInterpolation.appendLiteral(_:)(v29);
    *(v0 + 656) = v27;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 632));
    v94 = *(v26 + 16);
    v94(boxed_opaque_existential_0, v25, v27);
    sub_1DB30C4B8(v0 + 632, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    sub_1DB30C2D8(v0 + 696, v0 + 456, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 488) = 0;
    v31 = v104;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1DB301BC0(0, *(v104 + 2) + 1, 1, v104);
    }

    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
    }

    v34 = *(v0 + 960);
    v35 = *(v0 + 952);
    v36 = *(v0 + 944);
    v90 = *(v0 + 1056);
    v92 = *(v0 + 936);
    *(v31 + 2) = v33 + 1;
    v37 = &v31[40 * v33];
    v38 = *(v0 + 456);
    v39 = *(v0 + 472);
    v37[64] = *(v0 + 488);
    *(v37 + 2) = v38;
    *(v37 + 3) = v39;
    sub_1DB30623C(v0 + 632, &qword_1ECC426B0, &qword_1DB50EEB0);
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v40);
    *(v28 + 32) = v31;
    Logger.error(_:)(v28, v100, v97);

    __swift_destroy_boxed_opaque_existential_0((v0 + 296));
    type metadata accessor for DaemonError(0);
    sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v94(v41, v34, v36);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v35 + 8))(v34, v36);
    v42 = v90;
    v43 = *(v0 + 888);
  }

  else
  {

    *(v0 + 880) = v21;
    v47 = v21;
    if (!swift_dynamicCast())
    {

      sub_1DB50BEB0();
      v66 = *(v0 + 160);
      v102 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v66);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1DB50EE90;
      v106 = sub_1DB301BC0(0, 48, 0, MEMORY[0x1E69E7CC0]);
      v68._countAndFlagsBits = 0xD00000000000002FLL;
      v68._object = 0x80000001DB52AE30;
      LogMessage.StringInterpolation.appendLiteral(_:)(v68);
      swift_getErrorValue();
      v69 = *(v0 + 856);
      v70 = *(v0 + 864);
      *(v0 + 688) = v70;
      v71 = __swift_allocate_boxed_opaque_existential_0((v0 + 664));
      (*(*(v70 - 8) + 16))(v71, v69, v70);
      sub_1DB30C4B8(v0 + 664, v0 + 536, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 376) = 0u;
      *(v0 + 392) = 0u;
      sub_1DB30C2D8(v0 + 536, v0 + 376, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 408) = 0;
      v72 = v106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_1DB301BC0(0, *(v106 + 2) + 1, 1, v106);
      }

      v74 = *(v72 + 2);
      v73 = *(v72 + 3);
      if (v74 >= v73 >> 1)
      {
        v72 = sub_1DB301BC0((v73 > 1), v74 + 1, 1, v72);
      }

      v75 = *(v0 + 1056);
      v76 = *(v0 + 936);
      *(v72 + 2) = v74 + 1;
      v77 = &v72[40 * v74];
      v42 = v75;
      v78 = *(v0 + 376);
      v79 = *(v0 + 392);
      v77[64] = *(v0 + 408);
      *(v77 + 2) = v78;
      *(v77 + 3) = v79;
      sub_1DB30623C(v0 + 664, &qword_1ECC426B0, &qword_1DB50EEB0);
      v80._countAndFlagsBits = 0;
      v80._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v80);
      *(v67 + 32) = v72;
      Logger.error(_:)(v67, v66, v102);

      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      type metadata accessor for DaemonError(0);
      sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
      swift_allocError();
      v82 = v81;
      v83 = v21;
      sub_1DB4F1C64(v21, v82);
      swift_willThrow();

      v84 = v76;
      goto LABEL_28;
    }

    v49 = *(v0 + 96);
    v48 = *(v0 + 104);
    v51 = *(v0 + 112);
    v50 = *(v0 + 120);
    v52 = *(v0 + 128);
    sub_1DB50BEB0();
    v91 = *(v0 + 248);
    v93 = *(v0 + 240);
    __swift_project_boxed_opaque_existential_1((v0 + 216), v93);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1DB50EE90;
    v105 = sub_1DB301BC0(0, 40, 0, MEMORY[0x1E69E7CC0]);
    v54._countAndFlagsBits = 0xD000000000000027;
    v54._object = 0x80000001DB52AE60;
    LogMessage.StringInterpolation.appendLiteral(_:)(v54);
    *(v0 + 592) = &type metadata for DaemonResponseCodableError;
    v55 = swift_allocObject();
    *(v0 + 568) = v55;
    v101 = v49;
    v55[2] = v49;
    v55[3] = v48;
    v55[4] = v51;
    v55[5] = v50;
    v95 = v50;
    v55[6] = v52;
    sub_1DB30C4B8(v0 + 568, v0 + 600, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;

    sub_1DB30C2D8(v0 + 600, v0 + 496, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 528) = 0;
    v56 = v105;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_1DB301BC0(0, *(v105 + 2) + 1, 1, v105);
    }

    v58 = *(v56 + 2);
    v57 = *(v56 + 3);
    if (v58 >= v57 >> 1)
    {
      v56 = sub_1DB301BC0((v57 > 1), v58 + 1, 1, v56);
    }

    *(v56 + 2) = v58 + 1;
    v59 = &v56[40 * v58];
    v60 = *(v0 + 496);
    v61 = *(v0 + 512);
    v59[64] = *(v0 + 528);
    *(v59 + 2) = v60;
    *(v59 + 3) = v61;
    sub_1DB30623C(v0 + 568, &qword_1ECC426B0, &qword_1DB50EEB0);
    v62._countAndFlagsBits = 0;
    v62._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v62);
    *(v53 + 32) = v56;
    Logger.error(_:)(v53, v93, v91);

    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
    v63 = sub_1DB3E3700();
    v42 = *(v0 + 1056);
    v92 = *(v0 + 936);
    if (v63)
    {
      v64 = v63;

      type metadata accessor for DaemonError(0);
      sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
      swift_allocError();
      *v65 = v64;
    }

    else
    {
      type metadata accessor for DaemonError(0);
      sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
      swift_allocError();
      v86 = v85;
      v87 = swift_allocError();
      *v88 = v101;
      v88[1] = v48;
      v88[2] = v51;
      v88[3] = v95;
      v88[4] = v52;
      *v86 = v87;
    }

    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v43 = *(v0 + 880);
  }

  v84 = v92;
LABEL_28:
  sub_1DB3632DC(v84, "DaemonSession.send", 18, 2, v42);

  v46 = *(v0 + 8);
LABEL_29:

  return v46();
}

uint64_t sub_1DB362898()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 1096);
  *(v0 + 888) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 968);
    v4 = *(v0 + 960);
    v5 = *(v0 + 952);
    v6 = *(v0 + 944);

    (*(v5 + 32))(v4, v3, v6);
    sub_1DB50BEB0();
    v73 = *(v0 + 328);
    v74 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1((v0 + 296), v74);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DB50EE90;
    v77 = sub_1DB301BC0(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v8._object = 0x80000001DB52AE90;
    v8._countAndFlagsBits = 0xD000000000000017;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    *(v0 + 656) = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 632));
    v69 = *(v5 + 16);
    v69(boxed_opaque_existential_0, v4, v6);
    sub_1DB30C4B8(v0 + 632, v0 + 696, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    sub_1DB30C2D8(v0 + 696, v0 + 456, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v0 + 488) = 0;
    v10 = v77;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1DB301BC0(0, *(v77 + 2) + 1, 1, v77);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1DB301BC0((v11 > 1), v12 + 1, 1, v10);
    }

    v13 = *(v0 + 960);
    v14 = *(v0 + 952);
    v15 = *(v0 + 944);
    v67 = *(v0 + 1056);
    v68 = *(v0 + 936);
    *(v10 + 2) = v12 + 1;
    v16 = &v10[40 * v12];
    v17 = *(v0 + 456);
    v18 = *(v0 + 472);
    v16[64] = *(v0 + 488);
    *(v16 + 2) = v17;
    *(v16 + 3) = v18;
    sub_1DB30623C(v0 + 632, &qword_1ECC426B0, &qword_1DB50EEB0);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(v7 + 32) = v10;
    Logger.error(_:)(v7, v74, v73);

    __swift_destroy_boxed_opaque_existential_0((v0 + 296));
    type metadata accessor for DaemonError(0);
    sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    swift_allocError();
    v69(v20, v13, v15);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v21 = v15;
    v22 = v67;
    (*(v14 + 8))(v13, v21);

    v23 = v68;
  }

  else
  {

    *(v0 + 880) = v1;
    v24 = v1;
    if (swift_dynamicCast())
    {
      v75 = (v0 + 880);

      v26 = *(v0 + 96);
      v25 = *(v0 + 104);
      v28 = *(v0 + 112);
      v27 = *(v0 + 120);
      v29 = *(v0 + 128);
      sub_1DB50BEB0();
      v70 = *(v0 + 248);
      v71 = *(v0 + 240);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v71);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1DB50EE90;
      v78 = sub_1DB301BC0(0, 40, 0, MEMORY[0x1E69E7CC0]);
      v31._countAndFlagsBits = 0xD000000000000027;
      v31._object = 0x80000001DB52AE60;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      *(v0 + 592) = &type metadata for DaemonResponseCodableError;
      v32 = swift_allocObject();
      *(v0 + 568) = v32;
      v32[2] = v26;
      v32[3] = v25;
      v32[4] = v28;
      v32[5] = v27;
      v32[6] = v29;
      sub_1DB30C4B8(v0 + 568, v0 + 600, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0u;

      sub_1DB30C2D8(v0 + 600, v0 + 496, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 528) = 0;
      v33 = v78;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1DB301BC0(0, *(v78 + 2) + 1, 1, v78);
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = *(v0 + 496);
      v38 = *(v0 + 512);
      v36[64] = *(v0 + 528);
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      sub_1DB30623C(v0 + 568, &qword_1ECC426B0, &qword_1DB50EEB0);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v30 + 32) = v33;
      Logger.error(_:)(v30, v71, v70);

      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
      v40 = sub_1DB3E3700();
      v22 = *(v0 + 1056);
      v41 = *(v0 + 936);
      if (v40)
      {
        v42 = v40;

        type metadata accessor for DaemonError(0);
        sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
        swift_allocError();
        *v43 = v42;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v23 = v41;
      }

      else
      {
        type metadata accessor for DaemonError(0);
        sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
        swift_allocError();
        v72 = v41;
        v62 = v61;
        sub_1DB36562C();
        v63 = swift_allocError();
        *v64 = v26;
        v64[1] = v25;
        v64[2] = v28;
        v64[3] = v27;
        v64[4] = v29;
        *v62 = v63;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v23 = v72;
      }
    }

    else
    {

      sub_1DB50BEB0();
      v44 = *(v0 + 160);
      v76 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v44);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1DB50EE90;
      v79 = sub_1DB301BC0(0, 48, 0, MEMORY[0x1E69E7CC0]);
      v46._countAndFlagsBits = 0xD00000000000002FLL;
      v46._object = 0x80000001DB52AE30;
      LogMessage.StringInterpolation.appendLiteral(_:)(v46);
      swift_getErrorValue();
      v47 = *(v0 + 856);
      v48 = *(v0 + 864);
      *(v0 + 688) = v48;
      v49 = __swift_allocate_boxed_opaque_existential_0((v0 + 664));
      (*(*(v48 - 8) + 16))(v49, v47, v48);
      sub_1DB30C4B8(v0 + 664, v0 + 536, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 376) = 0u;
      *(v0 + 392) = 0u;
      sub_1DB30C2D8(v0 + 536, v0 + 376, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v0 + 408) = 0;
      v50 = v79;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_1DB301BC0(0, *(v79 + 2) + 1, 1, v79);
      }

      v52 = *(v50 + 2);
      v51 = *(v50 + 3);
      if (v52 >= v51 >> 1)
      {
        v50 = sub_1DB301BC0((v51 > 1), v52 + 1, 1, v50);
      }

      v22 = *(v0 + 1056);
      v53 = *(v0 + 936);
      *(v50 + 2) = v52 + 1;
      v54 = &v50[40 * v52];
      v55 = *(v0 + 376);
      v56 = *(v0 + 392);
      v54[64] = *(v0 + 408);
      *(v54 + 2) = v55;
      *(v54 + 3) = v56;
      sub_1DB30623C(v0 + 664, &qword_1ECC426B0, &qword_1DB50EEB0);
      v57._countAndFlagsBits = 0;
      v57._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v57);
      *(v45 + 32) = v50;
      Logger.error(_:)(v45, v44, v76);

      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      type metadata accessor for DaemonError(0);
      sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
      swift_allocError();
      v59 = v58;
      v60 = v1;
      sub_1DB4F1C64(v1, v59);
      swift_willThrow();

      v23 = v53;
    }
  }

  sub_1DB3632DC(v23, "DaemonSession.send", 18, 2, v22);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1DB3632DC(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_1DB50A280();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1DB50A250();
  sub_1DB50A2A0();
  v21 = sub_1DB50B060();
  result = sub_1DB50B0E0();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_1DB50A2D0();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x1E1288220](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1DB363584(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a4;
  v60 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v59 = &v45 - v10;
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = a6;
  v13 = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for DaemonResponse(255, v11, AssociatedConformanceWitness, v13);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v55 = v14;
  v62 = sub_1DB50AB10();
  v15 = *(v62 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v45 - v20;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = swift_allocObject();
  v61 = v22;
  *(v22 + 16) = 0;
  v45 = v22 + 16;
  *(v22 + 20) = 0;
  v23 = sub_1DB50ABA0();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_1DB30BE90(a3, &v63);
  v24 = *(v15 + 16);
  v50 = v15 + 16;
  v53 = v24;
  v52 = v21;
  v24(v18, v60, v62);
  v25 = sub_1DB365680(&qword_1ECC43910, type metadata accessor for DaemonSessionImplementation, &protocol conformance descriptor for DaemonSessionImplementation);
  v26 = *(v15 + 80);
  v27 = swift_allocObject();
  v49 = v16;
  v28 = v27;
  v27[2] = a2;
  v27[3] = v25;
  v46 = a5;
  v27[4] = a5;
  v29 = v54;
  v27[5] = v54;
  v27[6] = a2;
  v48 = sub_1DB3659D8;
  v30 = v61;
  v27[7] = sub_1DB3659D8;
  v27[8] = v30;
  sub_1DB2FEA0C(&v63, (v27 + 9));
  v31 = *(v15 + 32);
  v31(v28 + ((v26 + 112) & ~v26), v18, v62);
  swift_retain_n();
  swift_retain_n();
  v32 = sub_1DB388F14(0, 0, v52, &unk_1DB512580, v28);
  v52 = a3[3];
  v47 = a3[4];
  v51 = __swift_project_boxed_opaque_existential_1(a3, v52);
  v33 = v46;
  (*(v29 + 88))(v46, v29);
  v34 = v62;
  v53(v18, v60, v62);
  v35 = (v26 + 56) & ~v26;
  v36 = swift_allocObject();
  v36[2] = v33;
  v36[3] = v29;
  v36[4] = v48;
  v36[5] = v30;
  v36[6] = v32;
  v31(v36 + v35, v18, v34);
  v37 = v47;
  v38 = *(v47 + 8);
  v39 = AssociatedTypeWitness;
  v40 = swift_getAssociatedConformanceWitness();

  v41 = v55;
  WitnessTable = swift_getWitnessTable();
  v43 = v59;
  v38(v59, sub_1DB365BA8, v36, v39, v41, v40, WitnessTable, v52, v37);
  (*(v57 + 8))(v43, v39);
}

uint64_t sub_1DB363F04(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 20);
  if ((v2 & 1) == 0)
  {
    *(a1 + 20) = 1;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v2 ^ 1u;
}

uint64_t sub_1DB363F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[62] = v13;
  v8[63] = v14;
  v8[60] = a7;
  v8[61] = a8;
  v8[58] = a5;
  v8[59] = a6;
  v8[57] = a4;
  v10 = sub_1DB50B4F0();
  v8[64] = v10;
  v8[65] = *(v10 - 8);
  v8[66] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB364020, a4, 0);
}

uint64_t sub_1DB364020()
{
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 456);
  *(v0 + 536) = qword_1ECC46748;
  sub_1DB50BEB0();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v19 = sub_1DB301BC0(0, 49, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001DB52B090;
  v5._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = *(v1 + 120);
  *(v0 + 552) = v6;
  *(v0 + 280) = MEMORY[0x1E69E63B0];
  *(v0 + 256) = v6;
  sub_1DB30C4B8(v0 + 256, v0 + 288, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_1DB30C2D8(v0 + 288, v0 + 176, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 208) = 0;
  v7 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[40 * v9];
  v11 = *(v0 + 176);
  v12 = *(v0 + 192);
  v10[64] = *(v0 + 208);
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  sub_1DB30623C(v0 + 256, &qword_1ECC426B0, &qword_1DB50EEB0);
  v13._countAndFlagsBits = 0x73646E6F63657320;
  v13._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v4 + 32) = v7;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v14 = sub_1DB50BE50();
  v16 = v15;
  sub_1DB50BC50();
  v17 = swift_task_alloc();
  *(v0 + 560) = v17;
  *v17 = v0;
  v17[1] = sub_1DB364324;

  return sub_1DB487C44(v14, v16, 0, 0, 1);
}

uint64_t sub_1DB364324()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *(*v1 + 520);
  v5 = *(*v1 + 512);
  *(*v1 + 568) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 456);
  if (v0)
  {
    v7 = sub_1DB364990;
  }

  else
  {
    v7 = sub_1DB3644AC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DB3644AC()
{
  v1 = *(v0 + 552);
  sub_1DB50BEB0();
  v2 = *(v0 + 120);
  v29 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50EE90;
  v30 = sub_1DB301BC0(0, 80, 0, MEMORY[0x1E69E7CC0]);
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001DB52B110;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  *(v0 + 376) = MEMORY[0x1E69E63B0];
  *(v0 + 352) = v1;
  sub_1DB30C4B8(v0 + 352, v0 + 384, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1DB30C2D8(v0 + 384, v0 + 216, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v0 + 248) = 0;
  v5 = v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1DB301BC0(0, *(v30 + 2) + 1, 1, v30);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1DB301BC0((v6 > 1), v7 + 1, 1, v5);
  }

  v8 = *(v0 + 464);
  *(v5 + 2) = v7 + 1;
  v9 = &v5[40 * v7];
  v10 = *(v0 + 216);
  v11 = *(v0 + 232);
  v9[64] = *(v0 + 248);
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  sub_1DB30623C(v0 + 352, &qword_1ECC426B0, &qword_1DB50EEB0);
  v12._object = 0x80000001DB52B140;
  v12._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v3 + 32) = v5;
  Logger.error(_:)(v3, v2, v29);

  v13 = __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  if (v8(v13))
  {
    v14 = *(v0 + 552);
    v15 = *(v0 + 480);
    sub_1DB50BEB0();
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v16);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1DB50EE90;
    *(v0 + 440) = MEMORY[0x1E69E6158];
    *(v0 + 416) = 0xD000000000000023;
    *(v0 + 424) = 0x80000001DB52B170;
    *(v19 + 48) = 0u;
    *(v19 + 32) = 0u;
    sub_1DB30C2D8(v0 + 416, v19 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v19 + 64) = 0;
    *(v18 + 32) = v19;
    Logger.info(_:)(v18, v16, v17);

    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    v20 = v15[3];
    v21 = v15[4];
    __swift_project_boxed_opaque_existential_1(v15, v20);
    (*(v21 + 16))(0xD000000000000024, 0x80000001DB52B1A0, v20, v21);
    type metadata accessor for DaemonError(0);
    sub_1DB365680(&qword_1ECC43900, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);
    v22 = swift_allocError();
    *v23 = v14;
    swift_storeEnumTagMultiPayload();
    *(v0 + 448) = v22;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = swift_getAssociatedConformanceWitness();
    type metadata accessor for DaemonResponse(255, AssociatedTypeWitness, AssociatedConformanceWitness, v26);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
    sub_1DB50AB10();
    sub_1DB50AAF0();
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1DB364990()
{
  v1 = v0[71];
  sub_1DB50BEB0();
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v0[43] = MEMORY[0x1E69E6158];
  v0[40] = 0xD00000000000004BLL;
  v0[41] = 0x80000001DB52B0C0;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  sub_1DB30C2D8((v0 + 40), v5 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v5 + 64) = 0;
  *(v4 + 32) = v5;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB364B04(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a5;
  v47 = a4;
  v50 = a3;
  v51 = a2;
  v49 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v45 = type metadata accessor for DaemonResponse(255, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v43 = sub_1DB50BDA0();
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v11 = (&v42 - v10);
  if (qword_1ECC42298 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v12 = v62;
  v13 = v63;
  __swift_project_boxed_opaque_existential_1(v61, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v14 = swift_allocObject();
  v52 = xmmword_1DB50EE90;
  *(v14 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v15 = swift_allocObject();
  *(v15 + 16) = v52;
  *(&v55 + 1) = MEMORY[0x1E69E6158];
  *&v54 = 0xD00000000000002DLL;
  *(&v54 + 1) = 0x80000001DB52AFE0;
  *(v15 + 48) = 0u;
  *(v15 + 32) = 0u;
  sub_1DB30C2D8(&v54, v15 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
  *(v15 + 64) = 0;
  *(v14 + 32) = v15;
  Logger.debug(_:)(v14, v12, v13);

  v16 = __swift_destroy_boxed_opaque_existential_0(v61);
  if ((v51(v16) & 1) == 0)
  {
    sub_1DB50BEB0();
    v37 = v62;
    v38 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v39 = swift_allocObject();
    *(v39 + 16) = v52;
    v40 = swift_allocObject();
    *(v40 + 16) = v52;
    *(&v55 + 1) = MEMORY[0x1E69E6158];
    *&v54 = 0xD000000000000044;
    *(&v54 + 1) = 0x80000001DB52B010;
    *(v40 + 48) = 0u;
    *(v40 + 32) = 0u;
    sub_1DB30C2D8(&v54, v40 + 32, &qword_1ECC426B0, &qword_1DB50EEB0);
    *(v40 + 64) = 0;
    *(v39 + 32) = v40;
    Logger.debug(_:)(v39, v37, v38);
LABEL_11:

    return __swift_destroy_boxed_opaque_existential_0(v61);
  }

  sub_1DB50AC60();
  v17 = sub_1DB50AB10();
  v18 = v49;
  sub_1DB36519C(v49, v17);
  v19 = v46;
  v20 = v18;
  v21 = v43;
  (*(v46 + 16))(v11, v20, v43);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v11;
    sub_1DB50BEB0();
    v23 = v62;
    v24 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v25 = swift_allocObject();
    *(v25 + 16) = v52;
    v60 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v26._object = 0x80000001DB52B060;
    v26._countAndFlagsBits = 0xD00000000000002CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    swift_getErrorValue();
    v27 = v57;
    v28 = v58;
    v59[3] = v58;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v59);
    (*(*(v28 - 8) + 16))(boxed_opaque_existential_0, v27, v28);
    sub_1DB30C4B8(v59, v53, &qword_1ECC426B0, &qword_1DB50EEB0);
    v54 = 0u;
    v55 = 0u;
    sub_1DB30C2D8(v53, &v54, &qword_1ECC426B0, &qword_1DB50EEB0);
    v56 = 0;
    v30 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1DB301BC0(0, *(v30 + 2) + 1, 1, v30);
      v60 = v30;
    }

    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    if (v32 >= v31 >> 1)
    {
      v30 = sub_1DB301BC0((v31 > 1), v32 + 1, 1, v30);
    }

    *(v30 + 2) = v32 + 1;
    v33 = &v30[40 * v32];
    v34 = v54;
    v35 = v55;
    v33[64] = v56;
    *(v33 + 2) = v34;
    *(v33 + 3) = v35;
    v60 = v30;
    sub_1DB30623C(v59, &qword_1ECC426B0, &qword_1DB50EEB0);
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v36);
    *(v25 + 32) = v60;
    Logger.error(_:)(v25, v23, v24);

    goto LABEL_11;
  }

  return (*(v19 + 8))(v11, v21);
}

uint64_t sub_1DB36519C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DB50BDA0();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a1, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v16, v8);
    return sub_1DB50AAF0();
  }

  else
  {
    (*(v4 + 32))(v6, v16, v3);
    return sub_1DB50AB00();
  }
}

uint64_t DaemonSessionImplementation.deinit()
{

  v1 = OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_signposter;
  v2 = sub_1DB50A270();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1DB30623C(v0 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_sessionIfValid, &qword_1ECC43918, &qword_1DB512418);

  sub_1DB365724(*(v0 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory), *(v0 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory + 8));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t DaemonSessionImplementation.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_signposter;
  v2 = sub_1DB50A270();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1DB30623C(v0 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_sessionIfValid, &qword_1ECC43918, &qword_1DB512418);

  sub_1DB365724(*(v0 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory), *(v0 + OBJC_IVAR____TtC7JetCore27DaemonSessionImplementation_xpcSessionProviderFactory + 8));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DB365568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DB306AF4;

  return DaemonSessionImplementation.send<A>(_:)(a1, a2, a3, a4);
}

unint64_t sub_1DB36562C()
{
  result = qword_1ECC43908;
  if (!qword_1ECC43908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43908);
  }

  return result;
}

uint64_t sub_1DB365680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for DaemonSessionImplementation(uint64_t a1)
{
  result = qword_1ECC43920;
  if (!qword_1ECC43920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB365724(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t dispatch thunk of DaemonSession.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DB306AF4;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DB3658D4(uint64_t a1)
{
  result = sub_1DB50A270();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB3659E0(uint64_t a1)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  type metadata accessor for DaemonResponse(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v7 = *(sub_1DB50AB10() - 8);
  v8 = (*(v7 + 80) + 112) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[6];
  v12 = v1[7];
  v13 = v1[8];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1DB306AF4;

  return sub_1DB363F48(a1, v9, v10, v11, v12, v13, (v1 + 9), v1 + v8);
}

uint64_t sub_1DB365BA8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedConformanceWitness();
  type metadata accessor for DaemonResponse(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v8 = *(sub_1DB50AB10() - 8);
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1 + ((*(v8 + 80) + 56) & ~*(v8 + 80));

  return sub_1DB364B04(a1, v9, v10, v11, v12, v3, v4);
}

Swift::String __swiftcall CryptoAlgorithm.makeDigest(fromContentsOf:)(Swift::String fromContentsOf)
{
  v9[2] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](fromContentsOf._countAndFlagsBits);
  sub_1DB365DAC(&v9[-1] - v1, v1, v2, v3, v4, v9);
  v5 = v9[0];
  v6 = v9[1];
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_1DB365DAC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v6 = a2;
  v7 = a1;
  result = sub_1DB366494(a3, a4, a5 & 1, a1, a2);
  if (v6 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    result = MEMORY[0x1E1285C10](2 * v6);
    if (v7 && v6)
    {
      v10 = MEMORY[0x1E69E7508];
      v11 = MEMORY[0x1E69E7558];
      do
      {
        v12 = *v7++;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1DB50EE90;
        *(v13 + 56) = v10;
        *(v13 + 64) = v11;
        *(v13 + 32) = v12;
        v14 = sub_1DB50A680();
        MEMORY[0x1E1285C70](v14);

        --v6;
      }

      while (v6);
    }

    *a6 = 0;
    a6[1] = 0xE000000000000000;
  }

  return result;
}

size_t sub_1DB365ED8(const char *a1, char a2, uint64_t a3)
{
  result = strlen(a1);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(result))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = MEMORY[0x1E69E9498];
  if (a2)
  {
    v7 = MEMORY[0x1E69E94C0];
  }

  return v7(a1, result, a3);
}

uint64_t CryptoAlgorithm.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB365FEC()
{
  result = qword_1ECC43940;
  if (!qword_1ECC43940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43940);
  }

  return result;
}

JetCore::LogMessage::StringInterpolation __swiftcall LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)(JetCore::LogMessage::StringInterpolation literalCapacity, Swift::Int interpolationCount)
{
  v3 = v2;
  if (__OFADD__(literalCapacity.components._rawValue, interpolationCount))
  {
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    v2->components._rawValue = MEMORY[0x1E69E7CC0];
    literalCapacity.components._rawValue = sub_1DB301BC0(0, (literalCapacity.components._rawValue + interpolationCount) & ~((literalCapacity.components._rawValue + interpolationCount) >> 63), 0, v4);
    v3->components._rawValue = literalCapacity.components._rawValue;
  }

  return literalCapacity;
}

Swift::Void __swiftcall LogMessage.StringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  v2 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v2 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v11 = MEMORY[0x1E69E6158];
    v10 = a1;
    v12 = 0u;
    v13 = 0u;

    sub_1DB301D4C(&v10, &v12);
    v14 = 0;
    v3 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_1DB301BC0(0, *(v3 + 2) + 1, 1, v3);
      *v1 = v3;
    }

    v6 = *(v3 + 2);
    v5 = *(v3 + 3);
    if (v6 >= v5 >> 1)
    {
      v3 = sub_1DB301BC0((v5 > 1), v6 + 1, 1, v3);
    }

    *(v3 + 2) = v6 + 1;
    v7 = &v3[40 * v6];
    v8 = v12;
    v9 = v13;
    v7[64] = v14;
    *(v7 + 2) = v8;
    *(v7 + 3) = v9;
    *v1 = v3;
  }
}

JetCore::LogMessage __swiftcall LogMessage.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v7[3] = MEMORY[0x1E69E6158];
  v7[0] = countAndFlagsBits;
  v7[1] = object;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  result.components._rawValue = sub_1DB301D4C(v7, v5 + 32);
  *(v5 + 64) = 0;
  *v4 = v5;
  return result;
}

__n128 sub_1DB366250(uint64_t a1, char a2)
{
  sub_1DB301CDC(a1, v11);
  v12 = 0u;
  v13 = 0u;
  sub_1DB301D4C(v11, &v12);
  v14 = a2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1DB301BC0(0, *(v4 + 2) + 1, 1, v4);
    *v2 = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1DB301BC0((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[40 * v7];
  result = v12;
  v10 = v13;
  v8[64] = v14;
  *(v8 + 2) = result;
  *(v8 + 3) = v10;
  *v2 = v4;
  return result;
}

__n128 LogMessage.StringInterpolation.appendInterpolation(identity:)(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectRetain();
  sub_1DB50A600();
  sub_1DB34FEF0();
  v3 = sub_1DB50A840();
  v5 = v4;
  swift_getObjectType();
  v16.n128_u64[0] = sub_1DB50BEE0();
  v16.n128_u64[1] = v6;
  MEMORY[0x1E1285C70](7876666, 0xE300000000000000);
  MEMORY[0x1E1285C70](v3, v5);

  v15 = MEMORY[0x1E69E6158];
  swift_unknownObjectRelease();
  v14 = v16;
  v16 = 0u;
  v17 = 0u;
  sub_1DB301D4C(&v14, &v16);
  v18 = 0;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1DB301BC0(0, *(v7 + 2) + 1, 1, v7);
    *v2 = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[40 * v10];
  result = v16;
  v13 = v17;
  v11[64] = v18;
  *(v11 + 2) = result;
  *(v11 + 3) = v13;
  *v2 = v7;
  return result;
}

size_t sub_1DB366494(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1DB50B310();
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = a2 & 0xFFFFFFFFFFFFFFFLL;
      if (a3)
      {
        v7 = MEMORY[0x1E69E94C0];
      }

      else
      {
        v7 = MEMORY[0x1E69E9498];
      }

      result = strlen((v6 + 32));
      if ((result & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(result))
        {
          return v7(v6 + 32, result, a4);
        }

        goto LABEL_20;
      }

      goto LABEL_18;
    }

    return sub_1DB50B310();
  }

  *__s = a1;
  v11 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a3)
  {
    v9 = MEMORY[0x1E69E94C0];
  }

  else
  {
    v9 = MEMORY[0x1E69E9498];
  }

  result = strlen(__s);
  if ((result & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(result))
    {
      return v9(__s, result, a4);
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t LogMessage.ValueTreatment.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB366658@<X0>(uint64_t a2@<X8>)
{
  sub_1DB50A600();
  sub_1DB34FEF0();
  v3 = sub_1DB50A840();
  v5 = v4;
  swift_getObjectType();
  v8[0] = sub_1DB50BEE0();
  v8[1] = v6;
  MEMORY[0x1E1285C70](7876666, 0xE300000000000000);
  MEMORY[0x1E1285C70](v3, v5);

  v8[3] = MEMORY[0x1E69E6158];
  swift_unknownObjectRelease();
  *a2 = 0u;
  *(a2 + 16) = 0u;
  result = sub_1DB301D4C(v8, a2);
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_1DB366738(char a1)
{
  v2 = v1;
  v4 = sub_1DB509CA0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30[-v9];
  sub_1DB301CDC(v2, &v34);
  if (!v35)
  {
    sub_1DB301DBC(&v34);
    return 0x296C6C756E28;
  }

  sub_1DB30C200(&v34, &v36);
  BYTE1(v34) = *(v2 + 32);
  sub_1DB300B14(&v36, &v34 + 8);
  if ((a1 & 1) == 0)
  {
LABEL_13:
    v22 = __swift_project_boxed_opaque_existential_1(&v36, v37);
    v23 = MEMORY[0x1EEE9AC00](v22);
    (*(v25 + 16))(&v30[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)], v23);
    v26 = sub_1DB50A6C0();
    __swift_destroy_boxed_opaque_existential_0(&v34 + 1);
    __swift_destroy_boxed_opaque_existential_0(&v36);
    return v26;
  }

  if (!BYTE1(v34))
  {
    if (swift_dynamicCast())
    {
      (*(v5 + 32))(v7, v10, v4);
      v12 = sub_1DB509BC0();
      v13 = AMSLogableURL();

      v14 = sub_1DB50A650();
      (*(v5 + 8))(v7, v4);
      __swift_destroy_boxed_opaque_existential_0(&v34 + 1);
      __swift_destroy_boxed_opaque_existential_0(&v36);
      return v14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      v21 = v31;
      sub_1DB300B14(&v36, &v32);
      if (!swift_dynamicCast())
      {
        v27 = sub_1DB509B10();
        v28 = AMSLogableError();

        v29 = sub_1DB50A650();
        __swift_destroy_boxed_opaque_existential_0(&v34 + 1);
        __swift_destroy_boxed_opaque_existential_0(&v36);
        return v29;
      }
    }

    goto LABEL_13;
  }

  if (BYTE1(v34) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0(&v34 + 1);
    __swift_destroy_boxed_opaque_existential_0(&v36);
    return 0x657461766972705BLL;
  }

  else
  {
    sub_1DB30C200((&v34 + 8), &v32);
    v30[0] = 1;
    v15 = __swift_project_boxed_opaque_existential_1(&v32, v33);
    v16 = MEMORY[0x1EEE9AC00](v15);
    (*(v18 + 16))(&v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], v16);
    v19._countAndFlagsBits = sub_1DB50A6C0();
    countAndFlagsBits = CryptoAlgorithm.makeDigest(fromContentsOf:)(v19)._countAndFlagsBits;

    __swift_destroy_boxed_opaque_existential_0(&v32);
    __swift_destroy_boxed_opaque_existential_0(&v36);
    return countAndFlagsBits;
  }
}

BOOL static LogMessage.isRedactionEnabled.getter()
{
  if (qword_1EE30EDD8 != -1)
  {
    swift_once();
  }

  v0 = off_1EE30EDE0;
  os_unfair_lock_lock(off_1EE30EDE0 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v0[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v0 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
  }

  return (os_unfair_lock_opaque_low & 1) == 0;
}

uint64_t sub_1DB366C78@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  sub_1DB301CDC(a1, v8);
  *(v6 + 48) = 0u;
  *(v6 + 32) = 0u;
  result = sub_1DB301D4C(v8, v6 + 32);
  *(v6 + 64) = a2;
  *a3 = v6;
  return result;
}

uint64_t static LogMessage.identity(_:)@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50EE90;
  swift_unknownObjectRetain();
  result = sub_1DB366658(v3 + 32);
  *a2 = v3;
  return result;
}

uint64_t static LogMessage.describe(contentsOf:withRedaction:separator:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(swift_allocObject() + 16) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
  sub_1DB314864();
  v4 = sub_1DB50A5E0();

  return v4;
}

uint64_t sub_1DB366E50@<X0>(char a2@<W1>, uint64_t *a3@<X8>)
{
  *(swift_allocObject() + 16) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43948, &qword_1DB512610);
  sub_1DB367E44();
  v4 = sub_1DB50A5E0();
  v6 = v5;

  *a3 = v4;
  a3[1] = v6;
  return result;
}

char *static LogMessage.values(of:withRedaction:)(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v87 = *MEMORY[0x1E69E9840];
  v4 = sub_1DB509CA0();
  MEMORY[0x1EEE9AC00](v4);
  v66 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v70 = v61 - v8;
  v9 = 0;
  v61[0] = 0;
  v10 = *(a1 + 16);
  v11 = a1 + 32;
  v65 = (v12 + 32);
  v64 = (v12 + 8);
  v13 = MEMORY[0x1E69E7CC0];
  v14 = xmmword_1DB50EE90;
  v71 = v2;
LABEL_2:
  while (2)
  {
    if (v10 != v9)
    {
      if (v9 >= v10)
      {
        __break(1u);
      }

      else
      {
        v15 = v9 + 1;
        if (!__OFADD__(v9, 1))
        {
          v16 = *(v11 + 8 * v9);
          v17 = *(v16 + 16);
          ++v9;
          if (!v17)
          {
            continue;
          }

          v74 = v14;
          v62 = v11;
          v63 = v10;
          v69 = v7;
          v9 = v15;
          v18 = v16 + 32;
          v61[1] = v16;

          v19 = 0;
          v68 = v17;
          v67 = v18;
          while (1)
          {
            sub_1DB367D88(v18 + 40 * v19, v85);
            sub_1DB301CDC(v85, &v83);
            if (v84)
            {
              sub_1DB30C200(&v83, &v81);
              if ((v2 & 1) == 0 || !v86)
              {
                sub_1DB300B14(&v81, &v83);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v13 = sub_1DB303014(0, *(v13 + 2) + 1, 1, v13);
                }

                v25 = *(v13 + 2);
                v24 = *(v13 + 3);
                if (v25 >= v24 >> 1)
                {
                  v13 = sub_1DB303014((v24 > 1), v25 + 1, 1, v13);
                }

                __swift_destroy_boxed_opaque_existential_0(&v81);
                sub_1DB367DC0(v85);
                *(v13 + 2) = v25 + 1;
                v20 = &v13[32 * v25];
                v21 = &v83;
                goto LABEL_8;
              }

              __swift_destroy_boxed_opaque_existential_0(&v81);
            }

            else
            {
              sub_1DB301DBC(&v83);
            }

            sub_1DB301CDC(v85, &v81);
            if (v82)
            {
              sub_1DB30C200(&v81, &v83);
              BYTE1(v81) = v86;
              sub_1DB300B14(&v83, &v81 + 8);
              if (!BYTE1(v81))
              {
                v26 = v69;
                if (swift_dynamicCast())
                {
                  v27 = v66;
                  (*v65)(v66, v70, v26);
                  v28 = sub_1DB509BC0();
                  v2 = AMSLogableURL();

                  v23 = sub_1DB50A650();
                  v22 = v29;

                  LOBYTE(v2) = v71;
                  (*v64)(v27, v26);
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
                  if (swift_dynamicCast())
                  {
                    v41 = v75;
                    sub_1DB300B14(&v83, &v79);
                    if (!swift_dynamicCast())
                    {
                      v55 = sub_1DB509B10();
                      v2 = AMSLogableError();

                      v23 = sub_1DB50A650();
                      v22 = v56;

                      LOBYTE(v2) = v71;
                      goto LABEL_44;
                    }
                  }

                  v42 = __swift_project_boxed_opaque_existential_1(&v83, v84);
                  v43 = MEMORY[0x1EEE9AC00](v42);
                  (*(v45 + 16))(v61 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0), v43);
                  v23 = sub_1DB50A6C0();
                  v22 = v46;
                }

LABEL_44:
                __swift_destroy_boxed_opaque_existential_0(&v81 + 1);
                __swift_destroy_boxed_opaque_existential_0(&v83);
                goto LABEL_45;
              }

              if (BYTE1(v81) != 1)
              {
                sub_1DB30C200((&v81 + 8), &v79);
                v30 = __swift_project_boxed_opaque_existential_1(&v79, v80);
                v31 = MEMORY[0x1EEE9AC00](v30);
                (*(v33 + 16))(v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
                v34 = sub_1DB50A6C0();
                v36 = v35;
                MEMORY[0x1EEE9AC00](v34);
                LOBYTE(v61[-4]) = 1;
                v61[-3] = md;
                v61[-2] = 64;
                v73 = v13;
                v72 = v36;
                if ((v36 & 0x1000000000000000) != 0)
                {
                  goto LABEL_49;
                }

                if ((v36 & 0x2000000000000000) != 0)
                {
                  __s = v37;
                  v77 = v36 & 0xFFFFFFFFFFFFFFLL;
                  v47 = strlen(&__s);
                  if ((v47 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_54;
                  }

                  v39 = v47;
                  if (HIDWORD(v47))
                  {
                    goto LABEL_55;
                  }

                  p_s = &__s;
LABEL_39:
                  CC_SHA512(p_s, v39, md);
                }

                else
                {
                  if ((v37 & 0x1000000000000000) != 0)
                  {
                    v38 = strlen(((v36 & 0xFFFFFFFFFFFFFFFLL) + 32));
                    if ((v38 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_56;
                    }

                    v39 = v38;
                    if (HIDWORD(v38))
                    {
                      goto LABEL_57;
                    }

                    p_s = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    goto LABEL_39;
                  }

LABEL_49:
                  v59 = v61[0];
                  sub_1DB50B310();
                  v61[0] = v59;
                }

                __s = 0;
                v77 = 0xE000000000000000;
                MEMORY[0x1E1285C10](128);
                v48 = 0;
                v49 = MEMORY[0x1E69E7508];
                v50 = MEMORY[0x1E69E7558];
                do
                {
                  v51 = v48 + 1;
                  v52 = md[v48];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
                  v53 = swift_allocObject();
                  *(v53 + 16) = v74;
                  *(v53 + 56) = v49;
                  *(v53 + 64) = v50;
                  *(v53 + 32) = v52;
                  v54 = sub_1DB50A680();
                  MEMORY[0x1E1285C70](v54);

                  v48 = v51;
                }

                while (v51 != 64);
                v23 = __s;
                v22 = v77;

                __swift_destroy_boxed_opaque_existential_0(&v79);
                __swift_destroy_boxed_opaque_existential_0(&v83);
                LOBYTE(v2) = v71;
                v13 = v73;
                v17 = v68;
                v18 = v67;
                goto LABEL_45;
              }

              __swift_destroy_boxed_opaque_existential_0(&v81 + 1);
              __swift_destroy_boxed_opaque_existential_0(&v83);
              v22 = 0xE90000000000005DLL;
              v23 = 0x657461766972705BLL;
            }

            else
            {
              sub_1DB301DBC(&v81);
              v22 = 0xE600000000000000;
              v23 = 0x296C6C756E28;
            }

LABEL_45:
            v82 = MEMORY[0x1E69E6158];
            *&v81 = v23;
            *(&v81 + 1) = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_1DB303014(0, *(v13 + 2) + 1, 1, v13);
            }

            v58 = *(v13 + 2);
            v57 = *(v13 + 3);
            if (v58 >= v57 >> 1)
            {
              v13 = sub_1DB303014((v57 > 1), v58 + 1, 1, v13);
            }

            sub_1DB367DC0(v85);
            *(v13 + 2) = v58 + 1;
            v20 = &v13[32 * v58];
            v21 = &v81;
LABEL_8:
            sub_1DB30C200(v21, v20 + 2);
            if (++v19 == v17)
            {

              v7 = v69;
              v10 = v63;
              v11 = v62;
              v14 = v74;
              goto LABEL_2;
            }
          }
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
    }

    return v13;
  }
}

char *sub_1DB36789C@<X0>(char *result@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    *a3 = MEMORY[0x1E69E7CC0];
    result = sub_1DB301BC0(0, &result[a2] & ~(&result[a2] >> 63), 0, v4);
    *a3 = result;
  }

  return result;
}

uint64_t LogMessage.description.getter()
{
  if (qword_1EE30EDD8 != -1)
  {
    swift_once();
  }

  v0 = off_1EE30EDE0;
  os_unfair_lock_lock(off_1EE30EDE0 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v0[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v0 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
  }

  *(swift_allocObject() + 16) = (os_unfair_lock_opaque_low & 1) == 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43948, &qword_1DB512610);
  sub_1DB367E44();
  v2 = sub_1DB50A5E0();

  return v2;
}

uint64_t sub_1DB367A2C()
{
  if (qword_1EE30EDD8 != -1)
  {
    swift_once();
  }

  v0 = off_1EE30EDE0;
  os_unfair_lock_lock(off_1EE30EDE0 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v0[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v0 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
  }

  *(swift_allocObject() + 16) = (os_unfair_lock_opaque_low & 1) == 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43948, &qword_1DB512610);
  sub_1DB367E44();
  v2 = sub_1DB50A5E0();

  return v2;
}

uint64_t sub_1DB367B58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  v7[3] = MEMORY[0x1E69E6158];
  v7[0] = v3;
  v7[1] = v4;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  result = sub_1DB301D4C(v7, v5 + 32);
  *(v5 + 64) = 0;
  *a2 = v5;
  return result;
}

void static LogMessage.nilValueSubstitute.getter(void *a1@<X8>)
{
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = 0x296C6C756E28;
  a1[1] = 0xE600000000000000;
}

_OWORD *LogMessage.rawValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(*v1 + 16))
  {
    sub_1DB301CDC(*v1 + 32, &v4);
    if (*(&v5 + 1))
    {
      sub_1DB30C200(&v4, v6);
      return sub_1DB30C200(v6, a1);
    }
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  result = sub_1DB301DBC(&v4);
  *(a1 + 24) = MEMORY[0x1E69E6158];
  *a1 = 0x296C6C756E28;
  *(a1 + 8) = 0xE600000000000000;
  return result;
}

void LogMessage.valueTreatment.getter(_BYTE *a1@<X8>)
{
  if (*(*v1 + 16))
  {
    *a1 = *(*v1 + 64);
  }

  else
  {
    *a1 = 0;
  }
}

Swift::String __swiftcall LogMessage.describe(withRedaction:)(Swift::Bool withRedaction)
{
  *(swift_allocObject() + 16) = withRedaction;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43948, &qword_1DB512610);
  sub_1DB367E44();
  v1 = sub_1DB50A5E0();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_1DB367E10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB366738(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DB367E44()
{
  result = qword_1EE30E2F8;
  if (!qword_1EE30E2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43948, &qword_1DB512610);
    sub_1DB367EE0(&unk_1EE30E360, &qword_1ECC43950, &qword_1DB512618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30E2F8);
  }

  return result;
}

uint64_t sub_1DB367EE0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB367F38()
{
  result = qword_1ECC43958;
  if (!qword_1ECC43958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43958);
  }

  return result;
}

unint64_t sub_1DB367F9C()
{
  result = qword_1ECC43960;
  if (!qword_1ECC43960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43960);
  }

  return result;
}

unint64_t sub_1DB367FF4()
{
  result = qword_1ECC43968;
  if (!qword_1ECC43968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43968);
  }

  return result;
}

unint64_t sub_1DB36804C()
{
  result = qword_1ECC43970;
  if (!qword_1ECC43970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43970);
  }

  return result;
}

unint64_t sub_1DB3680A4()
{
  result = qword_1ECC43978;
  if (!qword_1ECC43978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43978);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB368158(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1DB3681B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t AssetNextSchedule.fromDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DB509DD0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AssetNextSchedule.toDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AssetNextSchedule(0) + 20);
  v4 = sub_1DB509DD0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AssetNextSchedule(uint64_t a1)
{
  result = qword_1ECC43980;
  if (!qword_1ECC43980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB3683C4(uint64_t a1)
{
  result = sub_1DB509DD0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DB368440(char a1)
{
  v2 = v1;
  v4 = CGColorGetColorSpace(v1);
  if (v4 && (v5 = v4, Model = CGColorSpaceGetModel(v4), v5, Model == kCGColorSpaceModelRGB))
  {
    CopyByMatchingToColorSpace = v2;
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(DeviceRGB, kCGRenderingIntentDefault, v2, 0);

    if (!CopyByMatchingToColorSpace)
    {
      return;
    }
  }

  v9 = sub_1DB50AEC0();

  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = *(v9 + 32) * 255.0;
      if (COERCE__INT64(fabs(v11)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v11 > -1.0)
        {
          if (v11 < 256.0)
          {
            if (v10 != 1)
            {
              v12 = *(v9 + 40) * 255.0;
              if (COERCE__INT64(fabs(v12)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v12 > -1.0)
                {
                  if (v12 < 256.0)
                  {
                    if (v10 >= 3)
                    {
                      v13 = *(v9 + 48);

                      v14 = v13 * 255.0;
                      if (COERCE__INT64(fabs(v13 * 255.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                      {
                        if (v14 > -1.0)
                        {
                          if (v14 < 256.0)
                          {
                            v15 = v11;
                            v16 = v12;
                            v17 = v14;
                            if ((a1 & 1) == 0)
                            {
                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
                              v23 = swift_allocObject();
                              v24 = MEMORY[0x1E69E7508];
                              *(v23 + 16) = xmmword_1DB511620;
                              v25 = MEMORY[0x1E69E7558];
                              *(v23 + 56) = v24;
                              *(v23 + 64) = v25;
                              *(v23 + 32) = v15;
                              *(v23 + 96) = v24;
                              *(v23 + 104) = v25;
                              *(v23 + 72) = v16;
                              *(v23 + 136) = v24;
                              *(v23 + 144) = v25;
                              *(v23 + 112) = v17;
                              goto LABEL_25;
                            }

                            v18 = CGColorGetAlpha(v2) * 255.0;
                            if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                            {
                              if (v18 > -1.0)
                              {
                                if (v18 < 256.0)
                                {
                                  v19 = v18;
                                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
                                  v20 = swift_allocObject();
                                  *(v20 + 16) = xmmword_1DB5128F0;
                                  v21 = MEMORY[0x1E69E7508];
                                  v22 = MEMORY[0x1E69E7558];
                                  *(v20 + 56) = MEMORY[0x1E69E7508];
                                  *(v20 + 64) = v22;
                                  *(v20 + 32) = v15;
                                  *(v20 + 96) = v21;
                                  *(v20 + 104) = v22;
                                  *(v20 + 72) = v16;
                                  *(v20 + 136) = v21;
                                  *(v20 + 144) = v22;
                                  *(v20 + 112) = v17;
                                  *(v20 + 176) = v21;
                                  *(v20 + 184) = v22;
                                  *(v20 + 152) = v19;
LABEL_25:
                                  sub_1DB50A680();
                                  return;
                                }

                                goto LABEL_40;
                              }

LABEL_39:
                              __break(1u);
LABEL_40:
                              __break(1u);
                              return;
                            }

LABEL_38:
                            __break(1u);
                            goto LABEL_39;
                          }

LABEL_37:
                          __break(1u);
                          goto LABEL_38;
                        }

LABEL_36:
                        __break(1u);
                        goto LABEL_37;
                      }

LABEL_35:
                      __break(1u);
                      goto LABEL_36;
                    }

LABEL_34:
                    __break(1u);
                    goto LABEL_35;
                  }

LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }
}

uint64_t sub_1DB36876C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageRenderEvent(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for PageIntentInstrumentation(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB369398(v2, v12);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    sub_1DB3693FC(v12, v6);
    v14 = *(a1 + 16);
    if (v14)
    {
      v15 = &v6[*(v4 + 24)];
      v16 = *v15;
      v17 = v15[1];
      v18 = (a1 + 32);
      do
      {
        memcpy(v32, v18, 0x158uLL);
        sub_1DB369460(v32, v31);
        if (qword_1ECC42180 != -1)
        {
          swift_once();
        }

        v27 = xmmword_1ECC679F8;
        v28 = byte_1ECC67A08;
        v29 = qword_1ECC67A10;
        v30 = byte_1ECC67A18;
        memcpy(v31, v32, sizeof(v31));
        static MonotonicTime.now.getter(&v26);
        v25 = v26;
        PageRenderField<>.callAsFunction(_:for:at:)(v31, v16, v17, &v25);
        sub_1DB3694BC(v32);
        v18 += 344;
        --v14;
      }

      while (v14);
    }

    v9 = v6;
  }

  else
  {
    sub_1DB3693FC(v12, v9);
    v19 = *(a1 + 16);
    if (v19)
    {
      memcpy(v32, (a1 + 32), 0x158uLL);
      sub_1DB370A18(v9);
      if (v19 != 1)
      {
        v20 = &v9[*(v4 + 24)];
        v21 = *v20;
        v22 = v20[1];

        v23 = v19 - 2;
        for (i = 376; ; i += 344)
        {
          memcpy(v32, (a1 + i), 0x158uLL);
          sub_1DB369460(v32, v31);
          if (qword_1ECC42180 != -1)
          {
            swift_once();
          }

          v27 = xmmword_1ECC679F8;
          v28 = byte_1ECC67A08;
          v29 = qword_1ECC67A10;
          v30 = byte_1ECC67A18;
          memcpy(v31, v32, sizeof(v31));
          static MonotonicTime.now.getter(&v26);
          v25 = v26;
          PageRenderField<>.callAsFunction(_:for:at:)(v31, v21, v22, &v25);
          sub_1DB3694BC(v32);
          if (!v23)
          {
            break;
          }

          --v23;
        }
      }
    }
  }

  return sub_1DB369510(v9);
}

JetCore::PageIntentInstrumentationType_optional __swiftcall PageIntentInstrumentationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB50B680();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t PageIntentInstrumentationType.rawValue.getter()
{
  if (*v0)
  {
    return 0x7261646E6F636573;
  }

  else
  {
    return 0x447972616D697270;
  }
}

uint64_t sub_1DB368B68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7261646E6F636573;
  }

  else
  {
    v3 = 0x447972616D697270;
  }

  if (v2)
  {
    v4 = 0xEB00000000617461;
  }

  else
  {
    v4 = 0xED00006174614479;
  }

  if (*a2)
  {
    v5 = 0x7261646E6F636573;
  }

  else
  {
    v5 = 0x447972616D697270;
  }

  if (*a2)
  {
    v6 = 0xED00006174614479;
  }

  else
  {
    v6 = 0xEB00000000617461;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB50BA30();
  }

  return v8 & 1;
}

uint64_t sub_1DB368C24()
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB368CBC(uint64_t a1)
{
  sub_1DB50A740();
}

uint64_t sub_1DB368D40(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB368DD4@<X0>(char *a2@<X8>)
{
  v3 = sub_1DB50B680();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1DB368E34(uint64_t *a1@<X8>)
{
  v2 = 0x447972616D697270;
  if (*v1)
  {
    v2 = 0x7261646E6F636573;
  }

  v3 = 0xEB00000000617461;
  if (*v1)
  {
    v3 = 0xED00006174614479;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DB368E88@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = 0xEB0000000044496ELL;
  v6 = 0x6F6974617265706FLL;

  JSONObject.subscript.getter(0x6F6974617265706FLL, 0xEB0000000044496ELL, v18);
  v7 = JSONObject.string.getter();
  v9 = v8;
  sub_1DB3151CC(v18);
  if (!v9)
  {
    goto LABEL_7;
  }

  v6 = 1701869940;
  JSONObject.subscript.getter(1701869940, 0xE400000000000000, v18);
  JSONObject.string.getter();
  v11 = v10;
  sub_1DB3151CC(v18);
  if (!v11)
  {

    v5 = 0xE400000000000000;
LABEL_7:
    v14 = 0x2000000000000000;
LABEL_8:
    v15 = v14 | &type metadata for PageIntentInstrumentationModel;
    sub_1DB315178();
    swift_allocError();
    *v16 = v6;
    v16[1] = v5;
    v16[2] = v15;
    v16[3] = 0;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  v12 = sub_1DB50B680();

  if (!v12)
  {
    v13 = 0;
    goto LABEL_10;
  }

  if (v12 != 1)
  {

    v5 = 0xE400000000000000;
    v14 = 0x8000000000000000;
    goto LABEL_8;
  }

  v13 = 1;
LABEL_10:
  result = sub_1DB3151CC(a1);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v13;
  return result;
}

Swift::Void __swiftcall PageIntentInstrumentation._forBooksOnly_process(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  v2 = CFBundleGetMainBundle();
  v3 = CFBundleGetIdentifier(v2);

  if (v3)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1DB50A640();
    }
  }

  if (sub_1DB50A810() & 1) != 0 || (sub_1DB50A810())
  {
  }

  else
  {
    v4 = sub_1DB50A810();

    if ((v4 & 1) == 0)
    {
      sub_1DB3CE748("JetCore/PageIntentInstrumentation.swift", 0x27uLL, 2, 0x88uLL);
    }
  }

  sub_1DB36876C(contentsOf._rawValue);
}

unint64_t sub_1DB3691A0()
{
  result = qword_1ECC43990;
  if (!qword_1ECC43990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43990);
  }

  return result;
}

uint64_t type metadata accessor for PageIntentInstrumentation(uint64_t a1)
{
  result = qword_1ECC43998;
  if (!qword_1ECC43998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB369290(uint64_t a1)
{
  result = type metadata accessor for PageRenderEvent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB369300(uint64_t a1, int a2)
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

uint64_t sub_1DB369348(uint64_t result, int a2, int a3)
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

uint64_t sub_1DB369398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageIntentInstrumentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB3693FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageRenderEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB369510(uint64_t a1)
{
  v2 = type metadata accessor for PageRenderEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EventEmitter.asyncStream.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_1DB50ABD0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11[-v6];
  v12 = a1;
  v13 = a2;
  v14 = v2;
  swift_checkMetadataState();
  v8 = *MEMORY[0x1E69E8650];
  v9 = sub_1DB50ABD0();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  return sub_1DB50AC40();
}

uint64_t sub_1DB36969C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  v11 = *(a5 + 16);
  swift_unknownObjectRetain();
  v11(v13, a4, a5);
  EventEmitter.addObserver(on:singleUse:_:)(v13, 0, a2, a3, a4, a5);
  swift_unknownObjectRelease();

  result = __swift_destroy_boxed_opaque_existential_0(v13);
  a6[1] = v13[5];
  return result;
}

uint64_t sub_1DB36975C(uint64_t a1)
{
  v6 = *(v1 + 8);
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(v2 + 32);

  v4(&v6, v3, v2);
}

uint64_t sub_1DB3697DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v7 = sub_1DB50ABF0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  (*(v8 + 16))(&v17 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  (*(v8 + 32))(v13 + v12, v11, v7);
  v14 = swift_unknownObjectRetain();
  sub_1DB36969C(v14, sub_1DB369B94, v13, a3, a4, &v18);
  v17 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = v17;
  return sub_1DB50ABC0();
}

uint64_t sub_1DB3699B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v15 - v7;
  v9 = sub_1DB50ABB0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v6 + 16))(v8, a1, AssociatedTypeWitness, v11);
  sub_1DB50ABF0();
  sub_1DB50ABE0();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1DB369B94(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  v5 = *(sub_1DB50ABF0() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1DB3699B0(a1, v6, v3, v4);
}

uint64_t sub_1DB369C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB369CD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DB369D18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB369D64@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (!*(*a1 + 16))
  {
    goto LABEL_11;
  }

  v5 = sub_1DB306160(0x707954746E657665, 0xE900000000000065);
  if ((v6 & 1) == 0 || (sub_1DB300B14(*(v4 + 56) + 32 * v5, &v17), v7 = MEMORY[0x1E69E6158], (swift_dynamicCast() & 1) == 0))
  {
LABEL_10:

LABEL_11:
    *a2 = v4;
    a2[1] = v3;
  }

  if (v20 != __PAIR128__(0xEA00000000007265, 0x646E655265676170))
  {
    v8 = sub_1DB50BA30();

    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_7:
  if (*(v4 + 16) && (v9 = sub_1DB306160(0x7571655265676170, 0xEF656D6954747365), (v10 & 1) != 0))
  {
    sub_1DB300B14(*(v4 + 56) + 32 * v9, &v20);
    sub_1DB30C200(&v20, &v17);
    sub_1DB300B14(&v17, &v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v4;
    sub_1DB31D16C(&v20, 0x6D6954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    __swift_destroy_boxed_opaque_existential_0(&v17);
    *a2 = v22;
    a2[1] = v3;
  }

  else
  {

    if (qword_1EE30C900 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v13 = v18;
    v16 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB50EE90;
    v21 = v7;
    *&v20 = 0xD00000000000004ELL;
    *(&v20 + 1) = 0x80000001DB52B320;
    *(v15 + 48) = 0u;
    *(v15 + 32) = 0u;
    sub_1DB301D4C(&v20, v15 + 32);
    *(v15 + 64) = 0;
    *(v14 + 32) = v15;
    Logger.error(_:)(v14, v13, v16);

    __swift_destroy_boxed_opaque_existential_0(&v17);
    *a2 = v4;
    a2[1] = v3;
  }
}

uint64_t sub_1DB36A094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PreferenceKey(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB36A124(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1DB36A2A8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1DB36A510@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = a1[1];
  *a5 = *a1;
  a5[1] = v8;
  v9 = type metadata accessor for SetPreferenceMigrationRule(0, a3, a3, a4);
  v10 = *(*(a3 - 8) + 32);
  v11 = a5 + *(v9 + 28);

  return v10(v11, a2, a3);
}

uint64_t sub_1DB36A5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v17 = a2;
  v5 = *(a3 + 16);
  v6 = sub_1DB50B120();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  ObjectType = swift_getObjectType();
  v12 = *v3;
  v11 = v3[1];
  v13 = *(a3 + 28);
  v14 = *(v5 - 8);
  (*(v14 + 16))(v9, v3 + v13, v5);
  (*(v14 + 56))(v9, 0, 1, v5);
  v18[0] = v12;
  v18[1] = v11;

  sub_1DB3A5500(v9, v18, ObjectType, v5, v17);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DB36A758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 32))(v4, ObjectType, a2);
  v8 = swift_getObjectType();
  return (*(a4 + 32))(v4, v8, a4);
}

uint64_t AppVersionFieldProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 120) = a1;
  *(v2 + 128) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DB36A81C, 0, 0);
}

uint64_t sub_1DB36A81C()
{
  v26 = v0;
  v1 = [*(v0 + 128) infoDictionary];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1DB50A4B0();

    if (*(v3 + 16))
    {
      v4 = sub_1DB306160(0xD00000000000001ALL, 0x80000001DB52B3C0);
      if (v5)
      {
        v6 = *(v0 + 120);
        sub_1DB300B14(*(v3 + 56) + 32 * v4, v0 + 56);

        sub_1DB30C200((v0 + 56), (v0 + 16));
        v7 = *(v6 + 24);
        v8 = *(v6 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
        (*(v8 + 16))(v0 + 16, 0x6973726556707061, 0xEA00000000006E6FLL, v7, v8);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        goto LABEL_13;
      }
    }
  }

  if (qword_1ECC42228 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DB50F8D0;
  v24 = sub_1DB301BC0(0, 46, 0, MEMORY[0x1E69E7CC0]);
  v11._countAndFlagsBits = 0xD00000000000002DLL;
  v11._object = 0x80000001DB52B370;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  *(v0 + 80) = sub_1DB36AC44();
  *(v0 + 56) = v9;
  sub_1DB301CDC(v0 + 56, v0 + 88);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v12 = v9;
  sub_1DB301D4C(v0 + 88, v0 + 16);
  *(v0 + 48) = 1;
  v13 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
  }

  v14 = MEMORY[0x1E69E6158];
  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1DB301BC0((v15 > 1), v16 + 1, 1, v13);
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[40 * v16];
  v18 = *(v0 + 16);
  v19 = *(v0 + 32);
  v17[64] = *(v0 + 48);
  *(v17 + 2) = v18;
  *(v17 + 3) = v19;
  sub_1DB301DBC(v0 + 56);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  *(v10 + 32) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DB50EE90;
  *(v0 + 40) = v14;
  *(v0 + 16) = 0xD000000000000017;
  *(v0 + 24) = 0x80000001DB52B3A0;
  *(v21 + 48) = 0u;
  *(v21 + 32) = 0u;
  sub_1DB301D4C(v0 + 16, v21 + 32);
  *(v21 + 64) = 0;
  *(v10 + 40) = v21;
  v25 = 0;
  OSLogger.log(contentsOf:withLevel:)(v10, &v25);

LABEL_13:
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1DB36ABB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB306AF4;

  return AppVersionFieldProvider.addExpensiveMetricsFields(into:using:)(a1);
}

unint64_t sub_1DB36AC44()
{
  result = qword_1ECC43AA8;
  if (!qword_1ECC43AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC43AA8);
  }

  return result;
}

id sub_1DB36ACD0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WrappedMetricsPipeline();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1DB36AD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_1DB36AD8C@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  *a5 = *result;
  a5[1] = v5;
  a5[2] = v6;
  a5[3] = v7;
  a5[4] = a3;
  a5[5] = a4;
  return result;
}

uint64_t sub_1DB36ADA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a4;
  v47 = a3;
  v60 = a2;
  v8 = *(a5 + 24);
  v9 = sub_1DB50B120();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v38 - v10;
  v50 = v8;
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a5 + 16);
  v14 = sub_1DB50B120();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - v16;
  v18 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v53 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v5;
  v22 = v5[1];
  v23 = v5[3];
  v39 = v5[2];
  v40 = v23;
  v24 = v5[4];
  v51 = v5[5];
  v52 = v24;
  ObjectType = swift_getObjectType();
  v41 = v21;
  v56 = v21;
  v57 = v22;
  v26 = v18;

  v42 = ObjectType;
  v49 = a1;
  Preferences.subscript.getter(&v56, ObjectType, v13, v60, v17);

  if ((*(v18 + 48))(v17, 1, v13) == 1)
  {
    return (*(v15 + 8))(v17, v14);
  }

  v28 = v53;
  (*(v18 + 32))(v53, v17, v13);
  v29 = v55;
  v52(v28);
  if (v29)
  {
    return (*(v18 + 8))(v28, v13);
  }

  v30 = swift_getObjectType();
  v31 = v48;
  v32 = v43;
  v33 = v50;
  (*(v48 + 16))(v43, v54, v50);
  (*(v31 + 56))(v32, 0, 1, v33);
  v56 = v39;
  v57 = v40;

  sub_1DB3A5500(v32, &v56, v30, v33, v46);
  (*(v44 + 8))(v32, v45);
  v58 = type metadata accessor for PreferenceKey(0, v13, v34, v35);
  v59 = &protocol witness table for PreferenceKey<A>;
  v56 = v41;
  v57 = v22;
  v36 = v60;
  v37 = *(v60 + 32);

  v37(&v56, v42, v36);
  (*(v31 + 8))(v54, v33);
  (*(v26 + 8))(v53, v13);
  return __swift_destroy_boxed_opaque_existential_0(&v56);
}

uint64_t sub_1DB36B22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_1DB36B280@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  v4 = *a2;
  v5 = a2[1];
  *a3 = *result;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  return result;
}

uint64_t sub_1DB36B294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a3;
  v7 = *(a5 + 16);
  v8 = sub_1DB50B120();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v33 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v5;
  v18 = v5[1];
  v19 = v5[3];
  v29 = v5[2];
  v30 = v19;
  ObjectType = swift_getObjectType();
  v31 = v17;
  v39 = v17;
  v40 = v18;

  v32 = ObjectType;
  v36 = a2;
  Preferences.subscript.getter(&v39, ObjectType, v7, a2, v13);

  if ((*(v14 + 48))(v13, 1, v7) == 1)
  {
    return (*(v37 + 8))(v13, v38);
  }

  v22 = v33;
  (*(v14 + 32))(v33, v13, v7);
  v23 = swift_getObjectType();
  (*(v14 + 16))(v10, v22, v7);
  (*(v14 + 56))(v10, 0, 1, v7);
  v39 = v29;
  v40 = v30;

  sub_1DB3A5500(v10, &v39, v23, v7, v34);
  (*(v37 + 8))(v10, v38);
  v41 = type metadata accessor for PreferenceKey(0, v7, v24, v25);
  v42 = &protocol witness table for PreferenceKey<A>;
  v39 = v31;
  v40 = v18;
  v26 = v36;
  v27 = *(v36 + 32);

  v27(&v39, v32, v26);
  (*(v14 + 8))(v22, v7);
  return __swift_destroy_boxed_opaque_existential_0(&v39);
}

uint64_t dispatch thunk of IntentCache.retrieve<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DB30C7A0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of IntentCache.store<A>(_:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 16) + **(a7 + 16));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DB306AF4;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

JetCore::DeResolutionNumericTreatmentFilter::Definition __swiftcall DeResolutionNumericTreatmentFilter.Definition.init(eventType:rules:)(JetCore::MetricsEventType eventType, Swift::OpaquePointer rules)
{
  v3 = *(eventType.rawValue._countAndFlagsBits + 8);
  *v2 = *eventType.rawValue._countAndFlagsBits;
  v2[1] = v3;
  v2[2] = eventType.rawValue._object;
  result.eventType = eventType;
  result.rules = rules;
  return result;
}

JetCore::DeResolutionNumericTreatmentFilter __swiftcall DeResolutionNumericTreatmentFilter.init(_:)(JetCore::DeResolutionNumericTreatmentFilter result)
{
  *v1 = *result.definition.eventType.rawValue._countAndFlagsBits;
  *(v1 + 8) = *(result.definition.eventType.rawValue._countAndFlagsBits + 8);
  return result;
}

JetCore::LintedMetricsEvent __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeResolutionNumericTreatmentFilter.treat(_:on:)(JetCore::LintedMetricsEvent _, Swift::String_optional on)
{
  v4 = v2;
  v5 = *_.fields._rawValue;
  v6 = *(_.fields._rawValue + 1);
  if (!*(*_.fields._rawValue + 16))
  {
    goto LABEL_31;
  }

  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);

  v10 = sub_1DB306160(0x707954746E657665, 0xE900000000000065);
  if ((v11 & 1) == 0 || (sub_1DB300B14(v5[7] + 32 * v10, &v53), v12 = MEMORY[0x1E69E6158], (swift_dynamicCast() & 1) == 0))
  {

LABEL_31:
    *v4 = v5;
    v4[1] = v6;

LABEL_32:

    goto LABEL_39;
  }

  v50 = v9;
  v47 = v4;
  if ((v52[0] != v7 || v52[1] != v8) && (sub_1DB50BA30() & 1) == 0)
  {

    goto LABEL_31;
  }

  v54 = v12;
  v53 = *v52;
  sub_1DB30C200(&v53, v52);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DB31D16C(v52, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v14 = v5;
  v15 = v9;
  v51 = *(v9 + 16);
  if (!v51)
  {
LABEL_33:
    *v47 = v14;
    v47[1] = v6;
    goto LABEL_32;
  }

  v16 = 0;
  v17 = (v9 + 56);
  v48 = v6;
  while (v16 < *(v15 + 16))
  {
    if (!v5[2])
    {
      goto LABEL_11;
    }

    v19 = *(v17 - 3);
    v18 = *(v17 - 2);
    v21 = *(v17 - 1);
    v20 = *v17;
    swift_bridgeObjectRetain_n();
    v22 = sub_1DB306160(v19, v18);
    v24 = v23;

    if (v24 & 1) != 0 && (sub_1DB300B14(v5[7] + 32 * v22, &v53), sub_1DB36BD70(), (swift_dynamicCast()))
    {
      v49 = v52[0];
      [v52[0] doubleValue];
      v26 = v25;
      v27 = NAN;
      if (v21 > 0.0 && v20 >= 0.0)
      {
        v28 = __exp10(v20);
        v27 = v28 * trunc(v26 / v21 / v28);
      }

      v54 = MEMORY[0x1E69E63B0];
      *&v53 = v27;
      sub_1DB30C200(&v53, v52);
      v29 = v14;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v32 = sub_1DB306160(v19, v18);
      v33 = v29[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_36;
      }

      v36 = v31;
      if (v29[3] >= v35)
      {
        if (v30)
        {
          if ((v31 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          sub_1DB3112DC();
          if ((v36 & 1) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        sub_1DB319570(v35, v30);
        v37 = sub_1DB306160(v19, v18);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_38;
        }

        v32 = v37;
        if ((v36 & 1) == 0)
        {
LABEL_28:
          v29[(v32 >> 6) + 8] |= 1 << v32;
          v40 = (v29[6] + 16 * v32);
          *v40 = v19;
          v40[1] = v18;
          sub_1DB30C200(v52, (v29[7] + 32 * v32));

          v41 = v29[2];
          v42 = __OFADD__(v41, 1);
          v43 = v41 + 1;
          if (v42)
          {
            goto LABEL_37;
          }

          v14 = v29;
          v29[2] = v43;
          v6 = v48;
          goto LABEL_10;
        }
      }

      v14 = v29;
      v39 = (v29[7] + 32 * v32);
      __swift_destroy_boxed_opaque_existential_0(v39);
      sub_1DB30C200(v52, v39);

      v6 = v48;
    }

    else
    {
    }

LABEL_10:
    v15 = v50;
LABEL_11:
    ++v16;
    v17 += 4;
    if (v51 == v16)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  v44 = sub_1DB50BC20();
  __break(1u);
LABEL_39:
  result.issues._rawValue = v45;
  result.fields._rawValue = v44;
  return result;
}

double sub_1DB36BCC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43BB8, &qword_1DB512E10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DB50F8D0;
  *(v0 + 32) = 0xD00000000000001DLL;
  *(v0 + 40) = 0x80000001DB528E10;
  result = 1.0;
  *(v0 + 48) = xmmword_1DB512D60;
  *(v0 + 64) = 0xD00000000000001ELL;
  *(v0 + 72) = 0x80000001DB528E70;
  *(v0 + 80) = xmmword_1DB512D60;
  qword_1ECC67918 = 0x646E655265676170;
  unk_1ECC67920 = 0xEA00000000007265;
  qword_1ECC67928 = v0;
  return result;
}

unint64_t sub_1DB36BD70()
{
  result = qword_1ECC433A0;
  if (!qword_1ECC433A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC433A0);
  }

  return result;
}

double sub_1DB36BDDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43BC8, &qword_1DB512E18);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43BD0, &unk_1DB512E20);
  v1 = swift_allocObject();
  result = 0.0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v0 + 16) = v1;
  off_1ECC43BC0 = v0;
  return result;
}

uint64_t sub_1DB36BE50(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1ECC42228 != -1)
  {
    swift_once();
  }

  v2 = qword_1ECC466F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50F8D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v5 = MEMORY[0x1E69E6158];
  *(&v27 + 1) = MEMORY[0x1E69E6158];
  *&v26 = 0xD00000000000002DLL;
  *(&v26 + 1) = 0x80000001DB52A8A0;
  *(v4 + 48) = 0u;
  *(v4 + 32) = 0u;
  sub_1DB301D4C(&v26, v4 + 32);
  *(v4 + 64) = 0;
  *(v3 + 32) = v4;
  v31 = sub_1DB301BC0(0, 20, 0, MEMORY[0x1E69E7CC0]);
  v6._object = 0x80000001DB52A8D0;
  v6._countAndFlagsBits = 0xD000000000000013;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  if (v1)
  {
    swift_getErrorValue();
    *(&v30 + 1) = v24;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v29);
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_0);
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  sub_1DB30C4B8(&v29, v25, &qword_1ECC426B0, &qword_1DB50EEB0);
  v26 = 0u;
  v27 = 0u;
  sub_1DB301D4C(v25, &v26);
  v28 = 0;
  v8 = v31;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DB301BC0(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DB301BC0((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v26;
  v13 = v27;
  v11[64] = v28;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v31 = v8;
  sub_1DB30623C(&v29, &qword_1ECC426B0, &qword_1DB50EEB0);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v3 + 40) = v31;
  v15 = sub_1DB50AF40();
  if (os_log_type_enabled(v2, v15))
  {
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v16 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v16[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v16 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v18 = swift_allocObject();
    *(v18 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v26 = v3;
    *(&v26 + 1) = sub_1DB31485C;
    *&v27 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v19 = sub_1DB50A5E0();
    v21 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1DB50EE90;
    *(v22 + 56) = v5;
    *(v22 + 64) = sub_1DB31494C();
    *(v22 + 32) = v19;
    *(v22 + 40) = v21;
    sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v2, v15, v22);
  }
}

void sub_1DB36C280()
{
  if (qword_1EE30E190 != -1)
  {
    swift_once();
  }

  if ((byte_1EE30E198 & 1) == 0)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v0 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1DB50EE90;
    v3 = MEMORY[0x1E69E6158];
    *(&v59 + 1) = MEMORY[0x1E69E6158];
    *&aBlock = 0xD000000000000027;
    *(&aBlock + 1) = 0x80000001DB52B460;
    *(v2 + 48) = 0u;
    *(v2 + 32) = 0u;
    sub_1DB301D4C(&aBlock, v2 + 32);
    *(v2 + 64) = 0;
    *(v1 + 32) = v2;
    *&aBlock = v0;
    LOBYTE(v63[0]) = 3;
    OSLogger.log(contentsOf:withLevel:)(v1, v63);

    if (qword_1ECC42068 != -1)
    {
      swift_once();
    }

    v4 = *(off_1ECC43BC0 + 2);
    os_unfair_recursive_lock_lock_with_options();
    v5 = v4[2];
    if (v5)
    {
      v7 = v4[3];
      v6 = v4[4];
      v8 = v5;
      v9 = v7;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      v11 = [objc_opt_self() currentProcess];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434C0, &qword_1DB511550);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1DB511420;
      v13 = sub_1DB50A620();
      v14 = sub_1DB50A620();
      v15 = [objc_opt_self() attributeWithDomain:v13 name:v14];

      *(v12 + 32) = v15;
      v16 = objc_allocWithZone(type metadata accessor for ProcessAssertion.JetRBSAssertion());
      v17 = sub_1DB50A620();
      sub_1DB3483D0();
      v18 = sub_1DB50A980();

      v19 = [v16 initWithExplanation:v17 target:v11 attributes:v18];

      v20 = objc_allocWithZone(_JEAtomicCounter);
      v21 = v19;
      v22 = [v20 initWithInitialValue_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434C8, qword_1DB511558);
      v6 = swift_allocObject();
      *(v6 + 16) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
      *(v6 + 24) = v10;
      v60 = sub_1DB34841C;
      v61 = v6;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v59 = sub_1DB34EAE0;
      *(&v59 + 1) = &block_descriptor_5;
      v23 = _Block_copy(&aBlock);

      [v21 setInvalidationHandler_];
      _Block_release(v23);

      v24 = v4[2];
      v25 = v4[3];
      v26 = v3;
      v27 = v4[4];
      v4[2] = v21;
      v4[3] = v22;
      v4[4] = v6;
      v28 = v21;
      v29 = v22;

      v8 = v28;
      v30 = v27;
      v3 = v26;
      v9 = v29;
      sub_1DB3481B0(v24, v25, v30);
    }

    os_unfair_recursive_lock_unlock();
    *&aBlock = v8;
    *(&aBlock + 1) = v9;
    *&v59 = v6;
    ProcessAssertion.acquire()();
    if (v31)
    {
      v32 = qword_1ECC466F0;
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1DB50F8D0;
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1DB50EE90;
      *(&v59 + 1) = v3;
      *&aBlock = 0xD000000000000030;
      *(&aBlock + 1) = 0x80000001DB52A860;
      *(v34 + 48) = 0u;
      *(v34 + 32) = 0u;
      sub_1DB301D4C(&aBlock, v34 + 32);
      *(v34 + 64) = 0;
      *(v33 + 32) = v34;
      v69 = sub_1DB301BC0(0, 9, 0, MEMORY[0x1E69E7CC0]);
      v35._countAndFlagsBits = 0x203A6E6F73616572;
      v35._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      swift_getErrorValue();
      v36 = v67;
      v37 = v68;
      v64 = v68;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v63);
      (*(v37[-1].Description + 2))(boxed_opaque_existential_0, v36, v37);
      sub_1DB30C4B8(v63, v66, &qword_1ECC426B0, &qword_1DB50EEB0);
      aBlock = 0u;
      v59 = 0u;
      sub_1DB301D4C(v66, &aBlock);
      LOBYTE(v60) = 0;
      v39 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1DB301BC0(0, *(v39 + 2) + 1, 1, v39);
        v69 = v39;
      }

      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = sub_1DB301BC0((v40 > 1), v41 + 1, 1, v39);
      }

      *(v39 + 2) = v41 + 1;
      v42 = &v39[40 * v41];
      v43 = aBlock;
      v44 = v59;
      v42[64] = v60;
      *(v42 + 2) = v43;
      *(v42 + 3) = v44;
      v69 = v39;
      sub_1DB30623C(v63, &qword_1ECC426B0, &qword_1DB50EEB0);
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v45);
      *(v33 + 40) = v69;
      *&aBlock = v32;
      LOBYTE(v63[0]) = 0;
      OSLogger.log(contentsOf:withLevel:)(v33, v63);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43538, &qword_1DB511AA0);
      v46 = swift_allocObject();
      v64 = &type metadata for SyncTaskScheduler;
      v65 = &protocol witness table for SyncTaskScheduler;
      sub_1DB30BE90(v63, &aBlock);
      v61 = sub_1DB36BE50;
      v62 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43540, &qword_1DB511AA8);
      v47 = swift_allocObject();
      *(v47 + 72) = 0;
      __swift_destroy_boxed_opaque_existential_0(v63);
      sub_1DB30C4B8(&aBlock, v47 + 16, &qword_1ECC43548, &qword_1DB511AB0);
      sub_1DB30623C(&aBlock, &qword_1ECC43548, &qword_1DB511AB0);
      *(v46 + 16) = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43550, &qword_1DB511AB8);
      v48 = swift_allocObject();
      *(v48 + 16) = v46;
      v49 = *(v6 + 16);

      [v49 lock];
      swift_beginAccess();
      v50 = *(v6 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 24) = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = v50[2];

        v56 = sub_1DB302BF8(0, v55 + 1, 1, v50);
        *(v6 + 24) = v56;

        v50 = v56;
      }

      v53 = v50[2];
      v52 = v50[3];
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        v57 = sub_1DB302BF8((v52 > 1), v53 + 1, 1, v50);
        v54 = v53 + 1;
        v50 = v57;
      }

      v50[2] = v54;
      v50[v53 + 4] = v48;
      *(v6 + 24) = v50;
      swift_endAccess();

      [v49 unlock];
    }
  }
}

void sub_1DB36CB68()
{
  if (qword_1EE30E190 != -1)
  {
    swift_once();
  }

  if ((byte_1EE30E198 & 1) == 0)
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v0 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1DB50EE90;
    v16 = MEMORY[0x1E69E6158];
    v13 = 0xD00000000000002ALL;
    v14 = 0x80000001DB52B430;
    *(v2 + 48) = 0u;
    *(v2 + 32) = 0u;
    sub_1DB301D4C(&v13, v2 + 32);
    *(v2 + 64) = 0;
    *(v1 + 32) = v2;
    v13 = v0;
    v12 = 3;
    OSLogger.log(contentsOf:withLevel:)(v1, &v12);

    if (qword_1ECC42068 != -1)
    {
      swift_once();
    }

    v3 = off_1ECC43BC0;
    v4 = *(off_1ECC43BC0 + 2);
    os_unfair_recursive_lock_lock_with_options();
    v5 = v4[2];
    v6 = v4[3];
    v7 = v4[4];
    sub_1DB36CD98(v5, v6);
    os_unfair_recursive_lock_unlock();
    if (v5)
    {
      v13 = v5;
      v14 = v6;
      v15 = v7;
      if (ProcessAssertion.invalidate()())
      {
        v8 = v3[2];
        os_unfair_recursive_lock_lock_with_options();
        v9 = v8[2];
        v10 = v8[3];
        v11 = v8[4];
        v8[3] = 0;
        v8[4] = 0;
        v8[2] = 0;
        sub_1DB3481B0(v9, v10, v11);
        os_unfair_recursive_lock_unlock();
      }

      sub_1DB3481B0(v5, v6, v7);
    }
  }
}

void *sub_1DB36CD98(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = a2;
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DB36CDF8()
{
  if (qword_1ECC41FC8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECC678A8;
  v1 = qword_1ECC42070;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_1ECC43BD8;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0;
  sub_1DB36E0D4(v2, sub_1DB36E378, 0, isUniquelyReferenced_nonNull_native, &v6);

  v4 = sub_1DB30E858(v6);

  return v4;
}

unint64_t static ActionKindTable._table.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  if (qword_1ECC42070 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECC43BD8;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v2;
  sub_1DB36E0D4(v3, sub_1DB36E378, 0, isUniquelyReferenced_nonNull_native, &v7);

  v5 = sub_1DB30E858(v7);

  return v5;
}

uint64_t sub_1DB36D018@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = dynamic_cast_existential_2_conditional(a1, a1, &protocol descriptor for ActionModel, MEMORY[0x1E69E6440]);
  if (v9)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    v46 = a3;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v15 = sub_1DB50BDE0();
    JSONContext.init(userInfo:)(v15);
    v16 = v48[0];
    if (!sub_1DB316CAC(0xD000000000000023, 0x80000001DB5298A0, v48[0]))
    {
      *&v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E78, &unk_1DB50FF20);
      *&v50 = v3;
      *(&v50 + 1) = &off_1F56F1850;
      sub_1DB30C200(&v50, v49);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v48[0];
      sub_1DB31D16C(v49, 0xD000000000000023, 0x80000001DB5298A0, isUniquelyReferenced_nonNull_native);
      v18 = v53;

      v48[0] = v18;
      v16 = v18;
    }

    v19 = a2[3];
    v20 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v19);
    v53 = v16;

    v21 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v53);
    Decoder.withUserInfo(_:)(v21, v19, v20, v49);

    *&v51 = v12;
    *(&v51 + 1) = v13;
    v52 = v14;
    __swift_allocate_boxed_opaque_existential_0(&v50);
    sub_1DB50ADB0();
    if (v4)
    {

      return __swift_deallocate_boxed_opaque_existential_0(&v50);
    }

    v44 = v51;
    v33 = v51;
    v34 = __swift_project_boxed_opaque_existential_1(&v50, v51);
    *(v46 + 24) = v44;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v46);
    (*(*(v33 - 8) + 16))(boxed_opaque_existential_0, v34, v33);
LABEL_12:

    return __swift_destroy_boxed_opaque_existential_0(&v50);
  }

  v23 = dynamic_cast_existential_2_conditional(a1, a1, &protocol descriptor for ActionModel, &protocol descriptor for ExpressibleByJSON);
  if (v23)
  {
    v26 = v23;
    v27 = v24;
    v28 = v25;
    v47 = a3;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v29 = sub_1DB50BDE0();
    JSONContext.init(userInfo:)(v29);
    v30 = v53;
    sub_1DB315EC4(0xD00000000000001FLL, 0x80000001DB52B490, v53, &v50);
    v31 = ~*(&v50 + 1) & 0xF000000000000007;
    sub_1DB3171A0(v50, *(&v50 + 1));
    if (!v31)
    {
      *&v51 = &type metadata for AnyActionTypes;
      *&v50 = v5;
      *(&v50 + 1) = 0x80000001F56F1850;
      sub_1DB30C200(&v50, v49);

      v32 = swift_isUniquelyReferenced_nonNull_native();
      v48[0] = v30;
      sub_1DB31D16C(v49, 0xD00000000000001FLL, 0x80000001DB52B490, v32);

      v53 = v30;
    }

    sub_1DB30BE90(a2, v48);
    JSONObject.init(from:)(v48, v49);
    if (v4)
    {
    }

    v48[0] = v30;
    v40 = *(v28 + 8);
    *&v51 = v26;
    *(&v51 + 1) = v27;
    v52 = v28;
    __swift_allocate_boxed_opaque_existential_0(&v50);

    v40(v49, v48, v26, v28);
    v45 = v51;
    v41 = v51;
    v42 = __swift_project_boxed_opaque_existential_1(&v50, v51);
    *(v47 + 24) = v45;
    v43 = __swift_allocate_boxed_opaque_existential_0(v47);
    (*(*(v41 - 8) + 16))(v43, v42, v41);
    goto LABEL_12;
  }

  v36 = sub_1DB50B3E0();
  swift_allocError();
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
  *v38 = a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DB50BDB0();
  sub_1DB50B320();

  *&v50 = 60;
  *(&v50 + 1) = 0xE100000000000000;
  v39 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v39);

  MEMORY[0x1E1285C70](0xD000000000000012, 0x80000001DB52AB80);
  sub_1DB50B3C0();
  (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
  return swift_willThrow();
}

uint64_t static ActionKindTable._decode(_:from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = dynamic_cast_existential_2_conditional(a1, a1, &protocol descriptor for ActionModel, MEMORY[0x1E69E6440]);
  if (v9)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    v43 = a4;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v15 = sub_1DB50BDE0();
    JSONContext.init(userInfo:)(v15);
    v16 = v49[0];
    if (!sub_1DB316CAC(0xD000000000000023, 0x80000001DB5298A0, v49[0]))
    {
      *&v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E78, &unk_1DB50FF20);
      *&v51 = v46;
      *(&v51 + 1) = a3;
      sub_1DB30C200(&v51, v50);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v49[0];
      sub_1DB31D16C(v50, 0xD000000000000023, 0x80000001DB5298A0, isUniquelyReferenced_nonNull_native);
      v18 = v54;

      v49[0] = v18;
      v16 = v18;
    }

    v19 = a2[3];
    v20 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v19);
    v54 = v16;

    v21 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v54);
    Decoder.withUserInfo(_:)(v21, v19, v20, v50);

    *&v52 = v12;
    *(&v52 + 1) = v13;
    v53 = v14;
    __swift_allocate_boxed_opaque_existential_0(&v51);
    sub_1DB50ADB0();
    if (v4)
    {

      return __swift_deallocate_boxed_opaque_existential_0(&v51);
    }

    v47 = v52;
    v32 = v52;
    v33 = __swift_project_boxed_opaque_existential_1(&v51, v52);
    *(v43 + 24) = v47;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v43);
    (*(*(v32 - 8) + 16))(boxed_opaque_existential_0, v33, v32);
LABEL_12:

    return __swift_destroy_boxed_opaque_existential_0(&v51);
  }

  v23 = dynamic_cast_existential_2_conditional(a1, a1, &protocol descriptor for ActionModel, &protocol descriptor for ExpressibleByJSON);
  if (v23)
  {
    v26 = v23;
    v27 = v25;
    v44 = a4;
    v45 = v24;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v28 = sub_1DB50BDE0();
    JSONContext.init(userInfo:)(v28);
    v29 = v54;
    sub_1DB315EC4(0xD00000000000001FLL, 0x80000001DB52B490, v54, &v51);
    v30 = *(&v51 + 1);
    sub_1DB3171A0(v51, *(&v51 + 1));
    if ((~v30 & 0xF000000000000007) == 0)
    {
      *&v52 = &type metadata for AnyActionTypes;
      *&v51 = v46;
      *(&v51 + 1) = a3 | 0x8000000000000000;
      sub_1DB30C200(&v51, v50);

      v31 = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = v29;
      sub_1DB31D16C(v50, 0xD00000000000001FLL, 0x80000001DB52B490, v31);

      v54 = v29;
    }

    sub_1DB30BE90(a2, v49);
    JSONObject.init(from:)(v49, v50);
    if (v4)
    {
    }

    v49[0] = v29;
    v39 = *(v27 + 8);
    *&v52 = v26;
    *(&v52 + 1) = v45;
    v53 = v27;
    __swift_allocate_boxed_opaque_existential_0(&v51);

    v39(v50, v49, v26, v27);
    v48 = v52;
    v40 = v52;
    v41 = __swift_project_boxed_opaque_existential_1(&v51, v52);
    *(v44 + 24) = v48;
    v42 = __swift_allocate_boxed_opaque_existential_0(v44);
    (*(*(v40 - 8) + 16))(v42, v41, v40);
    goto LABEL_12;
  }

  v35 = sub_1DB50B3E0();
  swift_allocError();
  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
  *v37 = a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DB50BDB0();
  sub_1DB50B320();

  *&v51 = 60;
  *(&v51 + 1) = 0xE100000000000000;
  v38 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v38);

  MEMORY[0x1E1285C70](0xD000000000000012, 0x80000001DB52AB80);
  sub_1DB50B3C0();
  (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
  return swift_willThrow();
}

unint64_t sub_1DB36DAF4()
{
  result = sub_1DB36DB14();
  qword_1ECC43BD8 = result;
  return result;
}

unint64_t sub_1DB36DB14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43BE0, &qword_1DB512E58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB511620;
  strcpy((inited + 32), "closureAction");
  *(inited + 46) = -4864;
  *(inited + 48) = &type metadata for ClosureAction;
  *(inited + 56) = &protocol witness table for ClosureAction;
  strcpy((inited + 64), "compoundAction");
  *(inited + 79) = -18;
  *(inited + 80) = &type metadata for CompoundAction;
  *(inited + 88) = &protocol witness table for CompoundAction;
  *(inited + 96) = 0x7463417974706D65;
  *(inited + 104) = 0xEB000000006E6F69;
  *(inited + 112) = &type metadata for EmptyAction;
  *(inited + 120) = &protocol witness table for EmptyAction;
  v1 = sub_1DB3134B0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43BE8, &qword_1DB512E60);
  swift_arrayDestroy();
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1DB512E30;
  *(v2 + 32) = 0x7463417472656C61;
  *(v2 + 40) = 0xEB000000006E6F69;
  *(v2 + 48) = &type metadata for Models.AlertAction;
  *(v2 + 56) = &protocol witness table for Models.AlertAction;
  *(v2 + 64) = 0xD000000000000011;
  *(v2 + 72) = 0x80000001DB52B4B0;
  *(v2 + 80) = type metadata accessor for Models.ExternalURLAction(0);
  *(v2 + 88) = &protocol witness table for Models.ExternalURLAction;
  *(v2 + 96) = 0x6974634170747468;
  *(v2 + 104) = 0xEA00000000006E6FLL;
  *(v2 + 112) = type metadata accessor for Models.HTTPAction(0);
  *(v2 + 120) = &protocol witness table for Models.HTTPAction;
  *(v2 + 128) = 0xD000000000000012;
  *(v2 + 136) = 0x80000001DB52B4D0;
  *(v2 + 144) = type metadata accessor for Models.HTTPTemplateAction(0);
  *(v2 + 152) = &protocol witness table for Models.HTTPTemplateAction;
  *(v2 + 160) = 0x7463417473616F74;
  *(v2 + 168) = 0xEB000000006E6F69;
  *(v2 + 176) = &type metadata for Models.ToastAction;
  *(v2 + 184) = &protocol witness table for Models.ToastAction;
  v3 = sub_1DB3134B0(v2);
  swift_setDeallocating();
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v1;
  sub_1DB36DE54(v3, sub_1DB36E378, 0, isUniquelyReferenced_nonNull_native, &v6);

  return v6;
}

uint64_t _defaultActionKindLookup.getter()
{
  if (qword_1ECC42070 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DB36DE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
}

uint64_t sub_1DB36DE54(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v43 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v37 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + v14);
    v17 = v16[1];
    v41[0] = *v16;
    v41[1] = v17;
    v42 = *(v15 + v14);

    a2(&v38, v41);

    v18 = v38;
    v19 = v39;
    v36 = v40;
    v20 = *v43;
    v22 = sub_1DB306160(v38, v39);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v25 = v21;
    if (v20[3] >= v23 + v24)
    {
      if ((v37 & 1) == 0)
      {
        sub_1DB314CAC();
      }
    }

    else
    {
      sub_1DB31EBC8();
      v26 = sub_1DB306160(v18, v19);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_27;
      }

      v22 = v26;
    }

    v9 &= v9 - 1;
    v28 = *v43;
    if (v25)
    {

      *(v28[7] + 16 * v22) = v36;
    }

    else
    {
      v28[(v22 >> 6) + 8] |= 1 << v22;
      v29 = (v28[6] + 16 * v22);
      *v29 = v18;
      v29[1] = v19;
      *(v28[7] + 16 * v22) = v36;
      v30 = v28[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_26;
      }

      v28[2] = v32;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_1DB2FEA60(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v37 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

uint64_t sub_1DB36E0D4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + v14);
    v17 = v16[1];
    v42[0] = *v16;
    v42[1] = v17;
    v43 = *(v15 + v14);

    a2(&v39, v42);

    v18 = v39;
    v19 = v40;
    v36 = v41;
    v20 = *v44;
    v22 = sub_1DB306160(v39, v40);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v25 = v21;
    if (v20[3] >= v23 + v24)
    {
      if ((v38 & 1) == 0)
      {
        sub_1DB314CAC();
      }
    }

    else
    {
      sub_1DB31EBC8();
      v26 = sub_1DB306160(v18, v19);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_27;
      }

      v22 = v26;
    }

    v9 &= v9 - 1;
    v28 = *v44;
    if (v25)
    {
      v37 = *(v28[7] + 16 * v22);

      *(v28[7] + 16 * v22) = v37;
    }

    else
    {
      v28[(v22 >> 6) + 8] |= 1 << v22;
      v29 = (v28[6] + 16 * v22);
      *v29 = v18;
      v29[1] = v19;
      *(v28[7] + 16 * v22) = v36;
      v30 = v28[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_26;
      }

      v28[2] = v32;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_1DB2FEA60(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

Swift::tuple_key_String_value_String_optional __swiftcall CookieIterator.next()()
{
  v1 = v0;
  v2 = sub_1DB5098F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = v0[1];
  if (v10 < *(*v0 + 16))
  {
    if (v10 < 0)
    {
      __break(1u);
    }

    else
    {
      v11 = *v0 + 16 * v10;
      v13 = *(v11 + 32);
      v12 = *(v11 + 40);

      v14 = sub_1DB36E708(61, 0xE100000000000000, v13, v12);
      if (v15)
      {
        v59 = v13;
        v60 = v12;
        sub_1DB301E30();
        v16 = sub_1DB50B1C0();
        if (v17)
        {
          v18 = v16;
          v19 = v17;

          v13 = v18;
          v12 = v19;
        }

        v8 = 0;
        v9 = 0xE000000000000000;
        v6 = v13;
        v7 = v12;
        goto LABEL_18;
      }

      v55 = v14;
      v56 = v0;
      v20 = sub_1DB50A870();
      v21 = v2;
      v22 = MEMORY[0x1E1285BF0](v20);
      v24 = v23;

      v59 = v22;
      v60 = v24;
      sub_1DB5098E0();
      sub_1DB301E30();
      v25 = sub_1DB50B190();
      v27 = v26;
      v28 = *(v3 + 8);
      v53 = v21;
      v54 = v3 + 8;
      v52 = v28;
      v28(v5, v21);

      v57 = v25;
      v58 = v27;
      v59 = v25;
      v60 = v27;
      v29 = sub_1DB50B1C0();
      if (v30)
      {
        v31 = v29;
        v32 = v30;

        v57 = v31;
        v58 = v32;
      }

      v1 = v56;
      if ((v12 & 0x2000000000000000) != 0)
      {
        v33 = HIBYTE(v12) & 0xF;
      }

      else
      {
        v33 = v13 & 0xFFFFFFFFFFFFLL;
      }

      v6 = sub_1DB50A760();
      if (v7)
      {

        v8 = 0;
        v9 = 0xE000000000000000;
        goto LABEL_17;
      }

      if (4 * v33 >= v6 >> 14)
      {
        v34 = sub_1DB50A870();
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v41 = MEMORY[0x1E1285BF0](v34, v36, v38, v40);
        v43 = v42;

        v59 = v41;
        v60 = v43;
        sub_1DB5098E0();
        v44 = sub_1DB50B190();
        v46 = v45;
        v52(v5, v53);

        v59 = v44;
        v60 = v46;
        v47 = sub_1DB50B1C0();
        if (!v48)
        {
          v6 = v57;
          v7 = v58;
          v8 = v44;
          v9 = v46;
          goto LABEL_18;
        }

        v49 = v47;
        v50 = v48;

        v8 = v49;
        v9 = v50;
LABEL_17:
        v6 = v57;
        v7 = v58;
LABEL_18:
        v1[1] = v10 + 1;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

LABEL_23:
  result.value.value._object = v9;
  result.value.value._countAndFlagsBits = v8;
  result.value.key._object = v7;
  result.value.key._countAndFlagsBits = v6;
  return result;
}

unint64_t sub_1DB36E708(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1DB50A850() != a1 || v9 != a2)
  {
    v10 = sub_1DB50BA30();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1DB50A750();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1DB36E7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a1 && *i == a2;
    if (v8 || (sub_1DB50BA30() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1DB36E888@<X0>(Swift::tuple_key_String_value_String_optional *a1@<X8>)
{
  v3 = CookieIterator.next()();
  *a1 = v3;
  return v3.value.key._countAndFlagsBits;
}

Swift::Double __swiftcall DeResolutionNumberRule.apply(to:)(Swift::Double to)
{
  v3 = *(v1 + 16);
  result = NAN;
  if (v3 > 0.0 && *(v1 + 24) >= 0.0)
  {
    v5 = __exp10(*(v1 + 24));
    return v5 * trunc(to / v3 / v5);
  }

  return result;
}

JetCore::DeResolutionNumberRule __swiftcall DeResolutionNumberRule.init(fieldName:magnitude:significantDigits:)(Swift::String fieldName, Swift::Double magnitude, Swift::Double significantDigits)
{
  *v3 = fieldName;
  *(v3 + 16) = magnitude;
  *(v3 + 24) = significantDigits;
  result.fieldName = fieldName;
  result.significantDigits = significantDigits;
  result.magnitude = magnitude;
  return result;
}

BOOL static DeResolutionNumberRule.== infix(_:_:)(double *a1, uint64_t a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    if (v3 != v5)
    {
      return 0;
    }

    return v2 == v4;
  }

  v7 = sub_1DB50BA30();
  result = 0;
  if ((v7 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

BOOL sub_1DB36E9AC(double *a1, uint64_t a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    if (v3 != v5)
    {
      return 0;
    }

    return v2 == v4;
  }

  v7 = sub_1DB50BA30();
  result = 0;
  if ((v7 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

double DispatchConfiguration.init(cachePolicy:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  *(a2 + 40) = v2;
  return result;
}

uint64_t sub_1DB36EA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1DB306AF4;

  return IntentDispatcher.dispatcher<A, B>(for:asPartOf:)(a1, v12, v13, a7, v14, v15, a8);
}

uint64_t IntentDispatcher.dispatcher<A, B>(for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[4] = a7;
  v8[5] = v7;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB36EB2C, 0, 0);
}

uint64_t sub_1DB36EB2C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v2 + 24) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DB36EBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DB30C7A0;

  return IntentDispatcher.dispatch<A>(_:objectGraph:)(a1, a2, a3, a6, a4, a7, a5);
}

uint64_t IntentDispatcher.dispatch<A>(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[18] = a7;
  v8[19] = v7;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB36ECE0, 0, 0);
}

uint64_t sub_1DB36ECE0()
{
  v11 = v0[17];
  (*(v0[18] + 40))(v0[16], v0[18]);
  v2 = v0[5];
  v1 = v0[6];
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v10 = (*(v11 + 8) + **(v11 + 8));
  v4 = swift_task_alloc();
  v0[20] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v4 = v0;
  v4[1] = sub_1DB36EE80;
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[15];

  return v10(v0 + 7, v3, v7, AssociatedTypeWitness, v2, v1, v8, v6);
}

uint64_t sub_1DB36EE80()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1DB36F24C;
  }

  else
  {
    v2 = sub_1DB36EF94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB36EF94()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v10 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_1DB36F0CC;
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[12];

  return v10(v8, v6, v7, v5, v4, v1, v2);
}

uint64_t sub_1DB36F0CC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1DB36F2B0;
  }

  else
  {
    v2 = sub_1DB36F1E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB36F1E0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB36F24C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB36F2B0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB36F31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1DB30C7A0;

  return IntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(a1, a2, a3, v16, a7, a5, a8, a6);
}

uint64_t IntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = a8;
  v9[16] = v8;
  v9[13] = a6;
  v9[14] = a7;
  v9[11] = a3;
  v9[12] = a5;
  v9[9] = a1;
  v9[10] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB36F428, 0, 0);
}

{
  v9[15] = a8;
  v9[16] = v8;
  v9[13] = a6;
  v9[14] = a7;
  v9[11] = a3;
  v9[12] = a5;
  v9[9] = a1;
  v9[10] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB36F9B4, 0, 0);
}

uint64_t sub_1DB36F428()
{
  if (qword_1ECC42218 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECC466E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50EE90;
  v4 = MEMORY[0x1E69E6158];
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = 0xD0000000000000ADLL;
  v0[3] = 0x80000001DB52B4F0;
  *(v3 + 48) = 0u;
  *(v3 + 32) = 0u;
  sub_1DB301D4C((v0 + 2), v3 + 32);
  *(v3 + 64) = 0;
  *(v2 + 32) = v3;
  v5 = sub_1DB50AF40();
  if (os_log_type_enabled(v1, v5))
  {
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v6 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v6[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v6 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v8 = swift_allocObject();
    *(v8 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    v0[6] = v2;
    v0[7] = sub_1DB31485C;
    v0[8] = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v9 = sub_1DB50A5E0();
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DB50EE90;
    *(v12 + 56) = v4;
    *(v12 + 64) = sub_1DB31494C();
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;
    sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v1, v5, v12);
  }

  v22 = (*(v0[14] + 16) + **(v0[14] + 16));
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_1DB36F7B4;
  v14 = v0[15];
  v15 = v0[13];
  v16 = v0[14];
  v17 = v0[11];
  v18 = v0[12];
  v19 = v0[9];
  v20 = v0[10];

  return v22(v19, v20, v17, v15, v14, v18, v16);
}

uint64_t sub_1DB36F7B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DB36F8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1DB30C7A0;

  return IntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(a1, a2, a3, v16, a7, a5, a8, a6);
}

uint64_t sub_1DB36F9B4()
{
  if (qword_1ECC42218 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECC466E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50EE90;
  v4 = MEMORY[0x1E69E6158];
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = 0xD0000000000000ADLL;
  v0[3] = 0x80000001DB52B4F0;
  *(v3 + 48) = 0u;
  *(v3 + 32) = 0u;
  sub_1DB301D4C((v0 + 2), v3 + 32);
  *(v3 + 64) = 0;
  *(v2 + 32) = v3;
  v5 = sub_1DB50AF40();
  if (os_log_type_enabled(v1, v5))
  {
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v6 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v6[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v6 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v8 = swift_allocObject();
    *(v8 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    v0[6] = v2;
    v0[7] = sub_1DB314CB0;
    v0[8] = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v9 = sub_1DB50A5E0();
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DB50EE90;
    *(v12 + 56) = v4;
    *(v12 + 64) = sub_1DB31494C();
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;
    sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v1, v5, v12);
  }

  v22 = (*(v0[14] + 16) + **(v0[14] + 16));
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_1DB3708C0;
  v14 = v0[15];
  v15 = v0[13];
  v16 = v0[14];
  v17 = v0[11];
  v18 = v0[12];
  v19 = v0[9];
  v20 = v0[10];

  return v22(v19, v20, v17, v15, v14, v18, v16);
}

uint64_t IntentCacheUsePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t DispatchConfiguration.withCacheKey(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB36FE48(v2, a2);

  return sub_1DB36FE80(a1, a2);
}

uint64_t sub_1DB36FE80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43588, &qword_1DB511CF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _s7JetCore21DispatchConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40))
  {
    sub_1DB30C4B8(a1, v8, &qword_1ECC43588, &qword_1DB511CF0);
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43C88, &unk_1DB513168);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v18 = 0;
        v16 = 0u;
        v17 = 0u;
      }
    }

    else
    {
      sub_1DB30623C(v8, &qword_1ECC43588, &qword_1DB511CF0);
      v16 = 0u;
      v17 = 0u;
      v18 = 0;
    }

    sub_1DB30C4B8(a2, v8, &qword_1ECC43588, &qword_1DB511CF0);
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43C88, &unk_1DB513168);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v15 = 0;
        v13 = 0u;
        v14 = 0u;
      }
    }

    else
    {
      sub_1DB30623C(v8, &qword_1ECC43588, &qword_1DB511CF0);
      v13 = 0u;
      v14 = 0u;
      v15 = 0;
    }

    sub_1DB30C4B8(&v16, v8, &qword_1ECC43C78, &qword_1DB513158);
    sub_1DB30C4B8(&v13, &v10, &qword_1ECC43C78, &qword_1DB513158);
    if (v9)
    {
      sub_1DB30C4B8(v8, v7, &qword_1ECC43C78, &qword_1DB513158);
      if (*(&v11 + 1))
      {
        v5[0] = v10;
        v5[1] = v11;
        v6 = v12;
        v2 = MEMORY[0x1E1286770](v7, v5);
        sub_1DB314BE8(v5);
        sub_1DB314BE8(v7);
        sub_1DB30623C(v8, &qword_1ECC43C78, &qword_1DB513158);
LABEL_18:
        sub_1DB30623C(&v13, &qword_1ECC43C78, &qword_1DB513158);
        sub_1DB30623C(&v16, &qword_1ECC43C78, &qword_1DB513158);
        return v2 & 1;
      }

      sub_1DB314BE8(v7);
    }

    else if (!*(&v11 + 1))
    {
      sub_1DB30623C(v8, &qword_1ECC43C78, &qword_1DB513158);
      v2 = 1;
      goto LABEL_18;
    }

    sub_1DB30623C(v8, &qword_1ECC43C80, &qword_1DB513160);
    v2 = 0;
    goto LABEL_18;
  }

  v2 = 0;
  return v2 & 1;
}

unint64_t sub_1DB370188()
{
  result = qword_1ECC43BF0[0];
  if (!qword_1ECC43BF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC43BF0);
  }

  return result;
}

uint64_t dispatch thunk of IntentDispatcher.dispatcher<A, B>(for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 8) + **(a8 + 8));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1DB306AF4;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 16) + **(a7 + 16));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DB30C7A0;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 24) + **(a8 + 24));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1DB30C7A0;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  v19 = (*(a8 + 32) + **(a8 + 32));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1DB30C7A0;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1DB370774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_SH_s8SendablepSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB3707E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1DB37083C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB3708CC(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v14 = MEMORY[0x1E69E7CC0];
  sub_1DB34138C(0, v4, 0);
  v5 = v14;
  a1(__src, a3 + 32);
  if (!v3)
  {
    for (i = a3 + 72; ; i += 40)
    {
      memcpy(__dst, __src, sizeof(__dst));
      v14 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1DB34138C((v9 > 1), v10 + 1, 1);
        v5 = v14;
      }

      *(v5 + 16) = v10 + 1;
      memcpy((v5 + 344 * v10 + 32), __dst, 0x158uLL);
      if (!--v4)
      {
        break;
      }

      a1(__src, i);
    }

    return v5;
  }

  __break(1u);
  return result;
}

void sub_1DB370A18(uint64_t a1)
{
  v3 = sub_1DB509DD0();
  v203 = *(v3 - 8);
  v204 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  LODWORD(v182) = *(v1 + 40);
  v9 = *(v1 + 48);
  v183 = *(v1 + 56);
  v184 = *(v1 + 72);
  v185 = *(v1 + 73);
  v186 = *(v1 + 88);
  v187 = *(v1 + 104);
  v175[1] = *(v1 + 112);
  v188 = *(v1 + 120);
  v175[2] = *(v1 + 128);
  v189 = *(v1 + 136);
  v175[3] = *(v1 + 144);
  v190 = *(v1 + 152);
  v175[4] = *(v1 + 160);
  v191 = *(v1 + 168);
  v175[5] = *(v1 + 176);
  v192 = *(v1 + 184);
  v175[6] = *(v1 + 192);
  v193 = *(v1 + 200);
  v194 = *(v1 + 216);
  v195 = *(v1 + 232);
  v196 = *(v1 + 233);
  v176 = *(v1 + 240);
  v197 = *(v1 + 248);
  v177 = *(v1 + 256);
  v198 = *(v1 + 264);
  v10 = *(v1 + 280);
  v178 = *(v1 + 272);
  v201 = v10;
  v11 = *(v1 + 296);
  v179 = *(v1 + 288);
  v202 = v11;
  v12 = *(v1 + 312);
  v180 = *(v1 + 304);
  v181 = v12;
  v199 = *(v1 + 320);
  v13 = *(v1 + 328);
  v200 = *(v1 + 336);
  if (v6)
  {
    v14 = a1;
    v15 = v7;
    v16 = v13;
    v17 = *v1;
    if (qword_1ECC421C8 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67B60;
    v208 = byte_1ECC67B70;
    v209 = qword_1ECC67B78;
    v210 = byte_1ECC67B80;
    v18 = (v14 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v19 = *v18;
    v20 = v18[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v17, v6, v19, v20, &v205);
    v13 = v16;
    v7 = v15;
    a1 = v14;
  }

  if (v8)
  {
    if (qword_1ECC421D0 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67B88;
    v208 = byte_1ECC67B98;
    v209 = qword_1ECC67BA0;
    v210 = byte_1ECC67BA8;
    v21 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v22 = *v21;
    v23 = v21[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v7, v8, v22, v23, &v205);
  }

  v24 = v181;
  if ((v182 & 1) == 0)
  {
    v182 = v9;
    sub_1DB509D80();
    sub_1DB509D20();
    v26 = v25;
    v27 = (a1 + *(type metadata accessor for MonotonicTimeReference(0) + 20));
    v28 = *v27;
    v29 = v27[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v26 + v29 / *&qword_1EE30ED50 + v28);
    (*(v203 + 8))(v5, v204);
    v30 = v207;
    if (qword_1ECC42168 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67980;
    v208 = byte_1ECC67990;
    v209 = qword_1ECC67998;
    v210 = byte_1ECC679A0;
    v31 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v32 = *v31;
    v33 = v31[1];
    v206 = v30;
    PageRenderField<>.callAsFunction(for:at:)(v32, v33, &v206);
  }

  if ((v183 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v35 = v34;
    v36 = (a1 + *(type metadata accessor for MonotonicTimeReference(0) + 20));
    v37 = *v36;
    v38 = v36[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v35 + v38 / *&qword_1EE30ED50 + v37);
    (*(v203 + 8))(v5, v204);
    v39 = v207;
    if (qword_1ECC42188 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67A20;
    v208 = byte_1ECC67A30;
    v209 = qword_1ECC67A38;
    v210 = byte_1ECC67A40;
    v40 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v41 = *v40;
    v42 = v40[1];
    v206 = v39;
    PageRenderField<>.startTime(for:at:)(v41, v42, &v206);
  }

  if ((v184 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v44 = v43;
    v45 = (a1 + *(type metadata accessor for MonotonicTimeReference(0) + 20));
    v46 = *v45;
    v47 = v45[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v44 + v47 / *&qword_1EE30ED50 + v46);
    (*(v203 + 8))(v5, v204);
    v48 = v207;
    if (qword_1ECC42188 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67A20;
    v208 = byte_1ECC67A30;
    v209 = qword_1ECC67A38;
    v210 = byte_1ECC67A40;
    v49 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v50 = *v49;
    v51 = v49[1];
    v206 = v48;
    PageRenderField<>.endTime(for:at:)(v50, v51, &v206);
  }

  v52 = v185;
  if (v185 != 2)
  {
    if (qword_1ECC421B0 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67AE8;
    v208 = byte_1ECC67AF8;
    v209 = qword_1ECC67B00;
    v210 = byte_1ECC67B08;
    v53 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v54 = *v53;
    v55 = v53[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v52 & 1, v54, v55, &v205);
  }

  if ((v186 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v57 = v56;
    v58 = (a1 + *(type metadata accessor for MonotonicTimeReference(0) + 20));
    v59 = *v58;
    v60 = v58[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v57 + v60 / *&qword_1EE30ED50 + v59);
    (*(v203 + 8))(v5, v204);
    v61 = v207;
    if (qword_1ECC42190 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67A48;
    v208 = byte_1ECC67A58;
    v209 = qword_1ECC67A60;
    v210 = byte_1ECC67A68;
    v62 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v63 = *v62;
    v64 = v62[1];
    v206 = v61;
    PageRenderField<>.startTime(for:at:)(v63, v64, &v206);
  }

  if ((v187 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v66 = v65;
    v67 = (a1 + *(type metadata accessor for MonotonicTimeReference(0) + 20));
    v68 = *v67;
    v69 = v67[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v66 + v69 / *&qword_1EE30ED50 + v68);
    (*(v203 + 8))(v5, v204);
    v70 = v207;
    if (qword_1ECC42190 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67A48;
    v208 = byte_1ECC67A58;
    v209 = qword_1ECC67A60;
    v210 = byte_1ECC67A68;
    v71 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v72 = *v71;
    v73 = v71[1];
    v206 = v70;
    PageRenderField<>.endTime(for:at:)(v72, v73, &v206);
  }

  if ((v188 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v75 = v74;
    v76 = (a1 + *(type metadata accessor for MonotonicTimeReference(0) + 20));
    v77 = *v76;
    v78 = v76[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v75 + v78 / *&qword_1EE30ED50 + v77);
    (*(v203 + 8))(v5, v204);
    v79 = v207;
    if (qword_1ECC42198 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67A70;
    v208 = byte_1ECC67A80;
    v209 = qword_1ECC67A88;
    v210 = byte_1ECC67A90;
    v80 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v81 = *v80;
    v82 = v80[1];
    v206 = v79;
    PageRenderField<>.startTime(for:at:)(v81, v82, &v206);
  }

  if ((v189 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v84 = v83;
    v85 = (a1 + *(type metadata accessor for MonotonicTimeReference(0) + 20));
    v86 = *v85;
    v87 = v85[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v84 + v87 / *&qword_1EE30ED50 + v86);
    (*(v203 + 8))(v5, v204);
    v88 = v207;
    if (qword_1ECC42198 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67A70;
    v208 = byte_1ECC67A80;
    v209 = qword_1ECC67A88;
    v210 = byte_1ECC67A90;
    v89 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v90 = *v89;
    v91 = v89[1];
    v206 = v88;
    PageRenderField<>.endTime(for:at:)(v90, v91, &v206);
  }

  if ((v190 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v93 = v92;
    v94 = (a1 + *(type metadata accessor for MonotonicTimeReference(0) + 20));
    v95 = *v94;
    v96 = v94[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v93 + v96 / *&qword_1EE30ED50 + v95);
    (*(v203 + 8))(v5, v204);
    v97 = v207;
    if (qword_1ECC421A0 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67A98;
    v208 = byte_1ECC67AA8;
    v209 = qword_1ECC67AB0;
    v210 = byte_1ECC67AB8;
    v98 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v99 = *v98;
    v100 = v98[1];
    v206 = v97;
    PageRenderField<>.startTime(for:at:)(v99, v100, &v206);
  }

  if ((v191 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v102 = v101;
    v103 = (a1 + *(type metadata accessor for MonotonicTimeReference(0) + 20));
    v104 = *v103;
    v105 = v103[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v102 + v105 / *&qword_1EE30ED50 + v104);
    (*(v203 + 8))(v5, v204);
    v106 = v207;
    if (qword_1ECC421A0 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67A98;
    v208 = byte_1ECC67AA8;
    v209 = qword_1ECC67AB0;
    v210 = byte_1ECC67AB8;
    v107 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v108 = *v107;
    v109 = v107[1];
    v206 = v106;
    PageRenderField<>.endTime(for:at:)(v108, v109, &v206);
  }

  if ((v192 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v111 = v110;
    v112 = (a1 + *(type metadata accessor for MonotonicTimeReference(0) + 20));
    v113 = *v112;
    v114 = v112[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v111 + v114 / *&qword_1EE30ED50 + v113);
    (*(v203 + 8))(v5, v204);
    v115 = v207;
    if (qword_1ECC421A8 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67AC0;
    v208 = byte_1ECC67AD0;
    v209 = qword_1ECC67AD8;
    v210 = byte_1ECC67AE0;
    v116 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v117 = *v116;
    v118 = v116[1];
    v206 = v115;
    PageRenderField<>.startTime(for:at:)(v117, v118, &v206);
  }

  if ((v193 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v120 = v119;
    v121 = (a1 + *(type metadata accessor for MonotonicTimeReference(0) + 20));
    v122 = *v121;
    v123 = v121[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v120 + v123 / *&qword_1EE30ED50 + v122);
    (*(v203 + 8))(v5, v204);
    v124 = v207;
    if (qword_1ECC421A8 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67AC0;
    v208 = byte_1ECC67AD0;
    v209 = qword_1ECC67AD8;
    v210 = byte_1ECC67AE0;
    v125 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v126 = *v125;
    v127 = v125[1];
    v206 = v124;
    PageRenderField<>.endTime(for:at:)(v126, v127, &v206);
  }

  if ((v194 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v129 = v128;
    v130 = (a1 + *(type metadata accessor for MonotonicTimeReference(0) + 20));
    v131 = *v130;
    v132 = v130[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v129 + v132 / *&qword_1EE30ED50 + v131);
    (*(v203 + 8))(v5, v204);
    v133 = v207;
    if (qword_1ECC42170 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC679A8;
    v208 = byte_1ECC679B8;
    v209 = qword_1ECC679C0;
    v210 = byte_1ECC679C8;
    v134 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v135 = *v134;
    v136 = v134[1];
    v206 = v133;
    PageRenderField<>.callAsFunction(for:at:)(v135, v136, &v206);
  }

  if ((v195 & 1) == 0)
  {
    sub_1DB509D80();
    sub_1DB509D20();
    v138 = v137;
    v139 = (a1 + *(type metadata accessor for MonotonicTimeReference(0) + 20));
    v140 = *v139;
    v141 = v139[1];
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    MonotonicTime.init(timeInterval:)(v138 + v141 / *&qword_1EE30ED50 + v140);
    (*(v203 + 8))(v5, v204);
    v142 = v207;
    if (qword_1ECC42178 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC679D0;
    v208 = byte_1ECC679E0;
    v209 = qword_1ECC679E8;
    v210 = byte_1ECC679F0;
    v143 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v144 = *v143;
    v145 = v143[1];
    v206 = v142;
    PageRenderField<>.callAsFunction(for:at:)(v144, v145, &v206);
  }

  v146 = v196;
  v147 = v200;
  if (v196 != 2)
  {
    if (qword_1ECC421B8 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67B10;
    v208 = byte_1ECC67B20;
    v209 = qword_1ECC67B28;
    v210 = byte_1ECC67B30;
    v148 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v149 = *v148;
    v150 = v148[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v146 & 1, v149, v150, &v205);
  }

  if ((v197 & 1) == 0)
  {
    if (qword_1ECC421F8 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67C50;
    v208 = byte_1ECC67C60;
    v209 = qword_1ECC67C68;
    v210 = byte_1ECC67C70;
    v151 = v176;
    v152 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v153 = *v152;
    v154 = v152[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v153, v154, &v205, v151);
  }

  if ((v198 & 1) == 0)
  {
    if (qword_1ECC42200 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67C78;
    v208 = byte_1ECC67C88;
    v209 = qword_1ECC67C90;
    v210 = byte_1ECC67C98;
    v155 = v177;
    v156 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v157 = *v156;
    v158 = v156[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v157, v158, &v205, v155);
  }

  if (v201)
  {
    if (qword_1ECC421D8 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67BB0;
    v208 = byte_1ECC67BC0;
    v209 = qword_1ECC67BC8;
    v210 = byte_1ECC67BD0;
    v159 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v160 = *v159;
    v161 = v159[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v178, v201, v160, v161, &v205);
  }

  if (v202)
  {
    if (qword_1ECC421E0 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67BD8;
    v208 = byte_1ECC67BE8;
    v209 = qword_1ECC67BF0;
    v210 = byte_1ECC67BF8;
    v162 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v163 = *v162;
    v164 = v162[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v179, v202, v163, v164, &v205);
  }

  if (v24)
  {
    if (qword_1ECC421E8 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67C00;
    v208 = byte_1ECC67C10;
    v209 = qword_1ECC67C18;
    v210 = byte_1ECC67C20;
    v165 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v166 = *v165;
    v167 = v165[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v180, v24, v166, v167, &v205);
  }

  v168 = v199;
  if (v199 != 2)
  {
    if (qword_1ECC421C0 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67B38;
    v208 = byte_1ECC67B48;
    v209 = qword_1ECC67B50;
    v210 = byte_1ECC67B58;
    v169 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v170 = *v169;
    v171 = v169[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v168 & 1, v170, v171, &v205);
  }

  if (v147)
  {
    if (qword_1ECC421F0 != -1)
    {
      swift_once();
    }

    v207 = xmmword_1ECC67C28;
    v208 = byte_1ECC67C38;
    v209 = qword_1ECC67C40;
    v210 = byte_1ECC67C48;
    v172 = (a1 + *(type metadata accessor for PageRenderEvent(0) + 24));
    v173 = *v172;
    v174 = v172[1];
    static MonotonicTime.now.getter(&v206);
    v205 = v206;
    PageRenderField<>.callAsFunction(_:for:at:)(v13, v147, v173, v174, &v205);
  }
}

__n128 JSNetworkPerformanceMetrics.init(clientCorrelationKey:pageURL:requestStartTime:responseStartTime:responseEndTime:responseWasCached:parseStartTime:parseEndTime:modelConstructionStartTime:modelConstructionEndTime:connectionStartTime:connectionEndTime:domainLookupStartTime:domainLookupEndTime:fetchStartTime:secureConnectionStartTime:connectionReused:requestMessageSize:responseMessageSize:statusCode:edgeNodeCacheStatus:environmentDataCenter:isLowDataMode:appleTimingApp:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, __int128 a38, __n128 a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 73) = a12;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18 & 1;
  *(a9 + 128) = a19;
  *(a9 + 136) = a20 & 1;
  *(a9 + 144) = a21;
  *(a9 + 152) = a22 & 1;
  *(a9 + 160) = a23;
  *(a9 + 168) = a24 & 1;
  *(a9 + 176) = a25;
  *(a9 + 184) = a26 & 1;
  *(a9 + 192) = a27;
  *(a9 + 200) = a28 & 1;
  *(a9 + 208) = a29;
  *(a9 + 216) = a30 & 1;
  *(a9 + 224) = a31;
  *(a9 + 232) = a32 & 1;
  *(a9 + 233) = a33;
  *(a9 + 240) = a34;
  *(a9 + 248) = a35 & 1;
  *(a9 + 256) = a36;
  *(a9 + 264) = a37 & 1;
  *(a9 + 304) = a40;
  *(a9 + 312) = a41;
  *(a9 + 320) = a42;
  *(a9 + 328) = a43;
  *(a9 + 336) = a44;
  result = a39;
  *(a9 + 272) = a38;
  *(a9 + 288) = a39;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{

  JSONObject.subscript.getter(0xD000000000000014, 0x80000001DB528AB0, v68);
  v5 = JSONObject.string.getter();
  v7 = v6;
  sub_1DB3151CC(v68);
  *a3 = v5;
  *(a3 + 8) = v7;
  JSONObject.subscript.getter(0x4C525565676170, 0xE700000000000000, v68);
  v8 = JSONObject.string.getter();
  v10 = v9;
  sub_1DB3151CC(v68);
  *(a3 + 16) = v8;
  *(a3 + 24) = v10;
  JSONObject.subscript.getter(0xD000000000000010, 0x80000001DB5298D0, v68);
  v67 = 1;
  v69 = JSONObject.timeInterval(convertedFrom:)(&v67);
  v11 = *&v69.is_nil;
  v13 = v12;
  sub_1DB3151CC(v68);
  *(a3 + 32) = v11;
  *(a3 + 40) = v13 & 1;
  JSONObject.subscript.getter(0xD000000000000011, 0x80000001DB5298F0, v68);
  v67 = 1;
  v70 = JSONObject.timeInterval(convertedFrom:)(&v67);
  v14 = *&v70.is_nil;
  v16 = v15;
  sub_1DB3151CC(v68);
  *(a3 + 48) = v14;
  *(a3 + 56) = v16 & 1;
  JSONObject.subscript.getter(0x65736E6F70736572, 0xEF656D6954646E45, v68);
  v67 = 1;
  v71 = JSONObject.timeInterval(convertedFrom:)(&v67);
  v17 = *&v71.is_nil;
  v19 = v18;
  sub_1DB3151CC(v68);
  *(a3 + 64) = v17;
  *(a3 + 72) = v19 & 1;
  JSONObject.subscript.getter(0xD000000000000011, 0x80000001DB52B5A0, v68);
  LOBYTE(v17) = JSONObject.BOOL.getter();
  sub_1DB3151CC(v68);
  *(a3 + 73) = v17;
  JSONObject.subscript.getter(0x6174536573726170, 0xEE00656D69547472, v68);
  v67 = 1;
  v72 = JSONObject.timeInterval(convertedFrom:)(&v67);
  v20 = *&v72.is_nil;
  v22 = v21;
  sub_1DB3151CC(v68);
  *(a3 + 80) = v20;
  *(a3 + 88) = v22 & 1;
  JSONObject.subscript.getter(0x646E456573726170, 0xEC000000656D6954, v68);
  v67 = 1;
  v73 = JSONObject.timeInterval(convertedFrom:)(&v67);
  v23 = *&v73.is_nil;
  v25 = v24;
  sub_1DB3151CC(v68);
  *(a3 + 96) = v23;
  *(a3 + 104) = v25 & 1;
  JSONObject.subscript.getter(0xD00000000000001ALL, 0x80000001DB528B30, v68);
  v67 = 1;
  v74 = JSONObject.timeInterval(convertedFrom:)(&v67);
  v26 = *&v74.is_nil;
  v28 = v27;
  sub_1DB3151CC(v68);
  *(a3 + 112) = v26;
  *(a3 + 120) = v28 & 1;
  JSONObject.subscript.getter(0xD000000000000018, 0x80000001DB528B10, v68);
  v67 = 1;
  v75 = JSONObject.timeInterval(convertedFrom:)(&v67);
  v29 = *&v75.is_nil;
  v31 = v30;
  sub_1DB3151CC(v68);
  *(a3 + 128) = v29;
  *(a3 + 136) = v31 & 1;
  JSONObject.subscript.getter(0xD000000000000013, 0x80000001DB52B5C0, v68);
  v67 = 1;
  v76 = JSONObject.timeInterval(convertedFrom:)(&v67);
  v32 = *&v76.is_nil;
  v34 = v33;
  sub_1DB3151CC(v68);
  *(a3 + 144) = v32;
  *(a3 + 152) = v34 & 1;
  JSONObject.subscript.getter(0xD000000000000011, 0x80000001DB52B5E0, v68);
  v67 = 1;
  v77 = JSONObject.timeInterval(convertedFrom:)(&v67);
  v35 = *&v77.is_nil;
  v37 = v36;
  sub_1DB3151CC(v68);
  *(a3 + 160) = v35;
  *(a3 + 168) = v37 & 1;
  JSONObject.subscript.getter(0xD000000000000015, 0x80000001DB52B600, v68);
  v67 = 1;
  v78 = JSONObject.timeInterval(convertedFrom:)(&v67);
  v38 = *&v78.is_nil;
  v40 = v39;
  sub_1DB3151CC(v68);
  *(a3 + 176) = v38;
  *(a3 + 184) = v40 & 1;
  JSONObject.subscript.getter(0xD000000000000013, 0x80000001DB52B620, v68);
  v67 = 1;
  v79 = JSONObject.timeInterval(convertedFrom:)(&v67);
  v41 = *&v79.is_nil;
  v43 = v42;
  sub_1DB3151CC(v68);
  *(a3 + 192) = v41;
  *(a3 + 200) = v43 & 1;
  JSONObject.subscript.getter(0x6174536863746566, 0xEE00656D69547472, v68);
  v67 = 1;
  v80 = JSONObject.timeInterval(convertedFrom:)(&v67);
  v44 = *&v80.is_nil;
  v46 = v45;
  sub_1DB3151CC(v68);
  *(a3 + 208) = v44;
  *(a3 + 216) = v46 & 1;
  JSONObject.subscript.getter(0xD000000000000019, 0x80000001DB52B640, v68);
  v67 = 1;
  v81 = JSONObject.timeInterval(convertedFrom:)(&v67);
  v47 = *&v81.is_nil;
  v49 = v48;
  sub_1DB3151CC(v68);
  *(a3 + 224) = v47;
  *(a3 + 232) = v49 & 1;
  JSONObject.subscript.getter(0xD000000000000010, 0x80000001DB52B660, v68);
  LOBYTE(v47) = JSONObject.BOOL.getter();
  sub_1DB3151CC(v68);
  *(a3 + 233) = v47;
  JSONObject.subscript.getter(0xD000000000000012, 0x80000001DB52B680, v68);
  v50 = JSONObject.int64.getter();
  LOBYTE(v10) = v51;
  sub_1DB3151CC(v68);
  *(a3 + 240) = v50;
  *(a3 + 248) = v10 & 1;
  JSONObject.subscript.getter(0xD000000000000013, 0x80000001DB52B6A0, v68);
  v52 = JSONObject.int64.getter();
  LOBYTE(v10) = v53;
  sub_1DB3151CC(v68);
  *(a3 + 256) = v52;
  *(a3 + 264) = v10 & 1;
  JSONObject.subscript.getter(0x6F43737574617473, 0xEA00000000006564, v68);
  v54 = JSONObject.string.getter();
  v56 = v55;
  sub_1DB3151CC(v68);
  *(a3 + 272) = v54;
  *(a3 + 280) = v56;
  JSONObject.subscript.getter(0xD000000000000013, 0x80000001DB52B6C0, v68);
  v57 = JSONObject.string.getter();
  v59 = v58;
  sub_1DB3151CC(v68);
  *(a3 + 288) = v57;
  *(a3 + 296) = v59;
  JSONObject.subscript.getter(0xD000000000000015, 0x80000001DB52B6E0, v68);
  v60 = JSONObject.string.getter();
  v62 = v61;
  sub_1DB3151CC(v68);
  *(a3 + 304) = v60;
  *(a3 + 312) = v62;
  JSONObject.subscript.getter(0x746144776F4C7369, 0xED000065646F4D61, v68);
  LOBYTE(v60) = JSONObject.BOOL.getter();
  sub_1DB3151CC(v68);
  *(a3 + 320) = v60;
  JSONObject.subscript.getter(0x6D6954656C707061, 0xEE00707041676E69, v68);
  v63 = JSONObject.string.getter();
  v65 = v64;
  sub_1DB3151CC(a1);
  result = sub_1DB3151CC(v68);
  *(a3 + 328) = v63;
  *(a3 + 336) = v65;
  return result;
}