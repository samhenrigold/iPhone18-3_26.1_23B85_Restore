uint64_t sub_1DB4EA33C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 16) + 88))(*(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

uint64_t sub_1DB4EA404(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB4EA498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB4EA4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB4EA540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t AnyActionTypes.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2 | 0x8000000000000000;
  return result;
}

uint64_t static AnyActionTypes.makeInstances(byDeserializing:using:)(void *a1, void *a2)
{
  v7[2] = *a2;
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = *(v3 + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441A8, &qword_1DB514350);
  return v4(sub_1DB4EB084, v7, v5, v2, v3);
}

double static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_1DB30C4B8(a1, v9, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v10)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v9, v10);
    sub_1DB300B14(v6, v8);
    sub_1DB315520();
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v9);
      v9[0] = v5;
      static AnyActionTypes.makeInstance(byDeserializing:using:)(a1, v9, a3);
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    sub_1DB30623C(v9, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t static AnyActionTypes.makeInstance(byDeserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_1DB315EC4(0xD00000000000001FLL, 0x80000001DB52B490, *a2, v13);
  v6 = *(&v13[0] + 1);
  if ((~*(&v13[0] + 1) & 0xF000000000000007) != 0)
  {
    v8 = *&v13[0];
    JSONObject.subscript.getter(0x646E696B24, 0xE500000000000000, v13);
    v9 = JSONObject.string.getter();
    v11 = v10;
    sub_1DB3151CC(v13);
    if (v11)
    {
      *&v13[0] = v8;
      *(&v13[0] + 1) = v6;
      v14 = v5;
      AnyActionTypes.makeInstance(ofKind:byDeserializing:using:)(v9, v11, a1, &v14, a3);

      return sub_1DB3171A0(v8, v6);
    }

    sub_1DB3171A0(v8, v6);
    sub_1DB315178();
    swift_allocError();
    *v7 = xmmword_1DB50F500;
    *(v7 + 16) = 0x20000001F56F25D8uLL;
  }

  else
  {
    sub_1DB315178();
    swift_allocError();
    *v7 = 0xD00000000000001FLL;
    *(v7 + 8) = 0x80000001DB52B490;
    *(v7 + 16) = 0x20000001F56FF8D0uLL;
  }

  *(v7 + 24) = 0;
  return swift_willThrow();
}

uint64_t AnyActionTypes.init(types:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

void AnyActionTypes.makeInstance(ofKind:byDeserializing:using:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v5;
  v75 = a5;
  v12 = sub_1DB50B3E0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v64 - v19;
  v21 = *a4;
  v23 = *v7;
  v22 = v7[1];
  if ((v22 & 0x8000000000000000) == 0)
  {
    if (*(v23 + 16))
    {
      v24 = sub_1DB306160(a1, a2);
      if (v25)
      {
        v26 = *(v23 + 56) + 24 * v24;
        v27 = *(v26 + 16);
        v66 = *v26;
        sub_1DB3171C0(a3, v68);
        v67[0] = v21;
        v28 = v27[1];
        v72 = v66;
        v73 = v27;
        __swift_allocate_boxed_opaque_existential_0(v71);

        goto LABEL_9;
      }
    }

LABEL_12:
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441A8, &qword_1DB514350) | 0x6000000000000000;
    sub_1DB315178();
    swift_allocError();
    *v40 = a1;
    v40[1] = a2;
    v40[2] = v39;
    v40[3] = 0;
    swift_willThrow();

    return;
  }

  v65 = v17;
  *&v66 = v16;
  v29 = (*(*((v22 & 0x7FFFFFFFFFFFFFFFLL) + 8) + 16))(v23, v18);
  if (!*(v29 + 16) || (v30 = sub_1DB306160(a1, a2), (v31 & 1) == 0))
  {

    goto LABEL_12;
  }

  v32 = *(*(v29 + 56) + 8 * v30);

  v33 = dynamic_cast_existential_2_conditional(v32, v32, &protocol descriptor for ActionModel, &protocol descriptor for ExpressibleByJSON);
  if (v33)
  {
    v36 = v33;
    v37 = v34;
    v38 = v35;
    sub_1DB3171C0(a3, v68);
    v67[0] = v21;
    v28 = v38[1];
    *&v72 = v36;
    *(&v72 + 1) = v37;
    v73 = v38;
    __swift_allocate_boxed_opaque_existential_0(v71);

LABEL_9:
    v28(v68, v67);
    if (v6)
    {
      __swift_deallocate_boxed_opaque_existential_0(v71);
    }

    else
    {
      v66 = v72;
      v41 = v72;
      v42 = __swift_project_boxed_opaque_existential_1(v71, v72);
      v43 = v75;
      *(v75 + 24) = v66;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v43);
      (*(*(v41 - 8) + 16))(boxed_opaque_existential_0, v42, v41);
      __swift_destroy_boxed_opaque_existential_0(v71);
    }

    return;
  }

  v45 = dynamic_cast_existential_2_conditional(v32, v32, &protocol descriptor for ActionModel, MEMORY[0x1E69E6440]);
  if (v45)
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
    sub_1DB3171C0(a3, v71);
    v68[0] = v21;

    v73 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v68);
    v74 = MEMORY[0x1E69E7CC0];
    v67[3] = &type metadata for _JSONObjectDecoder;
    v67[4] = sub_1DB34A154();
    v67[0] = swift_allocObject();
    sub_1DB34A1A8(v71, v67[0] + 16);
    *&v69 = v48;
    *(&v69 + 1) = v49;
    v70 = v50;
    __swift_allocate_boxed_opaque_existential_0(v68);
    sub_1DB50ADB0();
    if (v6)
    {
      sub_1DB34A204(v71);
      __swift_deallocate_boxed_opaque_existential_0(v68);
      v71[0] = v6;
      v51 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
      if (swift_dynamicCast())
      {

        v52 = v65;
        v53 = v66;
        (*(v65 + 32))(v14, v20, v66);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1DB50EE90;
        *(v54 + 32) = swift_allocError();
        (*(v52 + 16))(v55, v14, v53);
        sub_1DB315178();
        swift_allocError();
        *v56 = v48;
        v56[1] = v54;
        v56[2] = 0;
        v56[3] = 0;
        swift_willThrow();
        (*(v52 + 8))(v14, v53);
      }
    }

    else
    {
      v66 = v69;
      v60 = v69;
      v61 = __swift_project_boxed_opaque_existential_1(v68, v69);
      v62 = v75;
      *(v75 + 24) = v66;
      v63 = __swift_allocate_boxed_opaque_existential_0(v62);
      (*(*(v60 - 8) + 16))(v63, v61, v60);
      sub_1DB34A204(v71);
      __swift_destroy_boxed_opaque_existential_0(v68);
    }
  }

  else
  {
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441A8, &qword_1DB514350);
    sub_1DB315178();
    swift_allocError();
    v58 = MEMORY[0x1E69E7CC0];
    *v59 = v57;
    v59[1] = v58;
    v59[2] = 0;
    v59[3] = 0;
    swift_willThrow();
  }
}

uint64_t static AnyActionTypes.tryToMakeInstances(byDeserializing:using:)(void *a1, void *a2)
{
  v7[2] = *a2;
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = *(v3 + 56);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441A8, &qword_1DB514350);
  return v4(sub_1DB4EBC68, v7, v5, v2, v3);
}

uint64_t AnyActionTypes.init<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = a2;
  v72 = a5;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v71 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC47528, &qword_1DB523308);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = sub_1DB50B120();
  v15 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v71 - v18;
  v93 = *a1;
  v81 = a4;
  v19 = type metadata accessor for ActionTypes(0, v7, a3, a4);
  v20 = sub_1DB4EB794(v19);

  v21 = 0;
  v22 = *(v20 + 64);
  v73 = v20 + 64;
  v77 = v20;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v83 = TupleTypeMetadata2 - 8;
  v74 = v9 + 16;
  v87 = (v9 + 32);
  v82 = (v15 + 32);
  v76 = v9;
  v80 = (v9 + 8);
  v27 = MEMORY[0x1E69E7CC8];
  v78 = v26;
  v79 = TupleTypeMetadata2;
  while (v25)
  {
    v30 = v21;
LABEL_15:
    v35 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v36 = v35 | (v30 << 6);
    v38 = v76;
    v37 = v77;
    v39 = v75;
    (*(v76 + 16))(v75, *(v77 + 48) + *(v76 + 72) * v36, v7);
    v40 = *(v37 + 56) + 24 * v36;
    v41 = *(v40 + 16);
    v42 = &v86[*(TupleTypeMetadata2 + 48)];
    v43 = *(v38 + 32);
    v34 = v86;
    v91 = *v40;
    v43(v86, v39, v7);
    v44 = 0;
    *v42 = v91;
    *(v42 + 2) = v41;
    v32 = v30;
    v33 = v85;
LABEL_16:
    v45 = *(TupleTypeMetadata2 - 8);
    (*(v45 + 56))(v34, v44, 1, TupleTypeMetadata2);
    (*v82)(v33, v34, v84);
    if ((*(v45 + 48))(v33, 1, TupleTypeMetadata2) == 1)
    {

      v70 = v72;
      *v72 = v27;
      v70[1] = 0;
      return result;
    }

    v46 = &v33[*(TupleTypeMetadata2 + 48)];
    v48 = *v46;
    v47 = *(v46 + 1);
    v88 = v32;
    v89 = v48;
    v49 = *(v46 + 2);
    v90 = v47;
    *&v91 = v49;
    (*v87)(v11, v33, v7);
    v50 = v11;
    v51 = v7;
    sub_1DB50A910();
    v52 = v93;
    v53 = v94;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v27;
    v56 = sub_1DB306160(v52, v53);
    v57 = v27[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      goto LABEL_31;
    }

    v60 = v55;
    if (v27[3] >= v59)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v7 = v51;
        if (v55)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1DB3131BC();
        v7 = v51;
        if (v60)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1DB31CEA0(v59, isUniquelyReferenced_nonNull_native);
      v61 = sub_1DB306160(v52, v53);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_33;
      }

      v56 = v61;
      v7 = v51;
      if (v60)
      {
LABEL_4:

        v27 = v92;
        v28 = (v92[7] + 24 * v56);
        v29 = v90;
        *v28 = v89;
        v28[1] = v29;
        v28[2] = v91;
        v11 = v50;
        (*v80)(v50, v7);
        goto LABEL_5;
      }
    }

    v27 = v92;
    v92[(v56 >> 6) + 8] |= 1 << v56;
    v63 = (v27[6] + 16 * v56);
    *v63 = v52;
    v63[1] = v53;
    v64 = (v27[7] + 24 * v56);
    v65 = v90;
    *v64 = v89;
    v64[1] = v65;
    v64[2] = v91;
    v11 = v50;
    (*v80)(v50, v7);
    v66 = v27[2];
    v67 = __OFADD__(v66, 1);
    v68 = v66 + 1;
    if (v67)
    {
      goto LABEL_32;
    }

    v27[2] = v68;
LABEL_5:
    v21 = v88;
    v26 = v78;
    TupleTypeMetadata2 = v79;
  }

  if (v26 <= v21 + 1)
  {
    v31 = v21 + 1;
  }

  else
  {
    v31 = v26;
  }

  v32 = v31 - 1;
  v33 = v85;
  v34 = v86;
  while (1)
  {
    v30 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v30 >= v26)
    {
      v25 = 0;
      v44 = 1;
      goto LABEL_16;
    }

    v25 = *(v73 + 8 * v30);
    ++v21;
    if (v25)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

uint64_t sub_1DB4EB794(uint64_t a1)
{
  v2 = *v1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECC47530, &qword_1DB523310);
  sub_1DB50A540();
  sub_1DB47D0C4(sub_1DB4EBEF0, v4, v2);
  return v7;
}

uint64_t ActionTypes.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECC47530, &qword_1DB523310);
  swift_getTupleTypeMetadata2();
  v7 = sub_1DB50A9D0();
  v8 = sub_1DB4EA020(v7, a1, v6, a2);

  v12 = v8;
  v9 = sub_1DB50A540();
  v10 = sub_1DB388A48(&v12, v9);

  *a3 = v10;
  return result;
}

uint64_t ActionTypes.registering(_:toKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v11 = *(a4 + 16);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = *v5;
  *a5 = v14;
  (*(v15 + 16))(v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v11, v12);
  v18[1] = a1;
  v18[2] = a2;
  v18[3] = a3;
  v18[0] = v14;

  v18[0] = sub_1DB4EB794(a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECC47530, &qword_1DB523310);
  sub_1DB50A540();
  sub_1DB50A5A0();
  sub_1DB4EBCB4(v18[0], a4);
}

uint64_t ActionTypes.makeInstance(ofKind:byDeserializing:using:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v23[0] = *v5;
  sub_1DB4EB794(a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC47530, &qword_1DB523310);
  sub_1DB50A590();

  v10 = v24;
  if (v24)
  {
    v12 = v25;
    v11 = v26;
    sub_1DB3171C0(a2, v23);
    v22 = v9;
    v13 = *(v11 + 8);
    *&v27 = v10;
    *(&v27 + 1) = v12;
    v28 = v11;
    __swift_allocate_boxed_opaque_existential_0(&v24);

    v13(v23, &v22, v10, v11);
    if (v6)
    {
      return __swift_deallocate_boxed_opaque_existential_0(&v24);
    }

    else
    {
      v21 = v27;
      v18 = v27;
      v19 = __swift_project_boxed_opaque_existential_1(&v24, v27);
      *(a5 + 24) = v21;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5);
      (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v19, v18);
      return __swift_destroy_boxed_opaque_existential_0(&v24);
    }
  }

  else
  {
    sub_1DB50A910();
    v15 = v25;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441A8, &qword_1DB514350) | 0x6000000000000000;
    sub_1DB315178();
    swift_allocError();
    *v17 = 0;
    v17[1] = v15;
    v17[2] = v16;
    v17[3] = 0;
    return swift_willThrow();
  }
}

void sub_1DB4EBCB4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECC47530, &qword_1DB523310);
  sub_1DB50A540();
  sub_1DB47D0C4(sub_1DB4EBEA8, v4, v3);
}

uint64_t sub_1DB4EBD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB4EBDC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DB4EBE24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1DB4EBEA8(void *a1)
{
  v3 = *(v1 + 40);

  *a1 = v3;
}

BOOL sub_1DB4EBF1C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

uint64_t sub_1DB4EBF58(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v1 + 7);
  v7 = &v15 - v6;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = v1[6];
    v16 = v1[5];
    v15 = __swift_project_boxed_opaque_existential_1(v1 + 2, v16);
    v11 = v1[8];
    (*(v5 + 16))(v7, a1, v4);
    v12 = (*(v5 + 80) + 48) & ~*(v5 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = *(v3 + 80);
    *(v13 + 3) = v4;
    *(v13 + 4) = v9;
    *(v13 + 5) = v11;
    (*(v5 + 32))(&v13[v12], v7, v4);
    v14 = *(v10 + 8);
    swift_unknownObjectRetain();

    v14(sub_1DB4EC504, v13, v16, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DB4EC134(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(v8 - v5, v6, v3);
  v8[1] = a1;
  swift_unknownObjectRetain();
  swift_setAtReferenceWritableKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t sub_1DB4EC248()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  MEMORY[0x1E1288310](v0 + 56);

  return v0;
}

uint64_t sub_1DB4EC278()
{
  sub_1DB4EC248();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t EventEmitter.addObserver<A>(on:target:property:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for PropertyEventObserver(0, *(*a3 + *MEMORY[0x1E69E6F98]), *(*a3 + *MEMORY[0x1E69E6F98] + 8), a4);
  sub_1DB30BE90(a1, v14);
  swift_allocObject();
  *&v14[0] = sub_1DB4EC44C(v14, a2, a3);
  v11 = *(a5 + 24);

  WitnessTable = swift_getWitnessTable();
  v11(v14, v10, WitnessTable, a4, a5);
}

uint64_t sub_1DB4EC44C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  sub_1DB2FEA0C(a1, v3 + 16);
  swift_unknownObjectWeakAssign();
  *(v3 + 64) = a3;
  return v3;
}

uint64_t _AsyncJust.AsyncIterator.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v9 = *(v6 + 56);
  v9(a3, 1, 1, a2);
  v7 = sub_1DB50B120();
  (*(*(v7 - 8) + 8))(a3, v7);
  (*(v6 + 32))(a3, a1, a2);

  return (v9)(a3, 0, 1, a2);
}

uint64_t _AsyncJust.AsyncIterator.element.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DB50B120();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _AsyncJust.AsyncIterator.element.setter(uint64_t a1)
{
  v3 = sub_1DB50B120();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t _AsyncJust.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB4ECFFC, 0, 0);
}

uint64_t _AsyncJust.AsyncIterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1DB50AAD0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1DB4EC850, v6, v8);
}

uint64_t sub_1DB4EC850()
{
  (*(*(*(v0[3] + 16) - 8) + 56))(v0[2], 1, 1, *(v0[3] + 16));
  sub_1DB50B120();
  sub_1DB50BC00();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB4EC910(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB38ACA4;

  return _AsyncJust.AsyncIterator.next()(a1, a2);
}

uint64_t sub_1DB4EC9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1DB4ECFF8;

  return _AsyncJust.AsyncIterator.next(isolation:)(a1, a2, a3, a5);
}

uint64_t _AsyncJust.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return _AsyncJust.AsyncIterator.init(_:)(v6, v3, a2);
}

uint64_t sub_1DB4ECBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _AsyncJust.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t _AsyncJust<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[6] = a3;
  v20 = a4;
  v19 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _AsyncJust(0, v9, v10, v11);
  v18 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v4)
  {
    v17 = v12;
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_1DB50BA80();
    (*(v19 + 32))(v14, v8, a2);
    __swift_destroy_boxed_opaque_existential_0(v21);
    (*(v18 + 32))(v20, v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t _AsyncJust<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DB50BB00();
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_1DB4ECF70(uint64_t a1)
{
  result = sub_1DB50B120();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB4ED004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_1DB4ED074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = sub_1DB50B120();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = v3[1];
  if (v10 == sub_1DB50AA00())
  {
    v11 = *(v5 - 8);
    return (*(v11 + 56))(a2, 1, 1, v5);
  }

  else
  {
    v17 = a2;
    v12 = (v7 + 8);
    while (1)
    {
      sub_1DB50AAB0();
      v11 = *(v5 - 8);
      if ((*(v11 + 48))(v9, 1, v5) != 1)
      {
        break;
      }

      (*v12)(v9, v6);
      sub_1DB4ED2A0(v3);
      v13 = v3[1];
      if (v13 == sub_1DB50AA00())
      {
        a2 = v17;
        return (*(v11 + 56))(a2, 1, 1, v5);
      }
    }

    v15 = v17;
    (*(v11 + 32))(v17, v9, v5);
    (*(v11 + 56))(v15, 0, 1, v5);
    return sub_1DB4ED2A0(v3);
  }
}

void *sub_1DB4ED2A0(void *result)
{
  v1 = result[2];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    sub_1DB50B120();

    v4 = sub_1DB50AA00();

    v5 = 0;
    if (v2 < v4)
    {
      v6 = v3[2];
      v7 = __OFADD__(v6, 1);
      v5 = v6 + 1;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v3[2] = v5;
    v8 = v3[1];
    v7 = __OFADD__(v8, 1);
    v9 = v8 + 1;
    if (!v7)
    {
      v3[1] = v9;
      return result;
    }
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1DB4ED368@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1DB4ED33C(*v1);
  v5 = v4;
  v7 = v6;

  *a1 = v3;
  a1[1] = v5;
  a1[2] = v7;
  return result;
}

uint64_t sub_1DB4ED3C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DB4ED3FC(v2, a1, a2);

  return v3;
}

uint64_t sub_1DB4ED400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OpaqueMetatype.init(of:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = DynamicType;
  return result;
}

uint64_t OpaqueMetatype.init<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v11);
  v8(a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  __swift_project_boxed_opaque_existential_1(v11, AssociatedTypeWitness);
  DynamicType = swift_getDynamicType();
  result = __swift_destroy_boxed_opaque_existential_0(v11);
  *a4 = DynamicType;
  return result;
}

uint64_t OpaqueMetatype.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB4ED640()
{
  result = qword_1EE30EAF0;
  if (!qword_1EE30EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30EAF0);
  }

  return result;
}

uint64_t sub_1DB4ED6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DB4ED6D4, 0, 0);
}

uint64_t sub_1DB4ED6D4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = v5;
  if (!v2)
  {

LABEL_9:
    v11 = v0[8];
    v0[5] = MEMORY[0x1E69E6158];
    v0[2] = 7628138;
    v0[3] = 0xE300000000000000;
    v13 = v1[3];
    v12 = v1[4];
    __swift_mutable_project_boxed_opaque_existential_1(v11, v13);
    (*(v12 + 16))(v0 + 2, 0x654D646E65537078, 0xEC000000646F6874, v13, v12);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    goto LABEL_10;
  }

  if (!*(v5 + 16) || (v7 = v0[9], v8 = sub_1DB306160(0x707954746E657665, 0xE900000000000065), (v9 & 1) == 0) || (sub_1DB300B14(*(v6 + 56) + 32 * v8, (v0 + 2)), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_10;
  }

  v10 = sub_1DB33114C(v0[6], v0[7], v7);

  if (v10)
  {
    goto LABEL_9;
  }

LABEL_10:
  v14 = v0[1];

  return v14();
}

uint64_t sub_1DB4ED8AC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB306AF4;

  return sub_1DB4ED6B4(a1, v6, v4);
}

uint64_t sub_1DB4ED9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000022 && 0x80000001DB531300 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DB50BA30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DB4EDA44(uint64_t a1)
{
  v2 = sub_1DB4EF414();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4EDA80(uint64_t a1)
{
  v2 = sub_1DB4EF414();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4EDB48@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB4EEE1C(a1, &qword_1ECC479A0, &unk_1DB524140, sub_1DB4EF414, &type metadata for AppleServicesPropertyScope.ExcludeIdentifierHeadersForAccountProperty.CodingKeys);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1DB4EDC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001DB531330 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DB50BA30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DB4EDCA4(uint64_t a1)
{
  v2 = sub_1DB4EF468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4EDCE0(uint64_t a1)
{
  v2 = sub_1DB4EF468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4EDDA8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB4EEE1C(a1, &qword_1ECC47998, &qword_1DB524138, sub_1DB4EF468, &type metadata for AppleServicesPropertyScope.AlwaysIncludeAuthKitHeadersProperty.CodingKeys);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1DB4EDE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000002ALL && 0x80000001DB531350 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DB50BA30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DB4EDF04(uint64_t a1)
{
  v2 = sub_1DB4EF4BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4EDF40(uint64_t a1)
{
  v2 = sub_1DB4EF4BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4EE008@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB4EEE1C(a1, &qword_1ECC47990, &qword_1DB524130, sub_1DB4EF4BC, &type metadata for AppleServicesPropertyScope.AlwaysIncludeMMeClientInfoAndDeviceHeadersProperty.CodingKeys);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1DB4EE0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001DB5313C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DB50BA30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DB4EE168(uint64_t a1)
{
  v2 = sub_1DB4F0108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4EE1A4(uint64_t a1)
{
  v2 = sub_1DB4F0108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4EE324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001DB531380 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DB50BA30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DB4EE3B8(uint64_t a1)
{
  v2 = sub_1DB4EF7F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4EE3F4(uint64_t a1)
{
  v2 = sub_1DB4EF7F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4EE4BC(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  a5();
  sub_1DB50BE40();
  sub_1DB50B870();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1DB4EE5F8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB4EEE1C(a1, &qword_1ECC47950, &qword_1DB524108, sub_1DB4EF7F0, &type metadata for AppleServicesPropertyScope.IsAnonymityEnabledProperty.CodingKeys);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1DB4EE698(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t a8)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  a7();
  sub_1DB50BE40();
  sub_1DB50B870();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1DB4EE804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x53676E696E676973 && a2 == 0xEC000000656C7974)
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

uint64_t sub_1DB4EE890(uint64_t a1)
{
  v2 = sub_1DB4EF844();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4EE8CC(uint64_t a1)
{
  v2 = sub_1DB4EF844();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static AppleServicesPropertyScope.SigningStyleProperty.value(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47878, &qword_1DB5239B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4EF844();
  result = sub_1DB50BDF0();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47888, &qword_1DB5239B8);
    sub_1DB4F0010(&qword_1ECC47890, &qword_1ECC47888, &qword_1DB5239B8, sub_1DB4EF898);
    sub_1DB50B780();
    result = (*(v6 + 8))(v8, v5);
    v10 = v12;
    if (v12 == 4)
    {
      v10 = 0;
    }

    *a2 = v10;
  }

  return result;
}

uint64_t sub_1DB4EEB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001DB5313A0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DB50BA30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DB4EEBAC(uint64_t a1)
{
  v2 = sub_1DB4EFF68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4EEBE8(uint64_t a1)
{
  v2 = sub_1DB4EFF68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4EEC68@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = sub_1DB4EF04C(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
  }

  return result;
}

uint64_t sub_1DB4EEE1C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DB50BDF0();
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47958, &qword_1DB524110);
    sub_1DB4F0010(&qword_1ECC47960, &qword_1ECC47958, &qword_1DB524110, sub_1DB4F008C);
    sub_1DB50B780();
    (*(v9 + 8))(v11, v8);
    v12 = v15;
  }

  return v12 & 1;
}

uint64_t sub_1DB4EF04C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  result = sub_1DB50BDF0();
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46C00, &qword_1DB516350);
    sub_1DB32500C(&qword_1ECC42FE0, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
    sub_1DB50B780();
    (*(v9 + 8))(v11, v8);
    return v13;
  }

  return result;
}

void *_s7JetCore26AppleServicesPropertyScopeV13allPropertiesSayAA010NetRequestE0_pXpGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42928, &qword_1DB50F3E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 32) = &type metadata for AppleServicesPropertyScope.IsAnonymityEnabledProperty;
  *(inited + 40) = &protocol witness table for AppleServicesPropertyScope.IsAnonymityEnabledProperty;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DB50EE90;
  *(v1 + 32) = &type metadata for AppleServicesPropertyScope.SigningStyleProperty;
  *(v1 + 40) = &protocol witness table for AppleServicesPropertyScope.SigningStyleProperty;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB50EE90;
  *(v2 + 32) = &type metadata for AppleServicesPropertyScope.AMSGrandSlamTokenID;
  *(v2 + 40) = &off_1EECE9768;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50EE90;
  *(v3 + 32) = &type metadata for AppleServicesPropertyScope.ExcludeIdentifierHeadersForAccountProperty;
  *(v3 + 40) = &protocol witness table for AppleServicesPropertyScope.ExcludeIdentifierHeadersForAccountProperty;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  *(v4 + 32) = &type metadata for AppleServicesPropertyScope.AlwaysIncludeAuthKitHeadersProperty;
  *(v4 + 40) = &protocol witness table for AppleServicesPropertyScope.AlwaysIncludeAuthKitHeadersProperty;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  *(v5 + 32) = &type metadata for AppleServicesPropertyScope.AlwaysIncludeMMeClientInfoAndDeviceHeadersProperty;
  *(v5 + 40) = &protocol witness table for AppleServicesPropertyScope.AlwaysIncludeMMeClientInfoAndDeviceHeadersProperty;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  *(v6 + 32) = &type metadata for AppleServicesPropertyScope.OverrideAccountWithIDProperty;
  *(v6 + 40) = &protocol witness table for AppleServicesPropertyScope.OverrideAccountWithIDProperty;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45CD0, &unk_1DB51D7C0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1DB523980;
  *(v7 + 32) = inited;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  v8 = _s7JetCore35NetRequestPropertyCollectionBuilderO10buildBlockySayAA0cdE0_pXpGAFd_tFZ_0(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E68, &qword_1DB516CD0);
  swift_arrayDestroy();
  return v8;
}

unint64_t sub_1DB4EF414()
{
  result = qword_1ECC47840;
  if (!qword_1ECC47840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47840);
  }

  return result;
}

unint64_t sub_1DB4EF468()
{
  result = qword_1ECC47850;
  if (!qword_1ECC47850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47850);
  }

  return result;
}

unint64_t sub_1DB4EF4BC()
{
  result = qword_1ECC47860;
  if (!qword_1ECC47860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47860);
  }

  return result;
}

uint64_t sub_1DB4EF510(char *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47940, &qword_1DB524100);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DB4EF844();
  sub_1DB50BE40();
  v10[15] = v8;
  sub_1DB4EFFBC();
  sub_1DB50B8A0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DB4EF65C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v16 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  a6();
  sub_1DB50BE40();
  v17 = a1;
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46C00, &qword_1DB516350);
  sub_1DB32500C(&qword_1ECC42FF0, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
  sub_1DB50B8A0();
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1DB4EF7F0()
{
  result = qword_1ECC47870;
  if (!qword_1ECC47870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47870);
  }

  return result;
}

unint64_t sub_1DB4EF844()
{
  result = qword_1ECC47880;
  if (!qword_1ECC47880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47880);
  }

  return result;
}

unint64_t sub_1DB4EF898()
{
  result = qword_1ECC47898;
  if (!qword_1ECC47898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC478A0, &qword_1DB5239C0);
    sub_1DB4EF91C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47898);
  }

  return result;
}

unint64_t sub_1DB4EF91C()
{
  result = qword_1ECC478A8;
  if (!qword_1ECC478A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478A8);
  }

  return result;
}

unint64_t sub_1DB4EFA44()
{
  result = qword_1ECC478B0;
  if (!qword_1ECC478B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478B0);
  }

  return result;
}

unint64_t sub_1DB4EFA9C()
{
  result = qword_1ECC478B8;
  if (!qword_1ECC478B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478B8);
  }

  return result;
}

unint64_t sub_1DB4EFAF4()
{
  result = qword_1ECC478C0;
  if (!qword_1ECC478C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478C0);
  }

  return result;
}

unint64_t sub_1DB4EFB4C()
{
  result = qword_1ECC478C8;
  if (!qword_1ECC478C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478C8);
  }

  return result;
}

unint64_t sub_1DB4EFBA4()
{
  result = qword_1ECC478D0;
  if (!qword_1ECC478D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478D0);
  }

  return result;
}

unint64_t sub_1DB4EFBFC()
{
  result = qword_1ECC478D8;
  if (!qword_1ECC478D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478D8);
  }

  return result;
}

unint64_t sub_1DB4EFC54()
{
  result = qword_1ECC478E0;
  if (!qword_1ECC478E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478E0);
  }

  return result;
}

unint64_t sub_1DB4EFCAC()
{
  result = qword_1ECC478E8;
  if (!qword_1ECC478E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478E8);
  }

  return result;
}

unint64_t sub_1DB4EFD04()
{
  result = qword_1ECC478F0;
  if (!qword_1ECC478F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478F0);
  }

  return result;
}

unint64_t sub_1DB4EFD5C()
{
  result = qword_1ECC478F8;
  if (!qword_1ECC478F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478F8);
  }

  return result;
}

unint64_t sub_1DB4EFDB4()
{
  result = qword_1ECC47900;
  if (!qword_1ECC47900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47900);
  }

  return result;
}

unint64_t sub_1DB4EFE0C()
{
  result = qword_1ECC47908;
  if (!qword_1ECC47908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47908);
  }

  return result;
}

unint64_t sub_1DB4EFE64()
{
  result = qword_1ECC47910;
  if (!qword_1ECC47910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47910);
  }

  return result;
}

unint64_t sub_1DB4EFEBC()
{
  result = qword_1ECC47918;
  if (!qword_1ECC47918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47918);
  }

  return result;
}

unint64_t sub_1DB4EFF14()
{
  result = qword_1ECC47920;
  if (!qword_1ECC47920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47920);
  }

  return result;
}

unint64_t sub_1DB4EFF68()
{
  result = qword_1ECC47930;
  if (!qword_1ECC47930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47930);
  }

  return result;
}

unint64_t sub_1DB4EFFBC()
{
  result = qword_1ECC47948;
  if (!qword_1ECC47948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47948);
  }

  return result;
}

uint64_t sub_1DB4F0010(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB4F008C()
{
  result = qword_1ECC47968;
  if (!qword_1ECC47968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC47970, &qword_1DB524118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47968);
  }

  return result;
}

unint64_t sub_1DB4F0108()
{
  result = qword_1ECC47980;
  if (!qword_1ECC47980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47980);
  }

  return result;
}

unint64_t sub_1DB4F0180()
{
  result = qword_1ECC479A8;
  if (!qword_1ECC479A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC479A8);
  }

  return result;
}

unint64_t sub_1DB4F01D8()
{
  result = qword_1ECC479B0;
  if (!qword_1ECC479B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC479B0);
  }

  return result;
}

unint64_t sub_1DB4F0230()
{
  result = qword_1ECC479B8;
  if (!qword_1ECC479B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC479B8);
  }

  return result;
}

unint64_t sub_1DB4F0288()
{
  result = qword_1ECC479C0;
  if (!qword_1ECC479C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC479C0);
  }

  return result;
}

unint64_t sub_1DB4F02E0()
{
  result = qword_1ECC479C8;
  if (!qword_1ECC479C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC479C8);
  }

  return result;
}

unint64_t sub_1DB4F0338()
{
  result = qword_1ECC479D0;
  if (!qword_1ECC479D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC479D0);
  }

  return result;
}

uint64_t PageRenderEventPrecision.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB4F0428()
{
  result = qword_1ECC479D8;
  if (!qword_1ECC479D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC479D8);
  }

  return result;
}

uint64_t Account.acAccountCopy.getter()
{
  [*v0 copy];
  sub_1DB50B200();
  swift_unknownObjectRelease();
  sub_1DB336FD4(0, &qword_1ECC479E0, 0x1E6959A28);
  swift_dynamicCast();
  return v2;
}

void Account.subscript.getter(uint64_t a1)
{
  v2 = *v1;
  swift_getAtKeyPath();
}

void Account.subscript.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v8 = *v2;
  v5 = v8;
  v6 = swift_readAtKeyPath();
  (*(*(*(v4 + *MEMORY[0x1E69E6F98] + 8) - 8) + 16))(a2);
  v6(v7, 0);
}

uint64_t Account.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_1DB4F0B98(a1, a2);
  v4 = *(*(*(v3 + *MEMORY[0x1E69E6F98] + 8) - 8) + 8);

  return v4(a1);
}

void (*Account.subscript.modify(void *a1, uint64_t *a2))(uint64_t ***a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*a2 + *MEMORY[0x1E69E6F98] + 8);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  Account.subscript.getter(a2, v11);
  return sub_1DB4F0850;
}

void sub_1DB4F0850(uint64_t ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);

    sub_1DB4F0B98(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {

    sub_1DB4F0B98(v4, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

double Account.value(forFlag:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ([*v2 ams:a1 accountFlagValueForAccountFlag:?])
  {
    sub_1DB50B200();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t Account.setValue(_:forFlag:)(void *a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v6 = *v2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [*v2 copy];
    sub_1DB50B200();
    swift_unknownObjectRelease();
    sub_1DB336FD4(0, &qword_1ECC479E0, 0x1E6959A28);
    swift_dynamicCast();
    v6 = v8;

    *v2 = v8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  [v6 ams:sub_1DB50BA20() setAccountFlagValue:a2 forAccountFlag:?];
  return swift_unknownObjectRelease();
}

uint64_t Account.cookies(for:)(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_1DB509BC0();
  v4 = [v2 ams:v3 cookiesForURL:?];

  sub_1DB336FD4(0, &qword_1ECC479E8, 0x1E696AC58);
  v5 = sub_1DB50A9A0();

  return v5;
}

uint64_t Account.storefront(for:)(uint64_t a1)
{
  v2 = [*v1 ams:a1 storefrontForMediaType:?];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1DB50A650();

  return v4;
}

uint64_t sub_1DB4F0B98(uint64_t a1, uint64_t *a2)
{
  v4 = *(*a2 + *MEMORY[0x1E69E6F98] + 8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v12 - v6;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v9 = *v2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [*v2 copy];
    sub_1DB50B200();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v9 = v12[1];

    *v2 = v9;
  }

  (*(v5 + 16))(v7, a1, v4);
  v12[2] = v9;
  v10 = v9;
  swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_1DB4F0D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = sub_1DB306160(a1, a2);
    if (v7)
    {
      sub_1DB300B14(*(a3 + 56) + 32 * v6, &v30);
      sub_1DB30C200(&v30, v35);
      sub_1DB300B14(v35, &v30);
      v8 = MEMORY[0x1E69E6158];
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v35);
        return v33[0];
      }

      if (qword_1ECC42228 != -1)
      {
        swift_once();
      }

      v10 = qword_1ECC466F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1DB50F8D0;
      v34 = sub_1DB301BC0(0, 27, 0, MEMORY[0x1E69E7CC0]);
      v12._object = 0x80000001DB5295A0;
      v12._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v12);
      v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC479F8, &qword_1DB5244A8);
      v33[0] = a1;
      v33[1] = a2;
      sub_1DB301CDC(v33, v29);
      v30 = 0u;
      v31 = 0u;

      sub_1DB301D4C(v29, &v30);
      v32 = 1;
      v13 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DB301BC0(0, *(v13 + 2) + 1, 1, v13);
        v34 = v13;
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1DB301BC0((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[40 * v15];
      v17 = v30;
      v18 = v31;
      v16[64] = v32;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
      v34 = v13;
      sub_1DB301DBC(v33);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      *(v11 + 32) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DB50EE90;
      *(&v31 + 1) = v8;
      *&v30 = 0xD000000000000027;
      *(&v30 + 1) = 0x80000001DB5295C0;
      *(v20 + 48) = 0u;
      *(v20 + 32) = 0u;
      sub_1DB301D4C(&v30, v20 + 32);
      *(v20 + 64) = 0;
      *(v11 + 40) = v20;
      v21 = sub_1DB50AF40();
      if (os_log_type_enabled(v10, v21))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v22 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v22 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v24 = swift_allocObject();
        *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v30 = v11;
        *(&v30 + 1) = sub_1DB314CB0;
        *&v31 = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v25 = sub_1DB50A5E0();
        v27 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1DB50EE90;
        *(v28 + 56) = v8;
        *(v28 + 64) = sub_1DB31494C();
        *(v28 + 32) = v25;
        *(v28 + 40) = v27;
        sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v10, v21, v28);
      }

      __swift_destroy_boxed_opaque_existential_0(v35);
    }
  }

  return 0;
}

double sub_1DB4F11A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16))
  {
    v8 = sub_1DB306160(a1, a2);
    if (v9)
    {
      sub_1DB300B14(*(a3 + 56) + 32 * v8, &v34);
      sub_1DB30C200(&v34, v38);
      sub_1DB300B14(v38, v37);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v38);
        v10 = v35;
        *a4 = v34;
        a4[1] = v10;
        result = *&v36;
        a4[2] = v36;
        return result;
      }

      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      sub_1DB301FA4(0, 0, 0, 0);
      if (qword_1ECC42228 != -1)
      {
        swift_once();
      }

      v12 = qword_1ECC466F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1DB50F8D0;
      v33 = sub_1DB301BC0(0, 27, 0, MEMORY[0x1E69E7CC0]);
      v14._object = 0x80000001DB5295A0;
      v14._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v14);
      v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC479F0, &unk_1DB524498);
      v37[0] = a1;
      v37[1] = a2;
      sub_1DB301CDC(v37, v32);
      v34 = 0u;
      v35 = 0u;

      sub_1DB301D4C(v32, &v34);
      LOBYTE(v36) = 1;
      v15 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1DB301BC0(0, *(v15 + 2) + 1, 1, v15);
        v33 = v15;
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_1DB301BC0((v16 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      v18 = &v15[40 * v17];
      v19 = v34;
      v20 = v35;
      v18[64] = v36;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
      v33 = v15;
      sub_1DB301DBC(v37);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      *(v13 + 32) = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DB50EE90;
      v23 = MEMORY[0x1E69E6158];
      *(&v35 + 1) = MEMORY[0x1E69E6158];
      *&v34 = 0xD000000000000027;
      *(&v34 + 1) = 0x80000001DB5295C0;
      *(v22 + 48) = 0u;
      *(v22 + 32) = 0u;
      sub_1DB301D4C(&v34, v22 + 32);
      *(v22 + 64) = 0;
      *(v13 + 40) = v22;
      v24 = sub_1DB50AF40();
      if (os_log_type_enabled(v12, v24))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v25 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v25[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v25 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v27 = swift_allocObject();
        *(v27 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v34 = v13;
        *(&v34 + 1) = sub_1DB31485C;
        *&v35 = v27;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v28 = sub_1DB50A5E0();
        v30 = v29;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1DB50EE90;
        *(v31 + 56) = v23;
        *(v31 + 64) = sub_1DB31494C();
        *(v31 + 32) = v28;
        *(v31 + 40) = v30;
        sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v12, v24, v31);
      }

      __swift_destroy_boxed_opaque_existential_0(v38);
    }
  }

  result = 0.0;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  return result;
}

uint64_t XPSamplingFieldsProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3[8] = a1;
  v3[9] = v4;
  v3[10] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DB4F1688, 0, 0);
}

uint64_t sub_1DB4F1688()
{
  v39 = v0;
  v1 = *(v0 + 10);
  v2 = *(v0 + 8);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = v5;
  if (!v1)
  {

    goto LABEL_9;
  }

  if (!*(v5 + 16) || (v7 = *(v0 + 10), v8 = sub_1DB306160(0x707954746E657665, 0xE900000000000065), (v9 & 1) == 0) || (sub_1DB300B14(*(v6 + 56) + 32 * v8, (v0 + 2)), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_24;
  }

  v10 = sub_1DB33114C(*(v0 + 6), *(v0 + 7), v7);

  if (v10)
  {
LABEL_9:
    sub_1DB4F11A4(0xD00000000000002ALL, 0x80000001DB5297B0, *(v0 + 9), &v34);
    if (!*(&v34 + 1))
    {
      goto LABEL_24;
    }

    v31 = *(&v34 + 1);
    v11 = v34;
    v32 = v35;
    v33 = v36;
    v12 = v37;
    v13 = v38;
    v14 = *(v0 + 8);
    v15 = MEMORY[0x1E69E63B0];
    *(v0 + 5) = MEMORY[0x1E69E63B0];
    *(v0 + 2) = v12;
    v16 = v2[3];
    v17 = v2[4];
    __swift_mutable_project_boxed_opaque_existential_1(v14, v16);
    (*(v17 + 16))(v0 + 2, 0xD000000000000019, 0x80000001DB528FE0, v16, v17);
    v18 = *(v0 + 8);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    *(v0 + 5) = v15;
    v0[2] = v13 * 1000.0;
    v19 = v2[3];
    v20 = v2[4];
    __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    (*(v20 + 16))(v0 + 2, 0xD000000000000011, 0x80000001DB529000, v19, v20);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v21 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v21[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v21 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      if ((os_variant_has_internal_content() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if ((os_unfair_lock_opaque_low & 1) == 0)
    {
LABEL_23:
      sub_1DB301FA4(v11, v31, v32, v33);
      goto LABEL_24;
    }

    if (qword_1EE30E8D0 != -1)
    {
      swift_once();
    }

    v23 = sub_1DB376278(v11, v31);
    if (v23 == 2 || (v23 & 1) == 0)
    {
      goto LABEL_23;
    }

    os_unfair_lock_lock(v21 + 5);
    v24 = LOBYTE(v21[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v21 + 5);
    if (v24 == 2)
    {
      if ((os_variant_has_internal_content() & 1) == 0)
      {
LABEL_22:
        v25 = 0;
LABEL_29:
        v28 = *(v0 + 8);
        *(v0 + 5) = MEMORY[0x1E69E6370];
        sub_1DB301FA4(v11, v31, v32, v33);
        *(v0 + 16) = v25 & 1;
        v30 = v2[3];
        v29 = v2[4];
        __swift_mutable_project_boxed_opaque_existential_1(v28, v30);
        (*(v29 + 16))(v0 + 2, 0xD000000000000010, 0x80000001DB528FC0, v30, v29);
        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
        goto LABEL_24;
      }
    }

    else if ((v24 & 1) == 0)
    {
      goto LABEL_22;
    }

    v25 = sub_1DB376278(v11, v31);
    goto LABEL_29;
  }

LABEL_24:
  v26 = *(v0 + 1);

  return v26();
}

uint64_t sub_1DB4F1AF0(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB306AF4;

  return XPSamplingFieldsProvider.addExpensiveMetricsFields(into:using:)(a1, a2);
}

id static TimeConversion.amsServerTime(from:)()
{
  v0 = objc_opt_self();
  v1 = sub_1DB509D40();
  v2 = [v0 serverTimeFromDate_];

  return v2;
}

id static TimeConversion.amsServerTime(fromTimeInterval:)(double a1)
{
  v1 = [objc_opt_self() serverTimeFromTimeInterval_];

  return v1;
}

uint64_t sub_1DB4F1C64@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47A40, &qword_1DB5245C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v10[1] = a1;
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v8 = type metadata accessor for DaemonError(0);
  if (swift_dynamicCast())
  {

    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    return sub_1DB4F2A10(v6, a2);
  }

  else
  {
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    sub_1DB30623C(v6, &qword_1ECC47A40, &qword_1DB5245C0);
    *a2 = a1;
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t DaemonError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_1DB50A350();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = type metadata accessor for DaemonError(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_1DB4F234C(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000018, 0x80000001DB531440);
      sub_1DB50ADA0();
      MEMORY[0x1E1285C70](0x73646E6F63657320, 0xE800000000000000);
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        return 0xD000000000000022;
      }

      v28 = *v8;
      v13 = v28;
      v14 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47A00, &qword_1DB5244C0);
      if (swift_dynamicCast())
      {
        sub_1DB2FEA0C(v26, &v29);
        __swift_project_boxed_opaque_existential_1(&v29, v31);
        v15 = sub_1DB509A80();

        __swift_destroy_boxed_opaque_existential_0(&v29);
        return v15;
      }

      v27 = 0;
      memset(v26, 0, sizeof(v26));
      sub_1DB30623C(v26, &qword_1ECC47A08, &qword_1DB5244C8);
      v29 = 0;
      v30 = 0xE000000000000000;
      swift_getErrorValue();
      sub_1DB50BA00();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v5, v8, v2);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_1DB50B320();

      v29 = 0xD000000000000025;
      v30 = 0x80000001DB531410;
      sub_1DB4F29C8(&qword_1ECC47A10, MEMORY[0x1E69E84C0], MEMORY[0x1E69E84C8]);
      v10 = sub_1DB50BC80();
      MEMORY[0x1E1285C70](v10);

      v11 = v29;
      (*(v3 + 8))(v5, v2);
      return v11;
    }

    v20 = *v8;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1DB50B320();

    v29 = 0xD000000000000012;
    v30 = 0x80000001DB5313F0;
    v21 = [v20 description];
    v22 = sub_1DB50A650();
    v24 = v23;

    MEMORY[0x1E1285C70](v22, v24);
  }

  else
  {
    v16 = *v8;
    v17 = *(v8 + 1);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1DB50B320();

    v29 = 0xD000000000000016;
    v30 = 0x80000001DB531490;
    *&v26[0] = v16;
    v18 = sub_1DB50B8F0();
    MEMORY[0x1E1285C70](v18);

    MEMORY[0x1E1285C70](0x202C736574796220, 0xEF203A74696D696CLL);
    *&v26[0] = v17;
    v19 = sub_1DB50B8F0();
    MEMORY[0x1E1285C70](v19);

    MEMORY[0x1E1285C70](0x736574796220, 0xE600000000000000);
  }

  return v29;
}

uint64_t type metadata accessor for DaemonError(uint64_t a1)
{
  result = qword_1ECC47A20;
  if (!qword_1ECC47A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB4F234C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DaemonError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t DaemonError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = sub_1DB50A350();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DaemonError(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DB4F234C(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 4:
      v17 = *v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB50EE90;
      *(inited + 32) = sub_1DB50A650();
      *(inited + 40) = v19;
      swift_getErrorValue();
      v20 = v24[20];
      v21 = v25;
      *(inited + 72) = v25;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
      (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v20, v21);
      v13 = sub_1DB3135C0(inited);
      swift_setDeallocating();
      sub_1DB30623C(inited + 32, &unk_1ECC46BD0, &qword_1DB519760);

      break;
    case 2:
      v14 = *v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_1DB50EE90;
      *(v15 + 32) = sub_1DB50A650();
      *(v15 + 40) = v16;
      *(v15 + 72) = sub_1DB4F2878();
      *(v15 + 48) = v14;
      v13 = sub_1DB3135C0(v15);
      swift_setDeallocating();
      sub_1DB30623C(v15 + 32, &unk_1ECC46BD0, &qword_1DB519760);
      break;
    case 1:
      (*(v3 + 32))(v5, v8, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_1DB50EE90;
      *(v10 + 32) = sub_1DB50A650();
      *(v10 + 40) = v11;
      *(v10 + 72) = v2;
      v12 = __swift_allocate_boxed_opaque_existential_0((v10 + 48));
      (*(v3 + 16))(v12, v5, v2);
      v13 = sub_1DB3135C0(v10);
      swift_setDeallocating();
      sub_1DB30623C(v10 + 32, &unk_1ECC46BD0, &qword_1DB519760);
      (*(v3 + 8))(v5, v2);
      break;
    default:
      v13 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
      sub_1DB4F281C(v8);
      break;
  }

  return v13;
}

uint64_t sub_1DB4F2744(uint64_t a1)
{
  v2 = sub_1DB4F29C8(&qword_1ECC47A38, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DB4F27B0(uint64_t a1)
{
  v2 = sub_1DB4F29C8(&qword_1ECC47A38, type metadata accessor for DaemonError, &protocol conformance descriptor for DaemonError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1DB4F281C(uint64_t a1)
{
  v2 = type metadata accessor for DaemonError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DB4F2878()
{
  result = qword_1ECC47A18;
  if (!qword_1ECC47A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC47A18);
  }

  return result;
}

void sub_1DB4F28C4(uint64_t a1)
{
  sub_1DB4F2968();
  if (v1 <= 0x3F)
  {
    sub_1DB50A350();
    if (v2 <= 0x3F)
    {
      sub_1DB4F2878();
      if (v3 <= 0x3F)
      {
        sub_1DB35C910();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1DB4F2968()
{
  if (!qword_1ECC47A30)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECC47A30);
    }
  }
}

uint64_t sub_1DB4F29C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DB4F2A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DaemonError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t JetPackAsset.Metadata.etag.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JetPackAsset.Metadata.etag.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t JetPackAsset.Metadata.lastModified.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t JetPackAsset.Metadata.lastModified.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t JetPackAsset.Metadata.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  if (*(v1 + 24))
  {
    if (qword_1ECC42300 != -1)
    {
      swift_once();
    }

    v6 = qword_1ECC47A48;
    v7 = sub_1DB50A620();
    v8 = [v6 dateFromString_];

    if (v8)
    {
      sub_1DB509DB0();

      v9 = sub_1DB509DD0();
      (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    }

    else
    {
      v13 = sub_1DB509DD0();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }

    return sub_1DB35EA44(v5, a1);
  }

  else
  {
    v10 = sub_1DB509DD0();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t JetPackAsset.Metadata.revalidatedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JetPackAsset.Metadata(0) + 24);
  v4 = sub_1DB509DD0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JetPackAsset.Metadata.revalidatedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JetPackAsset.Metadata(0) + 24);
  v4 = sub_1DB509DD0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

__n128 JetPackAsset.Metadata.osVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 28));
  v4 = v3[1].n128_u64[0];
  v5 = v3[1].n128_u8[8];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  a1[1].n128_u8[8] = v5;
  return result;
}

__n128 JetPackAsset.Metadata.osVersion.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = (v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 28));
  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u8[8] = v3;
  return result;
}

uint64_t JetPackAsset.Metadata.buildNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for JetPackAsset.Metadata(0) + 32));

  return v1;
}

uint64_t JetPackAsset.Metadata.buildNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for JetPackAsset.Metadata(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t JetPackAsset.Metadata.assetVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for JetPackAsset.Metadata(0) + 36));

  return v1;
}

uint64_t JetPackAsset.Metadata.assetVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for JetPackAsset.Metadata(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t JetPackAsset.Metadata.serverExpired.setter(char a1)
{
  result = type metadata accessor for JetPackAsset.Metadata(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t JetPackAsset.Metadata.policy.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for JetPackAsset.Metadata(0);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = v4[2];
  v8 = *(v4 + 24);
  v9 = v4[4];
  v10 = *(v4 + 40);
  LOBYTE(v4) = *(v4 + 41);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 41) = v4;
  return result;
}

uint64_t JetPackAsset.Metadata.policy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a1[4];
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  result = type metadata accessor for JetPackAsset.Metadata(0);
  v10 = v1 + *(result + 44);
  *v10 = v2;
  *(v10 + 8) = v3;
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 41) = v8;
  return result;
}

id sub_1DB4F330C()
{
  result = sub_1DB4F334C();
  qword_1ECC47A48 = result;
  return result;
}

id sub_1DB4F334C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC47AC8, &qword_1DB524D20);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1DB509E40();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v8 = sub_1DB50A620();
  [v7 setDateFormat_];

  sub_1DB509E10();
  v9 = sub_1DB509E30();
  (*(v4 + 8))(v6, v3);
  [v7 setLocale_];

  sub_1DB509E60();
  v10 = sub_1DB509E90();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v2, 1, v10) != 1)
  {
    v12 = sub_1DB509E70();
    (*(v11 + 8))(v2, v10);
  }

  [v7 setTimeZone_];

  return v7;
}

uint64_t JetPackAsset.Metadata.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for JetPackAsset.Metadata(0);
  v3 = (v0 + v2[9]);
  if (!v3[1])
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!v0[1])
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v4 = *v3;
  strcpy(&v58, "assetVersion=");
  HIWORD(v58) = -4864;
  MEMORY[0x1E1285C70](v4);
  v5 = v58;
  v6 = sub_1DB302404(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1DB302404((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  *&v6[16 * v8 + 32] = v5;
  if (v0[1])
  {
LABEL_7:
    v9 = *v0;
    *&v58 = 0x3D67617465;
    *(&v58 + 1) = 0xE500000000000000;
    MEMORY[0x1E1285C70](v9);
    v10 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DB302404(0, *(v6 + 2) + 1, 1, v6);
    }

    v12 = *(v6 + 2);
    v11 = *(v6 + 3);
    if (v12 >= v11 >> 1)
    {
      v6 = sub_1DB302404((v11 > 1), v12 + 1, 1, v6);
    }

    *(v6 + 2) = v12 + 1;
    *&v6[16 * v12 + 32] = v10;
  }

LABEL_12:
  if (v0[3])
  {
    v13 = v0[2];
    strcpy(&v58, "lastModified=");
    HIWORD(v58) = -4864;
    MEMORY[0x1E1285C70](v13);
    v14 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DB302404(0, *(v6 + 2) + 1, 1, v6);
    }

    v16 = *(v6 + 2);
    v15 = *(v6 + 3);
    if (v16 >= v15 >> 1)
    {
      v6 = sub_1DB302404((v15 > 1), v16 + 1, 1, v6);
    }

    *(v6 + 2) = v16 + 1;
    *&v6[16 * v16 + 32] = v14;
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  v18 = sub_1DB509D40();
  v19 = [v17 stringFromDate_];

  v20 = sub_1DB50A650();
  v22 = v21;

  sub_1DB50B320();

  strcpy(&v58, "revalidatedAt=");
  HIBYTE(v58) = -18;
  MEMORY[0x1E1285C70](v20, v22);

  v23 = v58;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1DB302404(0, *(v6 + 2) + 1, 1, v6);
  }

  v25 = *(v6 + 2);
  v24 = *(v6 + 3);
  if (v25 >= v24 >> 1)
  {
    v6 = sub_1DB302404((v24 > 1), v25 + 1, 1, v6);
  }

  *(v6 + 2) = v25 + 1;
  *&v6[16 * v25 + 32] = v23;
  v26 = v1 + v2[7];
  if ((v26[24] & 1) == 0)
  {
    v27 = *(v26 + 2);
    v64 = 0x6F6973726556736FLL;
    v65 = 0xEA00000000003D6ELL;
    v58 = *v26;
    v59 = v27;
    v28 = JetPackAsset.OSVersion.description.getter();
    MEMORY[0x1E1285C70](v28);

    v30 = *(v6 + 2);
    v29 = *(v6 + 3);
    if (v30 >= v29 >> 1)
    {
      v6 = sub_1DB302404((v29 > 1), v30 + 1, 1, v6);
    }

    *(v6 + 2) = v30 + 1;
    v31 = &v6[16 * v30];
    *(v31 + 4) = 0x6F6973726556736FLL;
    *(v31 + 5) = 0xEA00000000003D6ELL;
  }

  v32 = (v1 + v2[8]);
  if (v32[1])
  {
    v33 = *v32;
    strcpy(&v58, "buildNumber=");
    BYTE13(v58) = 0;
    HIWORD(v58) = -5120;
    MEMORY[0x1E1285C70](v33);
    v34 = v58;
    v36 = *(v6 + 2);
    v35 = *(v6 + 3);
    if (v36 >= v35 >> 1)
    {
      v6 = sub_1DB302404((v35 > 1), v36 + 1, 1, v6);
    }

    *(v6 + 2) = v36 + 1;
    *&v6[16 * v36 + 32] = v34;
  }

  v37 = *(v1 + v2[10]);
  if (v37 != 2)
  {
    sub_1DB50B320();

    strcpy(&v58, "serverExpired=");
    HIBYTE(v58) = -18;
    if (v37)
    {
      v38 = 1702195828;
    }

    else
    {
      v38 = 0x65736C6166;
    }

    if (v37)
    {
      v39 = 0xE400000000000000;
    }

    else
    {
      v39 = 0xE500000000000000;
    }

    MEMORY[0x1E1285C70](v38, v39);

    v40 = v58;
    v42 = *(v6 + 2);
    v41 = *(v6 + 3);
    if (v42 >= v41 >> 1)
    {
      v6 = sub_1DB302404((v41 > 1), v42 + 1, 1, v6);
    }

    *(v6 + 2) = v42 + 1;
    *&v6[16 * v42 + 32] = v40;
  }

  v64 = 0x3D7963696C6F70;
  v65 = 0xE700000000000000;
  v43 = v1 + v2[11];
  v44 = *v43;
  v45 = v43[8];
  v46 = *(v43 + 2);
  v47 = v43[24];
  v48 = *(v43 + 4);
  v49 = v43[40];
  LOBYTE(v43) = v43[41];
  *&v58 = v44;
  BYTE8(v58) = v45;
  v59 = v46;
  v60 = v47;
  v61 = v48;
  v62 = v49;
  v63 = v43;
  v50 = JetPackAsset.Policy.description.getter();
  MEMORY[0x1E1285C70](v50);

  v52 = *(v6 + 2);
  v51 = *(v6 + 3);
  if (v52 >= v51 >> 1)
  {
    v6 = sub_1DB302404((v51 > 1), v52 + 1, 1, v6);
  }

  *(v6 + 2) = v52 + 1;
  v53 = &v6[16 * v52];
  *(v53 + 4) = 0x3D7963696C6F70;
  *(v53 + 5) = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB3370CC(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70, MEMORY[0x1E69E6310]);
  v54 = sub_1DB50A5E0();
  v56 = v55;

  MEMORY[0x1E1285C70](v54, v56);

  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  return 0x617461646174654DLL;
}

uint64_t sub_1DB4F3C4C()
{
  v1 = *v0;
  v2 = 1734440037;
  v3 = 0x7845726576726573;
  if (v1 != 6)
  {
    v3 = 0x7963696C6F70;
  }

  v4 = 0x6D754E646C697562;
  if (v1 != 4)
  {
    v4 = 0x7265567465737361;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6164696C61766572;
  if (v1 != 2)
  {
    v5 = 0x6F6973726556736FLL;
  }

  if (*v0)
  {
    v2 = 0x69646F4D7473616CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB4F3D70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB4F78F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB4F3DA4(uint64_t a1)
{
  v2 = sub_1DB4F6B44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F3DE0(uint64_t a1)
{
  v2 = sub_1DB4F6B44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JetPackAsset.Metadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47A50, &qword_1DB5245C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4F6B44();
  sub_1DB50BE40();
  LOBYTE(v21) = 0;
  sub_1DB50B800();
  if (!v2)
  {
    LOBYTE(v21) = 1;
    sub_1DB50B800();
    v10 = type metadata accessor for JetPackAsset.Metadata(0);
    LOBYTE(v21) = 2;
    sub_1DB509DD0();
    sub_1DB4F6C40(&qword_1EE30E278, MEMORY[0x1E6969538]);
    sub_1DB50B8A0();
    v11 = (v3 + *(v10 + 28));
    v12 = *(v11 + 2);
    v13 = *(v11 + 24);
    v21 = *v11;
    v22 = v12;
    v23 = v13;
    v27 = 3;
    sub_1DB4F6B98();
    sub_1DB50B830();
    LOBYTE(v21) = 4;
    sub_1DB50B800();
    LOBYTE(v21) = 5;
    sub_1DB50B800();
    LOBYTE(v21) = 6;
    sub_1DB50B810();
    v14 = (v3 + *(v10 + 44));
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = v14[2];
    v18 = *(v14 + 24);
    v19 = v14[4];
    v20 = *(v14 + 40);
    LOBYTE(v14) = *(v14 + 41);
    *&v21 = v15;
    BYTE8(v21) = v16;
    v22 = v17;
    v23 = v18;
    v24 = v19;
    v25 = v20;
    v26 = v14;
    v27 = 7;
    sub_1DB4F6BEC();
    sub_1DB50B8A0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t JetPackAsset.Metadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = sub_1DB509DD0();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47A58, &qword_1DB5245D0);
  v7 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v9 = &v47 - v8;
  v10 = type metadata accessor for JetPackAsset.Metadata(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v12 + v13[7];
  *v14 = 0;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  v14[24] = 1;
  v54 = a1;
  v55 = v13;
  v15 = v13[11];
  v53 = v12;
  v16 = v12 + v15;
  *v16 = 0x4014000000000000;
  v16[8] = 0;
  *(v16 + 2) = 0;
  v16[24] = 1;
  *(v16 + 4) = 0x4143C68000000000;
  *(v16 + 20) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4F6B44();
  sub_1DB50BDF0();
  if (v2)
  {
    v56 = v2;
    v19 = 0;
    v20 = v55;
    goto LABEL_4;
  }

  v48 = v7;
  LOBYTE(v57) = 0;
  v17 = v50;
  v18 = sub_1DB50B6E0();
  v22 = v53;
  *v53 = v18;
  v22[1] = v23;
  LOBYTE(v57) = 1;
  v24 = sub_1DB50B6E0();
  v56 = 0;
  v22[2] = v24;
  v22[3] = v25;
  v47 = v25;
  LOBYTE(v57) = 2;
  sub_1DB4F6C40(&qword_1EE30E268, MEMORY[0x1E6969558]);
  v26 = v52;
  v27 = v56;
  sub_1DB50B780();
  v56 = v27;
  if (v27)
  {
    (*(v48 + 8))(v9, v17);
    v19 = 0;
LABEL_12:
    v20 = v55;
    goto LABEL_4;
  }

  (*(v51 + 32))(v22 + v55[6], v6, v26);
  v63 = 3;
  sub_1DB4F6C84();
  v28 = v56;
  sub_1DB50B710();
  if (v28)
  {
    v56 = v28;
    (*(v48 + 8))(v9, v17);
    v19 = 1;
    goto LABEL_12;
  }

  v29 = v58;
  v30 = v59;
  *v14 = v57;
  *(v14 + 2) = v29;
  v14[24] = v30;
  LOBYTE(v57) = 4;
  v31 = sub_1DB50B6E0();
  v20 = v55;
  v32 = v53;
  v33 = (v53 + v55[8]);
  *v33 = v31;
  v33[1] = v34;
  LOBYTE(v57) = 5;
  v35 = sub_1DB50B6E0();
  v36 = (v32 + v20[9]);
  *v36 = v35;
  v36[1] = v37;
  LOBYTE(v57) = 6;
  v38 = sub_1DB50B6F0();
  v56 = 0;
  *(v32 + v20[10]) = v38;
  v63 = 7;
  sub_1DB4242A8();
  v39 = v56;
  sub_1DB50B780();
  v56 = v39;
  if (!v39)
  {
    (*(v48 + 8))(v9, v50);
    v40 = BYTE8(v57);
    v41 = v58;
    v42 = v59;
    v43 = v60;
    v44 = v61;
    v45 = v62;
    *v16 = v57;
    v16[8] = v40;
    *(v16 + 2) = v41;
    v16[24] = v42;
    *(v16 + 4) = v43;
    v16[40] = v44;
    v16[41] = v45;
    v46 = v53;
    sub_1DB4F6CD8(v53, v49);
    __swift_destroy_boxed_opaque_existential_0(v54);
    return sub_1DB4F6D3C(v46);
  }

  (*(v48 + 8))(v9, v50);
  v19 = 1;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v54);

  if (v19)
  {
    (*(v51 + 8))(v53 + v20[6], v52);
  }
}

__n128 sub_1DB4F47A0()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];
  v1 = v5;
  v3 = v4;

  result = v3;
  xmmword_1EE312DC0 = v3;
  qword_1EE312DD0 = v1;
  return result;
}

uint64_t JetPackAsset.OSVersion.description.getter()
{
  v3 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](46, 0xE100000000000000);
  v0 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v0);

  MEMORY[0x1E1285C70](46, 0xE100000000000000);
  v1 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v1);

  return v3;
}

uint64_t sub_1DB4F495C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB4F7BA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB4F4984(uint64_t a1)
{
  v2 = sub_1DB4F6D98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F49C0(uint64_t a1)
{
  v2 = sub_1DB4F6D98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JetPackAsset.OSVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47A60, &qword_1DB5245D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4F6D98();
  sub_1DB50BE40();
  v13 = 0;
  sub_1DB50B890();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = 1;
  sub_1DB50B890();
  v11 = 2;
  sub_1DB50B890();
  return (*(v5 + 8))(v7, v4);
}

uint64_t JetPackAsset.OSVersion.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47A68, &qword_1DB5245E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4F6D98();
  sub_1DB50BDF0();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_1DB50B770();
    v16 = 1;
    v14 = sub_1DB50B770();
    v15 = 2;
    v11 = sub_1DB50B770();
    (*(v6 + 8))(v8, v5);
    v12 = v14;
    *a2 = v9;
    a2[1] = v12;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

JetCore::JetPackAsset::Policy::OSInvalidation_optional __swiftcall JetPackAsset.Policy.OSInvalidation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB50B680();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t JetPackAsset.Policy.OSInvalidation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x726F6A616DLL;
  v3 = 0x6863746170;
  v4 = 0x646C697562;
  if (v1 != 3)
  {
    v4 = 1701736302;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F6E696DLL;
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

uint64_t sub_1DB4F4ED4()
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB4F4FA0(uint64_t a1)
{
  sub_1DB50A740();
}

uint64_t sub_1DB4F5058(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

void sub_1DB4F512C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x726F6A616DLL;
  v5 = 0xE500000000000000;
  v6 = 0x6863746170;
  v7 = 0xE500000000000000;
  v8 = 0x646C697562;
  if (v2 != 3)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x726F6E696DLL;
    v3 = 0xE500000000000000;
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

uint64_t JetPackAsset.Policy.maxAge.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t JetPackAsset.Policy.nonBlockingRevalidateAge.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t JetPackAsset.Policy.evictAge.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t JetPackAsset.Policy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47A70, &qword_1DB5245E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4F6DEC();
  sub_1DB50BDF0();
  if (!v2)
  {
    LOBYTE(v30) = 0;
    if (sub_1DB50B7B0())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC443A8, &qword_1DB514D10);
      LOBYTE(v27) = 0;
      sub_1DB4F6E94();
      sub_1DB50B780();
      v34 = a2;
      v9 = v30;
      v10 = v31;
    }

    else
    {
      v34 = a2;
      v10 = 0;
      v9 = 0x40AC200000000000;
    }

    LODWORD(v11) = 1;
    LOBYTE(v30) = 1;
    if (sub_1DB50B7B0())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC443A8, &qword_1DB514D10);
      LOBYTE(v27) = 1;
      sub_1DB4F6E94();
      sub_1DB50B780();
      LODWORD(v26) = v10;
      v25 = v30;
      LODWORD(v11) = v31;
    }

    else
    {
      LODWORD(v26) = v10;
      v25 = 0;
    }

    LOBYTE(v30) = 2;
    if (sub_1DB50B7B0())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC443A8, &qword_1DB514D10);
      LOBYTE(v27) = 2;
      sub_1DB4F6E94();
      sub_1DB50B780();
      v23 = v30;
      v24 = v31;
    }

    else
    {
      v24 = 0;
      v23 = 0x4143C68000000000;
    }

    LOBYTE(v30) = 0;
    v12 = v9;
    if (sub_1DB50B7B0() & 1) != 0 && (LOBYTE(v30) = 1, (sub_1DB50B7B0() & v26 & v11))
    {
      sub_1DB3CB74C("JetCore/JetPackAsset.swift", 0x1AuLL, 2, 0xB5uLL);
      LODWORD(v26) = 0;
      v12 = 0x40AC200000000000;
      LOBYTE(v11) = 1;
      v13 = v34;
    }

    else
    {
      LOBYTE(v30) = 0;
      v14 = sub_1DB50B7B0();
      v13 = v34;
      if (v14)
      {
        LOBYTE(v30) = 2;
        if (sub_1DB50B7B0())
        {
          if (v26)
          {
            if (v24 && v11)
            {
              v22 = v12;
              if (qword_1EE30C928 != -1)
              {
                swift_once();
              }

              sub_1DB50BEB0();
              v25 = v32;
              v26 = v33;
              v21 = __swift_project_boxed_opaque_existential_1(&v30, v32);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
              v11 = swift_allocObject();
              *(v11 + 16) = xmmword_1DB50F8D0;
              v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
              v15 = swift_allocObject();
              v19 = xmmword_1DB50EE90;
              *(v15 + 16) = xmmword_1DB50EE90;
              v29 = MEMORY[0x1E69E6158];
              v27 = 0xD00000000000005ELL;
              v28 = 0x80000001DB5314C0;
              *(v15 + 48) = 0u;
              *(v15 + 32) = 0u;
              sub_1DB301D4C(&v27, v15 + 32);
              *(v15 + 64) = 0;
              *(v11 + 32) = v15;
              v16 = swift_allocObject();
              *(v16 + 16) = v19;
              v29 = MEMORY[0x1E69E6158];
              v27 = 0xD00000000000002BLL;
              v28 = 0x80000001DB531520;
              *(v16 + 48) = 0u;
              *(v16 + 32) = 0u;
              sub_1DB301D4C(&v27, v16 + 32);
              *(v16 + 64) = 0;
              *(v11 + 40) = v16;
              Logger.warning(_:)(v11, v25, v26);

              __swift_destroy_boxed_opaque_existential_0(&v30);
              LOBYTE(v11) = 0;
              LODWORD(v26) = 1;
              v25 = 0x40AC200000000000;
              v12 = v22;
            }

            else
            {
              LODWORD(v26) = 1;
            }
          }

          else
          {
            LODWORD(v26) = 0;
          }
        }
      }
    }

    LOBYTE(v27) = 3;
    sub_1DB4F6E40();
    sub_1DB50B710();
    (*(v6 + 8))(v8, v5);
    v17 = v30;
    if (v30 == 5)
    {
      v17 = 0;
    }

    *v13 = v12;
    *(v13 + 8) = v26;
    *(v13 + 16) = v25;
    *(v13 + 24) = v11;
    *(v13 + 32) = v23;
    *(v13 + 40) = v24;
    *(v13 + 41) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t JetPackAsset.Policy.description.getter()
{
  v5 = *(v1 + 2);
  v6 = *(v1 + 24);
  v7 = *(v1 + 4);
  v8 = *(v1 + 40);
  if ((v1[1] & 1) == 0)
  {
    v9 = *v1;
    v24 = 0x3D65674178616DLL;
    v25 = 0xE700000000000000;
    if ((~v9 & 0x7FF0000000000000) != 0)
    {
      v10 = *&v9;
      v9 = 0xC3E0000000000001;
      if (v10 > -9.22337204e18)
      {
        v9 = 0x43E0000000000000;
        if (v10 >= 9.22337204e18)
        {
          goto LABEL_28;
        }

        v11 = sub_1DB50B8F0();
        MEMORY[0x1E1285C70](v11);

        v2 = v24;
        v3 = v25;
        v0 = sub_1DB302404(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v4 = *(v0 + 2);
        v9 = *(v0 + 3);
        v1 = (v4 + 1);
        if (v4 >= v9 >> 1)
        {
          goto LABEL_31;
        }

        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  v0 = MEMORY[0x1E69E7CC0];
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  while ((v8 & 1) == 0)
  {
    while (1)
    {
      v24 = 0x6567417463697665;
      v25 = 0xE90000000000003DLL;
      v9 = 0x7FF0000000000000;
      if ((~*&v7 & 0x7FF0000000000000) == 0)
      {
        break;
      }

      if (v7 > -9.22337204e18)
      {
        if (v7 >= 9.22337204e18)
        {
          __break(1u);
        }

        else
        {
          v16 = sub_1DB50B8F0();
          MEMORY[0x1E1285C70](v16);

          v5 = *&v24;
          v7 = *&v25;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_21:
            v18 = *(v0 + 2);
            v17 = *(v0 + 3);
            if (v18 >= v17 >> 1)
            {
              v0 = sub_1DB302404((v17 > 1), v18 + 1, 1, v0);
            }

            *(v0 + 2) = v18 + 1;
            v19 = &v0[16 * v18];
            *(v19 + 4) = v5;
            *(v19 + 5) = v7;
            goto LABEL_24;
          }
        }

        v0 = sub_1DB302404(0, *(v0 + 2) + 1, 1, v0);
        goto LABEL_21;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      v0 = sub_1DB302404(0, *(v0 + 2) + 1, 1, v0);
LABEL_14:
      v2 = *(v0 + 2);
      v14 = *(v0 + 3);
      v1 = (v2 + 1);
      if (v2 >= v14 >> 1)
      {
        v0 = sub_1DB302404((v14 > 1), v2 + 1, 1, v0);
      }

      *(v0 + 2) = v1;
      v15 = &v0[16 * v2];
      *(v15 + 4) = v5;
      *(v15 + 5) = v6;
      if (v8)
      {
        goto LABEL_24;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_31:
      v0 = sub_1DB302404((v9 > 1), v1, 1, v0);
LABEL_9:
      *(v0 + 2) = v1;
      v12 = &v0[16 * v4];
      *(v12 + 4) = v2;
      *(v12 + 5) = v3;
      if (v6)
      {
        break;
      }

LABEL_10:
      v24 = 0;
      v25 = 0xE000000000000000;
      v1 = &v24;
      sub_1DB50B320();

      v24 = 0xD000000000000019;
      v25 = 0x80000001DB531570;
      v9 = 0x7FF0000000000000;
      if ((~*&v5 & 0x7FF0000000000000) != 0)
      {
        v9 = 0xC3E0000000000001;
        if (v5 > -9.22337204e18)
        {
          if (v5 >= 9.22337204e18)
          {
            __break(1u);
            goto LABEL_33;
          }

          v13 = sub_1DB50B8F0();
          MEMORY[0x1E1285C70](v13);

          v5 = *&v24;
          v6 = v25;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_14;
        }
      }

      else
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }

      __break(1u);
    }
  }

LABEL_24:
  v24 = 0x287963696C6F50;
  v25 = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB3370CC(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70, MEMORY[0x1E69E6310]);
  v20 = sub_1DB50A5E0();
  v22 = v21;

  MEMORY[0x1E1285C70](v20, v22);

  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  return v24;
}

unint64_t sub_1DB4F5D40()
{
  v1 = 0x65674178616DLL;
  v2 = 0x6567417463697665;
  if (*v0 != 2)
  {
    v2 = 0x696C61766E49736FLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
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

uint64_t sub_1DB4F5DC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB4F7784(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB4F5DF0(uint64_t a1)
{
  v2 = sub_1DB4F6DEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F5E2C(uint64_t a1)
{
  v2 = sub_1DB4F6DEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JetPackAsset.Policy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47A80, &qword_1DB5245F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v16 = *(v1 + 16);
  v15 = *(v1 + 24);
  v14 = *(v1 + 32);
  v7 = *(v1 + 40);
  v12 = *(v1 + 41);
  v13 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4F6DEC();
  sub_1DB50BE40();
  v22 = 0;
  v8 = v17;
  sub_1DB50B820();
  if (!v8)
  {
    v9 = v12;
    v21 = 1;
    sub_1DB50B820();
    v20 = 2;
    sub_1DB50B820();
    v19 = v9;
    v18 = 3;
    sub_1DB4F6F10();
    sub_1DB50B8A0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t JetPackAsset.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JetPackAsset(0) + 20);

  return sub_1DB4F6CD8(v3, a1);
}

uint64_t JetPackAsset.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JetPackAsset(0) + 20);

  return sub_1DB4F6F84(a1, v3);
}

uint64_t JetPackAsset.cacheKey.getter()
{
  v1 = *(v0 + *(type metadata accessor for JetPackAsset(0) + 28));

  return v1;
}

uint64_t JetPackAsset.wasReadFromCache.setter(char a1)
{
  result = type metadata accessor for JetPackAsset(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t JetPackAsset.wasRevalidated.setter(char a1)
{
  result = type metadata accessor for JetPackAsset(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t JetPackAsset.willBeRevalidated.setter(char a1)
{
  result = type metadata accessor for JetPackAsset(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t JetPackAsset.channelID.getter()
{
  v1 = *(v0 + *(type metadata accessor for JetPackAsset(0) + 44));

  return v1;
}

uint64_t JetPackAsset.channelID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for JetPackAsset(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t JetPackAsset.description.getter()
{
  v1 = type metadata accessor for JetPackAsset(0);
  v2 = v0 + v1[6];
  if (*(v2 + 4))
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v4 = *v2;
    v58[0] = 4023401;
    v58[1] = 0xE300000000000000;
    LODWORD(v57) = v4;
    v5 = sub_1DB50B8F0();
    MEMORY[0x1E1285C70](v5);

    v3 = sub_1DB302404(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1DB302404((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = 4023401;
    *(v8 + 5) = 0xE300000000000000;
  }

  v58[0] = 1031365995;
  v58[1] = 0xE400000000000000;
  MEMORY[0x1E1285C70](*(v0 + v1[7]), *(v0 + v1[7] + 8));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1DB302404(0, *(v3 + 2) + 1, 1, v3);
  }

  v10 = *(v3 + 2);
  v9 = *(v3 + 3);
  if (v10 >= v9 >> 1)
  {
    v3 = sub_1DB302404((v9 > 1), v10 + 1, 1, v3);
  }

  *(v3 + 2) = v10 + 1;
  v11 = &v3[16 * v10];
  *(v11 + 4) = 1031365995;
  *(v11 + 5) = 0xE400000000000000;
  strcpy(v58, "metadata=");
  WORD1(v58[1]) = 0;
  HIDWORD(v58[1]) = -385875968;
  v12 = JetPackAsset.Metadata.description.getter();
  MEMORY[0x1E1285C70](v12);

  v13 = v58[0];
  v14 = v58[1];
  v16 = *(v3 + 2);
  v15 = *(v3 + 3);
  if (v16 >= v15 >> 1)
  {
    v3 = sub_1DB302404((v15 > 1), v16 + 1, 1, v3);
  }

  *(v3 + 2) = v16 + 1;
  v17 = &v3[16 * v16];
  *(v17 + 4) = v13;
  *(v17 + 5) = v14;
  v18 = (v0 + v1[11]);
  if (v18[1])
  {
    v19 = *v18;
    strcpy(v58, "channelID=");
    BYTE3(v58[1]) = 0;
    HIDWORD(v58[1]) = -369098752;
    MEMORY[0x1E1285C70](v19);
    v20 = v58[0];
    v21 = v58[1];
    v23 = *(v3 + 2);
    v22 = *(v3 + 3);
    if (v23 >= v22 >> 1)
    {
      v3 = sub_1DB302404((v22 > 1), v23 + 1, 1, v3);
    }

    *(v3 + 2) = v23 + 1;
    v24 = &v3[16 * v23];
    *(v24 + 4) = v20;
    *(v24 + 5) = v21;
  }

  v58[0] = 0;
  v58[1] = 0xE000000000000000;
  sub_1DB50B320();

  v25 = *(v0 + v1[8]);
  v58[0] = 0xD000000000000011;
  v58[1] = 0x80000001DB531590;
  if (v25)
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (v25)
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  MEMORY[0x1E1285C70](v26, v27);

  v28 = v58[0];
  v29 = v58[1];
  v31 = *(v3 + 2);
  v30 = *(v3 + 3);
  if (v31 >= v30 >> 1)
  {
    v3 = sub_1DB302404((v30 > 1), v31 + 1, 1, v3);
  }

  *(v3 + 2) = v31 + 1;
  v32 = &v3[16 * v31];
  *(v32 + 4) = v28;
  *(v32 + 5) = v29;
  sub_1DB50B320();

  v58[0] = 0x6C61766552736177;
  v58[1] = 0xEF3D646574616469;
  if (*(v0 + v1[9]))
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  if (*(v0 + v1[9]))
  {
    v34 = 0xE400000000000000;
  }

  else
  {
    v34 = 0xE500000000000000;
  }

  MEMORY[0x1E1285C70](v33, v34);

  v35 = v58[0];
  v36 = v58[1];
  v38 = *(v3 + 2);
  v37 = *(v3 + 3);
  if (v38 >= v37 >> 1)
  {
    v3 = sub_1DB302404((v37 > 1), v38 + 1, 1, v3);
  }

  *(v3 + 2) = v38 + 1;
  v39 = &v3[16 * v38];
  *(v39 + 4) = v35;
  *(v39 + 5) = v36;
  v58[0] = 0;
  v58[1] = 0xE000000000000000;
  sub_1DB50B320();

  v40 = *(v0 + v1[10]);
  v58[0] = 0xD000000000000012;
  v58[1] = 0x80000001DB5315B0;
  if (v40)
  {
    v41 = 1702195828;
  }

  else
  {
    v41 = 0x65736C6166;
  }

  if (v40)
  {
    v42 = 0xE400000000000000;
  }

  else
  {
    v42 = 0xE500000000000000;
  }

  MEMORY[0x1E1285C70](v41, v42);

  v43 = v58[0];
  v44 = v58[1];
  v46 = *(v3 + 2);
  v45 = *(v3 + 3);
  if (v46 >= v45 >> 1)
  {
    v3 = sub_1DB302404((v45 > 1), v46 + 1, 1, v3);
  }

  *(v3 + 2) = v46 + 1;
  v47 = &v3[16 * v46];
  *(v47 + 4) = v43;
  *(v47 + 5) = v44;
  sub_1DB30BE90(v0, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430C8, &unk_1DB51C850);
  if (swift_dynamicCast())
  {
    v58[0] = 0x3D68746170;
    v58[1] = 0xE500000000000000;

    MEMORY[0x1E1285C70](v57);
    swift_bridgeObjectRelease_n();

    v48 = v58[0];
    v49 = v58[1];
    v51 = *(v3 + 2);
    v50 = *(v3 + 3);
    if (v51 >= v50 >> 1)
    {
      v3 = sub_1DB302404((v50 > 1), v51 + 1, 1, v3);
    }

    *(v3 + 2) = v51 + 1;
    v52 = &v3[16 * v51];
    *(v52 + 4) = v48;
    *(v52 + 5) = v49;
  }

  v58[0] = 0;
  v58[1] = 0xE000000000000000;
  sub_1DB50B320();

  strcpy(v58, "JetPackAsset(");
  HIWORD(v58[1]) = -4864;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB3370CC(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70, MEMORY[0x1E69E6310]);
  v53 = sub_1DB50A5E0();
  v55 = v54;

  MEMORY[0x1E1285C70](v53, v55);

  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  return v58[0];
}

unint64_t sub_1DB4F6B44()
{
  result = qword_1EE30DBE0;
  if (!qword_1EE30DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DBE0);
  }

  return result;
}

unint64_t sub_1DB4F6B98()
{
  result = qword_1EE30DAE8;
  if (!qword_1EE30DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DAE8);
  }

  return result;
}

unint64_t sub_1DB4F6BEC()
{
  result = qword_1EE30DBF0;
  if (!qword_1EE30DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DBF0);
  }

  return result;
}

uint64_t sub_1DB4F6C40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DB509DD0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB4F6C84()
{
  result = qword_1EE30DAE0;
  if (!qword_1EE30DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DAE0);
  }

  return result;
}

uint64_t sub_1DB4F6CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAsset.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB4F6D3C(uint64_t a1)
{
  v2 = type metadata accessor for JetPackAsset.Metadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DB4F6D98()
{
  result = qword_1EE30DB10[0];
  if (!qword_1EE30DB10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30DB10);
  }

  return result;
}

unint64_t sub_1DB4F6DEC()
{
  result = qword_1EE30DC08[0];
  if (!qword_1EE30DC08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30DC08);
  }

  return result;
}

unint64_t sub_1DB4F6E40()
{
  result = qword_1ECC47A78;
  if (!qword_1ECC47A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47A78);
  }

  return result;
}

unint64_t sub_1DB4F6E94()
{
  result = qword_1EE30C828;
  if (!qword_1EE30C828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC443A8, &qword_1DB514D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30C828);
  }

  return result;
}

unint64_t sub_1DB4F6F10()
{
  result = qword_1ECC47A88;
  if (!qword_1ECC47A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47A88);
  }

  return result;
}

uint64_t sub_1DB4F6F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAsset.Metadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DB4F6FEC()
{
  result = qword_1ECC47A90;
  if (!qword_1ECC47A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47A90);
  }

  return result;
}

void sub_1DB4F70AC(uint64_t a1)
{
  sub_1DB4F7194();
  if (v1 <= 0x3F)
  {
    type metadata accessor for JetPackAsset.Metadata(319);
    if (v2 <= 0x3F)
    {
      sub_1DB3986B8(319, &qword_1EE30C770);
      if (v3 <= 0x3F)
      {
        sub_1DB3986B8(319, &qword_1EE30C860);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1DB4F7194()
{
  result = qword_1EE30E0A0;
  if (!qword_1EE30E0A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE30E0A0);
  }

  return result;
}

void sub_1DB4F7220(uint64_t a1)
{
  sub_1DB3986B8(319, &qword_1EE30C860);
  if (v1 <= 0x3F)
  {
    sub_1DB509DD0();
    if (v2 <= 0x3F)
    {
      sub_1DB3986B8(319, &qword_1EE30DAD8);
      if (v3 <= 0x3F)
      {
        sub_1DB3986B8(319, &qword_1EE30C830);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for JetPackAsset.OSVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for JetPackAsset.OSVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB4F7388(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 42))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DB4F73CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_1DB4F7470()
{
  result = qword_1ECC47AA8;
  if (!qword_1ECC47AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47AA8);
  }

  return result;
}

unint64_t sub_1DB4F74C8()
{
  result = qword_1ECC47AB0;
  if (!qword_1ECC47AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47AB0);
  }

  return result;
}

unint64_t sub_1DB4F7520()
{
  result = qword_1ECC47AB8;
  if (!qword_1ECC47AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47AB8);
  }

  return result;
}

unint64_t sub_1DB4F7578()
{
  result = qword_1EE30DBF8;
  if (!qword_1EE30DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DBF8);
  }

  return result;
}

unint64_t sub_1DB4F75D0()
{
  result = qword_1EE30DC00;
  if (!qword_1EE30DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DC00);
  }

  return result;
}

unint64_t sub_1DB4F7628()
{
  result = qword_1EE30DB00;
  if (!qword_1EE30DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DB00);
  }

  return result;
}

unint64_t sub_1DB4F7680()
{
  result = qword_1EE30DB08;
  if (!qword_1EE30DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DB08);
  }

  return result;
}

unint64_t sub_1DB4F76D8()
{
  result = qword_1EE30DBD0;
  if (!qword_1EE30DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DBD0);
  }

  return result;
}

unint64_t sub_1DB4F7730()
{
  result = qword_1EE30DBD8;
  if (!qword_1EE30DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DBD8);
  }

  return result;
}

uint64_t sub_1DB4F7784(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65674178616DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DB5315D0 == a2 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567417463697665 && a2 == 0xE800000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696C61766E49736FLL && a2 == 0xEE006E6F69746164)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB50BA30();

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

uint64_t sub_1DB4F78F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1734440037 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69646F4D7473616CLL && a2 == 0xEC00000064656966 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6164696C61766572 && a2 == 0xED00007441646574 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E646C697562 && a2 == 0xEB00000000726562 || (sub_1DB50BA30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7265567465737361 && a2 == 0xEC0000006E6F6973 || (sub_1DB50BA30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7845726576726573 && a2 == 0xED00006465726970 || (sub_1DB50BA30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7963696C6F70 && a2 == 0xE600000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1DB4F7BA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726556726F6A616DLL && a2 == 0xEC0000006E6F6973;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726556726F6E696DLL && a2 == 0xEC0000006E6F6973 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265566863746170 && a2 == 0xEC0000006E6F6973)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB50BA30();

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

unint64_t sub_1DB4F7CC8()
{
  result = qword_1ECC47AC0;
  if (!qword_1ECC47AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47AC0);
  }

  return result;
}

uint64_t sub_1DB4F7D1C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1DB50AE30();
  if (!v19)
  {
    return sub_1DB50A9D0();
  }

  v41 = v19;
  v45 = sub_1DB50B4C0();
  v32 = sub_1DB50B4D0();
  sub_1DB50B470();
  result = sub_1DB50AE20();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1DB50AE90();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1DB50B4B0();
      result = sub_1DB50AE40();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _CodeByKind_Many.wrappedValue.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _CodeByKind_Many.init(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1DB30BE90(a1, v15);
  type metadata accessor for CodeByKind(0, a2, a3, v7);
  swift_getWitnessTable();
  v8 = sub_1DB50AAA0();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v15[0] = v8;
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v10 = sub_1DB50AA60();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    WitnessTable = swift_getWitnessTable();
    a2 = sub_1DB4F7D1C(sub_1DB4A4508, KeyPath, v10, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);

    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a2;
}

uint64_t _CodeByKind_Many.init(_partiallyFrom:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1DB30BE90(a1, v16);
  v7 = type metadata accessor for CodeByKind(0, a2, a3, v6);
  WitnessTable = swift_getWitnessTable();
  v16[0] = Array<A>.init(_partiallyFrom:)(v16, v7, WitnessTable);
  KeyPath = swift_getKeyPath();
  v10 = sub_1DB50AA60();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getWitnessTable();
  v14 = sub_1DB4F7D1C(sub_1DB4019AC, KeyPath, v10, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);

  __swift_destroy_boxed_opaque_existential_0(a1);

  return v14;
}

uint64_t _CodeByKind_Many.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a2;
  v12[2] = a3;
  v12[3] = a4;
  swift_getAssociatedTypeWitness();
  v6 = sub_1DB50AA60();
  v8 = type metadata accessor for CodeByKind(0, a3, a4, v7);

  WitnessTable = swift_getWitnessTable();
  sub_1DB4F7D1C(sub_1DB4F8B98, v12, v6, v8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  swift_getWitnessTable();
  sub_1DB50AA70();
}

uint64_t _CodeByKind_Many._partiallyEncode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[5] = a2;
  v15[2] = a3;
  v15[3] = a4;
  swift_getAssociatedTypeWitness();
  v7 = sub_1DB50AA60();
  v9 = type metadata accessor for CodeByKind(0, a3, a4, v8);

  WitnessTable = swift_getWitnessTable();
  v12 = sub_1DB4F7D1C(sub_1DB4F882C, v15, v7, v9, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  v13 = swift_getWitnessTable();
  Array<A>._partiallyEncode(to:)(a1, v12, v9, v13);
}

uint64_t sub_1DB4F872C@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, v7);
  return CodeByKind.init(wrappedValue:)(v9, a4);
}

uint64_t sub_1DB4F8868@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _CodeByKind_Many.init(from:)(a1, *(a2 + 16), *(a2 + 24));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1DB4F889C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _CodeByKind_Many.init(_partiallyFrom:)(a1, *(a2 + 16), *(a2 + 24));
  *a3 = result;
  return result;
}

uint64_t static _CodeByKind_Many<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return MEMORY[0x1EEE69530](a1, a2, AssociatedTypeWitness, a5);
}

uint64_t _CodeByKind_Many<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();

  return sub_1DB50AA80();
}

uint64_t _CodeByKind_Many<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DB50BCF0();
  swift_getAssociatedTypeWitness();
  sub_1DB50AA80();
  return sub_1DB50BD30();
}

uint64_t sub_1DB4F8AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_1DB50BCF0();
  _CodeByKind_Many<>.hash(into:)(v7, *v3, *(a2 + 16), *(a2 + 24), v5);
  return sub_1DB50BD30();
}

uint64_t sub_1DB4F8B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

JetCore::DaemonCacheEvictRequest __swiftcall DaemonCacheEvictRequest.init(cacheKey:fileName:)(Swift::String cacheKey, Swift::String fileName)
{
  *v2 = cacheKey;
  v2[1] = fileName;
  result.fileName = fileName;
  result.cacheKey = cacheKey;
  return result;
}

uint64_t JetPackAssetDaemonMessage.request.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for JetPackAssetDaemonMessage(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB50062C(v2, v6, type metadata accessor for JetPackAssetDaemonMessage);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      *(a1 + 24) = &type metadata for DaemonRefreshTestAssetRequest;
      result = sub_1DB4F9294();
      *(a1 + 32) = result;
      break;
    case 2u:
      *(a1 + 24) = &type metadata for DaemonReadTestAssetRequest;
      result = sub_1DB4F9240();
      *(a1 + 32) = result;
      break;
    case 3u:
      *(a1 + 24) = &type metadata for DaemonScheduleTaskRequest;
      result = sub_1DB4F91EC();
      *(a1 + 32) = result;
      break;
    case 4u:
      *(a1 + 24) = &type metadata for DaemonPostInstallRequest;
      result = sub_1DB4F9198();
      *(a1 + 32) = result;
      break;
    case 5u:
      *(a1 + 24) = &type metadata for DaemonBagRefreshRequest;
      result = sub_1DB4F9144();
      *(a1 + 32) = result;
      break;
    case 6u:
      v16 = *v6;
      *(a1 + 24) = &type metadata for DaemonPushInfoRequest;
      result = sub_1DB4F90F0();
      *(a1 + 32) = result;
      *a1 = v16;
      break;
    case 7u:
      v13 = *v6;
      v14 = *(v6 + 1);
      v15 = v6[16];
      *(a1 + 24) = &type metadata for DaemonPushSubscriptionRequest;
      result = sub_1DB4F909C();
      goto LABEL_10;
    case 8u:
      v17 = *v6;
      *(a1 + 24) = &type metadata for DaemonPushDeleteRecordRequest;
      result = sub_1DB4F9048();
      *(a1 + 32) = result;
      *a1 = v17;
      break;
    case 9u:
      v13 = *v6;
      v14 = *(v6 + 1);
      v15 = v6[16];
      *(a1 + 24) = &type metadata for DaemonPushResetRecordRequest;
      result = sub_1DB4F8FF4();
LABEL_10:
      *(a1 + 32) = result;
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      break;
    case 0xAu:
      *(a1 + 24) = &type metadata for DaemonPushClearRecordsRequest;
      result = sub_1DB4F8FA0();
      *(a1 + 32) = result;
      break;
    case 0xBu:
      v18 = *v6;
      v11 = *(v6 + 2);
      v10 = *(v6 + 3);
      *(a1 + 24) = &type metadata for DaemonCacheEvictRequest;
      *(a1 + 32) = sub_1DB4F8F4C();
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v18;
      *(result + 32) = v11;
      *(result + 40) = v10;
      break;
    case 0xCu:
      *(a1 + 24) = type metadata accessor for DaemonGetAssetRequest(0);
      *(a1 + 32) = sub_1DB4FAD10(&qword_1EE30D090, type metadata accessor for DaemonGetAssetRequest, &protocol conformance descriptor for DaemonGetAssetRequest);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
      result = sub_1DB4F8EE4(v6, boxed_opaque_existential_0, type metadata accessor for DaemonGetAssetRequest);
      break;
    default:
      v8 = *v6;
      v7 = *(v6 + 1);
      *(a1 + 24) = &type metadata for DaemonPingRequest;
      result = sub_1DB4F92E8();
      *(a1 + 32) = result;
      *a1 = v8;
      *(a1 + 8) = v7;
      break;
  }

  return result;
}

uint64_t sub_1DB4F8EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DB4F8F4C()
{
  result = qword_1ECC47B50;
  if (!qword_1ECC47B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B50);
  }

  return result;
}

unint64_t sub_1DB4F8FA0()
{
  result = qword_1ECC47B58;
  if (!qword_1ECC47B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B58);
  }

  return result;
}

unint64_t sub_1DB4F8FF4()
{
  result = qword_1ECC47B60;
  if (!qword_1ECC47B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B60);
  }

  return result;
}

unint64_t sub_1DB4F9048()
{
  result = qword_1ECC47B68;
  if (!qword_1ECC47B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B68);
  }

  return result;
}

unint64_t sub_1DB4F909C()
{
  result = qword_1ECC47B70;
  if (!qword_1ECC47B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B70);
  }

  return result;
}

unint64_t sub_1DB4F90F0()
{
  result = qword_1ECC47B78;
  if (!qword_1ECC47B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B78);
  }

  return result;
}

unint64_t sub_1DB4F9144()
{
  result = qword_1ECC47B80;
  if (!qword_1ECC47B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B80);
  }

  return result;
}

unint64_t sub_1DB4F9198()
{
  result = qword_1ECC47B88;
  if (!qword_1ECC47B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B88);
  }

  return result;
}

unint64_t sub_1DB4F91EC()
{
  result = qword_1ECC47B90;
  if (!qword_1ECC47B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B90);
  }

  return result;
}

unint64_t sub_1DB4F9240()
{
  result = qword_1ECC47B98;
  if (!qword_1ECC47B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B98);
  }

  return result;
}

unint64_t sub_1DB4F9294()
{
  result = qword_1ECC47BA0;
  if (!qword_1ECC47BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47BA0);
  }

  return result;
}

unint64_t sub_1DB4F92E8()
{
  result = qword_1ECC47BA8;
  if (!qword_1ECC47BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47BA8);
  }

  return result;
}

unint64_t sub_1DB4F933C(char a1)
{
  result = 1735289200;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x7473655464616572;
      break;
    case 3:
      result = 0x656C756465686373;
      break;
    case 4:
      result = 0x74736E4974736F70;
      break;
    case 5:
      result = 0x6572666552676162;
      break;
    case 6:
      result = 0x6F666E4968737570;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x656C654468737570;
      break;
    case 9:
      result = 0x6573655268737570;
      break;
    case 10:
      result = 0x61656C4368737570;
      break;
    case 11:
      result = 0x6976456568636163;
      break;
    case 12:
      result = 7628135;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DB4F94C4(uint64_t a1)
{
  v2 = sub_1DB4FB150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F9500(uint64_t a1)
{
  v2 = sub_1DB4FB150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F953C(uint64_t a1)
{
  v2 = sub_1DB4FAD58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F9578(uint64_t a1)
{
  v2 = sub_1DB4FAD58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F95BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB508E3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB4F95F0(uint64_t a1)
{
  v2 = sub_1DB4FAC68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F962C(uint64_t a1)
{
  v2 = sub_1DB4FAC68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F9668(uint64_t a1)
{
  v2 = sub_1DB4FACBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F96A4(uint64_t a1)
{
  v2 = sub_1DB4FACBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F96E0(uint64_t a1)
{
  v2 = sub_1DB4FB498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F971C(uint64_t a1)
{
  v2 = sub_1DB4FB498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F9758(uint64_t a1)
{
  v2 = sub_1DB4FB1F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F9794(uint64_t a1)
{
  v2 = sub_1DB4FB1F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F97D0(uint64_t a1)
{
  v2 = sub_1DB4FAE00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F980C(uint64_t a1)
{
  v2 = sub_1DB4FAE00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F9848(uint64_t a1)
{
  v2 = sub_1DB4FAF50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F9884(uint64_t a1)
{
  v2 = sub_1DB4FAF50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F98C0(uint64_t a1)
{
  v2 = sub_1DB4FB0A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F98FC(uint64_t a1)
{
  v2 = sub_1DB4FB0A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F9938(uint64_t a1)
{
  v2 = sub_1DB4FAEA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F9974(uint64_t a1)
{
  v2 = sub_1DB4FAEA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F99B0(uint64_t a1)
{
  v2 = sub_1DB4FAFF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F99EC(uint64_t a1)
{
  v2 = sub_1DB4FAFF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F9A28(uint64_t a1)
{
  v2 = sub_1DB4FB348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F9A64(uint64_t a1)
{
  v2 = sub_1DB4FB348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F9AA0(uint64_t a1)
{
  v2 = sub_1DB4FB3F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F9ADC(uint64_t a1)
{
  v2 = sub_1DB4FB3F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F9B18(uint64_t a1)
{
  v2 = sub_1DB4FB2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F9B54(uint64_t a1)
{
  v2 = sub_1DB4FB2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JetPackAssetDaemonMessage.encode(to:)(void *a1)
{
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BB0, &qword_1DB524EE0);
  v71 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v99 = v65 - v2;
  AssetRequest = type metadata accessor for DaemonGetAssetRequest(0);
  MEMORY[0x1EEE9AC00](AssetRequest);
  v98 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BB8, &qword_1DB524EE8);
  v70 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = v65 - v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BC0, &qword_1DB524EF0);
  v69 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = v65 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BC8, &qword_1DB524EF8);
  v68 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = v65 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BD0, &qword_1DB524F00);
  v67 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = v65 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BD8, &qword_1DB524F08);
  v66 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = v65 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BE0, &qword_1DB524F10);
  v65[3] = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = v65 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BE8, &qword_1DB524F18);
  v65[2] = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = v65 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BF0, &qword_1DB524F20);
  v65[1] = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = v65 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BF8, &qword_1DB524F28);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = v65 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47C00, &qword_1DB524F30);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = v65 - v13;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47C08, &qword_1DB524F38);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v15 = v65 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47C10, &qword_1DB524F40);
  v72 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v65 - v17;
  v19 = type metadata accessor for JetPackAssetDaemonMessage(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47C18, &qword_1DB524F48);
  v101[0] = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v23 = v65 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FAC68();
  v102 = v23;
  sub_1DB50BE40();
  sub_1DB50062C(v101[1], v21, type metadata accessor for JetPackAssetDaemonMessage);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      LOBYTE(v104) = 1;
      sub_1DB4FB3F0();
      v38 = v102;
      v37 = v103;
      sub_1DB50B7E0();
      sub_1DB4FB444();
      v39 = v74;
      sub_1DB50B8A0();
      v40 = &v104;
      goto LABEL_14;
    case 2u:
      LOBYTE(v104) = 2;
      sub_1DB4FB348();
      v15 = v75;
      v38 = v102;
      v37 = v103;
      sub_1DB50B7E0();
      sub_1DB4FB39C();
      v39 = v77;
      sub_1DB50B8A0();
      v40 = &v107;
      goto LABEL_14;
    case 3u:
      LOBYTE(v104) = 3;
      sub_1DB4FB2A0();
      v15 = v78;
      v38 = v102;
      v37 = v103;
      sub_1DB50B7E0();
      sub_1DB4FB2F4();
      v39 = v80;
      sub_1DB50B8A0();
      v40 = &v108;
      goto LABEL_14;
    case 4u:
      LOBYTE(v104) = 4;
      sub_1DB4FB1F8();
      v15 = v81;
      v38 = v102;
      v37 = v103;
      sub_1DB50B7E0();
      sub_1DB4FB24C();
      v39 = v82;
      sub_1DB50B8A0();
      v40 = &v95;
      goto LABEL_14;
    case 5u:
      LOBYTE(v104) = 5;
      sub_1DB4FB150();
      v15 = v83;
      v38 = v102;
      v37 = v103;
      sub_1DB50B7E0();
      sub_1DB4FB1A4();
      v39 = v84;
      sub_1DB50B8A0();
      v40 = &v96;
      goto LABEL_14;
    case 6u:
      v58 = *v21;
      LOBYTE(v104) = 6;
      sub_1DB4FB0A8();
      v59 = v85;
      v61 = v102;
      v60 = v103;
      sub_1DB50B7E0();
      LOBYTE(v104) = v58;
      sub_1DB4FB0FC();
      v62 = v86;
      sub_1DB50B8A0();
      p_AssetRequest = &AssetRequest;
      goto LABEL_17;
    case 7u:
      v51 = *v21;
      v52 = *(v21 + 1);
      v53 = v21[16];
      LOBYTE(v104) = 7;
      sub_1DB4FAFF8();
      v54 = v87;
      v56 = v102;
      v55 = v103;
      sub_1DB50B7E0();
      v104 = v51;
      v105 = v52;
      LOBYTE(v106) = v53;
      sub_1DB4FB04C();
      v57 = v88;
      sub_1DB50B8A0();
      (*(v66 + 8))(v54, v57);
      (*(v101[0] + 8))(v56, v55);
      return sub_1DB4FB0A0();
    case 8u:
      v64 = *v21;
      LOBYTE(v104) = 8;
      sub_1DB4FAF50();
      v59 = v89;
      v61 = v102;
      v60 = v103;
      sub_1DB50B7E0();
      LODWORD(v104) = v64;
      sub_1DB4FAFA4();
      v62 = v90;
      sub_1DB50B8A0();
      p_AssetRequest = &v99;
LABEL_17:
      (*(*(p_AssetRequest - 32) + 8))(v59, v62);
      return (*(v101[0] + 8))(v61, v60);
    case 9u:
      v44 = *v21;
      v45 = *(v21 + 1);
      v46 = v21[16];
      LOBYTE(v104) = 9;
      sub_1DB4FAEA8();
      v47 = v91;
      v49 = v102;
      v48 = v103;
      sub_1DB50B7E0();
      v104 = v44;
      v105 = v45;
      LOBYTE(v106) = v46;
      sub_1DB4FAEFC();
      v50 = v93;
      sub_1DB50B8A0();
      (*(v68 + 8))(v47, v50);
      (*(v101[0] + 8))(v49, v48);
      return sub_1DB3184B4(v44, v45, v46);
    case 0xAu:
      LOBYTE(v104) = 10;
      sub_1DB4FAE00();
      v15 = v92;
      v38 = v102;
      v37 = v103;
      sub_1DB50B7E0();
      sub_1DB4FAE54();
      v39 = v94;
      sub_1DB50B8A0();
      v40 = v101;
LABEL_14:
      (*(*(v40 - 32) + 8))(v15, v39);
      goto LABEL_15;
    case 0xBu:
      v30 = *v21;
      v29 = *(v21 + 1);
      v32 = *(v21 + 2);
      v31 = *(v21 + 3);
      LOBYTE(v104) = 11;
      sub_1DB4FAD58();
      v33 = v95;
      v35 = v102;
      v34 = v103;
      sub_1DB50B7E0();
      v104 = v30;
      v105 = v29;
      v106 = v32;
      v107 = v31;
      sub_1DB4FADAC();
      v36 = v96;
      sub_1DB50B8A0();
      (*(v70 + 8))(v33, v36);
      (*(v101[0] + 8))(v35, v34);

    case 0xCu:
      v41 = v98;
      sub_1DB4F8EE4(v21, v98, type metadata accessor for DaemonGetAssetRequest);
      LOBYTE(v104) = 12;
      sub_1DB4FACBC();
      v42 = v99;
      v38 = v102;
      v37 = v103;
      sub_1DB50B7E0();
      sub_1DB4FAD10(&qword_1EE30D0A8, type metadata accessor for DaemonGetAssetRequest, &protocol conformance descriptor for DaemonGetAssetRequest);
      v43 = v100;
      sub_1DB50B8A0();
      (*(v71 + 8))(v42, v43);
      sub_1DB500694(v41, type metadata accessor for DaemonGetAssetRequest);
LABEL_15:
      result = (*(v101[0] + 8))(v38, v37);
      break;
    default:
      v25 = *v21;
      v24 = *(v21 + 1);
      LOBYTE(v104) = 0;
      sub_1DB4FB498();
      v27 = v102;
      v26 = v103;
      sub_1DB50B7E0();
      v104 = v25;
      v105 = v24;
      sub_1DB4FB4EC();
      sub_1DB50B8A0();
      (*(v72 + 8))(v18, v16);
      (*(v101[0] + 8))(v27, v26);

      break;
  }

  return result;
}

unint64_t sub_1DB4FAC68()
{
  result = qword_1EE30DE60;
  if (!qword_1EE30DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE60);
  }

  return result;
}

unint64_t sub_1DB4FACBC()
{
  result = qword_1EE30DE48;
  if (!qword_1EE30DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE48);
  }

  return result;
}

uint64_t sub_1DB4FAD10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DB4FAD58()
{
  result = qword_1ECC47C20;
  if (!qword_1ECC47C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C20);
  }

  return result;
}

unint64_t sub_1DB4FADAC()
{
  result = qword_1ECC47C28;
  if (!qword_1ECC47C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C28);
  }

  return result;
}

unint64_t sub_1DB4FAE00()
{
  result = qword_1ECC47C30;
  if (!qword_1ECC47C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C30);
  }

  return result;
}

unint64_t sub_1DB4FAE54()
{
  result = qword_1ECC47C38;
  if (!qword_1ECC47C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C38);
  }

  return result;
}

unint64_t sub_1DB4FAEA8()
{
  result = qword_1ECC47C40;
  if (!qword_1ECC47C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C40);
  }

  return result;
}

unint64_t sub_1DB4FAEFC()
{
  result = qword_1ECC47C48;
  if (!qword_1ECC47C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C48);
  }

  return result;
}

unint64_t sub_1DB4FAF50()
{
  result = qword_1ECC47C50;
  if (!qword_1ECC47C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C50);
  }

  return result;
}

unint64_t sub_1DB4FAFA4()
{
  result = qword_1ECC47C58;
  if (!qword_1ECC47C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C58);
  }

  return result;
}

unint64_t sub_1DB4FAFF8()
{
  result = qword_1ECC47C60;
  if (!qword_1ECC47C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C60);
  }

  return result;
}

unint64_t sub_1DB4FB04C()
{
  result = qword_1ECC47C68;
  if (!qword_1ECC47C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C68);
  }

  return result;
}

unint64_t sub_1DB4FB0A8()
{
  result = qword_1ECC47C70;
  if (!qword_1ECC47C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C70);
  }

  return result;
}

unint64_t sub_1DB4FB0FC()
{
  result = qword_1ECC47C78;
  if (!qword_1ECC47C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C78);
  }

  return result;
}

unint64_t sub_1DB4FB150()
{
  result = qword_1ECC47C80;
  if (!qword_1ECC47C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C80);
  }

  return result;
}

unint64_t sub_1DB4FB1A4()
{
  result = qword_1ECC47C88;
  if (!qword_1ECC47C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C88);
  }

  return result;
}

unint64_t sub_1DB4FB1F8()
{
  result = qword_1ECC47C90;
  if (!qword_1ECC47C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C90);
  }

  return result;
}

unint64_t sub_1DB4FB24C()
{
  result = qword_1ECC47C98;
  if (!qword_1ECC47C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C98);
  }

  return result;
}

unint64_t sub_1DB4FB2A0()
{
  result = qword_1ECC47CA0;
  if (!qword_1ECC47CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47CA0);
  }

  return result;
}

unint64_t sub_1DB4FB2F4()
{
  result = qword_1ECC47CA8;
  if (!qword_1ECC47CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47CA8);
  }

  return result;
}

unint64_t sub_1DB4FB348()
{
  result = qword_1ECC47CB0;
  if (!qword_1ECC47CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47CB0);
  }

  return result;
}

unint64_t sub_1DB4FB39C()
{
  result = qword_1ECC47CB8;
  if (!qword_1ECC47CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47CB8);
  }

  return result;
}

unint64_t sub_1DB4FB3F0()
{
  result = qword_1ECC47CC0;
  if (!qword_1ECC47CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47CC0);
  }

  return result;
}

unint64_t sub_1DB4FB444()
{
  result = qword_1ECC47CC8;
  if (!qword_1ECC47CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47CC8);
  }

  return result;
}

unint64_t sub_1DB4FB498()
{
  result = qword_1ECC47CD0;
  if (!qword_1ECC47CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47CD0);
  }

  return result;
}

unint64_t sub_1DB4FB4EC()
{
  result = qword_1ECC47CD8;
  if (!qword_1ECC47CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47CD8);
  }

  return result;
}

uint64_t JetPackAssetDaemonMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v180 = a2;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47CE0, &qword_1DB524F50);
  v149 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v179 = &v124 - v3;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47CE8, &qword_1DB524F58);
  v148 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v174 = &v124 - v4;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47CF0, &qword_1DB524F60);
  v147 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v173 = &v124 - v5;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47CF8, &qword_1DB524F68);
  v146 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v172 = &v124 - v6;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D00, &qword_1DB524F70);
  v145 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v171 = &v124 - v7;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D08, &qword_1DB524F78);
  v144 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v170 = &v124 - v8;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D10, &qword_1DB524F80);
  v143 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v169 = &v124 - v9;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D18, &qword_1DB524F88);
  v142 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v168 = &v124 - v10;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D20, &qword_1DB524F90);
  v141 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v167 = &v124 - v11;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D28, &qword_1DB524F98);
  v140 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v178 = &v124 - v12;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D30, &qword_1DB524FA0);
  v139 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v165 = &v124 - v13;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D38, &qword_1DB524FA8);
  v138 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v166 = &v124 - v14;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D40, &qword_1DB524FB0);
  v151 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v164 = &v124 - v15;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D48, &unk_1DB524FB8);
  v181 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v17 = &v124 - v16;
  v182 = type metadata accessor for JetPackAssetDaemonMessage(0);
  MEMORY[0x1EEE9AC00](v182);
  v150 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v137 = (&v124 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v136 = &v124 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v135 = (&v124 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v134 = (&v124 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v133 = (&v124 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v132 = &v124 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v131 = &v124 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v130 = &v124 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v124 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v124 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v124 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v124 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v124 - v48;
  v50 = a1[3];
  v183 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v50);
  sub_1DB4FAC68();
  v175 = v17;
  v51 = v191;
  sub_1DB50BDF0();
  if (v51)
  {
LABEL_8:
    v68 = v183;
    return __swift_destroy_boxed_opaque_existential_0(v68);
  }

  v125 = v46;
  v126 = v43;
  v127 = v40;
  v128 = v37;
  v52 = v176;
  v191 = 0;
  v54 = v178;
  v53 = v179;
  v129 = v49;
  v55 = v180;
  v56 = v177;
  v57 = v175;
  v58 = sub_1DB50B7A0();
  v59 = (2 * *(v58 + 16)) | 1;
  v187 = v58;
  v188 = v58 + 32;
  v189 = 0;
  v190 = v59;
  v60 = sub_1DB4B8E88();
  if (v189 != v190 >> 1)
  {
LABEL_6:
    v65 = sub_1DB50B3E0();
    swift_allocError();
    v67 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v67 = v182;
    sub_1DB50B6B0();
    sub_1DB50B3C0();
    (*(*(v65 - 8) + 104))(v67, *MEMORY[0x1E69E6AF8], v65);
    swift_willThrow();
LABEL_7:
    (*(v181 + 8))(v57, v56);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v60)
  {
    case 0:
      LOBYTE(v184) = 0;
      sub_1DB4FB498();
      v61 = v164;
      v62 = v191;
      sub_1DB50B6A0();
      if (v62)
      {
        goto LABEL_7;
      }

      sub_1DB4FD154();
      sub_1DB50B780();
      (*(v151 + 8))(v61, v52);
      (*(v181 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v63 = *(&v184 + 1);
      v64 = v125;
      *v125 = v184;
      v64[1] = v63;
      goto LABEL_34;
    case 1:
      LOBYTE(v184) = 1;
      sub_1DB4FB3F0();
      v103 = v166;
      v104 = v191;
      sub_1DB50B6A0();
      if (v104)
      {
        goto LABEL_7;
      }

      sub_1DB4FD100();
      v105 = v152;
      sub_1DB50B780();
      (*(v138 + 8))(v103, v105);
      (*(v181 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v64 = v126;
      goto LABEL_34;
    case 2:
      LOBYTE(v184) = 2;
      sub_1DB4FB348();
      v91 = v165;
      v92 = v191;
      sub_1DB50B6A0();
      if (v92)
      {
        goto LABEL_7;
      }

      sub_1DB4FD0AC();
      v93 = v154;
      sub_1DB50B780();
      v94 = v181;
      (*(v139 + 8))(v91, v93);
      (*(v94 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v76 = v127;
      goto LABEL_35;
    case 3:
      LOBYTE(v184) = 3;
      sub_1DB4FB2A0();
      v95 = v191;
      sub_1DB50B6A0();
      if (v95)
      {
        goto LABEL_7;
      }

      sub_1DB4FD058();
      v96 = v153;
      sub_1DB50B780();
      v97 = v181;
      (*(v140 + 8))(v54, v96);
      (*(v97 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v64 = v128;
LABEL_34:
      swift_storeEnumTagMultiPayload();
      v85 = v64;
      break;
    case 4:
      LOBYTE(v184) = 4;
      sub_1DB4FB1F8();
      v77 = v167;
      v78 = v191;
      sub_1DB50B6A0();
      if (v78)
      {
        goto LABEL_7;
      }

      sub_1DB4FD004();
      v79 = v155;
      sub_1DB50B780();
      v80 = v181;
      (*(v141 + 8))(v77, v79);
      (*(v80 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v76 = v130;
      goto LABEL_35;
    case 5:
      LOBYTE(v184) = 5;
      sub_1DB4FB150();
      v106 = v168;
      v107 = v191;
      sub_1DB50B6A0();
      if (v107)
      {
        goto LABEL_7;
      }

      sub_1DB4FCFB0();
      v108 = v156;
      sub_1DB50B780();
      v109 = v181;
      (*(v142 + 8))(v106, v108);
      (*(v109 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v76 = v131;
      goto LABEL_35;
    case 6:
      LOBYTE(v184) = 6;
      sub_1DB4FB0A8();
      v110 = v169;
      v111 = v191;
      sub_1DB50B6A0();
      if (v111)
      {
        goto LABEL_7;
      }

      sub_1DB4FCF5C();
      v112 = v157;
      sub_1DB50B780();
      v113 = v181;
      (*(v143 + 8))(v110, v112);
      (*(v113 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v76 = v132;
      *v132 = v184;
      goto LABEL_35;
    case 7:
      LOBYTE(v184) = 7;
      sub_1DB4FAFF8();
      v98 = v170;
      v99 = v191;
      sub_1DB50B6A0();
      if (v99)
      {
        goto LABEL_7;
      }

      sub_1DB4FCF08();
      v100 = v158;
      sub_1DB50B780();
      v101 = v181;
      (*(v144 + 8))(v98, v100);
      (*(v101 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v102 = v185;
      v76 = v133;
      *v133 = v184;
      v76[16] = v102;
      goto LABEL_35;
    case 8:
      LOBYTE(v184) = 8;
      sub_1DB4FAF50();
      v118 = v171;
      v119 = v191;
      sub_1DB50B6A0();
      if (v119)
      {
        goto LABEL_7;
      }

      sub_1DB4FCEB4();
      v120 = v159;
      sub_1DB50B780();
      v121 = v181;
      (*(v145 + 8))(v118, v120);
      (*(v121 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v76 = v134;
      *v134 = v184;
      goto LABEL_35;
    case 9:
      LOBYTE(v184) = 9;
      sub_1DB4FAEA8();
      v86 = v172;
      v87 = v191;
      sub_1DB50B6A0();
      if (v87)
      {
        goto LABEL_7;
      }

      sub_1DB4FCE60();
      v88 = v160;
      sub_1DB50B780();
      v89 = v181;
      (*(v146 + 8))(v86, v88);
      (*(v89 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v90 = v185;
      v76 = v135;
      *v135 = v184;
      v76[16] = v90;
      goto LABEL_35;
    case 10:
      LOBYTE(v184) = 10;
      sub_1DB4FAE00();
      v114 = v173;
      v115 = v191;
      sub_1DB50B6A0();
      if (v115)
      {
        goto LABEL_7;
      }

      sub_1DB4FCE0C();
      v116 = v161;
      sub_1DB50B780();
      v117 = v181;
      (*(v147 + 8))(v114, v116);
      (*(v117 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v76 = v136;
      goto LABEL_35;
    case 11:
      LOBYTE(v184) = 11;
      sub_1DB4FAD58();
      v70 = v174;
      v71 = v191;
      sub_1DB50B6A0();
      if (v71)
      {
        goto LABEL_7;
      }

      sub_1DB4FCDB8();
      v72 = v162;
      sub_1DB50B780();
      v73 = v181;
      (*(v148 + 8))(v70, v72);
      (*(v73 + 8))(v57, v56);
      swift_unknownObjectRelease();
      v74 = v185;
      v75 = v186;
      v76 = v137;
      *v137 = v184;
      *(v76 + 2) = v74;
      *(v76 + 3) = v75;
LABEL_35:
      swift_storeEnumTagMultiPayload();
      v85 = v76;
      break;
    case 12:
      LOBYTE(v184) = 12;
      sub_1DB4FACBC();
      v81 = v191;
      sub_1DB50B6A0();
      if (v81)
      {
        goto LABEL_7;
      }

      type metadata accessor for DaemonGetAssetRequest(0);
      sub_1DB4FAD10(&qword_1EE30D0A0, type metadata accessor for DaemonGetAssetRequest, &protocol conformance descriptor for DaemonGetAssetRequest);
      v82 = v150;
      v83 = v163;
      sub_1DB50B780();
      v84 = v181;
      (*(v149 + 8))(v53, v83);
      (*(v84 + 8))(v57, v56);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v85 = v82;
      break;
    default:
      goto LABEL_6;
  }

  v122 = v129;
  sub_1DB4F8EE4(v85, v129, type metadata accessor for JetPackAssetDaemonMessage);
  v123 = v183;
  sub_1DB4F8EE4(v122, v55, type metadata accessor for JetPackAssetDaemonMessage);
  v68 = v123;
  return __swift_destroy_boxed_opaque_existential_0(v68);
}

unint64_t sub_1DB4FCDB8()
{
  result = qword_1ECC47D50;
  if (!qword_1ECC47D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D50);
  }

  return result;
}

unint64_t sub_1DB4FCE0C()
{
  result = qword_1ECC47D58;
  if (!qword_1ECC47D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D58);
  }

  return result;
}

unint64_t sub_1DB4FCE60()
{
  result = qword_1ECC47D60;
  if (!qword_1ECC47D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D60);
  }

  return result;
}

unint64_t sub_1DB4FCEB4()
{
  result = qword_1ECC47D68;
  if (!qword_1ECC47D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D68);
  }

  return result;
}

unint64_t sub_1DB4FCF08()
{
  result = qword_1ECC47D70;
  if (!qword_1ECC47D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D70);
  }

  return result;
}

unint64_t sub_1DB4FCF5C()
{
  result = qword_1ECC47D78;
  if (!qword_1ECC47D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D78);
  }

  return result;
}

unint64_t sub_1DB4FCFB0()
{
  result = qword_1ECC47D80;
  if (!qword_1ECC47D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D80);
  }

  return result;
}

unint64_t sub_1DB4FD004()
{
  result = qword_1ECC47D88;
  if (!qword_1ECC47D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D88);
  }

  return result;
}

unint64_t sub_1DB4FD058()
{
  result = qword_1ECC47D90;
  if (!qword_1ECC47D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D90);
  }

  return result;
}

unint64_t sub_1DB4FD0AC()
{
  result = qword_1ECC47D98;
  if (!qword_1ECC47D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D98);
  }

  return result;
}

unint64_t sub_1DB4FD100()
{
  result = qword_1ECC47DA0;
  if (!qword_1ECC47DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47DA0);
  }

  return result;
}

unint64_t sub_1DB4FD154()
{
  result = qword_1ECC47DA8;
  if (!qword_1ECC47DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47DA8);
  }

  return result;
}

uint64_t DaemonPingRequest.messageText.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t DaemonPingRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB50B320();

  MEMORY[0x1E1285C70](v1, v2);
  return 0xD00000000000001BLL;
}

uint64_t DaemonPingRequest.message.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for JetPackAssetDaemonMessage(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB4FD308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000747865)
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

uint64_t sub_1DB4FD394(uint64_t a1)
{
  v2 = sub_1DB4FD548();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FD3D0(uint64_t a1)
{
  v2 = sub_1DB4FD548();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPingRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47DB0, &qword_1DB524FC8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FD548();
  sub_1DB50BE40();
  sub_1DB50B860();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DB4FD548()
{
  result = qword_1ECC47DB8;
  if (!qword_1ECC47DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47DB8);
  }

  return result;
}

uint64_t DaemonPingRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47DC0, &qword_1DB524FD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FD548();
  sub_1DB50BDF0();
  if (!v2)
  {
    v9 = sub_1DB50B740();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DB4FD710@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for JetPackAssetDaemonMessage(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB4FD77C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47DB0, &qword_1DB524FC8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FD548();
  sub_1DB50BE40();
  sub_1DB50B860();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DB4FD8B8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB50B320();

  MEMORY[0x1E1285C70](v1, v2);
  return 0xD00000000000001BLL;
}

uint64_t DaemonRefreshTestAssetRequest.message.getter()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB4FD998(uint64_t a1)
{
  v2 = sub_1DB4FDA54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FD9D4(uint64_t a1)
{
  v2 = sub_1DB4FDA54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DB4FDA54()
{
  result = qword_1ECC47DD0;
  if (!qword_1ECC47DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47DD0);
  }

  return result;
}

uint64_t sub_1DB4FDAA8()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonReadTestAssetRequest.message.getter()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB4FDBB8(uint64_t a1)
{
  v2 = sub_1DB4FDC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FDBF4(uint64_t a1)
{
  v2 = sub_1DB4FDC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DB4FDC74()
{
  result = qword_1ECC47DE0;
  if (!qword_1ECC47DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47DE0);
  }

  return result;
}

uint64_t sub_1DB4FDCC8()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonReadTestAssetResponse.token.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

JetCore::DaemonReadTestAssetResponse __swiftcall DaemonReadTestAssetResponse.init(token:)(JetCore::DaemonReadTestAssetResponse token)
{
  v2 = *(token.token.token._countAndFlagsBits + 16);
  v3 = *(token.token.token._countAndFlagsBits + 24);
  *v1 = *token.token.token._countAndFlagsBits;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return token;
}

uint64_t sub_1DB4FDDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
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

uint64_t sub_1DB4FDE64(uint64_t a1)
{
  v2 = sub_1DB4FE068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FDEA0(uint64_t a1)
{
  v2 = sub_1DB4FE068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonReadTestAssetResponse.encode(to:)(void *a1)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47DE8, &qword_1DB524FE8);
  v3 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[3];
  v11 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FE068();

  sub_1DB50BE40();
  v13 = v6;
  v14 = v7;
  v15 = v11;
  v16 = v8;
  sub_1DB301F50();
  v9 = v12;
  sub_1DB50B8A0();

  return (*(v3 + 8))(v5, v9);
}

unint64_t sub_1DB4FE068()
{
  result = qword_1ECC47DF0;
  if (!qword_1ECC47DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47DF0);
  }

  return result;
}

uint64_t DaemonReadTestAssetResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47DF8, &qword_1DB524FF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FE068();
  sub_1DB50BDF0();
  if (!v2)
  {
    sub_1DB3013EC();
    sub_1DB50B780();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

JetCore::DaemonScheduleTime __swiftcall DaemonScheduleTime.init(scheduleAfter:scheduleBefore:)(Swift::Double scheduleAfter, Swift::Double scheduleBefore)
{
  *v2 = scheduleAfter;
  v2[1] = scheduleBefore;
  result.scheduleBefore = scheduleBefore;
  result.scheduleAfter = scheduleAfter;
  return result;
}

uint64_t sub_1DB4FE2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x656C756465686373 && a2 == 0xED00007265746641;
  if (v5 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEE0065726F666542)
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

uint64_t sub_1DB4FE3A0(uint64_t a1)
{
  v2 = sub_1DB4FE5A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FE3DC(uint64_t a1)
{
  v2 = sub_1DB4FE5A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonScheduleTime.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E00, &qword_1DB524FF8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FE5A0();
  sub_1DB50BE40();
  v8[15] = 0;
  sub_1DB50B880();
  if (!v1)
  {
    v8[14] = 1;
    sub_1DB50B880();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DB4FE5A0()
{
  result = qword_1ECC47E08;
  if (!qword_1ECC47E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47E08);
  }

  return result;
}

uint64_t DaemonScheduleTime.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E10, &qword_1DB525000);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FE5A0();
  sub_1DB50BDF0();
  if (!v2)
  {
    v16 = 0;
    sub_1DB50B760();
    v10 = v9;
    v15 = 1;
    sub_1DB50B760();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 DaemonScheduleTaskResponse.schedule.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

JetCore::DaemonScheduleTaskResponse __swiftcall DaemonScheduleTaskResponse.init(schedule:)(JetCore::DaemonScheduleTaskResponse schedule)
{
  v2 = *(*&schedule.schedule.is_nil + 16);
  v3 = **&schedule.schedule.is_nil;
  *v1 = **&schedule.schedule.is_nil;
  *(v1 + 16) = v2;
  schedule.schedule.value.scheduleAfter = *&v3;
  return schedule;
}

uint64_t sub_1DB4FE80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000)
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

uint64_t sub_1DB4FE894(uint64_t a1)
{
  v2 = sub_1DB4FEA6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FE8D0(uint64_t a1)
{
  v2 = sub_1DB4FEA6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonScheduleTaskResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E18, &qword_1DB525008);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v8 = *v1;
  v7 = v1[1];
  HIDWORD(v10) = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FEA6C();
  sub_1DB50BE40();
  v11 = v8;
  v12 = v7;
  v13 = BYTE4(v10);
  sub_1DB4FEAC0();
  sub_1DB50B830();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DB4FEA6C()
{
  result = qword_1ECC47E20;
  if (!qword_1ECC47E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47E20);
  }

  return result;
}

unint64_t sub_1DB4FEAC0()
{
  result = qword_1ECC47E28;
  if (!qword_1ECC47E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47E28);
  }

  return result;
}

uint64_t DaemonScheduleTaskResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E30, &qword_1DB525010);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FEA6C();
  sub_1DB50BDF0();
  if (!v2)
  {
    sub_1DB4FEC8C();
    sub_1DB50B710();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB4FEC8C()
{
  result = qword_1ECC47E38;
  if (!qword_1ECC47E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47E38);
  }

  return result;
}

uint64_t DaemonScheduleTaskRequest.message.getter()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB4FED74(uint64_t a1)
{
  v2 = sub_1DB4FEE30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FEDB0(uint64_t a1)
{
  v2 = sub_1DB4FEE30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DB4FEE30()
{
  result = qword_1ECC47E48;
  if (!qword_1ECC47E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47E48);
  }

  return result;
}

uint64_t sub_1DB4FEE84()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonPostInstallRequest.message.getter()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB4FEF8C(uint64_t a1)
{
  v2 = sub_1DB4FF048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FEFC8(uint64_t a1)
{
  v2 = sub_1DB4FF048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DB4FF048()
{
  result = qword_1ECC47E58;
  if (!qword_1ECC47E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47E58);
  }

  return result;
}

uint64_t sub_1DB4FF09C()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonBagRefreshRequest.message.getter()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB4FF1A4(uint64_t a1)
{
  v2 = sub_1DB4FF260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FF1E0(uint64_t a1)
{
  v2 = sub_1DB4FF260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DB4FF260()
{
  result = qword_1ECC47E68;
  if (!qword_1ECC47E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47E68);
  }

  return result;
}

uint64_t sub_1DB4FF2DC()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonPushInfoRequest.message.getter@<X0>(_BYTE *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB4FF418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4D746361706D6F63 && a2 == 0xEB0000000065646FLL)
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

uint64_t sub_1DB4FF4A4(uint64_t a1)
{
  v2 = sub_1DB4FF654();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FF4E0(uint64_t a1)
{
  v2 = sub_1DB4FF654();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushInfoRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E70, &qword_1DB525030);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FF654();
  sub_1DB50BE40();
  sub_1DB50B870();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DB4FF654()
{
  result = qword_1ECC47E78;
  if (!qword_1ECC47E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47E78);
  }

  return result;
}

uint64_t DaemonPushInfoRequest.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E80, &unk_1DB525038);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FF654();
  sub_1DB50BDF0();
  if (!v2)
  {
    v9 = sub_1DB50B750();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DB4FF800@<X0>(_BYTE *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB4FF864(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E70, &qword_1DB525030);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FF654();
  sub_1DB50BE40();
  sub_1DB50B870();
  return (*(v3 + 8))(v5, v2);
}

uint64_t DaemonPushInfoResponse.environment.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DaemonPushInfoResponse.apsLastKnownConnectedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DaemonPushInfoResponse(0) + 28);

  return sub_1DB476604(v3, a1);
}

uint64_t DaemonPushInfoResponse.controlChannelID.getter()
{
  v1 = *(v0 + *(type metadata accessor for DaemonPushInfoResponse(0) + 32));

  return v1;
}

uint64_t DaemonPushInfoResponse.init(environment:records:subscribedChannelIDs:apsLastKnownConnectedDate:controlChannelID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  v12 = type metadata accessor for DaemonPushInfoResponse(0);
  result = sub_1DB35EA44(a5, a8 + *(v12 + 28));
  v14 = (a8 + *(v12 + 32));
  *v14 = a6;
  v14[1] = a7;
  return result;
}

unint64_t sub_1DB4FFB08()
{
  v1 = *v0;
  v2 = 0x6D6E6F7269766E65;
  v3 = 0xD000000000000019;
  if (v1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0x7364726F636572;
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

uint64_t sub_1DB4FFBBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB509270(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB4FFBE4(uint64_t a1)
{
  v2 = sub_1DB4FFF44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FFC20(uint64_t a1)
{
  v2 = sub_1DB4FFF44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushInfoResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E88, &qword_1DB525048);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FFF44();
  sub_1DB50BE40();
  LOBYTE(v11) = 0;
  sub_1DB50B860();
  if (!v2)
  {
    v11 = *(v3 + 16);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E98, &unk_1DB525050);
    sub_1DB5004F4(&qword_1ECC47EA0, sub_1DB4FFF98, MEMORY[0x1E69E6300]);
    sub_1DB50B8A0();
    v11 = *(v3 + 24);
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46950, &qword_1DB520560);
    sub_1DB5005C0(&qword_1ECC47EB0, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1DB50B8A0();
    type metadata accessor for DaemonPushInfoResponse(0);
    LOBYTE(v11) = 3;
    sub_1DB509DD0();
    sub_1DB4FAD10(&qword_1EE30E278, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DB50B830();
    LOBYTE(v11) = 4;
    sub_1DB50B800();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1DB4FFF44()
{
  result = qword_1ECC47E90;
  if (!qword_1ECC47E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47E90);
  }

  return result;
}

unint64_t sub_1DB4FFF98()
{
  result = qword_1ECC47EA8;
  if (!qword_1ECC47EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47EA8);
  }

  return result;
}

uint64_t DaemonPushInfoResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47EB8, &qword_1DB525060);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = type metadata accessor for DaemonPushInfoResponse(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FFF44();
  v28 = v9;
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = v26;
  v24 = v10;
  LOBYTE(v30) = 0;
  v14 = sub_1DB50B740();
  v16 = v15;
  *v12 = v14;
  v12[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E98, &unk_1DB525050);
  v29 = 1;
  sub_1DB5004F4(&qword_1ECC47EC0, sub_1DB50056C, MEMORY[0x1E69E6330]);
  sub_1DB50B780();
  v23[1] = v16;
  v12[2] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46950, &qword_1DB520560);
  v29 = 2;
  sub_1DB5005C0(&qword_1ECC47ED0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
  v23[0] = 0;
  sub_1DB50B780();
  v12[3] = v30;
  sub_1DB509DD0();
  LOBYTE(v30) = 3;
  sub_1DB4FAD10(&qword_1EE30E268, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1DB50B710();
  v17 = v24;
  sub_1DB35EA44(v6, v12 + *(v24 + 28));
  LOBYTE(v30) = 4;
  v18 = sub_1DB50B6E0();
  v20 = v19;
  (*(v13 + 8))(v28, v27);
  v21 = (v12 + *(v17 + 32));
  *v21 = v18;
  v21[1] = v20;
  sub_1DB50062C(v12, v25, type metadata accessor for DaemonPushInfoResponse);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1DB500694(v12, type metadata accessor for DaemonPushInfoResponse);
}

uint64_t sub_1DB5004F4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC47E98, &unk_1DB525050);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB50056C()
{
  result = qword_1ECC47EC8;
  if (!qword_1ECC47EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47EC8);
  }

  return result;
}

uint64_t sub_1DB5005C0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC46950, &qword_1DB520560);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB50062C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB500694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DB500724()
{
  if (*v0)
  {
    return 0x7263736275736E75;
  }

  else
  {
    return 0x6269726373627573;
  }
}

uint64_t sub_1DB50076C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6269726373627573 && a2 == 0xE900000000000065;
  if (v6 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7263736275736E75 && a2 == 0xEB00000000656269)
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

uint64_t sub_1DB500854(uint64_t a1)
{
  v2 = sub_1DB500CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB500890(uint64_t a1)
{
  v2 = sub_1DB500CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB5008CC(uint64_t a1)
{
  v2 = sub_1DB500D54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB500908(uint64_t a1)
{
  v2 = sub_1DB500D54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB500944(uint64_t a1)
{
  v2 = sub_1DB500D00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB500980(uint64_t a1)
{
  v2 = sub_1DB500D00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushSubscriptionRequest.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47ED8, &qword_1DB525068);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47EE0, &qword_1DB525070);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47EE8, &qword_1DB525078);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB500CAC();
  sub_1DB50BE40();
  if (v13)
  {
    v26 = 1;
    sub_1DB500D00();
    v14 = v20;
    sub_1DB50B7E0();
    v15 = v22;
    sub_1DB50B800();
    (*(v21 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_1DB500D54();
    sub_1DB50B7E0();
    v16 = v19;
    sub_1DB50B860();
    (*(v18 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1DB500CAC()
{
  result = qword_1ECC47EF0;
  if (!qword_1ECC47EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47EF0);
  }

  return result;
}

unint64_t sub_1DB500D00()
{
  result = qword_1ECC47EF8;
  if (!qword_1ECC47EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47EF8);
  }

  return result;
}

unint64_t sub_1DB500D54()
{
  result = qword_1ECC47F00;
  if (!qword_1ECC47F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47F00);
  }

  return result;
}

uint64_t DaemonPushSubscriptionRequest.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F08, &qword_1DB525080);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v4 = &v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F10, &qword_1DB525088);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F18, &qword_1DB525090);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - v10;
  v12 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1DB500CAC();
  v13 = v39;
  sub_1DB50BDF0();
  if (!v13)
  {
    v14 = v38;
    v39 = v9;
    v15 = sub_1DB50B7A0();
    v16 = (2 * *(v15 + 16)) | 1;
    v41 = v15;
    v42 = v15 + 32;
    v43 = 0;
    v44 = v16;
    v17 = sub_1DB4B9DCC();
    v18 = v11;
    if (v17 == 2 || v43 != v44 >> 1)
    {
      v22 = sub_1DB50B3E0();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
      *v24 = &type metadata for DaemonPushSubscriptionRequest.State;
      sub_1DB50B6B0();
      sub_1DB50B3C0();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v39 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v17)
      {
        v45 = v17;
        v46 = 1;
        sub_1DB500D00();
        v19 = v4;
        sub_1DB50B6A0();
        v20 = v39;
        v21 = v37;
        v35 = v18;
        v29 = sub_1DB50B6E0();
        v33 = v32;
        (*(v36 + 8))(v19, v14);
        (*(v20 + 8))(v35, v8);
      }

      else
      {
        v26 = v17;
        v46 = 0;
        sub_1DB500D54();
        v27 = v7;
        sub_1DB50B6A0();
        v28 = v39;
        v21 = v37;
        v45 = v26;
        v30 = v18;
        v31 = v5;
        v29 = sub_1DB50B740();
        v33 = v34;
        (*(v35 + 1))(v27, v31);
        (*(v28 + 8))(v30, v8);
      }

      swift_unknownObjectRelease();
      *v21 = v29;
      *(v21 + 8) = v33;
      *(v21 + 16) = v45 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v40);
}

unint64_t DaemonPushSubscriptionRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2])
  {
    if (!v2)
    {
      return 0xD000000000000026;
    }

    sub_1DB50B320();

    v4 = 0xD000000000000024;
  }

  else
  {
    sub_1DB50B320();

    v4 = 0xD000000000000020;
  }

  MEMORY[0x1E1285C70](v1, v2);
  return v4;
}

uint64_t sub_1DB501480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
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

uint64_t sub_1DB501504(uint64_t a1)
{
  v2 = sub_1DB5016F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB501540(uint64_t a1)
{
  v2 = sub_1DB5016F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushSubscriptionRequest.encode(to:)(void *a1)
{
  v11[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F20, &qword_1DB525098);
  v3 = *(v11[0] - 8);
  MEMORY[0x1EEE9AC00](v11[0]);
  v5 = v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50136C(v6, v7);
  sub_1DB5016F4();
  sub_1DB50BE40();
  v11[1] = v6;
  v11[2] = v7;
  v12 = v8;
  sub_1DB501748();
  v9 = v11[0];
  sub_1DB50B8A0();
  sub_1DB4FB0A0();
  return (*(v3 + 8))(v5, v9);
}

unint64_t sub_1DB5016F4()
{
  result = qword_1ECC47F28;
  if (!qword_1ECC47F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47F28);
  }

  return result;
}

unint64_t sub_1DB501748()
{
  result = qword_1ECC47F30;
  if (!qword_1ECC47F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47F30);
  }

  return result;
}

uint64_t DaemonPushSubscriptionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F38, &qword_1DB5250A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB5016F4();
  sub_1DB50BDF0();
  if (!v2)
  {
    sub_1DB501914();
    sub_1DB50B780();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB501914()
{
  result = qword_1ECC47F40;
  if (!qword_1ECC47F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47F40);
  }

  return result;
}

unint64_t DaemonPushDeleteRecordRequest.description.getter()
{
  sub_1DB50B320();

  v0 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v0);

  return 0xD00000000000002FLL;
}

uint64_t DaemonPushDeleteRecordRequest.message.getter@<X0>(_DWORD *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB501AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
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

uint64_t sub_1DB501B34(uint64_t a1)
{
  v2 = sub_1DB501CE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB501B70(uint64_t a1)
{
  v2 = sub_1DB501CE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushDeleteRecordRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F48, &qword_1DB5250A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB501CE4();
  sub_1DB50BE40();
  sub_1DB50B8B0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DB501CE4()
{
  result = qword_1ECC47F50;
  if (!qword_1ECC47F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47F50);
  }

  return result;
}

uint64_t DaemonPushDeleteRecordRequest.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F58, &qword_1DB5250B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB501CE4();
  sub_1DB50BDF0();
  if (!v2)
  {
    v9 = sub_1DB50B790();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DB501E8C@<X0>(_DWORD *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB501EF0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F48, &qword_1DB5250A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB501CE4();
  sub_1DB50BE40();
  sub_1DB50B8B0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1DB50202C(uint64_t a1)
{
  v2 = sub_1DB502678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB502068(uint64_t a1)
{
  v2 = sub_1DB502678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB5020A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_1DB502124(uint64_t a1)
{
  v2 = sub_1DB5026CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB502160(uint64_t a1)
{
  v2 = sub_1DB5026CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB50219C()
{
  if (*v0)
  {
    return 0x656E6E6168437962;
  }

  else
  {
    return 1682536802;
  }
}

uint64_t sub_1DB5021D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1682536802 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E6E6168437962 && a2 == 0xEB0000000064496CLL)
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

uint64_t sub_1DB5022B8(uint64_t a1)
{
  v2 = sub_1DB502624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB5022F4(uint64_t a1)
{
  v2 = sub_1DB502624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushResetRecordRequest.Target.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F60, &qword_1DB5250B8);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F68, &qword_1DB5250C0);
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F70, &qword_1DB5250C8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = v1[1];
  v24 = *v1;
  v18 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB502624();
  sub_1DB50BE40();
  if (v13)
  {
    v26 = 1;
    sub_1DB502678();
    v14 = v21;
    sub_1DB50B7E0();
    v15 = v23;
    sub_1DB50B860();
    (*(v22 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_1DB5026CC();
    sub_1DB50B7E0();
    v16 = v20;
    sub_1DB50B8B0();
    (*(v19 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1DB502624()
{
  result = qword_1ECC47F78;
  if (!qword_1ECC47F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47F78);
  }

  return result;
}

unint64_t sub_1DB502678()
{
  result = qword_1ECC47F80;
  if (!qword_1ECC47F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47F80);
  }

  return result;
}

unint64_t sub_1DB5026CC()
{
  result = qword_1ECC47F88;
  if (!qword_1ECC47F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47F88);
  }

  return result;
}

uint64_t DaemonPushResetRecordRequest.Target.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F90, &qword_1DB5250D0);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v4 = &v36 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F98, &qword_1DB5250D8);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47FA0, &qword_1DB5250E0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  v12 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1DB502624();
  v13 = v40;
  sub_1DB50BDF0();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0(v41);
  }

  v14 = v39;
  v40 = v9;
  v15 = sub_1DB50B7A0();
  v16 = (2 * *(v15 + 16)) | 1;
  v42 = v15;
  v43 = v15 + 32;
  v44 = 0;
  v45 = v16;
  v17 = sub_1DB4B9DCC();
  v18 = v11;
  if (v17 == 2 || v44 != v45 >> 1)
  {
    v22 = sub_1DB50B3E0();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v24 = &type metadata for DaemonPushResetRecordRequest.Target;
    sub_1DB50B6B0();
    sub_1DB50B3C0();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v40 + 8))(v11, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v41);
  }

  if (v17)
  {
    v46 = v17;
    v47 = 1;
    sub_1DB502678();
    v19 = v4;
    sub_1DB50B6A0();
    v20 = v40;
    v21 = v38;
    v29 = sub_1DB50B740();
    v36 = v30;
    v33 = v29;
    (*(v37 + 8))(v19, v14);
    (*(v20 + 8))(v11, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = v17;
    v47 = 0;
    sub_1DB5026CC();
    v27 = v7;
    sub_1DB50B6A0();
    v28 = v40;
    v46 = v26;
    v31 = v27;
    v32 = v18;
    v34 = sub_1DB50B790();
    (*(v36 + 8))(v31, v5);
    (*(v28 + 8))(v32, v8);
    swift_unknownObjectRelease();
    v36 = 0;
    v33 = v34;
    v21 = v38;
  }

  v35 = v36;
  *v21 = v33;
  *(v21 + 8) = v35;
  *(v21 + 16) = v46 & 1;
  return __swift_destroy_boxed_opaque_existential_0(v41);
}

uint64_t sub_1DB502CF0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return a1();
}

unint64_t DaemonPushResetRecordRequest.description.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    v5 = 0;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000038, 0x80000001DB5317C0);
    MEMORY[0x1E1285C70](v1, v2);
  }

  else
  {
    sub_1DB50B320();

    v5 = 0xD00000000000002ELL;
    v3 = sub_1DB50B8F0();
    MEMORY[0x1E1285C70](v3);
  }

  return v5;
}

uint64_t sub_1DB502E1C@<X0>(uint64_t (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  type metadata accessor for JetPackAssetDaemonMessage(0);
  swift_storeEnumTagMultiPayload();

  return a2(v4, v5, v6);
}

uint64_t sub_1DB502EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
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

uint64_t sub_1DB502F40(uint64_t a1)
{
  v2 = sub_1DB503130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB502F7C(uint64_t a1)
{
  v2 = sub_1DB503130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushResetRecordRequest.encode(to:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47FA8, &qword_1DB5250E8);
  v3 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3184A4(v6, v7, v8);
  sub_1DB503130();
  sub_1DB50BE40();
  v12 = v6;
  v13 = v7;
  v14 = v8;
  sub_1DB503184();
  v9 = v11;
  sub_1DB50B8A0();
  sub_1DB3184B4(v12, v13, v14);
  return (*(v3 + 8))(v5, v9);
}

unint64_t sub_1DB503130()
{
  result = qword_1ECC47FB0;
  if (!qword_1ECC47FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47FB0);
  }

  return result;
}

unint64_t sub_1DB503184()
{
  result = qword_1ECC47FB8;
  if (!qword_1ECC47FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47FB8);
  }

  return result;
}

uint64_t DaemonPushResetRecordRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47FC0, &qword_1DB5250F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB503130();
  sub_1DB50BDF0();
  if (!v2)
  {
    sub_1DB503350();
    sub_1DB50B780();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB503350()
{
  result = qword_1ECC47FC8;
  if (!qword_1ECC47FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47FC8);
  }

  return result;
}

uint64_t sub_1DB5033C0@<X0>(uint64_t (*a2)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  type metadata accessor for JetPackAssetDaemonMessage(0);
  swift_storeEnumTagMultiPayload();

  return a2(v4, v5, v6);
}

uint64_t DaemonPushClearRecordsRequest.message.getter()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB5034E4(uint64_t a1)
{
  v2 = sub_1DB5036C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB503520(uint64_t a1)
{
  v2 = sub_1DB5036C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB5035A0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DB50BE40();
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1DB5036C0()
{
  result = qword_1ECC47FD8;
  if (!qword_1ECC47FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47FD8);
  }

  return result;
}

uint64_t sub_1DB503714()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB50379C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1DB50BE40();
  return (*(v10 + 8))(v12, v9);
}

uint64_t DaemonCacheEvictRequest.cacheKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DaemonCacheEvictRequest.fileName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DaemonCacheEvictRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000034, 0x80000001DB52FAF0);
  MEMORY[0x1E1285C70](v3, v4);
  MEMORY[0x1E1285C70](0x6568636163202C20, 0xED0000203A79654BLL);
  MEMORY[0x1E1285C70](v1, v2);
  return 0;
}

uint64_t DaemonCacheEvictRequest.message.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  type metadata accessor for JetPackAssetDaemonMessage(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB503A68()
{
  if (*v0)
  {
    return 0x656D614E656C6966;
  }

  else
  {
    return 0x79654B6568636163;
  }
}

uint64_t sub_1DB503A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B6568636163 && a2 == 0xE800000000000000;
  if (v6 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000)
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

uint64_t sub_1DB503B78(uint64_t a1)
{
  v2 = sub_1DB503D84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB503BB4(uint64_t a1)
{
  v2 = sub_1DB503D84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonCacheEvictRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47FE0, &qword_1DB525100);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB503D84();
  sub_1DB50BE40();
  v12 = 0;
  v8 = v10[3];
  sub_1DB50B860();
  if (!v8)
  {
    v11 = 1;
    sub_1DB50B860();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DB503D84()
{
  result = qword_1ECC47FE8;
  if (!qword_1ECC47FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47FE8);
  }

  return result;
}

uint64_t DaemonCacheEvictRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47FF0, &qword_1DB525108);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB503D84();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v9 = sub_1DB50B740();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1DB50B740();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DB503FD8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  type metadata accessor for JetPackAssetDaemonMessage(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB504074()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000034, 0x80000001DB52FAF0);
  MEMORY[0x1E1285C70](v3, v4);
  MEMORY[0x1E1285C70](0x6568636163202C20, 0xED0000203A79654BLL);
  MEMORY[0x1E1285C70](v1, v2);
  return 0;
}

uint64_t DaemonCacheEvictResponse.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DB50B680();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DB5041A8()
{
  sub_1DB50BCF0();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB504214(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB504264@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1DB50B680();

  *a2 = v3 != 0;
  return result;
}

unint64_t DaemonGetAssetRequest.description.getter()
{
  sub_1DB50B320();

  v0 = sub_1DB509B80();
  MEMORY[0x1E1285C70](v0);

  return 0xD000000000000013;
}

uint64_t DaemonGetAssetRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1DB50062C(v1, a1, type metadata accessor for DaemonGetAssetRequest);
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB5044CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74657373416C7275 && a2 == 0xEF74736575716552)
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

uint64_t sub_1DB50455C(uint64_t a1)
{
  v2 = sub_1DB50474C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB504598(uint64_t a1)
{
  v2 = sub_1DB50474C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonGetAssetRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47FF8, &qword_1DB525110);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50474C();
  sub_1DB50BE40();
  type metadata accessor for URLJetPackAssetRequest(0);
  sub_1DB4FAD10(&qword_1ECC48000, type metadata accessor for URLJetPackAssetRequest, &protocol conformance descriptor for URLJetPackAssetRequest);
  sub_1DB50B8A0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DB50474C()
{
  result = qword_1EE30D0C0[0];
  if (!qword_1EE30D0C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30D0C0);
  }

  return result;
}

uint64_t DaemonGetAssetRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for URLJetPackAssetRequest(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC48008, &qword_1DB525118);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  AssetRequest = type metadata accessor for DaemonGetAssetRequest(0);
  MEMORY[0x1EEE9AC00](AssetRequest - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50474C();
  sub_1DB50BDF0();
  if (!v2)
  {
    v12 = v15;
    sub_1DB4FAD10(&qword_1EE30CE60, type metadata accessor for URLJetPackAssetRequest, &protocol conformance descriptor for URLJetPackAssetRequest);
    v13 = v17;
    sub_1DB50B780();
    (*(v16 + 8))(v8, v6);
    sub_1DB4F8EE4(v13, v11, type metadata accessor for URLJetPackAssetRequest);
    sub_1DB4F8EE4(v11, v12, type metadata accessor for DaemonGetAssetRequest);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DB504A14@<X0>(uint64_t a1@<X8>)
{
  sub_1DB50062C(v1, a1, type metadata accessor for DaemonGetAssetRequest);
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB504A90(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47FF8, &qword_1DB525110);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50474C();
  sub_1DB50BE40();
  type metadata accessor for URLJetPackAssetRequest(0);
  sub_1DB4FAD10(&qword_1ECC48000, type metadata accessor for URLJetPackAssetRequest, &protocol conformance descriptor for URLJetPackAssetRequest);
  sub_1DB50B8A0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DB504C08()
{
  sub_1DB50B320();

  v0 = sub_1DB509B80();
  MEMORY[0x1E1285C70](v0);

  return 0xD000000000000013;
}

uint64_t sub_1DB504D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7465737361 && a2 == 0xE500000000000000)
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

uint64_t sub_1DB504D84(uint64_t a1)
{
  v2 = sub_1DB504F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB504DC0(uint64_t a1)
{
  v2 = sub_1DB504F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonGetAssetResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC48010, &qword_1DB525120);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB504F74();
  sub_1DB50BE40();
  type metadata accessor for XPCJetAsset(0);
  sub_1DB4FAD10(&qword_1EE30DA10, type metadata accessor for XPCJetAsset, &protocol conformance descriptor for XPCJetAsset);
  sub_1DB50B8A0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DB504F74()
{
  result = qword_1EE30CFC8;
  if (!qword_1EE30CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CFC8);
  }

  return result;
}

uint64_t DaemonGetAssetResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for XPCJetAsset(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC48018, &qword_1DB525128);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  AssetResponse = type metadata accessor for DaemonGetAssetResponse(0);
  MEMORY[0x1EEE9AC00](AssetResponse - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB504F74();
  sub_1DB50BDF0();
  if (!v2)
  {
    v12 = v15;
    sub_1DB4FAD10(&qword_1ECC48020, type metadata accessor for XPCJetAsset, &protocol conformance descriptor for XPCJetAsset);
    v13 = v17;
    sub_1DB50B780();
    (*(v16 + 8))(v8, v6);
    sub_1DB4F8EE4(v13, v11, type metadata accessor for XPCJetAsset);
    sub_1DB4F8EE4(v11, v12, type metadata accessor for DaemonGetAssetResponse);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB5052B4()
{
  result = qword_1ECC48030;
  if (!qword_1ECC48030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48030);
  }

  return result;
}

unint64_t sub_1DB505348()
{
  result = qword_1ECC48038;
  if (!qword_1ECC48038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48038);
  }

  return result;
}

unint64_t sub_1DB5053A0()
{
  result = qword_1ECC48040;
  if (!qword_1ECC48040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48040);
  }

  return result;
}

unint64_t sub_1DB5053F8()
{
  result = qword_1ECC48048;
  if (!qword_1ECC48048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48048);
  }

  return result;
}

unint64_t sub_1DB50548C()
{
  result = qword_1ECC48050;
  if (!qword_1ECC48050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48050);
  }

  return result;
}

unint64_t sub_1DB5054E4()
{
  result = qword_1ECC48058;
  if (!qword_1ECC48058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48058);
  }

  return result;
}

unint64_t sub_1DB50553C()
{
  result = qword_1ECC48060;
  if (!qword_1ECC48060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48060);
  }

  return result;
}

unint64_t sub_1DB5055D0()
{
  result = qword_1ECC48068;
  if (!qword_1ECC48068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48068);
  }

  return result;
}

unint64_t sub_1DB505664()
{
  result = qword_1ECC48070;
  if (!qword_1ECC48070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48070);
  }

  return result;
}

unint64_t sub_1DB5056F8()
{
  result = qword_1ECC48078;
  if (!qword_1ECC48078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48078);
  }

  return result;
}

unint64_t sub_1DB50581C()
{
  result = qword_1ECC48090;
  if (!qword_1ECC48090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48090);
  }

  return result;
}

unint64_t sub_1DB5058B0()
{
  result = qword_1ECC48098;
  if (!qword_1ECC48098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48098);
  }

  return result;
}

unint64_t sub_1DB505944()
{
  result = qword_1ECC480A0;
  if (!qword_1ECC480A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC480A0);
  }

  return result;
}

unint64_t sub_1DB5059D8()
{
  result = qword_1ECC480A8;
  if (!qword_1ECC480A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC480A8);
  }

  return result;
}

unint64_t sub_1DB505A6C()
{
  result = qword_1ECC480B0;
  if (!qword_1ECC480B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC480B0);
  }

  return result;
}

unint64_t sub_1DB505AC4()
{
  result = qword_1ECC480B8;
  if (!qword_1ECC480B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC480B8);
  }

  return result;
}

unint64_t sub_1DB505B1C()
{
  result = qword_1ECC480C0;
  if (!qword_1ECC480C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC480C0);
  }

  return result;
}

uint64_t sub_1DB505BB0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1DB505C04()
{
  result = qword_1ECC480C8;
  if (!qword_1ECC480C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC480C8);
  }

  return result;
}

unint64_t sub_1DB505C5C()
{
  result = qword_1ECC480D0;
  if (!qword_1ECC480D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC480D0);
  }

  return result;
}

uint64_t sub_1DB505D40(void *a1)
{
  a1[1] = sub_1DB4FAD10(&qword_1EE30D098, type metadata accessor for DaemonGetAssetRequest, &protocol conformance descriptor for DaemonGetAssetRequest);
  a1[2] = sub_1DB4FAD10(&qword_1EE30D0A0, type metadata accessor for DaemonGetAssetRequest, &protocol conformance descriptor for DaemonGetAssetRequest);
  result = sub_1DB4FAD10(&qword_1EE30D0A8, type metadata accessor for DaemonGetAssetRequest, &protocol conformance descriptor for DaemonGetAssetRequest);
  a1[3] = result;
  return result;
}

uint64_t sub_1DB505E04(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC48010, &qword_1DB525120);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB504F74();
  sub_1DB50BE40();
  type metadata accessor for XPCJetAsset(0);
  sub_1DB4FAD10(&qword_1EE30DA10, type metadata accessor for XPCJetAsset, &protocol conformance descriptor for XPCJetAsset);
  sub_1DB50B8A0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1DB505F7C(uint64_t a1)
{
  result = type metadata accessor for DaemonGetAssetRequest(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DB50611C(uint64_t a1)
{
  sub_1DB5062D8(319, &qword_1ECC480F8, &type metadata for AssetPushSubscriptionRecord, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1DB506228();
    if (v2 <= 0x3F)
    {
      sub_1DB506280(319);
      if (v3 <= 0x3F)
      {
        sub_1DB5062D8(319, &qword_1EE30C860, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DB506228()
{
  if (!qword_1ECC48100)
  {
    v0 = sub_1DB50ADF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC48100);
    }
  }
}

void sub_1DB506280(uint64_t a1)
{
  if (!qword_1ECC48108)
  {
    sub_1DB509DD0();
    v1 = sub_1DB50B120();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECC48108);
    }
  }
}

void sub_1DB5062D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_151Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_152Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1DB50650C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JetPackAssetDaemonMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for JetPackAssetDaemonMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DB506920()
{
  result = qword_1ECC48110;
  if (!qword_1ECC48110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48110);
  }

  return result;
}

unint64_t sub_1DB506978()
{
  result = qword_1ECC48118;
  if (!qword_1ECC48118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48118);
  }

  return result;
}

unint64_t sub_1DB5069D0()
{
  result = qword_1ECC48120;
  if (!qword_1ECC48120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48120);
  }

  return result;
}

unint64_t sub_1DB506A28()
{
  result = qword_1ECC48128;
  if (!qword_1ECC48128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48128);
  }

  return result;
}

unint64_t sub_1DB506A80()
{
  result = qword_1ECC48130;
  if (!qword_1ECC48130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48130);
  }

  return result;
}

unint64_t sub_1DB506AD8()
{
  result = qword_1ECC48138;
  if (!qword_1ECC48138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48138);
  }

  return result;
}

unint64_t sub_1DB506B30()
{
  result = qword_1ECC48140;
  if (!qword_1ECC48140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48140);
  }

  return result;
}

unint64_t sub_1DB506B88()
{
  result = qword_1ECC48148;
  if (!qword_1ECC48148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48148);
  }

  return result;
}

unint64_t sub_1DB506BE0()
{
  result = qword_1ECC48150;
  if (!qword_1ECC48150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48150);
  }

  return result;
}

unint64_t sub_1DB506C38()
{
  result = qword_1ECC48158;
  if (!qword_1ECC48158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48158);
  }

  return result;
}

unint64_t sub_1DB506C90()
{
  result = qword_1ECC48160;
  if (!qword_1ECC48160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48160);
  }

  return result;
}

unint64_t sub_1DB506CE8()
{
  result = qword_1ECC48168;
  if (!qword_1ECC48168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48168);
  }

  return result;
}

unint64_t sub_1DB506D40()
{
  result = qword_1ECC48170;
  if (!qword_1ECC48170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48170);
  }

  return result;
}

unint64_t sub_1DB506D98()
{
  result = qword_1ECC48178;
  if (!qword_1ECC48178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48178);
  }

  return result;
}

unint64_t sub_1DB506DF0()
{
  result = qword_1ECC48180;
  if (!qword_1ECC48180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48180);
  }

  return result;
}

unint64_t sub_1DB506E48()
{
  result = qword_1ECC48188;
  if (!qword_1ECC48188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48188);
  }

  return result;
}

unint64_t sub_1DB506EA0()
{
  result = qword_1ECC48190;
  if (!qword_1ECC48190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48190);
  }

  return result;
}

unint64_t sub_1DB506EF8()
{
  result = qword_1ECC48198;
  if (!qword_1ECC48198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48198);
  }

  return result;
}

unint64_t sub_1DB506F50()
{
  result = qword_1ECC481A0;
  if (!qword_1ECC481A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481A0);
  }

  return result;
}

unint64_t sub_1DB506FA8()
{
  result = qword_1ECC481A8;
  if (!qword_1ECC481A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481A8);
  }

  return result;
}

unint64_t sub_1DB507000()
{
  result = qword_1ECC481B0;
  if (!qword_1ECC481B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481B0);
  }

  return result;
}

unint64_t sub_1DB507058()
{
  result = qword_1ECC481B8;
  if (!qword_1ECC481B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481B8);
  }

  return result;
}

unint64_t sub_1DB5070B0()
{
  result = qword_1ECC481C0;
  if (!qword_1ECC481C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481C0);
  }

  return result;
}

unint64_t sub_1DB507108()
{
  result = qword_1ECC481C8;
  if (!qword_1ECC481C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481C8);
  }

  return result;
}

unint64_t sub_1DB507160()
{
  result = qword_1ECC481D0;
  if (!qword_1ECC481D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481D0);
  }

  return result;
}

unint64_t sub_1DB5071B8()
{
  result = qword_1ECC481D8;
  if (!qword_1ECC481D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481D8);
  }

  return result;
}

unint64_t sub_1DB507210()
{
  result = qword_1ECC481E0;
  if (!qword_1ECC481E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481E0);
  }

  return result;
}

unint64_t sub_1DB507268()
{
  result = qword_1ECC481E8;
  if (!qword_1ECC481E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481E8);
  }

  return result;
}

unint64_t sub_1DB5072C0()
{
  result = qword_1ECC481F0;
  if (!qword_1ECC481F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481F0);
  }

  return result;
}

unint64_t sub_1DB507318()
{
  result = qword_1ECC481F8;
  if (!qword_1ECC481F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481F8);
  }

  return result;
}

unint64_t sub_1DB507370()
{
  result = qword_1ECC48200;
  if (!qword_1ECC48200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48200);
  }

  return result;
}

unint64_t sub_1DB5073C8()
{
  result = qword_1ECC48208;
  if (!qword_1ECC48208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48208);
  }

  return result;
}

unint64_t sub_1DB507420()
{
  result = qword_1EE30CFB8;
  if (!qword_1EE30CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CFB8);
  }

  return result;
}

unint64_t sub_1DB507478()
{
  result = qword_1EE30CFC0;
  if (!qword_1EE30CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CFC0);
  }

  return result;
}

unint64_t sub_1DB5074D0()
{
  result = qword_1EE30D0B0;
  if (!qword_1EE30D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30D0B0);
  }

  return result;
}

unint64_t sub_1DB507528()
{
  result = qword_1EE30D0B8;
  if (!qword_1EE30D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30D0B8);
  }

  return result;
}

unint64_t sub_1DB507580()
{
  result = qword_1ECC48210;
  if (!qword_1ECC48210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48210);
  }

  return result;
}

unint64_t sub_1DB5075D8()
{
  result = qword_1ECC48218;
  if (!qword_1ECC48218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48218);
  }

  return result;
}

unint64_t sub_1DB507630()
{
  result = qword_1ECC48220;
  if (!qword_1ECC48220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48220);
  }

  return result;
}

unint64_t sub_1DB507688()
{
  result = qword_1ECC48228;
  if (!qword_1ECC48228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48228);
  }

  return result;
}

unint64_t sub_1DB5076E0()
{
  result = qword_1ECC48230;
  if (!qword_1ECC48230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48230);
  }

  return result;
}

unint64_t sub_1DB507738()
{
  result = qword_1ECC48238;
  if (!qword_1ECC48238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48238);
  }

  return result;
}

unint64_t sub_1DB507790()
{
  result = qword_1ECC48240;
  if (!qword_1ECC48240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48240);
  }

  return result;
}

unint64_t sub_1DB5077E8()
{
  result = qword_1ECC48248;
  if (!qword_1ECC48248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48248);
  }

  return result;
}

unint64_t sub_1DB507840()
{
  result = qword_1ECC48250;
  if (!qword_1ECC48250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48250);
  }

  return result;
}

unint64_t sub_1DB507898()
{
  result = qword_1ECC48258;
  if (!qword_1ECC48258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48258);
  }

  return result;
}

unint64_t sub_1DB5078F0()
{
  result = qword_1ECC48260;
  if (!qword_1ECC48260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48260);
  }

  return result;
}

unint64_t sub_1DB507948()
{
  result = qword_1ECC48268;
  if (!qword_1ECC48268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48268);
  }

  return result;
}

unint64_t sub_1DB5079A0()
{
  result = qword_1ECC48270;
  if (!qword_1ECC48270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48270);
  }

  return result;
}

unint64_t sub_1DB5079F8()
{
  result = qword_1ECC48278;
  if (!qword_1ECC48278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48278);
  }

  return result;
}

unint64_t sub_1DB507A50()
{
  result = qword_1ECC48280;
  if (!qword_1ECC48280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48280);
  }

  return result;
}

unint64_t sub_1DB507AA8()
{
  result = qword_1ECC48288;
  if (!qword_1ECC48288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48288);
  }

  return result;
}

unint64_t sub_1DB507B00()
{
  result = qword_1ECC48290;
  if (!qword_1ECC48290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48290);
  }

  return result;
}

unint64_t sub_1DB507B58()
{
  result = qword_1ECC48298;
  if (!qword_1ECC48298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48298);
  }

  return result;
}

unint64_t sub_1DB507BB0()
{
  result = qword_1ECC482A0;
  if (!qword_1ECC482A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482A0);
  }

  return result;
}

unint64_t sub_1DB507C08()
{
  result = qword_1ECC482A8;
  if (!qword_1ECC482A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482A8);
  }

  return result;
}

unint64_t sub_1DB507C60()
{
  result = qword_1ECC482B0;
  if (!qword_1ECC482B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482B0);
  }

  return result;
}

unint64_t sub_1DB507CB8()
{
  result = qword_1ECC482B8;
  if (!qword_1ECC482B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482B8);
  }

  return result;
}

unint64_t sub_1DB507D10()
{
  result = qword_1ECC482C0;
  if (!qword_1ECC482C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482C0);
  }

  return result;
}

unint64_t sub_1DB507D68()
{
  result = qword_1ECC482C8;
  if (!qword_1ECC482C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482C8);
  }

  return result;
}

unint64_t sub_1DB507DC0()
{
  result = qword_1ECC482D0;
  if (!qword_1ECC482D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482D0);
  }

  return result;
}

unint64_t sub_1DB507E18()
{
  result = qword_1ECC482D8;
  if (!qword_1ECC482D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482D8);
  }

  return result;
}

unint64_t sub_1DB507E70()
{
  result = qword_1ECC482E0;
  if (!qword_1ECC482E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482E0);
  }

  return result;
}

unint64_t sub_1DB507EC8()
{
  result = qword_1ECC482E8;
  if (!qword_1ECC482E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482E8);
  }

  return result;
}

unint64_t sub_1DB507F20()
{
  result = qword_1ECC482F0;
  if (!qword_1ECC482F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482F0);
  }

  return result;
}

unint64_t sub_1DB507F78()
{
  result = qword_1ECC482F8;
  if (!qword_1ECC482F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482F8);
  }

  return result;
}

unint64_t sub_1DB507FD0()
{
  result = qword_1ECC48300;
  if (!qword_1ECC48300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48300);
  }

  return result;
}

unint64_t sub_1DB508028()
{
  result = qword_1ECC48308;
  if (!qword_1ECC48308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48308);
  }

  return result;
}

unint64_t sub_1DB508080()
{
  result = qword_1ECC48310;
  if (!qword_1ECC48310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48310);
  }

  return result;
}

unint64_t sub_1DB5080D8()
{
  result = qword_1ECC48318;
  if (!qword_1ECC48318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48318);
  }

  return result;
}

unint64_t sub_1DB508130()
{
  result = qword_1ECC48320;
  if (!qword_1ECC48320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48320);
  }

  return result;
}

unint64_t sub_1DB508188()
{
  result = qword_1ECC48328;
  if (!qword_1ECC48328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48328);
  }

  return result;
}

unint64_t sub_1DB5081E0()
{
  result = qword_1ECC48330;
  if (!qword_1ECC48330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48330);
  }

  return result;
}

unint64_t sub_1DB508238()
{
  result = qword_1ECC48338;
  if (!qword_1ECC48338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48338);
  }

  return result;
}

unint64_t sub_1DB508290()
{
  result = qword_1ECC48340;
  if (!qword_1ECC48340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48340);
  }

  return result;
}

unint64_t sub_1DB5082E8()
{
  result = qword_1ECC48348;
  if (!qword_1ECC48348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48348);
  }

  return result;
}

unint64_t sub_1DB508340()
{
  result = qword_1ECC48350;
  if (!qword_1ECC48350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48350);
  }

  return result;
}

unint64_t sub_1DB508398()
{
  result = qword_1ECC48358;
  if (!qword_1ECC48358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48358);
  }

  return result;
}

unint64_t sub_1DB5083F0()
{
  result = qword_1ECC48360;
  if (!qword_1ECC48360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48360);
  }

  return result;
}

unint64_t sub_1DB508448()
{
  result = qword_1ECC48368;
  if (!qword_1ECC48368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48368);
  }

  return result;
}

unint64_t sub_1DB5084A0()
{
  result = qword_1EE30DE28;
  if (!qword_1EE30DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE28);
  }

  return result;
}

unint64_t sub_1DB5084F8()
{
  result = qword_1EE30DE30;
  if (!qword_1EE30DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE30);
  }

  return result;
}

unint64_t sub_1DB508550()
{
  result = qword_1EE30DE78;
  if (!qword_1EE30DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE78);
  }

  return result;
}

unint64_t sub_1DB5085A8()
{
  result = qword_1EE30DE80[0];
  if (!qword_1EE30DE80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30DE80);
  }

  return result;
}

unint64_t sub_1DB508600()
{
  result = qword_1EE30DE68;
  if (!qword_1EE30DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE68);
  }

  return result;
}

unint64_t sub_1DB508658()
{
  result = qword_1EE30DE70;
  if (!qword_1EE30DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE70);
  }

  return result;
}

unint64_t sub_1DB5086B0()
{
  result = qword_1EE30DDA8;
  if (!qword_1EE30DDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDA8);
  }

  return result;
}

unint64_t sub_1DB508708()
{
  result = qword_1EE30DDB0;
  if (!qword_1EE30DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDB0);
  }

  return result;
}

unint64_t sub_1DB508760()
{
  result = qword_1EE30DDB8;
  if (!qword_1EE30DDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDB8);
  }

  return result;
}

unint64_t sub_1DB5087B8()
{
  result = qword_1EE30DDC0;
  if (!qword_1EE30DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDC0);
  }

  return result;
}

unint64_t sub_1DB508810()
{
  result = qword_1EE30DDE8;
  if (!qword_1EE30DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDE8);
  }

  return result;
}

unint64_t sub_1DB508868()
{
  result = qword_1EE30DDF0;
  if (!qword_1EE30DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDF0);
  }

  return result;
}

unint64_t sub_1DB5088C0()
{
  result = qword_1EE30DE18;
  if (!qword_1EE30DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE18);
  }

  return result;
}

unint64_t sub_1DB508918()
{
  result = qword_1EE30DE20;
  if (!qword_1EE30DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE20);
  }

  return result;
}

unint64_t sub_1DB508970()
{
  result = qword_1EE30DD98;
  if (!qword_1EE30DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DD98);
  }

  return result;
}

unint64_t sub_1DB5089C8()
{
  result = qword_1EE30DDA0;
  if (!qword_1EE30DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDA0);
  }

  return result;
}

unint64_t sub_1DB508A20()
{
  result = qword_1EE30DDC8;
  if (!qword_1EE30DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDC8);
  }

  return result;
}

unint64_t sub_1DB508A78()
{
  result = qword_1EE30DDD0;
  if (!qword_1EE30DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDD0);
  }

  return result;
}

unint64_t sub_1DB508AD0()
{
  result = qword_1EE30DDF8;
  if (!qword_1EE30DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDF8);
  }

  return result;
}

unint64_t sub_1DB508B28()
{
  result = qword_1EE30DE00;
  if (!qword_1EE30DE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE00);
  }

  return result;
}

unint64_t sub_1DB508B80()
{
  result = qword_1EE30DE08;
  if (!qword_1EE30DE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE08);
  }

  return result;
}

unint64_t sub_1DB508BD8()
{
  result = qword_1EE30DE10;
  if (!qword_1EE30DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE10);
  }

  return result;
}

unint64_t sub_1DB508C30()
{
  result = qword_1EE30DDD8;
  if (!qword_1EE30DDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDD8);
  }

  return result;
}

unint64_t sub_1DB508C88()
{
  result = qword_1EE30DDE0;
  if (!qword_1EE30DDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDE0);
  }

  return result;
}

unint64_t sub_1DB508CE0()
{
  result = qword_1EE30DE38;
  if (!qword_1EE30DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE38);
  }

  return result;
}

unint64_t sub_1DB508D38()
{
  result = qword_1EE30DE40;
  if (!qword_1EE30DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE40);
  }

  return result;
}

unint64_t sub_1DB508D90()
{
  result = qword_1EE30DE50;
  if (!qword_1EE30DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE50);
  }

  return result;
}

unint64_t sub_1DB508DE8()
{
  result = qword_1EE30DE58;
  if (!qword_1EE30DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE58);
  }

  return result;
}

uint64_t sub_1DB508E3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1735289200 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB531860 == a2 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7473655464616572 && a2 == 0xED00007465737341 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEC0000006B736154 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74736E4974736F70 && a2 == 0xEB000000006C6C61 || (sub_1DB50BA30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6572666552676162 && a2 == 0xEA00000000006873 || (sub_1DB50BA30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F666E4968737570 && a2 == 0xE800000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB531880 == a2 || (sub_1DB50BA30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C654468737570 && a2 == 0xEA00000000006574 || (sub_1DB50BA30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6573655268737570 && a2 == 0xE900000000000074 || (sub_1DB50BA30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x61656C4368737570 && a2 == 0xE900000000000072 || (sub_1DB50BA30() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6976456568636163 && a2 == 0xEA00000000007463 || (sub_1DB50BA30() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 7628135 && a2 == 0xE300000000000000)
  {

    return 12;
  }

  else
  {
    v6 = sub_1DB50BA30();

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

uint64_t sub_1DB509270(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364726F636572 && a2 == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DB5318A0 == a2 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DB5318C0 == a2 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB5318E0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DB50BA30();

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

unint64_t sub_1DB509430()
{
  result = qword_1ECC48370;
  if (!qword_1ECC48370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48370);
  }

  return result;
}

void InitializeProcessLaunchTimeInterval_cold_1(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = strerror(a1);
  _os_log_fault_impl(&dword_1DB2F5000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Could not get process launch time, reason: %{public}s", &v1, 0xCu);
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAFE0](t, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}