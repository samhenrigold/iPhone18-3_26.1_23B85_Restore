uint64_t sub_2558AEB9C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2558AECFC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2558AEC88(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F7D6C58, &qword_255970318);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2558AECFC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F7D6C58, &qword_255970318);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2558AEDF0()
{
  result = qword_27F7D6310;
  if (!qword_27F7D6310)
  {
    sub_2559651D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D6310);
  }

  return result;
}

uint64_t sub_2558AEE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v10 = v3[5];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_255888484;

  return sub_2558AD488(a1, a2, a3, v9, v11, v10, v8);
}

uint64_t sub_2558AEF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v10 = v3[5];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_255888484;

  return sub_2558ADE20(a1, a2, a3, v9, v11, v10, v8);
}

uint64_t sub_2558AEFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v10 = v3[5];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_255888484;

  return sub_2558ADE20(a1, a2, a3, v9, v11, v10, v8);
}

uint64_t type metadata accessor for GraphManager(uint64_t a1)
{
  result = qword_27F7D6C18;
  if (!qword_27F7D6C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2558AF124(uint64_t a1)
{
  result = sub_2559651D0();
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

uint64_t sub_2558AF200@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62A8, &qword_25596E660);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  dispatch_suspend(a1);
  v11 = sub_255965680();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v13 = a1;

  result = sub_2558AAB68(0, 0, v10, &unk_255970310, v12);
  *a4 = result;
  return result;
}

unint64_t sub_2558AF340()
{
  result = qword_27F7D6C48;
  if (!qword_27F7D6C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7D6C40, &qword_2559702E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D6C48);
  }

  return result;
}

uint64_t sub_2558AF3A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_255888484;

  return sub_2558866DC(a1, v4);
}

uint64_t sub_2558AF47C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_255888484;

  return sub_255886C70(a1, v4, v5, v6, v7);
}

uint64_t sub_2558AF544(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_255888484;

  return sub_2558AE658(a1, v4);
}

uint64_t sub_2558AF600@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a1 + 1;
  *&v10[0] = *a1;
  v8 = *(a3 + 32);

  v8(&v11, v10, v7, a2, a3);

  sub_25588B81C(v7, v10);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  return sub_25589F7AC(&v11, v10, a4);
}

uint64_t NodeFilterRelation.targetNodeIdentifiers(from:in:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = *v4;
  v9 = v4[1];
  v10 = v4[2];
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  v17[3] = type metadata accessor for Filter(0, *(a3 + 16), v13, v14);
  v16[1] = *(a3 + 24);
  v17[0] = v8;
  v17[1] = v9;
  v17[4] = swift_getWitnessTable();
  v17[2] = v10;
  v16[0] = v7;

  AbstractGraph.nodeIdentifiers(matching:in:)(v17, v16, v11, v12, &v18);
  result = __swift_destroy_boxed_opaque_existential_0(v17);
  *a4 = v18;
  return result;
}

uint64_t NodeFilterRelation.adjacency(from:in:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = *v4;
  v9 = v4[1];
  v10 = v4[2];
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  v17[3] = type metadata accessor for Filter(0, *(a3 + 16), v13, v14);
  v16[1] = *(a3 + 24);
  v17[0] = v8;
  v17[1] = v9;
  v17[4] = swift_getWitnessTable();
  v17[2] = v10;
  v16[0] = v7;

  AbstractGraph.nodeIdentifiers(matching:in:)(v17, v16, v11, v12, &v18);
  __swift_destroy_boxed_opaque_existential_0(v17);
  v17[0] = v18;
  sub_2558776CC(v17, a4);
}

uint64_t NodeFilterRelation.adjacencyByJoining(with:in:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = *v4;
  v8 = v4[1];
  v9 = v4[2];
  v27 = a2[4];
  v28 = a2[3];
  v26 = __swift_project_boxed_opaque_existential_1(a2, v28);
  v33[3] = type metadata accessor for Filter(0, *(a3 + 16), v10, v11);
  v32 = *(a3 + 24);
  v33[0] = v7;
  v33[1] = v8;
  v33[4] = swift_getWitnessTable();
  v33[2] = v9;
  v12 = objc_allocWithZone(KGMutableElementIdentifierSet);

  v13 = [v12 init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  inited = swift_initStackObject();
  *(inited + 16) = v13;
  v15 = 1 << *(v6 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v6 + 64);
  v18 = (v15 + 63) >> 6;

  v20 = 0;
  while (v17)
  {
LABEL_10:
    v22 = *(*(v6 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v17)))));

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = *(inited + 16);
      [v23 mutableCopy];
      sub_2559658F0();
      swift_unknownObjectRelease();

      sub_25587AF08();
      swift_dynamicCast();
      v24 = swift_allocObject();
      *(v24 + 16) = v30;

      inited = v24;
    }

    v17 &= v17 - 1;
    [*(inited + 16) unionWithIdentifierSet_];
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      v30 = inited;
      AbstractGraph.nodeIdentifiers(matching:in:)(v33, &v30, v28, v27, v31);

      __swift_destroy_boxed_opaque_existential_0(v33);
      v25 = v31[0];
      *a4 = sub_255879DA8(MEMORY[0x277D84F90]);
      v33[0] = v6;
      sub_255879FFC(v33, a4, v25);
    }

    v17 = *(v6 + 64 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t ChainRelation.targetNodeIdentifiers(from:in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *(*v3 + 16);
  if (v6)
  {
    v8 = *v3 + 32;

    do
    {
      sub_25588B81C(v8, v14);
      v9 = v15;
      v10 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v12 = v5;
      (*(v10 + 24))(&v13, &v12, a2, v9, v10);
      __swift_destroy_boxed_opaque_existential_0(v14);

      v5 = v13;
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }

  *a3 = v5;
  return result;
}

uint64_t ChainRelation.adjacency(from:in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *v3;
  result = sub_255879DA8(MEMORY[0x277D84F90]);
  v9 = result;
  v10 = *(v7 + 16);
  if (v10)
  {
    sub_25588B81C(v7 + 32, v19);

    v11 = v20;
    v12 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v17 = v6;
    (*(v12 + 32))(&v18, &v17, a2, v11, v12);
    v9 = v18;
    result = __swift_destroy_boxed_opaque_existential_0(v19);
    v13 = v10 - 1;
    if (v13)
    {
      v14 = v7 + 72;
      do
      {
        sub_25588B81C(v14, v19);
        v15 = v20;
        v16 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v17 = v9;
        (*(v16 + 40))(&v18, &v17, a2, v15, v16);

        v9 = v18;
        result = __swift_destroy_boxed_opaque_existential_0(v19);
        v14 += 40;
        --v13;
      }

      while (v13);
    }
  }

  *a3 = v9;
  return result;
}

uint64_t ChainRelation.adjacencyByJoining(with:in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *(*v3 + 16);
  if (v6)
  {
    v8 = *v3 + 32;

    do
    {
      sub_25588B81C(v8, v14);
      v9 = v15;
      v10 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v12 = v5;
      (*(v10 + 40))(&v13, &v12, a2, v9, v10);
      __swift_destroy_boxed_opaque_existential_0(v14);

      v5 = v13;
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }

  *a3 = v5;
  return result;
}

uint64_t ChainRelation.inverse()@<X0>(int8x16_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v16 = MEMORY[0x277D84F90];
    result = sub_2558A57E0(0, v6, 0);
    v9 = *(v5 + 16);
    v7 = v16;
    v10 = v9 - 1;
    v11 = v5 + 40 * v9 - 8;
    while (v10 != -1)
    {
      if (v10 >= *(v5 + 16))
      {
        goto LABEL_10;
      }

      sub_25588B81C(v11, v15);
      v16 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2558A57E0((v12 > 1), v13 + 1, 1);
        v7 = v16;
      }

      *(v7 + 16) = v13 + 1;
      result = sub_255872164(v15, v7 + 40 * v13 + 32);
      --v10;
      v11 -= 40;
      if (!--v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:
    v14 = vextq_s8(a1[2], a1[2], 8uLL);
    v15[0] = vextq_s8(a1[1], a1[1], 8uLL);
    v15[1] = v14;
    a2[3] = type metadata accessor for ChainRelation(0, v15);
    result = swift_getWitnessTable();
    a2[4] = result;
    *a2 = v7;
  }

  return result;
}

__n128 NeighborRelationIn.init(with:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  return result;
}

uint64_t sub_2558B0104@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, void *a4@<X8>)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  a4[3] = a2(0, *(a1 + 16), *(a1 + 24));
  a4[4] = swift_getWitnessTable();
  *a4 = v6;
  a4[1] = v7;
  a4[2] = v8;
}

uint64_t sub_2558B01AC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v9 = *a1;
  v10 = *v5;
  v11 = v5[1];
  v12 = v5[2];
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v19 = v9;
  v18[3] = type metadata accessor for Filter(0, *(a3 + 16), v15, v16);
  v18[0] = v10;
  v18[1] = v11;
  v18[4] = swift_getWitnessTable();
  v18[2] = v12;

  sub_25589E8C8(&v19, v18, a5, v13, v14, &v20);
  result = __swift_destroy_boxed_opaque_existential_0(v18);
  *a4 = v20;
  return result;
}

uint64_t sub_2558B02B4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v9 = *a1;
  v10 = *v5;
  v11 = v5[1];
  v12 = v5[2];
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v19 = v9;
  v18[3] = type metadata accessor for Filter(0, *(a3 + 16), v15, v16);
  v18[0] = v10;
  v18[1] = v11;
  v18[4] = swift_getWitnessTable();
  v18[2] = v12;

  sub_25589EAC4(&v19, &v20, v18, a5, v13, v14);
  result = __swift_destroy_boxed_opaque_existential_0(v18);
  *a4 = v20;
  return result;
}

uint64_t sub_2558B03BC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v25 = a3;
  v6 = *a1;
  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  v28 = a2[4];
  v29 = a2[3];
  __swift_project_boxed_opaque_existential_1(a2, v29);
  v10 = objc_allocWithZone(KGMutableElementIdentifierSet);

  v27 = v8;

  v26 = v9;

  v11 = [v10 init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  inited = swift_initStackObject();
  *(inited + 16) = v11;
  v13 = 1 << *(v6 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v6 + 64);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  while (v15)
  {
LABEL_10:
    v20 = *(*(v6 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v15)))));

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = *(inited + 16);
      [v21 mutableCopy];
      sub_2559658F0();
      swift_unknownObjectRelease();

      sub_25587AF08();
      swift_dynamicCast();
      v22 = swift_allocObject();
      *(v22 + 16) = v34;

      inited = v22;
    }

    v15 &= v15 - 1;
    [*(inited + 16) unionWithIdentifierSet_];
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      v34 = inited;
      v33[3] = type metadata accessor for Filter(0, *(v25 + 16), v23, v24);
      v32[1] = *(v25 + 24);
      v33[0] = v7;
      v33[1] = v27;
      v33[4] = swift_getWitnessTable();
      v33[2] = v26;
      sub_25589EE70(&v34, v32, v33, a5, v29, v28);

      __swift_destroy_boxed_opaque_existential_0(v33);
      v34 = v6;

      static ElementIdentifierTupleSet.joinOnTargets(_:_:)(&v34, v32, v33);

      *a4 = v33[0];
      return result;
    }

    v15 = *(v6 + 64 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2558B06B0@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  a3[3] = a1;
  a3[4] = swift_getWitnessTable();
  *a3 = v5;
  a3[1] = v6;
  a3[2] = v7;
}

uint64_t sub_2558B07E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MAProgressReporter.reportProgress(_:)(Swift::Double a1)
{
  if ([v1 isCancelledWithProgress_])
  {
    sub_255965660();
    sub_2558B08C0();
    swift_allocError();
    sub_255965280();
    swift_willThrow();
  }
}

unint64_t sub_2558B08C0()
{
  result = qword_2810B71C8[0];
  if (!qword_2810B71C8[0])
  {
    sub_255965660();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810B71C8);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MAProgressReporter.reportProgress(completedUnits:outOf:)(Swift::Int completedUnits, Swift::Int outOf)
{
  if ([v2 isCancelledWithUnitsCompleted:completedUnits outOf:outOf])
  {
    sub_255965660();
    sub_2558B08C0();
    swift_allocError();
    sub_255965280();
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MAProgressReporter.checkCancelled()()
{
  if ([v0 isCancelled])
  {
    sub_255965660();
    sub_2558B08C0();
    swift_allocError();
    sub_255965280();
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MAProgressReporter.reportCompleted()()
{
  if ([v0 isCancelledWithProgress_])
  {
    sub_255965660();
    sub_2558B08C0();
    swift_allocError();
    sub_255965280();
    swift_willThrow();
  }
}

uint64_t MAProgressReporter.splitEvenly(sequentialOperationCount:)(uint64_t a1)
{
  v3 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D84F90];
  if (a1 >= 1)
  {
    if (a1 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6EE0, qword_2559705D0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_255970580;
      *(v4 + 32) = v3;
      v5 = v3;
    }

    else
    {
      *&v14[0] = MEMORY[0x277D84F90];
      sub_2558A5784(0, a1 - 1, 0);
      v7 = a1;
      v8 = v14[0];
      v9 = *(*&v14[0] + 16);
      for (i = 1; i != v7; ++i)
      {
        v14[0] = v8;
        v11 = *(*&v8 + 24);
        if (v9 >= v11 >> 1)
        {
          sub_2558A5784((v11 > 1), v9 + 1, 1);
          v7 = a1;
          v8 = v14[0];
        }

        *(*&v8 + 16) = v9 + 1;
        *(*&v8 + 8 * v9 + 32) = i;
        if (v7 == i)
        {
          __break(1u);
          goto LABEL_13;
        }

        ++v9;
      }

      v2 = v7;

      v12 = *&v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

LABEL_13:
      v12 = sub_25588041C(*&v8);
LABEL_10:
      v14[0] = v2;
      vDSP_vsdivD((*&v8 + 32), 1, v14, v12 + 4, 1, v9);

      v4 = MAProgressReporter.split(splitPoints:)(v12);
    }
  }

  return v4;
}

Swift::tuple_MAProgressReporter_MAProgressReporter __swiftcall MAProgressReporter.split(splitPoints:)(Swift::Double splitPoints)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6460, &qword_25596FD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25596E4E0;
  *(inited + 32) = splitPoints;
  v3 = MAProgressReporter.split(splitPoints:)(inited);
  v4 = swift_setDeallocating();
  if ((v3 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x259C43770](0, v3);
    v11 = MEMORY[0x259C43770](1, v3);
    goto LABEL_5;
  }

  v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v8 == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = *(v3 + 40);
  v10 = *(v3 + 32);
  v11 = v9;
LABEL_5:
  v12 = v11;

  v4 = v10;
  v5 = v12;
LABEL_9:
  result._1._throughputReportBlock = v7;
  result._1.super.isa = v6;
  result._0._throughputReportBlock = v5;
  result._0.super.isa = v4;
  return result;
}

void __swiftcall MAProgressReporter.split(splitPoints:_:)(Swift::tuple_MAProgressReporter_MAProgressReporter_MAProgressReporter *__return_ptr retstr, Swift::Double splitPoints, Swift::Double _)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6460, &qword_25596FD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25596E4D0;
  *(inited + 32) = splitPoints;
  *(inited + 40) = _;
  v6 = MAProgressReporter.split(splitPoints:)(inited);
  swift_setDeallocating();
  if ((v6 & 0xC000000000000001) != 0)
  {
    MEMORY[0x259C43770](0, v6);
    MEMORY[0x259C43770](1, v6);
    MEMORY[0x259C43770](2, v6);
    goto LABEL_6;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v7 == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7 >= 3)
  {
    v8 = *(v6 + 40);
    v9 = *(v6 + 48);
    *(v6 + 32);
    v8;
    v10 = v9;
LABEL_6:

    return;
  }

LABEL_10:
  __break(1u);
}

void __swiftcall MAProgressReporter.split(splitPoints:_:_:_:)(Swift::tuple_MAProgressReporter_MAProgressReporter_MAProgressReporter_MAProgressReporter_MAProgressReporter *__return_ptr retstr, Swift::Double splitPoints, Swift::Double _, Swift::Double a4, Swift::Double a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6460, &qword_25596FD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2559705A0;
  *(inited + 32) = splitPoints;
  *(inited + 40) = _;
  *(inited + 48) = a4;
  *(inited + 56) = a5;
  v11 = MAProgressReporter.split(splitPoints:)(inited);
  swift_setDeallocating();
  if ((v11 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x259C43770](0, v11);
    v18 = MEMORY[0x259C43770](1, v11);
    v19 = MEMORY[0x259C43770](2, v11);
    v20 = MEMORY[0x259C43770](3, v11);
    v21 = MEMORY[0x259C43770](4, v11);
    goto LABEL_8;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v12 == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v12 < 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v12 == 3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v12 >= 5)
  {
    v13 = *(v11 + 40);
    v14 = *(v11 + 48);
    v15 = *(v11 + 56);
    v16 = *(v11 + 64);
    v17 = *(v11 + 32);
    v18 = v13;
    v19 = v14;
    v20 = v15;
    v21 = v16;
LABEL_8:
    v22 = v21;

    retstr->_0.super.isa = v17;
    retstr->_0._throughputReportBlock = v18;
    retstr->_1.super.isa = v19;
    retstr->_1._throughputReportBlock = v20;
    retstr->_2.super.isa = v22;
    return;
  }

LABEL_14:
  __break(1u);
}

void __swiftcall MAProgressReporter.split(splitPoints:_:_:_:_:)(Swift::tuple_MAProgressReporter_MAProgressReporter_MAProgressReporter_MAProgressReporter_MAProgressReporter_MAProgressReporter *__return_ptr retstr, Swift::Double splitPoints, Swift::Double _, Swift::Double a4, Swift::Double a5, Swift::Double a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6460, &qword_25596FD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2559705B0;
  *(inited + 32) = splitPoints;
  *(inited + 40) = _;
  *(inited + 48) = a4;
  *(inited + 56) = a5;
  *(inited + 64) = a6;
  v13 = MAProgressReporter.split(splitPoints:)(inited);
  swift_setDeallocating();
  if ((v13 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x259C43770](0, v13);
    v21 = MEMORY[0x259C43770](1, v13);
    v22 = MEMORY[0x259C43770](2, v13);
    v23 = MEMORY[0x259C43770](3, v13);
    v24 = MEMORY[0x259C43770](4, v13);
    v25 = MEMORY[0x259C43770](5, v13);
    goto LABEL_9;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v14 == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v14 < 3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v14 == 3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 != 5)
  {
    v15 = *(v13 + 40);
    v16 = *(v13 + 48);
    v17 = *(v13 + 56);
    v18 = *(v13 + 64);
    v19 = *(v13 + 72);
    v20 = *(v13 + 32);
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    v25 = v19;
LABEL_9:
    v26 = v25;

    retstr->_0.super.isa = v20;
    retstr->_0._throughputReportBlock = v21;
    retstr->_1.super.isa = v22;
    retstr->_1._throughputReportBlock = v23;
    retstr->_2.super.isa = v24;
    retstr->_2._throughputReportBlock = v26;
    return;
  }

LABEL_16:
  __break(1u);
}

void __swiftcall MAProgressReporter.split(splitPoints:_:_:_:_:_:)(Swift::tuple_MAProgressReporter_MAProgressReporter_MAProgressReporter_MAProgressReporter_MAProgressReporter_MAProgressReporter_MAProgressReporter *__return_ptr retstr, Swift::Double splitPoints, Swift::Double _, Swift::Double a4, Swift::Double a5, Swift::Double a6, Swift::Double a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6460, &qword_25596FD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2559705C0;
  *(inited + 32) = splitPoints;
  *(inited + 40) = _;
  *(inited + 48) = a4;
  *(inited + 56) = a5;
  *(inited + 64) = a6;
  *(inited + 72) = a7;
  v15 = MAProgressReporter.split(splitPoints:)(inited);
  swift_setDeallocating();
  if ((v15 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x259C43770](0, v15);
    v24 = MEMORY[0x259C43770](1, v15);
    v25 = MEMORY[0x259C43770](2, v15);
    v26 = MEMORY[0x259C43770](3, v15);
    v27 = MEMORY[0x259C43770](4, v15);
    v28 = MEMORY[0x259C43770](5, v15);
    v29 = MEMORY[0x259C43770](6, v15);
    goto LABEL_10;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v16 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v16 < 3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v16 == 3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v16 < 5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v16 == 5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v16 >= 7)
  {
    v17 = *(v15 + 40);
    v18 = *(v15 + 48);
    v19 = *(v15 + 56);
    v20 = *(v15 + 64);
    v21 = *(v15 + 72);
    v22 = *(v15 + 80);
    v23 = *(v15 + 32);
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29 = v22;
LABEL_10:
    v30 = v29;

    retstr->_0.super.isa = v23;
    retstr->_0._throughputReportBlock = v24;
    retstr->_1.super.isa = v25;
    retstr->_1._throughputReportBlock = v26;
    retstr->_2.super.isa = v27;
    retstr->_2._throughputReportBlock = v28;
    retstr->_3.super.isa = v30;
    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t MAProgressReporter.observe(_:)(void *a1)
{
  swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  v5 = a1;
  v6 = sub_2559651A0();

  return v6;
}

void sub_2558B13E4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_255965660();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F7D6EE8, &qword_255970620);
  sub_255965190();
  if (v14)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (![a3 isCancelledWithProgress_])
  {
    return;
  }

  sub_2558B08C0();
  v4 = swift_allocError();
  sub_255965280();
  swift_willThrow();
  v13 = v4;
  v11 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62A0, &unk_25596FCF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:

    v13 = 0;
    v14 = 0xE000000000000000;
    sub_255965990();
    MEMORY[0x259C431B0](0xD000000000000012, 0x8000000255978210);
    v12 = v4;
    sub_255965AB0();
    sub_255965B00();
    __break(1u);
    return;
  }

  [a4 cancel];
  (*(v8 + 8))(v10, v7);
}

uint64_t static UniqueSortedBuffer.Union.Index.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = 1;
  v3 = *a1 < *a2 || *(a1 + 8) < *(a2 + 8);
  if (!v3 && ((*(a1 + 16) ^ 1 | *(a2 + 16)) & 1) != 0)
  {
    v2 = *(a1 + 17) & (*(a2 + 17) ^ 1);
  }

  return v2 & 1;
}

void UniqueSortedBuffer.Union.startIndex.getter(uint64_t a1)
{
  v1[0] = -1;
  v1[1] = -1;
  v2 = 257;
  UniqueSortedBuffer.Union.index(after:)(v1, a1);
}

void UniqueSortedBuffer.Union.index(after:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v4);
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v11 + 16);
  v15 = *(v11 + 17);
  v16 = *v2;
  v17 = v2[1];
  v18 = v2[2];
  v19 = v2[3];
  v20 = v2[4];
  v40 = v2[5];
  v41 = v20;
  v21 = v2[6];
  v38 = v2[7];
  v39 = v21;
  v47 = v14;
  if (v14 == 1)
  {
    v22 = __OFADD__(v13++, 1);
    if (v22)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }
  }

  if (v15)
  {
    v22 = __OFADD__(v12++, 1);
    if (v22)
    {
      goto LABEL_11;
    }
  }

  v34 = &v32 - v8;
  v35 = v10;
  v36 = v9;
  v37 = v7;
  v43 = v16;
  v44 = v17;
  v45 = v18;
  v46 = v19;
  v33 = *(v5 + 24);
  v23 = type metadata accessor for UniqueSortedBuffer(0, v3, v33, v6);
  v24 = UniqueSortedBuffer.count.getter(v23);
  v47 = v13 != v24;
  v43 = v41;
  v44 = v40;
  v45 = v39;
  v46 = v38;
  v25 = UniqueSortedBuffer.count.getter(v23);
  if (v13 == v24 || v12 == v25)
  {
    v29 = v12 != v25;
    v28 = v47;
  }

  else
  {
    v43 = v16;
    v44 = v17;
    v45 = v18;
    v46 = v19;
    v42 = v13;
    sub_2559653C0();
    swift_getWitnessTable();
    sub_255965D20();
    v26 = v34;
    sub_255965D30();
    v43 = v41;
    v44 = v40;
    v45 = v39;
    v46 = v38;
    v42 = v12;
    v27 = v35;
    sub_255965D30();
    v28 = sub_255965350();
    v29 = sub_255965350();
    v30 = *(v36 + 8);
    v30(v27, v3);
    v30(v26, v3);
  }

  v31 = v37;
  *v37 = v13;
  v31[1] = v12;
  *(v31 + 16) = v28 & 1;
  *(v31 + 17) = v29 & 1;
}

uint64_t UniqueSortedBuffer.Union.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for UniqueSortedBuffer(0, *(a1 + 16), *(a1 + 24), a2);
  v5 = UniqueSortedBuffer.count.getter(v4);
  result = UniqueSortedBuffer.count.getter(v4);
  *a3 = v5;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t UniqueSortedBuffer.Union.subscript.getter(uint64_t *a1, uint64_t a2)
{
  sub_2559653C0();
  swift_getWitnessTable();
  sub_255965D20();
  return sub_255965D30();
}

void (*sub_2558B1B1C(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2558B1BA4(v6, a2, a3);
  return sub_255899874;
}

void (*sub_2558B1BA4(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  UniqueSortedBuffer.Union.subscript.getter(a2, a3);
  return sub_255872E1C;
}

void sub_2558B1C78(__int128 *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *a1;
  v5 = v2;
  v6 = v3;
  UniqueSortedBuffer.Union.index(after:)(&v4, a2);
}

void sub_2558B1CB8(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
  v4 = v2[3];
  a2[2] = v2[2];
  a2[3] = v4;
  UniqueSortedBuffer.Union.startIndex.getter(a1);
}

uint64_t sub_2558B1CE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_2558B1D38(uint64_t a1)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  WitnessTable = swift_getWitnessTable();
  return sub_2558B5970(v7, a1, WitnessTable);
}

uint64_t sub_2558B1D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2558B1DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2558B1E44(uint64_t a1, float a2)
{
  v3 = a1;
  v5 = v2[1];
  sub_2558A6BAC(a1, 0, *(v5 + 16), v5 + 32, &v9);
  v6 = v9;
  v7 = v10;
  if (v10 == 1)
  {
    v3 = *v2;
    if (a2 != 0.0)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        if (v9 < *(v3 + 16))
        {
          LODWORD(v5) = *(v3 + 4 * v9 + 32);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            goto LABEL_15;
          }

          goto LABEL_25;
        }

        goto LABEL_23;
      }

      goto LABEL_21;
    }

    if (v9 < 0)
    {
      __break(1u);
    }

    else if (v9 < *(v3 + 16))
    {
      LODWORD(v5) = *(v3 + 4 * v9 + 32);
      sub_25588FDC0(v9);
      sub_25588FD38(v6);
      return v5 | ((v7 ^ 1u) << 32);
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a2 == 0.0)
  {
LABEL_11:
    LODWORD(v5) = 0;
    return v5 | ((v7 ^ 1u) << 32);
  }

  if (*(*v2 + 16) < v9)
  {
    goto LABEL_20;
  }

  if (v9 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_2558918DC(v9, v9, a2);
  if (*(v5 + 16) >= v6)
  {
    sub_2558917F8(v6, v6, v3);
    goto LABEL_11;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_2558803F4(v3);
  v3 = result;
LABEL_15:
  if (v6 < *(v3 + 16))
  {
    *(v3 + 4 * v6 + 32) = a2;
    *v2 = v3;
    return v5 | ((v7 ^ 1u) << 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_2558B1FC8(uint64_t a1, double a2)
{
  v3 = a1;
  v5 = v2[1];
  sub_2558A6BAC(a1, 0, *(v5 + 16), v5 + 32, &v8);
  v6 = v8;
  if (v9 == 1)
  {
    v5 = *v2;
    if (a2 != 0.0)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        if (v8 < *(v5 + 16))
        {
          v3 = *(v5 + 8 * v8 + 32);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            goto LABEL_15;
          }

          goto LABEL_25;
        }

        goto LABEL_23;
      }

      goto LABEL_21;
    }

    if (v8 < 0)
    {
      __break(1u);
    }

    else if (v8 < *(v5 + 16))
    {
      v3 = *(v5 + 8 * v8 + 32);
      sub_25588FE48(v8);
      sub_25588FD38(v6);
      return v3;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a2 == 0.0)
  {
    return 0;
  }

  if (*(*v2 + 16) < v8)
  {
    goto LABEL_20;
  }

  if (v8 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_2558919B0(v8, v8, a2);
  if (*(v5 + 16) >= v6)
  {
    sub_2558917F8(v6, v6, v3);
    return 0;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_25588041C(v5);
  v5 = result;
LABEL_15:
  if (v6 < *(v5 + 16))
  {
    *(v5 + 8 * v6 + 32) = a2;
    *v2 = v5;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2558B2140@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64x2_t *a3@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  v10.i64[0] = MEMORY[0x277D84F90];
  v10.i64[1] = MEMORY[0x277D84F90];
  v4 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = 32;
    while (1)
    {
      result = sub_2558B1E44(result, *(a2 + v8));
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 += 4;
      result = v4++;
      if (!--v7)
      {

        v9 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  v9 = vdupq_n_s64(v3);
LABEL_8:
  *a3 = v9;
  return result;
}

uint64_t sub_2558B21EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64x2_t *a3@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  v10.i64[0] = MEMORY[0x277D84F90];
  v10.i64[1] = MEMORY[0x277D84F90];
  v4 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = 32;
    while (1)
    {
      result = sub_2558B1FC8(result, *(a2 + v8));
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 += 8;
      result = v4++;
      if (!--v7)
      {

        v9 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  v9 = vdupq_n_s64(v3);
LABEL_8:
  *a3 = v9;
  return result;
}

void sub_2558B2298(char **a1, double a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (*(*a1 + 2) >> 31)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = a1;
  v6 = *(*a1 + 2);
  v5 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_5:
    v3 = sub_25588041C(v3);
    *v2 = v3;
  }

  vvpows(v3 + 4, &v5, v3 + 4, &v6);
  *v2 = v3;
}

uint64_t static SparseArrayProtocol<>.* infix(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int64x2_t *a3@<X8>, float a4@<S0>)
{
  if (a4 == 0.0)
  {
    result = sub_2558B2140(0, MEMORY[0x277D84F90], &v10);
    *a3 = v10;
  }

  else
  {
    v10.i64[0] = (*(a2 + 32))(a1, a2);
    sub_25587B0A8(&v10, a4);
    v9 = v10.i64[0];
    result = (*(a2 + 40))(a1, a2);
    if (*(v9 + 16) == *(result + 16))
    {
      a3->i64[0] = v9;
      a3->i64[1] = result;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

{
  return static SparseArrayProtocol<>.* infix(_:_:)(a1, a2, a3, a4);
}

uint64_t static SparseArrayProtocol<>./ infix(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int64x2_t *a3@<X8>, float a4@<S0>)
{
  if (a4 == INFINITY)
  {
    result = sub_2558B2140(0, MEMORY[0x277D84F90], &v11);
    *a3 = v11;
  }

  else
  {
    v11.i64[0] = (*(a2 + 32))(a1, a2);

    sub_25587FF4C(v9, &v11, a4);

    v10 = v11.i64[0];
    result = (*(a2 + 40))(a1, a2);
    if (*(v10 + 16) == *(result + 16))
    {
      a3->i64[0] = v10;
      a3->i64[1] = result;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t static SparseArrayProtocol<>..** infix(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char **a3@<X8>, float a4@<S0>)
{
  v10 = (*(a2 + 32))(a1, a2);
  sub_25587F068(&v10, a4);
  v8 = v10;
  result = (*(a2 + 40))(a1, a2);
  if (*(v8 + 2) == *(result + 16))
  {
    *a3 = v8;
    a3[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

float static SparseArrayProtocol<>.* infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v7[5] = a6;
  v7[6] = a2;
  (*(a5 + 24))(&v8, sub_2558B2664, v7, MEMORY[0x277D83A90], a3);
  return *&v8;
}

uint64_t sub_2558B2664(_OWORD *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v7[2] = v8;
  return (*(v3 + 24))(sub_2558B3274, v7, MEMORY[0x277D83A90], v2);
}

void sub_2558B26DC(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a3@<X8>)
{
  v3 = *(a1 + 8) - *a1;
  if ((((*(a2 + 8) - *a2) | v3) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = sparse_inner_product_sparse_float(*(a2 + 8) - *a2, v3, *(a2 + 16), *(a2 + 48), *(a1 + 16), *(a1 + 48));
  }
}

float static SparseArrayProtocol<>.* infix(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = v4;
  (*(a4 + 24))(&v7, sub_2558B27C4, v6, MEMORY[0x277D83A90], a3);
  return *&v7;
}

uint64_t *sub_2558B27C4@<X0>(uint64_t *result@<X0>, float *a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = result[4];
  v6 = result[5];
  v7 = 0.0;
  if (v5 != v6 && v3 != v4)
  {
    v9 = *(v2 + 32) + 32;
    v10 = result[6];
    v11 = result[2];
    v12 = v4 + ~v3;
    if (v12 >= v6 + ~v5)
    {
      v12 = v6 + ~v5;
    }

    v13 = v12 + 1;
    if (v12 + 1 >= 2)
    {
      v14 = v5 + (v13 & 0xFFFFFFFFFFFFFFFELL);
      v15 = v3 + (v13 & 0xFFFFFFFFFFFFFFFELL);
      result = (v10 + 8 * v5 + 8);
      v16 = (v11 + 4 * v3 + 4);
      v17 = v13 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v7 = (v7 + (*(v16 - 1) * *(v9 + 4 * *(result - 1)))) + (*v16 * *(v9 + 4 * *result));
        result += 2;
        v16 += 2;
        v17 -= 2;
      }

      while (v17);
      if (v13 == (v13 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = result[4];
      v15 = *result;
    }

    v18 = (v10 + 8 * v14);
    v19 = ~v14 + v6;
    v20 = ~v15 + v4;
    v21 = (v11 + 4 * v15);
    do
    {
      v23 = *v18++;
      v22 = v23;
      LODWORD(v23) = *v21++;
      v7 = v7 + (*&v23 * *(v9 + 4 * v22));
      if (!v19)
      {
        break;
      }

      v24 = v20;
      --v19;
      --v20;
    }

    while (v24);
  }

LABEL_15:
  *a2 = v7;
  return result;
}

uint64_t static SparseArrayProtocol<>.* infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_2558B2EE8(a1, a2, a3, a4, a5, a6, a7, a8, sub_2558B2A08, MEMORY[0x277D83A90], &protocol witness table for Float);
}

{
  return sub_2558B2EE8(a1, a2, a3, a4, a5, a6, a7, a8, sub_2558B3224, MEMORY[0x277D839F8], &protocol witness table for Double);
}

float sub_2558B2904@<S0>(uint64_t a1@<X1>, uint64_t a6@<X7>, _DWORD *a7@<X8>, uint64_t a8)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedTypeWitness();
  v15 = a6;
  v16 = a8;
  v17 = a1;
  (*(a6 + 24))(&v18, sub_2558B2664, v12, MEMORY[0x277D83A90], AssociatedTypeWitness, a6);
  result = *&v18;
  *a7 = v18;
  return result;
}

uint64_t static SparseArrayProtocol<>.* infix(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int64x2_t *a3@<X8>, double a4@<D0>)
{
  if (a4 == 0.0)
  {
    result = sub_2558B21EC(0, MEMORY[0x277D84F90], &v10);
    *a3 = v10;
  }

  else
  {
    v10.i64[0] = (*(a2 + 32))(a1, a2);
    sub_25587B1B4(&v10, a4);
    v9 = v10.i64[0];
    result = (*(a2 + 40))(a1, a2);
    if (*(v9 + 16) == *(result + 16))
    {
      a3->i64[0] = v9;
      a3->i64[1] = result;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

{
  return static SparseArrayProtocol<>.* infix(_:_:)(a1, a2, a3, a4);
}

uint64_t static SparseArrayProtocol<>./ infix(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char **a3@<X8>, double a4@<D0>)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a4 == INFINITY)
  {
    sub_2558B21EC(0, MEMORY[0x277D84F90], &__B);
    result = __B.i64[1];
    v7 = __B.i64[0];
  }

  else
  {
    v10 = (*(a2 + 32))(a1, a2);
    v11 = *(v10 + 16);

    v7 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_25588041C(v10);
    }

    *__B.i64 = a4;
    vDSP_vsdivD((v10 + 32), 1, __B.i64, v7 + 4, 1, v11);

    result = (*(a2 + 40))(a1, a2);
    if (*(v7 + 2) != *(result + 16))
    {
      __break(1u);
    }
  }

  *a3 = v7;
  a3[1] = result;
  return result;
}

uint64_t static SparseArrayProtocol<>..** infix(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char **a3@<X8>, double a4@<D0>)
{
  v10 = (*(a2 + 32))(a1, a2);
  sub_2558B2298(&v10, a4);
  v8 = v10;
  result = (*(a2 + 40))(a1, a2);
  if (*(v8 + 2) == *(result + 16))
  {
    *a3 = v8;
    a3[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double static SparseArrayProtocol<>.* infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v7[5] = a6;
  v7[6] = a2;
  (*(a5 + 24))(&v8, sub_2558B30B4, v7, MEMORY[0x277D839F8], a3);
  return v8;
}

void sub_2558B2DB8(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v3 = *(a1 + 8) - *a1;
  if ((((*(a2 + 8) - *a2) | v3) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = sparse_inner_product_sparse_double(*(a2 + 8) - *a2, v3, *(a2 + 16), *(a2 + 48), *(a1 + 16), *(a1 + 48));
  }
}

double static SparseArrayProtocol<>.* infix(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = v4;
  (*(a4 + 24))(&v7, sub_2558B312C, v6, MEMORY[0x277D839F8], a3);
  return v7;
}

uint64_t sub_2558B2EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return SparseArrayProtocol.sparseKroneckerMap<A, B>(with:combine:)(a2, a9, v13, v14, v15, a10, v16, v17, a11);
}

double sub_2558B2FB0@<D0>(uint64_t a1@<X1>, uint64_t a6@<X7>, double *a7@<X8>, uint64_t a8)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedTypeWitness();
  v15 = a6;
  v16 = a8;
  v17 = a1;
  (*(a6 + 24))(&v18, sub_2558B30B4, v12, MEMORY[0x277D839F8], AssociatedTypeWitness, a6);
  result = v18;
  *a7 = v18;
  return result;
}

uint64_t sub_2558B30B4(_OWORD *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v7[2] = v8;
  return (*(v3 + 24))(sub_2558B3258, v7, MEMORY[0x277D839F8], v2);
}

uint64_t *sub_2558B312C@<X0>(uint64_t *result@<X0>, double *a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = result[4];
  v6 = result[5];
  v7 = 0.0;
  if (v5 != v6 && v3 != v4)
  {
    v9 = *(v2 + 32) + 32;
    v10 = result[6];
    v11 = result[2];
    v12 = v4 + ~v3;
    if (v12 >= v6 + ~v5)
    {
      v12 = v6 + ~v5;
    }

    v13 = v12 + 1;
    if (v12 + 1 >= 2)
    {
      v14 = v5 + (v13 & 0xFFFFFFFFFFFFFFFELL);
      v15 = v3 + (v13 & 0xFFFFFFFFFFFFFFFELL);
      result = (v10 + 8 * v5 + 8);
      v16 = (v11 + 8 * v3 + 8);
      v17 = v13 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v7 = v7 + *(v16 - 1) * *(v9 + 8 * *(result - 1)) + *v16 * *(v9 + 8 * *result);
        result += 2;
        v16 += 2;
        v17 -= 2;
      }

      while (v17);
      if (v13 == (v13 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = result[4];
      v15 = *result;
    }

    v18 = (v10 + 8 * v14);
    v19 = ~v14 + v6;
    v20 = ~v15 + v4;
    v21 = (v11 + 8 * v15);
    do
    {
      v23 = *v18++;
      v22 = v23;
      v24 = *v21++;
      v7 = v7 + v24 * *(v9 + 8 * v22);
      if (!v19)
      {
        break;
      }

      v25 = v20;
      --v19;
      --v20;
    }

    while (v25);
  }

LABEL_15:
  *a2 = v7;
  return result;
}

uint64_t ConcreteTypedProperty.key.getter()
{
  v0 = sub_2558725AC();

  return v0;
}

uint64_t ConcreteTypedProperty.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ConcreteElementedTypedProperty.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void sub_2558B32D8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 dataType];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() value];
      *(a2 + 24) = MEMORY[0x277D839F8];
      *(a2 + 32) = &protocol witness table for Double;
      *a2 = v10;
      return;
    }

    if (v3 == 3)
    {
      objc_opt_self();
      v5 = [swift_dynamicCastObjCClassUnconditional() value];
      v6 = sub_2559653E0();
      v8 = v7;

      *(a2 + 24) = MEMORY[0x277D837D0];
      *(a2 + 32) = &protocol witness table for String;
      *a2 = v6;
      *(a2 + 8) = v8;
      return;
    }

LABEL_9:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  if (!v3)
  {
    objc_opt_self();
    v9 = [swift_dynamicCastObjCClassUnconditional() value];
    *(a2 + 24) = MEMORY[0x277D83B88];
    *(a2 + 32) = &protocol witness table for Int;
    *a2 = v9;
    return;
  }

  if (v3 != 1)
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v4 = [swift_dynamicCastObjCClassUnconditional() value];
  *(a2 + 24) = MEMORY[0x277D83B88];
  *(a2 + 32) = &protocol witness table for Int;
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4;
  }
}

uint64_t sub_2558B3494(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2558B34EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2558B3540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2558B357C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2558B35C4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

double SeededRandomNumberGenerator.init()@<D0>(_OWORD *a1@<X8>)
{
  result = -1.90237734e-283;
  *a1 = xmmword_255970A50;
  return result;
}

uint64_t SeededRandomNumberGenerator.init(seed:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0x685F98A2018FADE9 * result + 0x51EBDA032857265ALL;
  a2[1] = 0xDA3E39CB94B95BDBLL;
  return result;
}

uint64_t sub_2558B3674()
{
  v1 = *v0;
  *v0 = (v0[1] | 1) + 0x5851F42D4C957F2DLL * *v0;
  return __ROR4__((v1 >> 45) ^ (v1 >> 27), v1 >> 59);
}

Swift::UInt64 __swiftcall SeededRandomNumberGenerator.next()()
{
  v1 = v0[1] | 1;
  v2 = v1 + 0x5851F42D4C957F2DLL * *v0;
  v3 = __ROR4__((*v0 >> 45) ^ (*v0 >> 27), *v0 >> 59);
  *v0 = v1 + 0x5851F42D4C957F2DLL * v2;
  return v3 | (__ROR4__((v2 >> 45) ^ (v2 >> 27), v2 >> 59) << 32);
}

__n128 UniqueSortedBuffer.Intersection.lhs.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 UniqueSortedBuffer.Intersection.rhs.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void UniqueSortedBuffer.Intersection.startIndex.getter(uint64_t a1)
{
  v1[0] = -1;
  v1[1] = -1;
  UniqueSortedBuffer.Intersection.index(after:)(v1);
}

void UniqueSortedBuffer.Intersection.index(after:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v2);
  v42 = &v35 - v10;
  v11 = *v3 + 1;
  if (__OFADD__(*v3, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v3[1];
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
LABEL_18:
    __break(1u);
    return;
  }

  v40 = v9;
  v41 = v8;
  v35 = v7;
  v14 = *v1;
  v15 = v1[1];
  v16 = v1[3];
  v43 = v1[2];
  v44 = v5;
  v47 = v16;
  v18 = v1[4];
  v17 = v1[5];
  v19 = v1[6];
  v20 = v1[7];
  v39 = *(v4 + 24);
  v21 = type metadata accessor for UniqueSortedBuffer(0, v9, v39, v6);
  v45 = v15;
  v46 = v14;
  v49 = v14;
  v50 = v15;
  v22 = v43;
  v51 = v43;
  v52 = v47;
  if (v11 != UniqueSortedBuffer.count.getter(v21))
  {
    v37 = v21;
    v38 = (v44 + 8);
    v36 = v18;
    do
    {
      v49 = v18;
      v50 = v17;
      v51 = v19;
      v52 = v20;
      if (v13 == UniqueSortedBuffer.count.getter(v21))
      {
        break;
      }

      v49 = v46;
      v50 = v45;
      v51 = v22;
      v52 = v47;
      v44 = v11;
      v48 = v11;
      v21 = v40;
      sub_2559653C0();
      swift_getWitnessTable();
      sub_255965D20();
      v22 = v42;
      sub_255965D30();
      v49 = v18;
      v50 = v17;
      v51 = v19;
      v52 = v20;
      v48 = v13;
      v30 = v41;
      sub_255965D30();
      if (sub_255965390())
      {
        goto LABEL_15;
      }

      v31 = sub_255965340();
      v32 = v22;
      v33 = *v38;
      (*v38)(v30, v21);
      v33(v32, v21);
      if (v31)
      {
        v22 = v43;
        v11 = v44 + 1;
        v21 = v37;
        if (__OFADD__(v44, 1))
        {
          __break(1u);
LABEL_15:
          v34 = *v38;
          (*v38)(v30, v21);
          v34(v22, v21);
          v25 = v44;
          v26 = v13;
          goto LABEL_5;
        }
      }

      else
      {
        v28 = __OFADD__(v13++, 1);
        v22 = v43;
        v11 = v44;
        v21 = v37;
        if (v28)
        {
          __break(1u);
          goto LABEL_17;
        }
      }

      v49 = v46;
      v50 = v45;
      v51 = v22;
      v52 = v47;
      v29 = UniqueSortedBuffer.count.getter(v21);
      v18 = v36;
    }

    while (v11 != v29);
  }

  v49 = v46;
  v50 = v45;
  v51 = v22;
  v52 = v47;
  v23 = UniqueSortedBuffer.count.getter(v21);
  v24 = v21;
  v25 = v23;
  v49 = v18;
  v50 = v17;
  v51 = v19;
  v52 = v20;
  v26 = UniqueSortedBuffer.count.getter(v24);
LABEL_5:
  v27 = v35;
  *v35 = v25;
  v27[1] = v26;
}

uint64_t UniqueSortedBuffer.Intersection.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = type metadata accessor for UniqueSortedBuffer(0, *(a1 + 16), *(a1 + 24), a2);
  v5 = UniqueSortedBuffer.count.getter(v4);
  result = UniqueSortedBuffer.count.getter(v4);
  *a3 = v5;
  a3[1] = result;
  return result;
}

uint64_t UniqueSortedBuffer.Intersection.subscript.getter(uint64_t *a1, uint64_t a2)
{
  sub_2559653C0();
  swift_getWitnessTable();
  sub_255965D20();
  return sub_255965D30();
}

void (*sub_2558B3C7C(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2558B3D04(v6, a2, a3);
  return sub_255899874;
}

void (*sub_2558B3D04(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  UniqueSortedBuffer.Intersection.subscript.getter(a2, a3);
  return sub_255872E1C;
}

void sub_2558B3E08(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
  v4 = v2[3];
  a2[2] = v2[2];
  a2[3] = v4;
  UniqueSortedBuffer.Intersection.startIndex.getter(a1);
}

uint64_t sub_2558B3E34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_2558B3E88(uint64_t a1)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  WitnessTable = swift_getWitnessTable();
  return sub_2558B5970(v7, a1, WitnessTable);
}

uint64_t sub_2558B3EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2558B3F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ElementCollection.valuesOf<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getTupleTypeMetadata2();
  v11 = sub_255965270();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = &v11;
  (*(a4 + 32))(a1, sub_2558B41B8, v10, a3, a2, a4);
  swift_getTupleTypeMetadata2();
  v8 = sub_255965AA0();

  return v8;
}

uint64_t sub_2558B40B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = *(v12 + 48);
  *&v15[-v11] = *a1;
  (*(*(a6 - 8) + 16))(&v15[v13 - v11], a2, a6, v10);
  sub_2559655E0();
  return sub_255965590();
}

id sub_2558B41F0(uint64_t a1, uint64_t a2, SEL *a3)
{
  (*(a2 + 16))(&v6, a1);
  v4 = [*(v6 + 16) *a3];

  return v4;
}

KGElementIdentifierSetIndex __swiftcall ElementCollection.index(after:)(KGElementIdentifierSetIndex after)
{
  var1 = after.var1;
  var0 = after.var0;
  (*(v1 + 16))(&v10);
  v4 = [*(v10 + 16) indexAfterIndex_];
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

id ElementCollection.count.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(&v4, a1);
  v2 = [*(v4 + 16) count];

  return v2;
}

id ElementCollection.isEmpty.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(&v4, a1);
  v2 = [*(v4 + 16) isEmpty];

  return v2;
}

uint64_t ElementCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  (*(a3 + 16))(&v7, a2, a3);

  *a4 = a1;
  return result;
}

id sub_2558B4458(void (*a1)(uint64_t *, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  (*(a4 + 16))(&v31, a3, a4);
  v30 = 0;
  v6 = v31;
  for (i = &off_279800000; ; i = &off_279800000)
  {
    if ([*(v6 + 16) isEmpty])
    {
    }

    v27 = v5;
    v8 = *(v6 + 16);

    v9 = [v8 i[32]];
    v11 = v10;
    v12 = [*(v6 + 16) endIndex];
    v13 = 256;
    while (v9 != v12)
    {
      v9 = [*(v6 + 16) indexAfterIndex_];
      v11 = v14;
      if (!--v13)
      {
        goto LABEL_8;
      }
    }

    v9 = [*(v6 + 16) endIndex];
LABEL_8:
    result = [*(v6 + 16) startIndex];
    if (v9 < result)
    {
      goto LABEL_25;
    }

    v17 = result;
    v18 = v16;
    v19 = [*(v6 + 16) startIndex];
    result = [*(v6 + 16) endIndex];
    if (result < v19)
    {
      goto LABEL_26;
    }

    if (v17 < v19)
    {
      goto LABEL_27;
    }

    if (result < v9)
    {
      goto LABEL_28;
    }

    result = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
    v20 = result;
    if (v17 != v9)
    {
      break;
    }

LABEL_17:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    v24 = swift_allocObject();
    *(v24 + 16) = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = *(v6 + 16);
      [v25 mutableCopy];
      sub_2559658F0();
      swift_unknownObjectRelease();

      sub_25587AF08();
      swift_dynamicCast();
      v6 = swift_allocObject();
      *(v6 + 16) = v28;

      v31 = v6;
    }

    v5 = v27;
    [*(v6 + 16) subtractIdentifierSet_];
    v29[0] = v24;
    a1(v29, &v30);
    if (v27)
    {
    }

    if (v30)
    {
    }
  }

  v21 = v17;
  while (v21 >= v17 && v21 < v9)
  {
    v22 = [*(v6 + 16) indexAfterIndex_];
    v18 = v23;
    result = [v20 addIdentifier_];
    v21 = v22;
    if (v22 == v9)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void (*sub_2558B476C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  (*(a5 + 16))(&v8, a4, a5, a3);

  *a1 = a2;
  return nullsub_2;
}

uint64_t NodeCollection.valuesOf<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v11[3] = type metadata accessor for ConcreteElementedTypedProperty(0, *(a2 + 16), a3, a4);
  v11[4] = swift_getWitnessTable();
  v11[0] = v7;
  v11[1] = v6;

  WitnessTable = swift_getWitnessTable();
  v9 = ElementCollection.valuesOf<A>(_:)(v11, a2, a3, WitnessTable);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v9;
}

uint64_t NodeCollection.enumerateValuesOf<A>(_:using:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v10 = a1[1];
  v13[3] = type metadata accessor for ConcreteElementedTypedProperty(0, *(a4 + 16), a5, a6);
  v13[4] = swift_getWitnessTable();
  v13[0] = v11;
  v13[1] = v10;

  NodeCollection.enumerateValuesOf<A>(_:using:)(v13, a2, a3, a4, a5);
  return __swift_destroy_boxed_opaque_existential_0(v13);
}

id NodeCollection.enumerateValuesOf<A>(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[2] = *(a4 + 16);
  v8[3] = a5;
  v8[6] = a1;
  v8[7] = a2;
  v8[8] = a3;
  WitnessTable = swift_getWitnessTable();
  return sub_2558B4458(sub_2558B4CB0, v8, a4, WitnessTable);
}

uint64_t sub_2558B4A18(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *a1;
  v38 = 0;
  v13 = a3[4];
  v14 = a3[5];
  __swift_project_boxed_opaque_existential_1(a3 + 1, v13);
  v15 = a4[3];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, v15);
  v34 = v15;
  v35 = *(v16 + 8);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(aBlock);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_0Tm, v17, v15);
  v37 = v12;
  v19 = sub_25589F264(aBlock, &v37, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v9)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
LABEL_6:

    return sub_2558764A4(v21, v22);
  }

  v22 = swift_allocObject();
  v22[2] = a7;
  v22[3] = a8;
  v22[4] = a9;
  v22[5] = a5;
  v22[6] = a6;
  v22[7] = a2;
  v22[8] = &v38;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2558B5974;
  *(v23 + 24) = v22;
  v35 = sub_25589F6AC;
  v36 = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25589EE08;
  v34 = &block_descriptor_0;
  v24 = _Block_copy(aBlock);

  [v19 enumerateUsingBlock_];

  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v27 = v38;
    if (v38)
    {
      swift_willThrow();
      v28 = v27;
      v20 = v38;
      v21 = sub_2558B5974;
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t sub_2558B4CE4(uint64_t a1, void *a2, _BYTE *a3, void (*a4)(void *, char *, _BYTE *), uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a7;
  v26 = a4;
  v24 = a3;
  v12 = sub_2559658B0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  v16 = *(a9 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2558B32D8(a2, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D7270, &unk_255970F50);
  v20 = swift_dynamicCast();
  v21 = *(v16 + 56);
  if (v20)
  {
    v21(v15, 0, 1, a9);
    (*(v16 + 32))(v19, v15, a9);
    v27[0] = a1;
    v26(v27, v19, a6);
    *v24 = *a6;
    return (*(v16 + 8))(v19, a9);
  }

  else
  {
    v21(v15, 1, 1, a9);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t NodeCollection.filtered(with:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = v3[4];
  v7 = v3[5];
  __swift_project_boxed_opaque_existential_1(v3 + 1, v6);
  v11 = *v3;

  AbstractGraph.nodeIdentifiers(matching:in:)(a1, &v11, v6, v7, v10);

  v8 = *&v10[0];
  sub_25588B81C((v3 + 1), v10);
  *a2 = v8;
  return sub_255872164(v10, (a2 + 1));
}

uint64_t NodeCollection.related<A>(through:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = *(a2 + 24);
  sub_2558AF600(v5, v10, v11, v16);
  v15[0] = *(a2 + 16);
  v15[1] = a3;
  v15[2] = v12;
  v15[3] = a4;
  v13 = type metadata accessor for NodeAdjacency(0, v15);
  NodeAdjacency.targets.getter(a5);
  return (*(*(v13 - 8) + 8))(v16, v13);
}

uint64_t NodeCollection.adjacency<A>(through:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  return sub_2558AF600(v2, v4, v5, a2);
}

uint64_t sub_2558B5164(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2558B51C0()
{
  result = qword_27F7D6B58;
  if (!qword_27F7D6B58)
  {
    type metadata accessor for KGElementIdentifierSetIndex(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D6B58);
  }

  return result;
}

uint64_t sub_2558B5248@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = a2(a1, WitnessTable);
  *a3 = result;
  a3[1] = v8;
  return result;
}

void (*sub_2558B52A8(uint64_t *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  v9 = *a2;
  v8 = a2[1];
  WitnessTable = swift_getWitnessTable();
  v7[4] = sub_2558B476C(v7, v9, v8, a3, WitnessTable);
  return sub_255899874;
}

id sub_2558B535C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ElementCollection.isEmpty.getter(a1, WitnessTable);
}

id sub_2558B53B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ElementCollection.count.getter(a1, WitnessTable);
}

unint64_t sub_2558B5484@<X0>(unint64_t *a1@<X0>, KGElementIdentifierSetIndex *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  swift_getWitnessTable();
  v6.var0 = v4;
  v6.var1 = v5;
  v8 = ElementCollection.index(after:)(v6);
  result = v8.var0;
  *a3 = v8;
  return result;
}

unint64_t sub_2558B54EC(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  swift_getWitnessTable();
  v5.var0 = v3;
  v5.var1 = v4;
  v7 = ElementCollection.index(after:)(v5);
  result = v7.var0;
  *a1 = v7;
  return result;
}

uint64_t sub_2558B5554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  WitnessTable = swift_getWitnessTable();
  v7 = ElementCollection.startIndex.getter(a1, WitnessTable);
  v9 = v8;
  result = (*(v5 + 8))(v2, a1);
  *(a2 + 48) = v7;
  *(a2 + 56) = v9;
  return result;
}

uint64_t sub_2558B5634(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_2558B5688(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_2558B5970(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

uint64_t sub_2558B5714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2558B57C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_255965350();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_2558B58A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_255965350();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_2559657F0();
  result = sub_255965350();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

KnowledgeGraphKit::ConfusionMatrix __swiftcall ConfusionMatrix.init(truePositiveCount:trueNegativeCount:falsePositiveCount:falseNegativeCount:)(Swift::Float truePositiveCount, Swift::Float trueNegativeCount, Swift::Float falsePositiveCount, Swift::Float falseNegativeCount)
{
  *v4 = truePositiveCount;
  v4[1] = trueNegativeCount;
  v4[2] = falsePositiveCount;
  v4[3] = falseNegativeCount;
  result.falseNegativeCount = falseNegativeCount;
  result.falsePositiveCount = falsePositiveCount;
  result.trueNegativeCount = trueNegativeCount;
  result.truePositiveCount = truePositiveCount;
  return result;
}

KnowledgeGraphKit::ConfusionMatrix __swiftcall ConfusionMatrix.init()()
{
  *v0 = 0;
  v0[1] = 0;
  return result;
}

unint64_t ConfusionMatrix.precision.getter()
{
  v1 = *v0 + v0[2];
  if (v1 == 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = COERCE_UNSIGNED_INT(*v0 / v1);
  }

  return v2 | ((v1 == 0.0) << 32);
}

unint64_t ConfusionMatrix.recall.getter()
{
  v1 = *v0 + v0[3];
  if (v1 == 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = COERCE_UNSIGNED_INT(*v0 / v1);
  }

  return v2 | ((v1 == 0.0) << 32);
}

float ConfusionMatrix.f1Score.getter()
{
  v1 = *v0;
  v2 = *v0 + v0[2];
  result = 0.0;
  if (v2 != 0.0)
  {
    v4 = v1 + v0[3];
    if (v4 != 0.0)
    {
      return (((v1 / v2) * (v1 / v4)) + ((v1 / v2) * (v1 / v4))) / ((v1 / v2) + (v1 / v4));
    }
  }

  return result;
}

float ConfusionMatrix.mccScore.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = sqrtf((v1 + v3) * ((v1 + v2) * ((*v0 + v2) * (*v0 + v3))));
  v5 = ((*v0 * v1) - (v2 * v3)) / v4;
  v6 = v4 == 0.0;
  result = 0.0;
  if (!v6)
  {
    return v5;
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *Matrix<A>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    result = sub_2558B5F54(MEMORY[0x277D84F90], sub_25588B28C, v31);
    v12 = v31[0];
    v3 = v31[1];
    v6 = v31[2];
    goto LABEL_34;
  }

  v7 = v2[2];
  v8 = *(a1 + 32);
  v9 = v6 - 1;
  if (v6 != 1)
  {
    if (v6 >= 5)
    {
      v10 = v9 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v13 = vdupq_n_s64(v8);
      v14 = (a1 + 56);
      v15 = v9 & 0xFFFFFFFFFFFFFFFCLL;
      v16 = v13;
      do
      {
        v13 = vbslq_s8(vcgtq_s64(v13, v14[-1]), v13, v14[-1]);
        v16 = vbslq_s8(vcgtq_s64(v16, *v14), v16, *v14);
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      v17 = vbslq_s8(vcgtq_s64(v13, v16), v13, v16);
      v18 = vextq_s8(v17, v17, 8uLL).u64[0];
      v8 = vbsl_s8(vcgtd_s64(v17.i64[0], v18), *v17.i8, v18);
      if (v9 == (v9 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = 1;
    }

    v19 = v6 - v10;
    v20 = (a1 + 8 * v10 + 32);
    do
    {
      v22 = *v20++;
      v21 = v22;
      if (v8 <= v22)
      {
        v8 = v21;
      }

      --v19;
    }

    while (v19);
  }

LABEL_13:
  if (v8 >= v7)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v3 = v2[1];
  v23 = v3 * v6;
  if ((v3 * v6) >> 64 != (v3 * v6) >> 63)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v4 = *v2;
  if (v23)
  {
    v2 = sub_255965530();
    v2[2] = v23;
    bzero(v2 + 4, 4 * v23);
    goto LABEL_19;
  }

  v2 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
LABEL_19:
    v30 = a2;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  v2 = sub_2558803F4(v2);
LABEL_20:
  v24 = 0;
  v29 = v2;
  v25 = v2 + 4;
  v4 += 32;
  v27 = v3 < 0xFFFFFFFF80000000 || v7 < 0xFFFFFFFF80000000;
  v2 = (v6 >> 31);
  do
  {
    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v3 > 0x7FFFFFFF)
    {
      goto LABEL_36;
    }

    if (v7 > 0x7FFFFFFF)
    {
      goto LABEL_37;
    }

    if (v27)
    {
      goto LABEL_38;
    }

    if (v2)
    {
      goto LABEL_39;
    }

    result = cblas_scopy_NEWLAPACK();
    v25 = (v25 + 4);
    ++v24;
  }

  while (v28 != v6);
  v12 = v29;
  a2 = v30;
LABEL_34:
  *a2 = v12;
  a2[1] = v3;
  a2[2] = v6;
  return result;
}

uint64_t Matrix<A>.normalizeMagnitude(along:)(char *a1)
{
  v3 = *(v1 + 8);
  if (a1)
  {
    if (a1 != 1)
    {
LABEL_25:
      type metadata accessor for MatrixAxis(0);
      result = sub_255965C30();
      __break(1u);
      return result;
    }

    v6 = 1;
    v5 = *(v1 + 8);
    v4 = *(v1 + 16);
    v3 = v4;
  }

  else
  {
    v4 = 1;
    v5 = *(v1 + 16);
    v6 = v5;
  }

  if (v3 < 0)
  {
    goto LABEL_20;
  }

  if (v3)
  {
    v7 = sub_255965530();
    *(v7 + 16) = v3;
    if (v5 < 0xFFFFFFFF80000000)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v5 > 0x7FFFFFFF)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v4 < 0xFFFFFFFF80000000)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v4 > 0x7FFFFFFF)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v8 = v7;
    v9 = 0;
    while ((v9 * v6) >> 64 == (v9 * v6) >> 63)
    {
      v10 = v9 + 1;
      v11 = v8 + 4 * v9;
      cblas_snrm2_NEWLAPACK();
      *(v11 + 32) = v12;
      v9 = v10;
      if (v3 == v10)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_16:
  *(v8 + 16) = v3;
  v14 = v8;
  Matrix<A>.divide(by:along:)(&v14, a1);
}

uint64_t sub_2558B5F54@<X0>(uint64_t result@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *(result + 32);
  v7 = 32;
  while (v4)
  {
    v8 = *(*(result + v7) + 16);
    v7 += 8;
    --v4;
    if (v8 != *(v6 + 16))
    {
      __break(1u);
      break;
    }
  }

  v10 = a2(result);
  v11 = *(result + 16);

  v12 = *(v6 + 16);

  if ((v11 * v12) >> 64 == (v11 * v12) >> 63)
  {
    if (*(v10 + 16) == v11 * v12)
    {
LABEL_10:
      *a3 = v10;
      a3[1] = v11;
      a3[2] = v12;
      return v13;
    }

    __break(1u);
LABEL_9:

    v11 = 0;
    v12 = 0;
    v10 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  __break(1u);
  return v13;
}

uint64_t Matrix.init(rows:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a1;
  sub_2559655E0();
  sub_2559655E0();
  swift_getWitnessTable();
  v6 = sub_255965750();
  if (!v14)
  {

    v12 = sub_255965520();
    v14 = 0;
    v15 = 0;
    goto LABEL_5;
  }

  v16 = a1;
  MEMORY[0x28223BE20](v6);
  swift_getWitnessTable();
  result = sub_255965440();
  if (result)
  {

    swift_getWitnessTable();
    sub_255965490();
    sub_255965A50();
    swift_getWitnessTable();
    v8 = sub_255965610();
    v9 = sub_255965570();

    v10 = sub_255965570();

    v14 = v9;
    v15 = v10;
    v12 = v8;
LABEL_5:
    result = Matrix.init(elements:shape:)(v12, &v14, a2, &v16, v11);
    v13 = v17;
    *a3 = v16;
    *(a3 + 8) = v13;
    return result;
  }

  __break(1u);
  return result;
}

__n128 Matrix.init(arrayLiteral:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Matrix.init(rows:)(a1, a2, &v5);
  result = v6;
  *a3 = v5;
  *(a3 + 8) = result;
  return result;
}

__n128 Matrix.init(elements:rows:columns:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7[0] = a2;
  v7[1] = a3;
  Matrix.init(elements:shape:)(a1, v7, a4, &v8, a4);
  result = v9;
  *a5 = v8;
  *(a5 + 8) = result;
  return result;
}

__n128 Matrix.init(repeating:rows:columns:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v14, v11);
  v17[0] = a2;
  v17[1] = a3;
  Matrix.init(repeating:shape:)(v13, v17, a4, &v18);
  (*(v10 + 8))(a1, a4);
  result = v19;
  *a5 = v18;
  *(a5 + 8) = result;
  return result;
}

double sub_2558B6434@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a7@<X8>)
{
  v15 = a2;
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_255965C40();
  sub_255965BF0();
  *&result = Matrix.init(repeating:rows:columns:)(v11, a1, v15, a3, a7).n128_u64[0];
  return result;
}

uint64_t Matrix.subscript.getter(Swift::Int a1, Swift::Int a2, uint64_t a3)
{
  Matrix.position(row:column:)(a1, a2);

  return sub_255965640();
}

uint64_t Matrix.rows.getter(uint64_t result)
{
  v2 = v1[1];
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = v1[2];
    v5 = *v1;
    v6 = swift_allocObject();
    v6[2] = *(v3 + 16);
    v6[3] = v5;
    v6[4] = v2;
    v6[5] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D7278, "F<");
    sub_255965910();
    sub_2558BAD9C();
    sub_255965BB0();

    return v7;
  }

  return result;
}

uint64_t Matrix.description.getter(uint64_t a1)
{
  MEMORY[0x259C431B0](0x2878697274614DLL, 0xE700000000000000);
  type metadata accessor for Matrix.Shape(0, *(a1 + 16), v2, v3);
  swift_getWitnessTable();
  sub_255965BE0();
  MEMORY[0x259C431B0](173744172, 0xE400000000000000);
  *&v10 = Matrix.rows.getter(a1);
  *(&v10 + 1) = v4;
  *&v12 = v5;
  *(&v12 + 1) = v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7D6010, &qword_25596E000);
  sub_255965910();
  sub_2558BAE18();
  sub_255965A90();
  sub_255965A60();
  sub_255965A80();
  sub_255965A70();
  v7 = v10;
  if (v10)
  {
    v8 = v12;
    do
    {
      v11 = v7;
      v13 = v8;
      swift_getWitnessTable();
      sub_255965BE0();
      MEMORY[0x259C431B0](10, 0xE100000000000000);
      MEMORY[0x259C431B0](0, 0xE000000000000000);
      swift_unknownObjectRelease();

      sub_255965A70();
      v7 = v11;
      v8 = v13;
    }

    while (v11);
  }

  MEMORY[0x259C431B0](2653, 0xE200000000000000);
  return 0;
}

void Matrix.subscript.setter(uint64_t a1, Swift::Int row, Swift::Int column, uint64_t a4)
{
  v7 = Matrix.position(row:column:)(row, column);
  v8 = *(a4 + 16);
  sub_2559655E0();
  sub_255965510();
  v9 = *v4;
  sub_255899B20(v7, v9, v8);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v11 = v9 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v11 = v9;
  }

  (*(*(v8 - 8) + 40))(v11 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v7, a1, v8);

  nullsub_2();
}

uint64_t Matrix<A>.sum(along:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  return sub_2558B6A4C(a1, MEMORY[0x277CB8788], a2);
}

{
  return sub_2558BA8E4(a1, MEMORY[0x277CB8790], a2);
}

uint64_t Matrix<A>.mean(along:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  return sub_2558B6A4C(a1, MEMORY[0x277CB8768], a2);
}

{
  return sub_2558BA8E4(a1, MEMORY[0x277CB8770], a2);
}

uint64_t sub_2558B6A4C@<X0>(uint64_t result@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  if (result)
  {
    if (result != 1)
    {
LABEL_17:
      type metadata accessor for MatrixAxis(0);
      result = sub_255965C30();
      __break(1u);
      return result;
    }

    v11 = 1;
    v10 = v7;
    v9 = v8;
    v7 = v8;
  }

  else
  {
    v9 = 1;
    v10 = v3[2];
    v11 = v10;
  }

  if (v7 < 0)
  {
    goto LABEL_15;
  }

  if (v7)
  {
    v12 = sub_255965530();
    *(v12 + 16) = v7;
    if (v10 < 0)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v13 = v12;
    v14 = 0;
    v15 = v6 + 32;
    v16 = v12 + 32;
    while (1)
    {
      v17 = v14 * v11;
      if ((v14 * v11) >> 64 != (v14 * v11) >> 63)
      {
        break;
      }

      ++v14;
      result = a2(v15 + 4 * v17, v9, v16, v10);
      v16 += 4;
      if (v7 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_13:
  *(v13 + 16) = v7;
  *a3 = v13;
  return result;
}

uint64_t Matrix.appendingColumn(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v17[0] = *a1;
  v9 = *(a2 + 16);
  v10 = type metadata accessor for Vector(0, v9, a3, a4);
  result = Vector.count.getter(v10);
  if (v7 != result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v12 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v7 * v12;
  if ((v7 * v12) >> 64 == (v7 * v12) >> 63)
  {
    v13 = MEMORY[0x28223BE20](result);
    v15 = sub_2558A7534(v14, sub_2558BAEA4, v13);
    v17[0] = v7;
    v17[1] = v8 + 1;
    return Matrix.init(elements:shape:)(v15, v17, v9, a5, v16);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Matrix.appendingColumns(of:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(result + 8);
  if (v4 != v3[1])
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = *(result + 16);
  v6 = v3[2];
  v7 = v6 + v5;
  if (__OFADD__(v6, v5))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = *result;
  v9 = *v3;
  v10 = *(a2 + 16);
  v17 = *v3;
  sub_2559655E0();

  swift_getWitnessTable();
  if (sub_255965780())
  {

    v17 = v4;
    v18 = v6 + v5;

LABEL_9:
    v13 = a3;
    return Matrix.init(elements:shape:)(v11, &v17, v10, v13, v12);
  }

  v17 = v8;
  if (sub_255965780())
  {
    v17 = v4;
    v18 = v6 + v5;
    v13 = a3;
    v11 = v9;
    return Matrix.init(elements:shape:)(v11, &v17, v10, v13, v12);
  }

  result = v4 * v7;
  if ((v4 * v7) >> 64 == (v4 * v7) >> 63)
  {
    v14 = MEMORY[0x28223BE20](result);
    v11 = sub_2558A7534(v15, sub_2558BAEE0, v14);
    v17 = v4;
    v18 = v6 + v5;
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t Matrix.appendRow<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v16 = *(v5 + 8);
  if (!v16)
  {
    *(v5 + 16) = sub_255965710();
  }

  result = sub_255965710();
  if (result != *(v5 + 16))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v23 = a4;
  v18 = *(v10 + 16);
  v18(v15, a1, a3);
  type metadata accessor for Vector(0, *(a2 + 16), v19, v20);
  if (swift_dynamicCast())
  {
    v21 = sub_2559655E0();
    WitnessTable = swift_getWitnessTable();
    Matrix.appendRow<A>(_:)(&v24, a2, v21, WitnessTable);
  }

  v18(v12, a1, a3);
  sub_2559655E0();
  result = sub_255965580();
  if (__OFADD__(v16, 1))
  {
    goto LABEL_10;
  }

  *(v5 + 8) = v16 + 1;
  return result;
}

BOOL static Matrix<A>.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a2[1];
  v7 = a2[2];
  v8 = sub_255965600();
  v10 = v4 == v6 && v5 == v7;
  return (v8 & 1) != 0 && v10;
}

uint64_t Matrix<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v6[9] = *v2;
  v7 = *(v2 + 8);
  sub_255965D50();
  Matrix<A>.hash(into:)(v6, a1, a2);
  return sub_255965D90();
}

uint64_t Matrix.Shape.init(rows:columns:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Matrix.Shape.count.getter()
{
  v1 = v0[1];
  result = *v0 * v1;
  if ((*v0 * v1) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t Matrix.Shape.description.getter()
{
  v0 = sub_255965BC0();
  MEMORY[0x259C431B0](v0);

  MEMORY[0x259C431B0](41931, 0xA200000000000000);
  v1 = sub_255965BC0();
  MEMORY[0x259C431B0](v1);

  MEMORY[0x259C431B0](41, 0xE100000000000000);
  return 40;
}

uint64_t Matrix.Shape.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x259C43B00](*v0);
  return MEMORY[0x259C43B00](v1);
}

uint64_t Matrix.Shape.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_255965D50();
  MEMORY[0x259C43B00](v1);
  MEMORY[0x259C43B00](v2);
  return sub_255965D90();
}

uint64_t sub_2558B7300(uint64_t a1)
{
  sub_255965D50();
  Matrix.Shape.hash(into:)();
  return sub_255965D90();
}

uint64_t Matrix.elements.getter()
{
  sub_255891CC4();
}

__n128 Matrix.shape.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

uint64_t Matrix.init(elements:shape:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v5 = *a2;
  v6 = a2[1];
  *a4 = a1;
  a4[1] = v5;
  a4[2] = v6;
  v7 = type metadata accessor for Matrix(0, a3, a3, a5);

  sub_2558B73F4(v7);
}

uint64_t sub_2558B73F4(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  result = sub_255965570();
  if ((v2 * v3) >> 64 != (v2 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result != v2 * v3)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_2558B7444@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  result = *a1 * a2;
  if ((v4 * a2) >> 64 != result >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (__OFADD__(result, a2))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result + a2 >= result)
  {
    result = sub_255965620();
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

Swift::Int __swiftcall Matrix.position(row:column:)(Swift::Int row, Swift::Int column)
{
  if (*(v2 + 8) < row)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(v2 + 16);
  if (v3 <= column)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = row * v3;
  if ((row * v3) >> 64 != (row * v3) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  row = v4 + column;
  if (__OFADD__(v4, column))
  {
LABEL_9:
    __break(1u);
  }

  return row;
}

Swift::tuple_row_Int_column_Int __swiftcall Matrix.index(position:)(Swift::Int position)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (position == 0x8000000000000000 && v2 == -1)
  {
    goto LABEL_6;
  }

  v3 = position % v2;
  position /= v2;
LABEL_7:
  result.column = v3;
  result.row = position;
  return result;
}

uint64_t sub_2558B7520(uint64_t a1, Swift::Int *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = type metadata accessor for Matrix(0, *(a2 + a3 - 8), a3, a4);
  return Matrix.subscript.getter(v4, v5, v6);
}

void sub_2558B7590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v15 - v6;
  v9 = *v8;
  v10 = v8[1];
  (*(v11 + 16))(&v15 - v6, v5);
  v14 = type metadata accessor for Matrix(0, v4, v12, v13);
  Matrix.subscript.setter(v7, v9, v10, v14);
}

void (*Matrix.subscript.modify(void *a1, Swift::Int a2, Swift::Int a3, uint64_t a4))(Swift::Int **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = *(a4 + 16);
  v10[4] = v12;
  v13 = *(v12 - 8);
  v10[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v10[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  Matrix.position(row:column:)(a2, a3);
  sub_255965640();
  return sub_2558B77C4;
}

void sub_2558B77C4(Swift::Int **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[2];
    v9 = *v2;
    v8 = v2[1];
    (*(v6 + 16))((*a1)[6], v4, v5);
    Matrix.subscript.setter(v3, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    Matrix.subscript.setter((*a1)[7], *v2, v2[1], v2[2]);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *Matrix.withUnsafeMutableBufferPointer<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v5 = v4;
  v7 = *(a3 + 16);
  sub_2559655E0();
  sub_255965510();
  v8 = *v4;
  if (_swift_isClassOrObjCExistentialType())
  {
    v9 = v8 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v9 + 16);
  if (_swift_isClassOrObjCExistentialType())
  {
    v11 = v8 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v11 = v8;
  }

  v14[0] = v11 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
  v12 = v14[0];
  v14[1] = v10;
  a1(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62A0, &unk_25596FCF0);
  return sub_255899AEC(v14, v12, v10, v5, v7);
}

uint64_t Matrix<A>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    result = sub_2558B5F54(MEMORY[0x277D84F90], sub_25588B47C, v31);
    v12 = v31[0];
    v3 = v31[1];
    v6 = v31[2];
    goto LABEL_34;
  }

  v7 = v2[2];
  v8 = *(a1 + 32);
  v9 = v6 - 1;
  if (v6 != 1)
  {
    if (v6 >= 5)
    {
      v10 = v9 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v13 = vdupq_n_s64(v8);
      v14 = (a1 + 56);
      v15 = v9 & 0xFFFFFFFFFFFFFFFCLL;
      v16 = v13;
      do
      {
        v13 = vbslq_s8(vcgtq_s64(v13, v14[-1]), v13, v14[-1]);
        v16 = vbslq_s8(vcgtq_s64(v16, *v14), v16, *v14);
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      v17 = vbslq_s8(vcgtq_s64(v13, v16), v13, v16);
      v18 = vextq_s8(v17, v17, 8uLL).u64[0];
      v8 = vbsl_s8(vcgtd_s64(v17.i64[0], v18), *v17.i8, v18);
      if (v9 == (v9 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = 1;
    }

    v19 = v6 - v10;
    v20 = (a1 + 8 * v10 + 32);
    do
    {
      v22 = *v20++;
      v21 = v22;
      if (v8 <= v22)
      {
        v8 = v21;
      }

      --v19;
    }

    while (v19);
  }

LABEL_13:
  if (v8 >= v7)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v3 = v2[1];
  v23 = v3 * v6;
  if ((v3 * v6) >> 64 != (v3 * v6) >> 63)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v4 = *v2;
  if (v23)
  {
    v2 = sub_255965530();
    v2[2] = v23;
    bzero(v2 + 4, 8 * v23);
    goto LABEL_19;
  }

  v2 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
LABEL_19:
    v30 = a2;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  v2 = sub_25588041C(v2);
LABEL_20:
  v24 = 0;
  v29 = v2;
  v25 = v2 + 4;
  v4 += 32;
  v27 = v3 < 0xFFFFFFFF80000000 || v7 < 0xFFFFFFFF80000000;
  v2 = (v6 >> 31);
  do
  {
    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v3 > 0x7FFFFFFF)
    {
      goto LABEL_36;
    }

    if (v7 > 0x7FFFFFFF)
    {
      goto LABEL_37;
    }

    if (v27)
    {
      goto LABEL_38;
    }

    if (v2)
    {
      goto LABEL_39;
    }

    result = cblas_dcopy_NEWLAPACK();
    ++v25;
    ++v24;
  }

  while (v28 != v6);
  v12 = v29;
  a2 = v30;
LABEL_34:
  *a2 = v12;
  a2[1] = v3;
  a2[2] = v6;
  return result;
}

uint64_t Matrix<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  sub_2559655F0();
  MEMORY[0x259C43B00](v4);
  return MEMORY[0x259C43B00](v5);
}

uint64_t sub_2558B7C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_255965D50();
  Matrix<A>.hash(into:)(v6, a2, v4);
  return sub_255965D90();
}

uint64_t Matrix.init(repeating:shape:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *a2 * v6;
  if ((v5 * v6) >> 64 == v7 >> 63)
  {
    v9 = result;
    v10 = sub_255899B74(result, v7, a3);
    v13[0] = v5;
    v13[1] = v6;
    Matrix.init(elements:shape:)(v10, v13, a3, &v14, v11);
    result = (*(*(a3 - 8) + 8))(v9, a3);
    v12 = v15;
    *a4 = v14;
    *(a4 + 8) = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2558B7D9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17[9] = a3;
  v17[10] = a4;
  v17[11] = a5;
  v17[2] = a11;
  v17[3] = a6;
  v17[4] = a1;
  v17[5] = a7;
  v17[6] = a8;
  v17[7] = a9;
  v17[8] = a10;
  v14 = type metadata accessor for Matrix(0, a11, a3, a4);
  WitnessTable = swift_getWitnessTable();
  result = AccelerateBufferWrapper.withUnsafeBufferPointer<A>(_:)(sub_2558BB374, v17, v14, MEMORY[0x277D84F78] + 8, WitnessTable);
  if ((a7 * a8) >> 64 == (a7 * a8) >> 63)
  {
    *a2 = a7 * a8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2558B7E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12[11] = a3;
  v12[2] = a9;
  v12[3] = a4;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a5;
  v12[7] = a6;
  v12[8] = a7;
  v12[9] = a8;
  v9 = type metadata accessor for Vector(0, a9, a3, a4);
  WitnessTable = swift_getWitnessTable();
  return AccelerateBufferWrapper.withUnsafeBufferPointer<A>(_:)(sub_2558BB3A8, v12, v9, MEMORY[0x277D84F78] + 8, WitnessTable);
}

uint64_t sub_2558B7F2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = sub_2559658C0();
  if (!result)
  {
    goto LABEL_10;
  }

  v12 = result;
  result = sub_2559653A0();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  result = sub_2559653A0();
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (a6 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a6)
  {
    v14 = 0;
    do
    {
      sub_2559658A0();
      v15 = a6;
      v16 = *(*(a10 - 8) + 72);
      v13 += v16 * a9;
      result = sub_2559658A0();
      v12 += v16 * a9 + v16;
      a6 = v15;
      ++v14;
    }

    while (v15 != v14);
  }

  return result;
}

uint64_t sub_2558B8060(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v18[2] = a14;
  v18[3] = a6;
  v18[4] = a7;
  v18[5] = a8;
  v18[6] = a1;
  v18[7] = a9;
  v18[8] = a10;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v15 = type metadata accessor for Matrix(0, a14, a3, a4);
  WitnessTable = swift_getWitnessTable();
  result = AccelerateBufferWrapper.withUnsafeBufferPointer<A>(_:)(sub_2558BB2F4, v18, v15, MEMORY[0x277D84F78] + 8, WitnessTable);
  if ((a9 * a10) >> 64 == (a9 * a10) >> 63)
  {
    *a2 = a9 * a10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2558B8144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v15[2] = a12;
  v15[3] = a6;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a7;
  v15[7] = a8;
  v16 = a9;
  v17 = a10;
  v18 = a11;
  v12 = type metadata accessor for Matrix(0, a12, a3, a4);
  WitnessTable = swift_getWitnessTable();
  return AccelerateBufferWrapper.withUnsafeBufferPointer<A>(_:)(sub_2558BB334, v15, v12, MEMORY[0x277D84F78] + 8, WitnessTable);
}

uint64_t sub_2558B8208(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  result = sub_2559658C0();
  if (!result)
  {
    goto LABEL_10;
  }

  v14 = result;
  result = sub_2559653A0();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = result;
  result = sub_2559653A0();
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (a6 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a6)
  {
    v16 = result;
    do
    {
      sub_2559658A0();
      v17 = *(*(a12 - 8) + 72);
      v15 += v17 * a9;
      result = sub_2559658A0();
      v14 += v17 * a9 + v17 * a11;
      v16 += v17 * a11;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t Matrix<A>.transposed()@<X0>(uint64_t *a1@<X8>)
{
  return sub_2558B8448(MEMORY[0x277D839F8], MEMORY[0x277CB8780], a1);
}

{
  return sub_2558B8448(MEMORY[0x277D83A90], MEMORY[0x277CB8778], a1);
}

uint64_t sub_2558B8448@<X0>(uint64_t result@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v6 = v3[1];
  v5 = v3[2];
  if ((v6 * v5) >> 64 != (v6 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  v8 = result;
  v9 = *v3;

  v10 = sub_2558BAF40(v6 * v5, v9, v6, v5, v6, v5, v8, a2);

  *a3 = v10;
  a3[1] = v5;
  a3[2] = v6;
  if (*(v10 + 16) != v6 * v5)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void *static Matrix<A>.* infix(_:_:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = result[1];
  v5 = a2[2];
  v6 = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v6 < 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result[2];
  if (v6)
  {
    result = sub_255965530();
    v8 = result;
    result[2] = v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v4 > 0x7FFFFFFF)
  {
    goto LABEL_15;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 >= 0xFFFFFFFF80000000 && v4 >= 0xFFFFFFFF80000000 && v5 >= 0xFFFFFFFF80000000)
  {
    result = cblas_dgemm_NEWLAPACK();
    v8[2] = v6;
    *a3 = v8;
    a3[1] = v4;
    a3[2] = v5;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v4 = result[1];
  v5 = a2[2];
  v6 = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v6 < 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result[2];
  if (v6)
  {
    result = sub_255965530();
    v8 = result;
    result[2] = v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v4 > 0x7FFFFFFF)
  {
    goto LABEL_15;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 >= 0xFFFFFFFF80000000 && v4 >= 0xFFFFFFFF80000000 && v5 >= 0xFFFFFFFF80000000)
  {
    result = cblas_sgemm_NEWLAPACK();
    v8[2] = v6;
    *a3 = v8;
    a3[1] = v4;
    a3[2] = v5;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t Matrix.number(of:)(uint64_t a1)
{
  if (!a1)
  {
    v2 = v1 + 8;
    return *v2;
  }

  if (a1 == 1)
  {
    v2 = v1 + 16;
    return *v2;
  }

  type metadata accessor for MatrixAxis(0);
  result = sub_255965C30();
  __break(1u);
  return result;
}

uint64_t sub_2558B8808@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v7 = a3;
  if (result)
  {
    if (result != 1)
    {
LABEL_17:
      type metadata accessor for MatrixAxis(0);
      result = sub_255965C30();
      __break(1u);
      return result;
    }

    v12 = 1;
    v11 = a3;
    v10 = a4;
    v7 = a4;
  }

  else
  {
    v10 = 1;
    v11 = a4;
    v12 = a4;
  }

  if (v7 < 0)
  {
    goto LABEL_15;
  }

  if (v7)
  {
    v13 = sub_255965530();
    *(v13 + 16) = v7;
    if (v11 < 0)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v14 = v13;
    v15 = 0;
    v16 = a2 + 32;
    v17 = v13 + 32;
    while (1)
    {
      v18 = v15 * v12;
      if ((v15 * v12) >> 64 != (v15 * v12) >> 63)
      {
        break;
      }

      ++v15;
      result = a5(v16 + 4 * v18, v10, v17, v11);
      v17 += 4;
      if (v7 == v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_13:
  *(v14 + 16) = v7;
  *a6 = v14;
  return result;
}

uint64_t Matrix.aggregate1<A>(along:aggregation:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14 = *v6;
  v13 = v6[1];
  v15 = v6[2];
  v27 = *v6;
  v28 = v13;
  v29 = v15;
  v16 = Matrix.number(of:)(a1);
  v26[11] = a6;
  if (a1 > 1)
  {
    type metadata accessor for MatrixAxis(0);
    result = sub_255965C30();
    __break(1u);
  }

  else
  {
    v27 = v14;
    v28 = v13;
    v29 = v15;
    MEMORY[0x28223BE20](v16);
    v26[2] = *(a4 + 16);
    v26[3] = a5;
    v26[4] = v17;
    v26[5] = v18;
    v26[6] = v20;
    v26[7] = v19;
    v26[8] = a2;
    v26[9] = a3;
    v23 = type metadata accessor for Vector(0, a5, v21, v22);
    WitnessTable = swift_getWitnessTable();
    return AccelerateBufferWrapper.withUnsafeBufferPointer<A>(_:)(sub_2558BB014, v26, a4, v23, WitnessTable);
  }

  return result;
}

void *sub_2558B8A9C@<X0>(uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5)
{
  result = sub_2559653A0();
  if (result)
  {
    v7 = MEMORY[0x28223BE20](result);
    v8 = sub_2558A7534(a3, sub_2558BB2B8, v7);
    return Vector.init(elements:)(a4, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2558B8B8C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void *, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a8;
  result = sub_2559658C0();
  if (result)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      if (!a3)
      {
LABEL_7:
        *a2 = a3;
        return result;
      }

      v17 = result;
      v18 = 0;
      while ((v18 * a5) >> 64 == (v18 * a5) >> 63)
      {
        v19 = v18 + 1;
        v21[0] = a4 + *(*(a10 - 8) + 72) * v18 * a5;
        v21[1] = a6;
        v21[2] = a7;
        result = v22(v21, v17 + *(*(a11 - 8) + 72) * v18);
        v18 = v19;
        if (a3 == v19)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Matrix.aggregate2<A, B>(along:transform:)(void *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a1;
  v36 = a2;
  v16 = *v8;
  v15 = v8[1];
  v17 = v8[2];
  v39 = *v8;
  v40 = v15;
  v41 = v17;
  v18 = Matrix.number(of:)(a3);
  if (a3 > 1)
  {
    type metadata accessor for MatrixAxis(0);
    result = sub_255965C30();
    __break(1u);
  }

  else
  {
    v34[1] = v34;
    v39 = v16;
    v40 = v15;
    v41 = v17;
    MEMORY[0x28223BE20](v18);
    v33[2] = *(a6 + 16);
    v33[3] = a7;
    v33[4] = a8;
    v33[5] = v19;
    v33[6] = v21;
    v33[7] = v20;
    v33[8] = v23;
    v33[9] = v22;
    v33[10] = v24;
    v33[11] = a4;
    v33[12] = a5;
    type metadata accessor for Vector(255, a7, v25, v26);
    type metadata accessor for Vector(255, a8, v27, v28);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    WitnessTable = swift_getWitnessTable();
    result = AccelerateBufferWrapper.withUnsafeBufferPointer<A>(_:)(sub_2558BB048, v33, a6, TupleTypeMetadata2, WitnessTable);
    v32 = v38;
    *v35 = v37;
    *v36 = v32;
  }

  return result;
}

void *sub_2558B8E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void *, uint64_t, uint64_t)@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v49 = a6;
  v45 = a8;
  v46 = a7;
  v47 = a4;
  v48 = a5;
  v43 = a1;
  v44 = a2;
  v51 = a9;
  v42 = a10;
  v38 = a3;
  v39 = a13;
  v40 = *(a12 - 8);
  v41 = a14;
  MEMORY[0x28223BE20](a1);
  v35 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(*(*(v15 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v36 = *(a11 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v20);
  swift_getAssociatedConformanceWitness();
  sub_255965C40();
  sub_255965BF0();
  v21 = v38;
  v22 = sub_255899B74(v19, v38, a11);
  v23 = v36 + 8;
  (*(v36 + 8))(v19, a11);
  v54 = v22;
  swift_getAssociatedConformanceWitness();
  sub_255965C40();
  v24 = v35;
  sub_255965BF0();
  v25 = sub_255899B74(v24, v21, a12);
  (*(v40 + 8))(v24, a12);
  v53 = v25;
  sub_2559655E0();
  sub_255965510();
  v26 = v54;
  if (_swift_isClassOrObjCExistentialType())
  {
    v27 = v26 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v27 = v26;
  }

  v28 = *(v27 + 16);
  if (_swift_isClassOrObjCExistentialType())
  {
    v29 = v26 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v29 = v26;
  }

  v30 = v29 + ((*(v23 + 72) + 32) & ~*(v23 + 72));
  v52[0] = v30;
  v52[1] = v28;
  v31 = v50;
  sub_2558B92E4(v52, &v53, v43, v44, v21, v47, v48, v49, v46, v45, v42, a11, a12, v39, v41);
  if (v31)
  {
    result = sub_255899AEC(v52, v30, v28, &v54, a11);
    __break(1u);
  }

  else
  {
    sub_255899AEC(v52, v30, v28, &v54, a11);
    v32 = v51;
    Vector.init(elements:)(v51, v54);
    return Vector.init(elements:)(v32 + 1, v53);
  }

  return result;
}

void *sub_2558B92E4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *, uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = sub_2559658C0();
  if (v19)
  {
    v20 = v19;
    v15 = a13;
    sub_2559655E0();
    sub_255965510();
    v21 = *a2;
    if (_swift_isClassOrObjCExistentialType())
    {
      v22 = v21 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v22 = v21;
    }

    v16 = *(v22 + 16);
    if (_swift_isClassOrObjCExistentialType())
    {
      v23 = v21 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v23 = v21;
    }

    v17 = v23 + ((*(*(a13 - 8) + 80) + 32) & ~*(*(a13 - 8) + 80));
    v32[0] = v17;
    v32[1] = v16;
    v24 = v32[4];
    sub_2558B94A4(v32, a3, a4, a5, a6, a7, a8, a9, a10, v20, a11, a12, a13);
    if (!v24)
    {
      return sub_255899AEC(v32, v17, v16, a2, a13);
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_255899AEC(v32, v17, v16, a2, v15);
  __break(1u);
  return result;
}

uint64_t sub_2558B94A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void *, uint64_t, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v23 = a8;
  result = sub_2559658C0();
  v19 = result;
  if (!result)
  {
    goto LABEL_11;
  }

  result = sub_2559653A0();
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (a4 < 0)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a4)
  {
    v16 = result;
    v17 = 0;
    while ((v17 * a5) >> 64 == (v17 * a5) >> 63)
    {
      v18 = v17 + 1;
      v22[0] = v16 + *(*(a11 - 8) + 72) * v17 * a5;
      v22[1] = a6;
      v22[2] = a7;
      result = v23(v22, a10 + *(*(a12 - 8) + 72) * v17, v19 + *(*(a13 - 8) + 72) * v17);
      v17 = v18;
      if (a4 == v18)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

void *Matrix.modify(along:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[1];
  v10 = v4[2];
  v15[11] = *v4;
  v15[12] = v9;
  v15[13] = v10;

  v11 = Matrix.number(of:)(a1);

  if (!a1)
  {
    v9 = v10;
LABEL_5:
    MEMORY[0x28223BE20](v12);
    v15[2] = *(a4 + 16);
    v15[3] = v11;
    v15[4] = v10;
    v15[5] = v13;
    v15[6] = v9;
    v15[7] = a2;
    v15[8] = a3;
    return Matrix.withUnsafeMutableBufferPointer<A>(_:)(sub_2558BB084, v15, a4, MEMORY[0x277D84F78] + 8);
  }

  if (a1 == 1)
  {
    v10 = 1;
    goto LABEL_5;
  }

  type metadata accessor for MatrixAxis(0);
  result = sub_255965C30();
  __break(1u);
  return result;
}

uint64_t sub_2558B9728(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *), uint64_t a7, uint64_t a8)
{
  result = sub_2559658C0();
  if (!result)
  {
    goto LABEL_10;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v15 = result;
    v16 = 0;
    v17 = a8 - 8;
    while (1)
    {
      v18 = v16 * a3;
      if ((v16 * a3) >> 64 != (v16 * a3) >> 63)
      {
        break;
      }

      ++v16;
      v19[0] = v15 + *(*v17 + 72) * v18;
      v19[1] = a4;
      v19[2] = a5;
      result = a6(v19);
      if (a2 == v16)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void *Matrix.modify<A, B>(along:transform:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a5;
  v30 = a1;
  v31 = a2;
  v14 = v8[1];
  v15 = v8[2];
  v32 = *v8;
  v33 = v14;
  v34 = v15;

  v16 = Matrix.number(of:)(a3);

  if (!a3)
  {
    v14 = v15;
LABEL_5:
    MEMORY[0x28223BE20](v17);
    v28[2] = *(a6 + 16);
    v28[3] = a7;
    v28[4] = a8;
    v28[5] = v18;
    v28[6] = v19;
    v28[7] = v16;
    v28[8] = v15;
    v28[9] = v20;
    v28[10] = v14;
    v28[11] = a4;
    v28[12] = v29;
    type metadata accessor for Vector(255, a7, v21, v22);
    type metadata accessor for Vector(255, a8, v23, v24);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    result = Matrix.withUnsafeMutableBufferPointer<A>(_:)(sub_2558BB0AC, v28, a6, TupleTypeMetadata2);
    v27 = v33;
    *v30 = v32;
    *v31 = v27;
    return result;
  }

  if (a3 == 1)
  {
    v15 = 1;
    goto LABEL_5;
  }

  type metadata accessor for MatrixAxis(0);
  result = sub_255965C30();
  __break(1u);
  return result;
}

void *sub_2558B99A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void *, uint64_t, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v46 = a6;
  v42 = a8;
  v43 = a7;
  v44 = a4;
  v45 = a5;
  v40 = a1;
  v41 = a3;
  v36 = a2;
  v48 = a9;
  v38 = *(a11 - 8);
  v37 = a12;
  v39 = a13;
  MEMORY[0x28223BE20](a1);
  v33 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(*(*(v14 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v34 = *(a10 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v19);
  swift_getAssociatedConformanceWitness();
  sub_255965C40();
  sub_255965BF0();
  v20 = v36;
  v21 = sub_255899B74(v18, v36, a10);
  v22 = v34 + 8;
  (*(v34 + 8))(v18, a10);
  v51 = v21;
  swift_getAssociatedConformanceWitness();
  sub_255965C40();
  v23 = v33;
  sub_255965BF0();
  v24 = sub_255899B74(v23, v20, a11);
  (*(v38 + 8))(v23, a11);
  v50 = v24;
  sub_2559655E0();
  sub_255965510();
  v25 = v51;
  if (_swift_isClassOrObjCExistentialType())
  {
    v26 = v25 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v26 = v25;
  }

  v27 = *(v26 + 16);
  if (_swift_isClassOrObjCExistentialType())
  {
    v28 = v25 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v28 = v25;
  }

  v29 = v28 + ((*(v22 + 72) + 32) & ~*(v22 + 72));
  v49[0] = v29;
  v49[1] = v27;
  v30 = v47;
  sub_2558B9E28(v49, &v50, v40, v20, v41, v44, v45, v46, v43, v42, a10, a11, v37, v39);
  if (v30)
  {
    result = sub_255899AEC(v49, v29, v27, &v51, a10);
    __break(1u);
  }

  else
  {
    sub_255899AEC(v49, v29, v27, &v51, a10);
    v31 = v48;
    Vector.init(elements:)(v48, v51);
    return Vector.init(elements:)(v31 + 1, v50);
  }

  return result;
}

void *sub_2558B9E28(void *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void *, uint64_t, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = sub_2559658C0();
  if (v18)
  {
    v19 = v18;
    v14 = a12;
    sub_2559655E0();
    sub_255965510();
    v20 = *a2;
    if (_swift_isClassOrObjCExistentialType())
    {
      v21 = v20 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v21 = v20;
    }

    v15 = *(v21 + 16);
    if (_swift_isClassOrObjCExistentialType())
    {
      v22 = v20 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v22 = v20;
    }

    v16 = v22 + ((*(*(a12 - 8) + 80) + 32) & ~*(*(a12 - 8) + 80));
    v31[0] = v16;
    v31[1] = v15;
    v23 = v31[4];
    sub_2558B9FD4(v31, a3, a4, a5, a6, a7, a8, a9, v19, a10, a11, a12);
    if (!v23)
    {
      return sub_255899AEC(v31, v16, v15, a2, a12);
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_255899AEC(v31, v16, v15, a2, v14);
  __break(1u);
  return result;
}

uint64_t sub_2558B9FD4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v22 = a7;
  result = sub_2559658C0();
  v18 = result;
  if (!result)
  {
    goto LABEL_11;
  }

  result = sub_2559658C0();
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (a3 < 0)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a3)
  {
    v15 = result;
    v16 = 0;
    while ((v16 * a4) >> 64 == (v16 * a4) >> 63)
    {
      v17 = v16 + 1;
      v21[0] = v15 + *(*(a10 - 8) + 72) * v16 * a4;
      v21[1] = a5;
      v21[2] = a6;
      result = v22(v21, a9 + *(*(a11 - 8) + 72) * v16, v18 + *(*(a12 - 8) + 72) * v16);
      v16 = v17;
      if (a3 == v17)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

void Matrix<A>.magnitude(along:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  if (a1)
  {
    if (a1 != 1)
    {
LABEL_23:
      type metadata accessor for MatrixAxis(0);
      sub_255965C30();
      __break(1u);
      return;
    }

    v8 = 1;
    v7 = v4;
    v6 = v5;
    v4 = v5;
  }

  else
  {
    v6 = 1;
    v7 = *(v2 + 16);
    v8 = v7;
  }

  if (v4 < 0)
  {
    goto LABEL_18;
  }

  if (v4)
  {
    v9 = sub_255965530();
    *(v9 + 16) = v4;
    if (v7 < 0xFFFFFFFF80000000)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v7 > 0x7FFFFFFF)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v6 < 0xFFFFFFFF80000000)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v6 > 0x7FFFFFFF)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v10 = v9;
    v11 = 0;
    while ((v11 * v8) >> 64 == (v11 * v8) >> 63)
    {
      v12 = v11 + 1;
      v13 = v10 + 4 * v11;
      cblas_snrm2_NEWLAPACK();
      *(v13 + 32) = v14;
      v11 = v12;
      if (v4 == v12)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_16:
  *(v10 + 16) = v4;
  *a2 = v10;
}

{
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  if (a1)
  {
    if (a1 != 1)
    {
LABEL_23:
      type metadata accessor for MatrixAxis(0);
      sub_255965C30();
      __break(1u);
      return;
    }

    v8 = 1;
    v7 = v4;
    v6 = v5;
    v4 = v5;
  }

  else
  {
    v6 = 1;
    v7 = *(v2 + 16);
    v8 = v7;
  }

  if (v4 < 0)
  {
    goto LABEL_18;
  }

  if (v4)
  {
    v9 = sub_255965530();
    *(v9 + 16) = v4;
    if (v7 < 0xFFFFFFFF80000000)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v7 > 0x7FFFFFFF)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v6 < 0xFFFFFFFF80000000)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v6 > 0x7FFFFFFF)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v10 = v9;
    v11 = 0;
    while ((v11 * v8) >> 64 == (v11 * v8) >> 63)
    {
      v12 = v11 + 1;
      v13 = v10 + 8 * v11;
      cblas_dnrm2_NEWLAPACK();
      *(v13 + 32) = v14;
      v11 = v12;
      if (v4 == v12)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_16:
  *(v10 + 16) = v4;
  *a2 = v10;
}

void Matrix<A>.meanAndStandardDeviation(along:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  if (a3)
  {
    if (a3 != 1)
    {
LABEL_17:
      type metadata accessor for MatrixAxis(0);
      sub_255965C30();
      __break(1u);
      return;
    }

    v9 = 1;
    v8 = v3[1];
    v7 = v3[2];
    v6 = v7;
  }

  else
  {
    v7 = 1;
    v8 = v3[2];
    v9 = v8;
  }

  if (v6 < 0)
  {
    goto LABEL_15;
  }

  if (v6)
  {
    v16 = a2;
    v10 = sub_255965530();
    *(v10 + 16) = v6;
    bzero((v10 + 32), 4 * v6);
    v11 = sub_255965530();
    *(v11 + 16) = v6;
    bzero((v11 + 32), 4 * v6);
    if ((v8 & 0x8000000000000000) != 0)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = 0;
    v13 = v5 + 32;
    v14 = 32;
    while (1)
    {
      v15 = v12 * v9;
      if ((v12 * v9) >> 64 != (v12 * v9) >> 63)
      {
        break;
      }

      ++v12;
      vDSP_normalize((v13 + 4 * v15), v7, 0, 1, (v10 + v14), (v11 + v14), v8);
      v14 += 4;
      if (v6 == v12)
      {
        a2 = v16;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
LABEL_13:
  *a1 = v10;
  *a2 = v11;
}

void Matrix<A>.normalizeMeanAndStandardDeviation(along:)(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 16);
  if (!a1)
  {
    v3 = *v1;
    v4 = 1;
    v5 = *(v1 + 16);
    v6 = v5;
    v2 = *(v1 + 8);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }

LABEL_12:
    v3 = sub_2558803F4(v3);
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a1 != 1)
  {
    type metadata accessor for MatrixAxis(0);
    sub_255965C30();
    __break(1u);
    return;
  }

  v3 = *v1;
  v6 = 1;
  v5 = *(v1 + 8);
  v4 = *(v1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v2 < 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (v2)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_15;
    }

    v7 = 0;
    while (1)
    {
      v8 = v7 * v6;
      if ((v7 * v6) >> 64 != (v7 * v6) >> 63)
      {
        break;
      }

      ++v7;
      __StandardDeviation = 0.0;
      __Mean[0] = 0.0;
      vDSP_normalize(&v3[4 * v8 + 32], v4, &v3[4 * v8 + 32], v4, __Mean, &__StandardDeviation, v5);
      if (v2 == v7)
      {
        goto LABEL_9;
      }
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

LABEL_9:
  *v1 = v3;
}

void Matrix<A>.normalizeAndReturnMeanAndStandardDeviation(along:)(uint64_t a1, float *a2, uint64_t a3)
{
  v6 = v3[1];
  if (a3)
  {
    if (a3 != 1)
    {
LABEL_19:
      type metadata accessor for MatrixAxis(0);
      sub_255965C30();
      __break(1u);
      return;
    }

    v9 = 1;
    v8 = v3[1];
    v7 = v3[2];
    v6 = v7;
  }

  else
  {
    v7 = 1;
    v8 = v3[2];
    v9 = v8;
  }

  v10 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (v6 < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  while (v6)
  {
    v16 = v10;
    v11 = sub_255965530();
    *(v11 + 16) = v6;
    bzero((v11 + 32), 4 * v6);
    v12 = sub_255965530();
    *(v12 + 16) = v6;
    bzero((v12 + 32), 4 * v6);
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

    v14 = a1;
    v15 = a2;
    v10 = 0;
    a2 = (v16 + 32);
    a1 = 32;
    while (1)
    {
      v13 = v10 * v9;
      if ((v10 * v9) >> 64 != (v10 * v9) >> 63)
      {
        break;
      }

      ++v10;
      vDSP_normalize(&a2[v13], v7, &a2[v13], v7, (v11 + a1), (v12 + a1), v8);
      a1 += 4;
      if (v6 == v10)
      {
        a1 = v14;
        a2 = v15;
        v10 = v16;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    v10 = sub_2558803F4(v10);
    if (v6 < 0)
    {
      goto LABEL_17;
    }
  }

  v12 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
LABEL_14:
  *v3 = v10;
  *a1 = v11;
  *a2 = v12;
}

void Matrix<A>.divide(by:along:)(uint64_t *a1, char *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = *a1;
  v9 = *(v2 + 8);
  v10 = *(v2 + 16);
  type metadata accessor for MatrixAxis(0);
  if (a2)
  {
    if (a2 != 1)
    {
      sub_255965C30();
      __break(1u);
      return;
    }

    v16 = *(v8 + 16);
    v12 = (v8 + 16);
    if (v10 != v16)
    {
      goto LABEL_21;
    }

    a2 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = 1;
    v11 = v9;
    v3 = v10;
    v5 = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = *(v8 + 16);
    v12 = (v8 + 16);
    if (v9 != v13)
    {
      goto LABEL_21;
    }

    a2 = *v2;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v3 = 1;
    v11 = v10;
    v4 = v10;
    v5 = v9;
    v15 = v10;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  while (1)
  {
    v9 = v11;
    a2 = sub_2558803F4(a2);
    v10 = v3;
LABEL_8:
    v3 = v10;
    v15 = v9;
    v9 = v5;
    v10 = v4;
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

LABEL_9:
    if (!v9)
    {
      break;
    }

    v4 = 0;
    v5 = (a2 + 32);
    v7 += 32;
    while ((v4 * v10) >> 64 == (v4 * v10) >> 63)
    {
      if (v4 >= *v12)
      {
        goto LABEL_19;
      }

      LODWORD(v18[0]) = *(v7 + 4 * v4);
      if (*v18 != 0.0)
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        vDSP_vsdiv((v5 + 4 * v4 * v10), v3, v18, (v5 + 4 * v4 * v10), v3, v15);
      }

      if (v9 == ++v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

LABEL_17:
  *v2 = a2;
}

{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = *a1;
  v9 = *(v2 + 8);
  v10 = *(v2 + 16);
  type metadata accessor for MatrixAxis(0);
  if (a2)
  {
    if (a2 != 1)
    {
      sub_255965C30();
      __break(1u);
      return;
    }

    v16 = *(v8 + 16);
    v12 = (v8 + 16);
    if (v10 != v16)
    {
      goto LABEL_21;
    }

    a2 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = 1;
    v11 = v9;
    v3 = v10;
    v5 = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = *(v8 + 16);
    v12 = (v8 + 16);
    if (v9 != v13)
    {
      goto LABEL_21;
    }

    a2 = *v2;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v3 = 1;
    v11 = v10;
    v4 = v10;
    v5 = v9;
    v15 = v10;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  while (1)
  {
    v9 = v11;
    a2 = sub_25588041C(a2);
    v10 = v3;
LABEL_8:
    v3 = v10;
    v15 = v9;
    v9 = v5;
    v10 = v4;
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

LABEL_9:
    if (!v9)
    {
      break;
    }

    v4 = 0;
    v5 = (a2 + 32);
    v7 += 32;
    while ((v4 * v10) >> 64 == (v4 * v10) >> 63)
    {
      if (v4 >= *v12)
      {
        goto LABEL_19;
      }

      v18[0] = *(v7 + 8 * v4);
      if (v18[0] != 0.0)
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        vDSP_vsdivD((v5 + 8 * v4 * v10), v3, v18, (v5 + 8 * v4 * v10), v3, v15);
      }

      if (v9 == ++v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

LABEL_17:
  *v2 = a2;
}

uint64_t sub_2558BA8E4@<X0>(uint64_t result@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  if (result)
  {
    if (result != 1)
    {
LABEL_17:
      type metadata accessor for MatrixAxis(0);
      result = sub_255965C30();
      __break(1u);
      return result;
    }

    v11 = 1;
    v10 = v7;
    v9 = v8;
    v7 = v8;
  }

  else
  {
    v9 = 1;
    v10 = v3[2];
    v11 = v10;
  }

  if (v7 < 0)
  {
    goto LABEL_15;
  }

  if (v7)
  {
    v12 = sub_255965530();
    *(v12 + 16) = v7;
    if (v10 < 0)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v13 = v12;
    v14 = 0;
    v15 = v6 + 32;
    v16 = v12 + 32;
    while (1)
    {
      v17 = v14 * v11;
      if ((v14 * v11) >> 64 != (v14 * v11) >> 63)
      {
        break;
      }

      ++v14;
      result = a2(v15 + 8 * v17, v9, v16, v10);
      v16 += 8;
      if (v7 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_13:
  *(v13 + 16) = v7;
  *a3 = v13;
  return result;
}

unint64_t sub_2558BAD9C()
{
  result = qword_27F7D7280;
  if (!qword_27F7D7280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7D7278, "F<");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D7280);
  }

  return result;
}

unint64_t sub_2558BAE18()
{
  result = qword_27F7D7288[0];
  if (!qword_27F7D7288[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7D6010, &qword_25596E000);
    sub_2558768D0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F7D7288);
  }

  return result;
}

uint64_t sub_2558BAF40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    goto LABEL_9;
  }

  v12 = result;
  if (result)
  {
    result = sub_255965530();
    v13 = result;
    *(result + 16) = v12;
    if (((a6 | a5) & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v13 = MEMORY[0x277D84F90];
  if ((a6 | a5) < 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

LABEL_4:
  result = a8(a2 + 32, 1, v13 + 32, 1, a6, a5);
  v14 = a5 * a6;
  if ((a5 * a6) >> 64 != (a5 * a6) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v14 <= v12)
  {
    *(v13 + 16) = v14;
    return v13;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2558BB134(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2558BB18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2558BB1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2558BB21C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 24))
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

uint64_t sub_2558BB260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_2558BB4DC(uint64_t a1, uint64_t a2, void (*a3)(void *, void, uint64_t))
{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v8[0] = v4;
  v8[1] = v5;
  v8[2] = v6;
  a3(v8, *(a1 + 16), a2);
}

void sub_2558BD738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, ...)
{
  va_start(va, a45);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2558C12D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2558C184C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2558C1948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void degas::literalBitmapUnionStep(degas *this, sqlite3_context *a2, sqlite3_value **a3, sqlite3_value **a4)
{
  v5 = a2;
  v6 = sqlite3_aggregate_context(this, 8);
  if (!*v6)
  {
    operator new();
  }

  if (v5 == 1)
  {
    v7 = sqlite3_value_blob(*a3);
    v8 = *v6;

    degas::Bitmap::unionWith<degas::LiteralBitmap>(v8, v7);
  }
}

void degas::Bitmap::unionWith<degas::LiteralBitmap>(degas::Bitmap *this, uint64_t a2)
{
  v9 = 0;
  v10 = 0;
  v2 = *(a2 + 4);
  if (v2)
  {
    v5 = 0;
    v6 = a2 + 8;
    do
    {
      v7 = *(this + 2);
      if (v10 >= (*(this + 3) - v7) >> 4)
      {
        break;
      }

      degas::Bitmap::mergeBitset(this, &v10, *(v7 + 16 * v10), &v9, (v6 + 144 * v5));
      v5 = v9;
    }

    while (v9 < v2);
    v8 = *(a2 + 4);
    if (v5 < v8)
    {
      do
      {
        degas::Bitmap::appendBitset(this, (v6 + 144 * v5++));
      }

      while (v8 != v5);
    }
  }
}

void degas::literalBitmapUnionFinal(degas *this, sqlite3_context *a2)
{
  v3 = sqlite3_aggregate_context(this, 8);
  v5 = v3;
  v6 = *v3;
  if (*v3)
  {
    degas::LiteralBitmap::makeLiteralBitmap(*v3, v4);
    v8 = v7;
  }

  else
  {
    degas::LiteralBitmap::emptyBitmap(v3);
    v8 = &degas::LiteralBitmap::emptyBitmap(void)::bitmap;
  }

  sqlite3_result_blob(this, v8, (144 * *(v8 + 1)) | 8, 0xFFFFFFFFFFFFFFFFLL);
  if (v6)
  {
    MEMORY[0x259C43EB0](v8, 0x1000C4000313F17);
  }

  v9 = *v5;
  if (*v5)
  {
    v10 = (v9 + 16);
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v10);
    MEMORY[0x259C43EB0](v9, 0x1020C40C46AEF4ELL);
    *v5 = 0;
  }
}

void std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        degas::BitsetPtr::releaseBitset((v4 - 16));
        *(v4 - 1) = 0;
        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void degas::literalBitmapIntersectionStep(degas *this, sqlite3_context *a2, sqlite3_value **a3, sqlite3_value **a4)
{
  v5 = a2;
  v6 = sqlite3_aggregate_context(this, 8);
  if (!*v6)
  {
    operator new();
  }

  if (v5 != 1)
  {
    return;
  }

  v7 = sqlite3_value_blob(*a3);
  v8 = *v6;
  v25 = 0;
  v26 = 0;
  v9 = v7[1];
  if (!v9)
  {
    v10 = *(v8 + 16);
    v11 = *(v8 + 24);
    goto LABEL_21;
  }

  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v10 == v11)
  {
LABEL_21:
    *v8 = 0;
    for (*(v8 + 8) = 0; v11 != v10; v11 -= 16)
    {
      degas::BitsetPtr::releaseBitset((v11 - 16));
      *(v11 - 8) = 0;
    }

    *(v8 + 24) = v10;
    return;
  }

  v12 = v7;
  LODWORD(v13) = 0;
  v14 = (v7 + 2);
  do
  {
    v15 = v26;
    v17 = *(v8 + 16);
    v16 = *(v8 + 24);
    if (v26 >= (v16 - v17) >> 4)
    {
      v24 = (v16 - v17) >> 4;
      goto LABEL_25;
    }

    v18 = (v17 + 16 * v26);
    v19 = degas::Bitmap::intersectBitset(v8, &v26, *v18, &v25, &v14[144 * v13]);
    v13 = v25;
    if (v19)
    {
      v20 = v9;
      if (v25 != v9)
      {
        v21 = *(*v18 + 1);
        v22 = v9;
        while (1)
        {
          v20 = (v13 + v22) >> 1;
          if (v20 >= v12[1])
          {
            goto LABEL_15;
          }

          v23 = *&v14[144 * v20 + 8];
          if (v23 <= v21)
          {
            break;
          }

          v22 = (v13 + v22) >> 1;
LABEL_16:
          if (v13 == v22)
          {
            goto LABEL_17;
          }
        }

        if (v23 + 1024 > v21)
        {
          goto LABEL_17;
        }

LABEL_15:
        v13 = v20 + 1;
        v20 = v22;
        goto LABEL_16;
      }

LABEL_17:
      v25 = v20;
      v13 = v20;
    }
  }

  while (v13 < v9);
  v15 = v26;
  v17 = *(v8 + 16);
  v16 = *(v8 + 24);
  v24 = (v16 - v17) >> 4;
LABEL_25:
  if (v15 < v24)
  {
    std::vector<degas::BitsetPtr>::erase(v8 + 16, (v17 + 16 * v15), v16);
    *v8 = 0xFFFFFFFFLL;
    *(v8 + 40) = 1;
  }
}

degas::BitsetPtr *std::vector<degas::BitsetPtr>::erase(uint64_t a1, degas::BitsetPtr *this, degas::BitsetPtr *a3)
{
  if (a3 != this)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = this;
    if (a3 != v6)
    {
      do
      {
        degas::BitsetPtr::releaseBitset(v7);
        v8 = *v4;
        *v7 = *v4;
        if (v8)
        {
          ++*v8;
        }

        v4 = (v4 + 16);
        v7 = (v7 + 16);
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    for (; v6 != v7; v6 = (v6 - 16))
    {
      degas::BitsetPtr::releaseBitset((v6 - 16));
      *(v6 - 1) = 0;
    }

    *(a1 + 8) = v7;
  }

  return this;
}

void degas::literalBitmapIntersectionFinal(degas *this, sqlite3_context *a2)
{
  v3 = sqlite3_aggregate_context(this, 8);
  v5 = v3;
  v6 = *v3;
  if (*v3)
  {
    degas::LiteralBitmap::makeLiteralBitmap(*v3, v4);
    v8 = v7;
  }

  else
  {
    degas::LiteralBitmap::emptyBitmap(v3);
    v8 = &degas::LiteralBitmap::emptyBitmap(void)::bitmap;
  }

  sqlite3_result_blob(this, v8, (144 * *(v8 + 1)) | 8, 0xFFFFFFFFFFFFFFFFLL);
  if (v6)
  {
    MEMORY[0x259C43EB0](v8, 0x1000C4000313F17);
  }

  v9 = *v5;
  if (*v5)
  {
    v10 = (v9 + 16);
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v10);
    MEMORY[0x259C43EB0](v9, 0x1020C40C46AEF4ELL);
    *v5 = 0;
  }
}

degas::Bitmap **degas::mergeLiteralBitmapStep(degas *this, sqlite3_context *a2, sqlite3_value **a3, sqlite3_value **a4)
{
  v5 = a2;
  result = sqlite3_aggregate_context(this, 8);
  v7 = result;
  if (!*result)
  {
    operator new();
  }

  if (v5 == 1)
  {
    v8 = sqlite3_value_int64(*a3);
    v9 = *v7;

    return degas::Bitmap::setBit(v9, v8);
  }

  return result;
}

void degas::mergeLiteralBitmapFinal(degas *this, sqlite3_context *a2)
{
  v3 = sqlite3_aggregate_context(this, 8);
  v5 = v3;
  v6 = *v3;
  if (*v3)
  {
    degas::LiteralBitmap::makeLiteralBitmap(*v3, v4);
    v8 = v7;
  }

  else
  {
    degas::LiteralBitmap::emptyBitmap(v3);
    v8 = &degas::LiteralBitmap::emptyBitmap(void)::bitmap;
  }

  sqlite3_result_blob(this, v8, (144 * *(v8 + 1)) | 8, 0xFFFFFFFFFFFFFFFFLL);
  if (v6)
  {
    MEMORY[0x259C43EB0](v8, 0x1000C4000313F17);
  }

  v9 = *v5;
  if (*v5)
  {
    v10 = (v9 + 16);
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v10);
    MEMORY[0x259C43EB0](v9, 0x1020C40C46AEF4ELL);
    *v5 = 0;
  }
}

void degas::bitmapOverlaps(degas *this, sqlite3_context *a2, sqlite3_value **a3, sqlite3_value **a4)
{
  if (a2 < 2)
  {
    return;
  }

  v6 = sqlite3_value_blob(*a3);
  degas::Bitmap::Bitmap(v23, v6);
  v7 = sqlite3_value_blob(a3[1]);
  v8 = v7[1];
  if (!v8 || (v9 = v24, v24 == v25))
  {
    v22 = 0;
    goto LABEL_19;
  }

  v10 = 0;
  v11 = (v7 + 2);
  v12 = (v7 + 7);
  while (1)
  {
    v13 = &v11[144 * v10];
    v14 = *v9;
    v15 = *(*v9 + 8);
    v16 = *(v13 + 1);
    if (v15 < v16)
    {
      v9 += 2;
      goto LABEL_15;
    }

    if (v15 <= v16)
    {
      break;
    }

LABEL_14:
    ++v10;
LABEL_15:
    v22 = 0;
    if (v9 == v25 || v10 >= v8)
    {
      goto LABEL_19;
    }
  }

  if ((*(v13 + 4) & *(v14 + 16)) == 0)
  {
    v17 = 0;
    v18 = v14 + 20;
    while (v17 != 31)
    {
      v19 = v17 + 1;
      v20 = *(v18 + 4 * v17);
      v21 = *&v12[144 * v10 + 4 * v17++];
      if ((v21 & v20) != 0)
      {
        if ((v19 - 1) < 0x1F)
        {
          goto LABEL_21;
        }

        break;
      }
    }

    v9 += 2;
    goto LABEL_14;
  }

LABEL_21:
  v22 = 1;
LABEL_19:
  sqlite3_result_int(this, v22);
  v26 = &v24;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v26);
}

void sub_2558C2330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 - 24) = &a12;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v12 - 24));
  _Unwind_Resume(a1);
}

void degas::bitmapContains(degas *this, sqlite3_context *a2, sqlite3_value **a3, sqlite3_value **a4)
{
  if (a2 >= 2)
  {
    v6 = sqlite3_value_blob(*a3);
    v7 = sqlite3_value_blob(a3[1]);
    degas::Bitmap::Bitmap(v18, v7);
    v8 = v19;
    if (v19 == v20)
    {
      v17 = 1;
    }

    else
    {
      v9 = *(v6 + 1);
      if (v9)
      {
        v10 = 0;
        v11 = (v6 + 3);
        while (1)
        {
          v12 = *(*v8 + 8);
          v13 = v6[18 * v10 + 2];
          if (v12 < v13)
          {
            break;
          }

          if (v12 <= v13)
          {
            v14 = 0;
            for (i = 0; i != 32; ++i)
            {
              v16 = *(*v8 + 16 + 4 * i);
              if (v16 && (v16 & ~*&v11[4 * i]) != 0)
              {
                break;
              }

              v14 = i > 0x1E;
            }

            if (!v14)
            {
              break;
            }

            v8 += 16;
          }

          if (v8 != v20)
          {
            ++v10;
            v11 += 144;
            if (v10 < v9)
            {
              continue;
            }
          }

          v17 = v8 == v20;
          goto LABEL_18;
        }
      }

      v17 = 0;
    }

LABEL_18:
    sqlite3_result_int(this, v17);
    v21 = &v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v21);
  }
}

void sub_2558C247C(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v2 - 40));
  _Unwind_Resume(a1);
}

void degas::bitmapEquals(degas *this, sqlite3_context *a2, sqlite3_value **a3, sqlite3_value **a4)
{
  if (a2 >= 2)
  {
    v7 = sqlite3_value_blob(*a3);
    v8 = sqlite3_value_blob(a3[1]);
    v9 = degas::LiteralBitmap::operator==(v7, v8);

    sqlite3_result_int(this, v9);
  }
}

void degas::bitmapContainsIdentifier(degas *this, sqlite3_context *a2, sqlite3_value **a3, sqlite3_value **a4)
{
  if (a2 >= 2)
  {
    v7 = sqlite3_value_blob(*a3);
    v8 = sqlite3_value_int64(a3[1]);
    isSet = degas::LiteralBitmap::isSet(v7, v8);

    sqlite3_result_int(this, isSet);
  }
}

uint64_t degas::createBitmapFunctions(degas *this, sqlite3 *a2)
{
  result = sqlite3_create_function(this, "bitmapOverlapsBitmap", 2, 2049, 0, degas::bitmapOverlaps, 0, 0);
  if (!result)
  {
    result = sqlite3_create_function(this, "bitmapContainsBitmap", 2, 2049, 0, degas::bitmapContains, 0, 0);
    if (!result)
    {
      result = sqlite3_create_function(this, "bitmapEqualsBitmap", 2, 2049, 0, degas::bitmapEquals, 0, 0);
      if (!result)
      {

        return sqlite3_create_function(this, "bitmapContainsIdentifier", 2, 1, 0, degas::bitmapContainsIdentifier, 0, 0);
      }
    }
  }

  return result;
}

void sub_2558C2D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void MALabelsAndDomainsFromKGLabels(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v17 = a2;
  if (a2)
  {
    a2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v18 = a3;
  if (a3)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  else
  {
    v6 = 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [MAKGDomainConversion maDomainForKGLabel:v12, v17];
        if (v13 == 0xFFFF)
        {
          [a2 addObject:v12];
        }

        else
        {
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v13];
          [v6 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  if (a2)
  {
    v15 = a2;
    *v17 = a2;
  }

  if (v6)
  {
    v16 = v6;
    *v18 = v6;
  }
}

void sub_2558C6744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MALabelAndDomainFromKGLabels(void *a1, void *a2, _WORD *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    v10 = 1;
    v19 = a3;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [MAKGDomainConversion maDomainForKGLabel:v12];
        if (v13 == 0xFFFF)
        {
          if (v8)
          {
            v15 = KGLoggingConnection();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v25 = v5;
              _os_log_error_impl(&dword_255870000, v15, OS_LOG_TYPE_ERROR, "failed KG->MA label conversion, more than one label:%@", buf, 0xCu);
            }

            __assert_rtn("MALabelAndDomainFromKGLabels", "MAGraph.m", 1449, "maLabel == nil");
          }

          v8 = v12;
        }

        else
        {
          v14 = v10 == 1;
          v10 = v13;
          if (!v14)
          {
            v17 = KGLoggingConnection();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v25 = v5;
              _os_log_error_impl(&dword_255870000, v17, OS_LOG_TYPE_ERROR, "failed KG->MA label conversion, more than one domain:%@", buf, 0xCu);
            }

            __assert_rtn("MALabelAndDomainFromKGLabels", "MAGraph.m", 1441, "maDomain == kMAElementDefaultDomain");
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
      a3 = v19;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    LOWORD(v10) = 1;
  }

  if (a2)
  {
    v16 = v8;
    *a2 = v8;
  }

  if (a3)
  {
    *a3 = v10;
  }
}

void testEncodeDecodeBitmap(degas::Bitset ***a1)
{
  size = degas::Bitmap::lengthOfEncodedData(a1);
  degas::Bitmap::begin(v12, a1);
  v2 = v12[0] == a1 && v12[1] == -1;
  if (!v2 || v13[0] != a1[3])
  {
    operator new();
  }

  v3 = malloc_type_malloc(size, 0x100004077774924uLL);
  v14 = v3;
  v15 = v3;
  degas::Bitmap::appendToEncodedBuffer(a1, &v15);
  *v12 = 0u;
  memset(v13, 0, 25);
  degas::Bitmap::replaceFromEncodedBuffer(v12, &v14);
  if ((degas::Bitmap::operator==(a1, v12) & 1) == 0)
  {
    goto LABEL_23;
  }

  v4 = v12[0];
  if (v12[0] == 0xFFFFFFFF)
  {
    v5 = v13[0];
    v6 = v13[1];
    if (v13[0] == v13[1])
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      do
      {
        v7 = *v5;
        v8 = *(*v5 + 4);
        if (v8 == -1)
        {
          v9 = 0;
          v10 = 0uLL;
          do
          {
            do
            {
              v10 = vpadalq_u16(v10, vpaddlq_u8(vcntq_s8(*(v7 + 16 + 4 * v9))));
              v9 += 4;
            }

            while (v9 != 32);
            v9 = 0;
            v8 = vaddvq_s32(v10);
            v10 = 0uLL;
          }

          while (v8 == -1);
          *(v7 + 4) = v8;
        }

        v4 += v8;
        v5 += 2;
      }

      while (v5 != v6);
    }

    v12[0] = v4;
  }

  if (v4)
  {
LABEL_23:
    abort();
  }

  free(v3);
  v16 = v13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v16);
}

void sub_2558C816C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20)
{
  a20 = (v21 + 16);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a20);
  if (v20)
  {
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2797FD930, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void testSet(uint64_t a1@<X8>)
{
  v2 = 0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v22 = 0;
  v23 = 0;
  v21 = &v22;
  do
  {
    v3 = arc4random() % 0x2710;
    degas::Bitmap::setBit(a1, v3);
    v4 = v22;
    if (!v22)
    {
LABEL_8:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v5 = v4;
        v6 = v4[4];
        if (v6 <= v3)
        {
          break;
        }

        v4 = *v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      if (v6 >= v3)
      {
        break;
      }

      v4 = v5[1];
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    v7 = degas::Bitmap::count(a1);
    if (v7 != v23)
    {
      goto LABEL_38;
    }

    ++v2;
  }

  while (v2 != 1000);
  v8 = v21;
  if (v21 != &v22)
  {
    while ((degas::Bitmap::isSet(a1, v8[4]) & 1) != 0)
    {
      v9 = v8[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v12 = *v10 == v8;
          v8 = v10;
        }

        while (!v12);
      }

      v8 = v10;
      if (v10 == &v22)
      {
        goto LABEL_19;
      }
    }

LABEL_38:
    abort();
  }

LABEL_19:
  degas::Bitmap::begin(&v18, a1);
  while (1)
  {
    v11 = v19;
    v12 = v18 == a1 && v19 == -1;
    if (!v12)
    {
      goto LABEL_27;
    }

    if (v20 == *(a1 + 24))
    {
      break;
    }

    v11 = -1;
LABEL_27:
    v13 = v22;
    if (!v22)
    {
      goto LABEL_38;
    }

    v14 = &v22;
    do
    {
      v15 = v13;
      v16 = v14;
      v17 = v13[4];
      if (v17 >= v11)
      {
        v14 = v13;
      }

      v13 = v13[v17 < v11];
    }

    while (v13);
    if (v14 == &v22)
    {
      goto LABEL_38;
    }

    if (v17 < v11)
    {
      v15 = v16;
    }

    if (v11 < v15[4])
    {
      goto LABEL_38;
    }

    degas::Bitmap::iterator::operator++(&v18);
  }

  std::__tree<unsigned long long>::destroy(v22);
}

void sub_2558C84B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void *a13)
{
  std::__tree<unsigned long long>::destroy(a13);
  a12 = (v13 + 16);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void std::__tree<unsigned long long>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<unsigned long long>::destroy(*a1);
    std::__tree<unsigned long long>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void testUnset(const degas::Bitmap *a1)
{
  v36 = 0;
  v37 = 0;
  v35 = &v36;
  degas::Bitmap::begin(&v31, a1);
  while (1)
  {
    v2 = v32;
    v3 = v31 == a1 && v32 == -1;
    if (v3)
    {
      break;
    }

LABEL_9:
    v4 = v36;
    if (!v36)
    {
LABEL_15:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v5 = v4;
        v6 = v4[4];
        if (v2 >= v6)
        {
          break;
        }

        v4 = *v5;
        if (!*v5)
        {
          goto LABEL_15;
        }
      }

      if (v6 >= v2)
      {
        break;
      }

      v4 = v5[1];
      if (!v4)
      {
        goto LABEL_15;
      }
    }

    degas::Bitmap::iterator::operator++(&v31);
  }

  if (*(&v32 + 1) != *(a1 + 3))
  {
    v2 = -1;
    goto LABEL_9;
  }

  v7 = degas::Bitmap::count(a1);
  if (v7 != v37)
  {
    goto LABEL_67;
  }

  v31 = *a1;
  v32 = 0u;
  v33 = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v32 + 1, *(a1 + 2), *(a1 + 3), (*(a1 + 3) - *(a1 + 2)) >> 4);
  v34 = *(a1 + 40);
  degas::Bitmap::begin(&v28, a1);
  while (1)
  {
    v8 = v28 == a1 && v29 == -1;
    if (v8 && v30 == *(a1 + 3))
    {
      break;
    }

    if (1431655765 - 1431655765 * arc4random() <= 0x55555554)
    {
      degas::Bitmap::clearBit(&v31, v29);
      if (v36)
      {
        v10 = &v36;
        v11 = v36;
        do
        {
          v12 = v11;
          v13 = v10;
          v14 = v11[4];
          if (v14 >= v29)
          {
            v10 = v11;
          }

          v11 = v11[v14 < v29];
        }

        while (v11);
        if (v10 != &v36)
        {
          if (v14 < v29)
          {
            v12 = v13;
          }

          if (v29 >= v12[4])
          {
            v15 = v10[1];
            v16 = v10;
            if (v15)
            {
              do
              {
                v17 = v15;
                v15 = *v15;
              }

              while (v15);
            }

            else
            {
              do
              {
                v17 = v16[2];
                v3 = *v17 == v16;
                v16 = v17;
              }

              while (!v3);
            }

            if (v35 == v10)
            {
              v35 = v17;
            }

            --v37;
            std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v36, v10);
            operator delete(v10);
          }
        }
      }
    }

    degas::Bitmap::iterator::operator++(&v28);
  }

  v18 = v31;
  if (v31 == 0xFFFFFFFF)
  {
    v19 = *(&v32 + 1);
    v20 = v33;
    if (*(&v32 + 1) == v33)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0;
      do
      {
        v21 = *v19;
        v22 = *(*v19 + 4);
        if (v22 == -1)
        {
          v23 = 0;
          v24 = 0uLL;
          do
          {
            do
            {
              v24 = vpadalq_u16(v24, vpaddlq_u8(vcntq_s8(*(v21 + 16 + 4 * v23))));
              v23 += 4;
            }

            while (v23 != 32);
            v23 = 0;
            v22 = vaddvq_s32(v24);
            v24 = 0uLL;
          }

          while (v22 == -1);
          *(v21 + 4) = v22;
        }

        v18 += v22;
        v19 += 2;
      }

      while (v19 != v20);
    }

    v31 = v18;
  }

  if (v18 != v37)
  {
    goto LABEL_67;
  }

  v25 = v35;
  if (v35 != &v36)
  {
    while ((degas::Bitmap::isSet(&v31, v25[4]) & 1) != 0)
    {
      v26 = v25[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v25[2];
          v3 = *v27 == v25;
          v25 = v27;
        }

        while (!v3);
      }

      v25 = v27;
      if (v27 == &v36)
      {
        goto LABEL_66;
      }
    }

LABEL_67:
    abort();
  }

LABEL_66:
  v28 = &v32 + 1;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v28);
  std::__tree<unsigned long long>::destroy(v36);
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (v18 && (*(v18 + 24) & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (*(v23 + 24) & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  *(v7 + 8) = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = *(v7 + 16);
  *(v24 + 16) = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  *(v7 + 16) = v24;
  v23 = v7;
LABEL_68:
  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

void bitmapTestCombo(void)
{
  v0 = 100;
  do
  {
    testSet(v1);
    testEncodeDecodeBitmap(v1);
    testUnset(v1);
    v3 = &v2;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v3);
    --v0;
  }

  while (v0);
}

void sub_2558C8E44(_Unwind_Exception *a1)
{
  v3 = v1;
  *(v2 - 24) = v3;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t degas::getLogFile(degas *this)
{
  {
    operator new();
  }

  return degas::getLogFile(void)::sLogFile;
}

void sub_2558C98E8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x259C43EB0](v15, 0x1012C40849EBCB1, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t degas::NeighborQuery::NeighborQuery(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = a3;
  v5 = *a2 && ((*(**a2 + 48))(*a2) & 1) == 0;
  *(a1 + 16) = v5;
  return a1;
}

void sub_2558C9A88(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t degas::NeighborQuery::choosePlan(degas::NeighborQuery *this, unint64_t a2, unint64_t a3, int a4)
{
  v4 = a3 / a2;
  if (a2 >= 0x33 && v4 < 0xA || a3 <= 0xE && v4 < 3)
  {
    return 4;
  }

  if (a3 < 0x249F0)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  if (a3 < 0x15E)
  {
    v6 = 1;
  }

  if (v6)
  {
    return 7;
  }

  else
  {
    return 2;
  }
}

uint64_t degas::NeighborQuery::neighborsNodesFirst(uint64_t a1, uint64_t a2, void *a3, void *a4, Bitmap *a5, unsigned int a6, degas::Bitmap *a7)
{
  if (*a4)
  {
    if (a6 <= 1)
    {
      degas::LabelledEdgeCursor::LabelledEdgeCursor(v26);
      v31 = 0u;
      memset(v32, 0, 25);
      if (*a3 && (*(**a3 + 40))(*a3, &v31))
      {
        degas::LabelledEdgeCursor::setForEdgesFromLabelsSourceNodes(v26, a5, &v31, (*(a1 + 24) + 1144));
      }

      else
      {
        degas::LabelledEdgeCursor::setForEdgesFromSourceNodes(v26, a5, (*(a1 + 24) + 1144));
      }

      memset(&v30, 0, 41);
      while (1)
      {
        v14 = degas::Statement::next(v26[0]);
        v15 = v14;
        if (v14 != 1)
        {
          break;
        }

        degas::Statement::bitmapColumnValue(v26[0], 0, &v30);
      }

      v13 = v14;
      v16 = v14 & 0xFFFFFFFD;
      if ((v14 & 0xFFFFFFFD) == 0)
      {
        if (*a4)
        {
          (*(**a4 + 24))(*a4, &v30, &v30);
        }

        degas::LabelledEdgeCursor::LabelledEdgeCursor(v29);
        degas::LabelledEdgeCursor::setForTargetNodesFromEdges(v29, &v30, (*(a1 + 24) + 1144));
        while (1)
        {
          v17 = degas::Statement::next(v29[0]);
          if (v17 != 1)
          {
            break;
          }

          degas::Statement::bitmapColumnValue(v29[0], 0, a7);
        }

        if (v17 == 2)
        {
          v13 = 0;
        }

        else
        {
          v13 = v17;
        }

        degas::Cursor::~Cursor(v29);
      }

      v29[0] = &v30._bitSets;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v29);
      v30._bitCount = v32;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v30);
      degas::Cursor::~Cursor(v26);
      if (v16)
      {
        return v15;
      }
    }

    else
    {
      v13 = 0;
    }

    if ((a6 & 0xFFFFFFFD) == 0)
    {
      degas::LabelledEdgeCursor::LabelledEdgeCursor(v29);
      v31 = 0u;
      memset(v32, 0, 25);
      if (*a3 && (*(**a3 + 40))(*a3, &v31))
      {
        degas::LabelledEdgeCursor::setForEdgesFromLabelsTargetNodes(v29, a5, &v31, (*(a1 + 24) + 1144));
      }

      else
      {
        degas::LabelledEdgeCursor::setForEdgesFromTargetNodes(v29, a5, (*(a1 + 24) + 1144));
      }

      memset(&v30, 0, 41);
      while (1)
      {
        v20 = degas::Statement::next(v29[0]);
        v15 = v20;
        if (v20 != 1)
        {
          break;
        }

        degas::Statement::bitmapColumnValue(v29[0], 0, &v30);
      }

      if ((v20 & 0xFFFFFFFD) != 0)
      {
        v21 = 0;
        v13 = v20;
      }

      else
      {
        if (*a4)
        {
          (*(**a4 + 24))(*a4, &v30, &v30);
        }

        degas::LabelledEdgeCursor::LabelledEdgeCursor(v28);
        degas::LabelledEdgeCursor::setForSourceNodesFromEdges(v28, &v30, (*(a1 + 24) + 1144));
        *v26 = 0u;
        memset(v27, 0, 25);
        while (1)
        {
          v24 = degas::Statement::next(v28[0]);
          v15 = v24;
          if (v24 != 1)
          {
            break;
          }

          degas::Statement::bitmapColumnValue(v28[0], 0, v26);
        }

        if (v24 == 2)
        {
          v13 = 0;
        }

        else
        {
          v13 = v24;
        }

        v21 = v13 == 0;
        if (!v13)
        {
          if (a6 < 2)
          {
            degas::Bitmap::unionWith<degas::Bitmap>(a7, v26);
          }

          else
          {
            degas::Bitmap::operator=(a7, v26);
          }

          v15 = 0;
        }

        v33 = v27;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v33);
        degas::Cursor::~Cursor(v28);
      }

      v26[0] = &v30._bitSets;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v26);
      v30._bitCount = v32;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v30);
      degas::Cursor::~Cursor(v29);
      if (!v21)
      {
        return v15;
      }
    }
  }

  else
  {
    if (a6 > 1)
    {
      goto LABEL_75;
    }

    degas::LabelledEdgeCursor::LabelledEdgeCursor(&v30);
    v31 = 0u;
    memset(v32, 0, 25);
    if (*a3 && (*(**a3 + 40))(*a3, &v31))
    {
      degas::LabelledEdgeCursor::setForTargetNodesFromLabelsSourceNodes(&v30, a5, &v31, (*(a1 + 24) + 1144));
    }

    else
    {
      degas::LabelledEdgeCursor::setForTargetNodesFromSourceNodes(&v30, a5, (*(a1 + 24) + 1144));
    }

    while (1)
    {
      v18 = degas::Statement::next(v30._bitCount);
      v13 = v18;
      if (v18 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v30._bitCount, 0, a7);
    }

    v19 = v18 & 0xFFFFFFFD;
    v26[0] = v32;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v26);
    degas::Cursor::~Cursor(&v30);
    if (!v19)
    {
LABEL_75:
      if ((a6 & 0xFFFFFFFD) != 0)
      {
        return 0;
      }

      degas::LabelledEdgeCursor::LabelledEdgeCursor(v26);
      v31 = 0u;
      memset(v32, 0, 25);
      if (*a3 && (*(**a3 + 40))(*a3, &v31))
      {
        degas::LabelledEdgeCursor::setForSourceNodesFromLabelsTargetNodes(v26, a5, &v31, (*(a1 + 24) + 1144));
      }

      else
      {
        degas::LabelledEdgeCursor::setForSourceNodesFromTargetNodes(v26, a5, (*(a1 + 24) + 1144));
      }

      memset(&v30, 0, 41);
      while (1)
      {
        v22 = degas::Statement::next(v26[0]);
        v13 = v22;
        if (v22 != 1)
        {
          break;
        }

        degas::Statement::bitmapColumnValue(v26[0], 0, &v30);
      }

      v23 = v22 & 0xFFFFFFFD;
      if ((v22 & 0xFFFFFFFD) == 0)
      {
        if (a6 < 2)
        {
          degas::Bitmap::unionWith<degas::Bitmap>(a7, &v30);
        }

        else
        {
          degas::Bitmap::operator=(a7, &v30);
        }

        v13 = 0;
      }

      v29[0] = &v30._bitSets;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v29);
      v30._bitCount = v32;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v30);
      degas::Cursor::~Cursor(v26);
      if (!v23)
      {
        return 0;
      }
    }
  }

  return v13;
}

void sub_2558CA130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, degas::Statement *a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v27 - 104) = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v27 - 104));
  degas::Cursor::~Cursor(&a15);
  a9 = &a21;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  a19 = &a27;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a19);
  degas::Cursor::~Cursor(&a17);
  _Unwind_Resume(a1);
}

void degas::Bitmap::unionWith<degas::Bitmap>(degas::Bitmap *this, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  v2 = *(a2 + 24) - *(a2 + 16);
  v3 = (v2 >> 4);
  if ((v2 & 0xFFFFFFFF0) != 0 && v3 != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(this + 2);
      v9 = *(a2 + 16);
      if (v13 >= (*(this + 3) - v8) >> 4)
      {
        break;
      }

      degas::Bitmap::mergeBitset(this, &v13, *(v8 + 16 * v13), &v12, *(v9 + 16 * v7));
      v7 = v12;
      if (v12 >= v3)
      {
        v9 = *(a2 + 16);
        break;
      }
    }

    v10 = *(a2 + 24) - v9;
    if (v7 < (v10 >> 4))
    {
      v11 = (v10 >> 4);
      do
      {
        degas::Bitmap::appendBitset(this, *(*(a2 + 16) + 16 * v7++));
      }

      while (v11 != v7);
    }
  }
}

uint64_t degas::NeighborQuery::neighborsNodesEdgeFilter(uint64_t a1, degas::Bitmap *a2, uint64_t a3, void *a4, Bitmap *a5, unsigned int a6, degas::Bitmap *a7)
{
  if (*a4)
  {
    if (a6 <= 1)
    {
      degas::LabelledEdgeCursor::LabelledEdgeCursor(v34);
      v16 = degas::Bitmap::count(a2);
      v17 = *(a1 + 24);
      if (v16)
      {
        degas::LabelledEdgeCursor::setForEdgesFromSourceNodesEdgeFilter(v34, a5, a2, (v17 + 1144));
      }

      else
      {
        degas::LabelledEdgeCursor::setForEdgesFromSourceNodes(v34, a5, (v17 + 1144));
      }

      memset(&v38, 0, 41);
      while (1)
      {
        v18 = degas::Statement::next(v34[0]);
        v19 = v18;
        if (v18 != 1)
        {
          break;
        }

        degas::Statement::bitmapColumnValue(v34[0], 0, &v38);
      }

      v13 = v18;
      v20 = v18 & 0xFFFFFFFD;
      if ((v18 & 0xFFFFFFFD) == 0)
      {
        if (*a4)
        {
          (*(**a4 + 24))(*a4, &v38, &v38);
        }

        degas::LabelledEdgeCursor::LabelledEdgeCursor(v37);
        degas::LabelledEdgeCursor::setForTargetNodesFromEdges(v37, &v38, (*(a1 + 24) + 1144));
        while (1)
        {
          v21 = degas::Statement::next(v37[0]);
          if (v21 != 1)
          {
            break;
          }

          degas::Statement::bitmapColumnValue(v37[0], 0, a7);
        }

        if (v21 == 2)
        {
          v13 = 0;
        }

        else
        {
          v13 = v21;
        }

        degas::Cursor::~Cursor(v37);
      }

      v37[0] = &v38._bitSets;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v37);
      degas::Cursor::~Cursor(v34);
      if (v20)
      {
        return v19;
      }
    }

    else
    {
      v13 = 0;
    }

    if ((a6 & 0xFFFFFFFD) == 0)
    {
      degas::LabelledEdgeCursor::LabelledEdgeCursor(v37);
      v22 = degas::Bitmap::count(a2);
      v23 = *(a1 + 24);
      if (v22)
      {
        degas::LabelledEdgeCursor::setForEdgesFromTargetNodesEdgeFilter(v37, a5, a2, (v23 + 1144));
      }

      else
      {
        degas::LabelledEdgeCursor::setForEdgesFromTargetNodes(v37, a5, (v23 + 1144));
      }

      memset(&v38, 0, 41);
      while (1)
      {
        v28 = degas::Statement::next(v37[0]);
        v19 = v28;
        if (v28 != 1)
        {
          break;
        }

        degas::Statement::bitmapColumnValue(v37[0], 0, &v38);
      }

      if ((v28 & 0xFFFFFFFD) != 0)
      {
        v29 = 0;
        v13 = v28;
      }

      else
      {
        if (*a4)
        {
          (*(**a4 + 24))(*a4, &v38, &v38);
        }

        degas::LabelledEdgeCursor::LabelledEdgeCursor(v36);
        degas::LabelledEdgeCursor::setForSourceNodesFromEdges(v36, &v38, (*(a1 + 24) + 1144));
        *v34 = 0u;
        memset(v35, 0, 25);
        while (1)
        {
          v30 = degas::Statement::next(v36[0]);
          v19 = v30;
          if (v30 != 1)
          {
            break;
          }

          degas::Statement::bitmapColumnValue(v36[0], 0, v34);
        }

        if (v30 == 2)
        {
          v13 = 0;
        }

        else
        {
          v13 = v30;
        }

        v29 = v13 == 0;
        if (!v13)
        {
          if (a6 < 2)
          {
            degas::Bitmap::unionWith<degas::Bitmap>(a7, v34);
          }

          else
          {
            degas::Bitmap::operator=(a7, v34);
          }

          v19 = 0;
        }

        v39 = v35;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v39);
        degas::Cursor::~Cursor(v36);
      }

      v34[0] = &v38._bitSets;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v34);
      degas::Cursor::~Cursor(v37);
      if (!v29)
      {
        return v19;
      }
    }
  }

  else
  {
    if (a6 > 1)
    {
      goto LABEL_71;
    }

    degas::LabelledEdgeCursor::LabelledEdgeCursor(&v38);
    v14 = degas::Bitmap::count(a2);
    v15 = *(a1 + 24);
    if (v14)
    {
      degas::LabelledEdgeCursor::setForTargetNodesFromEdgesSourceNodesFilterEdge(&v38, a5, a2, (v15 + 1144));
    }

    else
    {
      degas::LabelledEdgeCursor::setForTargetNodesFromSourceNodes(&v38, a5, (v15 + 1144));
    }

    while (1)
    {
      v24 = degas::Statement::next(v38._bitCount);
      v13 = v24;
      if (v24 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v38._bitCount, 0, a7);
    }

    v25 = v24 & 0xFFFFFFFD;
    degas::Cursor::~Cursor(&v38);
    if (!v25)
    {
LABEL_71:
      if ((a6 & 0xFFFFFFFD) != 0)
      {
        return 0;
      }

      degas::LabelledEdgeCursor::LabelledEdgeCursor(v34);
      v26 = degas::Bitmap::count(a2);
      v27 = *(a1 + 24);
      if (v26)
      {
        degas::LabelledEdgeCursor::setForSourceNodesFromEdgesTargetNodesFilterEdge(v34, a5, a2, (v27 + 1144));
      }

      else
      {
        degas::LabelledEdgeCursor::setForSourceNodesFromTargetNodes(v34, a5, (v27 + 1144));
      }

      memset(&v38, 0, 41);
      while (1)
      {
        v31 = degas::Statement::next(v34[0]);
        v13 = v31;
        if (v31 != 1)
        {
          break;
        }

        degas::Statement::bitmapColumnValue(v34[0], 0, &v38);
      }

      v32 = v31 & 0xFFFFFFFD;
      if ((v31 & 0xFFFFFFFD) == 0)
      {
        if (a6 < 2)
        {
          degas::Bitmap::unionWith<degas::Bitmap>(a7, &v38);
        }

        else
        {
          degas::Bitmap::operator=(a7, &v38);
        }

        v13 = 0;
      }

      v37[0] = &v38._bitSets;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v37);
      degas::Cursor::~Cursor(v34);
      if (!v32)
      {
        return 0;
      }
    }
  }

  return v13;
}

void sub_2558CA790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, degas::Statement *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v21 - 88) = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v21 - 88));
  degas::Cursor::~Cursor(&a15);
  a9 = &a21;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  degas::Cursor::~Cursor(&a17);
  _Unwind_Resume(a1);
}

uint64_t degas::NeighborQuery::neighborsEdgesFirstJoinBoth(uint64_t a1, degas::Bitmap *this, uint64_t **a3, Bitmap *a4, unsigned int a5, degas::Bitmap *a6)
{
  memset(&v20, 0, 41);
  if (*a3)
  {
    v11 = degas::Bitmap::count(this);
    v12 = **a3;
    if (v11)
    {
      (*(v12 + 24))();
    }

    else
    {
      (*(v12 + 16))();
    }
  }

  else
  {
    degas::Bitmap::operator=(&v20, this);
  }

  if (a5 > 1)
  {
    v14 = 0;
  }

  else
  {
    v18 = 0u;
    memset(v19, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v17);
    degas::LabelledEdgeCursor::setForTargetNodesFromEdgesSourceNodesJoinBoth(v17, a4, &v20, (*(a1 + 24) + 1144));
    while (1)
    {
      v13 = degas::Statement::next(v17[0]);
      v14 = v13;
      if (v13 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v17[0], 0, &v18);
    }

    if (v13 == 2)
    {
      degas::Bitmap::operator=(a6, &v18);
      v14 = 0;
    }

    degas::Cursor::~Cursor(v17);
    v17[0] = v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  if ((a5 & 0xFFFFFFFD) == 0)
  {
    v18 = 0u;
    memset(v19, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v17);
    degas::LabelledEdgeCursor::setForSourceNodesFromEdgesTargetNodesJoinEdge(v17, a4, &v20, (*(a1 + 24) + 1144));
    while (1)
    {
      v15 = degas::Statement::next(v17[0]);
      v14 = v15;
      if (v15 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v17[0], 0, &v18);
    }

    if (v15 == 2)
    {
      degas::Bitmap::unionWith<degas::Bitmap>(a6, &v18);
      v14 = 0;
    }

    degas::Cursor::~Cursor(v17);
    v17[0] = v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  *&v18 = &v20._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v18);
  return v14;
}

void sub_2558CAA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19)
{
  degas::Cursor::~Cursor(&a9);
  a9 = &a13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  a11 = &a19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t degas::NeighborQuery::neighborsEdgesFirstJoinEdge(uint64_t a1, degas::Bitmap *this, uint64_t **a3, Bitmap *a4, unsigned int a5, degas::Bitmap *a6)
{
  memset(&v20, 0, 41);
  if (*a3)
  {
    v11 = degas::Bitmap::count(this);
    v12 = **a3;
    if (v11)
    {
      (*(v12 + 24))();
    }

    else
    {
      (*(v12 + 16))();
    }
  }

  else
  {
    degas::Bitmap::operator=(&v20, this);
  }

  if (a5 > 1)
  {
    v14 = 0;
  }

  else
  {
    v18 = 0u;
    memset(v19, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v17);
    degas::LabelledEdgeCursor::setForTargetNodesFromEdgesSourceNodesJoinEdge(v17, a4, &v20, (*(a1 + 24) + 1144));
    while (1)
    {
      v13 = degas::Statement::next(v17[0]);
      v14 = v13;
      if (v13 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v17[0], 0, &v18);
    }

    if (v13 == 2)
    {
      degas::Bitmap::operator=(a6, &v18);
      v14 = 0;
    }

    degas::Cursor::~Cursor(v17);
    v17[0] = v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  if ((a5 & 0xFFFFFFFD) == 0)
  {
    v18 = 0u;
    memset(v19, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v17);
    degas::LabelledEdgeCursor::setForSourceNodesFromEdgesTargetNodesJoinEdge(v17, a4, &v20, (*(a1 + 24) + 1144));
    while (1)
    {
      v15 = degas::Statement::next(v17[0]);
      v14 = v15;
      if (v15 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v17[0], 0, &v18);
    }

    if (v15 == 2)
    {
      degas::Bitmap::unionWith<degas::Bitmap>(a6, &v18);
      v14 = 0;
    }

    degas::Cursor::~Cursor(v17);
    v17[0] = v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  *&v18 = &v20._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v18);
  return v14;
}

void sub_2558CACD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19)
{
  degas::Cursor::~Cursor(&a9);
  a9 = &a13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  a11 = &a19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t degas::NeighborQuery::neighborsEdgesFirstFilterEdge(uint64_t a1, degas::Bitmap *this, uint64_t **a3, Bitmap *a4, unsigned int a5, degas::Bitmap *a6)
{
  v20 = 0u;
  memset(v21, 0, 25);
  if (*a3)
  {
    v11 = degas::Bitmap::count(this);
    v12 = **a3;
    if (v11)
    {
      (*(v12 + 24))();
    }

    else
    {
      (*(v12 + 16))();
    }
  }

  else
  {
    degas::Bitmap::operator=(&v20, this);
  }

  if (a5 > 1)
  {
    v14 = 0;
  }

  else
  {
    v18 = 0u;
    memset(v19, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v17);
    degas::LabelledEdgeCursor::setForTargetNodesFromEdgesSourceNodesFilterEdge(v17, a4, &v20, (*(a1 + 24) + 1144));
    while (1)
    {
      v13 = degas::Statement::next(v17[0]);
      v14 = v13;
      if (v13 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v17[0], 0, &v18);
    }

    if (v13 == 2)
    {
      degas::Bitmap::operator=(a6, &v18);
      v14 = 0;
    }

    degas::Cursor::~Cursor(v17);
    v17[0] = v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  if ((a5 & 0xFFFFFFFD) == 0)
  {
    v18 = 0u;
    memset(v19, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v17);
    degas::LabelledEdgeCursor::setForSourceNodesFromEdgesTargetNodesFilterEdge(v17, a4, &v20, (*(a1 + 24) + 1144));
    while (1)
    {
      v15 = degas::Statement::next(v17[0]);
      v14 = v15;
      if (v15 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v17[0], 0, &v18);
    }

    if (v15 == 2)
    {
      degas::Bitmap::unionWith<degas::Bitmap>(a6, &v18);
      v14 = 0;
    }

    degas::Cursor::~Cursor(v17);
    v17[0] = v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  *&v18 = v21;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v18);
  return v14;
}

void sub_2558CAF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19)
{
  degas::Cursor::~Cursor(&a9);
  a9 = &a13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  a11 = &a19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t degas::NeighborQuery::neighborsEdgesFirstFilterNode(uint64_t a1, degas::Bitmap *this, uint64_t **a3, const degas::Bitmap *a4, unsigned int a5, degas::Bitmap *a6)
{
  memset(&v20, 0, 41);
  if (*a3)
  {
    v11 = degas::Bitmap::count(this);
    v12 = **a3;
    if (v11)
    {
      (*(v12 + 24))();
    }

    else
    {
      (*(v12 + 16))();
    }
  }

  else
  {
    degas::Bitmap::operator=(&v20, this);
  }

  if (a5 > 1)
  {
    v14 = 0;
  }

  else
  {
    v18 = 0u;
    memset(v19, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v17);
    degas::LabelledEdgeCursor::setForTargetNodesFromEdgesSourceNodesFilterNode(v17, a4, &v20, (*(a1 + 24) + 1144));
    while (1)
    {
      v13 = degas::Statement::next(v17[0]);
      v14 = v13;
      if (v13 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v17[0], 0, &v18);
    }

    if (v13 == 2)
    {
      degas::Bitmap::operator=(a6, &v18);
      v14 = 0;
    }

    degas::Cursor::~Cursor(v17);
    v17[0] = v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  if ((a5 & 0xFFFFFFFD) == 0)
  {
    v18 = 0u;
    memset(v19, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v17);
    degas::LabelledEdgeCursor::setForSourceNodesFromEdgesTargetNodesFilterNode(v17, a4, &v20, (*(a1 + 24) + 1144));
    while (1)
    {
      v15 = degas::Statement::next(v17[0]);
      v14 = v15;
      if (v15 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v17[0], 0, &v18);
    }

    if (v15 == 2)
    {
      degas::Bitmap::unionWith<degas::Bitmap>(a6, &v18);
      v14 = 0;
    }

    degas::Cursor::~Cursor(v17);
    v17[0] = v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  *&v18 = &v20._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v18);
  return v14;
}

void sub_2558CB1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19)
{
  degas::Cursor::~Cursor(&a9);
  a9 = &a13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  a11 = &a19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t degas::NeighborQuery::appendSourceNodesForEdges(degas::NeighborQuery *this, Bitmap *a2, degas::Bitmap *a3)
{
  degas::LabelledEdgeCursor::LabelledEdgeCursor(v11);
  degas::LabelledEdgeCursor::setForSourceNodesFromEdges(v11, a2, (*(this + 3) + 1144));
  v9 = 0u;
  memset(v10, 0, 25);
  while (1)
  {
    v6 = degas::Statement::next(v11[0]);
    v7 = v6;
    if (v6 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v11[0], 0, &v9);
  }

  if (v6 == 2)
  {
    degas::Bitmap::unionWith<degas::Bitmap>(a3, &v9);
    v7 = 0;
  }

  v12 = v10;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v12);
  degas::Cursor::~Cursor(v11);
  return v7;
}

void sub_2558CB2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  *(v5 - 40) = va;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v5 - 40));
  degas::Cursor::~Cursor(va1);
  _Unwind_Resume(a1);
}

uint64_t degas::NeighborQuery::appendTargetNodesForEdges(degas::NeighborQuery *this, Bitmap *a2, degas::Bitmap *a3)
{
  degas::LabelledEdgeCursor::LabelledEdgeCursor(v11);
  degas::LabelledEdgeCursor::setForTargetNodesFromEdges(v11, a2, (*(this + 3) + 1144));
  v9 = 0u;
  memset(v10, 0, 25);
  while (1)
  {
    v6 = degas::Statement::next(v11[0]);
    v7 = v6;
    if (v6 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v11[0], 0, &v9);
  }

  if (v6 == 2)
  {
    degas::Bitmap::unionWith<degas::Bitmap>(a3, &v9);
    v7 = 0;
  }

  v12 = v10;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v12);
  degas::Cursor::~Cursor(v11);
  return v7;
}

void sub_2558CB3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  *(v5 - 40) = va;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v5 - 40));
  degas::Cursor::~Cursor(va1);
  _Unwind_Resume(a1);
}