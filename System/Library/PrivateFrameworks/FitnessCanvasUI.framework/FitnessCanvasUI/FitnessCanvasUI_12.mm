uint64_t sub_1E6874F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a1;
  v36 = a3;
  v32 = a2;
  v3 = *(*a2 + 88);
  v4 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedTypeWitness();
  v29 = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = swift_getAssociatedConformanceWitness();
  v30 = swift_getAssociatedConformanceWitness();
  v52 = swift_getAssociatedConformanceWitness();
  v38 = AssociatedTypeWitness;
  v39 = v31;
  v40 = v29;
  v41 = v5;
  AssociatedTypeWitness = v5;
  v42 = v6;
  v43 = v7;
  v44 = AssociatedConformanceWitness;
  v45 = v33;
  v46 = v30;
  v47 = v52;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = AssociatedConformanceWitness;
  v49 = swift_getAssociatedConformanceWitness();
  v33 = v49;
  v50 = swift_getAssociatedConformanceWitness();
  v51 = swift_getAssociatedConformanceWitness();
  v31 = type metadata accessor for LazyCanvasItemDescriptor(0, &v38);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v8);
  v30 = &v28 - v9;
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v28 - v13;
  v15 = sub_1E68B1990();
  swift_beginAccess();

  v16 = sub_1E68B3380();

  if (v15 >= v16)
  {
    goto LABEL_6;
  }

  sub_1E68B1990();
  swift_beginAccess();

  sub_1E68B33F0();

  v17 = sub_1E68B1970();
  v18 = *(v3 + 128);
  v18(v4, v3);
  v19 = sub_1E68B3380();

  if (v17 >= v19)
  {
    (*(v10 + 8))(v14, v4);
LABEL_6:
    v38 = AssociatedTypeWitness;
    v39 = v52;
    v40 = AssociatedConformanceWitness;
    v41 = v33;
    v26 = type metadata accessor for CanvasItemPlaceholder(0, &v38);
    return (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
  }

  v18(v4, v3);
  sub_1E68B1970();
  v20 = v30;
  sub_1E68B33F0();

  (*(v10 + 8))(v14, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = v36;
  v38 = AssociatedTypeWitness;
  v39 = v52;
  v40 = AssociatedConformanceWitness;
  v41 = v33;
  if (EnumCaseMultiPayload == 1)
  {
    v23 = type metadata accessor for CanvasItemPlaceholder(0, &v38);
    v24 = *(v23 - 8);
    (*(v24 + 32))(v22, v20, v23);
    return (*(v24 + 56))(v22, 0, 1, v23);
  }

  else
  {
    v27 = type metadata accessor for CanvasItemPlaceholder(0, &v38);
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
    return (*(v29 + 8))(v20, v31);
  }
}

uint64_t sub_1E687563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[13] = *a5;
  return MEMORY[0x1EEE6DFA0](sub_1E6875684, a5, 0);
}

uint64_t sub_1E6875684()
{
  v29 = v0;
  if (qword_1EE2EAA00 != -1)
  {
    swift_once();
  }

  v1 = sub_1E68B1AE0();
  v0[14] = __swift_project_value_buffer(v1, qword_1EE2F8440);

  v2 = sub_1E68B1AC0();
  v3 = sub_1E68B3710();
  if (os_log_type_enabled(v2, v3))
  {
    v25 = v0[11];
    v4 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v4 = 136315138;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = swift_getAssociatedConformanceWitness();
    v8 = swift_getAssociatedConformanceWitness();
    v0[6] = AssociatedTypeWitness;
    v0[7] = AssociatedConformanceWitness;
    v0[8] = v7;
    v0[9] = v8;
    v9 = type metadata accessor for CanvasItemPlaceholder(0, (v0 + 6));
    v10 = MEMORY[0x1E6951B80](v25, v9);
    v12 = v11;

    v13 = sub_1E683B478(v10, v12, &v28);

    *(v4 + 4) = v13;
    _os_log_impl(&dword_1E6725000, v2, v3, "Retrying placeholders: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1E6952A70](v26, -1, -1);
    MEMORY[0x1E6952A70](v4, -1, -1);
  }

  else
  {
  }

  v14 = v0[12];
  v15 = v0[11];
  v16 = v14[20];
  v27 = v14[19];
  __swift_project_boxed_opaque_existential_1(v14 + 16, v27);
  v0[10] = v15;
  v17 = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();

  v0[2] = v17;
  v0[3] = v18;
  v0[4] = v19;
  v0[5] = v20;
  type metadata accessor for CanvasItemPlaceholder(0, (v0 + 2));
  sub_1E68B33B0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v21 = sub_1E68B3640();
  v0[15] = v21;
  v24 = (*(v16 + 120) + **(v16 + 120));
  v22 = swift_task_alloc();
  v0[16] = v22;
  *v22 = v0;
  v22[1] = sub_1E6875AE8;

  return v24(v21, v27, v16);
}

uint64_t sub_1E6875AE8()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {
    v3 = v2[12];

    return MEMORY[0x1EEE6DFA0](sub_1E6875C24, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1E6875C24()
{
  v1 = *(v0 + 136);

  MEMORY[0x1E6952820](v1);
  v2 = sub_1E68B1AC0();
  v3 = sub_1E68B3720();
  MEMORY[0x1E6952810](v1);
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 136);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x1E6952820](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_1E6725000, v2, v3, "Failed to fetch previous placeholder: %@", v6, 0xCu);
    sub_1E6744A10(v7, &qword_1ED099D10, &qword_1E68C5458);
    MEMORY[0x1E6952A70](v7, -1, -1);
    MEMORY[0x1E6952A70](v6, -1, -1);
    MEMORY[0x1E6952810](v5);
  }

  else
  {

    MEMORY[0x1E6952810](v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t LazyCanvasItemPlaceholderFetcher.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 128));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t LazyCanvasItemPlaceholderFetcher.__deallocating_deinit()
{
  LazyCanvasItemPlaceholderFetcher.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E6875E14(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E68B19A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1E6878250(&qword_1ED099D20, MEMORY[0x1E6969C38]);
  v34 = a2;
  v12 = sub_1E68B3130();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1E6878250(&qword_1ED099D28, MEMORY[0x1E6969C50]);
      v22 = sub_1E68B3190();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1E687673C(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1E68760CC(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D38, &qword_1E68C5498);
  result = sub_1E68B37E0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
LABEL_13:
      sub_1E68B3B70();
      MEMORY[0x1E69523D0](0);
      result = sub_1E68B3BB0();
      v14 = -1 << *(v4 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) == 0)
      {
        v17 = 0;
        v18 = (63 - v14) >> 6;
        while (++v16 != v18 || (v17 & 1) == 0)
        {
          v19 = v16 == v18;
          if (v16 == v18)
          {
            v16 = 0;
          }

          v17 |= v19;
          v20 = *(v11 + 8 * v16);
          if (v20 != -1)
          {
            v12 = __clz(__rbit64(~v20)) + (v16 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v15) & ~*(v11 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v9 &= v9 - 1;
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      ++*(v4 + 16);
    }

    while (1)
    {
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = v6[v13];
      ++v5;
      if (v9)
      {
        v5 = v13;
        goto LABEL_13;
      }
    }

    v21 = 1 << *(v2 + 32);
    if (v21 >= 64)
    {
      bzero((v2 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v21;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1E68762E4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E68B19A0();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D30, &qword_1E68C5490);
  result = sub_1E68B37E0();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1E6878250(&qword_1ED099D20, MEMORY[0x1E6969C38]);
      result = sub_1E68B3130();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

unint64_t sub_1E687662C(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1E68760CC(v3 + 1);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_1E6876CFC(v3 + 1);
LABEL_8:
      v6 = *v2;
      sub_1E68B3B70();
      MEMORY[0x1E69523D0](0);
      result = sub_1E68B3BB0() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_1E68769B8();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_1E68B3B10();
  __break(1u);
  return result;
}

uint64_t sub_1E687673C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1E68B19A0();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E68762E4(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1E6876AC4();
      goto LABEL_12;
    }

    sub_1E6876ED8(v12 + 1);
  }

  v14 = *v3;
  sub_1E6878250(&qword_1ED099D20, MEMORY[0x1E6969C38]);
  v15 = sub_1E68B3130();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1E6878250(&qword_1ED099D28, MEMORY[0x1E6969C50]);
      v23 = sub_1E68B3190();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E68B3B10();
  __break(1u);
  return result;
}

void *sub_1E68769B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D38, &qword_1E68C5498);
  v2 = *v0;
  v3 = sub_1E68B37D0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

void *sub_1E6876AC4()
{
  v1 = v0;
  v2 = sub_1E68B19A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D30, &qword_1E68C5490);
  v7 = *v0;
  v8 = sub_1E68B37D0();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1E6876CFC(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D38, &qword_1E68C5498);
  result = sub_1E68B37E0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
LABEL_13:
      sub_1E68B3B70();
      MEMORY[0x1E69523D0](0);
      result = sub_1E68B3BB0();
      v13 = -1 << *(v4 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) == 0)
      {
        v16 = 0;
        v17 = (63 - v13) >> 6;
        while (++v15 != v17 || (v16 & 1) == 0)
        {
          v18 = v15 == v17;
          if (v15 == v17)
          {
            v15 = 0;
          }

          v16 |= v18;
          v19 = *(v10 + 8 * v15);
          if (v19 != -1)
          {
            v11 = __clz(__rbit64(~v19)) + (v15 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_24;
      }

      v11 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v8 &= v8 - 1;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++*(v4 + 16);
    }

    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_22;
      }

      v8 = *(v2 + 56 + 8 * v12);
      ++v5;
      if (v8)
      {
        v5 = v12;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E6876ED8(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1E68B19A0();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D30, &qword_1E68C5490);
  v8 = sub_1E68B37E0();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1E6878250(&qword_1ED099D20, MEMORY[0x1E6969C38]);
      result = sub_1E68B3130();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v2 = v8;
  }

  return result;
}

uint64_t *sub_1E6877214(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_defaultActor_initialize();
  v8 = sub_1E68B3350();
  v5[21] = MEMORY[0x1E69E7CD0];
  v5[14] = v8;
  v5[15] = a1;
  v28 = a2;
  v9 = a2[4];
  v25 = v9;
  v26 = a2[3];
  __swift_project_boxed_opaque_existential_1(a2, v26);
  v27 = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v27(v31, a3, a4, AssociatedTypeWitness, v22, v21, v10, v11, v19, AssociatedConformanceWitness, v20, v18, v12, v13, v14, v15, v16, v26, v25);
  sub_1E6739D3C(v31, (v5 + 16));
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v5;
}

unint64_t sub_1E6877538()
{
  result = qword_1EE2EA4B0;
  if (!qword_1EE2EA4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983A8, &qword_1E68BBA18);
    sub_1E67D6FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA4B0);
  }

  return result;
}

uint64_t sub_1E68775F8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E6782994;

  return sub_1E6871FE0(a1, a2, v7, v6);
}

uint64_t sub_1E68776EC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E6782994;

  return sub_1E6873DD8(a1, a2, v7, v6);
}

uint64_t dispatch thunk of LazyCanvasItemPlaceholderFetcher.fetchItems(at:)(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E6782994;

  return v6(a1);
}

uint64_t dispatch thunk of LazyCanvasItemPlaceholderFetcher.onItemAppeared(at:)(uint64_t a1)
{
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E67825C0;

  return v6(a1);
}

uint64_t dispatch thunk of LazyCanvasItemPlaceholderFetcher.invalidateAllPlaceholders()()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E6782994;

  return v4();
}

uint64_t dispatch thunk of LazyCanvasItemPlaceholderFetcher.invalidatePlaceholders(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 216) + **(*v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E6782994;

  return v6(a1);
}

uint64_t dispatch thunk of LazyCanvasItemPlaceholderFetcher.transformDescriptors<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 224) + **(*v4 + 224));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1E6782994;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LazyCanvasItemPlaceholderFetcher.updateLazySectionDescriptors(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 232) + **(*v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E67825C0;

  return v6(a1);
}

uint64_t sub_1E6877F6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E6782994;

  return sub_1E687563C(a1, v4, v5, v7, v6);
}

uint64_t sub_1E687802C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E6782994;

  return sub_1E6874478(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_9(void (*a1)(void), void (*a2)(void))
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));
  a2(*(v2 + 40));

  return swift_deallocObject();
}

uint64_t sub_1E6878174(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E6782994;

  return sub_1E687254C(a1, v4, v5, v7, v6);
}

uint64_t sub_1E6878250(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E68B19A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E68782B8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = *a1;
  v22 = *(a1 + 1);
  v23 = *(a1 + 2);
  v24 = *(a1 + 3);
  v25 = a1[32];
  v26 = *(a1 + 5);
  v27 = *(a1 + 6);
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8, &qword_1E68B4950);
  swift_storeEnumTagMultiPayload();
  v29 = type metadata accessor for StandardVerticalStackView(0, a17, a18, v28);
  v30 = &a9[v29[9]];
  *v30 = v21;
  *(v30 + 1) = v22;
  *(v30 + 2) = v23;
  *(v30 + 3) = v24;
  v30[32] = v25;
  *(v30 + 5) = v26;
  *(v30 + 6) = v27;
  (*(*(a17 - 8) + 32))(&a9[v29[10]], a2, a17);
  v31 = &a9[v29[11]];
  *v31 = a3;
  *(v31 + 1) = a4;
  *(v31 + 2) = a5;
  *(v31 + 3) = a6;
  v32 = &a9[v29[12]];
  *v32 = a7;
  *(v32 + 1) = a8;
  *(v32 + 2) = a10;
  *(v32 + 3) = a11;
  v33 = &a9[v29[13]];
  *v33 = a12;
  *(v33 + 2) = a13;
  *(v33 + 3) = a14;
  v34 = &a9[v29[14]];
  result = swift_allocObject();
  *(result + 16) = a15;
  *(result + 24) = a16;
  *v34 = sub_1E673F5E0;
  *(v34 + 1) = result;
  return result;
}

double static StandardVerticalStackViewLayout.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EE2EAB80 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_1EE2EABA0;
  v2 = byte_1EE2EABA8;
  result = *&qword_1EE2EABB0;
  v4 = qword_1EE2EABB8;
  *a1 = byte_1EE2EAB88;
  *(a1 + 8) = *&algn_1EE2EAB89[7];
  *(a1 + 24) = v1;
  *(a1 + 32) = v2;
  *(a1 + 40) = result;
  *(a1 + 48) = v4;
  return result;
}

_BYTE *StandardVerticalStackViewLayout.init(alignment:artworkAspectRatio:artworkClipShape:artworkToCaptionSpacing:titleLineLimit:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  *a5 = *result;
  *(a5 + 8) = a6;
  *(a5 + 16) = a7;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3 & 1;
  *(a5 + 40) = a8;
  *(a5 + 48) = a4;
  return result;
}

unint64_t sub_1E6878588()
{
  v1 = *v0;
  v2 = 0x6E656D6E67696C61;
  v3 = 0xD000000000000017;
  if (v1 != 3)
  {
    v3 = 0x6E694C656C746974;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1E6878638@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E687B978(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E6878660(uint64_t a1)
{
  v2 = sub_1E687ABA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E687869C(uint64_t a1)
{
  v2 = sub_1E687ABA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E68786D8(uint64_t a1)
{
  v1 = 8.0;
  if (sub_1E68B2DF0())
  {
    sub_1E68B1A40();
    v1 = v2;
  }

  byte_1EE2EAB88 = 0;
  result = 16.0;
  *&algn_1EE2EAB89[7] = xmmword_1E68BE010;
  qword_1EE2EABA0 = *&v1;
  byte_1EE2EABA8 = 0;
  qword_1EE2EABB0 = 0x4024000000000000;
  qword_1EE2EABB8 = 2;
  return result;
}

uint64_t StandardVerticalStackViewLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D40, &qword_1E68C54A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 2);
  v17 = *(v1 + 3);
  v16 = v1[32];
  v15 = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E687ABA8();
  sub_1E68B3BD0();
  LOBYTE(v18) = v9;
  v20 = 0;
  sub_1E687ABFC();
  sub_1E68B3AB0();
  if (!v2)
  {
    v12 = v16;
    v13 = v17;
    v18 = v10;
    v19 = v11;
    v20 = 1;
    type metadata accessor for CGSize(0);
    sub_1E687B81C(&qword_1EE2EA448, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
    sub_1E68B3AB0();
    v18 = v13;
    LOBYTE(v19) = v12;
    v20 = 2;
    sub_1E680421C();
    sub_1E68B3AB0();
    LOBYTE(v18) = 3;
    sub_1E68B3A90();
    LOBYTE(v18) = 4;
    sub_1E68B3AA0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t StandardVerticalStackViewLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D48, &qword_1E68C54A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E687ABA8();
  sub_1E68B3BC0();
  if (!v2)
  {
    v20 = 0;
    sub_1E687AC50();
    sub_1E68B3A00();
    v21 = v18;
    type metadata accessor for CGSize(0);
    v20 = 1;
    sub_1E687B81C(&qword_1ED096DC0, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    sub_1E68B3A00();
    v10 = v18;
    v11 = v19;
    v20 = 2;
    sub_1E68042C4();
    sub_1E68B3A00();
    v12 = v18;
    v13 = v19;
    LOBYTE(v18) = 3;
    sub_1E68B39E0();
    v16 = v15;
    LOBYTE(v18) = 4;
    v17 = sub_1E68B39F0();
    (*(v6 + 8))(v9, v5);
    *a2 = v21;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 40) = v16;
    *(a2 + 48) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t StandardVerticalStackViewLayout.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 32);
  v5 = v0[5];
  v6 = *(v0 + 6);
  MEMORY[0x1E69523D0](*v0);
  sub_1E673E7F4(v1, v2);
  if (v4)
  {
    MEMORY[0x1E69523D0](1);
  }

  else
  {
    MEMORY[0x1E69523D0](0);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x1E69523F0](v7);
  }

  v8 = 0.0;
  if (v5 != 0.0)
  {
    v8 = v5;
  }

  MEMORY[0x1E69523F0](*&v8);
  return MEMORY[0x1E69523D0](v6);
}

uint64_t StandardVerticalStackViewLayout.hashValue.getter()
{
  sub_1E68B3B70();
  StandardVerticalStackViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E6878DE4()
{
  sub_1E68B3B70();
  StandardVerticalStackViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E6878E5C(uint64_t a1)
{
  sub_1E68B3B70();
  StandardVerticalStackViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E6878ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = sub_1E68B1EB0();
  v46 = v4;
  v56 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v55 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  v54 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(a1 + 16);
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099D68, &qword_1E68C5760);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v65 = sub_1E68B2C50();
  v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0978B0, &qword_1E68B7690);
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099D70, &qword_1E68C5768);
  v69 = v68;
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E08, &qword_1E68B7610);
  v12 = sub_1E68B1E40();
  WitnessTable = swift_getWitnessTable();
  v64 = MEMORY[0x1E697E040];
  v13 = swift_getWitnessTable();
  v14 = sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08, &qword_1E68B7610, MEMORY[0x1E697FD58]);
  v61 = v13;
  v62 = v14;
  v51 = v12;
  v50 = swift_getWitnessTable();
  v15 = sub_1E68B2C30();
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v47 = &v42 - v17;
  v18 = swift_getWitnessTable();
  v45 = v18;
  v44 = sub_1E687B81C(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v65 = v15;
  v66 = v4;
  v67 = v18;
  v68 = v44;
  v48 = MEMORY[0x1E697CDB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v43 = &v42 - v26;
  v27 = v11;
  (*(v7 + 16))(v11, v2, a1, v25);
  v28 = v7;
  v29 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v30 = swift_allocObject();
  v31 = a1;
  v32 = *(a1 + 24);
  v33 = v53;
  *(v30 + 16) = v53;
  *(v30 + 24) = v32;
  (*(v28 + 32))(v30 + v29, v27, v31);
  v58 = v33;
  v59 = v32;
  v60 = v2;
  v34 = v47;
  sub_1E68B2C20();
  v35 = v55;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  v36 = v46;
  v37 = v45;
  v38 = v44;
  sub_1E68B2790();
  (*(v56 + 8))(v35, v36);
  (*(v52 + 8))(v34, v15);
  v65 = v15;
  v66 = v36;
  v67 = v37;
  v68 = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v43;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v40 = *(v49 + 8);
  v40(v22, OpaqueTypeMetadata2);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v40)(v39, OpaqueTypeMetadata2);
}

uint64_t sub_1E68795C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for StandardVerticalStackView(0, a2, a3, a4) + 56);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;

  sub_1E677A174(v5);
}

uint64_t sub_1E6879644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a1;
  v39 = a4;
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099D68, &qword_1E68C5760);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v44 = sub_1E68B2C50();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0978B0, &qword_1E68B7690);
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099D70, &qword_1E68C5768);
  v48 = v47;
  swift_getTupleTypeMetadata();
  v6 = sub_1E68B2F00();
  v33[1] = swift_getWitnessTable();
  v33[2] = v6;
  v7 = sub_1E68B2CC0();
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v33 - v9;
  v11 = sub_1E68B1E40();
  v36 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v33 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E08, &qword_1E68B7610);
  v15 = sub_1E68B1E40();
  v37 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v35 = v33 - v21;
  v23 = type metadata accessor for StandardVerticalStackView(0, a2, a3, v22);
  v24 = v38;
  if (*(v38 + *(v23 + 36)))
  {
    v25 = sub_1E68B21C0();
  }

  else
  {
    v25 = sub_1E68B21D0();
  }

  MEMORY[0x1EEE9AC00](v25, v26);
  v33[-4] = a2;
  v33[-3] = a3;
  v33[-2] = v24;
  sub_1E68B2CB0();
  sub_1E68B2E60();
  WitnessTable = swift_getWitnessTable();
  sub_1E68B29F0();
  (*(v34 + 8))(v10, v7);
  v42 = WitnessTable;
  v43 = MEMORY[0x1E697E040];
  v28 = swift_getWitnessTable();
  sub_1E673F180();
  sub_1E68B2800();
  (*(v36 + 8))(v14, v11);
  v29 = sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08, &qword_1E68B7610, MEMORY[0x1E697FD58]);
  v40 = v28;
  v41 = v29;
  swift_getWitnessTable();
  v30 = v35;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v31 = *(v37 + 8);
  v31(v18, v15);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v31)(v30, v15);
}

uint64_t sub_1E6879B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a1;
  v88 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978A8, &qword_1E68C5770);
  v7 = *(v6 - 8);
  v82 = v6;
  v83 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v70 = &v69 - v9;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978B0, &qword_1E68B7690);
  MEMORY[0x1EEE9AC00](v86, v10);
  v94 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v80 = &v69 - v14;
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099D68, &qword_1E68C5760);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1E68B2C50();
  v91 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v69 - v21;
  sub_1E68B2120();
  v23 = a3;
  v25 = type metadata accessor for StandardVerticalStackView(0, a2, a3, v24);
  v26 = v90;
  v78 = v90 + *(v25 + 36);
  v95 = a2;
  v96 = v23;
  v97 = v90;
  sub_1E68B2C40();
  v27 = swift_getWitnessTable();
  WitnessTable = v22;
  v81 = v27;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v28 = *(v91 + 8);
  v93 = v18;
  v87 = v15;
  v84 = v28;
  v85 = v91 + 8;
  v28(v18, v15);
  sub_1E68B2E80();
  v29 = 1;
  sub_1E68B1C50();
  v74 = v136;
  v76 = v138;
  v75 = v139;
  v145 = 1;
  v143 = v135;
  v141 = v137;
  v79 = v25;
  v30 = (v26 + *(v25 + 52));
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[2];
  v34 = v30[3];
  v77 = v32;
  v72 = v134;
  v73 = v34;
  v71 = v33;
  v89 = v31;
  if (v34)
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978D0, &unk_1E68B76F0);
    v36 = v70;
    v37 = &v70[*(v35 + 36)];
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978D8, &qword_1E68C3A30) + 28);
    v39 = *MEMORY[0x1E6980FD8];
    v40 = sub_1E68B2690();
    v41 = *(v40 - 8);
    (*(v41 + 104))(v37 + v38, v39, v40);
    (*(v41 + 56))(v37 + v38, 0, 1, v40);
    *v37 = swift_getKeyPath();
    *v36 = v89;
    *(v36 + 8) = v32;
    *(v36 + 16) = v33 & 1;
    *(v36 + 24) = v34;
    *(v36 + 32) = 256;
    KeyPath = swift_getKeyPath();
    v43 = v82;
    v44 = v36 + *(v82 + 36);
    *v44 = KeyPath;
    *(v44 + 8) = 2;
    *(v44 + 16) = 0;
    v45 = v80;
    sub_1E687B7AC(v36, v80);
    v29 = 0;
    v46 = v43;
  }

  else
  {
    v45 = v80;
    v46 = v82;
  }

  (*(v83 + 56))(v45, v29, 1, v46);
  v47 = v79;
  v48 = v90;
  v49 = (v90 + *(v79 + 44));
  v50 = *v49;
  v82 = v49[1];
  v51 = v82;
  v83 = v50;
  v53 = v49[2];
  v52 = v49[3];
  v54 = v45;
  v55 = *(v78 + 48);
  v56 = swift_getKeyPath();
  LOBYTE(v112) = 0;
  *&v124 = v50;
  *(&v124 + 1) = v51;
  *&v125 = v53;
  *(&v125 + 1) = v52;
  LOWORD(v126[0]) = 256;
  *(&v126[0] + 1) = v56;
  *&v126[1] = v55;
  BYTE8(v126[1]) = 0;
  v57 = (v48 + *(v47 + 48));
  v58 = *v57;
  v59 = v57[1];
  v60 = v57[2];
  v61 = v57[3];
  v62 = swift_getKeyPath();
  LOBYTE(v112) = 0;
  *&v127 = v58;
  *(&v127 + 1) = v59;
  *&v128 = v60;
  *(&v128 + 1) = v61;
  LOWORD(v129[0]) = 256;
  *(&v129[0] + 1) = v62;
  *&v129[1] = 2;
  BYTE8(v129[1]) = 0;
  v63 = v93;
  v64 = v87;
  (*(v91 + 16))();
  v112 = 0;
  v113 = v145;
  *v114 = *v144;
  *&v114[3] = *&v144[3];
  v115 = v72;
  v116 = v143;
  *v117 = *v142;
  *&v117[3] = *&v142[3];
  v118 = v74;
  v119 = v141;
  *v120 = *v140;
  *&v120[3] = *&v140[3];
  v121 = v76;
  v122 = v75;
  v123[0] = v63;
  v123[1] = &v112;
  v65 = v94;
  sub_1E67612FC(v54, v94, &qword_1ED0978B0, &qword_1E68B7690);
  v109 = v124;
  v110 = v125;
  v111[0] = v126[0];
  *(v111 + 9) = *(v126 + 9);
  v123[2] = v65;
  v123[3] = &v109;
  v106 = v127;
  v107 = v128;
  v108[0] = v129[0];
  *(v108 + 9) = *(v129 + 9);
  v123[4] = &v106;
  sub_1E673F228(v89, v77, v71, v73);
  sub_1E673F228(v83, v82, v53, v52);
  sub_1E673F228(v58, v59, v60, v61);
  sub_1E67612FC(&v124, v132, &qword_1ED099D70, &qword_1E68C5768);
  sub_1E67612FC(&v127, v132, &qword_1ED099D70, &qword_1E68C5768);
  v66 = v64;
  v103[0] = v64;
  v103[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  v103[2] = v86;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D70, &qword_1E68C5768);
  v105 = v104;
  v98 = v81;
  v99 = sub_1E687B908(&qword_1EE2EA7A0, &qword_1ED096DF8, &unk_1E68BB7C0);
  v100 = sub_1E687B508();
  v101 = sub_1E687B670(&qword_1EE2EA760, &qword_1ED099D70, &qword_1E68C5768, sub_1E687B720);
  v102 = v101;
  sub_1E6848F14(v123, 5uLL, v103);
  sub_1E6744A10(&v127, &qword_1ED099D70, &qword_1E68C5768);
  sub_1E6744A10(&v124, &qword_1ED099D70, &qword_1E68C5768);
  sub_1E6744A10(v54, &qword_1ED0978B0, &qword_1E68B7690);
  v67 = v84;
  v84(WitnessTable, v66);
  v130[0] = v106;
  v130[1] = v107;
  v131[0] = v108[0];
  *(v131 + 9) = *(v108 + 9);
  sub_1E6744A10(v130, &qword_1ED099D70, &qword_1E68C5768);
  v132[0] = v109;
  v132[1] = v110;
  v133[0] = v111[0];
  *(v133 + 9) = *(v111 + 9);
  sub_1E6744A10(v132, &qword_1ED099D70, &qword_1E68C5768);
  sub_1E6744A10(v94, &qword_1ED0978B0, &qword_1E68B7690);
  return v67(v93, v66);
}

uint64_t sub_1E687A460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a4;
  v7 = sub_1E68B1DE0();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v54 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v52 = &v48 - v12;
  v13 = sub_1E68B1E40();
  v51 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v48 - v15;
  v17 = sub_1E68B1E40();
  v53 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v48 - v19;
  v49 = sub_1E68B1E40();
  v59 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v58 = &v48 - v26;
  v28 = *(type metadata accessor for StandardVerticalStackView(0, a2, a3, v27) + 36);
  v50 = a1;
  v29 = a1 + v28;
  sub_1E68B2780();
  v30 = *(v29 + 24);
  LOBYTE(a2) = *(v29 + 32);
  v71 = a3;
  v72 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  View.artworkClipShape(_:)(v30, a2, v13);
  v32 = v13;
  v33 = v23;
  (*(v51 + 8))(v16, v32);
  v34 = v49;
  sub_1E68B2E80();
  v35 = sub_1E67979F0();
  v69 = WitnessTable;
  v70 = v35;
  v47 = swift_getWitnessTable();
  sub_1E68B2A00();
  (*(v53 + 8))(v20, v17);
  v67 = v47;
  v68 = MEMORY[0x1E697EBF8];
  v51 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v53 = *(v59 + 8);
  (v53)(v33, v34);
  v36 = v52;
  sub_1E677A200(v52);
  v38 = v54;
  v37 = v55;
  v39 = v56;
  (*(v55 + 104))(v54, *MEMORY[0x1E697E6C0], v56);
  sub_1E687B81C(&qword_1EE2EA848, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  v40 = v39;
  LOBYTE(v39) = sub_1E68B3160();
  v41 = *(v37 + 8);
  v41(v38, v40);
  v41(v36, v40);
  if (v39)
  {
    v42.n128_f64[0] = sub_1E677C8D0(&v80);
  }

  else
  {
    sub_1E68B2E80();
    sub_1E68B1F30();
    *&v66[71] = v77;
    *&v66[55] = v76;
    *&v66[103] = v79;
    *&v66[87] = v78;
    *&v66[23] = v74;
    *&v66[7] = v73;
    LOBYTE(v63[0]) = 1;
    *&v66[39] = v75;
    *&v64[0] = 0;
    BYTE8(v64[0]) = 1;
    *(&v64[4] + 9) = *&v66[64];
    *(&v64[5] + 9) = *&v66[80];
    *(&v64[6] + 9) = *&v66[96];
    *(&v64[7] + 1) = *(&v79 + 1);
    *(v64 + 9) = *v66;
    *(&v64[1] + 9) = *&v66[16];
    *(&v64[2] + 9) = *&v66[32];
    *(&v64[3] + 9) = *&v66[48];
    sub_1E677C8C8(v64);
    v86 = v64[6];
    v87 = v64[7];
    v88 = v65;
    v82 = v64[2];
    v83 = v64[3];
    v84 = v64[4];
    v85 = v64[5];
    v42 = v64[1];
    v80 = v64[0];
    v81 = v64[1];
  }

  v43 = v58;
  (*(v59 + 16))(v33, v58, v34, v42);
  v64[6] = v86;
  v64[7] = v87;
  v65 = v88;
  v64[2] = v82;
  v64[3] = v83;
  v64[4] = v84;
  v64[5] = v85;
  v64[0] = v80;
  v64[1] = v81;
  v63[0] = v33;
  v63[1] = v64;
  v62[0] = v34;
  v62[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D68, &qword_1E68C5760);
  v60 = v51;
  v61 = sub_1E687B864();
  sub_1E6848F14(v63, 2uLL, v62);
  v44 = v43;
  v45 = v53;
  (v53)(v44, v34);
  return v45(v33, v34);
}

BOOL _s15FitnessCanvasUI31StandardVerticalStackViewLayoutV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  result = 0;
  if (((*a1 ^ *a2) & 1) == 0 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    v5 = a1[5];
    v6 = *(a1 + 6);
    v7 = a2[5];
    if (a1[4])
    {
      if (v5 == v7)
      {
        v8 = *(a2 + 32);
      }

      else
      {
        v8 = 0;
      }

      if (v8 != 1)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (a2[4])
      {
        return result;
      }

      if (a1[3] != a2[3] || v5 != v7)
      {
        return result;
      }
    }

    return v6 == *(a2 + 6);
  }

  return result;
}

unint64_t sub_1E687ABA8()
{
  result = qword_1EE2EABD0;
  if (!qword_1EE2EABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EABD0);
  }

  return result;
}

unint64_t sub_1E687ABFC()
{
  result = qword_1EE2EAB30;
  if (!qword_1EE2EAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB30);
  }

  return result;
}

unint64_t sub_1E687AC50()
{
  result = qword_1ED099D50;
  if (!qword_1ED099D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099D50);
  }

  return result;
}

unint64_t sub_1E687ACA8()
{
  result = qword_1ED099D58;
  if (!qword_1ED099D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099D58);
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

uint64_t sub_1E687AD18(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[56])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E687AD5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1E687ADCC(uint64_t a1)
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
        sub_1E673ED88(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E687AE94(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1E68B1DE0() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v10 + 7;
  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((((((v12 + (((v6 & 0xFFFFFFFFFFFFFFF8) + v9 + 64) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v20 = v18 - 1;
    if (v14)
    {
      v20 = 0;
      v21 = *a1;
    }

    else
    {
      v21 = 0;
    }

    return v11 + (v21 | v20) + 1;
  }

  if (v17)
  {
    v18 = *(a1 + v13);
    if (v18)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v22 = (((a1 + v6 + 8) & 0xFFFFFFFFFFFFFFF8) + v9 + 56) & ~v9;
  if (v8 < 0x7FFFFFFF)
  {
    v24 = *((((((((v12 + v22) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  else
  {
    v23 = *(*(*(a3 + 16) - 8) + 48);

    return v23(v22);
  }
}

void sub_1E687B0A4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1E68B1DE0() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 64) + 7;
  v15 = ((((((((v14 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v12 + 64) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((((v14 + (((v9 & 0xFFFFFFF8) + v12 + 64) & ~v12)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v13 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v22 = (((a1 + v9 + 8) & 0xFFFFFFFFFFFFFFF8) + v12 + 56) & ~v12;
      if (v11 < 0x7FFFFFFF)
      {
        v24 = ((((((((v14 + v22) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v24 = a2 & 0x7FFFFFFF;
          v24[1] = 0;
        }

        else
        {
          *v24 = (a2 - 1);
        }
      }

      else
      {
        v23 = *(v10 + 56);

        v23(v22, a2);
      }

      return;
    }
  }

  if (((((((((v14 + (((v9 & 0xFFFFFFF8) + v12 + 64) & ~v12)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((((((((v14 + (((v9 & 0xFFFFFFF8) + v12 + 64) & ~v12)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v13 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

unint64_t sub_1E687B318()
{
  result = qword_1ED099D60;
  if (!qword_1ED099D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099D60);
  }

  return result;
}

unint64_t sub_1E687B370()
{
  result = qword_1EE2EABC0;
  if (!qword_1EE2EABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EABC0);
  }

  return result;
}

unint64_t sub_1E687B3C8()
{
  result = qword_1EE2EABC8;
  if (!qword_1EE2EABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EABC8);
  }

  return result;
}

uint64_t sub_1E687B460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for StandardVerticalStackView(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1E68795C4(v9, v5, v6, v7);
}

unint64_t sub_1E687B508()
{
  result = qword_1EE2EA6F0;
  if (!qword_1EE2EA6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0978B0, &qword_1E68B7690);
    sub_1E687B670(&qword_1EE2EA6F8, &qword_1ED0978A8, &qword_1E68C5770, sub_1E687B5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA6F0);
  }

  return result;
}

unint64_t sub_1E687B5B8()
{
  result = qword_1EE2EA770;
  if (!qword_1EE2EA770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0978D0, &unk_1E68B76F0);
    sub_1E673F4AC();
    sub_1E673F530(&qword_1EE2EA5A0, &qword_1ED0978D8, &qword_1E68C3A30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA770);
  }

  return result;
}

uint64_t sub_1E687B670(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48, &qword_1E68BB6E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E687B720()
{
  result = qword_1EE2EA7F8;
  if (!qword_1EE2EA7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099D78, &unk_1E68C57A8);
    sub_1E67688F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7F8);
  }

  return result;
}

uint64_t sub_1E687B7AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978A8, &qword_1E68C5770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E687B81C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E687B864()
{
  result = qword_1EE2EA790;
  if (!qword_1EE2EA790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099D68, &qword_1E68C5760);
    sub_1E687B908(&qword_1EE2EA798, &qword_1ED098168, &qword_1E68BB628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA790);
  }

  return result;
}

uint64_t sub_1E687B908(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E687B978(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E68E2580 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2CC0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E68E3080 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E694C656C746974 && a2 == 0xEE0074696D694C65)
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

uint64_t sub_1E687BB94@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24, __int128 a25, uint64_t a26)
{
  v28 = *a2;
  v52[0] = a19;
  v52[1] = a20;
  v52[2] = a21;
  v52[3] = a22;
  v52[4] = a23;
  v53 = a24;
  v54 = a25;
  v55 = a26;
  v29 = type metadata accessor for FullWidthStageView(0, v52);
  v30 = a9 + v29[34];
  *v30 = swift_getKeyPath();
  *(v30 + 8) = 0;
  *(v30 + 16) = 0;
  v31 = a9 + v29[35];
  *v31 = swift_getKeyPath();
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  v32 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v32;
  v33 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v33;
  v34 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v34;
  v35 = a1[9];
  *(a9 + 128) = a1[8];
  *(a9 + 144) = v35;
  v36 = a1[7];
  *(a9 + 96) = a1[6];
  *(a9 + 112) = v36;
  v37 = a1[13];
  *(a9 + 192) = a1[12];
  *(a9 + 208) = v37;
  v38 = a1[11];
  *(a9 + 160) = a1[10];
  *(a9 + 176) = v38;
  *(a9 + 224) = v28;
  *(a9 + 232) = a3;
  *(a9 + 240) = a4;
  *(a9 + 248) = a5;
  *(a9 + 256) = a6;
  *(a9 + 264) = a7;
  *(a9 + 272) = a8;
  *(a9 + 280) = a10;
  *(a9 + 296) = a11;
  *(a9 + 312) = a12;
  *(a9 + 320) = a13;
  (*(*(a19 - 8) + 32))(a9 + v29[29], a14, a19);
  v39 = v29[30];
  v40 = sub_1E68B3750();
  (*(*(v40 - 8) + 32))(a9 + v39, a15, v40);
  v41 = v29[31];
  v42 = sub_1E68B3750();
  (*(*(v42 - 8) + 32))(a9 + v41, a16, v42);
  v43 = v29[32];
  v44 = sub_1E68B3750();
  (*(*(v44 - 8) + 32))(a9 + v43, a17, v44);
  return (*(*(a23 - 8) + 32))(a9 + v29[33], a18, a23);
}

double static FullWidthStageViewLayout.default.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EE2EAF60 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1EE2EB018;
  a1[10] = xmmword_1EE2EB008;
  a1[11] = v1;
  v2 = unk_1EE2EB038;
  a1[12] = xmmword_1EE2EB028;
  a1[13] = v2;
  v3 = *&qword_1EE2EAFD8;
  a1[6] = xmmword_1EE2EAFC8;
  a1[7] = v3;
  v4 = unk_1EE2EAFF8;
  a1[8] = xmmword_1EE2EAFE8;
  a1[9] = v4;
  v5 = *&qword_1EE2EAF98;
  a1[2] = xmmword_1EE2EAF88;
  a1[3] = v5;
  v6 = unk_1EE2EAFB8;
  a1[4] = xmmword_1EE2EAFA8;
  a1[5] = v6;
  result = *&xmmword_1EE2EAF68;
  v8 = xmmword_1EE2EAF78;
  *a1 = xmmword_1EE2EAF68;
  a1[1] = v8;
  return result;
}

__n128 FullWidthStageViewLayout.titlePadding.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 FullWidthStageViewLayout.subtitlePadding.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 FullWidthStageViewLayout.captionPadding.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  v3 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 FullWidthStageViewLayout.primaryButtonPadding.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 160);
  v3 = *(v1 + 176);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 FullWidthStageViewLayout.secondaryButtonPadding.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 192);
  v3 = *(v1 + 208);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 FullWidthStageViewLayout.init(titlePadding:subtitlePadding:captionPadding:titleLineLimit:subtitleLineLimit:captionLineLimit:bottomPadding:leadingPadding:topPadding:actionButtonMaxWidth:actionButtonMinWidth:primaryButtonPadding:secondaryButtonPadding:)@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>)
{
  v14 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v14;
  v15 = a2[1];
  *(a9 + 32) = *a2;
  *(a9 + 48) = v15;
  v16 = a3[1];
  *(a9 + 64) = *a3;
  *(a9 + 80) = v16;
  *(a9 + 96) = a4;
  *(a9 + 104) = a5;
  *(a9 + 112) = a6;
  *(a9 + 120) = a10;
  *(a9 + 128) = a11;
  *(a9 + 136) = a12;
  *(a9 + 144) = a13;
  *(a9 + 152) = a14;
  v17 = a7[1];
  *(a9 + 160) = *a7;
  *(a9 + 176) = v17;
  result = *a8;
  v19 = *(a8 + 16);
  *(a9 + 192) = *a8;
  *(a9 + 208) = v19;
  return result;
}

unint64_t sub_1E687BFB4(char a1)
{
  result = 0x646150656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 0x506E6F6974706163;
      break;
    case 3:
      result = 0x6E694C656C746974;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x61506D6F74746F62;
      break;
    case 7:
      result = 0x50676E696461656CLL;
      break;
    case 8:
      result = 0x6964646150706F74;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E687C164@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E68855D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E687C18C(uint64_t a1)
{
  v2 = sub_1E68840F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E687C1C8(uint64_t a1)
{
  v2 = sub_1E68840F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E687C204()
{
  result = 0.0;
  xmmword_1EE2EAF78 = 0u;
  xmmword_1EE2EAF88 = 0u;
  xmmword_1EE2EAF68 = 0u;
  qword_1EE2EAF98 = 0x4014000000000000;
  unk_1EE2EAFA0 = 0u;
  *(&xmmword_1EE2EAFA8 + 8) = 0u;
  qword_1EE2EAFC0 = 0;
  xmmword_1EE2EAFC8 = vdupq_n_s64(3uLL);
  qword_1EE2EAFD8 = 1;
  unk_1EE2EAFE0 = xmmword_1E68C5840;
  *(&xmmword_1EE2EAFE8 + 8) = 0u;
  unk_1EE2EB000 = 0u;
  *(&xmmword_1EE2EB008 + 8) = 0u;
  unk_1EE2EB020 = 0u;
  *(&xmmword_1EE2EB028 + 8) = 0u;
  qword_1EE2EB040 = 0;
  return result;
}

uint64_t FullWidthStageViewLayout.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D80, &qword_1E68C5860);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22 - v8;
  v10 = v3[2];
  v30 = v3[3];
  v31 = v10;
  v11 = v3[4];
  v26 = v3[5];
  v27 = v11;
  v12 = *(v3 + 12);
  v28 = *(v3 + 13);
  v29 = v12;
  v14 = *(v3 + 15);
  v13 = *(v3 + 16);
  v16 = *(v3 + 17);
  v15 = *(v3 + 18);
  v17 = *(v3 + 19);
  v18 = v3[10];
  v24 = v3[11];
  v25 = v18;
  v19 = v3[12];
  v22 = v3[13];
  v23 = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68840F4();
  sub_1E68B3BD0();
  v20 = *v3;
  v34 = v3[1];
  v33 = v20;
  v32 = 0;
  sub_1E67F4B08();
  sub_1E68B3AB0();
  if (!v2)
  {
    v34 = v30;
    v33 = v31;
    v32 = 1;
    sub_1E68B3AB0();
    v34 = v26;
    v33 = v27;
    v32 = 2;
    sub_1E68B3AB0();
    LOBYTE(v33) = 3;
    sub_1E68B3AA0();
    LOBYTE(v33) = 4;
    sub_1E68B3AA0();
    LOBYTE(v33) = 5;
    sub_1E68B3AA0();
    *&v33 = v14;
    v32 = 6;
    sub_1E67621E8();
    sub_1E68B3AB0();
    *&v33 = v13;
    v32 = 7;
    sub_1E68B3AB0();
    *&v33 = v16;
    v32 = 8;
    sub_1E68B3AB0();
    *&v33 = v15;
    v32 = 9;
    sub_1E68B3AB0();
    *&v33 = v17;
    v32 = 10;
    sub_1E68B3AB0();
    v34 = v24;
    v33 = v25;
    v32 = 11;
    sub_1E68B3AB0();
    v34 = v22;
    v33 = v23;
    v32 = 12;
    sub_1E68B3AB0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FullWidthStageViewLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D90, &qword_1E68C5868);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68840F4();
  sub_1E68B3BC0();
  if (!v2)
  {
    v33 = 0;
    sub_1E67F4BB0();
    sub_1E68B3A00();
    v31 = v34;
    v32 = v35;
    v33 = 1;
    sub_1E68B3A00();
    v29 = v34;
    v30 = v35;
    v33 = 2;
    sub_1E68B3A00();
    v28 = v35;
    v27 = v34;
    LOBYTE(v34) = 3;
    v10 = sub_1E68B39F0();
    LOBYTE(v34) = 4;
    v26 = sub_1E68B39F0();
    LOBYTE(v34) = 5;
    v24 = sub_1E68B39F0();
    v33 = 6;
    *&v25 = sub_1E6762A60();
    sub_1E68B3A00();
    v11 = v34;
    v33 = 7;
    sub_1E68B3A00();
    v12 = v34;
    v33 = 8;
    sub_1E68B3A00();
    v13 = v34;
    v33 = 9;
    sub_1E68B3A00();
    v14 = v34;
    v33 = 10;
    sub_1E68B3A00();
    v15 = v34;
    v33 = 11;
    sub_1E68B3A00();
    v25 = v35;
    v23 = v34;
    v33 = 12;
    sub_1E68B3A00();
    (*(v6 + 8))(v9, v5);
    v17 = v32;
    *a2 = v31;
    *(a2 + 16) = v17;
    v18 = v30;
    *(a2 + 32) = v29;
    *(a2 + 48) = v18;
    v19 = v28;
    *(a2 + 64) = v27;
    *(a2 + 80) = v19;
    v20 = v26;
    *(a2 + 96) = v10;
    *(a2 + 104) = v20;
    *(a2 + 112) = v24;
    *(a2 + 120) = v11;
    *(a2 + 128) = v12;
    *(a2 + 136) = v13;
    *(a2 + 144) = v14;
    *(a2 + 152) = v15;
    v21 = v25;
    *(a2 + 160) = v23;
    *(a2 + 176) = v21;
    v22 = v35;
    *(a2 + 192) = v34;
    *(a2 + 208) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FullWidthStageViewLayout.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v37 = *(v0 + 64);
  v38 = *(v0 + 72);
  v39 = *(v0 + 80);
  v40 = *(v0 + 88);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v41 = *(v0 + 120);
  v42 = *(v0 + 128);
  v43 = *(v0 + 136);
  v44 = *(v0 + 144);
  v45 = *(v0 + 152);
  v46 = *(v0 + 160);
  v47 = *(v0 + 168);
  v48 = *(v0 + 176);
  v49 = *(v0 + 184);
  v50 = *(v0 + 192);
  v51 = *(v0 + 200);
  v52 = *(v0 + 208);
  v53 = *(v0 + 216);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  v11 = *(v0 + 112);
  MEMORY[0x1E69523F0](*&v1);
  if (v2 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v2;
  }

  MEMORY[0x1E69523F0](*&v12);
  if (v3 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v3;
  }

  MEMORY[0x1E69523F0](*&v13);
  if (v4 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v4;
  }

  MEMORY[0x1E69523F0](*&v14);
  if (v5 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v5;
  }

  MEMORY[0x1E69523F0](*&v15);
  if (v6 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v6;
  }

  MEMORY[0x1E69523F0](*&v16);
  if (v8 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v8;
  }

  MEMORY[0x1E69523F0](*&v17);
  if (v7 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v7;
  }

  MEMORY[0x1E69523F0](*&v18);
  v19 = v37;
  if (v37 == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v19);
  v20 = v38;
  if (v38 == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v20);
  v21 = v39;
  if (v39 == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v21);
  v22 = v40;
  if (v40 == 0.0)
  {
    v22 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v22);
  MEMORY[0x1E69523D0](v10);
  MEMORY[0x1E69523D0](v9);
  MEMORY[0x1E69523D0](v11);
  v23 = v41;
  if (v41 == 0.0)
  {
    v23 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v23);
  v24 = v42;
  if (v42 == 0.0)
  {
    v24 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v24);
  v25 = v43;
  if (v43 == 0.0)
  {
    v25 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v25);
  v26 = v44;
  if (v44 == 0.0)
  {
    v26 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v26);
  v27 = v45;
  if (v45 == 0.0)
  {
    v27 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v27);
  v28 = v46;
  if (v46 == 0.0)
  {
    v28 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v28);
  v29 = v47;
  if (v47 == 0.0)
  {
    v29 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v29);
  v30 = v48;
  if (v48 == 0.0)
  {
    v30 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v30);
  v31 = v49;
  if (v49 == 0.0)
  {
    v31 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v31);
  v32 = v50;
  if (v50 == 0.0)
  {
    v32 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v32);
  v33 = v51;
  if (v51 == 0.0)
  {
    v33 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v33);
  v34 = v52;
  if (v52 == 0.0)
  {
    v34 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v34);
  v35 = v53;
  if (v53 == 0.0)
  {
    v35 = 0.0;
  }

  return MEMORY[0x1E69523F0](*&v35);
}

uint64_t FullWidthStageViewLayout.hashValue.getter()
{
  sub_1E68B3B70();
  FullWidthStageViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E687CEFC()
{
  sub_1E68B3B70();
  FullWidthStageViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E687CF40(uint64_t a1)
{
  sub_1E68B3B70();
  FullWidthStageViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E687CF80(uint64_t a1)
{
  sub_1E68B21D0();
  sub_1E68B3750();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0, &qword_1E68C5B38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8, &qword_1E68C5B58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0, &unk_1E68C5B48);
  sub_1E68B3750();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  return sub_1E68B2CB0();
}

uint64_t sub_1E687D120@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v107 = a7;
  v103 = a6;
  *&v101 = a5;
  *&v100 = a2;
  v114 = a9;
  v99 = a10;
  v109 = sub_1E68B3750();
  v141[6] = a8;
  WitnessTable = swift_getWitnessTable();
  *&v153 = v109;
  *(&v153 + 1) = WitnessTable;
  v110 = MEMORY[0x1E697D318];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v111 = *(OpaqueTypeMetadata2 - 8);
  v112 = OpaqueTypeMetadata2;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v16);
  v119 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v108 = &v98 - v20;
  *&v105 = sub_1E68B21B0();
  *&v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v21);
  v102 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DD8, &qword_1E68C5B58);
  MEMORY[0x1EEE9AC00](v123, v23);
  v120 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v115 = &v98 - v27;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DC0, &qword_1E68C5B38);
  MEMORY[0x1EEE9AC00](v122, v28);
  v118 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v98 - v32;
  v34 = sub_1E68B3750();
  v124 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v117 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v121 = &v98 - v39;
  *&v153 = v100;
  *(&v153 + 1) = a3;
  *&v154 = a4;
  *(&v154 + 1) = v101;
  *&v155 = v103;
  *(&v155 + 1) = v107;
  *&v156[8] = v99;
  *v156 = a8;
  *&v156[24] = a11;
  v103 = type metadata accessor for FullWidthStageView(0, &v153);
  v106 = v34;
  v107 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v40 = *(a1 + 38);
  *&v101 = *(a1 + 37);
  v41 = *(a1 + 39);
  *&v100 = *(a1 + 40);
  v42 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DF8, &unk_1E68C5B80) + 36)];
  v43 = v33;
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978D8, &qword_1E68C3A30) + 28);
  v45 = *MEMORY[0x1E6980FD8];
  v46 = sub_1E68B2690();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v42 + v44, v45, v46);
  (*(v47 + 56))(v42 + v44, 0, 1, v46);
  *v42 = swift_getKeyPath();
  v48 = v43;
  v49 = v101;
  *v48 = v101;
  v48[1] = v40;
  v50 = v100;
  v48[2] = v41;
  v48[3] = v50;
  v51 = v48;
  v52 = *(a1 + 14);
  KeyPath = swift_getKeyPath();
  v54 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E00, &unk_1E68C5BF0) + 36);
  v116 = v51;
  *v54 = KeyPath;
  *(v54 + 8) = v52;
  *(v54 + 16) = 0;
  v55 = a1[5];
  v98 = a1[4];
  v99 = v55;
  sub_1E673F228(v49, v40, v41, v50);
  v56 = sub_1E68B2500();
  v57 = v51 + *(v122 + 36);
  *v57 = v56;
  *(&v58 + 1) = *(&v98 + 1);
  *&v59 = v98;
  *(&v59 + 1) = *(&v99 + 1);
  *&v58 = v99;
  *(v57 + 24) = v59;
  *(v57 + 8) = v58;
  *(v57 + 40) = 0;
  v60 = *(a1 + 29);
  v61 = *(a1 + 30);
  v62 = *(a1 + 31);
  v63 = *(a1 + 32);
  v64 = *(a1 + 12);
  v65 = swift_getKeyPath();
  v66 = a1[1];
  v100 = *a1;
  v101 = v66;
  sub_1E673F228(v60, v61, v62, v63);
  v67 = sub_1E68B2500();
  LOBYTE(v146) = 0;
  LOBYTE(v132) = 0;
  *&v153 = v60;
  *(&v153 + 1) = v61;
  *&v154 = v62;
  *(&v154 + 1) = v63;
  *&v155 = v65;
  *(&v155 + 1) = v64;
  v156[0] = 0;
  *&v156[1] = *v143;
  *&v156[4] = *&v143[3];
  v156[8] = v67;
  *&v156[9] = *v142;
  *(&v68 + 1) = *(&v100 + 1);
  *&v69 = v100;
  *&v68 = v101;
  *&v156[12] = *&v142[3];
  *(&v69 + 1) = *(&v101 + 1);
  *&v156[16] = v68;
  v157 = v69;
  v158 = 0;
  v70 = v102;
  sub_1E68B21A0();
  *&v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DD0, &unk_1E68C5B48);
  *&v101 = sub_1E6885168(&qword_1EE2EA740, &qword_1ED099DD0, &unk_1E68C5B48, sub_1E67C6144);
  v71 = v115;
  sub_1E68B2950();
  (*(v104 + 8))(v70, v105);
  v144[4] = *&v156[16];
  v144[5] = v157;
  v145 = v158;
  v144[0] = v153;
  v144[1] = v154;
  v144[2] = v155;
  v144[3] = *v156;
  sub_1E6744A10(v144, &qword_1ED099DD0, &unk_1E68C5B48);
  v72 = swift_getKeyPath();
  v73 = (v71 + *(v123 + 36));
  *v73 = v72;
  v73[1] = 0x3FE6666666666666;
  v74 = *(a1 + 33);
  v75 = *(a1 + 34);
  v76 = *(a1 + 35);
  v77 = *(a1 + 36);
  v78 = *(a1 + 13);
  v79 = swift_getKeyPath();
  v80 = a1[3];
  v104 = a1[2];
  v105 = v80;
  sub_1E673F228(v74, v75, v76, v77);
  v81 = sub_1E68B2500();
  LOBYTE(v153) = 0;
  LOBYTE(v132) = 0;
  *&v146 = v74;
  *(&v146 + 1) = v75;
  *&v147 = v76;
  *(&v147 + 1) = v77;
  *&v148 = v79;
  *(&v148 + 1) = v78;
  LOBYTE(v149) = 0;
  BYTE8(v149) = v81;
  *(&v82 + 1) = *(&v104 + 1);
  *&v83 = v104;
  *(&v83 + 1) = *(&v105 + 1);
  *&v82 = v105;
  v151 = v83;
  v150 = v82;
  v152 = 0;
  sub_1E68B24B0();
  sub_1E68B2E90();
  v84 = swift_checkMetadataState();
  v85 = v119;
  v86 = WitnessTable;
  sub_1E68B2960();
  *&v153 = v84;
  *(&v153 + 1) = v86;
  WitnessTable = swift_getOpaqueTypeConformance2();
  v87 = v108;
  v88 = v85;
  v89 = v112;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v90 = v111;
  v91 = *(v111 + 8);
  v91(v85, v89);
  v92 = v117;
  v93 = v106;
  (*(v124 + 16))(v117, v121, v106);
  v139 = 0;
  v140 = 1;
  v141[0] = v92;
  v141[1] = &v139;
  v94 = v118;
  sub_1E67612FC(v116, v118, &qword_1ED099DC0, &qword_1E68C5B38);
  v141[2] = v94;
  v95 = v120;
  sub_1E67612FC(v71, v120, &qword_1ED099DD8, &qword_1E68C5B58);
  v136 = v150;
  v137 = v151;
  v138 = v152;
  v132 = v146;
  v133 = v147;
  v134 = v148;
  v135 = v149;
  v141[3] = v95;
  v141[4] = &v132;
  (*(v90 + 16))(v88, v87, v89);
  v141[5] = v88;
  sub_1E67612FC(&v146, &v153, &qword_1ED099DD0, &unk_1E68C5B48);
  v131[0] = v93;
  v131[1] = MEMORY[0x1E6981840];
  v131[2] = v122;
  v131[3] = v123;
  v131[4] = v100;
  v131[5] = v89;
  v125 = v107;
  v126 = MEMORY[0x1E6981838];
  v127 = sub_1E6885168(&qword_1EE2EA6D8, &qword_1ED099DC0, &qword_1E68C5B38, sub_1E68851EC);
  v128 = sub_1E688545C();
  v129 = v101;
  v130 = WitnessTable;
  sub_1E6848F14(v141, 6uLL, v131);
  sub_1E6744A10(&v146, &qword_1ED099DD0, &unk_1E68C5B48);
  v91(v87, v89);
  sub_1E6744A10(v115, &qword_1ED099DD8, &qword_1E68C5B58);
  sub_1E6744A10(v116, &qword_1ED099DC0, &qword_1E68C5B38);
  v96 = *(v124 + 8);
  v96(v121, v93);
  v91(v119, v89);
  *&v156[16] = v136;
  v157 = v137;
  v158 = v138;
  v153 = v132;
  v154 = v133;
  v155 = v134;
  *v156 = v135;
  sub_1E6744A10(&v153, &qword_1ED099DD0, &unk_1E68C5B48);
  sub_1E6744A10(v120, &qword_1ED099DD8, &qword_1E68C5B58);
  sub_1E6744A10(v118, &qword_1ED099DC0, &qword_1E68C5B38);
  return (v96)(v117, v93);
}

uint64_t sub_1E687DBE0(uint64_t a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0, &qword_1E68C5B38);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC8, &qword_1E68C5B40);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0, &unk_1E68C5B48);
  v3 = *(a1 + 24);
  sub_1E68B1E40();
  v23 = sub_1E68B3750();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v4 = sub_1E68B2CC0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12[-v7];
  v13 = *(a1 + 16);
  v14 = v3;
  v9 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = v9;
  v10 = *(a1 + 80);
  v17 = *(a1 + 64);
  v18 = v10;
  v19 = v1;
  sub_1E68B21C0();
  sub_1E68B2CB0();
  swift_getWitnessTable();
  sub_1E68B2990();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1E687DDFC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v110 = a8;
  v111 = a2;
  *&v113 = a6;
  *(&v113 + 1) = a7;
  *&v112 = a4;
  *(&v112 + 1) = a5;
  v122 = a9;
  v109 = a11;
  v108 = a10;
  v103 = a3;
  v12 = sub_1E68B3750();
  v105 = *(v12 - 8);
  v106 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v104 = &v97 - v14;
  v115 = sub_1E68B1E40();
  v121 = sub_1E68B3750();
  v117 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121, v15);
  v120 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v107 = &v97 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v119 = &v97 - v22;
  *&v100 = sub_1E68B21B0();
  *&v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v23);
  v98 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DC8, &qword_1E68C5B40);
  MEMORY[0x1EEE9AC00](v116, v25);
  v118 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v125 = &v97 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DC0, &qword_1E68C5B38);
  MEMORY[0x1EEE9AC00](v30, v31);
  v124 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = (&v97 - v35);
  v37 = *(a1 + 38);
  v123 = *(a1 + 37);
  v114 = v37;
  v38 = *(a1 + 39);
  *&v102 = *(a1 + 40);
  v39 = (&v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DF8, &unk_1E68C5B80) + 36) - v35);
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978D8, &qword_1E68C3A30) + 28);
  v41 = *MEMORY[0x1E6980FD8];
  v42 = sub_1E68B2690();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v39 + v40, v41, v42);
  (*(v43 + 56))(v39 + v40, 0, 1, v42);
  *v39 = swift_getKeyPath();
  v44 = v123;
  v45 = v114;
  *v36 = v123;
  v36[1] = v45;
  v46 = v102;
  v36[2] = v38;
  v36[3] = v46;
  v47 = *(a1 + 14);
  KeyPath = swift_getKeyPath();
  v49 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E00, &unk_1E68C5BF0) + 36);
  *v49 = KeyPath;
  *(v49 + 1) = v47;
  v49[16] = 0;
  v50 = a1[4];
  v101 = a1[5];
  v97 = v50;
  sub_1E673F228(v44, v45, v38, v46);
  v51 = sub_1E68B2500();
  v114 = v30;
  v52 = *(v30 + 36);
  v123 = v36;
  v53 = v36 + v52;
  *v53 = v51;
  *(&v54 + 1) = *(&v97 + 1);
  *&v55 = v97;
  *(&v55 + 1) = *(&v101 + 1);
  *&v54 = v101;
  *(v53 + 24) = v55;
  *(v53 + 8) = v54;
  v53[40] = 0;
  v56 = *(a1 + 29);
  v57 = *(a1 + 30);
  v58 = *(a1 + 31);
  v59 = *(a1 + 32);
  v60 = *(a1 + 12);
  v61 = swift_getKeyPath();
  v62 = a1[1];
  v101 = *a1;
  v102 = v62;
  sub_1E673F228(v56, v57, v58, v59);
  v63 = sub_1E68B2500();
  LOBYTE(v139) = 0;
  LOBYTE(v131) = 0;
  *&v148 = v56;
  *(&v148 + 1) = v57;
  *&v149 = v58;
  *(&v149 + 1) = v59;
  *&v150 = v61;
  *(&v150 + 1) = v60;
  LOBYTE(v151) = 0;
  *(&v151 + 1) = *v145;
  DWORD1(v151) = *&v145[3];
  BYTE8(v151) = v63;
  *(&v151 + 9) = *v144;
  *(&v64 + 1) = *(&v101 + 1);
  *&v65 = v101;
  *&v64 = v102;
  HIDWORD(v151) = *&v144[3];
  *(&v65 + 1) = *(&v102 + 1);
  v152 = v64;
  v153 = v65;
  v154 = 0;
  v66 = v98;
  sub_1E68B21A0();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DD0, &unk_1E68C5B48);
  v68 = sub_1E6885168(&qword_1EE2EA740, &qword_1ED099DD0, &unk_1E68C5B48, sub_1E67C6144);
  *&v101 = v67;
  *&v102 = v68;
  sub_1E68B2950();
  (*(v99 + 8))(v66, v100);
  v146[4] = v152;
  v146[5] = v153;
  v147 = v154;
  v146[0] = v148;
  v146[1] = v149;
  v146[2] = v150;
  v146[3] = v151;
  sub_1E6744A10(v146, &qword_1ED099DD0, &unk_1E68C5B48);
  v69 = *(a1 + 33);
  v70 = *(a1 + 34);
  v71 = *(a1 + 35);
  v72 = *(a1 + 36);
  v73 = *(a1 + 13);
  v74 = swift_getKeyPath();
  v75 = a1[3];
  v99 = a1[2];
  v100 = v75;
  sub_1E673F228(v69, v70, v71, v72);
  v76 = sub_1E68B2500();
  LOBYTE(v131) = 0;
  *&v148 = v69;
  *(&v148 + 1) = v70;
  v78 = v103;
  v77 = v104;
  *&v149 = v71;
  *(&v149 + 1) = v72;
  *&v150 = v74;
  *(&v150 + 1) = v73;
  v79 = v105;
  v80 = v106;
  v81 = v110;
  LOBYTE(v151) = 0;
  BYTE8(v151) = v76;
  *(&v82 + 1) = *(&v99 + 1);
  *&v83 = v99;
  *(&v83 + 1) = *(&v100 + 1);
  *&v82 = v100;
  v152 = v82;
  v153 = v83;
  v154 = 0;
  *&v139 = v111;
  *(&v139 + 1) = v103;
  v140 = v112;
  v141 = v113;
  *(v142 + 8) = v108;
  *&v142[0] = v110;
  *(&v142[1] + 1) = v109;
  v84 = type metadata accessor for FullWidthStageView(0, &v139);
  (*(v79 + 16))(v77, a1 + *(v84 + 120), v80);
  v85 = *(v78 - 8);
  if ((*(v85 + 48))(v77, 1, v78) == 1)
  {
    v78 = v80;
    v86 = v107;
    v87 = 1;
  }

  else
  {
    v86 = v107;
    sub_1E68B2A60();
    v87 = 0;
    v79 = v85;
  }

  (*(v79 + 8))(v77, v78);
  (*(*(v115 - 8) + 56))(v86, v87, 1, v115);
  v138[5] = v81;
  v138[6] = MEMORY[0x1E697E5D8];
  v138[4] = swift_getWitnessTable();
  v88 = v121;
  WitnessTable = swift_getWitnessTable();
  v90 = v119;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v91 = v117;
  v92 = *(v117 + 8);
  v92(v86, v88);
  v93 = v124;
  sub_1E67612FC(v123, v124, &qword_1ED099DC0, &qword_1E68C5B38);
  v138[0] = v93;
  v94 = v118;
  sub_1E67612FC(v125, v118, &qword_1ED099DC8, &qword_1E68C5B40);
  v135 = v152;
  v136 = v153;
  v137 = v154;
  v131 = v148;
  v132 = v149;
  v133 = v150;
  v134 = v151;
  v138[1] = v94;
  v138[2] = &v131;
  v95 = v120;
  (*(v91 + 16))(v120, v90, v88);
  v138[3] = v95;
  sub_1E67612FC(&v148, &v139, &qword_1ED099DD0, &unk_1E68C5B48);
  v130[0] = v114;
  v130[1] = v116;
  v130[2] = v101;
  v130[3] = v88;
  v126 = sub_1E6885168(&qword_1EE2EA6D8, &qword_1ED099DC0, &qword_1E68C5B38, sub_1E68851EC);
  v127 = sub_1E688535C();
  v128 = v102;
  v129 = WitnessTable;
  sub_1E6848F14(v138, 4uLL, v130);
  sub_1E6744A10(&v148, &qword_1ED099DD0, &unk_1E68C5B48);
  v92(v90, v88);
  sub_1E6744A10(v125, &qword_1ED099DC8, &qword_1E68C5B40);
  sub_1E6744A10(v123, &qword_1ED099DC0, &qword_1E68C5B38);
  v92(v95, v88);
  v142[1] = v135;
  v142[2] = v136;
  v143 = v137;
  v139 = v131;
  v140 = v132;
  v141 = v133;
  v142[0] = v134;
  sub_1E6744A10(&v139, &qword_1ED099DD0, &unk_1E68C5B48);
  sub_1E6744A10(v94, &qword_1ED099DC8, &qword_1E68C5B40);
  return sub_1E6744A10(v124, &qword_1ED099DC0, &qword_1E68C5B38);
}

uint64_t sub_1E687E84C(uint64_t a1)
{
  sub_1E68B21C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0, &qword_1E68C5B38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8, &qword_1E68C5B58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0, &unk_1E68C5B48);
  sub_1E68B3750();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8, &qword_1E68C38E0);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  return sub_1E68B2CB0();
}

uint64_t sub_1E687EA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v72 = a8;
  v71 = a7;
  v68 = a6;
  v67 = a5;
  v65 = a4;
  v58 = a3;
  v63 = a2;
  v69 = a1;
  v77 = a9;
  v66 = a11;
  v64 = a10;
  v75 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v75, v11);
  v76 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1E68B2DE0();
  v74 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v13);
  v70 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0, &qword_1E68C5B38);
  v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8, &qword_1E68C5B58);
  v101 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0, &unk_1E68C5B48);
  sub_1E68B3750();
  v102 = sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  v57[1] = swift_getWitnessTable();
  v15 = sub_1E68B2CC0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v57 - v18;
  v20 = sub_1E68B1E40();
  v59 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v57 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8, &qword_1E68C38E0);
  v24 = sub_1E68B1E40();
  v61 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v57[0] = v57 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v27 = sub_1E68B1E40();
  v62 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v60 = v57 - v33;
  sub_1E68B21D0();
  v78 = v63;
  v79 = v58;
  v80 = v65;
  v81 = v67;
  v82 = v68;
  v83 = v71;
  v84 = v72;
  v85 = v64;
  v86 = v66;
  v87 = v69;
  sub_1E68B2CB0();
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A50();
  (*(v16 + 8))(v19, v15);
  v35 = v70;
  sub_1E68B2DD0();
  sub_1E68B2500();
  v97 = WitnessTable;
  v98 = MEMORY[0x1E697E5D8];
  v36 = swift_getWitnessTable();
  v37 = v35;
  v38 = v73;
  sub_1E68B2750();
  (*(v74 + 8))(v37, v38);
  (*(v59 + 8))(v23, v20);
  v39 = *(v75 + 20);
  v40 = *MEMORY[0x1E697F468];
  v41 = sub_1E68B2160();
  v42 = v76;
  (*(*(v41 - 8) + 104))(&v76[v39], v40, v41);
  __asm { FMOV            V0.2D, #14.0 }

  *v42 = _Q0;
  v48 = sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8, &qword_1E68C38E0, MEMORY[0x1E6980468]);
  v95 = v36;
  v96 = v48;
  v49 = swift_getWitnessTable();
  sub_1E688558C(&qword_1EE2EA660, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  v50 = v57[0];
  sub_1E68B2AE0();
  sub_1E6768D04(v42);
  (*(v61 + 8))(v50, v24);
  v51 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v93 = v49;
  v94 = v51;
  v52 = swift_getWitnessTable();
  v53 = v60;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v54 = v62;
  v55 = *(v62 + 8);
  v55(v30, v27);
  v91 = 0;
  v92 = 1;
  v99 = &v91;
  (*(v54 + 16))(v30, v53, v27);
  v100 = v30;
  v90[0] = MEMORY[0x1E6981840];
  v90[1] = v27;
  v88 = MEMORY[0x1E6981838];
  v89 = v52;
  sub_1E6848F14(&v99, 2uLL, v90);
  v55(v53, v27);
  return (v55)(v30, v27);
}

uint64_t sub_1E687F30C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11)
{
  v112 = a8;
  *&v111 = a7;
  *(&v109 + 1) = a5;
  *&v110 = a6;
  v108 = a2;
  *&v109 = a4;
  v105 = a3;
  v118 = a9;
  v107 = a11;
  v106 = a10;
  v114 = sub_1E68B3750();
  v12 = sub_1E68B1E40();
  v13 = *(v12 - 8);
  v116 = v12;
  v117 = v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v113 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v115 = &v96 - v18;
  v19 = sub_1E68B21B0();
  v102 = *(v19 - 8);
  v103 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v98 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DC8, &qword_1E68C5B40);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v99 = &v96 - v24;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DD8, &qword_1E68C5B58);
  MEMORY[0x1EEE9AC00](v123, v25);
  v121 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v104 = &v96 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v124 = &v96 - v32;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DC0, &qword_1E68C5B38);
  MEMORY[0x1EEE9AC00](v122, v33);
  v119 = &v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = (&v96 - v37);
  v39 = *(a1 + 38);
  *&v101 = *(a1 + 37);
  v40 = *(a1 + 39);
  *&v100 = *(a1 + 40);
  v41 = (&v96 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DF8, &unk_1E68C5B80) + 36) - v37);
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978D8, &qword_1E68C3A30) + 28);
  v43 = *MEMORY[0x1E6980FD8];
  v44 = sub_1E68B2690();
  v45 = *(v44 - 8);
  (*(v45 + 104))(v41 + v42, v43, v44);
  (*(v45 + 56))(v41 + v42, 0, 1, v44);
  *v41 = swift_getKeyPath();
  v46 = v101;
  *v38 = v101;
  v38[1] = v39;
  v47 = v100;
  v38[2] = v40;
  v38[3] = v47;
  v48 = *(a1 + 14);
  KeyPath = swift_getKeyPath();
  v50 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E00, &unk_1E68C5BF0) + 36);
  v120 = v38;
  *v50 = KeyPath;
  *(v50 + 1) = v48;
  v50[16] = 0;
  v51 = a1[5];
  v96 = a1[4];
  v97 = v51;
  sub_1E673F228(v46, v39, v40, v47);
  v52 = sub_1E68B2500();
  v53 = v38 + *(v122 + 36);
  *v53 = v52;
  *(&v54 + 1) = *(&v96 + 1);
  *&v55 = v96;
  *(&v55 + 1) = *(&v97 + 1);
  *&v54 = v97;
  *(v53 + 24) = v55;
  *(v53 + 8) = v54;
  v53[40] = 0;
  v56 = *(a1 + 29);
  v57 = *(a1 + 30);
  v58 = *(a1 + 31);
  v59 = *(a1 + 32);
  v60 = *(a1 + 12);
  v61 = swift_getKeyPath();
  v62 = a1[1];
  v100 = *a1;
  v101 = v62;
  sub_1E673F228(v56, v57, v58, v59);
  v63 = sub_1E68B2500();
  LOBYTE(v138) = 0;
  LOBYTE(v130) = 0;
  *&v145 = v56;
  *(&v145 + 1) = v57;
  *&v146 = v58;
  *(&v146 + 1) = v59;
  *&v147 = v61;
  *(&v147 + 1) = v60;
  LOBYTE(v148) = 0;
  *(&v148 + 1) = *v153;
  DWORD1(v148) = *&v153[3];
  BYTE8(v148) = v63;
  *(&v148 + 9) = *v152;
  *(&v64 + 1) = *(&v100 + 1);
  *&v65 = v100;
  *&v64 = v101;
  HIDWORD(v148) = *&v152[3];
  *(&v65 + 1) = *(&v101 + 1);
  v149 = v64;
  v150 = v65;
  v151 = 0;
  v66 = v98;
  sub_1E68B21A0();
  *&v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DD0, &unk_1E68C5B48);
  *&v101 = sub_1E6885168(&qword_1EE2EA740, &qword_1ED099DD0, &unk_1E68C5B48, sub_1E67C6144);
  v67 = v99;
  sub_1E68B2950();
  (*(v102 + 8))(v66, v103);
  v154[4] = v149;
  v154[5] = v150;
  v155 = v151;
  v154[0] = v145;
  v154[1] = v146;
  v154[2] = v147;
  v154[3] = v148;
  sub_1E6744A10(v154, &qword_1ED099DD0, &unk_1E68C5B48);
  v68 = *(&v107 + 1);
  *&v145 = v108;
  *(&v145 + 1) = v105;
  v146 = v109;
  v69 = v110;
  *&v147 = v110;
  *(&v147 + 1) = v111;
  v70 = v112;
  *&v148 = v112;
  *(&v148 + 1) = v106;
  v149 = v107;
  type metadata accessor for FullWidthStageView(0, &v145);
  if ((*(v68 + 40))(v69, v68))
  {
    v71 = 1.0;
  }

  else
  {
    v71 = 0.7;
  }

  v72 = swift_getKeyPath();
  v73 = v104;
  sub_1E6761420(v67, v104, &qword_1ED099DC8, &qword_1E68C5B40);
  v74 = v124;
  v75 = v73 + *(v123 + 36);
  *v75 = v72;
  *(v75 + 8) = v71;
  sub_1E6761420(v73, v74, &qword_1ED099DD8, &qword_1E68C5B58);
  v76 = *(a1 + 33);
  v77 = *(a1 + 34);
  v78 = *(a1 + 35);
  v79 = *(a1 + 36);
  v80 = *(a1 + 13);
  v81 = swift_getKeyPath();
  v82 = a1[3];
  v110 = a1[2];
  v111 = v82;
  sub_1E673F228(v76, v77, v78, v79);
  v83 = sub_1E68B2500();
  LOBYTE(v145) = 0;
  LOBYTE(v130) = 0;
  *&v138 = v76;
  *(&v138 + 1) = v77;
  *&v139 = v78;
  *(&v139 + 1) = v79;
  *&v140 = v81;
  *(&v140 + 1) = v80;
  LOBYTE(v141) = 0;
  *(&v84 + 1) = *(&v110 + 1);
  *&v85 = v110;
  *&v84 = v111;
  BYTE8(v141) = v83;
  *(&v85 + 1) = *(&v111 + 1);
  v142 = v84;
  v143 = v85;
  v144 = 0;
  v137[6] = v70;
  WitnessTable = swift_getWitnessTable();
  v87 = v113;
  sub_1E68B2A60();
  v137[4] = WitnessTable;
  v137[5] = MEMORY[0x1E697E5D8];
  v88 = v116;
  v89 = swift_getWitnessTable();
  v90 = v115;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v91 = v117;
  v92 = *(v117 + 8);
  v92(v87, v88);
  v93 = v119;
  sub_1E67612FC(v120, v119, &qword_1ED099DC0, &qword_1E68C5B38);
  v137[0] = v93;
  v94 = v121;
  sub_1E67612FC(v124, v121, &qword_1ED099DD8, &qword_1E68C5B58);
  v134 = v142;
  v135 = v143;
  v136 = v144;
  v130 = v138;
  v131 = v139;
  v132 = v140;
  v133 = v141;
  v137[1] = v94;
  v137[2] = &v130;
  (*(v91 + 16))(v87, v90, v88);
  v137[3] = v87;
  sub_1E67612FC(&v138, &v145, &qword_1ED099DD0, &unk_1E68C5B48);
  v129[0] = v122;
  v129[1] = v123;
  v129[2] = v100;
  v129[3] = v88;
  v125 = sub_1E6885168(&qword_1EE2EA6D8, &qword_1ED099DC0, &qword_1E68C5B38, sub_1E68851EC);
  v126 = sub_1E688545C();
  v127 = v101;
  v128 = v89;
  sub_1E6848F14(v137, 4uLL, v129);
  sub_1E6744A10(&v138, &qword_1ED099DD0, &unk_1E68C5B48);
  v92(v90, v88);
  sub_1E6744A10(v124, &qword_1ED099DD8, &qword_1E68C5B58);
  sub_1E6744A10(v120, &qword_1ED099DC0, &qword_1E68C5B38);
  v92(v87, v88);
  v149 = v134;
  v150 = v135;
  v151 = v136;
  v145 = v130;
  v146 = v131;
  v147 = v132;
  v148 = v133;
  sub_1E6744A10(&v145, &qword_1ED099DD0, &unk_1E68C5B48);
  sub_1E6744A10(v121, &qword_1ED099DD8, &qword_1E68C5B58);
  return sub_1E6744A10(v119, &qword_1ED099DC0, &qword_1E68C5B38);
}

__n128 sub_1E687FD28@<Q0>(uint64_t a2@<X8>)
{
  if (*(v2 + 224) - 2 >= 2)
  {
    if (*(v2 + 224))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0981F8, &qword_1E68C19F0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1E68B77B0;
      *(v9 + 32) = sub_1E68B2B20();
      v10 = [objc_opt_self() systemBackgroundColor];
      sub_1E68B2B70();
      v11 = sub_1E68B2B40();

      *(v9 + 40) = v11;
      sub_1E68B2F40();
      MEMORY[0x1E69515E0](v9);
      sub_1E68B1D90();
      v29 = 1;
      *v36 = *v20;
      *&v36[8] = *&v20[8];
      *&v36[24] = *&v20[24];
      LOBYTE(v40) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DF0, &qword_1E68C5B78);
      sub_1E673F530(&qword_1EE2EA4F0, &qword_1ED099DF0, &qword_1E68C5B78, MEMORY[0x1E6981880]);
      sub_1E68355DC();
      sub_1E68B2210();
      v32 = v26;
      v33 = v27;
      v34 = v28;
      *v30 = *v24;
      *&v30[16] = *&v24[16];
      *&v30[32] = *&v24[32];
      v31 = v25;
      LOBYTE(v15) = 0;
    }

    else
    {
      v6 = sub_1E68B2E80();
      v8 = v7;
      sub_1E6880194(v36);
      v17 = *&v36[32];
      v18 = v37;
      v15 = *v36;
      v16 = *&v36[16];
      *&v20[32] = *&v36[32];
      v21 = v37;
      v22 = v38;
      *&v20[16] = *&v36[16];
      v19 = v38;
      *v20 = *v36;
      sub_1E67612FC(&v15, v30, &qword_1ED099E20, &qword_1E68C5C40);
      sub_1E6744A10(v20, &qword_1ED099E20, &qword_1E68C5C40);
      v37 = v17;
      v38 = v18;
      v39 = v19;
      *&v36[16] = v15;
      *&v36[32] = v16;
      v23 = 0;
      *v36 = v6;
      *&v36[8] = v8;
      LOBYTE(v40) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DF0, &qword_1E68C5B78);
      sub_1E673F530(&qword_1EE2EA4F0, &qword_1ED099DF0, &qword_1E68C5B78, MEMORY[0x1E6981880]);
      sub_1E68355DC();
      sub_1E68B2210();
      v32 = v26;
      v33 = v27;
      v34 = v28;
      *v30 = *v24;
      *&v30[16] = *&v24[16];
      *&v30[32] = *&v24[32];
      v31 = v25;
      v29 = 0;
    }

    v35 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DE8, &qword_1E68C5B70);
    sub_1E6885098();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0981F8, &qword_1E68C19F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1E68B77B0;
    v5 = [objc_opt_self() systemBackgroundColor];
    *(v4 + 32) = sub_1E68B2B70();
    *(v4 + 40) = sub_1E68B2B20();
    sub_1E68B2F40();
    sub_1E68B2F50();
    MEMORY[0x1E69515E0](v4);
    sub_1E68B1D90();
    v20[0] = 1;
    *v30 = *v24;
    *&v30[8] = *&v24[8];
    *&v30[24] = *&v24[24];
    v35 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DE8, &qword_1E68C5B70);
    sub_1E6885098();
    sub_1E68355DC();
  }

  sub_1E68B2210();
  v12 = v39;
  *(a2 + 64) = v38;
  *(a2 + 80) = v12;
  *(a2 + 96) = v40;
  v13 = *&v36[16];
  *a2 = *v36;
  *(a2 + 16) = v13;
  result = v37;
  *(a2 + 32) = *&v36[32];
  *(a2 + 48) = result;
  return result;
}

double sub_1E6880194@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0981F8, &qword_1E68C19F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E68B77B0;
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  *(v2 + 32) = sub_1E68B2B70();
  *(v2 + 40) = sub_1E68B2B20();
  sub_1E68B2F40();
  MEMORY[0x1E69515E0](v2);
  sub_1E68B1D90();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E68B77B0;
  *(v5 + 32) = sub_1E68B2B20();
  v6 = [v3 systemBackgroundColor];
  sub_1E68B2B70();
  v7 = sub_1E68B2B40();

  *(v5 + 40) = v7;
  sub_1E68B2F30();
  sub_1E68B2F20();
  MEMORY[0x1E69515E0](v5);
  sub_1E68B1D90();
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 24) = v11;
  *(a1 + 40) = v12;
  result = *&v13;
  *(a1 + 48) = v13;
  *(a1 + 64) = v14;
  return result;
}

double sub_1E6880334(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + *(a1 + 136);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = sub_1E677ADA4(*v4, v6, v7);
  v9 = (*(*(a1 + 88) + 56))(*(a1 + 48), v8);
  v10 = 0.0;
  if (v9)
  {
    v11 = sub_1E677ADA4(v5, v6, v7);
    v12 = v1 + *(a1 + 140);
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    sub_1E677ADA4(*v12, v14, v15);
    v10 = v11 * (v16 / sub_1E677ADA4(v13, v14, v15)) * 0.2;
  }

  return *(v2 + 120) + v10;
}

uint64_t sub_1E688041C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  sub_1E68B2440();
  v50 = a1[2];
  v49 = sub_1E68B1E40();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DB8, &qword_1E68C5B30);
  v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0, &qword_1E68C5B38);
  v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC8, &qword_1E68C5B40);
  v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0, &unk_1E68C5B48);
  v41 = a1[3];
  sub_1E68B1E40();
  v82 = sub_1E68B3750();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  v3 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097260, &qword_1E68BB680);
  sub_1E68B1E40();
  v28 = sub_1E68B2390();
  v4 = sub_1E68B1E40();
  v27 = MEMORY[0x1E6981870];
  WitnessTable = swift_getWitnessTable();
  v89 = sub_1E673F530(&qword_1EE2EA5B8, &qword_1ED097260, &qword_1E68BB680, MEMORY[0x1E6980A18]);
  v39 = MEMORY[0x1E697E858];
  v5 = swift_getWitnessTable();
  v40 = sub_1E688558C(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
  v86 = v5;
  v87 = v40;
  v38 = v4;
  v37 = swift_getWitnessTable();
  v79 = v4;
  v80 = v37;
  swift_getOpaqueTypeMetadata2();
  v34 = sub_1E68B1E40();
  *(&v44 + 1) = a1[5];
  v6 = sub_1E68B3750();
  v46 = a1 + 11;
  v47 = a1 + 9;
  v45 = a1[10];
  v85 = v45;
  v36 = v6;
  v35 = swift_getWitnessTable();
  v79 = v6;
  v80 = v35;
  swift_getOpaqueTypeMetadata2();
  v32 = sub_1E68B2220();
  *&v44 = a1[4];
  v42 = a1;
  v79 = sub_1E68B3750();
  v80 = MEMORY[0x1E6981840];
  v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0, &qword_1E68C5B38);
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8, &qword_1E68C5B58);
  v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0, &unk_1E68C5B48);
  v7 = sub_1E68B3750();
  v43 = a1[8];
  v78 = v43;
  v76 = v7;
  v77 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v31 = sub_1E68B2CC0();
  v30 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v29 = sub_1E68B1E40();
  v26[1] = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0, &qword_1E68C5B38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8, &qword_1E68C5B58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0, &unk_1E68C5B48);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  v33 = v3;
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8, &qword_1E68C38E0);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  v26[2] = sub_1E68B1E40();
  v26[3] = sub_1E68B2220();
  v26[4] = sub_1E68B2220();
  v27 = sub_1E68B2B90();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097228, &qword_1E68C5B60);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v9 = MEMORY[0x1E697E5D8];
  v74 = OpaqueTypeConformance2;
  v75 = MEMORY[0x1E697E5D8];
  v72 = swift_getWitnessTable();
  v73 = swift_getOpaqueTypeConformance2();
  v10 = swift_getWitnessTable();
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v40;
  v68 = swift_getWitnessTable();
  v69 = v9;
  v11 = swift_getWitnessTable();
  v66 = swift_getOpaqueTypeConformance2();
  v67 = v40;
  v64 = swift_getWitnessTable();
  v65 = MEMORY[0x1E697E5D8];
  v62 = v11;
  v63 = swift_getWitnessTable();
  v60 = v10;
  v61 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v81 = swift_getWitnessTable();
  v82 = sub_1E673F530(&qword_1EE2EA418, &qword_1ED097228, &qword_1E68C5B60, MEMORY[0x1E69E6ED8]);
  v79 = swift_getOpaqueTypeMetadata2();
  v80 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v12 = sub_1E68B2CE0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v26 - v19;
  sub_1E68B2E50();
  *&v21 = v50;
  *(&v21 + 1) = v41;
  v53 = v21;
  v54 = v44;
  v22 = *(v42 + 3);
  *&v23 = v45;
  *(&v23 + 1) = *v46;
  v57 = v23;
  *&v23 = v43;
  *(&v23 + 1) = *v47;
  v55 = v22;
  v56 = v23;
  v58 = v51;
  sub_1E68B2CD0();
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v24 = *(v13 + 8);
  v24(v16, v12);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v24)(v20, v12);
}

uint64_t sub_1E6880E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11)
{
  v122 = a4;
  v123 = a8;
  v109 = a2;
  v110 = a7;
  v120 = a6;
  v118 = a5;
  v111 = a1;
  v94 = a9;
  v119 = a11;
  v121 = a10;
  v12 = sub_1E68B2400();
  v92 = *(v12 - 8);
  v93 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v91 = v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097228, &qword_1E68C5B60);
  MEMORY[0x1EEE9AC00](v114, v15);
  v112 = v86 - v16;
  *&v153 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0, &qword_1E68C5B38);
  *(&v153 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC8, &qword_1E68C5B40);
  *&v154 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0, &unk_1E68C5B48);
  v117 = a3;
  sub_1E68B1E40();
  *(&v154 + 1) = sub_1E68B3750();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097260, &qword_1E68BB680);
  sub_1E68B1E40();
  v116 = sub_1E68B2390();
  v17 = sub_1E68B1E40();
  WitnessTable = swift_getWitnessTable();
  v19 = sub_1E673F530(&qword_1EE2EA5B8, &qword_1ED097260, &qword_1E68BB680, MEMORY[0x1E6980A18]);
  v205 = WitnessTable;
  v206 = v19;
  v115 = MEMORY[0x1E697E858];
  v20 = swift_getWitnessTable();
  v113 = sub_1E688558C(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
  v203 = v20;
  v204 = v113;
  v107 = v17;
  v106 = swift_getWitnessTable();
  *&v153 = v17;
  *(&v153 + 1) = v106;
  swift_getOpaqueTypeMetadata2();
  v103 = sub_1E68B1E40();
  v21 = sub_1E68B3750();
  v105 = v21;
  v104 = swift_getWitnessTable();
  *&v153 = v21;
  *(&v153 + 1) = v104;
  swift_getOpaqueTypeMetadata2();
  v102 = sub_1E68B2220();
  *&v153 = sub_1E68B3750();
  *(&v153 + 1) = MEMORY[0x1E6981840];
  *&v154 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0, &qword_1E68C5B38);
  *(&v154 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8, &qword_1E68C5B58);
  *&v155 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0, &unk_1E68C5B48);
  v22 = sub_1E68B3750();
  v202 = v123;
  v23 = swift_getWitnessTable();
  *&v138 = v22;
  *(&v138 + 1) = v23;
  *(&v155 + 1) = swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v24 = sub_1E68B2CC0();
  v101 = v24;
  v100 = swift_getWitnessTable();
  *&v153 = v24;
  *(&v153 + 1) = v100;
  swift_getOpaqueTypeMetadata2();
  v99 = sub_1E68B1E40();
  sub_1E68B1E40();
  *&v153 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0, &qword_1E68C5B38);
  *(&v153 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8, &qword_1E68C5B58);
  *&v154 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0, &unk_1E68C5B48);
  *(&v154 + 1) = sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8, &qword_1E68C38E0);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v25 = sub_1E68B2CC0();
  v96 = swift_getWitnessTable();
  *&v153 = v25;
  *(&v153 + 1) = v96;
  swift_getOpaqueTypeMetadata2();
  v95 = sub_1E68B1E40();
  v97 = sub_1E68B1E40();
  v98 = sub_1E68B2220();
  v116 = sub_1E68B2220();
  v26 = sub_1E68B2B90();
  v90 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v108 = v86 - v28;
  *&v153 = v107;
  *(&v153 + 1) = v106;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = MEMORY[0x1E697E5D8];
  v200 = OpaqueTypeConformance2;
  v201 = MEMORY[0x1E697E5D8];
  v31 = swift_getWitnessTable();
  *&v153 = v105;
  *(&v153 + 1) = v104;
  v32 = swift_getOpaqueTypeConformance2();
  v198 = v31;
  v199 = v32;
  v33 = swift_getWitnessTable();
  *&v153 = v101;
  *(&v153 + 1) = v100;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v113;
  v196 = v34;
  v197 = v113;
  v194 = swift_getWitnessTable();
  v195 = v30;
  v36 = swift_getWitnessTable();
  *&v153 = v25;
  *(&v153 + 1) = v96;
  v192 = swift_getOpaqueTypeConformance2();
  v193 = v35;
  v190 = swift_getWitnessTable();
  v191 = v30;
  v37 = swift_getWitnessTable();
  v188 = v36;
  v189 = v37;
  v38 = swift_getWitnessTable();
  v186 = v33;
  v187 = v38;
  v107 = swift_getWitnessTable();
  v185 = v107;
  v39 = swift_getWitnessTable();
  v40 = sub_1E673F530(&qword_1EE2EA418, &qword_1ED097228, &qword_1E68C5B60, MEMORY[0x1E69E6ED8]);
  *&v153 = v26;
  v41 = v114;
  *(&v153 + 1) = v114;
  *&v154 = v39;
  *(&v154 + 1) = v40;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v98 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v43);
  v96 = v86 - v44;
  v97 = v39;
  v106 = v26;
  *&v153 = v26;
  *(&v153 + 1) = v41;
  *&v154 = v39;
  v95 = v40;
  *(&v154 + 1) = v40;
  v45 = swift_getOpaqueTypeConformance2();
  v99 = OpaqueTypeMetadata2;
  *&v153 = OpaqueTypeMetadata2;
  v89 = v45;
  *(&v153 + 1) = v45;
  v104 = swift_getOpaqueTypeMetadata2();
  v101 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104, v46);
  v103 = v86 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v102 = v86 - v50;
  sub_1E68B2440();
  v51 = v109;
  v52 = sub_1E68B1E40();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v54);
  v56 = v86 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = v86 - v59;
  *&v153 = v51;
  *(&v153 + 1) = v117;
  *&v154 = v122;
  *(&v154 + 1) = v118;
  *&v155 = v120;
  v61 = v110;
  *(&v155 + 1) = v110;
  *&v156 = v123;
  *(&v156 + 1) = v121;
  v157 = v119;
  type metadata accessor for FullWidthStageView(0, &v153);
  v62 = v111;
  sub_1E68B2900();
  v63 = sub_1E688558C(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v183 = v61;
  v184 = v63;
  v64 = swift_getWitnessTable();
  v115 = v60;
  v87 = v64;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v88 = v53;
  v65 = *(v53 + 8);
  v113 = v56;
  v105 = v52;
  v100 = v65;
  v86[1] = v53 + 8;
  v65(v56, v52);
  sub_1E687FD28(v167);
  v173 = v167[4];
  v174 = v167[5];
  LOWORD(v175) = v168;
  v169 = v167[0];
  v170 = v167[1];
  v172 = v167[3];
  v171 = v167[2];
  sub_1E68B2E80();
  sub_1E68B1F30();
  v124 = v51;
  v125 = v117;
  v126 = v122;
  v127 = v118;
  v128 = v120;
  v129 = v61;
  v66 = v108;
  v130 = v123;
  v131 = v121;
  v132 = v119;
  v133 = v62;
  sub_1E68B2B80();
  v67 = *MEMORY[0x1E697E728];
  v68 = sub_1E68B1DE0();
  v69 = v112;
  (*(*(v68 - 8) + 104))(v112, v67, v68);
  sub_1E688558C(&qword_1EE2EA840, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E68B3190();
  if (result)
  {
    v71 = v96;
    v72 = v69;
    v73 = v106;
    sub_1E68B2870();
    sub_1E6744A10(v72, &qword_1ED097228, &qword_1E68C5B60);
    (*(v90 + 8))(v66, v73);
    v74 = v91;
    sub_1E68B23F0();
    v75 = v103;
    v76 = v99;
    v77 = v89;
    sub_1E68B2920();
    (*(v92 + 8))(v74, v93);
    (*(v98 + 8))(v71, v76);
    *&v153 = v76;
    *(&v153 + 1) = v77;
    v78 = swift_getOpaqueTypeConformance2();
    v79 = v102;
    v80 = v104;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v81 = v101;
    v82 = *(v101 + 8);
    v82(v75, v80);
    v83 = v113;
    v84 = v105;
    (*(v88 + 16))(v113, v115, v105);
    v148 = v179;
    v149 = v180;
    v150 = v181;
    v151 = v182;
    v144 = v175;
    v145 = v176;
    v146 = v177;
    v147 = v178;
    v140 = v171;
    v141 = v172;
    v142 = v173;
    v143 = v174;
    v138 = v169;
    v139 = v170;
    v152[0] = v83;
    v152[1] = &v138;
    (*(v81 + 16))(v75, v79, v80);
    v152[2] = v75;
    v137[0] = v84;
    v137[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DB8, &qword_1E68C5B30);
    v137[2] = v80;
    v134 = v87;
    v135 = sub_1E6884F80();
    v136 = v78;
    sub_1E6848F14(v152, 3uLL, v137);
    v82(v79, v80);
    v85 = v100;
    v100(v115, v84);
    v82(v75, v80);
    v163 = v148;
    v164 = v149;
    v165 = v150;
    v166 = v151;
    v159 = v144;
    v160 = v145;
    v161 = v146;
    v162 = v147;
    v155 = v140;
    v156 = v141;
    v157 = v142;
    v158 = v143;
    v153 = v138;
    v154 = v139;
    sub_1E6744A10(&v153, &qword_1ED099DB8, &qword_1E68C5B30);
    return v85(v113, v84);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6881F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v242 = a7;
  v240 = a6;
  v255 = a3;
  v256 = a5;
  v237 = a1;
  v238 = a2;
  v252 = a9;
  v245 = a12;
  v243 = a11;
  v241 = a10;
  v340 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0, &qword_1E68C5B38);
  v341 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8, &qword_1E68C5B58);
  v342 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0, &unk_1E68C5B48);
  v14 = sub_1E68B3750();
  v343 = sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8, &qword_1E68C38E0);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v15 = sub_1E68B2CC0();
  v217 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v216 = &v202 - v17;
  v258 = MEMORY[0x1E6981870];
  WitnessTable = swift_getWitnessTable();
  v267 = v15;
  v340 = v15;
  v341 = WitnessTable;
  v266 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v218 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v20);
  v229 = &v202 - v21;
  v22 = sub_1E68B2390();
  v220 = OpaqueTypeMetadata2;
  v257 = v22;
  v23 = sub_1E68B1E40();
  v221 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v23);
  v219 = &v202 - v24;
  v265 = v25;
  v26 = sub_1E68B1E40();
  v222 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v232 = &v202 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v231 = &v202 - v31;
  v239 = a4;
  v340 = sub_1E68B3750();
  v341 = MEMORY[0x1E6981840];
  v342 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0, &qword_1E68C5B38);
  v343 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8, &qword_1E68C5B58);
  v344 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0, &unk_1E68C5B48);
  v244 = a8;
  v356 = a8;
  v32 = swift_getWitnessTable();
  v354 = v14;
  v355 = v32;
  v345 = swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v33 = sub_1E68B2CC0();
  v34 = swift_getWitnessTable();
  v340 = v33;
  v341 = v34;
  v263 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v36 = sub_1E68B1E40();
  v37 = sub_1E68B1E40();
  v264 = v26;
  v38 = sub_1E68B2220();
  v234 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v39);
  v233 = &v202 - v40;
  v261 = swift_checkMetadataState();
  v209 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v261, v41);
  v208 = &v202 - v42;
  v214 = v35;
  v210 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v43, v44);
  v225 = &v202 - v45;
  v262 = v36;
  v213 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v46, v47);
  v212 = &v202 - v48;
  v253 = v37;
  v215 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v49, v50);
  v228 = &v202 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v227 = &v202 - v54;
  v55 = sub_1E68B3750();
  v259 = swift_getWitnessTable();
  v260 = v55;
  v340 = v55;
  v341 = v259;
  v56 = swift_getOpaqueTypeMetadata2();
  v235 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v57);
  v211 = &v202 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59, v60);
  v226 = &v202 - v61;
  v340 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0, &qword_1E68C5B38);
  v341 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC8, &qword_1E68C5B40);
  v342 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0, &unk_1E68C5B48);
  sub_1E68B1E40();
  v343 = sub_1E68B3750();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097260, &qword_1E68BB680);
  sub_1E68B1E40();
  v62 = sub_1E68B1E40();
  v63 = swift_getWitnessTable();
  v64 = sub_1E673F530(&qword_1EE2EA5B8, &qword_1ED097260, &qword_1E68BB680, MEMORY[0x1E6980A18]);
  v352 = v63;
  v353 = v64;
  v65 = swift_getWitnessTable();
  v66 = sub_1E688558C(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
  v206 = v65;
  v350 = v65;
  v351 = v66;
  v258 = v66;
  v67 = swift_getWitnessTable();
  v340 = v62;
  v341 = v67;
  v254 = v67;
  v68 = v38;
  v69 = swift_getOpaqueTypeMetadata2();
  v70 = sub_1E68B1E40();
  v230 = v56;
  v71 = sub_1E68B2220();
  v72 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v73);
  v236 = &v202 - v74;
  v75 = swift_checkMetadataState();
  v203 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v76);
  v78 = &v202 - v77;
  v257 = swift_checkMetadataState();
  v204 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257, v79);
  v81 = &v202 - v80;
  v205 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v82, v83);
  v85 = &v202 - v84;
  v248 = v70;
  v207 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v86, v87);
  v224 = &v202 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89, v90);
  v223 = &v202 - v91;
  v250 = v71;
  v249 = sub_1E68B2220();
  v247 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249, v92);
  v246 = &v202 - v93;
  v94 = v237;
  v95 = *(v237 + 224);
  v96 = MEMORY[0x1E697E5D8];
  v251 = v68;
  if (v95 > 1)
  {
    if (v95 == 2)
    {
      v340 = v238;
      v341 = v255;
      v342 = v239;
      v343 = v256;
      v344 = v240;
      v345 = v242;
      v346 = v244;
      v347 = v241;
      v348 = v243;
      v349 = v245;
      type metadata accessor for FullWidthStageView(0, &v340);
      sub_1E68B24B0();
      v99 = *(v94 + 224);
      v202 = v72;
      if (v99 == 1)
      {
        sub_1E68B2E80();
      }

      else
      {
        sub_1E68B2E90();
      }

      v133 = swift_checkMetadataState();
      v134 = v211;
      v135 = v259;
      sub_1E68B2960();
      v340 = v133;
      v341 = v135;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v137 = v230;
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
      v138 = *(v235 + 8);
      v235 += 8;
      v256 = v138;
      v138(v134, v137);
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
      v340 = v257;
      v341 = v254;
      v294 = swift_getOpaqueTypeConformance2();
      v139 = MEMORY[0x1E697E5D8];
      v295 = MEMORY[0x1E697E5D8];
      v140 = v248;
      v141 = swift_getWitnessTable();
      sub_1E6744DB8(v134, v140, v137, v141, OpaqueTypeConformance2);
      v292 = v141;
      v293 = OpaqueTypeConformance2;
      v245 = MEMORY[0x1E697F968];
      v142 = v250;
      v255 = swift_getWitnessTable();
      v340 = v261;
      v341 = v263;
      v290 = swift_getOpaqueTypeConformance2();
      v143 = v258;
      v291 = v258;
      v288 = swift_getWitnessTable();
      v289 = v139;
      v144 = swift_getWitnessTable();
      v340 = v267;
      v341 = v266;
      v286 = swift_getOpaqueTypeConformance2();
      v287 = v143;
      v284 = swift_getWitnessTable();
      v285 = MEMORY[0x1E697E5D8];
      v145 = swift_getWitnessTable();
      v282 = v144;
      v283 = v145;
      v146 = v251;
      v147 = swift_getWitnessTable();
      v148 = v246;
      v149 = v236;
      sub_1E6744CC0(v236, v142, v146, v255, v147);
      (*(v202 + 8))(v149, v142);
      v150 = v134;
      v124 = v254;
      v151 = v256;
      v256(v150, v137);
      v151(v226, v137);
      v131 = v148;
    }

    else
    {
      v340 = v238;
      v341 = v255;
      v342 = v239;
      v343 = v256;
      v344 = v240;
      v345 = v242;
      v346 = v244;
      v347 = v241;
      v348 = v243;
      v349 = v245;
      v102 = type metadata accessor for FullWidthStageView(0, &v340);
      v103 = v216;
      sub_1E687E84C(v102);
      sub_1E68B24B0();
      v104 = v267;
      v105 = v266;
      v106 = v258;
      if (*(v94 + 224) == 1)
      {
        sub_1E68B2E80();
      }

      else
      {
        sub_1E68B2E90();
      }

      v168 = 0.0;
      sub_1E68B2960();
      (*(v217 + 8))(v103, v104);
      v169 = 0.0;
      if (*(v94 + 224) != 2)
      {
        v169 = *(v94 + 128);
        v168 = *(v94 + 136) + 100.0;
      }

      v340 = v104;
      v341 = v105;
      v255 = MEMORY[0x1E697D318];
      v170 = swift_getOpaqueTypeConformance2();
      v171 = v219;
      v172 = v220;
      v173 = v229;
      sub_1E6883E9C(v220, v170, v168, v169, 0.0, v169);
      (*(v218 + 8))(v173, v172);
      sub_1E68B2520();
      sub_1E6880334(v102);
      v338 = v170;
      v339 = v106;
      v174 = v106;
      v175 = v265;
      v176 = swift_getWitnessTable();
      v177 = v232;
      sub_1E68B2A70();
      (*(v221 + 8))(v171, v175);
      v336 = v176;
      v337 = MEMORY[0x1E697E5D8];
      v178 = MEMORY[0x1E697E5D8];
      v179 = v264;
      v180 = swift_getWitnessTable();
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
      v256 = *(v222 + 8);
      v256(v177, v179);
      v181 = v180;
      v245 = v180;
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
      v340 = v261;
      v341 = v263;
      v334 = swift_getOpaqueTypeConformance2();
      v335 = v174;
      v332 = swift_getWitnessTable();
      v333 = v178;
      v182 = v253;
      v183 = swift_getWitnessTable();
      v184 = v233;
      sub_1E6744DB8(v177, v182, v179, v183, v181);
      v124 = v254;
      v340 = v257;
      v341 = v254;
      v330 = swift_getOpaqueTypeConformance2();
      v331 = MEMORY[0x1E697E5D8];
      v185 = swift_getWitnessTable();
      v340 = v260;
      v341 = v259;
      v186 = swift_getOpaqueTypeConformance2();
      v328 = v185;
      v329 = v186;
      v187 = v250;
      v188 = swift_getWitnessTable();
      v326 = v183;
      v327 = v245;
      v189 = v251;
      v190 = swift_getWitnessTable();
      v131 = v246;
      sub_1E6744DB8(v184, v187, v189, v188, v190);
      (*(v234 + 8))(v184, v189);
      v191 = v256;
      v256(v232, v179);
      v191(v231, v179);
    }
  }

  else if (v95)
  {
    v202 = v72;
    v340 = v238;
    v341 = v255;
    v342 = v239;
    v343 = v256;
    v344 = v240;
    v345 = v242;
    v346 = v244;
    v347 = v241;
    v348 = v243;
    v349 = v245;
    v256 = type metadata accessor for FullWidthStageView(0, &v340);
    sub_1E687DBE0(v256);
    v100 = 0.0;
    v101 = 0.0;
    if (*(v94 + 224) != 2)
    {
      v101 = *(v94 + 128);
      v100 = *(v94 + 136) + 100.0;
    }

    sub_1E6883E9C(v75, v206, v100, v101, 0.0, v101);
    (*(v203 + 8))(v78, v75);
    sub_1E68B24B0();
    if (*(v94 + 224) == 1)
    {
      sub_1E68B2E80();
    }

    else
    {
      sub_1E68B2E90();
    }

    v152 = v254;
    v153 = v257;
    sub_1E68B2960();
    (*(v204 + 8))(v81, v153);
    sub_1E68B2520();
    sub_1E6880334(v256);
    v340 = v153;
    v341 = v152;
    v154 = swift_getOpaqueTypeConformance2();
    v155 = v224;
    sub_1E68B2A70();
    (*(v205 + 8))(v85, v69);
    v280 = v154;
    v281 = v96;
    v156 = v248;
    v157 = swift_getWitnessTable();
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v256 = *(v207 + 8);
    v256(v155, v156);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v340 = v260;
    v341 = v259;
    v158 = swift_getOpaqueTypeConformance2();
    sub_1E6744CC0(v155, v156, v230, v157, v158);
    v278 = v157;
    v279 = v158;
    v245 = MEMORY[0x1E697F968];
    v159 = v250;
    v255 = swift_getWitnessTable();
    v340 = v261;
    v341 = v263;
    v276 = swift_getOpaqueTypeConformance2();
    v160 = v258;
    v277 = v258;
    v274 = swift_getWitnessTable();
    v275 = v96;
    v161 = swift_getWitnessTable();
    v340 = v267;
    v341 = v266;
    v272 = swift_getOpaqueTypeConformance2();
    v273 = v160;
    v270 = swift_getWitnessTable();
    v271 = v96;
    v162 = swift_getWitnessTable();
    v268 = v161;
    v269 = v162;
    v163 = v156;
    v124 = v254;
    v164 = v251;
    v165 = swift_getWitnessTable();
    v131 = v246;
    v166 = v236;
    sub_1E6744CC0(v236, v159, v164, v255, v165);
    (*(v202 + 8))(v166, v159);
    v167 = v256;
    v256(v224, v163);
    v167(v223, v163);
  }

  else
  {
    v340 = v238;
    v341 = v255;
    v342 = v239;
    v343 = v256;
    v344 = v240;
    v345 = v242;
    v346 = v244;
    v347 = v241;
    v348 = v243;
    v349 = v245;
    v97 = type metadata accessor for FullWidthStageView(0, &v340);
    v98 = v208;
    sub_1E687CF80(v97);
    sub_1E68B24B0();
    if (*(v94 + 224) == 1)
    {
      sub_1E68B2E80();
    }

    else
    {
      sub_1E68B2E90();
    }

    v107 = v253;
    v108 = v261;
    v109 = 0.0;
    v110 = v263;
    sub_1E68B2960();
    (*(v209 + 8))(v98, v108);
    v111 = 0.0;
    if (*(v94 + 224) != 2)
    {
      v111 = *(v94 + 128);
      v109 = *(v94 + 136) + 100.0;
    }

    v340 = v108;
    v341 = v110;
    v255 = MEMORY[0x1E697D318];
    v112 = swift_getOpaqueTypeConformance2();
    v113 = v212;
    v114 = v214;
    v115 = v225;
    sub_1E6883E9C(v214, v112, v109, v111, 0.0, v111);
    (*(v210 + 8))(v115, v114);
    sub_1E68B2520();
    sub_1E6880334(v97);
    v308 = v112;
    v116 = v258;
    v309 = v258;
    v117 = v262;
    v118 = swift_getWitnessTable();
    v119 = v228;
    sub_1E68B2A70();
    (*(v213 + 8))(v113, v117);
    v306 = v118;
    v307 = MEMORY[0x1E697E5D8];
    v120 = swift_getWitnessTable();
    v121 = v119;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v256 = *(v215 + 8);
    v256(v119, v107);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v340 = v267;
    v341 = v266;
    v304 = swift_getOpaqueTypeConformance2();
    v305 = v116;
    v302 = swift_getWitnessTable();
    v303 = MEMORY[0x1E697E5D8];
    v122 = v264;
    v245 = swift_getWitnessTable();
    v123 = v233;
    sub_1E6744CC0(v121, v107, v122, v120, v245);
    v124 = v254;
    v340 = v257;
    v341 = v254;
    v300 = swift_getOpaqueTypeConformance2();
    v301 = MEMORY[0x1E697E5D8];
    v125 = swift_getWitnessTable();
    v340 = v260;
    v341 = v259;
    v126 = swift_getOpaqueTypeConformance2();
    v298 = v125;
    v299 = v126;
    v127 = v250;
    v128 = swift_getWitnessTable();
    v296 = v120;
    v297 = v245;
    v129 = v251;
    v130 = swift_getWitnessTable();
    v131 = v246;
    sub_1E6744DB8(v123, v127, v129, v128, v130);
    (*(v234 + 8))(v123, v129);
    v132 = v256;
    v256(v228, v107);
    v132(v227, v107);
  }

  v340 = v257;
  v341 = v124;
  v324 = swift_getOpaqueTypeConformance2();
  v192 = MEMORY[0x1E697E5D8];
  v325 = MEMORY[0x1E697E5D8];
  v193 = swift_getWitnessTable();
  v340 = v260;
  v341 = v259;
  v194 = swift_getOpaqueTypeConformance2();
  v322 = v193;
  v323 = v194;
  v195 = swift_getWitnessTable();
  v340 = v261;
  v341 = v263;
  v320 = swift_getOpaqueTypeConformance2();
  v196 = v258;
  v321 = v258;
  v318 = swift_getWitnessTable();
  v319 = v192;
  v197 = swift_getWitnessTable();
  v340 = v267;
  v341 = v266;
  v316 = swift_getOpaqueTypeConformance2();
  v317 = v196;
  v314 = swift_getWitnessTable();
  v315 = v192;
  v198 = swift_getWitnessTable();
  v312 = v197;
  v313 = v198;
  v199 = swift_getWitnessTable();
  v310 = v195;
  v311 = v199;
  v200 = v249;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (*(v247 + 8))(v131, v200);
}

uint64_t sub_1E6883E9C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_1E68B2390();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E68B2500();
  *&v18[1] = a3;
  *&v18[2] = a4;
  *&v18[3] = a5;
  *&v18[4] = a6;
  v19 = 0;
  sub_1E68B2380();
  MEMORY[0x1E69512E0](v16, a1, v12, a2);
  return (*(v13 + 8))(v16, v12);
}

uint64_t _s15FitnessCanvasUI24FullWidthStageViewLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if ((vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 64), *(a2 + 64)), vceqq_f64(*(a1 + 80), *(a2 + 80))), vuzp1q_s32(vceqq_f64(*(a1 + 120), *(a2 + 120)), vceqq_f64(*(a1 + 136), *(a2 + 136)))))) & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 152), *(a2 + 152)), vceqq_f64(*(a1 + 168), *(a2 + 168))), xmmword_1E68BC1D0)) & 0xF) == 0 && *(a1 + 184) == *(a2 + 184) && *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104) && *(a1 + 112) == *(a2 + 112))
  {
    v2 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 192), *(a2 + 192)), vceqq_f64(*(a1 + 208), *(a2 + 208)))));
  }

  return v2 & 1;
}

unint64_t sub_1E68840F4()
{
  result = qword_1ED099D88;
  if (!qword_1ED099D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099D88);
  }

  return result;
}

unint64_t sub_1E688414C()
{
  result = qword_1ED099D98;
  if (!qword_1ED099D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099D98);
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1E68841DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 224))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E68841FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 224) = v3;
  return result;
}

void sub_1E6884288(void *a1)
{
  sub_1E673ED38();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1E68B3750();
      if (v3 <= 0x3F)
      {
        sub_1E68B3750();
        if (v4 <= 0x3F)
        {
          sub_1E68B3750();
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              sub_1E67E2354(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1E68843B8(int *a1, unsigned int a2, void *a3)
{
  v52 = a3[3];
  v53 = a3[2];
  v5 = *(v53 - 8);
  v6 = *(v5 + 84);
  v7 = *(v52 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v6 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(a3[4] - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v10 <= v13)
  {
    v10 = v13;
  }

  v50 = a3[5];
  v14 = *(v50 - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v10 <= v17)
  {
    v10 = v17;
  }

  v51 = a3[6];
  v18 = *(v51 - 8);
  v19 = *(*(a3[4] - 8) + 64);
  v20 = *(v5 + 80);
  v54 = *(*(v53 - 8) + 64);
  v21 = *(v7 + 80);
  v22 = *(v11 + 80);
  v23 = *(v14 + 80);
  v24 = *(v18 + 80);
  if (v10 <= *(v18 + 84))
  {
    v25 = *(v18 + 84);
  }

  else
  {
    v25 = v10;
  }

  if (v25 <= 0x7FFFFFFE)
  {
    v26 = 2147483646;
  }

  else
  {
    v26 = v25;
  }

  if (v8)
  {
    v27 = *(*(v52 - 8) + 64);
  }

  else
  {
    v27 = *(*(v52 - 8) + 64) + 1;
  }

  if (!v12)
  {
    ++v19;
  }

  if (v16)
  {
    v28 = *(v14 + 64);
  }

  else
  {
    v28 = *(v14 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v29 = v27 + v22;
  v30 = v19 + v23;
  v31 = v28 + v24;
  if (v26 < a2)
  {
    v32 = ((*(*(v51 - 8) + 64) + ((v31 + ((v30 + ((v29 + ((v54 + v21 + ((v20 + 328) & ~v20)) & ~v21)) & ~v22)) & ~v23)) & ~v24) + 31) & 0xFFFFFFFFFFFFFFF8) + 17;
    if (v32 <= 3)
    {
      v33 = ((a2 - v26 + 255) >> 8) + 1;
    }

    else
    {
      v33 = 2;
    }

    if (v33 >= 0x10000)
    {
      v34 = 4;
    }

    else
    {
      v34 = 2;
    }

    if (v33 < 0x100)
    {
      v34 = 1;
    }

    if (v33 >= 2)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v36 = *(a1 + v32);
        if (*(a1 + v32))
        {
          goto LABEL_47;
        }
      }

      else
      {
        v36 = *(a1 + v32);
        if (v36)
        {
          goto LABEL_47;
        }
      }
    }

    else if (v35)
    {
      v36 = *(a1 + v32);
      if (*(a1 + v32))
      {
LABEL_47:
        v37 = (v36 - 1) << (8 * v32);
        if (v32 <= 3)
        {
          v38 = *a1;
        }

        else
        {
          v37 = 0;
          v38 = *a1;
        }

        return v26 + (v38 | v37) + 1;
      }
    }
  }

  v39 = a1 & 0xFFFFFFFFFFFFFFF8;
  if (v25 > 0x7FFFFFFE)
  {
    v42 = (((((v39 + 271) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v20 + 32) & ~v20;
    if (v6 == v26)
    {
      v43 = *(v5 + 48);
      v44 = *(v5 + 84);
      v45 = v53;

      return v43(v42, v44, v45);
    }

    v46 = (v42 + v54 + v21) & ~v21;
    if (v9 == v26)
    {
      if (v8 >= 2)
      {
        v47 = (*(v7 + 48))(v46, v8, v52);
        goto LABEL_78;
      }

      return 0;
    }

    v48 = (v29 + v46) & ~v22;
    if (v13 == v26)
    {
      if (v12 < 2)
      {
        return 0;
      }

      v47 = (*(v11 + 48))(v48);
    }

    else
    {
      v49 = (v30 + v48) & ~v23;
      if (v17 != v26)
      {
        v43 = *(v18 + 48);
        v42 = (v31 + v49) & ~v24;
        v44 = *(v18 + 84);
        v45 = v51;

        return v43(v42, v44, v45);
      }

      if (v16 < 2)
      {
        return 0;
      }

      v47 = (*(v15 + 48))(v49, v16, v50);
    }

LABEL_78:
    if (v47 >= 2)
    {
      return v47 - 1;
    }

    else
    {
      return 0;
    }
  }

  v40 = *(v39 + 256);
  if (v40 >= 0xFFFFFFFF)
  {
    LODWORD(v40) = -1;
  }

  if ((v40 + 1) >= 2)
  {
    return v40;
  }

  else
  {
    return 0;
  }
}

void sub_1E688488C(unint64_t a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = 0;
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v54 = v10;
  if (v7 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v6 + 84);
  }

  v12 = a4[5];
  v52 = a4[4];
  v13 = *(v52 - 8);
  v14 = *(v13 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v11 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v11;
  }

  v49 = a4[5];
  v17 = *(v12 - 8);
  v18 = *(v17 + 84);
  if (v18)
  {
    v19 = v18 - 1;
  }

  else
  {
    v19 = 0;
  }

  if (v16 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  v50 = a4[6];
  v21 = *(v50 - 8);
  v22 = *(*(a4[3] - 8) + 64);
  v23 = *(*(v52 - 8) + 64);
  v24 = *(v6 + 80);
  v25 = *(*(a4[2] - 8) + 64);
  v53 = *(a4[3] - 8);
  v26 = *(v8 + 80);
  v27 = *(v8 + 84);
  v51 = *(v52 - 8);
  v28 = *(v13 + 80);
  v29 = *(v12 - 8);
  v30 = *(v17 + 80);
  v31 = *(v21 + 80);
  if (v20 <= *(v21 + 84))
  {
    v32 = *(v21 + 84);
  }

  else
  {
    v32 = v20;
  }

  if (v32 <= 0x7FFFFFFE)
  {
    v33 = 2147483646;
  }

  else
  {
    v33 = v32;
  }

  if (!v27)
  {
    ++v22;
  }

  if (!v14)
  {
    ++v23;
  }

  v34 = v22 + v28;
  v35 = v23 + v30;
  v36 = (v23 + v30 + ((v22 + v28 + ((v25 + v26 + ((v24 + 328) & ~v24)) & ~v26)) & ~v28)) & ~v30;
  if (v18)
  {
    v37 = *(v29 + 64);
  }

  else
  {
    v37 = *(v29 + 64) + 1;
  }

  v38 = v37 + v31;
  v39 = ((*(*(v50 - 8) + 64) + ((v37 + v31 + v36) & ~v31) + 31) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v33 < a3)
  {
    if (v39 <= 3)
    {
      v40 = ((a3 - v33 + 255) >> 8) + 1;
    }

    else
    {
      v40 = 2;
    }

    if (v40 >= 0x10000)
    {
      v41 = 4;
    }

    else
    {
      v41 = 2;
    }

    if (v40 < 0x100)
    {
      v41 = 1;
    }

    if (v40 >= 2)
    {
      v5 = v41;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v33 >= a2)
  {
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        *(a1 + v39) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_62;
      }

      *(a1 + v39) = 0;
    }

    else if (v5)
    {
      *(a1 + v39) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_62;
    }

    if (!a2)
    {
      return;
    }

LABEL_62:
    v44 = a1 & 0xFFFFFFFFFFFFFFF8;
    if (v32 <= 0x7FFFFFFE)
    {
      if (a2 > 0x7FFFFFFE)
      {
        *(v44 + 232) = 0u;
        *(v44 + 248) = 0u;
        *(v44 + 232) = a2 - 0x7FFFFFFF;
      }

      else
      {
        *(v44 + 256) = a2;
      }

      return;
    }

    v45 = (((((v44 + 271) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v24 + 32) & ~v24;
    if (v7 == v33)
    {
      v46 = *(v6 + 56);
    }

    else
    {
      v45 = (v45 + v25 + v26) & ~v26;
      if (v54 == v33)
      {
        if (v27 < 2)
        {
          return;
        }

        v46 = *(v53 + 56);
      }

      else
      {
        v45 = (v34 + v45) & ~v28;
        if (v15 != v33)
        {
          v47 = (v35 + v45) & ~v30;
          if (v19 == v33)
          {
            if (v18 >= 2)
            {
              v48 = *(v29 + 56);

              v48(v47, a2 + 1, v18, v49);
            }

            return;
          }

          v46 = *(v21 + 56);
          v45 = (v38 + v47) & ~v31;

LABEL_88:
          v46(v45);
          return;
        }

        if (v14 < 2)
        {
          return;
        }

        v46 = *(v51 + 56);
      }
    }

    goto LABEL_88;
  }

  v42 = ~v33 + a2;
  bzero(a1, v39);
  if (v39 <= 3)
  {
    v43 = (v42 >> 8) + 1;
  }

  else
  {
    v43 = 1;
  }

  if (v39 <= 3)
  {
    *a1 = v42;
    if (v5 > 1)
    {
LABEL_50:
      if (v5 == 2)
      {
        *(a1 + v39) = v43;
      }

      else
      {
        *(a1 + v39) = v43;
      }

      return;
    }
  }

  else
  {
    *a1 = v42;
    if (v5 > 1)
    {
      goto LABEL_50;
    }
  }

  if (v5)
  {
    *(a1 + v39) = v43;
  }
}

unint64_t sub_1E6884DF8()
{
  result = qword_1ED099DA0;
  if (!qword_1ED099DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099DA0);
  }

  return result;
}

unint64_t sub_1E6884E50()
{
  result = qword_1ED099DA8;
  if (!qword_1ED099DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099DA8);
  }

  return result;
}

unint64_t sub_1E6884EA8()
{
  result = qword_1ED099DB0;
  if (!qword_1ED099DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099DB0);
  }

  return result;
}

unint64_t sub_1E6884F80()
{
  result = qword_1EE2EA828;
  if (!qword_1EE2EA828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DB8, &qword_1E68C5B30);
    sub_1E688500C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA828);
  }

  return result;
}

unint64_t sub_1E688500C()
{
  result = qword_1EE2EA610;
  if (!qword_1EE2EA610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DE0, &qword_1E68C5B68);
    sub_1E6885098();
    sub_1E68355DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA610);
  }

  return result;
}

unint64_t sub_1E6885098()
{
  result = qword_1EE2EA628;
  if (!qword_1EE2EA628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DE8, &qword_1E68C5B70);
    sub_1E673F530(&qword_1EE2EA4F0, &qword_1ED099DF0, &qword_1E68C5B78, MEMORY[0x1E6981880]);
    sub_1E68355DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA628);
  }

  return result;
}

uint64_t sub_1E6885168(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1E68851EC()
{
  result = qword_1EE2EA748;
  if (!qword_1EE2EA748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099E00, &unk_1E68C5BF0);
    sub_1E68852A4();
    sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48, &qword_1E68BB6E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA748);
  }

  return result;
}

unint64_t sub_1E68852A4()
{
  result = qword_1EE2EA7E0;
  if (!qword_1EE2EA7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DF8, &unk_1E68C5B80);
    sub_1E67688F0();
    sub_1E673F530(&qword_1EE2EA5A0, &qword_1ED0978D8, &qword_1E68C3A30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7E0);
  }

  return result;
}

unint64_t sub_1E688535C()
{
  result = qword_1EE2EA6D0;
  if (!qword_1EE2EA6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC8, &qword_1E68C5B40);
    sub_1E6885168(&qword_1EE2EA740, &qword_1ED099DD0, &unk_1E68C5B48, sub_1E67C6144);
    sub_1E688558C(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA6D0);
  }

  return result;
}

unint64_t sub_1E688545C()
{
  result = qword_1ED099E08;
  if (!qword_1ED099E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8, &qword_1E68C5B58);
    sub_1E688535C();
    sub_1E673F530(&qword_1ED099E10, &qword_1ED099E18, &unk_1E68C5C30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099E08);
  }

  return result;
}

uint64_t sub_1E688558C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E68855D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646150656C746974 && a2 == 0xEC000000676E6964;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xEF676E6964646150 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x506E6F6974706163 && a2 == 0xEE00676E69646461 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E694C656C746974 && a2 == 0xEE0074696D694C65 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E68E2BA0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2BC0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x61506D6F74746F62 && a2 == 0xED0000676E696464 || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x50676E696461656CLL && a2 == 0xEE00676E69646461 || (sub_1E68B3B00() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6964646150706F74 && a2 == 0xEA0000000000676ELL || (sub_1E68B3B00() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E68E30A0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E68E30C0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E68E3000 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E68E3020 == a2)
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

uint64_t DynamicLayoutProvider.transform(currentLayout:updatingBounds:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v12 = a1[1];
  v41 = *a1;
  v42 = v12;
  v13 = a1[5];
  v45 = a1[4];
  v46 = v13;
  v47 = *(a1 + 96);
  v14 = a1[3];
  v43 = a1[2];
  v44 = v14;
  *&v13 = *(&v41 + 1);
  *&v14 = v41;
  v16 = *(&v42 + 1);
  v15 = v42;
  v49.origin.x = a3;
  v49.origin.y = a4;
  v49.size.width = a5;
  v49.size.height = a6;
  if (CGRectEqualToRect(*(&v13 - 8), v49))
  {
    v17 = a1[5];
    *(a2 + 64) = a1[4];
    *(a2 + 80) = v17;
    *(a2 + 96) = *(a1 + 96);
    v18 = a1[1];
    *a2 = *a1;
    *(a2 + 16) = v18;
    v19 = a1[3];
    *(a2 + 32) = a1[2];
    *(a2 + 48) = v19;
    return sub_1E688615C(&v41, &v34);
  }

  v48.origin.x = a3;
  v48.origin.y = a4;
  v48.size.width = a5;
  v48.size.height = a6;
  Width = CGRectGetWidth(v48);
  DynamicSizeClass.init(width:)(&v40, Width);
  if (v40 <= 2u)
  {
    if (v40)
    {
      *&v34 = a3;
      *(&v34 + 1) = a4;
      *&v35 = a5;
      *(&v35 + 1) = a6;
      *v36 = v43;
      if (v40 == 1)
      {
        *&v36[8] = xmmword_1E68C5CC0;
        *&v36[24] = xmmword_1E68C5CC0;
        v37 = BYTE8(v45);
        v38 = v46;
        v39 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E28, &qword_1E68C5CD0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1E68BFB70;
        *(v22 + 32) = 0;
        *(v22 + 40) = 1;
        *(v22 + 48) = 0x4024000000000000;
        *(v22 + 56) = 1;
        *(v22 + 64) = 1;
        *(v22 + 72) = 2;
        *(v22 + 80) = 0x4024000000000000;
        *(v22 + 88) = 1;
        *(v22 + 96) = 2;
        *(v22 + 104) = 3;
        *(v22 + 112) = 0x4024000000000000;
        *(v22 + 120) = 1;
        *(v22 + 128) = 3;
        *(v22 + 136) = 5;
        *(v22 + 144) = 0x4024000000000000;
        *(v22 + 152) = 4;
        *(v22 + 160) = 4;
        *(v22 + 168) = 10;
        *(v22 + 176) = 0x4024000000000000;
        *(v22 + 184) = 3;
        *(v22 + 192) = 5;
        *(v22 + 200) = 3;
        *(v22 + 208) = 0x4024000000000000;
      }

      else
      {
        *&v36[8] = xmmword_1E68C5CB0;
        *&v36[24] = xmmword_1E68C5CB0;
        v37 = BYTE8(v45);
        v38 = v46;
        v39 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E28, &qword_1E68C5CD0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1E68BFB70;
        *(v22 + 32) = 0;
        *(v22 + 40) = 3;
        *(v22 + 48) = 0x4034000000000000;
        *(v22 + 56) = 2;
        *(v22 + 64) = 1;
        *(v22 + 72) = 3;
        *(v22 + 80) = 0x4034000000000000;
        *(v22 + 88) = 1;
        *(v22 + 96) = 2;
        *(v22 + 104) = 4;
        *(v22 + 112) = 0x4034000000000000;
        *(v22 + 120) = 1;
        *(v22 + 128) = 3;
        *(v22 + 136) = 2;
        *(v22 + 144) = 0x4034000000000000;
        *(v22 + 152) = 1;
        *(v22 + 160) = 4;
        *(v22 + 168) = 5;
        *(v22 + 176) = 0x4034000000000000;
        *(v22 + 184) = 1;
        *(v22 + 192) = 5;
        *(v22 + 200) = 5;
        *(v22 + 208) = 0x4034000000000000;
      }

      *(v22 + 216) = 2;
      goto LABEL_17;
    }

    *&v34 = a3;
    *(&v34 + 1) = a4;
    *&v35 = a5;
    *(&v35 + 1) = a6;
    *v36 = v43;
    *&v36[8] = xmmword_1E68C35D0;
    *&v36[24] = xmmword_1E68C35D0;
    v37 = BYTE8(v45);
    v38 = v46;
    v39 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E28, &qword_1E68C5CD0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1E68BFB70;
    *(v22 + 32) = 0;
    v28 = 0x4020000000000000;
    *(v22 + 40) = 1;
    *(v22 + 48) = 0x4020000000000000;
    *(v22 + 56) = 1;
    *(v22 + 64) = 1;
    v29 = 2;
    *(v22 + 72) = 2;
    *(v22 + 80) = 0x4020000000000000;
    *(v22 + 88) = 1;
    *(v22 + 96) = 2;
    *(v22 + 104) = 3;
    *(v22 + 112) = 0x4020000000000000;
    *(v22 + 120) = 1;
    *(v22 + 128) = 3;
    *(v22 + 136) = 3;
    *(v22 + 144) = 0x4020000000000000;
    *(v22 + 152) = 2;
    *(v22 + 160) = 4;
    *(v22 + 168) = 10;
    *(v22 + 176) = 0x4020000000000000;
    *(v22 + 184) = 3;
    *(v22 + 192) = 5;
    *(v22 + 200) = 3;
LABEL_16:
    *(v22 + 208) = v28;
    *(v22 + 216) = v29;
LABEL_17:
    v24 = sub_1E67FA670(v22);
    swift_setDeallocating();
    swift_deallocClassInstance();
    sub_1E688615C(&v41, v33);
    result = sub_1E68861CC(&v34);
    v25 = *&v36[32];
    v26 = v37;
    v27 = v38;
    *(a2 + 96) = v39;
    goto LABEL_18;
  }

  if (v40 == 3)
  {
    *&v34 = a3;
    *(&v34 + 1) = a4;
    *&v35 = a5;
    *(&v35 + 1) = a6;
    *v36 = v43;
    *&v36[8] = xmmword_1E68C5CB0;
    *&v36[24] = xmmword_1E68C5CB0;
    v37 = BYTE8(v45);
    v38 = v46;
    v30 = 3;
    v39 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E28, &qword_1E68C5CD0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1E68BFB70;
    *(v22 + 32) = 0;
    v28 = 0x4034000000000000;
    *(v22 + 40) = 2;
    *(v22 + 48) = 0x4034000000000000;
    v29 = 1;
    *(v22 + 56) = 1;
    *(v22 + 64) = 1;
    *(v22 + 72) = 4;
    *(v22 + 80) = 0x4034000000000000;
    *(v22 + 88) = 1;
    *(v22 + 96) = 2;
    *(v22 + 104) = 5;
    *(v22 + 112) = 0x4034000000000000;
    *(v22 + 120) = 1;
    *(v22 + 128) = 3;
    *(v22 + 136) = 11;
    *(v22 + 144) = 0x4034000000000000;
    *(v22 + 152) = 4;
    *(v22 + 160) = 4;
    *(v22 + 168) = 6;
    *(v22 + 176) = 0x4034000000000000;
    *(v22 + 184) = 1;
    *(v22 + 192) = 5;
LABEL_15:
    *(v22 + 200) = v30;
    goto LABEL_16;
  }

  if (v40 != 4)
  {
    *&v34 = a3;
    *(&v34 + 1) = a4;
    *&v35 = a5;
    *(&v35 + 1) = a6;
    *v36 = v43;
    *&v36[8] = xmmword_1E68C5CA0;
    *&v36[24] = xmmword_1E68C5CA0;
    v37 = BYTE8(v45);
    v38 = v46;
    v30 = 5;
    v39 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E28, &qword_1E68C5CD0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1E68BFB70;
    *(v22 + 32) = 0;
    v28 = 0x4038000000000000;
    *(v22 + 40) = 3;
    *(v22 + 48) = 0x4038000000000000;
    v29 = 1;
    *(v22 + 56) = 1;
    *(v22 + 64) = 1;
    *(v22 + 72) = 6;
    *(v22 + 80) = 0x4038000000000000;
    *(v22 + 88) = 1;
    *(v22 + 96) = 2;
    *(v22 + 104) = 7;
    *(v22 + 112) = 0x4038000000000000;
    *(v22 + 120) = 1;
    *(v22 + 128) = 3;
    *(v22 + 136) = 4;
    *(v22 + 144) = 0x4038000000000000;
    *(v22 + 152) = 1;
    *(v22 + 160) = 4;
    *(v22 + 168) = 9;
    *(v22 + 176) = 0x4038000000000000;
    *(v22 + 184) = 1;
    *(v22 + 192) = 5;
    goto LABEL_15;
  }

  *&v34 = a3;
  *(&v34 + 1) = a4;
  *&v35 = a5;
  *(&v35 + 1) = a6;
  *v36 = v43;
  *&v36[8] = xmmword_1E68C5CA0;
  *&v36[24] = xmmword_1E68C5CA0;
  v37 = BYTE8(v45);
  v38 = v46;
  v39 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E28, &qword_1E68C5CD0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1E68BFB70;
  *(v23 + 32) = 0;
  *(v23 + 40) = 5;
  *(v23 + 48) = 0x4038000000000000;
  *(v23 + 56) = 2;
  *(v23 + 64) = 1;
  *(v23 + 72) = 5;
  *(v23 + 80) = 0x4038000000000000;
  *(v23 + 88) = 1;
  *(v23 + 96) = 2;
  *(v23 + 104) = 6;
  *(v23 + 112) = 0x4038000000000000;
  *(v23 + 120) = 1;
  *(v23 + 128) = 3;
  *(v23 + 136) = 13;
  *(v23 + 144) = 0x4038000000000000;
  *(v23 + 152) = 4;
  *(v23 + 160) = 4;
  *(v23 + 168) = 7;
  *(v23 + 176) = 0x4038000000000000;
  *(v23 + 184) = 1;
  *(v23 + 192) = 5;
  *(v23 + 200) = 4;
  *(v23 + 208) = 0x4038000000000000;
  *(v23 + 216) = 1;
  v24 = sub_1E67FA670(v23);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1E688615C(&v41, v33);
  result = sub_1E68861CC(&v34);
  v25 = *&v36[32];
  v26 = v37;
  v27 = v38;
  *(a2 + 96) = 4;
LABEL_18:
  v31 = v35;
  *a2 = v34;
  *(a2 + 16) = v31;
  v32 = *&v36[16];
  *(a2 + 32) = *v36;
  *(a2 + 48) = v32;
  *(a2 + 64) = v25;
  *(a2 + 72) = v26;
  *(a2 + 80) = v27;
  *(a2 + 88) = v24;
  return result;
}

uint64_t DynamicLayoutProvider.transform(currentLayout:updatingDynamicTypeSize:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  *(a3 + 96) = *(a1 + 96);
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  v7 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v7;
  *(a3 + 64) = v3;
  *(a3 + 72) = a2;
  *(a3 + 80) = v4;
  *(a3 + 88) = v5;
}

uint64_t sub_1E6886120@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  *(a3 + 96) = *(a1 + 96);
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  v7 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v7;
  *(a3 + 64) = v3;
  *(a3 + 72) = a2;
  *(a3 + 80) = v4;
  *(a3 + 88) = v5;
}

uint64_t sub_1E688615C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E30, &qword_1E68C5CD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E68861CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E30, &qword_1E68C5CD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E6886238()
{
  result = qword_1ED099E38;
  if (!qword_1ED099E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099E38);
  }

  return result;
}

unint64_t sub_1E6886290()
{
  result = qword_1ED099E40;
  if (!qword_1ED099E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099E40);
  }

  return result;
}

uint64_t sub_1E688635C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8, &qword_1E68B4950);
  swift_storeEnumTagMultiPayload();
  v25 = type metadata accessor for StandardCardView(0, a17, a18, v24);
  v26 = &a9[v25[9]];
  v27 = *(a1 + 16);
  *v26 = *a1;
  *(v26 + 1) = v27;
  *(v26 + 12) = *(a1 + 96);
  v28 = *(a1 + 80);
  *(v26 + 4) = *(a1 + 64);
  *(v26 + 5) = v28;
  v29 = *(a1 + 48);
  *(v26 + 2) = *(a1 + 32);
  *(v26 + 3) = v29;
  (*(*(a17 - 8) + 32))(&a9[v25[10]], a2, a17);
  v30 = &a9[v25[11]];
  *v30 = a3;
  *(v30 + 1) = a4;
  *(v30 + 2) = a5;
  *(v30 + 3) = a6;
  v31 = &a9[v25[12]];
  *v31 = a7;
  *(v31 + 1) = a8;
  *(v31 + 2) = a10;
  *(v31 + 3) = a11;
  v32 = &a9[v25[13]];
  *v32 = a12;
  *(v32 + 2) = a13;
  *(v32 + 3) = a14;
  v33 = &a9[v25[14]];
  result = swift_allocObject();
  *(result + 16) = a15;
  *(result + 24) = a16;
  *v33 = sub_1E673F5E0;
  *(v33 + 1) = result;
  return result;
}

__n128 static StandardCardViewLayout.default.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1ED096D70 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1ED099E98;
  *(a1 + 64) = xmmword_1ED099E88;
  *(a1 + 80) = v1;
  *(a1 + 96) = qword_1ED099EA8;
  v2 = *&qword_1ED099E58;
  *a1 = xmmword_1ED099E48;
  *(a1 + 16) = v2;
  result = unk_1ED099E78;
  *(a1 + 32) = xmmword_1ED099E68;
  *(a1 + 48) = result;
  return result;
}

__n128 StandardCardViewLayout.contentInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 56);
  v3 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 StandardCardViewLayout.init(artworkAspectRatio:artworkCornerRadius:titleEdgePadding:titleLineLimit:subtitleLineLimit:captionLineLimit:contentInsets:titleSpacing:subtitleSpacing:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 16) = a8;
  *(a5 + 24) = a9;
  *(a5 + 32) = a1;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  result = *a4;
  v12 = *(a4 + 16);
  *(a5 + 56) = *a4;
  *(a5 + 72) = v12;
  *(a5 + 88) = a10;
  *(a5 + 96) = a11;
  return result;
}

uint64_t sub_1E688660C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E694C656C746974;
    if (a1 == 2)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD000000000000013;
    if (!a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x49746E65746E6F63;
    v2 = 0x617053656C746974;
    if (a1 != 7)
    {
      v2 = 0x656C746974627573;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E688676C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E6889DC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E6886794(uint64_t a1)
{
  v2 = sub_1E68892E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68867D0(uint64_t a1)
{
  v2 = sub_1E68892E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E688680C(uint64_t a1)
{
  v1 = 8.0;
  if (sub_1E68B2DF0())
  {
    sub_1E68B1A40();
    v1 = v2;
  }

  xmmword_1ED099E48 = xmmword_1E68BE010;
  qword_1ED099E58 = *&v1;
  qword_1ED099E60 = 0x4024000000000000;
  *&xmmword_1ED099E68 = 2;
  result = 0.0;
  *(&xmmword_1ED099E68 + 8) = 0u;
  unk_1ED099E80 = 0u;
  *(&xmmword_1ED099E88 + 8) = 0u;
  unk_1ED099EA0 = 0u;
  return result;
}

uint64_t StandardCardViewLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099EB0, &qword_1E68C5D20);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = v1[4];
  v21 = v1[5];
  v22 = v13;
  v20 = v1[6];
  v14 = *(v1 + 7);
  v18 = *(v1 + 9);
  v19 = v14;
  v16 = v1[11];
  v15 = v1[12];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68892E4();
  sub_1E68B3BD0();
  *&v23 = v9;
  *(&v23 + 1) = v10;
  v25 = 0;
  type metadata accessor for CGSize(0);
  sub_1E6889AD4(&qword_1EE2EA448, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
  sub_1E68B3AB0();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  *&v23 = v12;
  v25 = 1;
  sub_1E67621E8();
  sub_1E68B3AB0();
  *&v23 = v11;
  v25 = 2;
  sub_1E68B3AB0();
  LOBYTE(v23) = 3;
  sub_1E68B3AA0();
  LOBYTE(v23) = 4;
  sub_1E68B3AA0();
  LOBYTE(v23) = 5;
  sub_1E68B3AA0();
  v23 = v19;
  v24 = v18;
  v25 = 6;
  sub_1E67F4B08();
  sub_1E68B3AB0();
  *&v23 = v16;
  v25 = 7;
  sub_1E68B3AB0();
  *&v23 = v15;
  v25 = 8;
  sub_1E68B3AB0();
  return (*(v5 + 8))(v8, 0);
}

uint64_t StandardCardViewLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099EC0, &qword_1E68C5D28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68892E4();
  sub_1E68B3BC0();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v26 = 0;
    sub_1E6889AD4(&qword_1ED096DC0, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    sub_1E68B3A00();
    v10 = v24;
    v26 = 1;
    sub_1E6762A60();
    sub_1E68B3A00();
    v11 = v24;
    v26 = 2;
    sub_1E68B3A00();
    v12 = v24;
    LOBYTE(v24) = 3;
    v13 = sub_1E68B39F0();
    LOBYTE(v24) = 4;
    v23 = sub_1E68B39F0();
    LOBYTE(v24) = 5;
    v22 = sub_1E68B39F0();
    v26 = 6;
    sub_1E67F4BB0();
    sub_1E68B3A00();
    v20 = v24;
    v21 = v25;
    v26 = 7;
    sub_1E68B3A00();
    v15 = v24;
    v26 = 8;
    sub_1E68B3A00();
    (*(v6 + 8))(v9, v5);
    v16 = v24;
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    v17 = v22;
    v18 = v23;
    *(a2 + 32) = v13;
    *(a2 + 40) = v18;
    *(a2 + 48) = v17;
    v19 = v21;
    *(a2 + 56) = v20;
    *(a2 + 72) = v19;
    *(a2 + 88) = v15;
    *(a2 + 96) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t StandardCardViewLayout.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v20 = *(v0 + 96);
  sub_1E673E7F4(*v0, *(v0 + 8));
  if (v1 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v1;
  }

  MEMORY[0x1E69523F0](*&v11);
  if (v2 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v2;
  }

  MEMORY[0x1E69523F0](*&v12);
  MEMORY[0x1E69523D0](v3);
  MEMORY[0x1E69523D0](v4);
  MEMORY[0x1E69523D0](v5);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1E69523F0](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x1E69523F0](*&v14);
  if (v8 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8;
  }

  MEMORY[0x1E69523F0](*&v15);
  if (v9 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v9;
  }

  MEMORY[0x1E69523F0](*&v16);
  if (v10 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v10;
  }

  MEMORY[0x1E69523F0](*&v17);
  v18 = v20;
  if (v20 == 0.0)
  {
    v18 = 0.0;
  }

  return MEMORY[0x1E69523F0](*&v18);
}

uint64_t StandardCardViewLayout.hashValue.getter()
{
  sub_1E68B3B70();
  StandardCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E6887150()
{
  sub_1E68B3B70();
  StandardCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E6887194(uint64_t a1)
{
  sub_1E68B3B70();
  StandardCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E68871D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_1E68B1EB0();
  v51 = v3;
  v67 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v66 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *(a1 - 8);
  v64 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v61 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(a1 + 16);
  v59 = a1;
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v9 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099EE8, &qword_1E68C5FF0);
  sub_1E68B1E40();
  v10 = sub_1E68B1E10();
  v60 = *(a1 + 24);
  v82 = v60;
  v83 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v80 = WitnessTable;
  v81 = v12;
  v13 = swift_getWitnessTable();
  v14 = sub_1E6889AD4(&qword_1EE2EA838, MEMORY[0x1E697C168], MEMORY[0x1E697C160]);
  v76 = v9;
  v77 = v10;
  v78 = v13;
  v79 = v14;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099EF0, &unk_1E68C5FF8);
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  v15 = sub_1E68B2220();
  v16 = sub_1E673F530(&qword_1ED099EF8, &qword_1ED099EE8, &qword_1E68C5FF0, MEMORY[0x1E697EC18]);
  v74 = v13;
  v75 = v16;
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v72 = v17;
  v73 = v18;
  v57 = v15;
  v56 = swift_getWitnessTable();
  v19 = sub_1E68B2C30();
  v58 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v52 = &v47 - v21;
  v22 = swift_getWitnessTable();
  v50 = v22;
  v49 = sub_1E6889AD4(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v76 = v19;
  v77 = v3;
  v78 = v22;
  v79 = v49;
  v53 = MEMORY[0x1E697CDB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v23);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v48 = &v47 - v29;
  v30 = v62;
  v31 = v61;
  v32 = v65;
  v33 = v59;
  (*(v62 + 16))(v61, v65, v59, v28);
  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = swift_allocObject();
  v36 = v63;
  v37 = v60;
  *(v35 + 16) = v63;
  *(v35 + 24) = v37;
  (*(v30 + 32))(v35 + v34, v31, v33);
  v69 = v36;
  v70 = v37;
  v71 = v32;
  v38 = v52;
  sub_1E68B2C20();
  v39 = v66;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  v40 = v51;
  v41 = v50;
  v42 = v49;
  sub_1E68B2790();
  (*(v67 + 8))(v39, v40);
  (*(v58 + 8))(v38, v19);
  v76 = v19;
  v77 = v40;
  v78 = v41;
  v79 = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v48;
  v44 = OpaqueTypeMetadata2;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v45 = *(v55 + 8);
  v45(v25, v44);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v45)(v43, v44);
}

uint64_t sub_1E6887978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for StandardCardView(0, a2, a3, a4) + 56);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;

  sub_1E677A174(v5);
}

uint64_t sub_1E68879F8@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a1;
  v92 = a4;
  v88 = a2;
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v5 = sub_1E68B1E40();
  v6 = sub_1E68B1E10();
  v89 = a3;
  v107 = a3;
  v108 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v105 = WitnessTable;
  v106 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v101 = v5;
  v102 = v6;
  v91 = swift_getWitnessTable();
  v103 = v91;
  v104 = sub_1E6889AD4(&qword_1EE2EA838, MEMORY[0x1E697C168], MEMORY[0x1E697C160]);
  swift_getOpaqueTypeMetadata2();
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099EF0, &unk_1E68C5FF8);
  swift_getTupleTypeMetadata3();
  v77 = sub_1E68B2F00();
  v75 = swift_getWitnessTable();
  v7 = sub_1E68B2CC0();
  v81 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v80 = &v70 - v13;
  v72 = swift_checkMetadataState();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v14);
  v70 = &v70 - v15;
  v16 = swift_checkMetadataState();
  v74 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v73 = &v70 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099EE8, &qword_1E68C5FF0);
  v76 = v16;
  v19 = sub_1E68B1E40();
  v79 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v78 = &v70 - v25;
  v26 = sub_1E68B1DE0();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v70 - v33;
  v90 = v7;
  v87 = sub_1E68B2220();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v35);
  v85 = &v70 - v36;
  v37 = v84;
  sub_1E677A200(v34);
  (*(v27 + 104))(v30, *MEMORY[0x1E697E6C0], v26);
  LOBYTE(v16) = sub_1E68B1DD0();
  v38 = *(v27 + 8);
  v38(v30, v26);
  v38(v34, v26);
  if (v16)
  {
    v41 = v88;
    v40 = v89;
    type metadata accessor for StandardCardView(0, v88, v89, v39);
    v42 = v70;
    sub_1E68B2780();
    v43 = v73;
    v44 = v72;
    sub_1E68B2810();
    (*(v71 + 8))(v42, v44);
    v45 = sub_1E68B2E50();
    MEMORY[0x1EEE9AC00](v45, v46);
    *(&v70 - 4) = v41;
    *(&v70 - 3) = v40;
    *(&v70 - 2) = v37;
    sub_1E6889BF0();
    v47 = v76;
    v48 = v91;
    sub_1E68B2A40();
    (*(v74 + 8))(v43, v47);
    v49 = sub_1E673F530(&qword_1ED099EF8, &qword_1ED099EE8, &qword_1E68C5FF0, MEMORY[0x1E697EC18]);
    v93 = v48;
    v94 = v49;
    v50 = swift_getWitnessTable();
    v51 = v78;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v52 = *(v79 + 8);
    v52(v22, v19);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v53 = v90;
    v54 = swift_getWitnessTable();
    v55 = v85;
    sub_1E6744CC0(v22, v19, v53, v50, v54);
    v52(v22, v19);
    v52(v51, v19);
  }

  else
  {
    v56 = sub_1E68B21D0();
    MEMORY[0x1EEE9AC00](v56, v57);
    v58 = v89;
    *(&v70 - 4) = v88;
    *(&v70 - 3) = v58;
    *(&v70 - 2) = v37;
    sub_1E68B2CB0();
    v59 = v90;
    v60 = swift_getWitnessTable();
    v61 = v80;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v62 = *(v81 + 8);
    v62(v10, v59);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v63 = sub_1E673F530(&qword_1ED099EF8, &qword_1ED099EE8, &qword_1E68C5FF0, MEMORY[0x1E697EC18]);
    v48 = v91;
    v99 = v91;
    v100 = v63;
    v64 = swift_getWitnessTable();
    v55 = v85;
    sub_1E6744DB8(v10, v19, v59, v64, v60);
    v62(v10, v59);
    v62(v61, v59);
  }

  v65 = sub_1E673F530(&qword_1ED099EF8, &qword_1ED099EE8, &qword_1E68C5FF0, MEMORY[0x1E697EC18]);
  v97 = v48;
  v98 = v65;
  v66 = swift_getWitnessTable();
  v67 = swift_getWitnessTable();
  v95 = v66;
  v96 = v67;
  v68 = v87;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (*(v86 + 8))(v55, v68);
}

double sub_1E68884D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1E68B21D0();
  v6 = v2 + *(a1 + 36);
  v7 = *(v6 + 88);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099F18, &qword_1E68C6010);
  sub_1E6888C2C(v2, *(a1 + 16), *(a1 + 24), a2 + *(v8 + 44));
  v13 = *(v6 + 56);
  v14 = *(v6 + 72);
  LOBYTE(a1) = sub_1E68B2500();
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099EF0, &unk_1E68C5FF8) + 36);
  *(&v11 + 1) = *(&v13 + 1);
  *&v10 = v13;
  *&v11 = v14;
  *v9 = a1;
  *(&v10 + 1) = *(&v14 + 1);
  *(v9 + 24) = v10;
  *(v9 + 8) = v11;
  *(v9 + 40) = 0;
  return *&v11;
}

uint64_t sub_1E6888594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a4;
  v67 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099EF0, &unk_1E68C5FF8);
  MEMORY[0x1EEE9AC00](v65, v6);
  v64 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v63 = &v49 - v10;
  v11 = sub_1E68B1E10();
  v53 = v11;
  v62 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v61 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E68B1E40();
  v60 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v58 = &v49 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v56 = v14;
  v17 = sub_1E68B1E40();
  v59 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v57 = &v49 - v19;
  v80 = a3;
  v81 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v78 = WitnessTable;
  v79 = v21;
  v22 = swift_getWitnessTable();
  v52 = v22;
  v51 = sub_1E6889AD4(&qword_1EE2EA838, MEMORY[0x1E697C168], MEMORY[0x1E697C160]);
  v74 = v17;
  v75 = v11;
  v76 = v22;
  v77 = v51;
  v54 = MEMORY[0x1E697CDE0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v24);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v50 = &v49 - v29;
  v31 = type metadata accessor for StandardCardView(0, a2, a3, v30);
  v32 = v58;
  sub_1E68B2780();
  v33 = v57;
  v34 = v56;
  sub_1E68B2810();
  (*(v60 + 8))(v32, v34);
  v35 = v61;
  sub_1E68B1F70();
  v36 = v53;
  v37 = v52;
  v38 = v51;
  sub_1E68B27C0();
  (*(v62 + 8))(v35, v36);
  (*(v59 + 8))(v33, v17);
  v74 = v17;
  v75 = v36;
  v76 = v37;
  v77 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v50;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v41 = v55;
  v42 = *(v55 + 8);
  v42(v26, OpaqueTypeMetadata2);
  v43 = v63;
  v44 = sub_1E68884D0(v31, v63);
  (*(v41 + 16))(v26, v40, OpaqueTypeMetadata2, v44);
  v72 = 0x4014000000000000;
  v73 = 0;
  v74 = v26;
  v75 = &v72;
  v45 = v43;
  v46 = v43;
  v47 = v64;
  sub_1E67612FC(v45, v64, &qword_1ED099EF0, &unk_1E68C5FF8);
  v76 = v47;
  v71[0] = OpaqueTypeMetadata2;
  v71[1] = MEMORY[0x1E6981840];
  v71[2] = v65;
  v68 = OpaqueTypeConformance2;
  v69 = MEMORY[0x1E6981838];
  v70 = sub_1E6889BF0();
  sub_1E6848F14(&v74, 3uLL, v71);
  sub_1E6744A10(v46, &qword_1ED099EF0, &unk_1E68C5FF8);
  v42(v40, OpaqueTypeMetadata2);
  sub_1E6744A10(v47, &qword_1ED099EF0, &unk_1E68C5FF8);
  return (v42)(v26, OpaqueTypeMetadata2);
}

uint64_t sub_1E6888C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a4;
  v7 = sub_1E68B21B0();
  *&v93 = *(v7 - 8);
  *(&v93 + 1) = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v81[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099F20, &qword_1E68C6018);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v95 = &v81[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v81[-v16];
  v86 = type metadata accessor for StandardCardView(0, a2, a3, v18);
  v87 = a1;
  v19 = (a1 + v86[11]);
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  v23 = v19[3];
  v24 = (a1 + v86[9]);
  v94 = v24[4];
  KeyPath = swift_getKeyPath();
  LOBYTE(v126[0]) = 0;
  sub_1E673F228(v20, v21, v22, v23);
  LOBYTE(a1) = sub_1E68B2500();
  sub_1E68B1B30();
  LOBYTE(v110[0]) = 0;
  *&v119 = v20;
  *(&v119 + 1) = v21;
  *&v120 = v22;
  *(&v120 + 1) = v23;
  *&v121 = KeyPath;
  *(&v121 + 1) = v94;
  LOBYTE(v122) = 0;
  *(&v122 + 1) = 256;
  BYTE8(v122) = a1;
  *&v123 = v26;
  *(&v123 + 1) = v27;
  *&v124 = v28;
  *(&v124 + 1) = v29;
  v125 = 0;
  sub_1E68B21A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099F28, &qword_1E68C6050);
  sub_1E6889CA8();
  v94 = v17;
  v30 = v24;
  sub_1E68B2950();
  (*(v93 + 8))(v10, *(&v93 + 1));
  v126[4] = v123;
  v126[5] = v124;
  v127 = v125;
  v126[0] = v119;
  v126[1] = v120;
  v126[2] = v121;
  v126[3] = v122;
  sub_1E6744A10(v126, &qword_1ED099F28, &qword_1E68C6050);
  v31 = v86;
  v32 = v87;
  v33 = (v87 + v86[12]);
  v35 = *v33;
  v34 = v33[1];
  v36 = v33[2];
  v37 = v33[3];
  *(&v93 + 1) = v30[5];
  *&v93 = swift_getKeyPath();
  LOBYTE(v119) = 0;
  v90 = v36;
  v91 = v34;
  v38 = v37;
  sub_1E673F228(v35, v34, v36, v37);
  v92 = sub_1E68B2500();
  sub_1E68B1B30();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = (v32 + v31[13]);
  v48 = *v47;
  v49 = v47[1];
  v51 = v47[2];
  v50 = v47[3];
  if (v50)
  {
    v85 = v30[12];
  }

  else
  {
    v85 = 0;
  }

  v84 = v50 == 0;
  v86 = v30[6];
  v83 = swift_getKeyPath();
  LOBYTE(v119) = 0;
  sub_1E673F228(v48, v49, v51, v50);
  v82 = sub_1E68B2500();
  sub_1E68B1B30();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v95;
  sub_1E67612FC(v94, v95, &qword_1ED099F20, &qword_1E68C6018);
  v61 = v60;
  v62 = v89;
  sub_1E67612FC(v61, v89, &qword_1ED099F20, &qword_1E68C6018);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099F48, &qword_1E68C6068);
  v64 = v62 + v63[12];
  *&v96 = v35;
  *(&v96 + 1) = v91;
  *&v97 = v90;
  *(&v97 + 1) = v38;
  v87 = v35;
  v88 = v38;
  v98 = v93;
  LOWORD(v99) = 0;
  BYTE2(v99) = 1;
  *(&v99 + 3) = v129;
  BYTE7(v99) = v130;
  BYTE8(v99) = v92;
  *(&v99 + 9) = *v128;
  HIDWORD(v99) = *&v128[3];
  *&v100 = v40;
  *(&v100 + 1) = v42;
  *&v101 = v44;
  *(&v101 + 1) = v46;
  v102 = 0;
  v65 = v100;
  v66 = v101;
  *(v64 + 96) = 0;
  *(v64 + 64) = v65;
  *(v64 + 80) = v66;
  v67 = v96;
  v68 = v97;
  v69 = v99;
  *(v64 + 32) = v98;
  *(v64 + 48) = v69;
  *v64 = v67;
  *(v64 + 16) = v68;
  v70 = v62 + v63[16];
  *v70 = v85;
  *(v70 + 8) = 0;
  *(v70 + 9) = v84;
  v71 = v62 + v63[20];
  *&v103 = v48;
  *(&v103 + 1) = v49;
  v72 = v48;
  v73 = v49;
  *&v104 = v51;
  *(&v104 + 1) = v50;
  v74 = v83;
  v75 = v86;
  *&v105 = v83;
  *(&v105 + 1) = v86;
  LOBYTE(v106) = 0;
  *(&v106 + 1) = 256;
  v76 = v82;
  BYTE8(v106) = v82;
  *&v107 = v53;
  *(&v107 + 1) = v55;
  *&v108 = v57;
  *(&v108 + 1) = v59;
  v109 = 0;
  *(v71 + 96) = 0;
  v77 = v104;
  *v71 = v103;
  *(v71 + 16) = v77;
  v78 = v106;
  *(v71 + 32) = v105;
  *(v71 + 48) = v78;
  v79 = v108;
  *(v71 + 64) = v107;
  *(v71 + 80) = v79;
  sub_1E67612FC(&v96, &v119, &qword_1ED099F28, &qword_1E68C6050);
  sub_1E67612FC(&v103, &v119, &qword_1ED099F28, &qword_1E68C6050);
  sub_1E6744A10(v94, &qword_1ED099F20, &qword_1E68C6018);
  v110[0] = v72;
  v110[1] = v73;
  v110[2] = v51;
  v110[3] = v50;
  v110[4] = v74;
  v110[5] = v75;
  v111 = 0;
  v112 = 256;
  v113 = v76;
  v114 = v53;
  v115 = v55;
  v116 = v57;
  v117 = v59;
  v118 = 0;
  sub_1E6744A10(v110, &qword_1ED099F28, &qword_1E68C6050);
  *&v119 = v87;
  *(&v119 + 1) = v91;
  *&v120 = v90;
  *(&v120 + 1) = v88;
  v121 = v93;
  LOWORD(v122) = 0;
  BYTE2(v122) = 1;
  *(&v122 + 3) = v129;
  BYTE7(v122) = v130;
  BYTE8(v122) = v92;
  *(&v122 + 9) = *v128;
  HIDWORD(v122) = *&v128[3];
  *&v123 = v40;
  *(&v123 + 1) = v42;
  *&v124 = v44;
  *(&v124 + 1) = v46;
  v125 = 0;
  sub_1E6744A10(&v119, &qword_1ED099F28, &qword_1E68C6050);
  return sub_1E6744A10(v95, &qword_1ED099F20, &qword_1E68C6018);
}

BOOL _s15FitnessCanvasUI22StandardCardViewLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 56), *(a2 + 56)), vceqq_f64(*(a1 + 72), *(a2 + 72)))))) & 1) != 0 && *(a1 + 88) == *(a2 + 88) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return *(a1 + 96) == *(a2 + 96);
  }

  return result;
}

unint64_t sub_1E68892E4()
{
  result = qword_1ED099EB8;
  if (!qword_1ED099EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099EB8);
  }

  return result;
}

unint64_t sub_1E688933C()
{
  result = qword_1ED099EC8;
  if (!qword_1ED099EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099EC8);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E68893BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E68893DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 104) = v3;
  return result;
}

void sub_1E6889440(uint64_t a1)
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
        sub_1E673ED88(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E6889508(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1E68B1DE0() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v10 + 7;
  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((((((v12 + (((v6 & 0xFFFFFFFFFFFFFFF8) + v9 + 112) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v20 = v18 - 1;
    if (v14)
    {
      v20 = 0;
      v21 = *a1;
    }

    else
    {
      v21 = 0;
    }

    return v11 + (v21 | v20) + 1;
  }

  if (v17)
  {
    v18 = *(a1 + v13);
    if (v18)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v22 = (((a1 + v6 + 8) & 0xFFFFFFFFFFFFFFF8) + v9 + 104) & ~v9;
  if (v8 < 0x7FFFFFFF)
  {
    v24 = *((((((((v12 + v22) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  else
  {
    v23 = *(*(*(a3 + 16) - 8) + 48);

    return v23(v22);
  }
}

void sub_1E6889718(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1E68B1DE0() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 64) + 7;
  v15 = ((((((((v14 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v12 + 112) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((((v14 + (((v9 & 0xFFFFFFF8) + v12 + 112) & ~v12)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v13 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v22 = (((a1 + v9 + 8) & 0xFFFFFFFFFFFFFFF8) + v12 + 104) & ~v12;
      if (v11 < 0x7FFFFFFF)
      {
        v24 = ((((((((v14 + v22) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v24 = a2 & 0x7FFFFFFF;
          v24[1] = 0;
        }

        else
        {
          *v24 = (a2 - 1);
        }
      }

      else
      {
        v23 = *(v10 + 56);

        v23(v22, a2);
      }

      return;
    }
  }

  if (((((((((v14 + (((v9 & 0xFFFFFFF8) + v12 + 112) & ~v12)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((((((((v14 + (((v9 & 0xFFFFFFF8) + v12 + 112) & ~v12)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v13 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

unint64_t sub_1E688998C()
{
  result = qword_1ED099ED0;
  if (!qword_1ED099ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099ED0);
  }

  return result;
}

unint64_t sub_1E68899E4()
{
  result = qword_1ED099ED8;
  if (!qword_1ED099ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099ED8);
  }

  return result;
}

unint64_t sub_1E6889A3C()
{
  result = qword_1ED099EE0;
  if (!qword_1ED099EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099EE0);
  }

  return result;
}

uint64_t sub_1E6889AD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6889B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for StandardCardView(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1E6887978(v9, v5, v6, v7);
}

unint64_t sub_1E6889BF0()
{
  result = qword_1ED099F00;
  if (!qword_1ED099F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099EF0, &unk_1E68C5FF8);
    sub_1E673F530(&qword_1ED099F08, &qword_1ED099F10, &qword_1E68C6008, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099F00);
  }

  return result;
}

unint64_t sub_1E6889CA8()
{
  result = qword_1ED099F30;
  if (!qword_1ED099F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099F28, &qword_1E68C6050);
    sub_1E6889D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099F30);
  }

  return result;
}

unint64_t sub_1E6889D34()
{
  result = qword_1ED099F38;
  if (!qword_1ED099F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099F40, &qword_1E68C6058);
    sub_1E67C6144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099F38);
  }

  return result;
}

uint64_t sub_1E6889DC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001E68E2580 == a2;
  if (v3 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E2B40 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E30E0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E694C656C746974 && a2 == 0xEE0074696D694C65 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E68E2BA0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2BC0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49746E65746E6F63 && a2 == 0xED0000737465736ELL || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617053656C746974 && a2 == 0xEC000000676E6963 || (sub_1E68B3B00() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xEF676E6963617053)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t CanvasLayout.withBounds(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, uint64_t a7@<X8>)
{
  v14 = a1[3];
  MEMORY[0x1EEE9AC00](a1, a2);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v7 + 32);
  v18 = *(v7 + 56);
  v25[0] = *(v7 + 40);
  v25[1] = v18;
  v19 = *(v7 + 80);
  v20 = *(v7 + 88);
  v23 = *(v7 + 72);
  (*(v22 + 16))(v16, v7 + *(v21 + 72), v14);
  CanvasLayout.init(bounds:carouselPageControlSpacing:contentMargins:dynamicTypeSize:intersectionSpacing:sectionDensityFactor:sizeClass:)(v25, v23, v20, v16, a1[2], v14, a1[4], a1[5], a7, a3, a4, a5, a6, v17, v19);
}

uint64_t CanvasLayout.withCarouselPageControlSpacing(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, double a3@<D0>, uint64_t a4@<X8>)
{
  v8 = a1[3];
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v4;
  v12 = *(v4 + 8);
  v13 = *(v4 + 16);
  v14 = *(v4 + 24);
  v15 = *(v4 + 56);
  v22[0] = *(v4 + 40);
  v22[1] = v15;
  v16 = *(v4 + 80);
  v17 = *(v4 + 88);
  v20 = *(v4 + 72);
  (*(v19 + 16))(v10, v4 + *(v18 + 72), v8);
  CanvasLayout.init(bounds:carouselPageControlSpacing:contentMargins:dynamicTypeSize:intersectionSpacing:sectionDensityFactor:sizeClass:)(v22, v20, v17, v10, a1[2], v8, a1[4], a1[5], a4, v11, v12, v13, v14, a3, v16);
}

uint64_t CanvasSectionDensityFactor.columnCount.getter()
{
  v1 = ceil(*v0 / v0[2]);
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

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1E688A3D8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v14;
  v15 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v15;
  *(a9 + 64) = a2;
  *(a9 + 72) = a3;
  *(a9 + 80) = a4;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10;
  v16 = *(type metadata accessor for InfoActionCardView(0, a12, a13, a4) + 44);
  v17 = sub_1E68B3750();
  v18 = *(*(v17 - 8) + 32);

  return v18(a9 + v16, a11, v17);
}

double static InfoActionCardViewLayout.default.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1ED096D78 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1ED099F60;
  *a1 = xmmword_1ED099F50;
  a1[1] = v1;
  result = *&xmmword_1ED099F70;
  v3 = unk_1ED099F80;
  a1[2] = xmmword_1ED099F70;
  a1[3] = v3;
  return result;
}

__n128 InfoActionCardViewLayout.cardBackgroundColor.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 InfoActionCardViewLayout.init(cornerRadius:descriptionButtonSpacing:buttonTopBottomPadding:buttonLeadingTrailingPadding:cardBackgroundColor:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  result = *a1;
  v7 = *(a1 + 16);
  *(a2 + 32) = *a1;
  *(a2 + 48) = v7;
  return result;
}

unint64_t sub_1E688A53C()
{
  v1 = *v0;
  v2 = 0x615272656E726F63;
  v3 = 0xD00000000000001CLL;
  if (v1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = 0xD000000000000018;
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

uint64_t sub_1E688A5EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E688CA4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E688A614(uint64_t a1)
{
  v2 = sub_1E688C00C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E688A650(uint64_t a1)
{
  v2 = sub_1E688C00C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E688A68C()
{
  xmmword_1ED099F50 = xmmword_1E68C60B0;
  unk_1ED099F60 = xmmword_1E68C60C0;
  result = 1.0;
  xmmword_1ED099F70 = xmmword_1E68C60D0;
  unk_1ED099F80 = vdupq_n_s64(0x3FBC1C1C1C1C1C1CuLL);
  return result;
}

uint64_t InfoActionCardViewLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099F90, &qword_1E68C60E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = *(v1 + 2);
  v15 = *(v1 + 3);
  v16 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E688C00C();
  sub_1E68B3BD0();
  *&v17 = v10;
  v19 = 0;
  sub_1E67621E8();
  sub_1E68B3AB0();
  if (!v2)
  {
    *&v17 = v9;
    v19 = 1;
    sub_1E68B3AB0();
    *&v17 = v12;
    v19 = 2;
    sub_1E68B3AB0();
    *&v17 = v11;
    v19 = 3;
    sub_1E68B3AB0();
    v18 = v15;
    v17 = v16;
    v19 = 4;
    sub_1E67F4B5C();
    sub_1E68B3AB0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t InfoActionCardViewLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099FA0, &qword_1E68C60E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E688C00C();
  sub_1E68B3BC0();
  if (!v2)
  {
    v17 = 0;
    sub_1E6762A60();
    sub_1E68B3A00();
    v10 = *&v16[0];
    v17 = 1;
    sub_1E68B3A00();
    v11 = *&v16[0];
    v17 = 2;
    sub_1E68B3A00();
    v12 = *&v16[0];
    v17 = 3;
    sub_1E68B3A00();
    v14 = *&v16[0];
    v17 = 4;
    sub_1E67F4C04();
    sub_1E68B3A00();
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v14;
    v15 = v16[1];
    *(a2 + 32) = v16[0];
    *(a2 + 48) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t InfoActionCardViewLayout.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v1);
  if (v2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x1E69523F0](*&v9);
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x1E69523F0](*&v10);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x1E69523F0](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x1E69523F0](*&v12);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1E69523F0](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x1E69523F0](*&v14);
  if (v8 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8;
  }

  return MEMORY[0x1E69523F0](*&v15);
}

uint64_t InfoActionCardViewLayout.hashValue.getter()
{
  sub_1E68B3B70();
  InfoActionCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E688AD38()
{
  sub_1E68B3B70();
  InfoActionCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E688AD7C(uint64_t a1)
{
  sub_1E68B3B70();
  InfoActionCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E688ADBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v55 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v55, v3);
  v56 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1E68B2B10();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v5);
  v51 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099FC8, &qword_1E68C6390);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099FD0, &qword_1E68C6398);
  v43 = *(a1 + 16);
  sub_1E68B3750();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v7 = sub_1E68B2CC0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v42 - v10;
  v12 = sub_1E68B1E40();
  v48 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v42 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099640, &qword_1E68C1960);
  v47 = sub_1E68B1E40();
  v50 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v16);
  v44 = &v42 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v18 = sub_1E68B1E40();
  v52 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v46 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v49 = &v42 - v23;
  v24 = *(a1 + 24);
  v58 = v43;
  v59 = v24;
  v25 = v45;
  v60 = v45;
  sub_1E68B21C0();
  sub_1E68B2CB0();
  sub_1E68B2500();
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A70();
  (*(v8 + 8))(v11, v7);
  (*(v53 + 104))(v51, *MEMORY[0x1E69814D8], v54);
  v67 = sub_1E68B2B60();
  sub_1E68B2500();
  v65 = WitnessTable;
  v66 = MEMORY[0x1E697E5D8];
  v27 = swift_getWitnessTable();
  v28 = v44;
  sub_1E68B2750();

  (*(v48 + 8))(v15, v12);
  v29 = *v25;
  v30 = *(v55 + 20);
  v31 = *MEMORY[0x1E697F468];
  v32 = sub_1E68B2160();
  v33 = v56;
  (*(*(v32 - 8) + 104))(&v56[v30], v31, v32);
  *v33 = v29;
  v33[1] = v29;
  v34 = sub_1E673F530(&qword_1ED099638, &qword_1ED099640, &qword_1E68C1960, MEMORY[0x1E6980468]);
  v63 = v27;
  v64 = v34;
  v35 = v47;
  v36 = swift_getWitnessTable();
  sub_1E688C978(&qword_1EE2EA660, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  v37 = v46;
  sub_1E68B2AE0();
  sub_1E6768D04(v33);
  (*(v50 + 8))(v28, v35);
  v38 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v61 = v36;
  v62 = v38;
  swift_getWitnessTable();
  v39 = v49;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v40 = *(v52 + 8);
  v40(v37, v18);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v40)(v39, v18);
}

uint64_t sub_1E688B5AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a2;
  v72 = a3;
  v87 = a4;
  v73 = sub_1E68B3750();
  v5 = sub_1E68B1E40();
  v75 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v5);
  v74 = &v70 - v6;
  v76 = v7;
  v8 = sub_1E68B1E40();
  v79 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v8);
  v78 = &v70 - v9;
  v80 = v10;
  v86 = sub_1E68B1E40();
  v83 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v11);
  v85 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v77 = &v70 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v84 = &v70 - v18;
  v19 = sub_1E68B21B0();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099FC8, &qword_1E68C6390);
  MEMORY[0x1EEE9AC00](v81, v24);
  v88 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v70 - v28;
  v30 = a1[8];
  v31 = a1[9];
  v32 = a1[10];
  v33 = a1[11];
  sub_1E68B2E90();
  sub_1E68B1F30();
  *&v108 = v30;
  *(&v108 + 1) = v31;
  *&v109 = v32;
  *(&v109 + 1) = v33;
  sub_1E673F228(v30, v31, v32, v33);
  sub_1E68B21A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099FD8, &unk_1E68C63A0);
  sub_1E688C830();
  v82 = v29;
  sub_1E68B2950();
  (*(v20 + 8))(v23, v19);
  v120[6] = v114;
  v120[7] = v115;
  v120[8] = v116;
  v120[2] = v110;
  v120[3] = v111;
  v120[4] = v112;
  v120[5] = v113;
  v120[0] = v108;
  v120[1] = v109;
  sub_1E6744A10(v120, &qword_1ED099FD8, &unk_1E68C63A0);
  v34 = a1[12];
  v35 = a1[13];
  v36 = a1[14];
  v37 = a1[15];
  sub_1E68B2E90();
  sub_1E68B1F30();
  sub_1E673F228(v34, v35, v36, v37);
  LOBYTE(v33) = sub_1E68B2520();
  v38 = sub_1E68B2540();
  sub_1E68B2540();
  if (sub_1E68B2540() != v33)
  {
    v38 = sub_1E68B2540();
  }

  sub_1E68B1B30();
  v119 = 0;
  *&v108 = v34;
  *(&v108 + 1) = v35;
  *&v109 = v36;
  *(&v109 + 1) = v37;
  v114 = v118[6];
  v115 = v118[7];
  v116 = v118[8];
  v110 = v118[2];
  v111 = v118[3];
  v112 = v118[4];
  v113 = v118[5];
  LOBYTE(v117) = v38;
  *(&v117 + 1) = v39;
  *&v118[0] = v40;
  *(&v118[0] + 1) = v41;
  *&v118[1] = v42;
  BYTE8(v118[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097968, &qword_1E68C63B0);
  v43 = swift_allocObject();
  v70 = xmmword_1E68B77B0;
  *(v43 + 16) = xmmword_1E68B77B0;
  v44 = sub_1E68B2530();
  *(v43 + 32) = v44;
  v45 = sub_1E68B2550();
  *(v43 + 33) = v45;
  sub_1E68B2540();
  sub_1E68B2540();
  if (sub_1E68B2540() != v44)
  {
    sub_1E68B2540();
  }

  sub_1E68B2540();
  v46 = sub_1E68B2540();
  v48 = v74;
  if (v46 != v45)
  {
    sub_1E68B2540();
  }

  v49 = v72;
  type metadata accessor for InfoActionCardView(0, v71, v72, v47);
  v107 = v49;
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A70();
  v51 = swift_allocObject();
  *(v51 + 16) = v70;
  v52 = sub_1E68B2510();
  *(v51 + 32) = v52;
  v53 = sub_1E68B2520();
  *(v51 + 33) = v53;
  sub_1E68B2540();
  sub_1E68B2540();
  if (sub_1E68B2540() != v52)
  {
    sub_1E68B2540();
  }

  sub_1E68B2540();
  if (sub_1E68B2540() != v53)
  {
    sub_1E68B2540();
  }

  v54 = MEMORY[0x1E697E5D8];
  v104[7] = WitnessTable;
  v104[8] = MEMORY[0x1E697E5D8];
  v55 = v76;
  v56 = swift_getWitnessTable();
  v57 = v78;
  sub_1E68B2A70();
  (*(v75 + 8))(v48, v55);
  sub_1E68B2E80();
  v104[5] = v56;
  v104[6] = v54;
  v68 = v80;
  v69 = swift_getWitnessTable();
  v58 = v77;
  sub_1E68B2A00();
  (*(v79 + 8))(v57, v68);
  v104[3] = v69;
  v104[4] = MEMORY[0x1E697EBF8];
  v59 = v86;
  v60 = swift_getWitnessTable();
  v61 = v84;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v62 = v83;
  v63 = *(v83 + 8);
  v63(v58, v59);
  v64 = v82;
  v65 = v88;
  sub_1E67612FC(v82, v88, &qword_1ED099FC8, &qword_1E68C6390);
  v101 = v116;
  v102 = v117;
  v103[0] = v118[0];
  *(v103 + 9) = *(v118 + 9);
  v97 = v112;
  v98 = v113;
  v99 = v114;
  v100 = v115;
  v93 = v108;
  v94 = v109;
  v95 = v110;
  v96 = v111;
  v104[0] = v65;
  v104[1] = &v93;
  v66 = v85;
  (*(v62 + 16))(v85, v61, v59);
  v104[2] = v66;
  sub_1E67612FC(&v108, v105, &qword_1ED099FD0, &qword_1E68C6398);
  v92[0] = v81;
  v92[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099FD0, &qword_1E68C6398);
  v92[2] = v59;
  v89 = sub_1E688C8BC();
  v90 = sub_1E688C9C0();
  v91 = v60;
  sub_1E6848F14(v104, 3uLL, v92);
  sub_1E6744A10(&v108, &qword_1ED099FD0, &qword_1E68C6398);
  v63(v61, v59);
  sub_1E6744A10(v64, &qword_1ED099FC8, &qword_1E68C6390);
  v63(v66, v59);
  v105[8] = v101;
  v105[9] = v102;
  v106[0] = v103[0];
  *(v106 + 9) = *(v103 + 9);
  v105[4] = v97;
  v105[5] = v98;
  v105[6] = v99;
  v105[7] = v100;
  v105[0] = v93;
  v105[1] = v94;
  v105[2] = v95;
  v105[3] = v96;
  sub_1E6744A10(v105, &qword_1ED099FD0, &qword_1E68C6398);
  return sub_1E6744A10(v88, &qword_1ED099FC8, &qword_1E68C6390);
}

uint64_t _s15FitnessCanvasUI24InfoActionCardViewLayoutV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))))
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3])))) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E688C00C()
{
  result = qword_1ED099F98;
  if (!qword_1ED099F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099F98);
  }

  return result;
}

unint64_t sub_1E688C064()
{
  result = qword_1ED099FA8;
  if (!qword_1ED099FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099FA8);
  }

  return result;
}

uint64_t sub_1E688C0B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E688C0D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

void sub_1E688C134(uint64_t a1)
{
  sub_1E673ED38();
  if (v1 <= 0x3F)
  {
    sub_1E68B3750();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E688C1CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 128) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      v17 = (a1 + 71) & 0xFFFFFFFFFFFFFFF8;
      if (v6 > 0x7FFFFFFE)
      {
        v19 = (*(v4 + 48))((((v17 + 39) & 0xFFFFFFFFFFFFFFF8) + v8 + 32) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *(v17 + 24);
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
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

  return v7 + (v11 | v16) + 1;
}

void sub_1E688C3A4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 128) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = (a1 + 71) & 0xFFFFFFFFFFFFFFF8;
  if (v9 > 0x7FFFFFFE)
  {
    v22 = ((((v21 + 39) & 0xFFFFFFFFFFFFFFF8) + v11 + 32) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26((((v21 + 39) & 0xFFFFFFFFFFFFFFF8) + v11 + 32) & ~v11, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *v21 = 0u;
    *(v21 + 16) = 0u;
    *v21 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(v21 + 24) = a2;
  }
}