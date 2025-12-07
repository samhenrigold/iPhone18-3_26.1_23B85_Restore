uint64_t sub_1DF5F7F00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12[3] = MEMORY[0x1E69E6158];
  v12[0] = a4;
  v12[1] = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_1DF5A27C4(v12, a6[7] + 32 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_1DF5F7F84(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  *v11 = a5;
  v11[3] = MEMORY[0x1E69E63B0];
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DF5A27C4(v11, a4[7] + 32 * a1);
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

uint64_t sub_1DF5F8008(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for CFString(0);
  v16[3] = v10;
  v16[0] = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  result = sub_1DF5A27C4(v16, a5[7] + 32 * a1);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_1DF5F80AC(uint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_1DF63295C();
  type metadata accessor for CFString(0);
  v6 = v5;
  v41 = v5;
  v40[0] = v4;
  sub_1DF5A27C4(v40, v38);
  v7 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v7;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  sub_1DF5F7804(*v12, 0x7954747265737341, 0xEA00000000006570, isUniquelyReferenced_nonNull_native, &v37);
  __swift_destroy_boxed_opaque_existential_1(v38);
  v14 = v37;
  v15 = sub_1DF63295C();
  v41 = v6;
  v40[0] = v15;
  sub_1DF5A27C4(v40, v38);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = v14;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  sub_1DF5F7804(*v20, 0x614E747265737341, 0xEA0000000000656DLL, v16, &v37);
  __swift_destroy_boxed_opaque_existential_1(v38);
  v22 = v37;
  v41 = MEMORY[0x1E69E63B0];
  *v40 = a3;
  sub_1DF5A27C4(v40, v38);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v37 = v22;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  sub_1DF5F79F0(0x5374756F656D6954, 0xEE0073646E6F6365, v23, &v37, *v24);
  __swift_destroy_boxed_opaque_existential_1(v38);
  v25 = v37;
  v41 = MEMORY[0x1E69E6158];
  v40[0] = 0xD000000000000014;
  v40[1] = 0x80000001DF635270;
  sub_1DF5A27C4(v40, v38);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v37 = v25;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = (&v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30, v28);
  sub_1DF5F7B40(*v30, v30[1], 0x4174756F656D6954, 0xED00006E6F697463, v26, &v37);
  __swift_destroy_boxed_opaque_existential_1(v38);
  v32 = v37;
  v41 = MEMORY[0x1E69E6530];
  v40[0] = 255;
  sub_1DF5A27C4(v40, v38);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v37 = v32;
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  sub_1DF5F7D24(*v34, 0x654C747265737341, 0xEB000000006C6576, v33, &v37);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v37;
}

uint64_t sub_1DF5F8570@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v3, AssociatedTypeWitness);
}

uint64_t sub_1DF5F8640(uint64_t a1)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(v1 + v3, a1, AssociatedTypeWitness);
  return swift_endAccess();
}

uint64_t sub_1DF5F8720(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *(*v1 + 88);
  v2[5] = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[6] = AssociatedTypeWitness;
  v2[7] = *(AssociatedTypeWitness - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5F8824, v1, 0);
}

uint64_t sub_1DF5F8824()
{
  sub_1DF5F8570(v0[8]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1DF5F8904;
  v3 = v0[6];
  v4 = v0[2];

  return MEMORY[0x1EEE6D8C8](v4, v3, AssociatedConformanceWitness);
}

uint64_t sub_1DF5F8904()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1DF5F8AC8;
  }

  else
  {
    v4 = sub_1DF5F8A30;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF5F8A30()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1DF5F8B60(v0[3], v1);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DF5F8AC8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1DF5F8B60(v0[3], v1);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DF5F8B60(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a2, v4);
  return sub_1DF5F8640(v6);
}

uint64_t AsyncShareSequence.deinit()
{
  v1 = *(*v0 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncShareSequence.__deallocating_deinit()
{
  AsyncShareSequence.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF5F8D64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DF59D2C8;

  return sub_1DF5F8720(a1);
}

uint64_t sub_1DF5F8E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  v10[2] = a4;
  v13 = *(a5 + 80);
  v12 = *(a5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  v10[4] = *(AssociatedTypeWitness - 8);
  v15 = swift_task_alloc();
  v10[5] = v15;
  v16 = swift_task_alloc();
  v10[6] = v16;
  v18 = type metadata accessor for AsyncShareSequence(0, v13, v12, v17);
  *v16 = v10;
  v16[1] = sub_1DF5F8F70;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, v18, a6, v15);
}

uint64_t sub_1DF5F8F70()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  v4 = v3[1];

  return v4();
}

uint64_t sub_1DF5F90A4(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v13 - v10;
  swift_defaultActor_initialize();
  (*(v5 + 16))(v7, a1, v4);
  sub_1DF632FCC();
  (*(v9 + 32))(v2 + *(*v2 + 104), v11, AssociatedTypeWitness);
  return v2;
}

uint64_t sub_1DF5F9278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AsyncShareSequence(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_1DF5F90A4(a1);
}

uint64_t sub_1DF5F92D8(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1DF5F9378(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
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

uint64_t dispatch thunk of AsyncShareSequence.next()(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DF59D2C8;

  return v6(a1);
}

uint64_t DirectorySequence.init(at:includingPropertiesForKeys:options:)@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v6 = MEMORY[0x1E12D9570]();
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_1DF63313C();

  objc_autoreleasePoolPop(v6);
  *a4 = v8;
  v9 = sub_1DF6322FC();
  v10 = *(*(v9 - 8) + 8);

  return v10(a1, v9);
}

unint64_t sub_1DF5F9680()
{
  result = qword_1ECE43030;
  if (!qword_1ECE43030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43030);
  }

  return result;
}

void *sub_1DF5F96E4()
{
  v1 = *v0;
  v2 = sub_1DF5F991C(*v0);

  return v2;
}

uint64_t sub_1DF5F9744@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D50, &qword_1DF63AAE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  if (*v1)
  {
    v6 = *v1;
    v7 = MEMORY[0x1E12D9570]();
    sub_1DF59BE48(v6, v1, v5);
    objc_autoreleasePoolPop(v7);

    return sub_1DF5A3C48(v5, a1);
  }

  else
  {
    v9 = sub_1DF6322FC();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

uint64_t sub_1DF5F9870(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DF5F98CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1DF5F991C(id a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D50, &qword_1DF63AAE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v45 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v50 = v45 - v9;
  v10 = sub_1DF6322FC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v51 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v11 + 80);
  v14 = a1;
  v15 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v16 = 0;
    v45[0] = (v13 + 32) & ~v13;
    v45[1] = v13;
    v17 = (MEMORY[0x1E69E7CC0] + v45[0]);
    v49 = (v11 + 56);
    v52 = (v11 + 32);
    v47 = v4;
    v48 = (v11 + 48);
    v18 = MEMORY[0x1E69E7CC0];
    v46 = v11;
    while (1)
    {
      v19 = a1;
      v20 = MEMORY[0x1E12D9570]();
      if ([v19 nextObject])
      {
        v53 = a1;
        v21 = v7;
        sub_1DF63339C();
        swift_unknownObjectRelease();
        sub_1DF5A27C4(v54, v55);
        sub_1DF5A27C4(v55, v54);
        v22 = v47;
        if (swift_dynamicCast())
        {
          v23 = *v49;
          (*v49)(v22, 0, 1, v10);
          v24 = v22;
          v7 = v21;
          (*v52)(v21, v24, v10);
          v23(v21, 0, 1, v10);
          v11 = v46;
          goto LABEL_9;
        }

        v25 = *v49;
        (*v49)(v22, 1, 1, v10);
        sub_1DF59CB50(v22, &qword_1ECE42D50, &qword_1DF63AAE0);
        v7 = v21;
        v11 = v46;
        v25(v7, 1, 1, v10);
      }

      else
      {

        (*v49)(v7, 1, 1, v10);
      }

      v53 = 0;
LABEL_9:
      objc_autoreleasePoolPop(v20);

      v26 = v50;
      sub_1DF5A3C48(v7, v50);
      if ((*v48)(v26, 1, v10) == 1)
      {

        goto LABEL_35;
      }

      v27 = *v52;
      result = (*v52)(v51, v26, v10);
      if (v16)
      {
        v15 = v18;
      }

      else
      {
        v29 = v18[3];
        if (((v29 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_40;
        }

        v30 = v29 & 0xFFFFFFFFFFFFFFFELL;
        if (v30 <= 1)
        {
          v31 = 1;
        }

        else
        {
          v31 = v30;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43038, &qword_1DF63ABB8);
        v32 = *(v11 + 72);
        v33 = v45[0];
        v15 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v15);
        if (!v32)
        {
          goto LABEL_41;
        }

        v34 = result - v33;
        if ((result - v33) == 0x8000000000000000 && v32 == -1)
        {
          goto LABEL_42;
        }

        v36 = v33;
        v37 = v34 / v32;
        v15[2] = v31;
        v15[3] = 2 * (v34 / v32);
        v38 = v15 + v36;
        v39 = v18[3] >> 1;
        v40 = v39 * v32;
        if (v18[2])
        {
          if (v15 < v18 || v38 >= v18 + v36 + v40)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v15 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18[2] = 0;
        }

        v17 = &v38[v40];
        v16 = (v37 & 0x7FFFFFFFFFFFFFFFLL) - v39;
      }

      a1 = v53;
      v41 = __OFSUB__(v16--, 1);
      if (v41)
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        return result;
      }

      v27(v17, v51, v10);
      v17 += *(v11 + 72);
      v18 = v15;
      if (!a1)
      {
        goto LABEL_33;
      }
    }
  }

  v16 = 0;
LABEL_33:
  v26 = v50;
  (*(v11 + 56))(v50, 1, 1, v10);
  v18 = v15;
LABEL_35:
  result = sub_1DF59CB50(v26, &qword_1ECE42D50, &qword_1DF63AAE0);
  v42 = v18[3];
  if (v42 >= 2)
  {
    v43 = v42 >> 1;
    v41 = __OFSUB__(v43, v16);
    v44 = v43 - v16;
    if (v41)
    {
      goto LABEL_43;
    }

    v18[2] = v44;
  }

  return v18;
}

unint64_t sub_1DF5F9E38()
{
  result = qword_1ECE43040;
  if (!qword_1ECE43040)
  {
    sub_1DF6322FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43040);
  }

  return result;
}

uint64_t GenericError.description.getter()
{
  if (!v0[1])
  {
    return 0x6C706D49746F6E2ELL;
  }

  MEMORY[0x1E12D82E0](*v0);
  MEMORY[0x1E12D82E0](41, 0xE100000000000000);
  return 0x28726F7272652ELL;
}

uint64_t sub_1DF5F9F18()
{
  if (!v0[1])
  {
    return 0x6C706D49746F6E2ELL;
  }

  MEMORY[0x1E12D82E0](*v0);
  MEMORY[0x1E12D82E0](41, 0xE100000000000000);
  return 0x28726F7272652ELL;
}

uint64_t sub_1DF5F9FA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF5F9FF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DF5FA044(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DF5FA05C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void *BufferedData.__allocating_init(data:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[3] = a2;
  result[4] = 0;
  result[2] = a1;
  return result;
}

BOOL BufferedData.isAtEnd.getter()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v3 = 0;
      return v1 == v3;
    }

    v7 = v3 + 16;
    v5 = *(v3 + 16);
    v6 = *(v7 + 8);
    v8 = __OFSUB__(v6, v5);
    v3 = v6 - v5;
    if (!v8)
    {
      return v1 == v3;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v3 = BYTE6(v2);
    return v1 == v3;
  }

  v8 = __OFSUB__(HIDWORD(v3), v3);
  LODWORD(v3) = HIDWORD(v3) - v3;
  if (!v8)
  {
    v3 = v3;
    return v1 == v3;
  }

  __break(1u);
  return result;
}

uint64_t BufferedData.read(maxBytes:)(uint64_t a1)
{
  result = sub_1DF5FA238(a1, *(v1 + 32));
  if (!v2)
  {
    v5 = *(v1 + 32);
    v6 = __OFADD__(v5, a1);
    v7 = v5 + a1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 32) = v7;
    }
  }

  return result;
}

void BufferedData.read()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    v5 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(v2);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(v1), v1))
  {
    goto LABEL_14;
  }

  v5 = HIDWORD(v1) - v1;
LABEL_11:
  if (v5 >= v3)
  {
    sub_1DF5A3A94(v1, v2);
    sub_1DF63241C();
    sub_1DF5B33C0(v1, v2);
    return;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void *BufferedData.init(data:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[4] = 0;
  v2[2] = a1;
  return v2;
}

uint64_t sub_1DF5FA238(uint64_t result, uint64_t a2)
{
  v3 = a2 + result;
  if (__OFADD__(a2, result))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      v9 = __OFSUB__(v7, v8);
      v10 = v7 - v8;
      if (v9)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (v10 >= v3)
      {
        goto LABEL_9;
      }
    }

    else if (v3 <= 0)
    {
LABEL_9:
      if (v3 >= a2)
      {
        sub_1DF5A3A94(v4, v5);
        v11 = sub_1DF63241C();
        sub_1DF5B33C0(v4, v5);
        return v11;
      }

      goto LABEL_17;
    }

LABEL_15:
    sub_1DF5E3264();
    swift_allocError();
    *v12 = 1;
    return swift_willThrow();
  }

  if (!v6)
  {
    if (BYTE6(v5) < v3)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v4), v4))
  {
    if (HIDWORD(v4) - v4 < v3)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t BufferedData.__deallocating_deinit()
{
  sub_1DF5B33C0(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DF5FA410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DF633A6C();
  sub_1DF632ACC();
  v6 = sub_1DF633AAC();
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
    if (v11 || (sub_1DF63394C() & 1) != 0)
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

uint64_t sub_1DF5FA508()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ECE43048);
  v1 = __swift_project_value_buffer(v0, qword_1ECE43048);
  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8E69A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static SystemInfo.architecture.getter()
{
  v0 = MEMORY[0x1E12D9570]();
  sub_1DF5B46C8(v3);
  objc_autoreleasePoolPop(v0);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1DF59CB50(v3, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  return 0;
}

uint64_t static SystemInfo.auditUserIdentifier.getter()
{
  v2 = *MEMORY[0x1E69E9840];
  memset(&v1, 0, sizeof(v1));
  getaudit_addr(&v1, 48);
  return v1.ai_auid;
}

uint64_t static SystemInfo.auditSessionIdentifier.getter()
{
  v2 = *MEMORY[0x1E69E9840];
  memset(&v1, 0, sizeof(v1));
  getaudit_addr(&v1, 48);
  return v1.ai_asid;
}

BOOL static SystemInfo.isSystemSession.getter()
{
  v2 = *MEMORY[0x1E69E9840];
  memset(&v1, 0, sizeof(v1));
  getaudit_addr(&v1, 48);
  return v1.ai_auid == -1;
}

uint64_t static SystemInfo.bootTime.getter()
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v5 = 16;
  v6 = 0;
  if (!sysctlbyname("kern.boottime", &v6, &v5, 0, 0))
  {
    if (v6 < 0)
    {
      __break(1u);
    }

    else if ((v7 & 0x80000000) == 0)
    {
      return sub_1DF6324CC();
    }

    __break(1u);
  }

  if (qword_1ECE42558 != -1)
  {
    swift_once();
  }

  v0 = sub_1DF6326AC();
  __swift_project_value_buffer(v0, qword_1ECE43048);
  v1 = sub_1DF63268C();
  v2 = sub_1DF63316C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 67109120;
    *(v3 + 4) = MEMORY[0x1E12D7E80]();
    _os_log_impl(&dword_1DF59A000, v1, v2, "sysctlbyname() for kern.boottime failed: %d", v3, 8u);
    MEMORY[0x1E12D9D80](v3, -1, -1);
  }

  return sub_1DF63245C();
}

uint64_t static SystemInfo.bootSessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_1DF632A1C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 37;
  v8 = sub_1DF632D7C();
  *(v8 + 16) = 37;
  *(v8 + 48) = 0u;
  *(v8 + 61) = 0;
  *(v8 + 32) = 0u;
  if (sysctlbyname("kern.bootsessionuuid", (v8 + 32), &v26, 0, 0))
  {
    v13 = MEMORY[0x1E12D7E80]();
    if (!strerror(v13))
    {
      __break(1u);
    }

    goto LABEL_10;
  }

  sub_1DF6329FC();
  sub_1DF5FAD48(v8, v7);
  if (!v9)
  {
    while (1)
    {
LABEL_9:
      sub_1DF6336EC();
      __break(1u);
LABEL_10:
      v14 = sub_1DF63293C();
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0x6E776F6E6B6E55;
      }

      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0xE700000000000000;
      }

      if (qword_1ECE42558 != -1)
      {
        swift_once();
      }

      v18 = sub_1DF6326AC();
      __swift_project_value_buffer(v18, qword_1ECE43048);

      v19 = sub_1DF63268C();
      v20 = sub_1DF63316C();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v27[0] = v22;
        *v21 = 136446466;
        v23 = sub_1DF59EEC8(v16, v17, v27);

        *(v21 + 4) = v23;
        *(v21 + 12) = 1024;
        *(v21 + 14) = MEMORY[0x1E12D7E80](v24);
        _os_log_impl(&dword_1DF59A000, v19, v20, "Error from sysctlbyname: %{public}s (%d)", v21, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x1E12D9D80](v22, -1, -1);
        MEMORY[0x1E12D9D80](v21, -1, -1);
      }

      else
      {
      }
    }
  }

  sub_1DF63254C();
  v10 = sub_1DF6325AC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    sub_1DF59CB50(v4, &qword_1ECE42AA8, &qword_1DF638F18);
    goto LABEL_9;
  }

  return (*(v11 + 32))(a1, v4, v10);
}

uint64_t sub_1DF5FAD48(uint64_t a1, char *a2)
{
  v4 = sub_1DF632A1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6329EC();
  v8 = sub_1DF6329DC();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if ((v8 & 1) == 0)
  {
    sub_1DF6329FC();
    v10 = sub_1DF6329DC();
    v9(v7, v4);
    if ((v10 & 1) == 0)
    {
      sub_1DF6329CC();
      v11 = sub_1DF6329DC();
      v9(v7, v4);
      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  v13 = sub_1DF5FBD3C(v12);
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v13;
  sub_1DF6329EC();
  v16 = sub_1DF6329DC();
  v9(v7, v4);
  if (v16)
  {

LABEL_17:
    v9(a2, v4);
    return v15;
  }

  if ((sub_1DF63345C() & 1) == 0)
  {

LABEL_10:
    v17 = *(a1 + 16);
    if (v17)
    {
      v7 = 0;
      while (v7[a1 + 32])
      {
        if (v17 == ++v7)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      sub_1DF6336EC();
      __break(1u);
    }

    v18 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithBytes:a1 + 32 length:v7 encoding:sub_1DF632A0C()];

    if (!v18)
    {
      v9(a2, v4);
      return 0;
    }

    v15 = sub_1DF63298C();

    goto LABEL_17;
  }

  v9(a2, v4);

  return v15;
}

uint64_t static SystemInfo.arrowChipID.getter()
{
  v0 = MEMORY[0x1E12D9570]();
  sub_1DF5B46C8(v7);
  objc_autoreleasePoolPop(v0);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_1DF59CB50(v7, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF6326AC();
  __swift_project_value_buffer(v2, qword_1ED8E69A0);
  v3 = sub_1DF63268C();
  v4 = sub_1DF63316C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DF59A000, v3, v4, "Could not get arrow chip id", v5, 2u);
    MEMORY[0x1E12D9D80](v5, -1, -1);
  }

  return 0;
}

uint64_t sub_1DF5FB214(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = MEMORY[0x1E12D9570]();
  sub_1DF5B46C8(v11);
  objc_autoreleasePoolPop(v4);
  if (v12)
  {
    if (swift_dynamicCast())
    {
      return v10;
    }
  }

  else
  {
    sub_1DF59CB50(v11, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF6326AC();
  __swift_project_value_buffer(v6, qword_1ED8E69A0);
  v7 = sub_1DF63268C();
  v8 = sub_1DF63316C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DF59A000, v7, v8, a3, v9, 2u);
    MEMORY[0x1E12D9D80](v9, -1, -1);
  }

  return 0;
}

uint64_t static SystemInfo.hostUUID.getter()
{
  v3 = *MEMORY[0x1E69E9840];
  memset(v2, 0, sizeof(v2));
  v1 = xmmword_1DF63ACB0;
  gethostuuid(v2, &v1);
  return sub_1DF63257C();
}

uint64_t static SystemInfo.productType.getter()
{
  v0 = MEMORY[0x1E12D9570]();
  sub_1DF5B46C8(v3);
  objc_autoreleasePoolPop(v0);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1DF59CB50(v3, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  return 0;
}

uint64_t static SystemInfo.osVersion.getter()
{
  v0 = MEMORY[0x1E12D9570]();
  sub_1DF5B46C8(v7);
  objc_autoreleasePoolPop(v0);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_1DF59CB50(v7, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF6326AC();
  __swift_project_value_buffer(v2, qword_1ED8E69A0);
  v3 = sub_1DF63268C();
  v4 = sub_1DF63316C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DF59A000, v3, v4, "Could not get OS version", v5, 2u);
    MEMORY[0x1E12D9D80](v5, -1, -1);
  }

  return 0;
}

uint64_t static SystemInfo.deviceSKU.getter()
{
  v0 = MEMORY[0x1E12D9570]();
  sub_1DF5B46C8(v3);
  objc_autoreleasePoolPop(v0);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1DF59CB50(v3, &qword_1ECE436C0, &qword_1DF6393D0);
    return 0;
  }
}

uint64_t static SystemInfo.lowPowerExpressModesSupported.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E12D9570]();
  sub_1DF5B46C8(v11);
  objc_autoreleasePoolPop(v2);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
    if (swift_dynamicCast())
    {
      v3 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DF59CB50(v11, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v4 = sub_1DF5FCC04(v3);

  v5 = sub_1DF5FA410(0x616873696C61, 0xE600000000000000, v4);
  v6 = v5 & 1;
  if (sub_1DF5FA410(0x796D2D646E6966, 0xE700000000000000, v4))
  {
    v6 = v5 & 1 | 2;
  }

  v7 = sub_1DF5FA410(0x727078652D63666ELL, 0xEB00000000737365, v4);

  v9 = v6 | 4;
  if ((v7 & 1) == 0)
  {
    v9 = v6;
  }

  *a1 = v9;
  return result;
}

uint64_t sub_1DF5FB8A4()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v3 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v4, &v3, 0, 0);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = v4 == 0;
  }

  v2 = !v1;
  byte_1ECE43060 = v2;
  return result;
}

uint64_t static SystemInfo.isVirtualMachine.getter()
{
  if (qword_1ECE42568 != -1)
  {
    swift_once();
  }

  return byte_1ECE43060;
}

uint64_t SystemInfo.LowPowerExpressModes.description.getter()
{
  v1 = 0x616873696C612ELL;
  v2 = *v0;
  if ((qword_1F5A93B30 & ~*v0) != 0)
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    if (qword_1F5A93B30)
    {
      v6 = 0xE700000000000000;
      v5 = 0x616873696C612ELL;
    }

    else
    {
      if ((qword_1F5A93B30 & 4) != 0)
      {
        v3 = 0x7270784563666E2ELL;
      }

      else
      {
        v3 = 0x4E574F4E4B4E552ELL;
      }

      v4 = 0xE800000000000000;
      if ((qword_1F5A93B30 & 4) != 0)
      {
        v4 = 0xEB00000000737365;
      }

      if ((qword_1F5A93B30 & 2) != 0)
      {
        v5 = 0x794D646E69662ELL;
      }

      else
      {
        v5 = v3;
      }

      if ((qword_1F5A93B30 & 2) != 0)
      {
        v6 = 0xE700000000000000;
      }

      else
      {
        v6 = v4;
      }
    }

    v7 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DF5C1294(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1DF5C1294((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[16 * v9];
    *(v10 + 4) = v5;
    *(v10 + 5) = v6;
  }

  if ((qword_1F5A93B38 & ~v2) == 0)
  {
    v11 = 0x794D646E69662ELL;
    v12 = 0xE700000000000000;
    if ((qword_1F5A93B38 & 4) != 0)
    {
      v13 = 0x7270784563666E2ELL;
    }

    else
    {
      v13 = 0x4E574F4E4B4E552ELL;
    }

    v14 = 0xE800000000000000;
    if ((qword_1F5A93B38 & 4) != 0)
    {
      v14 = 0xEB00000000737365;
    }

    if ((qword_1F5A93B38 & 2) == 0)
    {
      v11 = v13;
      v12 = v14;
    }

    if (qword_1F5A93B38)
    {
      v15 = 0x616873696C612ELL;
    }

    else
    {
      v15 = v11;
    }

    if (qword_1F5A93B38)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = v12;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DF5C1294(0, *(v7 + 2) + 1, 1, v7);
    }

    v18 = *(v7 + 2);
    v17 = *(v7 + 3);
    if (v18 >= v17 >> 1)
    {
      v7 = sub_1DF5C1294((v17 > 1), v18 + 1, 1, v7);
    }

    *(v7 + 2) = v18 + 1;
    v19 = &v7[16 * v18];
    *(v19 + 4) = v15;
    *(v19 + 5) = v16;
  }

  if ((qword_1F5A93B40 & ~v2) == 0)
  {
    v20 = 0x794D646E69662ELL;
    v21 = 0xE700000000000000;
    if ((qword_1F5A93B40 & 4) != 0)
    {
      v22 = 0x7270784563666E2ELL;
    }

    else
    {
      v22 = 0x4E574F4E4B4E552ELL;
    }

    v23 = 0xE800000000000000;
    if ((qword_1F5A93B40 & 4) != 0)
    {
      v23 = 0xEB00000000737365;
    }

    if ((qword_1F5A93B40 & 2) == 0)
    {
      v20 = v22;
      v21 = v23;
    }

    if (qword_1F5A93B40)
    {
      v24 = 0xE700000000000000;
    }

    else
    {
      v1 = v20;
      v24 = v21;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DF5C1294(0, *(v7 + 2) + 1, 1, v7);
    }

    v26 = *(v7 + 2);
    v25 = *(v7 + 3);
    if (v26 >= v25 >> 1)
    {
      v7 = sub_1DF5C1294((v25 > 1), v26 + 1, 1, v7);
    }

    *(v7 + 2) = v26 + 1;
    v27 = &v7[16 * v26];
    *(v27 + 4) = v1;
    *(v27 + 5) = v24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
  sub_1DF5C3828(&qword_1ED8E49F8, &unk_1ECE425C0, &qword_1DF637D10, MEMORY[0x1E69E6310]);
  v28 = sub_1DF6328DC();
  v30 = v29;

  MEMORY[0x1E12D82E0](v28, v30);

  MEMORY[0x1E12D82E0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1DF5FBD3C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);
    result += 32;
    if (!v3)
    {
LABEL_6:
      v7 = sub_1DF632A8C();
      swift_unknownObjectRelease();
      return v7;
    }

    v4 = 0;
    v5 = v1 - 1;
    while (v5 != v4)
    {
      if (!*(v2 + 33 + v4++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF5FBDC0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1DF633A6C();
  sub_1DF632ACC();
  v8 = sub_1DF633AAC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1DF63394C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1DF5FC4B8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DF5FBF10(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1DF6325AC();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43098, &unk_1DF63AF30);
  result = sub_1DF63341C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1DF5A9208(&qword_1ED8E6150, MEMORY[0x1E69695B8]);
      result = sub_1DF6328BC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1DF5FC258(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43088, &qword_1DF63AF18);
  result = sub_1DF63341C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1DF633A6C();
      sub_1DF632ACC();
      result = sub_1DF633AAC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DF5FC4B8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DF5FC258(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DF5FC870();
      goto LABEL_16;
    }

    sub_1DF5FC9CC(v8 + 1);
  }

  v10 = *v4;
  sub_1DF633A6C();
  sub_1DF632ACC();
  result = sub_1DF633AAC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1DF63394C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1DF6339DC();
  __break(1u);
  return result;
}

void *sub_1DF5FC638()
{
  v1 = v0;
  v2 = sub_1DF6325AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43098, &unk_1DF63AF30);
  v6 = *v0;
  v7 = sub_1DF63340C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1DF5FC870()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43088, &qword_1DF63AF18);
  v2 = *v0;
  v3 = sub_1DF63340C();
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

uint64_t sub_1DF5FC9CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43088, &qword_1DF63AF18);
  result = sub_1DF63341C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1DF633A6C();

      sub_1DF632ACC();
      result = sub_1DF633AAC();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DF5FCC04(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E12D8860](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1DF5FBDC0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1DF5FCCA0()
{
  result = qword_1ECE43068;
  if (!qword_1ECE43068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43068);
  }

  return result;
}

unint64_t sub_1DF5FCCF8()
{
  result = qword_1ECE43070;
  if (!qword_1ECE43070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43070);
  }

  return result;
}

unint64_t sub_1DF5FCD94()
{
  result = qword_1ECE42540;
  if (!qword_1ECE42540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42540);
  }

  return result;
}

unint64_t sub_1DF5FCDEC()
{
  result = qword_1ECE42538;
  if (!qword_1ECE42538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42538);
  }

  return result;
}

uint64_t Identifier.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DF6325AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Identifier.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DF6325AC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1DF5FCF38(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DF63394C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DF5FCFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF5FCF38(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DF5FCFE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF5C0ECC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DF5FD014(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DF5FD068(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Identifier.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Identifier.CodingKeys(255, *(a2 + 16), a3, a4);
  swift_getWitnessTable();
  v5 = sub_1DF6338AC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF633AFC();
  sub_1DF6325AC();
  sub_1DF5A9208(&qword_1ECE430A0, MEMORY[0x1E69695B0]);
  sub_1DF63385C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t Identifier.hash(into:)(uint64_t a1)
{
  sub_1DF6325AC();
  sub_1DF5A9208(&qword_1ED8E6150, MEMORY[0x1E69695B8]);

  return sub_1DF6328CC();
}

uint64_t Identifier.hashValue.getter()
{
  sub_1DF633A6C();
  sub_1DF6325AC();
  sub_1DF5A9208(&qword_1ED8E6150, MEMORY[0x1E69695B8]);
  sub_1DF6328CC();
  return sub_1DF633AAC();
}

uint64_t Identifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = sub_1DF6325AC();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Identifier.CodingKeys(255, a2, v7, v8);
  swift_getWitnessTable();
  v9 = sub_1DF63382C();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v14 = type metadata accessor for Identifier(0, a2, v12, v13);
  v25 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v32;
  sub_1DF633ADC();
  if (!v17)
  {
    v24 = v16;
    v32 = v14;
    v18 = v27;
    v19 = v29;
    sub_1DF5A9208(qword_1ECE430A8, MEMORY[0x1E69695D0]);
    v20 = v30;
    v21 = v28;
    sub_1DF6337CC();
    (*(v18 + 8))(v11, v21);
    v22 = v24;
    (*(v19 + 32))(v24, v31, v20);
    (*(v25 + 32))(v26, v22, v32);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DF5FD684(uint64_t a1)
{
  sub_1DF633A6C();
  Identifier.hash(into:)(v2);
  return sub_1DF633AAC();
}

uint64_t sub_1DF5FD6C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return IdentifierProtocol.description.getter(a1, WitnessTable);
}

uint64_t IdentifierProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF6325AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = 91;
  v11[1] = 0xE100000000000000;
  v8 = CustomStringConvertible.typeDescription.getter(a1, *(a2 + 8));
  MEMORY[0x1E12D82E0](v8);

  MEMORY[0x1E12D82E0](32, 0xE100000000000000);
  (*(a2 + 56))(a1, a2);
  sub_1DF5A9208(&unk_1ED8E4A10, MEMORY[0x1E69695E0]);
  v9 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v9);

  (*(v5 + 8))(v7, v4);
  MEMORY[0x1E12D82E0](93, 0xE100000000000000);
  return v11[0];
}

uint64_t sub_1DF5FD89C(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  a1[4] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[5] = result;
  return result;
}

uint64_t sub_1DF5FDA44()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ECE4BD40);
  __swift_project_value_buffer(v0, qword_1ECE4BD40);
  return sub_1DF63269C();
}

void sub_1DF5FDAC4()
{
  v1 = v0;
  if (qword_1ECE423A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF6326AC();
  __swift_project_value_buffer(v2, qword_1ECE4BD40);

  oslog = sub_1DF63268C();
  v3 = sub_1DF63318C();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1DF59EEC8(*(v1 + 24), *(v1 + 32), &v7);
    _os_log_impl(&dword_1DF59A000, oslog, v3, "Warning: Resume already called from %{public}s. Ignoring.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E12D9D80](v5, -1, -1);
    MEMORY[0x1E12D9D80](v4, -1, -1);
  }
}

void OnceCheckedContinuation.resume(throwing:)(uint64_t a1)
{
  v16 = a1;
  v2 = *(*v1 + 88);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v15 - v4;
  v6 = sub_1DF632E4C();
  v7 = sub_1DF63327C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v15 - v13;
  sub_1DF5AB778();
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    (*(v8 + 8))(v10, v7);
    sub_1DF5FDAC4();
  }

  else
  {
    (*(v11 + 32))(v14, v10, v6);
    (*(v3 + 16))(v5, v16, v2);
    sub_1DF632E2C();
    (*(v11 + 8))(v14, v6);
  }
}

void OnceCheckedContinuation.resume<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF632E4C();
  v7 = sub_1DF63327C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v15 - v13;
  sub_1DF5AB778();
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    (*(v8 + 8))(v10, v7);
    sub_1DF5FDAC4();
  }

  else
  {
    (*(v11 + 32))(v14, v10, v6);
    sub_1DF5FE0AC(a1, v6, a2, a3);
    (*(v11 + 8))(v14, v6);
  }
}

uint64_t sub_1DF5FE0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DF633ABC();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v24 - v17;
  (*(v19 + 16))(v24 - v17, a1, v15, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *(v11 + 32);
    v20(v14, v18, a3);
    v21 = swift_allocError();
    v20(v22, v14, a3);
    v24[3] = v21;
    return sub_1DF632E2C();
  }

  else
  {
    (*(v7 + 32))(v9, v18, v6);
    return sub_1DF632E3C();
  }
}

void OnceCheckedContinuation.resume(with:)(uint64_t a1)
{
  v2 = sub_1DF632E4C();
  v3 = sub_1DF63327C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v11 - v9;
  sub_1DF5AB778();
  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    sub_1DF5FDAC4();
  }

  else
  {
    (*(v7 + 32))(v10, v6, v2);
    sub_1DF5FE50C(a1, v2);
    (*(v7 + 8))(v10, v2);
  }
}

uint64_t sub_1DF5FE50C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DF633ABC();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a1, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v16, v8);
    return sub_1DF632E2C();
  }

  else
  {
    (*(v4 + 32))(v6, v16, v3);
    return sub_1DF632E3C();
  }
}

void OnceCheckedContinuation.resume<>()()
{
  v0 = sub_1DF632E4C();
  v1 = sub_1DF63327C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - v3;
  v5 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v9 - v7;
  sub_1DF5AB778();
  if ((*(v5 + 48))(v4, 1, v0) == 1)
  {
    (*(v2 + 8))(v4, v1);
    sub_1DF5FDAC4();
  }

  else
  {
    (*(v5 + 32))(v8, v4, v0);
    sub_1DF632E3C();
    (*(v5 + 8))(v8, v0);
  }
}

uint64_t OnceCheckedContinuation.deinit()
{

  return v0;
}

uint64_t static CaseIterable<>.allMembers.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1DF63349C();
  swift_getAssociatedConformanceWitness();
  return sub_1DF6330DC();
}

uint64_t sub_1DF5FEA58(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_1DF5FEAA0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D00, &qword_1DF63B250);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  swift_beginAccess();
  v6 = *(v1 + 144);
  if (v6)
  {
    v7 = *(v1 + 152);
    v8 = sub_1DF5A32C0(v6, v7);
    v6(v8);
    sub_1DF5A83BC(v6, v7);
    v9 = sub_1DF63252C();
    v10 = *(v9 - 8);
    (*(v10 + 56))(v5, 0, 1, v9);
    return (*(v10 + 32))(a1, v5, v9);
  }

  else
  {
    v12 = sub_1DF63252C();
    v13 = *(v12 - 8);
    (*(v13 + 56))(v5, 1, 1, v12);
    sub_1DF63251C();
    result = (*(v13 + 48))(v5, 1, v12);
    if (result != 1)
    {
      return sub_1DF59CB50(v5, &qword_1ECE42D00, &qword_1DF63B250);
    }
  }

  return result;
}

uint64_t sub_1DF5FEC8C()
{
  v0 = sub_1DF6018D4();
  sub_1DF5A32C0(v0, v1);
  return v0;
}

uint64_t sub_1DF5FECC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 144);
  v6 = *(v2 + 152);
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return sub_1DF5A83BC(v5, v6);
}

uint64_t AsyncKeyedThrottle.ThrottleResult.hashValue.getter(unsigned __int8 a1)
{
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](a1);
  return sub_1DF633AAC();
}

uint64_t sub_1DF5FEE00(uint64_t a1)
{
  sub_1DF633A6C();
  AsyncKeyedThrottle.ThrottleResult.hash(into:)(v3, *v1);
  return sub_1DF633AAC();
}

uint64_t AsyncKeyedThrottle.__allocating_init(throttleInterval:)(double a1)
{
  v2 = swift_allocObject();
  AsyncKeyedThrottle.init(throttleInterval:)(a1);
  return v2;
}

double *AsyncKeyedThrottle.init(throttleInterval:)(double a1)
{
  v3 = *v1;
  swift_defaultActor_initialize();
  v4 = *(*&v3 + 80);
  v5 = sub_1DF63252C();
  swift_getTupleTypeMetadata2();
  v6 = sub_1DF632D6C();
  v7 = sub_1DF5F4198(v6, v4, v5, *(*&v3 + 88));

  *(v1 + 14) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE43130, &qword_1DF63B258);
  *(v1 + 16) = sub_1DF6327DC();
  v8 = sub_1DF6327DC();
  v1[18] = 0.0;
  v1[19] = 0.0;
  *(v1 + 17) = v8;
  v1[15] = a1;
  return v1;
}

uint64_t sub_1DF5FEF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DF5FEFB8, a6, 0);
}

uint64_t sub_1DF5FEFB8()
{
  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF6326AC();
  __swift_project_value_buffer(v1, qword_1ED8E69A0);
  v2 = sub_1DF63268C();
  v3 = sub_1DF63315C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DF59A000, v2, v3, "AsyncKeyedThrottle: running block.", v4, 2u);
    MEMORY[0x1E12D9D80](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1DF5FF160;

  return v8();
}

uint64_t sub_1DF5FF160(char a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF5FF278, v2, 0);
}

uint64_t sub_1DF5FF278()
{
  if (*(v0 + 56) == 1)
  {
    sub_1DF5FFDB8(*(v0 + 40));
  }

  sub_1DF6003E4(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF5FF2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = a5;
  v6[4] = v5;
  v6[2] = a4;
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = sub_1DF5FF3A0;

  return sub_1DF5FF58C(a1, a2, a3);
}

uint64_t sub_1DF5FF3A0(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 32);
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF5FF4F0, v8, 0);
  }
}

uint64_t sub_1DF5FF4F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56) != 1 || v1 == 0;
  if (v2 || (v3 = *(v0 + 48), v1(), !v3))
  {
    v4 = *(v0 + 8);
  }

  else
  {
    v4 = *(v0 + 8);
  }

  return v4();
}

uint64_t sub_1DF5FF58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D00, &qword_1DF63B250);
  v4[17] = swift_task_alloc();
  v5 = sub_1DF63252C();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5FF6BC, v3, 0);
}

uint64_t sub_1DF5FF6BC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  swift_beginAccess();

  sub_1DF63289C();

  v4 = *(v0 + 192);
  swift_beginAccess();

  sub_1DF63289C();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 120);
    sub_1DF59CB50(*(v0 + 136), &qword_1ECE42D00, &qword_1DF63B250);
    if (v4)
    {
      v6 = *(v5 + 120);
LABEL_9:
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE43130, &qword_1DF63B258);
      sub_1DF63289C();

      if (*(v0 + 88))
      {

        if (qword_1ED8E5958 != -1)
        {
          swift_once();
        }

        v20 = sub_1DF6326AC();
        __swift_project_value_buffer(v20, qword_1ED8E69A0);
        v21 = sub_1DF63268C();
        v22 = sub_1DF63315C();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_1DF59A000, v21, v22, "AsyncKeyedThrottle: Not dispatching, event is throttled", v23, 2u);
          MEMORY[0x1E12D9D80](v23, -1, -1);
        }

        v24 = 1;
      }

      else
      {
        sub_1DF6005E4(*(v0 + 96), *(v0 + 104), *(v0 + 112), v6);
        v24 = 2;
      }

      v25 = *(v0 + 8);

      return v25(v24);
    }
  }

  else
  {
    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);
    v11 = *(v0 + 120);
    (*(v10 + 32))(v7, *(v0 + 136), v9);
    sub_1DF5FEAA0(v8);
    sub_1DF63246C();
    v13 = v12;
    v14 = *(v10 + 8);
    v14(v8, v9);
    v15 = *(v11 + 120);
    sub_1DF63247C();
    sub_1DF6324BC();
    v6 = v16;
    v14(v8, v9);
    v14(v7, v9);
    if (v15 >= v13 || (v4 & 1) != 0)
    {
      goto LABEL_9;
    }
  }

  v17 = *(v0 + 104);
  sub_1DF6003D4(*(v0 + 96));
  v26 = (v17 + *v17);
  v18 = swift_task_alloc();
  *(v0 + 176) = v18;
  *v18 = v0;
  v18[1] = sub_1DF5FFB34;

  return v26();
}

uint64_t sub_1DF5FFB34(char a1)
{
  v4 = *v2;
  *(v4 + 184) = v1;

  v5 = *(v4 + 120);
  if (v1)
  {
    v6 = sub_1DF5FFD14;
  }

  else
  {
    *(v4 + 193) = a1 & 1;
    v6 = sub_1DF5FFC74;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF5FFC74()
{
  if (*(v0 + 193) == 1)
  {
    sub_1DF5FFDB8(*(v0 + 96));
  }

  sub_1DF6003E4(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1DF5FFD14()
{
  sub_1DF6003E4(*(v0 + 96));
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1DF5FFDB8(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D00, &qword_1DF63B250);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = *(v3 + 80);
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v17 - v10, a1, v7, v9);
  sub_1DF5FEAA0(v6);
  v12 = sub_1DF63252C();
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  swift_beginAccess();
  sub_1DF63288C();
  sub_1DF6328AC();
  swift_endAccess();
  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v13 = sub_1DF6326AC();
  __swift_project_value_buffer(v13, qword_1ED8E69A0);
  v14 = sub_1DF63268C();
  v15 = sub_1DF63315C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DF59A000, v14, v15, "AsyncKeyedThrottle: executed date set.", v16, 2u);
    MEMORY[0x1E12D9D80](v16, -1, -1);
  }
}

uint64_t sub_1DF600038(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D00, &qword_1DF63B250);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v26 = &v22 - v5;
  v6 = *(v3 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v22 - v11;
  v12 = sub_1DF63252C();
  swift_getTupleTypeMetadata2();
  v13 = sub_1DF632D6C();
  v27 = v1;
  v24 = *(v3 + 88);
  v25 = v12;
  v14 = sub_1DF5F4198(v13, v6, v12, v24);

  v31 = v14;
  if (!sub_1DF632D9C())
  {
LABEL_12:
    v21 = v27;
    swift_beginAccess();
    v21[14] = v14;
  }

  v15 = 0;
  v28 = (v7 + 16);
  v22 = v8;
  v23 = (v7 + 8);
  while (1)
  {
    v16 = sub_1DF632D8C();
    sub_1DF632D5C();
    if (v16)
    {
      v17 = *(v7 + 16);
      v17(v30, (a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15), v6);
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_1DF6334BC();
    if (v22 != 8)
    {
      break;
    }

    v32[0] = result;
    v17 = *v28;
    (*v28)(v30, v32, v6);
    swift_unknownObjectRelease();
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
LABEL_10:
      __break(1u);
LABEL_11:
      v14 = v31;
      goto LABEL_12;
    }

LABEL_5:
    v19 = v30;
    v17(v29, v30, v6);
    swift_beginAccess();

    sub_1DF63289C();

    (*v23)(v19, v6);
    sub_1DF63288C();
    sub_1DF6328AC();
    ++v15;
    if (v18 == sub_1DF632D9C())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1DF6003F4(uint64_t a1, char a2, const char *a3)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12[-v6], v5);
  v12[31] = a2;
  swift_beginAccess();
  sub_1DF63288C();
  sub_1DF6328AC();
  swift_endAccess();
  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v8 = sub_1DF6326AC();
  __swift_project_value_buffer(v8, qword_1ED8E69A0);
  v9 = sub_1DF63268C();
  v10 = sub_1DF63315C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DF59A000, v9, v10, a3, v11, 2u);
    MEMORY[0x1E12D9D80](v11, -1, -1);
  }
}

uint64_t sub_1DF6005E4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v33 = a3;
  v31 = a2;
  v7 = *v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = *(v7 + 80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v32 = &v30 - v18;
  v19 = *(v12 + 16);
  v19(v17);
  v20 = sub_1DF632E9C();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  (v19)(v15, a1, v11);
  v21 = *(v7 + 88);
  type metadata accessor for AsyncKeyedThrottle(255, v11, v21, v22);
  WitnessTable = swift_getWitnessTable();
  v24 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v4;
  *(v26 + 24) = WitnessTable;
  *(v26 + 32) = v11;
  *(v26 + 40) = v21;
  *(v26 + 48) = a4;
  *(v26 + 56) = v4;
  (*(v12 + 32))(v26 + v24, v15, v11);
  v27 = (v26 + v25);
  v28 = v33;
  *v27 = v31;
  v27[1] = v28;
  swift_retain_n();

  v34 = sub_1DF623C34(0, 0, v10, &unk_1DF63B3E0, v26);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECE43130, &qword_1DF63B258);
  sub_1DF63288C();
  sub_1DF6328AC();
  return swift_endAccess();
}

uint64_t sub_1DF6008F0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a1;
  *(v8 + 80) = *a5;
  v10 = sub_1DF6335CC();
  *(v8 + 88) = v10;
  *(v8 + 96) = *(v10 - 8);
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF6009E4, a5, 0);
}

uint64_t sub_1DF6009E4(uint64_t a1)
{
  v2 = sub_1DF633C1C();
  v4 = v3;
  sub_1DF633A1C();
  v5 = swift_task_alloc();
  *(v1 + 112) = v5;
  *v5 = v1;
  v5[1] = sub_1DF600AC0;

  return sub_1DF60141C(v2, v4, 0, 0, 1);
}

uint64_t sub_1DF600AC0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = v2[13];
  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[6];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_1DF600EB8;
  }

  else
  {
    v7 = sub_1DF600C3C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DF600C3C()
{
  swift_beginAccess();

  sub_1DF63289C();

  v1 = *(v0 + 152);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v4 = *(v0 + 56);
    sub_1DF6003D4(v4);
    sub_1DF601248(v4);
    if (qword_1ED8E5958 != -1)
    {
      swift_once();
    }

    v5 = sub_1DF6326AC();
    *(v0 + 128) = __swift_project_value_buffer(v5, qword_1ED8E69A0);
    v6 = sub_1DF63268C();
    v7 = sub_1DF63315C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DF59A000, v6, v7, "AsyncKeyedThrottle: executing debounced task.", v8, 2u);
      MEMORY[0x1E12D9D80](v8, -1, -1);
    }

    v9 = *(v0 + 64);

    v11 = (v9 + *v9);
    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *v10 = v0;
    v10[1] = sub_1DF600F1C;

    return v11();
  }

  else
  {
    sub_1DF6005E4(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(*(v0 + 48) + 120));

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1DF600EB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF600F1C(char a1)
{
  v4 = *v2;
  *(v4 + 144) = v1;

  v5 = *(v4 + 48);
  if (v1)
  {
    v6 = sub_1DF6010DC;
  }

  else
  {
    *(v4 + 153) = a1 & 1;
    v6 = sub_1DF60105C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF60105C()
{
  if (*(v0 + 153) == 1)
  {
    sub_1DF5FFDB8(*(v0 + 56));
  }

  sub_1DF6003E4(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF6010DC()
{
  v1 = v0[18];
  v2 = v1;
  v3 = sub_1DF63268C();
  v4 = sub_1DF63316C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DF59A000, v3, v4, "Failed during debounced task execution: %{public}@.", v6, 0xCu);
    sub_1DF59CB50(v7, &qword_1ECE42AF0, &qword_1DF63ABC0);
    MEMORY[0x1E12D9D80](v7, -1, -1);
    MEMORY[0x1E12D9D80](v6, -1, -1);
  }

  v10 = v0[18];
  v11 = v0[7];

  sub_1DF6003E4(v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DF601248(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5[-v2], v1);
  v6 = 0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECE43130, &qword_1DF63B258);
  sub_1DF63288C();
  sub_1DF6328AC();
  return swift_endAccess();
}

uint64_t AsyncKeyedThrottle.deinit()
{

  sub_1DF5A83BC(*(v0 + 144), *(v0 + 152));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncKeyedThrottle.__deallocating_deinit()
{
  AsyncKeyedThrottle.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF60141C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1DF6335AC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1DF60151C, 0, 0);
}

uint64_t sub_1DF60151C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1DF6335CC();
  v5 = sub_1DF601FB4(&qword_1ECE422D0, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1DF6339FC();
  sub_1DF601FB4(&qword_1ECE422D8, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1DF6335DC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1DF6016AC;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1DF6016AC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF601868, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1DF601868()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF601920(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 72) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DF59D2C8;

  return sub_1DF5FEF94(a1, v6, v4, v7, v8, v9, v1 + v5);
}

uint64_t dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 264) + **(*v5 + 264));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1DF59D2C4;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AsyncKeyedThrottle.debounce(key:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 272) + **(*v3 + 272));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1DF5A902C;

  return v10(a1, a2, a3);
}

uint64_t sub_1DF601E70(uint64_t a1)
{
  v4 = *(v1 + 3);
  v5 = (*(*(*(v1 + 4) - 8) + 80) + 64) & ~*(*(*(v1 + 4) - 8) + 80);
  v6 = *(v1 + 2);
  v7 = v1[6];
  v8 = *(v1 + 7);
  v9 = (v1 + ((*(*(*(v1 + 4) - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DF59D2C8;

  return sub_1DF6008F0(v7, a1, v6, v4, v8, v1 + v5, v10, v11);
}

uint64_t sub_1DF601FB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t retry<A>(times:retryDelay:shouldRetry:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a8;
  *(v8 + 72) = v13;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 200) = a5;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_1DF63363C();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v10 = sub_1DF63365C();
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF60213C, 0, 0);
}

uint64_t sub_1DF60213C()
{
  v1 = v0[3];
  if (v1 <= 1)
  {
    v1 = 1;
  }

  v0[17] = v1;
  v0[18] = 0;
  sub_1DF632F7C();
  v2 = v0[8];

  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_1DF6022B8;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_1DF6022B8()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF60240C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DF60240C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 48);
  v3 = v1;
  if ((v2(v1) & 1) == 0)
  {
    v6 = *(v0 + 160);
    swift_willThrow();

    goto LABEL_6;
  }

  if (*(v0 + 200))
  {

    v4 = *(v0 + 144) + 1;
    v5 = *(v0 + 160);
    if (v4 == *(v0 + 136))
    {
      swift_willThrow();
LABEL_6:

      v7 = *(v0 + 8);

      return v7();
    }

    *(v0 + 144) = v4;
    sub_1DF632F7C();
    v15 = *(v0 + 64);

    v18 = (v15 + *v15);
    v16 = swift_task_alloc();
    *(v0 + 152) = v16;
    *v16 = v0;
    v16[1] = sub_1DF6022B8;
    v17 = *(v0 + 16);

    return v18(v17);
  }

  else
  {
    v9 = *(v0 + 96);
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    sub_1DF63364C();
    sub_1DF6335FC();
    sub_1DF63361C();
    v12 = *(v11 + 8);
    *(v0 + 168) = v12;
    *(v0 + 176) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v9, v10);
    v13 = swift_task_alloc();
    *(v0 + 184) = v13;
    *v13 = v0;
    v13[1] = sub_1DF6026E4;
    v14 = *(v0 + 104);

    return MEMORY[0x1EEE6DC68](v14, 0, 0, 1);
  }
}

uint64_t sub_1DF6026E4()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1DF6029C0;
  }

  else
  {

    v3 = sub_1DF602800;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF602800()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  (*(v0 + 168))(*(v0 + 104), *(v0 + 80));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 144) + 1;
  if (v4 == *(v0 + 136))
  {
    swift_willThrow();
LABEL_5:

    v7 = *(v0 + 8);

    return v7();
  }

  v5 = *(v0 + 192);
  v6 = *(v0 + 160);
  *(v0 + 144) = v4;
  sub_1DF632F7C();
  if (v5)
  {

    goto LABEL_5;
  }

  v9 = *(v0 + 64);

  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  *v10 = v0;
  v10[1] = sub_1DF6022B8;
  v11 = *(v0 + 16);

  return v12(v11);
}

uint64_t sub_1DF6029C0()
{
  v1 = v0[21];
  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[10];

  v1(v6, v7);
  (*(v4 + 8))(v3, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DF602AE0(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    v8 = a2;
    swift_once();
    a2 = v8;
  }

  v3 = *a2;
  v4 = sub_1DF63248C();
  v5 = [v3 stringFromDate_];

  v6 = sub_1DF63298C();
  return v6;
}

id sub_1DF602B70()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  result = [v0 setFormatOptions_];
  qword_1ECE42360 = v0;
  return result;
}

void sub_1DF602BC0()
{
  v0 = sub_1DF63262C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  [v4 setFormatOptions_];
  sub_1DF63261C();
  v5 = sub_1DF63260C();
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone_];

  qword_1ED8E4A28 = v4;
}

void Date.epoch.getter()
{
  sub_1DF6324DC();
  v1 = v0 * 1000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_1DF602D64()
{
  v2 = *MEMORY[0x1E69E9840];
  info = 0;
  result = mach_timebase_info(&info);
  if (result)
  {
    result = sub_1DF6336EC();
    __break(1u);
  }

  else
  {
    qword_1ECE42380 = info;
  }

  return result;
}

Swift::UInt64 __swiftcall convertToSeconds(_:)(Swift::UInt64 result)
{
  if (qword_1ECE42378 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (is_mul_ok(result, qword_1ECE42380))
  {
    if (HIDWORD(qword_1ECE42380))
    {
      return result * qword_1ECE42380 / HIDWORD(qword_1ECE42380) / 0x3B9ACA00;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF602EC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE431D8, &qword_1DF63B408);
  inited = swift_initStackObject();
  v1 = *MEMORY[0x1E696A370];
  *(inited + 32) = *MEMORY[0x1E696A370];
  *(inited + 16) = xmmword_1DF638990;
  *(inited + 64) = MEMORY[0x1E69E6530];
  *(inited + 40) = 508;
  v2 = v1;
  v3 = sub_1DF5C9260(inited);
  swift_setDeallocating();
  result = sub_1DF59CB50(inited + 32, &qword_1ECE42A10, &unk_1DF638C40);
  qword_1ECE431B8 = v3;
  return result;
}

uint64_t static NSFileManager.daemonAgentDirectoryAttributes.getter()
{
  if (qword_1ECE42570 != -1)
  {
    swift_once();
  }
}

uint64_t static NSFileManager.createDirectoryIfNecessary(url:attributes:)(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_self() defaultManager];
  v27 = 0;
  sub_1DF6322EC();
  v4 = sub_1DF63295C();

  v5 = [v3 fileExistsAtPath:v4 isDirectory:&v27];

  if (v5)
  {
    if ((v27 & 1) == 0)
    {
      v6 = sub_1DF63316C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE431C0, &qword_1DF63B400);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1DF638990;
      v8 = sub_1DF63229C();
      v10 = v9;
      *(v7 + 56) = MEMORY[0x1E69E6158];
      *(v7 + 64) = sub_1DF603330();
      *(v7 + 32) = v8;
      *(v7 + 40) = v10;
      sub_1DF60359C(0, &qword_1ECE431D0, 0x1E69E9BF8);
      v11 = sub_1DF63326C();
      sub_1DF63267C(v6, &dword_1DF59A000, v11, "Expected a directory, but is a file: %@", 39, 2, v7);
    }
  }

  else
  {
    v12 = MEMORY[0x1E12D9570]();
    v13 = sub_1DF6322CC();
    if (a2)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_1DF604D14(&qword_1ECE427B8, type metadata accessor for FileAttributeKey, &unk_1DF638378);
      a2 = sub_1DF63282C();
    }

    v26 = 0;
    v14 = [v3 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:a2 error:&v26];

    if (v14)
    {
      v15 = v26;
    }

    else
    {
      v16 = v26;
      v17 = sub_1DF63228C();

      swift_willThrow();
      v18 = sub_1DF63316C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE431C0, &qword_1DF63B400);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1DF638990;
      v26 = v17;
      v20 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B18, &qword_1DF63B240);
      v21 = sub_1DF632A3C();
      v23 = v22;
      *(v19 + 56) = MEMORY[0x1E69E6158];
      *(v19 + 64) = sub_1DF603330();
      *(v19 + 32) = v21;
      *(v19 + 40) = v23;
      sub_1DF60359C(0, &qword_1ECE431D0, 0x1E69E9BF8);
      v24 = sub_1DF63326C();
      sub_1DF63267C(v18, &dword_1DF59A000, v24, "createDirectory error: %@", 25, 2, v19);
    }

    objc_autoreleasePoolPop(v12);
  }

  return v5 ^ 1;
}

unint64_t sub_1DF603330()
{
  result = qword_1ECE431C8;
  if (!qword_1ECE431C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE431C8);
  }

  return result;
}

void static NSFileManager.removeDirectory(url:)()
{
  v14[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1DF6322CC();
  v14[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v14];

  if (v2)
  {
    v3 = v14[0];
    return;
  }

  v4 = v14[0];
  v5 = sub_1DF63228C();

  swift_willThrow();
  v14[0] = v5;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B18, &qword_1DF63B240);
  sub_1DF60359C(0, &unk_1ECE422E0, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {
    goto LABEL_11;
  }

  v7 = [v13 domain];
  v8 = sub_1DF63298C();
  v10 = v9;

  if (sub_1DF63298C() == v8 && v11 == v10)
  {

    goto LABEL_8;
  }

  v12 = sub_1DF63394C();

  if (v12)
  {
LABEL_8:
    if ([v13 code] == 4)
    {

      return;
    }
  }

  swift_willThrow();
LABEL_11:
}

uint64_t sub_1DF60359C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void static NSFileManager.emptyDirectory(url:)(uint64_t a1)
{
  v73[4] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D50, &qword_1DF63AAE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v56 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - v9;
  v11 = sub_1DF6322FC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v56 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  v20 = objc_opt_self();
  v67 = [v20 defaultManager];

  v63 = *(v12 + 16);
  v64 = v12 + 16;
  v21 = v63(v19, a1, v11);
  v22 = MEMORY[0x1E12D9570](v21);
  v23 = [v20 defaultManager];
  v24 = sub_1DF63313C();

  v25 = v22;
  v26 = v66;
  objc_autoreleasePoolPop(v25);
  v57 = v12;
  v68 = *(v12 + 8);
  v69 = v12 + 8;
  v68(v19, v11);
  if (!v24)
  {
LABEL_18:

    (*(v57 + 56))(v10, 1, 1, v11);
    return;
  }

  v28 = (v57 + 56);
  v70 = (v57 + 32);
  v65 = (v57 + 48);
  *&v27 = 141558531;
  v58 = v27;
  v59 = v4;
  v62 = (v57 + 56);
  while (1)
  {
    v71 = v24;
    v30 = v24;
    v31 = MEMORY[0x1E12D9570]();
    if ([v30 nextObject])
    {
      sub_1DF63339C();
      swift_unknownObjectRelease();
      sub_1DF5A27C4(v73, v72);
      if (swift_dynamicCast())
      {
        v32 = *v28;
        (*v28)(v4, 0, 1, v11);
        (*v70)(v7, v4, v11);
        v32(v7, 0, 1, v11);
        goto LABEL_10;
      }

      v33 = *v28;
      (*v28)(v4, 1, 1, v11);
      sub_1DF59CB50(v4, &qword_1ECE42D50, &qword_1DF63AAE0);
      v33(v7, 1, 1, v11);
    }

    else
    {

      (*v28)(v7, 1, 1, v11);
    }

    v71 = 0;
    v26 = v66;
LABEL_10:
    objc_autoreleasePoolPop(v31);

    sub_1DF5A3C48(v7, v10);
    if ((*v65)(v10, 1, v11) == 1)
    {
      break;
    }

    (*v70)(v26, v10, v11);
    v34 = sub_1DF6322CC();
    v73[0] = 0;
    v35 = [v67 removeItemAtURL:v34 error:v73];

    if (v35)
    {
      v29 = v73[0];
      v68(v26, v11);
      v24 = v71;
      if (!v71)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v36 = v73[0];
      v37 = sub_1DF63228C();

      swift_willThrow();
      if (qword_1ED8E5958 != -1)
      {
        swift_once();
      }

      v38 = sub_1DF6326AC();
      __swift_project_value_buffer(v38, qword_1ED8E69A0);
      v63(v14, v26, v11);
      v39 = v37;
      v40 = sub_1DF63268C();
      v41 = sub_1DF63316C();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v73[0] = v61;
        *v42 = v58;
        *(v42 + 4) = 1752392040;
        *(v42 + 12) = 2081;
        sub_1DF604D14(&qword_1ECE43040, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v60 = v40;
        v44 = sub_1DF6338DC();
        v45 = v7;
        v46 = v10;
        v48 = v47;
        v68(v14, v11);
        v49 = sub_1DF59EEC8(v44, v48, v73);
        v10 = v46;
        v7 = v45;
        v26 = v66;

        *(v42 + 14) = v49;
        *(v42 + 22) = 2114;
        v50 = sub_1DF63227C();
        *(v42 + 24) = v50;
        v51 = v43;
        *v43 = v50;
        v52 = v60;
        _os_log_impl(&dword_1DF59A000, v60, v41, "Error deleting %{private,mask.hash}s: %{public}@)", v42, 0x20u);
        sub_1DF59CB50(v51, &qword_1ECE42AF0, &qword_1DF63ABC0);
        MEMORY[0x1E12D9D80](v51, -1, -1);
        v53 = v61;
        __swift_destroy_boxed_opaque_existential_1(v61);
        MEMORY[0x1E12D9D80](v53, -1, -1);
        v54 = v42;
        v4 = v59;
        MEMORY[0x1E12D9D80](v54, -1, -1);

        v68(v26, v11);
      }

      else
      {

        v55 = v68;
        v68(v14, v11);
        v55(v26, v11);
      }

      v28 = v62;
      v24 = v71;
      if (!v71)
      {
        goto LABEL_18;
      }
    }
  }
}

uint64_t NSFileManager.flatSequence(at:includingPropertiesForKeys:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_1DF6322FC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(v6 + 16))(v9, a1, v5, v7);
  v11 = MEMORY[0x1E12D9570](v10);
  v12 = [objc_opt_self() defaultManager];
  v13 = sub_1DF63313C();

  objc_autoreleasePoolPop(v11);
  result = (*(v6 + 8))(v9, v5);
  *a3 = v13;
  return result;
}

uint64_t NSFileManager.entryCount(directory:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D50, &qword_1DF63AAE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v30 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = sub_1DF6322FC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (URL.isDirectory.getter())
  {
    v34 = v5;
    v32 = v1;
    v15 = (*(v12 + 16))(v14, a1, v11);
    v16 = MEMORY[0x1E12D9570](v15);
    v17 = [objc_opt_self() defaultManager];
    v18 = sub_1DF63313C();

    objc_autoreleasePoolPop(v16);
    v20 = *(v12 + 8);
    v19 = v12 + 8;
    v20(v14, v11);
    v21 = (v19 + 48);
    v33 = (v19 + 24);
    v38 = (v19 + 40);
    v31 = v18;
    a1 = 0;
    v22 = v35;
    while (1)
    {
      if (!v18)
      {

        (*v21)(v10, 1, 1, v11);
        return a1;
      }

      v23 = v18;
      v24 = MEMORY[0x1E12D9570]();
      if ([v23 nextObject])
      {
        sub_1DF63339C();
        swift_unknownObjectRelease();
        sub_1DF5A27C4(v37, v36);
        v25 = v34;
        if (swift_dynamicCast())
        {
          v26 = *v21;
          (*v21)(v25, 0, 1, v11);
          v22 = v35;
          (*v33)();
          v26(v22, 0, 1, v11);
          goto LABEL_10;
        }

        v27 = *v21;
        (*v21)(v25, 1, 1, v11);
        sub_1DF59CB50(v25, &qword_1ECE42D50, &qword_1DF63AAE0);
        v22 = v35;
        v27(v35, 1, 1, v11);
      }

      else
      {

        (*v21)(v22, 1, 1, v11);
      }

      v18 = 0;
LABEL_10:
      objc_autoreleasePoolPop(v24);

      sub_1DF5A3C48(v22, v10);
      if ((*v38)(v10, 1, v11) == 1)
      {

        return a1;
      }

      sub_1DF59CB50(v10, &qword_1ECE42D50, &qword_1DF63AAE0);
      if (__OFADD__(a1++, 1))
      {
        __break(1u);
        break;
      }
    }
  }

  [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:258 userInfo:0];
  swift_willThrow();
  return a1;
}

void NSFileManager.removeEmptyDirectoriesRecursively(baseURL:)(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A88, &qword_1DF638E50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v78 = &v61[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D50, &qword_1DF63AAE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v61[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v61[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61[-v11];
  v13 = sub_1DF6322FC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v61[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v61[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61[-v19];
  if ((URL.isDirectory.getter() & 1) == 0)
  {
    v84 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:258 userInfo:0];
    swift_willThrow();
    return;
  }

  v21 = *(v14 + 16);
  v67 = v14 + 16;
  v66 = v21;
  v22 = (v21)(v20, a1, v13);
  v23 = MEMORY[0x1E12D9570](v22);
  v24 = [objc_opt_self() defaultManager];
  v25 = sub_1DF63313C();

  objc_autoreleasePoolPop(v23);
  v76 = *(v14 + 8);
  v77 = v14 + 8;
  v76(v20, v13);
  v68 = v14;
  if (!v25)
  {
LABEL_27:
    (*(v68 + 56))(v12, 1, 1, v13);
    return;
  }

  v79 = (v14 + 32);
  v74 = (v14 + 48);
  v73 = *MEMORY[0x1E695DB78];
  v75 = (v14 + 56);
  v71 = (v14 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  *(&v26 + 1) = 2;
  v72 = xmmword_1DF638990;
  *&v26 = 136315138;
  v65 = v26;
  v70 = v9;
  while (1)
  {
    v27 = v25;
    v28 = MEMORY[0x1E12D9570]();
    if ([v27 nextObject])
    {
      sub_1DF63339C();
      swift_unknownObjectRelease();
      sub_1DF5A27C4(&v83, v82);
      if (swift_dynamicCast())
      {
        v29 = v25;
        v30 = *v75;
        (*v75)(v6, 0, 1, v13);
        (*v79)(v9, v6, v13);
        v30(v9, 0, 1, v13);
        goto LABEL_10;
      }

      v31 = *v75;
      (*v75)(v6, 1, 1, v13);
      sub_1DF59CB50(v6, &qword_1ECE42D50, &qword_1DF63AAE0);
      v31(v9, 1, 1, v13);
    }

    else
    {

      (*v75)(v9, 1, 1, v13);
    }

    v29 = 0;
LABEL_10:
    objc_autoreleasePoolPop(v28);

    sub_1DF5A3C48(v9, v12);
    if ((*v74)(v12, 1, v13) == 1)
    {
      break;
    }

    v80 = v29;
    (*v79)(v81, v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A90, &qword_1DF638E58);
    inited = swift_initStackObject();
    *(inited + 16) = v72;
    v33 = v73;
    *(inited + 32) = v73;
    v34 = v33;
    sub_1DF5EC5D4(inited);
    swift_setDeallocating();
    sub_1DF5CE614(inited + 32);
    v35 = v78;
    v36 = v84;
    sub_1DF6322AC();
    if (v36)
    {

      v37 = sub_1DF63226C();
      (*(*(v37 - 8) + 56))(v35, 1, 1, v37);
      sub_1DF59CB50(v35, &qword_1ECE42A88, &qword_1DF638E50);
      v84 = 0;
    }

    else
    {
      v84 = 0;
      v38 = v35;

      v39 = sub_1DF63226C();
      v40 = *(v39 - 8);
      (*(v40 + 56))(v38, 0, 1, v39);
      v41 = sub_1DF63223C();
      (*(v40 + 8))(v38, v39);
      if (v41 != 2 && (v41 & 1) != 0)
      {
        v42 = v81;
        sub_1DF6322EC();
        v43 = sub_1DF632A7C();

        v44 = rmdir((v43 + 32));

        if (v44)
        {
          v76(v42, v13);
          v9 = v70;
        }

        else
        {
          v9 = v70;
          if (qword_1ED8E5958 != -1)
          {
            swift_once();
          }

          v45 = sub_1DF6326AC();
          __swift_project_value_buffer(v45, qword_1ED8E69A0);
          v46 = v69;
          v47 = v81;
          v66(v69, v81, v13);
          v48 = sub_1DF63268C();
          v49 = sub_1DF63318C();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v63 = v50;
            v64 = swift_slowAlloc();
            v83 = v64;
            *v50 = v65;
            sub_1DF604D14(&qword_1ECE43040, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
            v62 = v49;
            v51 = sub_1DF6338DC();
            v52 = v46;
            v54 = v53;
            v55 = v76;
            v76(v52, v13);
            v56 = sub_1DF59EEC8(v51, v54, &v83);

            v57 = v63;
            *(v63 + 1) = v56;
            v58 = v57;
            _os_log_impl(&dword_1DF59A000, v48, v62, "Pruning empty directory: %s", v57, 0xCu);
            v59 = v64;
            __swift_destroy_boxed_opaque_existential_1(v64);
            MEMORY[0x1E12D9D80](v59, -1, -1);
            MEMORY[0x1E12D9D80](v58, -1, -1);

            v55(v81, v13);
          }

          else
          {

            v60 = v76;
            v76(v46, v13);
            v60(v47, v13);
          }
        }

        goto LABEL_19;
      }

      v9 = v70;
    }

    v76(v81, v13);
LABEL_19:
    v25 = v80;
    if (!v80)
    {
      goto LABEL_27;
    }
  }
}

uint64_t sub_1DF604D14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DF604D5C()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  (*(v0 + 120))(*(v0 + 88), *(v0 + 64));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DF604E14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t withTimeout<A, B>(_:clock:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v8[11] = *(AssociatedTypeWitness - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF604F68, 0, 0);
}

uint64_t sub_1DF604F68()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  sub_1DF6339FC();
  swift_getAssociatedConformanceWitness();
  sub_1DF6335DC();
  v4 = *(v3 + 8);
  v0[14] = v4;
  v0[15] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1DF6050A0;
  v6 = v0[13];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[2];

  return withDeadline<A, B>(_:clock:block:)(v13, v6, v11, v12, v9, v10, v7, v8);
}

uint64_t sub_1DF6050A0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1DF605234;
  }

  else
  {
    v2 = sub_1DF6051B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF6051B4()
{
  (*(v0 + 112))(*(v0 + 104), *(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF605234()
{
  (*(v0 + 112))(*(v0 + 104), *(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF6052B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF605360()
{
  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF605400()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 40);
  v9 = swift_task_alloc();
  *(v9 + 16) = *(v0 + 48);
  *(v9 + 32) = v7;
  sub_1DF5A61A8(sub_1DF5B77D8, v9, v8);

  (*(v5 + 16))(v3, v2, v4);
  v10 = *(v6 - 8);
  if ((*(v10 + 48))(v3, 1, v6) == 1)
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 80);
    v13 = *(*(v0 + 88) + 8);
    v13(*(v0 + 104), v12);

    v13(v11, v12);
  }

  else
  {
    *(v0 + 16) = v1;
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v16 = *(v0 + 80);
    v17 = *(v0 + 88);
    v18 = *(v0 + 72);
    v19 = v1;
    sub_1DF632E2C();

    (*(v17 + 8))(v14, v16);
    (*(v10 + 8))(v15, v18);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1DF605620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v9 = sub_1DF632E4C();
  v10 = sub_1DF63327C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  os_unfair_lock_lock((a1 + 24));
  v17 = *(a1 + 16);

  os_unfair_lock_unlock((a1 + 24));
  if (v17)
  {
    sub_1DF632F5C();
  }

  MEMORY[0x1EEE9AC00](v18);
  *(&v23 - 4) = a3;
  *(&v23 - 3) = a4;
  *(&v23 - 2) = a5;
  sub_1DF5A61A8(sub_1DF5B77F8, (&v23 - 6), v24);
  (*(v11 + 16))(v13, v16, v10);
  v19 = *(v9 - 8);
  if ((*(v19 + 48))(v13, 1, v9) == 1)
  {
    v20 = *(v11 + 8);
    v20(v16, v10);
    return (v20)(v13, v10);
  }

  else
  {
    sub_1DF632E5C();
    sub_1DF5B5178(&qword_1ED8E56F0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v22 = swift_allocError();
    sub_1DF6327FC();
    v25 = v22;
    sub_1DF632E2C();
    (*(v11 + 8))(v16, v10);
    return (*(v19 + 8))(v13, v9);
  }
}

uint64_t sub_1DF60592C()
{
  sub_1DF6059BC();
  swift_allocError();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1DF6059BC()
{
  result = qword_1ED8E5280;
  if (!qword_1ED8E5280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E5280);
  }

  return result;
}

uint64_t sub_1DF605A24@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1DF605AC4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1DF605B6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1DF605C0C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t HysteresisFilter.__allocating_init(currentValue:threshold:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  HysteresisFilter.init(currentValue:threshold:)(a1, a2);
  return v4;
}

uint64_t *HysteresisFilter.init(currentValue:threshold:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a2;
  v5 = *v2;
  v6 = sub_1DF6325AC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  swift_defaultActor_initialize();
  *(v2 + *(*v2 + 128)) = 1;
  v13 = *(*v2 + 136);
  sub_1DF63259C();
  v14 = sub_1DF63255C();
  v16 = v15;
  (*(v7 + 16))(v9, v12, v6);
  v23 = 2;
  type metadata accessor for WorkItemQueue(0);
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  swift_allocObject();
  v17 = WorkItemQueue.init(name:identifier:warningOptions:)(v14, v16, v9, &v23);
  (*(v7 + 8))(v12, v6);
  *(v3 + v13) = v17;
  v18 = *(v5 + 80);
  v19 = *(v18 - 8);
  (*(v19 + 16))(v3 + *(*v3 + 104), a1, v18);
  (*(v19 + 32))(v3 + *(*v3 + 120), a1, v18);
  *(v3 + *(*v3 + 112)) = v22;
  return v3;
}

uint64_t sub_1DF605FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v38 = a4;
  v39 = a5;
  v36 = a2;
  v37 = a3;
  v8 = *v5;
  v9 = sub_1DF6325AC();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = v8[10];
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  v42 = *(v5 + v8[17]);
  (*(v15 + 16))(&v35 - v19, a1, v14, v18);
  v21 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = v14;
  *(v23 + 3) = v8[11];
  *(v23 + 4) = v6;
  (*(v15 + 32))(&v23[v21], v20, v14);
  v24 = &v23[v22];
  v25 = v37;
  *v24 = v36;
  v24[1] = v25;
  v26 = &v23[(v22 + 23) & 0xFFFFFFFFFFFFFFF8];
  v28 = v38;
  v27 = v39;
  *v26 = v38;
  v26[1] = v27;

  sub_1DF5A32C0(v28, v27);
  sub_1DF63259C();
  v30 = v40;
  v29 = v41;
  v31 = v35;
  (*(v40 + 16))(v35, v13, v41);
  v32 = swift_allocObject();
  *(v32 + 16) = &unk_1DF63B4D8;
  *(v32 + 24) = v23;
  type metadata accessor for WorkItemQueue.WorkItem(0);
  swift_allocObject();
  v33 = sub_1DF60D5E8(0, v31, &unk_1DF63B4E8, v32, &unk_1DF63B4E0, 0);

  (*(v30 + 8))(v13, v29);
  sub_1DF5A9620(v33);
}

uint64_t sub_1DF606304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1DF5D7754;

  return sub_1DF606504(a2, a3, a4, a5, a6);
}

uint64_t sub_1DF6063D0()
{
  v2 = (*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80);
  v3 = (*(*(*(v0 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 32);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1DF59D2C4;

  return sub_1DF606304(v5, v0 + v2, v7, v8, v9, v10);
}

uint64_t sub_1DF606504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[8] = *v5;
  v8 = *(v7 + 80);
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF606610, v5, 0);
}

uint64_t sub_1DF606610()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  sub_1DF605B6C(v1);
  v5 = sub_1DF63292C();
  v6 = *(v3 + 8);
  v0[13] = v6;
  v0[14] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = *(*v4 + 128);
  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = *(v4 + v7);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
LABEL_5:
    v10 = 1;
  }

  v11 = v0[12];
  v12 = v0[9];
  v13 = v0[10];
  v14 = v0[2];
  *(v4 + v7) = v10;
  v15 = *(v13 + 16);
  v15(v11, v14, v12);
  sub_1DF605C0C(v11);
  sub_1DF605A24(v11);
  v16 = sub_1DF63292C();
  v6(v11, v12);
  if (v16)
  {
    v17 = v0[5];
    if (v17)
    {
      v30 = (v17 + *v17);
      v18 = swift_task_alloc();
      v0[17] = v18;
      *v18 = v0;
      v19 = sub_1DF606D7C;
LABEL_12:
      v18[1] = v19;

      return v30();
    }

LABEL_15:

    v22 = v0[1];

    return v22();
  }

  if (*(v0[7] + *(*v0[7] + 128)) < *(v0[7] + *(*v0[7] + 112)))
  {
    v20 = v0[5];
    if (v20)
    {
      v30 = (v20 + *v20);
      v18 = swift_task_alloc();
      v0[16] = v18;
      *v18 = v0;
      v19 = sub_1DF606C50;
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v23 = v0[11];
  v24 = v0[9];
  v26 = v0[2];
  v25 = v0[3];
  sub_1DF605A24(v0[12]);
  v15(v23, v26, v24);
  sub_1DF605AC4(v23);
  sub_1DF605A24(v23);
  v31 = (v25 + *v25);
  v27 = swift_task_alloc();
  v0[15] = v27;
  *v27 = v0;
  v27[1] = sub_1DF606A5C;
  v29 = v0[11];
  v28 = v0[12];

  return v31(v29, v28);
}

uint64_t sub_1DF606A5C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 56);

  v1(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1DF606BD8, v4, 0);
}

uint64_t sub_1DF606BD8()
{
  (*(v0 + 104))(*(v0 + 96), *(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF606C50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DF606D7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t HysteresisFilter.deinit()
{
  v1 = *(*v0 + 80);
  v2 = *(*(v1 - 8) + 8);
  v2(v0 + *(*v0 + 104), v1);
  v2(v0 + *(*v0 + 120), v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t HysteresisFilter.__deallocating_deinit()
{
  HysteresisFilter.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF606FCC(uint64_t a1)
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

uint64_t sub_1DF6070F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = a4;
  *(v6 + 40) = v5;
  *(v6 + 168) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 48) = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = swift_task_alloc();
  *(v6 + 72) = swift_task_alloc();
  v8 = sub_1DF6335AC();
  *(v6 + 80) = v8;
  *(v6 + 88) = *(v8 - 8);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 169) = *a5;
  v9 = *(a5 + 32);
  *(v6 + 128) = *(a5 + 16);
  *(v6 + 144) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1DF607274, v5, 0);
}

uint64_t sub_1DF607274()
{
  v144 = v0;
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancellationBlock);
  v2 = swift_task_alloc();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  os_unfair_lock_lock((v1 + 32));
  sub_1DF5B10D0((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
  v3 = *(v0 + 40);

  if (*(v3 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completionAlreadyCalled))
  {
    if (qword_1ECE42508 != -1)
    {
      swift_once();
    }

    v4 = sub_1DF6326AC();
    __swift_project_value_buffer(v4, qword_1ECE4BD58);

    v5 = sub_1DF63268C();
    v6 = sub_1DF63316C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v143[0] = v8;
      *v7 = 136315138;
      sub_1DF6325AC();
      sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v9 = sub_1DF6338DC();
      v11 = sub_1DF59EEC8(v9, v10, v143);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1DF59A000, v5, v6, "completion called more than once for %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1E12D9D80](v8, -1, -1);
      MEMORY[0x1E12D9D80](v7, -1, -1);
    }

    goto LABEL_7;
  }

  v14 = *(v0 + 120);
  v15 = *(v0 + 40);
  *(v3 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completionAlreadyCalled) = 1;
  sub_1DF63357C();
  v16 = *(v15 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completed);
  *(swift_task_alloc() + 16) = v14;
  v17 = MEMORY[0x1E69E6B68];
  v18 = *(*v16 + *MEMORY[0x1E69E6B68] + 16);
  v19 = (v16 + ((*(*v16 + 48) + 3) & 0x1FFFFFFFCLL));
  os_unfair_lock_lock(v19);
  sub_1DF5DA024(v16 + v18);
  v20 = *(v0 + 80);
  v21 = *(v0 + 88);
  v22 = *(v0 + 72);
  v23 = *(v0 + 40);
  os_unfair_lock_unlock(v19);

  v24 = *(v23 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_enqueued);
  v25 = *(*v24 + *v17 + 16);
  v26 = (*(*v24 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v24 + v26));
  sub_1DF59CC98(v24 + v25, v22, &qword_1ECE42A20, &qword_1DF638C58);
  os_unfair_lock_unlock((v24 + v26));
  v27 = *(v21 + 48);
  if (v27(v22, 1, v20) == 1)
  {
    v28 = *(v0 + 72);
LABEL_17:
    sub_1DF59CB50(v28, &qword_1ECE42A20, &qword_1DF638C58);
    goto LABEL_18;
  }

  v29 = *(v0 + 64);
  v30 = *(v0 + 40);
  v131 = (*(v0 + 88) + 32);
  v134 = *v131;
  v138 = *(v0 + 80);
  (*v131)(*(v0 + 112), *(v0 + 72));
  v31 = *(v30 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_started);
  v32 = *(*v31 + *MEMORY[0x1E69E6B68] + 16);
  v33 = (*(*v31 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v31 + v33));
  sub_1DF59CC98(v31 + v32, v29, &qword_1ECE42A20, &qword_1DF638C58);
  os_unfair_lock_unlock((v31 + v33));
  v34 = v27(v29, 1, v138);
  v35 = *(v0 + 80);
  v36 = *(v0 + 64);
  if (v34 == 1)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 112), *(v0 + 80));
LABEL_16:
    v28 = v36;
    goto LABEL_17;
  }

  v37 = *(v0 + 56);
  (v134)(*(v0 + 104), *(v0 + 64), *(v0 + 80));
  os_unfair_lock_lock(v19);
  sub_1DF59CC98(v16 + v18, v37, &qword_1ECE42A20, &qword_1DF638C58);
  os_unfair_lock_unlock(v19);
  if (v27(v37, 1, v35) == 1)
  {
    v38 = *(v0 + 112);
    v39 = *(v0 + 80);
    v36 = *(v0 + 56);
    v40 = *(*(v0 + 88) + 8);
    v40(*(v0 + 104), v39);
    v40(v38, v39);
    goto LABEL_16;
  }

  v55 = *(v0 + 169);
  (v134)(*(v0 + 96), *(v0 + 56), *(v0 + 80));
  v56 = sub_1DF63359C();
  v58 = v57;
  v59 = sub_1DF63359C();
  v61 = v60;
  v62 = 0x1ECE42000uLL;
  if (v55 == 1)
  {
    if (qword_1ECE42508 != -1)
    {
      swift_once();
    }

    v63 = sub_1DF6326AC();
    __swift_project_value_buffer(v63, qword_1ECE4BD58);

    v64 = sub_1DF63268C();
    v65 = sub_1DF63315C();

    if (os_log_type_enabled(v64, v65))
    {
      v135 = v65;
      v66 = *(v0 + 32);
      v67 = *(v0 + 24);
      v68 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v143[0] = v132;
      *v68 = 136315906;
      *(v68 + 4) = sub_1DF59EEC8(v67, v66, v143);
      *(v68 + 12) = 2080;
      sub_1DF6325AC();
      sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v62 = 0x1ECE42000;
      v69 = sub_1DF6338DC();
      v71 = sub_1DF59EEC8(v69, v70, v143);

      *(v68 + 14) = v71;
      *(v68 + 22) = 2080;
      v72 = Duration.formattedDescription.getter(v56, v58);
      v74 = sub_1DF59EEC8(v72, v73, v143);

      *(v68 + 24) = v74;
      *(v68 + 32) = 2080;
      v75 = Duration.formattedDescription.getter(v59, v61);
      v77 = sub_1DF59EEC8(v75, v76, v143);

      *(v68 + 34) = v77;
      _os_log_impl(&dword_1DF59A000, v64, v135, "[%s:%s] queueDuration: %s; runDuration: %s", v68, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v132, -1, -1);
      MEMORY[0x1E12D9D80](v68, -1, -1);
    }

    else
    {
    }
  }

  if (sub_1DF633BFC())
  {
    v136 = v58;
    if (*(v62 + 1288) != -1)
    {
      swift_once();
    }

    v78 = sub_1DF6326AC();
    __swift_project_value_buffer(v78, qword_1ECE4BD58);

    v79 = sub_1DF63268C();
    v80 = sub_1DF63316C();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = *(v0 + 32);
      v82 = *(v0 + 24);
      v83 = swift_slowAlloc();
      v140 = v56;
      v143[0] = swift_slowAlloc();
      v84 = v143[0];
      *v83 = 136446722;
      *(v83 + 4) = sub_1DF59EEC8(v82, v81, v143);
      *(v83 + 12) = 2082;
      sub_1DF6325AC();
      sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v62 = 0x1ECE42000uLL;
      v85 = sub_1DF6338DC();
      v87 = sub_1DF59EEC8(v85, v86, v143);

      *(v83 + 14) = v87;
      *(v83 + 22) = 2082;
      v88 = Duration.formattedDescription.getter(v140, v136);
      v90 = sub_1DF59EEC8(v88, v89, v143);

      *(v83 + 24) = v90;
      _os_log_impl(&dword_1DF59A000, v79, v80, "[%{public}s:%{public}s] Excessive WorkItem queue time: %{public}s", v83, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v84, -1, -1);
      MEMORY[0x1E12D9D80](v83, -1, -1);
    }
  }

  if (sub_1DF633BFC())
  {
    v141 = v61;
    v91 = *(*(v0 + 40) + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_callStack);
    os_unfair_lock_lock((v91 + 24));
    v92 = *(v91 + 16);

    os_unfair_lock_unlock((v91 + 24));
    if (*(v62 + 1288) != -1)
    {
      swift_once();
    }

    v93 = sub_1DF6326AC();
    __swift_project_value_buffer(v93, qword_1ECE4BD58);

    v94 = sub_1DF63268C();
    v95 = sub_1DF63316C();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = *(v0 + 32);
      v97 = *(v0 + 24);
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v143[0] = v99;
      *v98 = 136446722;
      *(v98 + 4) = sub_1DF59EEC8(v97, v96, v143);
      *(v98 + 12) = 2082;
      sub_1DF6325AC();
      sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v100 = sub_1DF6338DC();
      v102 = sub_1DF59EEC8(v100, v101, v143);

      *(v98 + 14) = v102;
      *(v98 + 22) = 2082;
      v103 = Duration.formattedDescription.getter(v59, v141);
      v105 = sub_1DF59EEC8(v103, v104, v143);

      *(v98 + 24) = v105;
      _os_log_impl(&dword_1DF59A000, v94, v95, "[%{public}s:%{public}s] Excessive WorkItem run time: %{public}s", v98, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v99, -1, -1);
      MEMORY[0x1E12D9D80](v98, -1, -1);
    }

    v106 = sub_1DF63268C();
    v107 = sub_1DF63318C();

    v108 = os_log_type_enabled(v106, v107);
    v110 = *(v0 + 104);
    v109 = *(v0 + 112);
    v111 = *(v0 + 88);
    v112 = *(v0 + 96);
    v113 = *(v0 + 80);
    if (v108)
    {
      v114 = *(v0 + 32);
      v142 = *(v0 + 104);
      v115 = *(v0 + 24);
      v133 = *(v0 + 96);
      v116 = swift_slowAlloc();
      v137 = v109;
      v117 = swift_slowAlloc();
      v143[0] = v117;
      *v116 = 136446722;
      *(v116 + 4) = sub_1DF59EEC8(v115, v114, v143);
      *(v116 + 12) = 2082;
      sub_1DF6325AC();
      sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v118 = sub_1DF6338DC();
      v120 = sub_1DF59EEC8(v118, v119, v143);

      *(v116 + 14) = v120;
      *(v116 + 22) = 2082;
      v121 = sub_1DF60CF60(v92);
      v123 = v122;

      v124 = sub_1DF59EEC8(v121, v123, v143);

      *(v116 + 24) = v124;
      _os_log_impl(&dword_1DF59A000, v106, v107, "[%{public}s:%{public}s] enqueue callstack: %{public}s", v116, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v117, -1, -1);
      MEMORY[0x1E12D9D80](v116, -1, -1);

      v125 = *(v111 + 8);
      v125(v133, v113);
      v125(v142, v113);
      v126 = v137;
    }

    else
    {

      v125 = *(v111 + 8);
      v125(v112, v113);
      v125(v110, v113);
      v126 = v109;
    }

    v125(v126, v113);
  }

  else
  {
    v127 = *(v0 + 104);
    v128 = *(v0 + 112);
    v129 = *(v0 + 80);
    v130 = *(*(v0 + 88) + 8);
    v130(*(v0 + 96), v129);
    v130(v127, v129);
    v130(v128, v129);
  }

LABEL_18:
  v42 = *(v0 + 40);
  v41 = *(v0 + 48);
  v43 = *(v0 + 16);
  v44 = *(v0 + 168) & 1;
  v45 = v42 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_storedResult;
  v46 = *(v42 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_storedResult);
  *v45 = v43;
  v47 = *(v45 + 8);
  *(v45 + 8) = v44;
  sub_1DF5B10E8(v43, v44);
  sub_1DF5AE9D8(v46, v47);
  v48 = *(v42 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_willDeadlock);
  v49 = swift_task_alloc();
  *(v49 + 16) = v42;
  *(v49 + 24) = v41;
  v50 = (v48 + 20);
  os_unfair_lock_lock((v48 + 20));
  sub_1DF60E7EC((v48 + 16));
  v51 = *(v0 + 40);
  os_unfair_lock_unlock(v50);

  sub_1DF5B1124();
  v52 = *(v51 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completion);
  if (!v52)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 120), *(v0 + 80));
LABEL_7:

    v12 = *(v0 + 8);

    return v12();
  }

  v139 = (v52 + *v52);
  v53 = swift_task_alloc();
  *(v0 + 160) = v53;
  *v53 = v0;
  v53[1] = sub_1DF608374;
  v54 = *(v0 + 16);

  return v139(v54, v44);
}

uint64_t sub_1DF608374()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1DF608484, v1, 0);
}

uint64_t sub_1DF608484()
{
  (*(v0[11] + 8))(v0[15], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t WorkItemQueue.WorkItem.__allocating_init(identifier:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF6325AC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  type metadata accessor for WorkItemQueue.WorkItem(0);
  swift_allocObject();
  v12 = sub_1DF60D5E8(0, v10, &unk_1DF638F88, v11, 0, 0);

  (*(v7 + 8))(a1, v6);
  return v12;
}

{
  v6 = sub_1DF6325AC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  type metadata accessor for WorkItemQueue.WorkItem(0);
  swift_allocObject();
  v11 = sub_1DF60D5E8(0, v10, a2, a3, 0, 0);

  (*(v7 + 8))(a1, v6);
  return v11;
}

uint64_t sub_1DF6087E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1DF63363C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v7 = sub_1DF63365C();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF608910, 0, 0);
}

uint64_t sub_1DF608910()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v11 = *(v0 + 40);
  sub_1DF63364C();
  sub_1DF6335FC();
  sub_1DF63362C();
  v6 = *(v5 + 8);
  *(v0 + 112) = v6;
  *(v0 + 120) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *(v7 + 16) = v11;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_1DF608A84;
  v9 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v9);
}

uint64_t sub_1DF608A84()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1DF608C58;
  }

  else
  {

    v2 = sub_1DF608BA0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF608BA0()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  (*(v0 + 112))(*(v0 + 80), *(v0 + 56));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DF608C58()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[7];

  v2(v5, v6);
  (*(v4 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DF608D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = sub_1DF63365C();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v6[9] = *(v8 + 64);
  v6[10] = swift_task_alloc();
  v9 = sub_1DF63363C();
  v6[11] = v9;
  v10 = *(v9 - 8);
  v6[12] = v10;
  v6[13] = *(v10 + 64);
  v6[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v6[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF608E8C, 0, 0);
}

uint64_t sub_1DF608E8C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[11];
  v20 = v0[10];
  v21 = v0[13];
  v16 = v0[8];
  v17 = v0[14];
  v18 = v0[6];
  v19 = v0[7];
  v4 = v0[4];
  v15 = v0[5];
  v5 = v0[3];
  v6 = sub_1DF632E9C();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v4;

  sub_1DF5AF4B0(v1, &unk_1DF63B708, v8);
  sub_1DF59CB50(v1, &qword_1ECE42C10, &qword_1DF63B260);
  v7(v1, 1, 1, v6);
  (*(v2 + 16))(v17, v15, v3);
  (*(v16 + 16))(v20, v18, v19);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = (v21 + *(v16 + 80) + v9) & ~*(v16 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v2 + 32))(v11 + v9, v17, v3);
  (*(v16 + 32))(v11 + v10, v20, v19);
  sub_1DF5AF4B0(v1, &unk_1DF63B718, v11);
  sub_1DF59CB50(v1, &qword_1ECE42C10, &qword_1DF63B260);
  v12 = swift_task_alloc();
  v0[16] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B40, &qword_1DF6393A0);
  *v12 = v0;
  v12[1] = sub_1DF609168;

  return MEMORY[0x1EEE6DAC8](v0 + 18, 0, 0, v13);
}

uint64_t sub_1DF609168()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1DF6093D0;
  }

  else
  {
    v2 = sub_1DF60927C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF60927C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B18, &qword_1DF63B240);
  sub_1DF632FAC();
  if (*(v0 + 144))
  {
    sub_1DF632E5C();
    sub_1DF60E5CC(&qword_1ED8E56F0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    sub_1DF6327FC();
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF6093D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF609450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B28, &qword_1DF639308);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF6094F0, 0, 0);
}

uint64_t sub_1DF6094F0()
{
  v1 = *(v0 + 72);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43268, &qword_1DF63B720);
  v3 = swift_allocObject();
  *(v0 + 80) = v3;
  *(v3 + ((*(*v3 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1DF5F2268(v1, v3 + *(*v3 + *MEMORY[0x1E69E6B68] + 16), &qword_1ECE42B28, &qword_1DF639308);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE431E0, &qword_1DF63B4A8);
  inited = swift_initStackObject();
  *(v0 + 88) = inited;
  *(inited + 24) = 0;
  *(inited + 16) = 0;
  sub_1DF632F7C();
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v6 = *(v0 + 56);
  *(v5 + 16) = v3;
  *(v5 + 24) = inited;
  *(v5 + 32) = v6;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *(v7 + 16) = inited;
  *(v7 + 24) = v3;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_1DF6097A0;
  v9 = *(v0 + 48);
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v9, &unk_1DF63B730, v5, sub_1DF60E6D4, v7, 0, 0, v10);
}

uint64_t sub_1DF6097A0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1DF609950;
  }

  else
  {

    v2 = sub_1DF6098C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF6098C4()
{
  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF609950()
{
  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF6099F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF609A18, 0, 0);
}

uint64_t sub_1DF609A18()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1DF609B10;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD00000000000001CLL, 0x80000001DF6355D0, sub_1DF60E6DC, v1, v5);
}

uint64_t sub_1DF609B10()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF5D44C4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_1DF609C4C(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v5 = *(*a2 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v6));
  sub_1DF60E6E8(a2 + v5);
  os_unfair_lock_unlock((a2 + v6));
  os_unfair_lock_lock(a3 + 6);
  sub_1DF60E704(&a3[4]);
  os_unfair_lock_unlock(a3 + 6);
}

uint64_t sub_1DF609D24(uint64_t a1, uint64_t a2)
{
  sub_1DF59CB50(a1, &qword_1ECE42B28, &qword_1DF639308);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_1DF609DF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;

  v11 = sub_1DF632E9C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;

  result = sub_1DF5CE7F8(0, 0, v10, &unk_1DF63B740, v12);
  *a1 = result;
  return result;
}

uint64_t sub_1DF609F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B28, &qword_1DF639308);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF609FF4, 0, 0);
}

uint64_t sub_1DF609FF4(uint64_t a1)
{
  sub_1DF632F7C();
  v4 = (*(v1 + 24) + **(v1 + 24));
  v2 = swift_task_alloc();
  *(v1 + 80) = v2;
  *v2 = v1;
  v2[1] = sub_1DF60A320;

  return v4();
}

uint64_t sub_1DF60A320()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1DF60A660;
  }

  else
  {
    v2 = sub_1DF60A434;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF60A434()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1DF5F2268(v3 + v4, v2, &qword_1ECE42B28, &qword_1DF639308);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v7 = *(v6 - 8);
  (*(v7 + 56))(v3 + v4, 1, 1, v6);
  os_unfair_lock_unlock((v3 + v5));
  sub_1DF59CC98(v2, v1, &qword_1ECE42B28, &qword_1DF639308);
  v8 = (*(v7 + 48))(v1, 1, v6);
  v9 = v0[8];
  v10 = v0[9];
  if (v8 == 1)
  {
    sub_1DF59CB50(v0[9], &qword_1ECE42B28, &qword_1DF639308);
    sub_1DF59CB50(v9, &qword_1ECE42B28, &qword_1DF639308);
  }

  else
  {
    sub_1DF632E3C();
    sub_1DF59CB50(v10, &qword_1ECE42B28, &qword_1DF639308);
    (*(v7 + 8))(v9, v6);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DF60A660()
{
  v14 = v0[11];
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1DF5F2268(v3 + v4, v2, &qword_1ECE42B28, &qword_1DF639308);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v7 = *(v6 - 8);
  (*(v7 + 56))(v3 + v4, 1, 1, v6);
  os_unfair_lock_unlock((v3 + v5));
  sub_1DF59CC98(v2, v1, &qword_1ECE42B28, &qword_1DF639308);
  if ((*(v7 + 48))(v1, 1, v6) == 1)
  {
    v8 = v0[6];
    sub_1DF59CB50(v0[7], &qword_1ECE42B28, &qword_1DF639308);

    sub_1DF59CB50(v8, &qword_1ECE42B28, &qword_1DF639308);
  }

  else
  {
    v0[2] = v14;
    v10 = v0[6];
    v9 = v0[7];
    v11 = v14;
    sub_1DF632E2C();

    sub_1DF59CB50(v9, &qword_1ECE42B28, &qword_1DF639308);
    (*(v7 + 8))(v10, v6);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DF60A8C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B28, &qword_1DF639308);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - v8;
  os_unfair_lock_lock((a1 + 24));
  v10 = *(a1 + 16);

  os_unfair_lock_unlock((a1 + 24));
  if (v10)
  {
    sub_1DF632F5C();
  }

  v11 = *(*a2 + *MEMORY[0x1E69E6B68] + 16);
  v12 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v12));
  sub_1DF5F2268(a2 + v11, v9, &qword_1ECE42B28, &qword_1DF639308);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v14 = *(v13 - 8);
  (*(v14 + 56))(a2 + v11, 1, 1, v13);
  os_unfair_lock_unlock((a2 + v12));
  sub_1DF59CC98(v9, v6, &qword_1ECE42B28, &qword_1DF639308);
  if ((*(v14 + 48))(v6, 1, v13) == 1)
  {
    sub_1DF59CB50(v9, &qword_1ECE42B28, &qword_1DF639308);
    return sub_1DF59CB50(v6, &qword_1ECE42B28, &qword_1DF639308);
  }

  else
  {
    sub_1DF632E5C();
    sub_1DF60E5CC(&qword_1ED8E56F0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v16 = swift_allocError();
    sub_1DF6327FC();
    v17[1] = v16;
    sub_1DF632E2C();
    sub_1DF59CB50(v9, &qword_1ECE42B28, &qword_1DF639308);
    return (*(v14 + 8))(v6, v13);
  }
}

uint64_t sub_1DF60ABB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DF60ABD4, 0, 0);
}

uint64_t sub_1DF60ABD4(uint64_t a1)
{
  sub_1DF632F7C();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  v3 = sub_1DF63365C();
  v4 = sub_1DF60E5CC(&qword_1ED8E56E8, MEMORY[0x1E69E8848], MEMORY[0x1E69E8850]);
  *v2 = v1;
  v2[1] = sub_1DF60AD18;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);

  return MEMORY[0x1EEE6DA68](v5, v1 + 16, v6, v3, v4);
}

uint64_t sub_1DF60AD18()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1DF60AEB4;
  }

  else
  {
    v2 = sub_1DF60AE2C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF60AE2C()
{
  sub_1DF6059BC();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF60AECC()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ECE4BD58);
  v1 = __swift_project_value_buffer(v0, qword_1ECE4BD58);
  if (qword_1ED8E5CD8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8E69F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t WorkItemQueue.WorkItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_id;
  v4 = sub_1DF6325AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DF60B00C()
{
  v1 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_isCancelled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DF60B050(char a1)
{
  v3 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_isCancelled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DF60B26C()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_isCancelled;
  swift_beginAccess();
  *(v1 + v2) = 1;
  v3 = *(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancellationBlock);
  v0[6] = v3;
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v3 + 24);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    v0[7] = v7;
    *(v7 + 16) = &unk_1DF63B598;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = &unk_1DF63B598;
    *(v8 + 24) = v6;
    *(v3 + 16) = &unk_1DF63B5B0;
    *(v3 + 24) = v8;

    os_unfair_lock_unlock((v3 + 32));
    v9 = swift_allocObject();
    v0[8] = v9;
    *(v9 + 16) = &unk_1DF63B5A8;
    *(v9 + 24) = v7;
    sub_1DF5A32C0(&unk_1DF63B5A8, v7);

    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_1DF60B508;

    return (sub_1DF60DD64)();
  }

  else
  {
    os_unfair_lock_unlock((v3 + 32));
    v12 = v0[6];
    v13 = swift_task_alloc();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    os_unfair_lock_lock((v12 + 32));
    sub_1DF5AC8B8((v12 + 16));
    os_unfair_lock_unlock((v12 + 32));
    sub_1DF5A83BC(0, 0);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1DF60B508()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);

  sub_1DF5A83BC(&unk_1DF63B5A8, v1);

  return MEMORY[0x1EEE6DFA0](sub_1DF60B66C, v2, 0);
}

uint64_t sub_1DF60B66C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = swift_task_alloc();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  os_unfair_lock_lock((v2 + 32));
  sub_1DF5AC8B8((v2 + 16));
  os_unfair_lock_unlock((v2 + 32));
  sub_1DF5A83BC(&unk_1DF63B590, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DF60B748(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DF59D2C4;

  return v4();
}

uint64_t sub_1DF60B830()
{
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v2 = sub_1DF6325AC();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF60B940, v0, 0);
}

uint64_t sub_1DF60B940()
{
  v57 = v0;
  v1 = *(v0[4] + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_willDeadlock);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    if (qword_1ED8E6078 != -1)
    {
      swift_once();
    }

    v3 = v0[7];
    v4 = v0[8];
    v5 = v0[6];
    sub_1DF633C5C();
    v6 = *(v4 + 48);
    if (v6(v5, 1, v3) == 1)
    {
      v7 = v0[6];
      v8 = v0[7];
      sub_1DF63257C();
      if (v6(v7, 1, v8) != 1)
      {
        sub_1DF59CB50(v0[6], &qword_1ECE42AA8, &qword_1DF638F18);
      }
    }

    else
    {
      (*(v0[8] + 32))(v0[10], v0[6], v0[7]);
    }

    if (qword_1ECE42508 != -1)
    {
      swift_once();
    }

    v23 = v0[9];
    v24 = v0[10];
    v25 = v0[7];
    v26 = v0[8];
    v27 = sub_1DF6326AC();
    __swift_project_value_buffer(v27, qword_1ECE4BD58);
    (*(v26 + 16))(v23, v24, v25);

    v28 = sub_1DF63268C();
    v29 = sub_1DF63317C();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[8];
    v32 = v0[9];
    v33 = v0[7];
    if (v30)
    {
      v34 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56[0] = v55;
      *v34 = 136446722;
      sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v35 = sub_1DF6338DC();
      v37 = sub_1DF59EEC8(v35, v36, v56);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_1DF59EEC8(0xD000000000000011, 0x80000001DF635630, v56);
      *(v34 + 22) = 2082;
      v38 = sub_1DF6338DC();
      v40 = v39;
      v43 = *(v31 + 8);
      v41 = v31 + 8;
      v42 = v43;
      v43(v32, v33);
      v44 = sub_1DF59EEC8(v38, v40, v56);

      *(v34 + 24) = v44;
      _os_log_impl(&dword_1DF59A000, v28, v29, "Cancelling WorkItem %{public}s because calling %s from %{public}s WorkItemQueue context will cause a deadlock!", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v55, -1, -1);
      MEMORY[0x1E12D9D80](v34, -1, -1);
    }

    else
    {

      v52 = *(v31 + 8);
      v41 = v31 + 8;
      v42 = v52;
      v52(v32, v33);
    }

    v0[11] = v41;
    v0[12] = v42;
    v53 = swift_task_alloc();
    v0[13] = v53;
    *v53 = v0;
    v53[1] = sub_1DF60C1DC;

    return sub_1DF60B24C();
  }

  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[5];
  v12 = *(v0[4] + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_assocatedQueueIdentifier);
  v13 = *(*v12 + *MEMORY[0x1E69E6B68] + 16);
  v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v12 + v14));
  sub_1DF59CC98(v12 + v13, v11, &qword_1ECE42AA8, &qword_1DF638F18);
  os_unfair_lock_unlock((v12 + v14));
  LODWORD(v9) = (*(v10 + 48))(v11, 1, v9);
  sub_1DF59CB50(v11, &qword_1ECE42AA8, &qword_1DF638F18);
  if (v9 == 1)
  {
    if (qword_1ECE42508 != -1)
    {
      swift_once();
    }

    v15 = sub_1DF6326AC();
    __swift_project_value_buffer(v15, qword_1ECE4BD58);
    v16 = sub_1DF63268C();
    v17 = sub_1DF63317C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v56[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1DF59EEC8(0xD000000000000011, 0x80000001DF635630, v56);
      _os_log_impl(&dword_1DF59A000, v16, v17, "%s called on WorkItem that was never enqueued!", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E12D9D80](v19, -1, -1);
      MEMORY[0x1E12D9D80](v18, -1, -1);
    }

    type metadata accessor for WorkItemQueue.Error(0);
    sub_1DF60E5CC(&qword_1ECE42500, type metadata accessor for WorkItemQueue.Error, &protocol conformance descriptor for WorkItemQueue.Error);
    swift_allocError();
    v21 = v20;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B00, &qword_1DF6391B0);
    (*(*(v22 - 8) + 56))(v21, 2, 2, v22);
    swift_willThrow();
    goto LABEL_21;
  }

  v45 = v0[4];
  v46 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_storedResult;
  v0[14] = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_storedResult;
  v47 = v45 + v46;
  v48 = *(v47 + 8);
  if (v48 != 255)
  {
    if ((v48 & 1) == 0)
    {

      v50 = v0[1];
      goto LABEL_22;
    }

    v49 = *v47;
    v0[3] = *v47;
    sub_1DF5B10E8(v49, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B18, &qword_1DF63B240);
    swift_willThrowTypedImpl();
LABEL_21:

    v50 = v0[1];
LABEL_22:

    return v50();
  }

  sub_1DF60E5CC(&qword_1ED8E6020, type metadata accessor for WorkItemQueue.WorkItem, &protocol conformance descriptor for WorkItemQueue.WorkItem);
  v54 = swift_task_alloc();
  v0[15] = v54;
  *v54 = v0;
  v54[1] = sub_1DF60C454;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1DF60C1DC()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1DF60C2EC, v1, 0);
}

uint64_t sub_1DF60C2EC()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];
  type metadata accessor for WorkItemQueue.Error(0);
  sub_1DF60E5CC(&qword_1ECE42500, type metadata accessor for WorkItemQueue.Error, &protocol conformance descriptor for WorkItemQueue.Error);
  swift_allocError();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B00, &qword_1DF6391B0);
  (*(*(v6 - 8) + 56))(v5, 1, 2, v6);
  swift_willThrow();
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DF60C454()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1DF60C564, v1, 0);
}

uint64_t sub_1DF60C564()
{
  v1 = v0[4] + v0[14];
  v2 = *(v1 + 8);
  if (v2 == 255)
  {
    if (qword_1ECE42508 != -1)
    {
      swift_once();
    }

    v4 = sub_1DF6326AC();
    __swift_project_value_buffer(v4, qword_1ECE4BD58);
    v5 = sub_1DF63268C();
    v6 = sub_1DF63317C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DF59A000, v5, v6, "Expected storedResult to be non-nil!", v7, 2u);
      MEMORY[0x1E12D9D80](v7, -1, -1);
    }

    sub_1DF632E5C();
    sub_1DF60E5CC(&qword_1ED8E56F0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    sub_1DF6327FC();
    swift_willThrow();
  }

  else if (v2)
  {
    v3 = *v1;
    v0[2] = *v1;
    sub_1DF5B10E8(v3, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B18, &qword_1DF63B240);
    swift_willThrowTypedImpl();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DF60C79C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF60C7C0, v2, 0);
}

uint64_t sub_1DF60C7C0()
{

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1DF60C888;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  return sub_1DF6087E0(sub_1DF6087E0, v4, v2, &unk_1DF63B5D0, v3);
}

uint64_t sub_1DF60C888()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1DF60C9CC;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1DF5D44AC;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF60C9CC()
{
  v18 = v0;
  v1 = *(v0 + 56);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B18, &qword_1DF63B240);
  if (swift_dynamicCast())
  {

    if (qword_1ECE42508 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF6326AC();
    __swift_project_value_buffer(v3, qword_1ECE4BD58);

    v4 = sub_1DF63268C();
    v5 = sub_1DF63316C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136446466;
      sub_1DF6325AC();
      sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v8 = sub_1DF6338DC();
      v10 = sub_1DF59EEC8(v8, v9, &v17);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2082;
      v11 = sub_1DF633BEC();
      v13 = sub_1DF59EEC8(v11, v12, &v17);

      *(v6 + 14) = v13;
      _os_log_impl(&dword_1DF59A000, v4, v5, "Cancelling %{public}s after %{public}s timeout.", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v7, -1, -1);
      MEMORY[0x1E12D9D80](v6, -1, -1);
    }

    v14 = swift_task_alloc();
    *(v0 + 64) = v14;
    *v14 = v0;
    v14[1] = sub_1DF60CCD4;

    return sub_1DF60B24C();
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1DF60CCD4()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1DF60CDE4, v1, 0);
}

uint64_t sub_1DF60CDE4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF60CE48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF59D2C4;

  return sub_1DF60B830();
}

uint64_t sub_1DF60CEE4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_id;
  v5 = sub_1DF6325AC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1DF60CF60(uint64_t a1)
{
  v19 = type metadata accessor for ImageOffset(0);
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  sub_1DF5DB1D8(0, v5, 0);
  v6 = v23;
  if (v5)
  {
    v7 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v8 = *(v2 + 72);
    do
    {
      sub_1DF60E808(v7, v4);
      sub_1DF6325AC();
      sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v21 = sub_1DF6338DC();
      v22 = v9;
      MEMORY[0x1E12D82E0](2016419898, 0xE400000000000000);
      v20 = *&v4[*(v19 + 20)];
      sub_1DF60E86C();
      v10 = sub_1DF632BDC();
      MEMORY[0x1E12D82E0](v10);

      v11 = v21;
      v12 = v22;
      sub_1DF60E8C0(v4);
      v23 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1DF5DB1D8((v13 > 1), v14 + 1, 1);
        v6 = v23;
      }

      *(v6 + 16) = v14 + 1;
      v15 = v6 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  v21 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
  sub_1DF5BC754();
  v16 = sub_1DF6328DC();

  return v16;
}

void sub_1DF60D1C0(_BYTE *a1, uint64_t a2)
{
  v5 = sub_1DF6325AC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v9 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_id;
    if (qword_1ECE42508 != -1)
    {
      swift_once();
    }

    v10 = sub_1DF6326AC();
    __swift_project_value_buffer(v10, qword_1ECE4BD58);
    (*(v6 + 16))(v8, a2 + v9, v5);
    v11 = sub_1DF63268C();
    v12 = sub_1DF63318C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v20[1] = v2;
      v14 = v13;
      v20[0] = swift_slowAlloc();
      v21 = v20[0];
      *v14 = 136446210;
      sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v15 = sub_1DF6338DC();
      v17 = v16;
      (*(v6 + 8))(v8, v5);
      v18 = sub_1DF59EEC8(v15, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1DF59A000, v11, v12, "Clearing willDeadlock since %{public}s completed and awaitCompletion can now successfully be called from any context.", v14, 0xCu);
      v19 = v20[0];
      __swift_destroy_boxed_opaque_existential_1(v20[0]);
      MEMORY[0x1E12D9D80](v19, -1, -1);
      MEMORY[0x1E12D9D80](v14, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }
  }

  *a1 = 0;
}

uint64_t sub_1DF60D460(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429F8, &qword_1DF638C28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_1DF6325AC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF63259C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v5, a1, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  swift_beginAccess();
  sub_1DF5C5BDC(v5, v8);
  return swift_endAccess();
}

uint64_t sub_1DF60D5E8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a5;
  v55 = a6;
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v50 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v48 - v11;
  swift_defaultActor_initialize();
  *(v6 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_isCancelled) = 0;
  v13 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_assocatedQueueIdentifier;
  v14 = sub_1DF6325AC();
  v15 = *(v14 - 8);
  v48 = v14;
  v49 = v15;
  (*(v15 + 56))(v12, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43280, &qword_1DF63B768);
  v16 = swift_allocObject();
  *(v16 + ((*(*v16 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v17 = MEMORY[0x1E69E6B68];
  sub_1DF5F2268(v12, v16 + *(*v16 + *MEMORY[0x1E69E6B68] + 16), &qword_1ECE42AA8, &qword_1DF638F18);
  *(v6 + v13) = v16;
  *(v6 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completionAlreadyCalled) = 0;
  *(v6 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancellationBlockNeeded) = 1;
  v18 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancellationBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43288, &qword_1DF63B770);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  *(v6 + v18) = v19;
  v20 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancelContinuation;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  (*(*(v21 - 8) + 56))(v6 + v20, 1, 1, v21);
  v22 = v6 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_storedResult;
  *v22 = 0;
  *(v22 + 8) = -1;
  *(v6 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_waiterContinuations) = MEMORY[0x1E69E7CC8];
  v23 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_visitedQueueIdentifiers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43290, &qword_1DF63B778);
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E7CD0];
  *(v24 + 24) = 0;
  *(v24 + 16) = v25;
  *(v6 + v23) = v24;
  v26 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_callStack;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43298, &qword_1DF63B780);
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E7CC0];
  *(v27 + 24) = 0;
  *(v27 + 16) = v28;
  *(v6 + v26) = v27;
  v29 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_enqueued;
  v30 = sub_1DF6335AC();
  v31 = *(*(v30 - 8) + 56);
  v31(v9, 1, 1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE432A0, &qword_1DF63B788);
  v32 = swift_allocObject();
  *(v32 + ((*(*v32 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1DF5F2268(v9, v32 + *(*v32 + *v17 + 16), &qword_1ECE42A20, &qword_1DF638C58);
  *(v6 + v29) = v32;
  v33 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_started;
  v31(v9, 1, 1, v30);
  v34 = swift_allocObject();
  *(v34 + ((*(*v34 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1DF5F2268(v9, v34 + *(*v34 + *v17 + 16), &qword_1ECE42A20, &qword_1DF638C58);
  *(v6 + v33) = v34;
  v35 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completed;
  v31(v9, 1, 1, v30);
  v36 = swift_allocObject();
  *(v36 + ((*(*v36 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1DF5F2268(v9, v36 + *(*v36 + *v17 + 16), &qword_1ECE42A20, &qword_1DF638C58);
  *(v6 + v35) = v36;
  v37 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_willDeadlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE432A8, &qword_1DF63B790);
  v38 = swift_allocObject();
  *(v38 + 20) = 0;
  *(v6 + v37) = v38;
  *(v6 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_itemType) = v50;
  *(v38 + 16) = 0;
  v40 = v48;
  v39 = v49;
  v41 = v51;
  (*(v49 + 16))(v6 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_id, v51, v48);
  v42 = (v6 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_block);
  v43 = v53;
  *v42 = v52;
  v42[1] = v43;
  v44 = (v6 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completion);
  v46 = v54;
  v45 = v55;
  *v44 = v54;
  v44[1] = v45;

  sub_1DF5A32C0(v46, v45);
  sub_1DF5A9544();
  (*(v39 + 8))(v41, v40);
  return v6;
}

uint64_t sub_1DF60DCB8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DF59D2C4;

  return sub_1DF60B748(v2);
}

uint64_t sub_1DF60DD64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF59D2C4;

  return sub_1DF5A9BB0(a1, v4);
}

uint64_t sub_1DF60DE24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF59D2C4;

  return sub_1DF60CE48();
}

uint64_t dispatch thunk of WorkItemQueue.WorkItem.cancel()()
{
  v4 = (*(*v0 + 384) + **(*v0 + 384));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DF59D2C4;

  return v4();
}

uint64_t dispatch thunk of WorkItemQueue.WorkItem.awaitCompletion()()
{
  v4 = (*(*v0 + 392) + **(*v0 + 392));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DF59D2C4;

  return v4();
}

uint64_t dispatch thunk of WorkItemQueue.WorkItem.awaitCompletion(cancelAfter:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 400) + **(*v2 + 400));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DF59D2C4;

  return v8(a1, a2);
}

uint64_t sub_1DF60E2F4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1DF59D2C4;

  return sub_1DF608D20(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1DF60E3BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF59D2C4;

  return sub_1DF609450(a1, v4, v5, v7, v6);
}

uint64_t sub_1DF60E47C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1DF63363C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1DF63365C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1DF59D2C8;

  return sub_1DF60ABB4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1DF60E5CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DF60E614(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF59D2C4;

  return sub_1DF6099F0(a1, v4, v5, v7, v6);
}

uint64_t sub_1DF60E724(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF59D2C8;

  return sub_1DF609F30(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DF60E808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageOffset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DF60E86C()
{
  result = qword_1ED8E49E8;
  if (!qword_1ED8E49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E49E8);
  }

  return result;
}

uint64_t sub_1DF60E8C0(uint64_t a1)
{
  v2 = type metadata accessor for ImageOffset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MachServiceName.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static MachServiceName.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF63394C();
  }
}

uint64_t MachServiceName.hashValue.getter()
{
  sub_1DF633A6C();
  sub_1DF632ACC();
  return sub_1DF633AAC();
}

uint64_t sub_1DF60E9D8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1DF60EA08()
{
  sub_1DF633A6C();
  sub_1DF632ACC();
  return sub_1DF633AAC();
}

__n128 XPCServiceDescription.init(name:exportedObject:exportedInterface:remoteObjectInterface:options:requiredEntitlement:shouldAccept:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = a1[1];
  *a9 = *a1;
  *(a9 + 8) = v9;
  result = *a6;
  v11 = *(a6 + 16);
  *(a9 + 48) = *a6;
  *(a9 + 64) = v11;
  v12 = *(a6 + 32);
  *(a9 + 16) = a5;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 80) = v12;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  return result;
}

double XPCServiceDescription.init(name:remoteObjectInterface:options:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  result = 0.0;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = a2;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 80) = 0;
  return result;
}

__n128 XPCServiceDescription.init(name:exportedObject:exportedInterface:options:requiredEntitlement:shouldAccept:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = a1[1];
  *a8 = *a1;
  *(a8 + 8) = v8;
  result = *a5;
  v10 = *(a5 + 16);
  *(a8 + 48) = *a5;
  *(a8 + 64) = v10;
  v11 = *(a5 + 32);
  *(a8 + 16) = a4;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = 0;
  *(a8 + 80) = v11;
  *(a8 + 88) = a6;
  *(a8 + 96) = a7;
  return result;
}

double XPCServiceDescription.init(connection:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 serviceName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1DF63298C();
    v8 = v7;

    if ([a1 exportedObject])
    {
      sub_1DF63339C();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16[0] = v14;
    v16[1] = v15;
    if (*(&v15 + 1))
    {
      sub_1DF5A8EB8();
      if (swift_dynamicCast())
      {
        v10 = v13;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      sub_1DF60EC44(v16);
      v10 = 0;
    }

    v11 = [a1 exportedInterface];
    v12 = [a1 remoteObjectInterface];

    *a2 = v6;
    *(a2 + 8) = v8;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0;
    *(a2 + 24) = v10;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 80) = 0;
  }

  else
  {

    *(a2 + 96) = 0;
    result = 0.0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DF60EC44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE436C0, &qword_1DF6393D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DF60ECB0()
{
  result = qword_1ED8E4D10[0];
  if (!qword_1ED8E4D10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8E4D10);
  }

  return result;
}

uint64_t sub_1DF60ED04(uint64_t a1, int a2)
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

uint64_t sub_1DF60ED4C(uint64_t result, int a2, int a3)
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

uint64_t DefaultStringInterpolation.BinaryIntegerRadix.hashValue.getter()
{
  v1 = *v0;
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](v1);
  return sub_1DF633AAC();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:radix:padded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*v12 & 1) == 0)
  {
    if (v7)
    {
      v19 = v8;
      sub_1DF63336C();
      v35 = sub_1DF632BCC();
      v36 = v20;
      (*(v6 + 16))(v11, a1, v19);
      v21 = sub_1DF632BDC();
      MEMORY[0x1E12D82E0](v21);

      v16 = v35;
      v17 = v36;
      v18 = sub_1DF63336C();
      goto LABEL_6;
    }

LABEL_7:
    (*(v6 + 16))(v11, a1, v8, v9);
    v32 = sub_1DF632BDC();
    v31 = v33;
    goto LABEL_8;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  v13 = v8;
  sub_1DF63336C();
  v35 = sub_1DF632BCC();
  v36 = v14;
  (*(v6 + 16))(v11, a1, v13);
  v15 = sub_1DF632BDC();
  MEMORY[0x1E12D82E0](v15);

  v16 = v35;
  v17 = v36;
  v18 = sub_1DF63336C() / 4;
LABEL_6:
  v22 = sub_1DF5DC700(v18, v16, v17);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = MEMORY[0x1E12D8260](v22, v24, v26, v28);
  v31 = v30;

  v32 = v29;
LABEL_8:
  MEMORY[0x1E12D82E0](v32, v31);
}

unint64_t sub_1DF60F0EC()
{
  result = qword_1ECE432B0[0];
  if (!qword_1ECE432B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECE432B0);
  }

  return result;
}

uint64_t AsyncSequence<>.unique()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v4, a1, v9);
  return sub_1DF60F230(v11, a1, a2, a3, a4);
}

uint64_t sub_1DF60F230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  *a5 = sub_1DF63280C();
  (*(v10 + 16))(v12, a1, a2);
  type metadata accessor for UniqueAsyncSequence(0, a2, a3, a4);
  sub_1DF632FCC();
  return (*(v10 + 8))(a1, a2);
}

uint64_t AsyncSequence.unique<A>(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5, a2, v11);

  return sub_1DF60F470(v13, a1, a2, a3, a4, a5);
}

uint64_t sub_1DF60F470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + *MEMORY[0x1E69E77B0] + 8);
  v17 = sub_1DF63280C();
  *a6 = a2;
  a6[1] = v17;
  (*(v12 + 16))(v14, a1, a3);
  v19[0] = a3;
  v19[1] = v16;
  v19[2] = a4;
  v19[3] = a5;
  type metadata accessor for UniqueIndirectAsyncSequence(0, v19);
  sub_1DF632FCC();
  return (*(v12 + 8))(a1, a3);
}

uint64_t UniqueAsyncSequence.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 24);
  v3[6] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v3[8] = *(AssociatedTypeWitness - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = sub_1DF63327C();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF60F778, 0, 0);
}

uint64_t sub_1DF60F778()
{
  v1 = v0[17];
  v2 = v0[7];
  v3 = v0[8];
  v4 = *(v3 + 56);
  v0[18] = v4;
  v0[19] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  sub_1DF632F7C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_1DF60F96C;
  v8 = v0[16];

  return MEMORY[0x1EEE6D8C8](v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1DF60F96C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1DF60FED4;
  }

  else
  {
    v2 = sub_1DF60FA80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF60FA80()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[7];
  v7 = v0[8];
  v8 = *(v4 + 8);
  v8(v2, v5);
  v40 = *(v4 + 32);
  v40(v2, v1, v5);
  (*(v4 + 16))(v3, v2, v5);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    v9 = v0[18];
    v10 = v0[15];
    v11 = v0[13];
    v12 = v0[7];
    v13 = v0[2];
    v8(v0[17], v11);
    v8(v10, v11);
    v9(v13, 1, 1, v12);
LABEL_7:

    v25 = v0[1];
    goto LABEL_8;
  }

  v38 = v8;
  v14 = v0[11];
  v15 = v0[12];
  v16 = v0[7];
  v17 = v0[8];
  (*(v17 + 32))(v15, v0[15], v16);
  v18 = *(v17 + 16);
  v18(v14, v15, v16);
  v19 = sub_1DF6330BC();
  v20 = v0[11];
  v21 = v0[12];
  if ((v19 & 1) == 0)
  {
    v37 = v0[13];
    v39 = v0[17];
    v35 = v0[12];
    v26 = v0[10];
    v28 = v0[7];
    v27 = v0[8];
    v36 = v0[2];
    v18(v0[9], v20, v28);
    sub_1DF6330CC();
    sub_1DF6330AC();
    v29 = *(v27 + 8);
    v29(v26, v28);
    v29(v20, v28);
    v29(v35, v28);
    v40(v36, v39, v37);
    goto LABEL_7;
  }

  v22 = v0[21];
  v23 = v0[7];
  v24 = *(v0[8] + 8);
  v24(v0[11], v23);
  v24(v21, v23);
  sub_1DF632F7C();
  if (v22)
  {
    v38(v0[17], v0[13]);

    v25 = v0[1];
LABEL_8:

    return v25();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = swift_task_alloc();
  v0[20] = v33;
  *v33 = v0;
  v33[1] = sub_1DF60F96C;
  v34 = v0[16];

  return MEMORY[0x1EEE6D8C8](v34, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1DF60FED4()
{
  (*(v0[14] + 8))(v0[17], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DF60FFC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF59D2C8;

  return UniqueAsyncSequence.next()(a1, a2);
}

uint64_t sub_1DF610068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1DF61013C;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1DF61013C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t UniqueIndirectAsyncSequence.next()(uint64_t a1, void *a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = a2[3];
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = a2[4];
  v3[11] = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[12] = AssociatedTypeWitness;
  v3[13] = *(AssociatedTypeWitness - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_1DF63327C();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF610458, 0, 0);
}

uint64_t sub_1DF610458()
{
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[13];
  v4 = *(v3 + 56);
  v0[20] = v4;
  v0[21] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  sub_1DF632F7C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_1DF61064C;
  v8 = v0[18];

  return MEMORY[0x1EEE6D8C8](v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1DF61064C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1DF610BC0;
  }

  else
  {
    v2 = sub_1DF610760;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF610760()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = *(v4 + 8);
  v8(v2, v5);
  v35 = *(v4 + 32);
  v35(v2, v1, v5);
  (*(v4 + 16))(v3, v2, v5);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    v9 = v0[20];
    v10 = v0[17];
    v11 = v0[15];
    v12 = v0[12];
    v13 = v0[2];
    v8(v0[19], v11);
    v8(v10, v11);
    v9(v13, 1, 1, v12);
LABEL_7:

    v21 = v0[1];
    goto LABEL_8;
  }

  v14 = v8;
  (*(v0[13] + 32))(v0[14], v0[17], v0[12]);
  swift_getAtKeyPath();
  v15 = sub_1DF6330BC();
  v16 = v0[13];
  v17 = v0[14];
  v18 = v0[12];
  v19 = v0[9];
  if ((v15 & 1) == 0)
  {
    v33 = v0[15];
    v34 = v0[19];
    v22 = v0[8];
    v24 = v0[5];
    v23 = v0[6];
    v31 = v0[12];
    v32 = v0[2];
    (*(v23 + 16))(v0[7], v19, v24);
    sub_1DF6330CC();
    sub_1DF6330AC();
    v25 = *(v23 + 8);
    v25(v22, v24);
    v25(v19, v24);
    (*(v16 + 8))(v17, v31);
    v35(v32, v34, v33);
    goto LABEL_7;
  }

  v20 = v0[23];
  (*(v0[6] + 8))(v0[9], v0[5]);
  (*(v16 + 8))(v17, v18);
  sub_1DF632F7C();
  if (v20)
  {
    v14(v0[19], v0[15]);

    v21 = v0[1];
LABEL_8:

    return v21();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = swift_task_alloc();
  v0[22] = v29;
  *v29 = v0;
  v29[1] = sub_1DF61064C;
  v30 = v0[18];

  return MEMORY[0x1EEE6D8C8](v30, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1DF610BC0()
{
  (*(v0[16] + 8))(v0[19], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DF610CF0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t sub_1DF610D54(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF59D2C4;

  return UniqueIndirectAsyncSequence.next()(a1, a2);
}

uint64_t sub_1DF610DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1DF611980;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1DF610ED8(void *a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_1DF6330CC();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF610FA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v11 = ((v9 + 8) & ~v9) + v10;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((a2 - v8 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 < 2)
    {
LABEL_26:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 48);

        return v18((a1 + v9 + 8) & ~v9);
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_26;
  }

LABEL_15:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v8 + (v11 | v16) + 1;
}

void sub_1DF61117C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 8) & ~v9) + *(v7 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_47:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
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
  if ((v8 & 0x80000000) != 0)
  {
    v19 = *(v7 + 56);

    v19(&a1[v9 + 8] & ~v9, a2);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v18 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v18 = (a2 - 1);
    }

    *a1 = v18;
  }
}

uint64_t sub_1DF611410(void *a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_1DF633B0C();
  if (v2 <= 0x3F)
  {
    result = sub_1DF6330CC();
    if (v3 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DF611508(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v11 = ((v9 + 16) & ~v9) + v10;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((a2 - v8 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 < 2)
    {
LABEL_26:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 48);

        return v18((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_26;
  }

LABEL_15:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v8 + (v11 | v16) + 1;
}

void sub_1DF6116E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 16) & ~v9) + *(v7 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_47:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
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
  if ((v8 & 0x80000000) != 0)
  {
    v19 = *(v7 + 56);

    v19((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9, a2);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v18 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v18 = (a2 - 1);
    }

    *a1 = v18;
  }
}

uint64_t DispatchTimer.__allocating_init(deadline:repeating:leeway:queue:block:)(uint64_t (**a1)(char *, void), char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = swift_allocObject();
  DispatchTimer.init(deadline:repeating:leeway:queue:block:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t DispatchTimer.init(deadline:repeating:leeway:queue:block:)(uint64_t (**a1)(char *, void), char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = sub_1DF6326DC();
  v80 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DF6326CC();
  v86 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v79 = (v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v82 = (v65 - v20);
  v83 = sub_1DF63271C();
  v85 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v78 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v84 = v65 - v23;
  v24 = sub_1DF6331DC();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1DF6331BC();
  v69 = *(v70 - 1);
  MEMORY[0x1EEE9AC00](v70);
  v68 = v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1DF6331AC();
  MEMORY[0x1EEE9AC00](v66);
  v67 = v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1DF6326FC();
  MEMORY[0x1EEE9AC00](v30);
  v81 = v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 16) = 0x408F400000000000;
  v34 = a4 * 1000.0;
  v35 = 2147483650.0;
  if (v34 < 2147483650.0)
  {
    v35 = v34;
    if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  if (v35 <= -2147483650.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v35 >= 2147483650.0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  a5 = a5 * 1000.0;
  *(v7 + 24) = v35;
  v36 = 2147483650.0;
  if (a5 < 2147483650.0)
  {
    v36 = a5;
    if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_30;
    }
  }

  if (v36 <= -2147483650.0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v36 >= 2147483650.0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  a6 = a6 * 1000.0;
  *(v7 + 28) = v36;
  v37 = 2147483650.0;
  if (a6 < 2147483650.0)
  {
    v37 = a6;
    if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_33;
    }
  }

  if (v37 <= -2147483650.0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v37 >= 2147483650.0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_17;
  }

  v71 = v25;
  v72 = v24;
  v73 = v32;
  v74 = v31;
  *(v7 + 32) = v37;
  if (v34 <= 2147483650.0 && a5 <= 2147483650.0 && a6 <= 2147483650.0)
  {
    goto LABEL_20;
  }

  v77 = v17;
  v17 = v14;
  v14 = v16;
  v16 = a2;
  v25 = a1;
  if (qword_1ECE42580 != -1)
  {
    goto LABEL_36;
  }

LABEL_17:
  v38 = sub_1DF6326AC();
  __swift_project_value_buffer(v38, qword_1ECE4BDA8);
  v39 = sub_1DF63268C();
  v40 = sub_1DF63316C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134218752;
    *(v41 + 4) = 0x41DFFFFFFFC00000;
    *(v41 + 12) = 2048;
    *(v41 + 14) = v34;
    *(v41 + 22) = 2048;
    *(v41 + 24) = a5;
    *(v41 + 32) = 2048;
    *(v41 + 34) = a6;
    _os_log_impl(&dword_1DF59A000, v39, v40, "DispatchTimer: Exceeded maximum value of %f: deadline: %f, repeating: %f, leeway: %f", v41, 0x2Au);
    MEMORY[0x1E12D9D80](v41, -1, -1);
  }

  a1 = v25;
  a2 = v16;
  v16 = v14;
  v14 = v17;
  v17 = v77;
LABEL_20:
  v77 = v14;
  *(v7 + 48) = a2;
  *(v7 + 56) = a3;
  v42 = MEMORY[0x1E69E7CC0];
  v76 = a3;
  v75 = v16;
  if (a1)
  {

    v43 = a1;
  }

  else
  {
    v65[1] = sub_1DF60359C(0, &qword_1ECE433C0, 0x1E69E9610);

    sub_1DF6326EC();
    aBlock[0] = v42;
    sub_1DF612978(&qword_1ECE433C8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE433D0, &qword_1DF63BB80);
    sub_1DF6129C0(&qword_1ECE433D8, &qword_1ECE433D0, &qword_1DF63BB80);
    sub_1DF6333CC();
    (v69[13])(v68, *MEMORY[0x1E69E8090], v70);
    v44 = sub_1DF6331CC();
    a1 = 0;
    v42 = MEMORY[0x1E69E7CC0];
    v43 = v44;
  }

  *(v7 + 64) = v43;
  sub_1DF60359C(0, &qword_1ECE422F0, 0x1E69E9630);
  aBlock[0] = v42;
  sub_1DF612978(&unk_1ECE422F8, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  v70 = a1;
  v69 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE433E0, &qword_1DF63BB88);
  sub_1DF6129C0(&qword_1ECE42328, &qword_1ECE433E0, &qword_1DF63BB88);
  v45 = v72;
  sub_1DF6333CC();
  v46 = sub_1DF6331EC();
  v71[1](v27, v45);
  *(v7 + 40) = v46;
  v47 = v78;
  sub_1DF63270C();
  v48 = v82;
  *v82 = *(v7 + 24);
  v49 = *MEMORY[0x1E69E7F38];
  v50 = v86;
  v51 = *(v86 + 104);
  v51(v48, v49, v17);
  MEMORY[0x1E12D7EF0](v47, v48);
  v52 = v17;
  v72 = *(v50 + 8);
  v72(v48, v17);
  v53 = v85 + 8;
  v78 = *(v85 + 8);
  (v78)(v47, v83);
  v54 = *(v7 + 28);
  v85 = v53;
  if (v54 < 1)
  {
    v56 = *MEMORY[0x1E69E7F40];
    v55 = v79;
  }

  else
  {
    v55 = v79;
    *v79 = v54;
    v56 = v49;
  }

  v51(v55, v56, v17);
  ObjectType = swift_getObjectType();
  v58 = v82;
  *v82 = *(v7 + 32);
  v51(v58, v49, v17);
  MEMORY[0x1E12D8A00](v84, v55, v58, ObjectType);
  v86 = v50 + 8;
  v59 = v72;
  v72(v58, v17);
  swift_getObjectType();
  v60 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1DF6126B0;
  aBlock[5] = v60;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF6126B8;
  aBlock[3] = &block_descriptor;
  v61 = _Block_copy(aBlock);

  v62 = v81;
  sub_1DF6326EC();
  v63 = v75;
  sub_1DF6126FC();
  sub_1DF63320C();
  _Block_release(v61);

  (*(v80 + 8))(v63, v77);
  (*(v73 + 8))(v62, v74);
  v59(v55, v52);
  (v78)(v84, v83);

  return v7;
}

uint64_t sub_1DF612638(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 48);

    v2(v3);
  }

  return result;
}

uint64_t sub_1DF6126B8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1DF6126FC()
{
  sub_1DF6326DC();
  sub_1DF612978(&qword_1ECE42340, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE433E8, &qword_1DF63BC00);
  sub_1DF6129C0(&unk_1ECE42330, &qword_1ECE433E8, &qword_1DF63BC00);
  return sub_1DF6333CC();
}

uint64_t DispatchTimer.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t DispatchTimer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DF6128A4()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ECE4BDA8);
  __swift_project_value_buffer(v0, qword_1ECE4BDA8);
  return sub_1DF63269C();
}

uint64_t sub_1DF612978(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DF6129C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t DateParsingStrategy.Error.hashValue.getter()
{
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](0);
  return sub_1DF633AAC();
}

id sub_1DF612AAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  result = [v5 setFormatOptions_];
  *a3 = v5;
  return result;
}

void sub_1DF612B08()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1DF63295C();
  [v0 setDateFormat_];

  qword_1ECE43400 = v0;
}

uint64_t DateParsingStrategy.parse(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v4 = sub_1DF63252C();
  v47 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D00, &qword_1DF63B250);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v43 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v43 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v43 - v16;
  if (qword_1ECE42590 != -1)
  {
    swift_once();
  }

  v18 = qword_1ECE433F8;
  v19 = a2;
  v20 = sub_1DF63295C();
  v21 = [v18 dateFromString_];

  if (v21)
  {
    sub_1DF6324FC();

    v22 = v47;
    v23 = *(v47 + 32);
    v23(v14, v6, v4);
    v24 = *(v22 + 56);
    v24(v14, 0, 1, v4);
    v23(v17, v14, v4);
    v24(v17, 0, 1, v4);
    v25 = (*(v22 + 48))(v17, 1, v4);
  }

  else
  {
    v43[1] = v19;
    v44 = v11;
    v22 = v47;
    v26 = *(v47 + 56);
    v43[0] = v14;
    v27 = v14;
    v28 = v26;
    v26(v27, 1, 1, v4);
    if (qword_1ECE42588 != -1)
    {
      swift_once();
    }

    v29 = qword_1ECE433F0;
    v30 = sub_1DF63295C();
    v31 = [v29 dateFromString_];

    if (v31)
    {
      sub_1DF6324FC();

      v32 = *(v22 + 32);
      v33 = v44;
      v32(v44, v6, v4);
      v28(v33, 0, 1, v4);
      v32(v17, v33, v4);
      v28(v17, 0, 1, v4);
      v34 = *(v22 + 48);
    }

    else
    {
      v28(v44, 1, 1, v4);
      if (qword_1ECE42598 != -1)
      {
        swift_once();
      }

      v35 = qword_1ECE43400;
      v36 = sub_1DF63295C();
      v37 = [v35 dateFromString_];

      if (v37)
      {
        v38 = v45;
        sub_1DF6324FC();

        v39 = 0;
      }

      else
      {
        v39 = 1;
        v38 = v45;
      }

      v28(v38, v39, 1, v4);
      sub_1DF6130F4(v38, v17);
      v34 = *(v22 + 48);
      v40 = v44;
      if (v34(v44, 1, v4) != 1)
      {
        sub_1DF5BAC4C(v40);
      }
    }

    v41 = v43[0];
    if (v34(v43[0], 1, v4) != 1)
    {
      sub_1DF5BAC4C(v41);
    }

    v25 = v34(v17, 1, v4);
  }

  if (v25 != 1)
  {
    return (*(v22 + 32))(v46, v17, v4);
  }

  sub_1DF5BAC4C(v17);
  sub_1DF613164();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1DF6130F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D00, &qword_1DF63B250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DF613164()
{
  result = qword_1ECE43408;
  if (!qword_1ECE43408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43408);
  }

  return result;
}

uint64_t sub_1DF6131C0(uint64_t a1)
{
  v2 = sub_1DF61334C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6131FC(uint64_t a1)
{
  v2 = sub_1DF61334C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateParsingStrategy.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43410, &qword_1DF63BC08);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF61334C();
  sub_1DF633AFC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DF61334C()
{
  result = qword_1ECE43418;
  if (!qword_1ECE43418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43418);
  }

  return result;
}

uint64_t sub_1DF613424(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43410, &qword_1DF63BC08);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF61334C();
  sub_1DF633AFC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DF61353C()
{
  result = qword_1ECE43420;
  if (!qword_1ECE43420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43420);
  }

  return result;
}

unint64_t sub_1DF613594()
{
  result = qword_1ECE43428;
  if (!qword_1ECE43428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43428);
  }

  return result;
}

unint64_t sub_1DF6135EC()
{
  result = qword_1ECE43430;
  if (!qword_1ECE43430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43430);
  }

  return result;
}

unint64_t sub_1DF613644()
{
  result = qword_1ECE43438;
  if (!qword_1ECE43438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43438);
  }

  return result;
}

unint64_t sub_1DF61369C()
{
  result = qword_1ECE43440;
  if (!qword_1ECE43440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43440);
  }

  return result;
}

unint64_t sub_1DF613724()
{
  result = qword_1ECE43448;
  if (!qword_1ECE43448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43448);
  }

  return result;
}

unint64_t sub_1DF61377C()
{
  result = qword_1ECE43450;
  if (!qword_1ECE43450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43450);
  }

  return result;
}

uint64_t FM.XPCSession.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1ED8E6A28;
  v4 = sub_1DF6325AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *FM.XPCSession.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1ED8E5990 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF6326AC();
  __swift_project_value_buffer(v3, qword_1ED8E69B8);

  v4 = sub_1DF63268C();
  v5 = sub_1DF63315C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    type metadata accessor for FM.XPCSession(0, *(v2 + 80), v8, v9);

    v10 = sub_1DF632A3C();
    v12 = sub_1DF59EEC8(v10, v11, &v19);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_1DF59A000, v4, v5, "Deallocating %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12D9D80](v7, -1, -1);
    MEMORY[0x1E12D9D80](v6, -1, -1);
  }

  v13 = qword_1ED8E5D70;
  v14 = *(v1 + qword_1ED8E5D70);
  if (v14)
  {
    [v14 invalidate];
    v15 = *(v1 + v13);
  }

  else
  {
    v15 = 0;
  }

  *(v1 + v13) = 0;

  v16 = qword_1ED8E6A28;
  v17 = sub_1DF6325AC();
  (*(*(v17 - 8) + 8))(v1 + v16, v17);
  sub_1DF5A8528(v1 + qword_1ED8E6A20);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t FM.XPCSession.__deallocating_deinit()
{
  FM.XPCSession.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF613AD0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1DF6325AC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = sub_1DF613BFC;

  return sub_1DF5A419C();
}

uint64_t sub_1DF613BFC(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF613D40, v2, 0);
}

uint64_t sub_1DF613D40()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v0[2] = v1;
  v7 = sub_1DF5B2644((v0 + 2), (v0 + 3));
  v9 = v8;
  sub_1DF5B1CE8(v7, v8, v2);
  sub_1DF5B33C0(v7, v9);

  v0[3] = v6;
  v10 = sub_1DF5B2644((v0 + 3), (v0 + 4));
  v12 = v11;
  sub_1DF5B1CE8(v10, v11, v3);
  sub_1DF5B33C0(v10, v12);
  MyBase10IdentifierV2eeoiySbACyxG_AEtFZ_0 = _s10FindMyBase10IdentifierV2eeoiySbACyxG_AEtFZ_0();
  v14 = *(v5 + 8);
  v14(v3, v4);
  v14(v2, v4);

  v15 = v0[1];

  return v15(MyBase10IdentifierV2eeoiySbACyxG_AEtFZ_0 & 1);
}

uint64_t sub_1DF613EA4()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DF613F34;

  return sub_1DF5A419C();
}

uint64_t sub_1DF613F34(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF61404C, v2, 0);
}

uint64_t sub_1DF61404C()
{
  v1 = *(v0 + 32);
  [v1 suspend];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF6140BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF59D2C8;

  return sub_1DF61454C();
}

void sub_1DF614148(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1DF6141B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = *v3;
  v5 = swift_task_alloc();
  v4[17] = v5;
  *v5 = v4;
  v5[1] = sub_1DF61426C;

  return sub_1DF5A419C();
}

uint64_t sub_1DF61426C(uint64_t a1)
{
  v2 = *(*v1 + 120);
  *(*v1 + 144) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF614384, v2, 0);
}

uint64_t sub_1DF614384()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  v0[6] = v0[13];
  v0[7] = v3;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1DF614148;
  v0[5] = &block_descriptor_10;
  v5 = _Block_copy(v0 + 2);

  v6 = [v1 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v5);

  sub_1DF63339C();
  swift_unknownObjectRelease();
  v7 = *(v2 + 80);
  v8 = swift_dynamicCast();
  (*(*(v7 - 8) + 56))(v4, v8 ^ 1u, 1, v7);
  v9 = v0[1];

  return v9();
}

void sub_1DF6144FC()
{
  [*(v0 + qword_1ED8E5D70) invalidate];
  v1 = *(v0 + qword_1ED8E5D70);
  *(v0 + qword_1ED8E5D70) = 0;
}

uint64_t sub_1DF61456C()
{
  v1 = *(v0 + 16);
  [*(v1 + qword_1ED8E5D70) invalidate];
  v2 = *(v1 + qword_1ED8E5D70);
  *(v1 + qword_1ED8E5D70) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t FM.XPCSession.hashValue.getter()
{
  sub_1DF633A6C();
  FM.XPCSession.hash(into:)(v1);
  return sub_1DF633AAC();
}

uint64_t sub_1DF6146A0(uint64_t a1)
{
  sub_1DF633A6C();
  FM.XPCSession.hash(into:)(v2);
  return sub_1DF633AAC();
}

uint64_t XPCSessionError.hashValue.getter()
{
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](0);
  return sub_1DF633AAC();
}

void NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 32;
    do
    {
      v7 += 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43460, &qword_1DF63BEE8);
      [v5 addObject_];
      swift_unknownObjectRelease();
      --v6;
    }

    while (v6);
  }

  v8 = v5;
  sub_1DF63308C();

  sub_1DF6336EC();
  __break(1u);
}

uint64_t NSXPCConnection.shortDescription.getter()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43468, &qword_1DF63BEF0);
  v0 = sub_1DF632A5C();
  MEMORY[0x1E12D82E0](v0);

  MEMORY[0x1E12D82E0](2016419898, 0xE400000000000000);
  sub_1DF5B9E58();
  v1 = sub_1DF632BDC();
  MEMORY[0x1E12D82E0](v1);

  MEMORY[0x1E12D82E0](62, 0xE100000000000000);
  return 60;
}