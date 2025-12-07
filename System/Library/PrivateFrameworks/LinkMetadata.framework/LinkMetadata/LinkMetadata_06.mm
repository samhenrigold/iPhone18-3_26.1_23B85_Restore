void *sub_18F011C70(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v34 = a2;
  v4 = _s14CodableWrapperVMa_32(0);
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8750, &qword_18F0A1358);
  result = sub_18F0941CC();
  v8 = 0;
  v35 = a3;
  v11 = *(a3 + 64);
  v10 = a3 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v30 = result + 8;
  v31 = result;
  if ((v13 & v9) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = (*(v35 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      sub_18EF86A14(*(v35 + 56) + *(v32 + 72) * v19, v6);

      v23 = v36;
      v33(&v37, v6);
      v36 = v23;
      if (v23)
      {
        break;
      }

      sub_18EF86A6C();
      result = v31;
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v24 = (result[6] + 16 * v19);
      *v24 = v21;
      v24[1] = v22;
      *(result[7] + 8 * v19) = v37;
      v25 = result[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_17;
      }

      result[2] = v27;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v31;

    sub_18EF86A6C();
    return v28;
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return result;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void *sub_18F011EE4(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v34 = a2;
  v4 = type metadata accessor for LNEntityMetadata.CodableWrapper(0);
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8758, &unk_18F0A1360);
  result = sub_18F0941CC();
  v8 = 0;
  v35 = a3;
  v11 = *(a3 + 64);
  v10 = a3 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v30 = result + 8;
  v31 = result;
  if ((v13 & v9) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = (*(v35 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      sub_18EF86A14(*(v35 + 56) + *(v32 + 72) * v19, v6);

      v23 = v36;
      v33(&v37, v6);
      v36 = v23;
      if (v23)
      {
        break;
      }

      sub_18EF86A6C();
      result = v31;
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v24 = (result[6] + 16 * v19);
      *v24 = v21;
      v24[1] = v22;
      *(result[7] + 8 * v19) = v37;
      v25 = result[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_17;
      }

      result[2] = v27;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v31;

    sub_18EF86A6C();
    return v28;
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return result;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void *sub_18F012158(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v34 = a2;
  v4 = type metadata accessor for LNActionMetadata.CodableWrapper(0);
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8768, &qword_18F0A1370);
  result = sub_18F0941CC();
  v8 = 0;
  v35 = a3;
  v11 = *(a3 + 64);
  v10 = a3 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v30 = result + 8;
  v31 = result;
  if ((v13 & v9) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = (*(v35 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      sub_18EF86A14(*(v35 + 56) + *(v32 + 72) * v19, v6);

      v23 = v36;
      v33(&v37, v6);
      v36 = v23;
      if (v23)
      {
        break;
      }

      sub_18EF86A6C();
      result = v31;
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v24 = (result[6] + 16 * v19);
      *v24 = v21;
      v24[1] = v22;
      *(result[7] + 8 * v19) = v37;
      v25 = result[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_17;
      }

      result[2] = v27;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v31;

    sub_18EF86A6C();
    return v28;
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return result;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void *sub_18F0123CC(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8670, &qword_18F0A12B0);
  result = sub_18F0941CC();
  v6 = result;
  v7 = 0;
  v29 = a3;
  v30 = result;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v27 = result + 8;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = (*(v29 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v32 = *(*(v29 + 56) + 8 * v18);

      a1(&v31, &v32);

      if (v3)
      {
        break;
      }

      *(v27 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v6 = v30;
      v22 = v31;
      v23 = (v30[6] + 16 * v18);
      *v23 = v20;
      v23[1] = v21;
      *(v30[7] + 8 * v18) = v22;
      v24 = v30[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_17;
      }

      v30[2] = v26;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v6 = v30;

    return v6;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_18F012594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_18F01260C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_18F0941BC();
LABEL_9:
  result = sub_18F09409C();
  *v2 = result;
  return result;
}

void *sub_18F0126AC(void *a1, SEL *a2)
{
  v2 = a1;
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  sub_18F093B8C();
  OUTLINED_FUNCTION_327();

  return v2;
}

void sub_18F012714(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_18F093B5C();

  [a3 _setBundleIdentifier_];
}

uint64_t sub_18F012778(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  if (![a1 *a2])
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_295();
  sub_18EF825F4(v7, a3, a4);
  OUTLINED_FUNCTION_271();
  v8 = sub_18F093DCC();

  return v8;
}

uint64_t sub_18F0127F4(void *a1)
{
  v1 = [a1 typeSpecificMetadata];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for LNActionTypeSpecificMetadataKey(0);
  sub_18EF8558C(&unk_1ED5FF0F8);
  v3 = sub_18F093A4C();

  return v3;
}

uint64_t sub_18F0128B8(void *a1)
{
  v1 = [a1 assistantDefinedSchemaTraits];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7390, &qword_18F09BD68);
  v3 = sub_18F093DCC();

  return v3;
}

uint64_t sub_18F012924(void *a1)
{
  v2 = [a1 synonyms];

  if (!v2)
  {
    return 0;
  }

  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v3 = sub_18F093DCC();

  return v3;
}

uint64_t sub_18F0129F8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_18F012A58()
{
  result = qword_1EACB73C8;
  if (!qword_1EACB73C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB73C0, &qword_18F09BD88);
    sub_18EF8558C(&unk_1EACB73D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB73C8);
  }

  return result;
}

unint64_t sub_18F012B0C()
{
  result = qword_1EACB6C40;
  if (!qword_1EACB6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C40);
  }

  return result;
}

unint64_t sub_18F012B60()
{
  result = qword_1EACB7418;
  if (!qword_1EACB7418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7410, &qword_18F09BD90);
    sub_18EF8558C(&unk_1EACB7420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7418);
  }

  return result;
}

unint64_t sub_18F012C14()
{
  result = qword_1EACB7430;
  if (!qword_1EACB7430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7428, &qword_18F09BD98);
    sub_18EF8558C(&unk_1ED5FD268);
    sub_18EFBEA30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7430);
  }

  return result;
}

unint64_t sub_18F012CD0()
{
  result = qword_1EACB7448;
  if (!qword_1EACB7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7448);
  }

  return result;
}

unint64_t sub_18F012D24()
{
  result = qword_1EACB7458;
  if (!qword_1EACB7458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7450, &qword_18F09BDA8);
    sub_18EF8558C(&unk_1EACB7460);
    sub_18EFBE800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7458);
  }

  return result;
}

unint64_t sub_18F012DE0()
{
  result = qword_1EACB7478;
  if (!qword_1EACB7478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18F012E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7478);
  }

  return result;
}

unint64_t sub_18F012E6C()
{
  result = qword_1EACB7480;
  if (!qword_1EACB7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7480);
  }

  return result;
}

unint64_t sub_18F012EC0()
{
  result = qword_1EACB7490;
  if (!qword_1EACB7490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7488, &qword_18F09BDB8);
    sub_18F012F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7490);
  }

  return result;
}

unint64_t sub_18F012F44()
{
  result = qword_1EACB7498;
  if (!qword_1EACB7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7498);
  }

  return result;
}

unint64_t sub_18F012F98()
{
  result = qword_1EACB74A0;
  if (!qword_1EACB74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB74A0);
  }

  return result;
}

unint64_t sub_18F012FEC()
{
  result = qword_1EACB74B0;
  if (!qword_1EACB74B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB74A8, &qword_18F09BDC0);
    sub_18F013070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB74B0);
  }

  return result;
}

unint64_t sub_18F013070()
{
  result = qword_1EACB74B8;
  if (!qword_1EACB74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB74B8);
  }

  return result;
}

unint64_t sub_18F0130C4()
{
  result = qword_1EACB74C8;
  if (!qword_1EACB74C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB74C0, &qword_18F09BDC8);
    sub_18F013148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB74C8);
  }

  return result;
}

unint64_t sub_18F013148()
{
  result = qword_1EACB74D0;
  if (!qword_1EACB74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB74D0);
  }

  return result;
}

unint64_t sub_18F01319C()
{
  result = qword_1EACB74D8;
  if (!qword_1EACB74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB74D8);
  }

  return result;
}

unint64_t sub_18F0131F0()
{
  result = qword_1EACB74E8;
  if (!qword_1EACB74E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB74E0, &qword_18F09BDD0);
    sub_18EF8558C(&unk_1EACB74F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB74E8);
  }

  return result;
}

unint64_t sub_18F0132A4()
{
  result = qword_1EACB7500;
  if (!qword_1EACB7500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB74F8, &qword_18F09BDD8);
    sub_18F013328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7500);
  }

  return result;
}

unint64_t sub_18F013328()
{
  result = qword_1EACB7508;
  if (!qword_1EACB7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7508);
  }

  return result;
}

unint64_t sub_18F01337C()
{
  result = qword_1EACB7520;
  if (!qword_1EACB7520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7518, &qword_18F09BDE0);
    sub_18EF8558C(&unk_1ED5FD268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7520);
  }

  return result;
}

unint64_t sub_18F013430()
{
  result = qword_1ED5FF478;
  if (!qword_1ED5FF478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7488, &qword_18F09BDB8);
    sub_18EFC279C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF478);
  }

  return result;
}

unint64_t sub_18F0134B4()
{
  result = qword_1ED5FED80;
  if (!qword_1ED5FED80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB74A8, &qword_18F09BDC0);
    sub_18EFC27F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FED80);
  }

  return result;
}

unint64_t sub_18F013538()
{
  result = qword_1ED5FEBD0;
  if (!qword_1ED5FEBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB74C0, &qword_18F09BDC8);
    sub_18EFC2844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEBD0);
  }

  return result;
}

unint64_t sub_18F0135BC()
{
  result = qword_1ED5FD208;
  if (!qword_1ED5FD208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB74F8, &qword_18F09BDD8);
    sub_18F013640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD208);
  }

  return result;
}

unint64_t sub_18F013640()
{
  result = qword_1ED5FD1F0;
  if (!qword_1ED5FD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD1F0);
  }

  return result;
}

unint64_t sub_18F013694()
{
  result = qword_1EACB75B0;
  if (!qword_1EACB75B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB75A8, &qword_18F09BE28);
    sub_18EF8558C(&unk_1EACB75B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB75B0);
  }

  return result;
}

unint64_t sub_18F013748()
{
  result = qword_1EACB6AF8;
  if (!qword_1EACB6AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB75C0, &qword_18F09BE30);
    sub_18EF8558C(&unk_1EACB6A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6AF8);
  }

  return result;
}

unint64_t sub_18F0137FC()
{
  result = qword_1EACB75D8;
  if (!qword_1EACB75D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB75D0, &qword_18F09BE38);
    sub_18EF8558C(&unk_1ED5FD640);
    sub_18EFBEA30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB75D8);
  }

  return result;
}

unint64_t sub_18F0138B8()
{
  result = qword_1EACB7648;
  if (!qword_1EACB7648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7640, &qword_18F09BE68);
    sub_18EF8558C(&unk_1EACB7650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7648);
  }

  return result;
}

unint64_t sub_18F01398C()
{
  result = qword_1EACB6FE0;
  if (!qword_1EACB6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6FE0);
  }

  return result;
}

unint64_t sub_18F0139E0()
{
  result = qword_1EACB7118;
  if (!qword_1EACB7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7118);
  }

  return result;
}

unint64_t sub_18F013A64()
{
  result = qword_1EACB6A60;
  if (!qword_1EACB6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A60);
  }

  return result;
}

unint64_t sub_18F013AB8()
{
  result = qword_1EACB76C0;
  if (!qword_1EACB76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB76C0);
  }

  return result;
}

uint64_t sub_18F013B0C(void *a1)
{
  if (![a1 availabilityAnnotations])
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_204();
  type metadata accessor for LNPlatformName(v2, v3, v4, v5);
  sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
  OUTLINED_FUNCTION_2();
  sub_18EF8558C(v6);
  OUTLINED_FUNCTION_108();
  v7 = sub_18F093A4C();

  return v7;
}

uint64_t sub_18F013BD0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_18F093B8C();
    OUTLINED_FUNCTION_134();
  }

  return OUTLINED_FUNCTION_108();
}

unint64_t sub_18F013C28()
{
  result = qword_1EACB76D8;
  if (!qword_1EACB76D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB76D8);
  }

  return result;
}

unint64_t sub_18F013C7C()
{
  result = qword_1EACB76E8;
  if (!qword_1EACB76E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB76E0, &qword_18F09BEC0);
    sub_18F013D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB76E8);
  }

  return result;
}

unint64_t sub_18F013D00()
{
  result = qword_1EACB76F0;
  if (!qword_1EACB76F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB76F0);
  }

  return result;
}

unint64_t sub_18F013D54()
{
  result = qword_1EACB7700;
  if (!qword_1EACB7700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB76E0, &qword_18F09BEC0);
    sub_18F013DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7700);
  }

  return result;
}

unint64_t sub_18F013DD8()
{
  result = qword_1EACB7708;
  if (!qword_1EACB7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7708);
  }

  return result;
}

unint64_t sub_18F013E5C()
{
  result = qword_1EACB7720;
  if (!qword_1EACB7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7720);
  }

  return result;
}

unint64_t sub_18F013ED0()
{
  result = qword_1EACB7730;
  if (!qword_1EACB7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7730);
  }

  return result;
}

unint64_t sub_18F013F24()
{
  result = qword_1EACB7738;
  if (!qword_1EACB7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7738);
  }

  return result;
}

unint64_t sub_18F013F78()
{
  result = qword_1EACB6CE0;
  if (!qword_1EACB6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6CE0);
  }

  return result;
}

unint64_t sub_18F014034()
{
  result = qword_1EACB7790;
  if (!qword_1EACB7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7790);
  }

  return result;
}

unint64_t sub_18F014088()
{
  result = qword_1EACB77A0;
  if (!qword_1EACB77A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7798, &unk_18F0AB930);
    sub_18F01410C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB77A0);
  }

  return result;
}

unint64_t sub_18F01410C()
{
  result = qword_1EACB77A8;
  if (!qword_1EACB77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB77A8);
  }

  return result;
}

unint64_t sub_18F014160()
{
  result = qword_1EACB6C58;
  if (!qword_1EACB6C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7798, &unk_18F0AB930);
    sub_18F0141E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C58);
  }

  return result;
}

unint64_t sub_18F0141E4()
{
  result = qword_1EACB6CC0;
  if (!qword_1EACB6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6CC0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12LinkMetadata0B5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_18F0142BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F0142FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_18F014340(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_18F01437C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F0143BC(uint64_t result, int a2, int a3)
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

unint64_t sub_18F01440C()
{
  result = qword_1ED5FD430;
  if (!qword_1ED5FD430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB77D8, &qword_18F09CD58);
    sub_18EFBED88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD430);
  }

  return result;
}

unint64_t sub_18F0144B8()
{
  result = qword_1ED5FD6F0;
  if (!qword_1ED5FD6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB77E8, &qword_18F09CD60);
    sub_18EFC3C58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD6F0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18F0145B4(uint64_t a1)
{
  result = _s14CodableWrapperVMa_0(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18F014628(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F014668(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_18F0146C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F014700(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18F01485C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F01489C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18F014934(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F014974(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s14CodableWrapperVwet_0(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18F014B9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0 && *(a1 + 33))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_416();
  }

  return OUTLINED_FUNCTION_170(v2);
}

uint64_t sub_18F014BDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

      return OUTLINED_FUNCTION_84(result, a2);
    }

    *(result + 33) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_84(result, a2);
    }
  }

  return result;
}

uint64_t sub_18F014C18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F014C6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t *sub_18F014CCC(unint64_t *result, uint64_t a2)
{
  if (a2 < 0xE)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    v2 = (8 * (a2 - 14)) | 0xE000000000000000;
  }

  *result = v2;
  return result;
}

unint64_t *sub_18F014D28(unint64_t *result, uint64_t a2)
{
  if (a2 < 0xD)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    v2 = (8 * (a2 - 13)) | 0xD000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_18F014D58(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F014D98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_18F014E34(uint64_t a1)
{
  if (!qword_1ED5FD3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB7850, &qword_18F09DA20);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED5FD3E8);
    }
  }
}

void sub_18F014EAC(uint64_t a1)
{
  if (!qword_1ED5FD610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB7840, &qword_18F09DA18);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED5FD610);
    }
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18F014F38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_get_extra_inhabitant_index_178Tm()
{
  OUTLINED_FUNCTION_62();
  if (v0)
  {
    return OUTLINED_FUNCTION_16();
  }

  OUTLINED_FUNCTION_161();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_333();
  v5 = OUTLINED_FUNCTION_120(v4);

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void __swift_store_extra_inhabitant_index_179Tm()
{
  OUTLINED_FUNCTION_29();
  if (v5)
  {
    OUTLINED_FUNCTION_217();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_253(v0, v1, v2, v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_254();
    v9 = OUTLINED_FUNCTION_52(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_18F01509C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      return OUTLINED_FUNCTION_170(*a1 + 2147483646);
    }

    v3 = *(a1 + 16);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_170(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_170(v4);
}

uint64_t sub_18F0150EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_18F015168(uint64_t a1)
{
  if (!qword_1ED5FD378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7860, &qword_18F09DA60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED5FD378);
    }
  }
}

void sub_18F0151E0(uint64_t a1)
{
  if (!qword_1ED5FD380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7860, &qword_18F09DA60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED5FD380);
    }
  }
}

void sub_18F015258(uint64_t a1)
{
  if (!qword_1ED5FD398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7860, &qword_18F09DA60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED5FD398);
    }
  }
}

void sub_18F0152D0(uint64_t a1)
{
  if (!qword_1ED5FD3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7860, &qword_18F09DA60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED5FD3F0);
    }
  }
}

uint64_t sub_18F015358(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_18F0156B8()
{
  result = qword_1EACB7908;
  if (!qword_1EACB7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7908);
  }

  return result;
}

unint64_t sub_18F015950()
{
  result = qword_1EACB7950;
  if (!qword_1EACB7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7950);
  }

  return result;
}

unint64_t sub_18F0159A8()
{
  result = qword_1EACB7958;
  if (!qword_1EACB7958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7958);
  }

  return result;
}

unint64_t sub_18F015A00()
{
  result = qword_1EACB7960;
  if (!qword_1EACB7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7960);
  }

  return result;
}

unint64_t sub_18F015A58()
{
  result = qword_1EACB7968;
  if (!qword_1EACB7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7968);
  }

  return result;
}

unint64_t sub_18F015AB0()
{
  result = qword_1EACB7970;
  if (!qword_1EACB7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7970);
  }

  return result;
}

unint64_t sub_18F015B08()
{
  result = qword_1EACB7978;
  if (!qword_1EACB7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7978);
  }

  return result;
}

unint64_t sub_18F015B60()
{
  result = qword_1EACB7980;
  if (!qword_1EACB7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7980);
  }

  return result;
}

unint64_t sub_18F015BB8()
{
  result = qword_1EACB7988;
  if (!qword_1EACB7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7988);
  }

  return result;
}

unint64_t sub_18F015C10()
{
  result = qword_1EACB7990;
  if (!qword_1EACB7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7990);
  }

  return result;
}

unint64_t sub_18F015C68()
{
  result = qword_1EACB7998;
  if (!qword_1EACB7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7998);
  }

  return result;
}

unint64_t sub_18F016140()
{
  result = qword_1EACB7A20;
  if (!qword_1EACB7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7A20);
  }

  return result;
}

unint64_t sub_18F016198()
{
  result = qword_1EACB7A28;
  if (!qword_1EACB7A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7A28);
  }

  return result;
}

unint64_t sub_18F0161F0()
{
  result = qword_1EACB6CD0;
  if (!qword_1EACB6CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6CD0);
  }

  return result;
}

unint64_t sub_18F016248()
{
  result = qword_1EACB6CD8;
  if (!qword_1EACB6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6CD8);
  }

  return result;
}

unint64_t sub_18F0162A0()
{
  result = qword_1EACB7A30;
  if (!qword_1EACB7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7A30);
  }

  return result;
}

unint64_t sub_18F0162F8()
{
  result = qword_1EACB7A38;
  if (!qword_1EACB7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7A38);
  }

  return result;
}

unint64_t sub_18F016350()
{
  result = qword_1EACB7A40;
  if (!qword_1EACB7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7A40);
  }

  return result;
}

unint64_t sub_18F0163A8()
{
  result = qword_1EACB7A48;
  if (!qword_1EACB7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7A48);
  }

  return result;
}

unint64_t sub_18F016400()
{
  result = qword_1EACB7A50;
  if (!qword_1EACB7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7A50);
  }

  return result;
}

unint64_t sub_18F016458()
{
  result = qword_1EACB7A58;
  if (!qword_1EACB7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7A58);
  }

  return result;
}

unint64_t sub_18F0164B0()
{
  result = qword_1EACB7100;
  if (!qword_1EACB7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7100);
  }

  return result;
}

unint64_t sub_18F016508()
{
  result = qword_1EACB7108;
  if (!qword_1EACB7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7108);
  }

  return result;
}

unint64_t sub_18F016560()
{
  result = qword_1ED5FD670;
  if (!qword_1ED5FD670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD670);
  }

  return result;
}

unint64_t sub_18F0165B8()
{
  result = qword_1ED5FD678;
  if (!qword_1ED5FD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD678);
  }

  return result;
}

unint64_t sub_18F016610()
{
  result = qword_1ED5FD5B0;
  if (!qword_1ED5FD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD5B0);
  }

  return result;
}

unint64_t sub_18F016668()
{
  result = qword_1ED5FD5B8;
  if (!qword_1ED5FD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD5B8);
  }

  return result;
}

uint64_t sub_18F0166BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_18F016700()
{
  result = qword_1ED5FE5B0;
  if (!qword_1ED5FE5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7AA8, &qword_18F0A0BE8);
    sub_18EFC5418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE5B0);
  }

  return result;
}

unint64_t sub_18F016784()
{
  result = qword_1ED5FE598;
  if (!qword_1ED5FE598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7AB0, &qword_18F0A0BF0);
    sub_18EFC546C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE598);
  }

  return result;
}

unint64_t sub_18F016808()
{
  result = qword_1ED5FE5A0;
  if (!qword_1ED5FE5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7AB8, &qword_18F0A0BF8);
    sub_18EFC54D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE5A0);
  }

  return result;
}

unint64_t sub_18F01688C()
{
  result = qword_1EACB6B08;
  if (!qword_1EACB6B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB78B0, &qword_18F09DDE0);
    sub_18EF8558C(&unk_1EACB6A30);
    sub_18EF8558C(&unk_1EACB6A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6B08);
  }

  return result;
}

unint64_t sub_18F016978()
{
  result = qword_1EACB6FD8;
  if (!qword_1EACB6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6FD8);
  }

  return result;
}

unint64_t sub_18F0169CC()
{
  result = qword_1ED5FD370;
  if (!qword_1ED5FD370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD370);
  }

  return result;
}

unint64_t sub_18F016A20()
{
  result = qword_1EACB7B38;
  if (!qword_1EACB7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B38);
  }

  return result;
}

unint64_t sub_18F016A74()
{
  result = qword_1EACB7B40;
  if (!qword_1EACB7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B40);
  }

  return result;
}

unint64_t sub_18F016AC8()
{
  result = qword_1EACB7B48;
  if (!qword_1EACB7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B48);
  }

  return result;
}

unint64_t sub_18F016B1C()
{
  result = qword_1EACB7B50;
  if (!qword_1EACB7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B50);
  }

  return result;
}

unint64_t sub_18F016B70()
{
  result = qword_1EACB7B58;
  if (!qword_1EACB7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B58);
  }

  return result;
}

unint64_t sub_18F016BC4()
{
  result = qword_1EACB7B60;
  if (!qword_1EACB7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B60);
  }

  return result;
}

unint64_t sub_18F016C18()
{
  result = qword_1EACB7B68;
  if (!qword_1EACB7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B68);
  }

  return result;
}

unint64_t sub_18F016C6C()
{
  result = qword_1EACB7B70;
  if (!qword_1EACB7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B70);
  }

  return result;
}

unint64_t sub_18F016CC0()
{
  result = qword_1EACB7B78;
  if (!qword_1EACB7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B78);
  }

  return result;
}

unint64_t sub_18F016D14()
{
  result = qword_1EACB7B80;
  if (!qword_1EACB7B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B80);
  }

  return result;
}

unint64_t sub_18F016D68()
{
  result = qword_1EACB6C08;
  if (!qword_1EACB6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C08);
  }

  return result;
}

unint64_t sub_18F016DBC()
{
  result = qword_1EACB7B90;
  if (!qword_1EACB7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7B90);
  }

  return result;
}

unint64_t sub_18F016E10()
{
  result = qword_1EACB7BB0;
  if (!qword_1EACB7BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7BA8, &qword_18F0A0C48);
    sub_18F016E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7BB0);
  }

  return result;
}

unint64_t sub_18F016E94()
{
  result = qword_1EACB7BB8;
  if (!qword_1EACB7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7BB8);
  }

  return result;
}

unint64_t sub_18F016EE8()
{
  result = qword_1EACB6F90;
  if (!qword_1EACB6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F90);
  }

  return result;
}

unint64_t sub_18F016F3C()
{
  result = qword_1EACB6F88;
  if (!qword_1EACB6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F88);
  }

  return result;
}

unint64_t sub_18F016F90()
{
  result = qword_1EACB7C48;
  if (!qword_1EACB7C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7C40, &qword_18F0A0CA8);
    sub_18EF8558C(&unk_1EACB7C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7C48);
  }

  return result;
}

unint64_t sub_18F017044()
{
  result = qword_1EACB7048;
  if (!qword_1EACB7048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7048);
  }

  return result;
}

unint64_t sub_18F017098()
{
  result = qword_1EACB6FA0;
  if (!qword_1EACB6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6FA0);
  }

  return result;
}

unint64_t sub_18F0170EC()
{
  result = qword_1EACB7C60;
  if (!qword_1EACB7C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7C60);
  }

  return result;
}

unint64_t sub_18F017140()
{
  result = qword_1EACB7C70;
  if (!qword_1EACB7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7C70);
  }

  return result;
}

unint64_t sub_18F017194()
{
  result = qword_1EACB7CC8;
  if (!qword_1EACB7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7CC8);
  }

  return result;
}

unint64_t sub_18F0171E8()
{
  result = qword_1EACB7D70;
  if (!qword_1EACB7D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7D68, &qword_18F0A0D60);
    sub_18EFBE800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7D70);
  }

  return result;
}

unint64_t sub_18F01726C()
{
  result = qword_1EACB7D78;
  if (!qword_1EACB7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7D78);
  }

  return result;
}

unint64_t sub_18F0172C0()
{
  result = qword_1EACB7160;
  if (!qword_1EACB7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7160);
  }

  return result;
}

unint64_t sub_18F017314()
{
  result = qword_1EACB7D90;
  if (!qword_1EACB7D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7D88, &qword_18F0A0D68);
    sub_18F0173A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7D90);
  }

  return result;
}

unint64_t sub_18F0173A0()
{
  result = qword_1EACB7D98;
  if (!qword_1EACB7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7D98);
  }

  return result;
}

unint64_t sub_18F0173F4()
{
  result = qword_1EACB7DD0;
  if (!qword_1EACB7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7DD0);
  }

  return result;
}

unint64_t sub_18F017448()
{
  result = qword_1EACB6B38;
  if (!qword_1EACB6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6B38);
  }

  return result;
}

unint64_t sub_18F01749C()
{
  result = qword_1EACB7DE0;
  if (!qword_1EACB7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7DE0);
  }

  return result;
}

unint64_t sub_18F0174F0()
{
  result = qword_1EACB7DF0;
  if (!qword_1EACB7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7DF0);
  }

  return result;
}

unint64_t sub_18F017544()
{
  result = qword_1EACB7E08;
  if (!qword_1EACB7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7E08);
  }

  return result;
}

unint64_t sub_18F017598()
{
  result = qword_1EACB7E20;
  if (!qword_1EACB7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7E20);
  }

  return result;
}

unint64_t sub_18F0175EC()
{
  result = qword_1EACB7E38;
  if (!qword_1EACB7E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7E38);
  }

  return result;
}

unint64_t sub_18F017640()
{
  result = qword_1EACB71D8;
  if (!qword_1EACB71D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB71D8);
  }

  return result;
}

unint64_t sub_18F017694()
{
  result = qword_1ED5FCF08;
  if (!qword_1ED5FCF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF08);
  }

  return result;
}

unint64_t sub_18F0176E8()
{
  result = qword_1EACB7038;
  if (!qword_1EACB7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7038);
  }

  return result;
}

unint64_t sub_18F01773C()
{
  result = qword_1EACB7010;
  if (!qword_1EACB7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7010);
  }

  return result;
}

unint64_t sub_18F017790()
{
  result = qword_1EACB6E30;
  if (!qword_1EACB6E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6E30);
  }

  return result;
}

unint64_t sub_18F0177E4()
{
  result = qword_1EACB7ED0;
  if (!qword_1EACB7ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7ED0);
  }

  return result;
}

unint64_t sub_18F017838()
{
  result = qword_1EACB7EE0;
  if (!qword_1EACB7EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7ED8, &qword_18F0A0DF0);
    sub_18F0178BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7EE0);
  }

  return result;
}

unint64_t sub_18F0178BC()
{
  result = qword_1EACB7EE8;
  if (!qword_1EACB7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7EE8);
  }

  return result;
}

unint64_t sub_18F017910()
{
  result = qword_1EACB7F28;
  if (!qword_1EACB7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7F28);
  }

  return result;
}

unint64_t sub_18F017964()
{
  result = qword_1EACB7F30;
  if (!qword_1EACB7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7F30);
  }

  return result;
}

unint64_t sub_18F0179B8()
{
  result = qword_1EACB6F08;
  if (!qword_1EACB6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F08);
  }

  return result;
}

unint64_t sub_18F017A0C()
{
  result = qword_1EACB6B90;
  if (!qword_1EACB6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6B90);
  }

  return result;
}

unint64_t sub_18F017A60()
{
  result = qword_1EACB70A8;
  if (!qword_1EACB70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB70A8);
  }

  return result;
}

unint64_t sub_18F017AB4()
{
  result = qword_1EACB7188;
  if (!qword_1EACB7188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7188);
  }

  return result;
}

unint64_t sub_18F017B70()
{
  result = qword_1ED5FF0C8;
  if (!qword_1ED5FF0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7BA8, &qword_18F0A0C48);
    sub_18EFC2AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF0C8);
  }

  return result;
}

void (*sub_18F017BF4(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_18EFCE780(a3);
  sub_18EFBB7B4();
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x193AD8BA0](a2, a3);
  }

  *a1 = v7;
  return sub_18F020730;
}

void (*sub_18F017C80(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_18EFCE780(a3);
  sub_18EFBB7B4();
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_292();
    v7 = MEMORY[0x193AD8BA0](v9);
  }

  *a1 = v7;
  return sub_18F017D08;
}

uint64_t sub_18F017D10(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_18F0941BC();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_18EFA0A7C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_18EF825F4(0, &qword_1EACB6A58, off_1E72B0050);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_18EF8992C(&unk_1EACB8788);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8780, &qword_18F0A1380);
          v9 = sub_18F017BF4(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F017EA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_18F0941BC();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_18EFA0A7C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_18EF825F4(0, &qword_1EACB7750, off_1E72AFF30);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_18EF8992C(&unk_1EACB85E0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85D8, &qword_18F0A1220);
          v9 = sub_18F017BF4(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F018040(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_18F0941BC();
    v7 = result;
    if (!result)
    {
      return OUTLINED_FUNCTION_108();
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return OUTLINED_FUNCTION_108();
    }
  }

  if (v5)
  {
    result = sub_18EFA0A7C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_18EF825F4(0, &qword_1ED5FE7B8, off_1E72AFF88);
        swift_arrayInitWithCopy();
        return OUTLINED_FUNCTION_108();
      }

      if (v7 >= 1)
      {
        sub_18EF8992C(&qword_1EACB6C48);
        for (i = 0; i != v7; ++i)
        {
          v9 = OUTLINED_FUNCTION_263();
          __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
          v11 = sub_18F017C80(v14, i, a3);
          v13 = *v12;
          (v11)(v14, 0);
          *(v5 + 8 * i) = v13;
        }

        return OUTLINED_FUNCTION_108();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_18F0181D0()
{
  result = qword_1EACB6FF0;
  if (!qword_1EACB6FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7C40, &qword_18F0A0CA8);
    sub_18EF8558C(&unk_1EACB6FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6FF0);
  }

  return result;
}

unint64_t sub_18F018284()
{
  result = qword_1ED5FD5D8;
  if (!qword_1ED5FD5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7D68, &qword_18F0A0D60);
    sub_18EFBE7AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD5D8);
  }

  return result;
}

unint64_t sub_18F018308()
{
  result = qword_1EACB7150;
  if (!qword_1EACB7150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7D88, &qword_18F0A0D68);
    sub_18F018394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7150);
  }

  return result;
}

unint64_t sub_18F018394()
{
  result = qword_1EACB70F8;
  if (!qword_1EACB70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB70F8);
  }

  return result;
}

unint64_t sub_18F0183E8()
{
  result = qword_1ED5FCE50;
  if (!qword_1ED5FCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCE50);
  }

  return result;
}

unint64_t sub_18F01843C()
{
  result = qword_1EACB80A8;
  if (!qword_1EACB80A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7ED8, &qword_18F0A0DF0);
    sub_18F0184C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB80A8);
  }

  return result;
}

unint64_t sub_18F0184C0()
{
  result = qword_1EACB80B0;
  if (!qword_1EACB80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB80B0);
  }

  return result;
}

unint64_t sub_18F018514()
{
  result = qword_1EACB6F50;
  if (!qword_1EACB6F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F50);
  }

  return result;
}

unint64_t sub_18F018568()
{
  result = qword_1EACB6A80;
  if (!qword_1EACB6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A80);
  }

  return result;
}

unint64_t sub_18F0185F4()
{
  result = qword_1EACB8128;
  if (!qword_1EACB8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8128);
  }

  return result;
}

unint64_t sub_18F018648()
{
  result = qword_1ED5FCE40;
  if (!qword_1ED5FCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCE40);
  }

  return result;
}

unint64_t sub_18F01869C()
{
  result = qword_1EACB8188;
  if (!qword_1EACB8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8188);
  }

  return result;
}

unint64_t sub_18F0186F0()
{
  result = qword_1EACB6E68;
  if (!qword_1EACB6E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6E68);
  }

  return result;
}

unint64_t sub_18F018744()
{
  result = qword_1EACB6EC0;
  if (!qword_1EACB6EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB8198, &qword_18F0A0FF0);
    sub_18EF8558C(&unk_1EACB6E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6EC0);
  }

  return result;
}

unint64_t sub_18F018880()
{
  result = qword_1EACB81A8;
  if (!qword_1EACB81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB81A8);
  }

  return result;
}

unint64_t sub_18F0188D4()
{
  result = qword_1EACB81B0;
  if (!qword_1EACB81B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB8198, &qword_18F0A0FF0);
    sub_18EF8558C(&unk_1EACB81B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB81B0);
  }

  return result;
}

unint64_t sub_18F018988()
{
  result = qword_1EACB81F0;
  if (!qword_1EACB81F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB81D0, &qword_18F0A1008);
    sub_18EF8558C(&unk_1EACB81F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB81F0);
  }

  return result;
}

unint64_t sub_18F018A3C()
{
  result = qword_1EACB8200;
  if (!qword_1EACB8200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB81D8, &qword_18F0A1010);
    sub_18EF8558C(&unk_1EACB8208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8200);
  }

  return result;
}

unint64_t sub_18F018AF0()
{
  result = qword_1EACB7258;
  if (!qword_1EACB7258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB8240, &qword_18F0A1038);
    sub_18EFCC148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7258);
  }

  return result;
}

unint64_t sub_18F018B74()
{
  result = qword_1EACB8250;
  if (!qword_1EACB8250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB8240, &qword_18F0A1038);
    sub_18F018BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8250);
  }

  return result;
}

unint64_t sub_18F018BF8()
{
  result = qword_1EACB8258;
  if (!qword_1EACB8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8258);
  }

  return result;
}

unint64_t sub_18F018C4C()
{
  result = qword_1EACB8280;
  if (!qword_1EACB8280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7A70, &qword_18F0A0BB8);
    sub_18EF8558C(&unk_1EACB8288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8280);
  }

  return result;
}

unint64_t sub_18F018D08()
{
  result = qword_1EACB8290;
  if (!qword_1EACB8290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7A78, &qword_18F0A0BC0);
    sub_18EF8558C(&unk_1EACB8298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8290);
  }

  return result;
}

unint64_t sub_18F018DBC()
{
  result = qword_1EACB82A0;
  if (!qword_1EACB82A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7A80, &qword_18F0A0BC8);
    sub_18EF8558C(&unk_1EACB7DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB82A0);
  }

  return result;
}

unint64_t sub_18F018E78()
{
  result = qword_1EACB82A8;
  if (!qword_1EACB82A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7A88, &qword_18F0A0BD0);
    sub_18EF8558C(&unk_1EACB82B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB82A8);
  }

  return result;
}

unint64_t sub_18F018F34()
{
  result = qword_1EACB82B8;
  if (!qword_1EACB82B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB7A90, &qword_18F0A0BD8);
    sub_18EF8558C(&unk_1EACB7DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB82B8);
  }

  return result;
}

unint64_t sub_18F018FE8()
{
  result = qword_1EACB82C8;
  if (!qword_1EACB82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB82C8);
  }

  return result;
}

unint64_t sub_18F01903C()
{
  result = qword_1EACB82D0;
  if (!qword_1EACB82D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7AA0, &qword_18F0A0BE0);
    sub_18EF8558C(&unk_1EACB82D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB82D0);
  }

  return result;
}

unint64_t sub_18F0190F0()
{
  result = qword_1EACB82E0;
  if (!qword_1EACB82E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7AA8, &qword_18F0A0BE8);
    sub_18F019174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB82E0);
  }

  return result;
}

unint64_t sub_18F019174()
{
  result = qword_1EACB82E8;
  if (!qword_1EACB82E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB82E8);
  }

  return result;
}

unint64_t sub_18F0191C8()
{
  result = qword_1EACB82F0;
  if (!qword_1EACB82F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7AB0, &qword_18F0A0BF0);
    sub_18F01924C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB82F0);
  }

  return result;
}

unint64_t sub_18F01924C()
{
  result = qword_1EACB82F8;
  if (!qword_1EACB82F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB82F8);
  }

  return result;
}

unint64_t sub_18F0192A0()
{
  result = qword_1EACB8300;
  if (!qword_1EACB8300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7AB8, &qword_18F0A0BF8);
    sub_18F019324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8300);
  }

  return result;
}

unint64_t sub_18F019324()
{
  result = qword_1EACB8308;
  if (!qword_1EACB8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8308);
  }

  return result;
}

void sub_18F019378(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_268();
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_18F019430(uint64_t a1)
{
  sub_18F093B8C();
  sub_18F093B5C();
  OUTLINED_FUNCTION_216();

  return v1;
}

unint64_t sub_18F019464()
{
  result = qword_1ED5FD238;
  if (!qword_1ED5FD238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD238);
  }

  return result;
}

unint64_t sub_18F0194B8()
{
  result = qword_1ED5FCDC8;
  if (!qword_1ED5FCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCDC8);
  }

  return result;
}

unint64_t sub_18F01950C()
{
  result = qword_1EACB8378;
  if (!qword_1EACB8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8378);
  }

  return result;
}

unint64_t sub_18F019560()
{
  result = qword_1EACB6EC8;
  if (!qword_1EACB6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6EC8);
  }

  return result;
}

unint64_t sub_18F0195B4()
{
  result = qword_1EACB6A90;
  if (!qword_1EACB6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A90);
  }

  return result;
}

unint64_t sub_18F019608()
{
  result = qword_1EACB83D0;
  if (!qword_1EACB83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB83D0);
  }

  return result;
}

unint64_t sub_18F01965C()
{
  result = qword_1EACB83D8;
  if (!qword_1EACB83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB83D8);
  }

  return result;
}

unint64_t sub_18F0196B0()
{
  result = qword_1EACB83E8;
  if (!qword_1EACB83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB83E8);
  }

  return result;
}

unint64_t sub_18F019704()
{
  result = qword_1EACB6C00;
  if (!qword_1EACB6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C00);
  }

  return result;
}

unint64_t sub_18F019758()
{
  result = qword_1EACB6BE8;
  if (!qword_1EACB6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6BE8);
  }

  return result;
}

unint64_t sub_18F0197AC()
{
  result = qword_1EACB6A50;
  if (!qword_1EACB6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A50);
  }

  return result;
}

unint64_t sub_18F019800()
{
  result = qword_1EACB6A18;
  if (!qword_1EACB6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A18);
  }

  return result;
}

unint64_t sub_18F019854()
{
  result = qword_1ED5FCDC0;
  if (!qword_1ED5FCDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCDC0);
  }

  return result;
}

unint64_t sub_18F0198A8()
{
  result = qword_1ED5FCDD8;
  if (!qword_1ED5FCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCDD8);
  }

  return result;
}

unint64_t sub_18F0198FC()
{
  result = qword_1ED5FCF60;
  if (!qword_1ED5FCF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF60);
  }

  return result;
}

unint64_t sub_18F019950()
{
  result = qword_1ED5FCF70;
  if (!qword_1ED5FCF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF70);
  }

  return result;
}

unint64_t sub_18F0199A4()
{
  result = qword_1EACB84F0;
  if (!qword_1EACB84F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB84F0);
  }

  return result;
}

unint64_t sub_18F0199F8()
{
  result = qword_1EACB8500;
  if (!qword_1EACB8500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8500);
  }

  return result;
}

unint64_t sub_18F019A4C()
{
  result = qword_1EACB6AC8;
  if (!qword_1EACB6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6AC8);
  }

  return result;
}

unint64_t sub_18F019AA0()
{
  result = qword_1EACB8560;
  if (!qword_1EACB8560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7898, &qword_18F09DC48);
    sub_18EF8558C(&unk_1EACB6A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8560);
  }

  return result;
}

unint64_t sub_18F019B54()
{
  result = qword_1ED5FCDF0;
  if (!qword_1ED5FCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCDF0);
  }

  return result;
}

unint64_t sub_18F019BA8()
{
  result = qword_1ED5FD5F8;
  if (!qword_1ED5FD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD5F8);
  }

  return result;
}

unint64_t sub_18F019C18()
{
  result = qword_1EACB8690;
  if (!qword_1EACB8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8690);
  }

  return result;
}

void sub_18F019C6C(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_18F019C7C()
{
  result = qword_1EACB86A8;
  if (!qword_1EACB86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB86A8);
  }

  return result;
}

uint64_t sub_18F019D08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F019D78(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_138();
  v4(v3);
  OUTLINED_FUNCTION_36();
  v5 = OUTLINED_FUNCTION_108();
  v6(v5);
  return a2;
}

unint64_t sub_18F019DD0()
{
  result = qword_1EACB86E8;
  if (!qword_1EACB86E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB86E8);
  }

  return result;
}

uint64_t sub_18F019E24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_18F019EA8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_18F019F9C()
{
  result = qword_1EACB8770;
  if (!qword_1EACB8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8770);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_18F01A078()
{
  result = qword_1EACB6A00;
  if (!qword_1EACB6A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB72F8, &qword_18F09BD38);
    sub_18EF8558C(&unk_1EACB6A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A00);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_187Tm()
{
  OUTLINED_FUNCTION_62();
  if (v0)
  {
    return OUTLINED_FUNCTION_16();
  }

  OUTLINED_FUNCTION_161();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v4 = OUTLINED_FUNCTION_85();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_188Tm()
{
  OUTLINED_FUNCTION_29();
  if (v5)
  {
    OUTLINED_FUNCTION_217();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_253(v0, v1, v2, v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_331();
    v9 = OUTLINED_FUNCTION_52(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_18F01A348(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 15);
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

      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 15);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_170((*a1 | (v4 << 8)) - 15);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_170(v8);
}

_BYTE *sub_18F01A3CC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_211(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_209(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_210(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_181(result, a2 + 14);
        }

        break;
    }
  }

  return result;
}

uint64_t _s14CodableWrapperO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14CodableWrapperO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_415Tm()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_51();
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_99(*(v0 + *(v2 + 20) + 8));
  }

  v4 = OUTLINED_FUNCTION_156();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

uint64_t __swift_store_extra_inhabitant_index_416Tm()
{
  OUTLINED_FUNCTION_34();
  result = OUTLINED_FUNCTION_51();
  if (*(v5 + 84) == v3)
  {
    v6 = OUTLINED_FUNCTION_66();

    return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
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

uint64_t sub_18F01A8A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F01A8E8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_18F01A944(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x73 && *(a1 + 16))
    {
      v2 = *a1 + 114;
    }

    else
    {
      v2 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
      if (v2 >= 0x72)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_18F01A98C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x72)
  {
    *result = a2 - 115;
    *(result + 8) = 0;
    if (a3 >= 0x73)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x73)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_18F01AA5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0 && *(a1 + 16))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_416();
  }

  return OUTLINED_FUNCTION_170(v2);
}

uint64_t sub_18F01AA9C(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_84(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_84(result, a2);
    }
  }

  return result;
}

uint64_t sub_18F01AAE0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x73 && *(a1 + 17))
    {
      v2 = *a1 + 114;
    }

    else
    {
      v2 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
      if (v2 >= 0x72)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_18F01AB28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x72)
  {
    *(result + 16) = 0;
    *result = a2 - 115;
    *(result + 8) = 0;
    if (a3 >= 0x73)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x73)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So17LNEntityValueTypeC12LinkMetadataE20EntityCodableWrapper33_8F5A22252D2EEFBD74C1473F6DDC7E6CLLV06SystemfgH0VSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F01ABB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 121))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F01ABF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18F01AC78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0 && *(a1 + 48))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_416();
  }

  return OUTLINED_FUNCTION_170(v2);
}

uint64_t sub_18F01ACB8(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_84(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_84(result, a2);
    }
  }

  return result;
}

uint64_t sub_18F01ACFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_416();
  }

  return OUTLINED_FUNCTION_170(v2);
}

unint64_t sub_18F01AD60()
{
  result = qword_1EACB88B8;
  if (!qword_1EACB88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB88B8);
  }

  return result;
}

unint64_t sub_18F01ADB8()
{
  result = qword_1EACB88C0;
  if (!qword_1EACB88C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB88C0);
  }

  return result;
}

unint64_t sub_18F01AE10()
{
  result = qword_1EACB88C8;
  if (!qword_1EACB88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB88C8);
  }

  return result;
}

unint64_t sub_18F01AE68()
{
  result = qword_1EACB88D0;
  if (!qword_1EACB88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB88D0);
  }

  return result;
}

unint64_t sub_18F01AEC0()
{
  result = qword_1EACB88D8;
  if (!qword_1EACB88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB88D8);
  }

  return result;
}

unint64_t sub_18F01AF18()
{
  result = qword_1EACB88E0;
  if (!qword_1EACB88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB88E0);
  }

  return result;
}

unint64_t sub_18F01AF70()
{
  result = qword_1EACB88E8;
  if (!qword_1EACB88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB88E8);
  }

  return result;
}

unint64_t sub_18F01AFC8()
{
  result = qword_1EACB88F0;
  if (!qword_1EACB88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB88F0);
  }

  return result;
}

unint64_t sub_18F01B020()
{
  result = qword_1EACB88F8;
  if (!qword_1EACB88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB88F8);
  }

  return result;
}

unint64_t sub_18F01B078()
{
  result = qword_1EACB8900;
  if (!qword_1EACB8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8900);
  }

  return result;
}

unint64_t sub_18F01B0D0()
{
  result = qword_1EACB8908;
  if (!qword_1EACB8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8908);
  }

  return result;
}

unint64_t sub_18F01B128()
{
  result = qword_1EACB8910;
  if (!qword_1EACB8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8910);
  }

  return result;
}

unint64_t sub_18F01B180()
{
  result = qword_1EACB8918;
  if (!qword_1EACB8918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8918);
  }

  return result;
}

unint64_t sub_18F01B1D8()
{
  result = qword_1EACB8920;
  if (!qword_1EACB8920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8920);
  }

  return result;
}

unint64_t sub_18F01B230()
{
  result = qword_1EACB8928;
  if (!qword_1EACB8928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8928);
  }

  return result;
}

unint64_t sub_18F01B288()
{
  result = qword_1EACB8930;
  if (!qword_1EACB8930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8930);
  }

  return result;
}

unint64_t sub_18F01B2E0()
{
  result = qword_1EACB8938;
  if (!qword_1EACB8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8938);
  }

  return result;
}

unint64_t sub_18F01B338()
{
  result = qword_1EACB8940;
  if (!qword_1EACB8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8940);
  }

  return result;
}

unint64_t sub_18F01B390()
{
  result = qword_1EACB8948;
  if (!qword_1EACB8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8948);
  }

  return result;
}

unint64_t sub_18F01B3E8()
{
  result = qword_1EACB8950;
  if (!qword_1EACB8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8950);
  }

  return result;
}

unint64_t sub_18F01B440()
{
  result = qword_1EACB8958;
  if (!qword_1EACB8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8958);
  }

  return result;
}

unint64_t sub_18F01B498()
{
  result = qword_1EACB8960;
  if (!qword_1EACB8960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8960);
  }

  return result;
}

unint64_t sub_18F01B4F0()
{
  result = qword_1EACB8968;
  if (!qword_1EACB8968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8968);
  }

  return result;
}

unint64_t sub_18F01B548()
{
  result = qword_1EACB8970;
  if (!qword_1EACB8970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8970);
  }

  return result;
}

unint64_t sub_18F01B5A0()
{
  result = qword_1EACB8978;
  if (!qword_1EACB8978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8978);
  }

  return result;
}

unint64_t sub_18F01B5F8()
{
  result = qword_1EACB8980;
  if (!qword_1EACB8980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8980);
  }

  return result;
}

unint64_t sub_18F01B650()
{
  result = qword_1EACB8988;
  if (!qword_1EACB8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8988);
  }

  return result;
}

unint64_t sub_18F01B6A8()
{
  result = qword_1EACB8990;
  if (!qword_1EACB8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8990);
  }

  return result;
}

unint64_t sub_18F01B700()
{
  result = qword_1EACB8998;
  if (!qword_1EACB8998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8998);
  }

  return result;
}

unint64_t sub_18F01B758()
{
  result = qword_1EACB89A0;
  if (!qword_1EACB89A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89A0);
  }

  return result;
}

unint64_t sub_18F01B7B0()
{
  result = qword_1EACB89A8;
  if (!qword_1EACB89A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89A8);
  }

  return result;
}

unint64_t sub_18F01B808()
{
  result = qword_1EACB89B0;
  if (!qword_1EACB89B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89B0);
  }

  return result;
}

unint64_t sub_18F01B860()
{
  result = qword_1EACB89B8;
  if (!qword_1EACB89B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89B8);
  }

  return result;
}

unint64_t sub_18F01B8B8()
{
  result = qword_1EACB89C0;
  if (!qword_1EACB89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89C0);
  }

  return result;
}

unint64_t sub_18F01B910()
{
  result = qword_1EACB89C8;
  if (!qword_1EACB89C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89C8);
  }

  return result;
}

unint64_t sub_18F01B968()
{
  result = qword_1EACB89D0;
  if (!qword_1EACB89D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89D0);
  }

  return result;
}

unint64_t sub_18F01B9C0()
{
  result = qword_1EACB89D8;
  if (!qword_1EACB89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89D8);
  }

  return result;
}

unint64_t sub_18F01BA18()
{
  result = qword_1EACB89E0;
  if (!qword_1EACB89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89E0);
  }

  return result;
}

unint64_t sub_18F01BA70()
{
  result = qword_1EACB89E8;
  if (!qword_1EACB89E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89E8);
  }

  return result;
}

unint64_t sub_18F01BAC8()
{
  result = qword_1EACB89F0;
  if (!qword_1EACB89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89F0);
  }

  return result;
}

unint64_t sub_18F01BB20()
{
  result = qword_1EACB89F8;
  if (!qword_1EACB89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB89F8);
  }

  return result;
}

unint64_t sub_18F01BB78()
{
  result = qword_1EACB8A00;
  if (!qword_1EACB8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A00);
  }

  return result;
}

unint64_t sub_18F01BBD0()
{
  result = qword_1EACB8A08;
  if (!qword_1EACB8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A08);
  }

  return result;
}

unint64_t sub_18F01BC28()
{
  result = qword_1EACB8A10;
  if (!qword_1EACB8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A10);
  }

  return result;
}

unint64_t sub_18F01BC80()
{
  result = qword_1EACB8A18;
  if (!qword_1EACB8A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A18);
  }

  return result;
}

unint64_t sub_18F01BCD8()
{
  result = qword_1EACB8A20;
  if (!qword_1EACB8A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A20);
  }

  return result;
}

unint64_t sub_18F01BD30()
{
  result = qword_1EACB8A28;
  if (!qword_1EACB8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A28);
  }

  return result;
}

unint64_t sub_18F01BD88()
{
  result = qword_1EACB8A30;
  if (!qword_1EACB8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A30);
  }

  return result;
}

unint64_t sub_18F01BDE0()
{
  result = qword_1EACB8A38;
  if (!qword_1EACB8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A38);
  }

  return result;
}

unint64_t sub_18F01BE38()
{
  result = qword_1EACB8A40;
  if (!qword_1EACB8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A40);
  }

  return result;
}

unint64_t sub_18F01BE90()
{
  result = qword_1EACB8A48;
  if (!qword_1EACB8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A48);
  }

  return result;
}

unint64_t sub_18F01BEE8()
{
  result = qword_1EACB8A50;
  if (!qword_1EACB8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A50);
  }

  return result;
}

unint64_t sub_18F01BF40()
{
  result = qword_1EACB8A58;
  if (!qword_1EACB8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A58);
  }

  return result;
}

unint64_t sub_18F01BF98()
{
  result = qword_1EACB8A60;
  if (!qword_1EACB8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A60);
  }

  return result;
}

unint64_t sub_18F01BFF0()
{
  result = qword_1EACB8A68;
  if (!qword_1EACB8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A68);
  }

  return result;
}

unint64_t sub_18F01C048()
{
  result = qword_1EACB8A70;
  if (!qword_1EACB8A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A70);
  }

  return result;
}

unint64_t sub_18F01C0A0()
{
  result = qword_1EACB8A78;
  if (!qword_1EACB8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A78);
  }

  return result;
}

unint64_t sub_18F01C0F8()
{
  result = qword_1EACB8A80;
  if (!qword_1EACB8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A80);
  }

  return result;
}

unint64_t sub_18F01C150()
{
  result = qword_1EACB8A88;
  if (!qword_1EACB8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A88);
  }

  return result;
}

unint64_t sub_18F01C1A8()
{
  result = qword_1EACB8A90;
  if (!qword_1EACB8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A90);
  }

  return result;
}

unint64_t sub_18F01C200()
{
  result = qword_1EACB8A98;
  if (!qword_1EACB8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8A98);
  }

  return result;
}

unint64_t sub_18F01C258()
{
  result = qword_1EACB8AA0;
  if (!qword_1EACB8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AA0);
  }

  return result;
}

unint64_t sub_18F01C2B0()
{
  result = qword_1EACB8AA8;
  if (!qword_1EACB8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AA8);
  }

  return result;
}

unint64_t sub_18F01C308()
{
  result = qword_1EACB8AB0;
  if (!qword_1EACB8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AB0);
  }

  return result;
}

unint64_t sub_18F01C360()
{
  result = qword_1EACB8AB8;
  if (!qword_1EACB8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AB8);
  }

  return result;
}

unint64_t sub_18F01C3B8()
{
  result = qword_1EACB8AC0;
  if (!qword_1EACB8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AC0);
  }

  return result;
}

unint64_t sub_18F01C410()
{
  result = qword_1EACB8AC8;
  if (!qword_1EACB8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AC8);
  }

  return result;
}

unint64_t sub_18F01C468()
{
  result = qword_1EACB8AD0;
  if (!qword_1EACB8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AD0);
  }

  return result;
}

unint64_t sub_18F01C4C0()
{
  result = qword_1EACB8AD8;
  if (!qword_1EACB8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AD8);
  }

  return result;
}

unint64_t sub_18F01C518()
{
  result = qword_1EACB8AE0;
  if (!qword_1EACB8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AE0);
  }

  return result;
}

unint64_t sub_18F01C570()
{
  result = qword_1EACB8AE8;
  if (!qword_1EACB8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AE8);
  }

  return result;
}

unint64_t sub_18F01C5C8()
{
  result = qword_1EACB8AF0;
  if (!qword_1EACB8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AF0);
  }

  return result;
}

unint64_t sub_18F01C620()
{
  result = qword_1EACB8AF8;
  if (!qword_1EACB8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8AF8);
  }

  return result;
}

unint64_t sub_18F01C678()
{
  result = qword_1EACB8B00;
  if (!qword_1EACB8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B00);
  }

  return result;
}

unint64_t sub_18F01C6D0()
{
  result = qword_1EACB8B08;
  if (!qword_1EACB8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B08);
  }

  return result;
}

unint64_t sub_18F01C728()
{
  result = qword_1EACB8B10;
  if (!qword_1EACB8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B10);
  }

  return result;
}

unint64_t sub_18F01C780()
{
  result = qword_1EACB8B18;
  if (!qword_1EACB8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B18);
  }

  return result;
}

unint64_t sub_18F01C7D8()
{
  result = qword_1EACB8B20;
  if (!qword_1EACB8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B20);
  }

  return result;
}

unint64_t sub_18F01C830()
{
  result = qword_1EACB8B28;
  if (!qword_1EACB8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B28);
  }

  return result;
}

unint64_t sub_18F01C888()
{
  result = qword_1ED5FCDE0;
  if (!qword_1ED5FCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCDE0);
  }

  return result;
}

unint64_t sub_18F01C8E0()
{
  result = qword_1ED5FCDE8;
  if (!qword_1ED5FCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCDE8);
  }

  return result;
}

unint64_t sub_18F01C938()
{
  result = qword_1EACB6A40;
  if (!qword_1EACB6A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A40);
  }

  return result;
}

unint64_t sub_18F01C990()
{
  result = qword_1EACB6A48;
  if (!qword_1EACB6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A48);
  }

  return result;
}

unint64_t sub_18F01C9E8()
{
  result = qword_1EACB6BD0;
  if (!qword_1EACB6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6BD0);
  }

  return result;
}

unint64_t sub_18F01CA40()
{
  result = qword_1EACB6BD8;
  if (!qword_1EACB6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6BD8);
  }

  return result;
}

unint64_t sub_18F01CA98()
{
  result = qword_1EACB6BF0;
  if (!qword_1EACB6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6BF0);
  }

  return result;
}

unint64_t sub_18F01CAF0()
{
  result = qword_1EACB6BF8;
  if (!qword_1EACB6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6BF8);
  }

  return result;
}

unint64_t sub_18F01CB48()
{
  result = qword_1EACB8B30;
  if (!qword_1EACB8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B30);
  }

  return result;
}

unint64_t sub_18F01CBA0()
{
  result = qword_1EACB8B38;
  if (!qword_1EACB8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B38);
  }

  return result;
}

unint64_t sub_18F01CBF8()
{
  result = qword_1EACB6E50;
  if (!qword_1EACB6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6E50);
  }

  return result;
}

unint64_t sub_18F01CC50()
{
  result = qword_1EACB6E58;
  if (!qword_1EACB6E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6E58);
  }

  return result;
}

unint64_t sub_18F01CCA8()
{
  result = qword_1EACB7120;
  if (!qword_1EACB7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7120);
  }

  return result;
}

unint64_t sub_18F01CD00()
{
  result = qword_1EACB7128;
  if (!qword_1EACB7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7128);
  }

  return result;
}

unint64_t sub_18F01CD58()
{
  result = qword_1ED5FCE30;
  if (!qword_1ED5FCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCE30);
  }

  return result;
}

unint64_t sub_18F01CDB0()
{
  result = qword_1ED5FCE38;
  if (!qword_1ED5FCE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCE38);
  }

  return result;
}

unint64_t sub_18F01CE08()
{
  result = qword_1EACB8B40;
  if (!qword_1EACB8B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B40);
  }

  return result;
}

unint64_t sub_18F01CE60()
{
  result = qword_1EACB8B48;
  if (!qword_1EACB8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B48);
  }

  return result;
}

unint64_t sub_18F01CEB8()
{
  result = qword_1EACB6A70;
  if (!qword_1EACB6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A70);
  }

  return result;
}

unint64_t sub_18F01CF10()
{
  result = qword_1EACB6A78;
  if (!qword_1EACB6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6A78);
  }

  return result;
}

unint64_t sub_18F01CF68()
{
  result = qword_1EACB6F40;
  if (!qword_1EACB6F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F40);
  }

  return result;
}

unint64_t sub_18F01CFC0()
{
  result = qword_1EACB6F48;
  if (!qword_1EACB6F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F48);
  }

  return result;
}

unint64_t sub_18F01D018()
{
  result = qword_1EACB8B50;
  if (!qword_1EACB8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B50);
  }

  return result;
}

unint64_t sub_18F01D070()
{
  result = qword_1EACB8B58;
  if (!qword_1EACB8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8B58);
  }

  return result;
}

unint64_t sub_18F01D0C8()
{
  result = qword_1EACB6E20;
  if (!qword_1EACB6E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6E20);
  }

  return result;
}

unint64_t sub_18F01D120()
{
  result = qword_1EACB6E28;
  if (!qword_1EACB6E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6E28);
  }

  return result;
}

unint64_t sub_18F01D178()
{
  result = qword_1EACB7000;
  if (!qword_1EACB7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7000);
  }

  return result;
}

unint64_t sub_18F01D1D0()
{
  result = qword_1EACB7008;
  if (!qword_1EACB7008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7008);
  }

  return result;
}

unint64_t sub_18F01D228()
{
  result = qword_1EACB7020;
  if (!qword_1EACB7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7020);
  }

  return result;
}

unint64_t sub_18F01D280()
{
  result = qword_1EACB7028;
  if (!qword_1EACB7028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7028);
  }

  return result;
}

unint64_t sub_18F01D2D8()
{
  result = qword_1ED5FCF80;
  if (!qword_1ED5FCF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF80);
  }

  return result;
}

unint64_t sub_18F01D330()
{
  result = qword_1ED5FCF88;
  if (!qword_1ED5FCF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF88);
  }

  return result;
}

unint64_t sub_18F01D388()
{
  result = qword_1ED5FE850;
  if (!qword_1ED5FE850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE850);
  }

  return result;
}

unint64_t sub_18F01D3E0()
{
  result = qword_1ED5FE858;
  if (!qword_1ED5FE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE858);
  }

  return result;
}

unint64_t sub_18F01D438()
{
  result = qword_1ED5FE800;
  if (!qword_1ED5FE800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE800);
  }

  return result;
}

unint64_t sub_18F01D490()
{
  result = qword_1ED5FE808;
  if (!qword_1ED5FE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE808);
  }

  return result;
}

unint64_t sub_18F01D4E8()
{
  result = qword_1ED5FE7F0;
  if (!qword_1ED5FE7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE7F0);
  }

  return result;
}

unint64_t sub_18F01D540()
{
  result = qword_1ED5FE7E8;
  if (!qword_1ED5FE7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE7E8);
  }

  return result;
}

unint64_t sub_18F01D598()
{
  result = qword_1ED5FE840;
  if (!qword_1ED5FE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE840);
  }

  return result;
}

unint64_t sub_18F01D5F0()
{
  result = qword_1ED5FE848;
  if (!qword_1ED5FE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE848);
  }

  return result;
}

unint64_t sub_18F01D648()
{
  result = qword_1ED5FE820;
  if (!qword_1ED5FE820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE820);
  }

  return result;
}

unint64_t sub_18F01D6A0()
{
  result = qword_1ED5FE828;
  if (!qword_1ED5FE828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE828);
  }

  return result;
}

unint64_t sub_18F01D6F8()
{
  result = qword_1ED5FE830;
  if (!qword_1ED5FE830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE830);
  }

  return result;
}

unint64_t sub_18F01D750()
{
  result = qword_1ED5FE838;
  if (!qword_1ED5FE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE838);
  }

  return result;
}

unint64_t sub_18F01D7A8()
{
  result = qword_1ED5FE810;
  if (!qword_1ED5FE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE810);
  }

  return result;
}

unint64_t sub_18F01D800()
{
  result = qword_1ED5FE818;
  if (!qword_1ED5FE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE818);
  }

  return result;
}

unint64_t sub_18F01D858()
{
  result = qword_1ED5FE7D0;
  if (!qword_1ED5FE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE7D0);
  }

  return result;
}

unint64_t sub_18F01D8B0()
{
  result = qword_1ED5FE7D8;
  if (!qword_1ED5FE7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE7D8);
  }

  return result;
}

unint64_t sub_18F01D908()
{
  result = qword_1ED5FD220;
  if (!qword_1ED5FD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD220);
  }

  return result;
}

unint64_t sub_18F01D960()
{
  result = qword_1ED5FD228;
  if (!qword_1ED5FD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD228);
  }

  return result;
}

unint64_t sub_18F01D9B8()
{
  result = qword_1ED5FE870;
  if (!qword_1ED5FE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE870);
  }

  return result;
}

unint64_t sub_18F01DA10()
{
  result = qword_1ED5FE878;
  if (!qword_1ED5FE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE878);
  }

  return result;
}

unint64_t sub_18F01DA68()
{
  result = qword_1ED5FD360;
  if (!qword_1ED5FD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD360);
  }

  return result;
}

unint64_t sub_18F01DAC0()
{
  result = qword_1ED5FD368;
  if (!qword_1ED5FD368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD368);
  }

  return result;
}

unint64_t sub_18F01DB18()
{
  result = qword_1EACB6FC0;
  if (!qword_1EACB6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6FC0);
  }

  return result;
}

unint64_t sub_18F01DB70()
{
  result = qword_1EACB6FC8;
  if (!qword_1EACB6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6FC8);
  }

  return result;
}

unint64_t sub_18F01DBC8()
{
  result = qword_1ED5FD040;
  if (!qword_1ED5FD040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD040);
  }

  return result;
}

unint64_t sub_18F01DC20()
{
  result = qword_1ED5FD048;
  if (!qword_1ED5FD048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD048);
  }

  return result;
}

unint64_t sub_18F01DC74()
{
  result = qword_1ED5FDEF8;
  if (!qword_1ED5FDEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDEF8);
  }

  return result;
}

unint64_t sub_18F01DCC8()
{
  result = qword_1ED5FDF10;
  if (!qword_1ED5FDF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB77C0, &qword_18F09BF18);
    sub_18EF883DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDF10);
  }

  return result;
}

unint64_t sub_18F01DD54()
{
  result = qword_1ED5FDF00;
  if (!qword_1ED5FDF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB8B78, &qword_18F0A7B90);
    sub_18EF8558C(&unk_1ED5FE008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDF00);
  }

  return result;
}

unint64_t sub_18F01DE10()
{
  result = qword_1ED5FCFB0;
  if (!qword_1ED5FCFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCFB0);
  }

  return result;
}

unint64_t sub_18F01DE64()
{
  result = qword_1EACB8BA0;
  if (!qword_1EACB8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8BA0);
  }

  return result;
}

unint64_t sub_18F01DEB8()
{
  result = qword_1EACB8BB0;
  if (!qword_1EACB8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8BB0);
  }

  return result;
}

unint64_t sub_18F01DF0C()
{
  result = qword_1EACB6F28;
  if (!qword_1EACB6F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F28);
  }

  return result;
}

unint64_t sub_18F01DF60()
{
  result = qword_1EACB6BB0;
  if (!qword_1EACB6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6BB0);
  }

  return result;
}

unint64_t sub_18F01DFB4()
{
  result = qword_1EACB70D0;
  if (!qword_1EACB70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB70D0);
  }

  return result;
}

unint64_t sub_18F01E008()
{
  result = qword_1EACB71B0;
  if (!qword_1EACB71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB71B0);
  }

  return result;
}

unint64_t sub_18F01E05C()
{
  result = qword_1EACB8C40;
  if (!qword_1EACB8C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB8C38, &qword_18F0A7BE8);
    sub_18F012B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8C40);
  }

  return result;
}

unint64_t sub_18F01E0E0()
{
  result = qword_1EACB6C20;
  if (!qword_1EACB6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C20);
  }

  return result;
}

unint64_t sub_18F01E134()
{
  result = qword_1EACB6C18;
  if (!qword_1EACB6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C18);
  }

  return result;
}

unint64_t sub_18F01E188()
{
  result = qword_1EACB6C30;
  if (!qword_1EACB6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C30);
  }

  return result;
}

unint64_t sub_18F01E1DC()
{
  result = qword_1EACB8CC0;
  if (!qword_1EACB8CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB8CB8, &qword_18F0A7C20);
    sub_18EF8558C(&unk_1EACB8CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8CC0);
  }

  return result;
}

unint64_t sub_18F01E290()
{
  result = qword_1EACB8CE8;
  if (!qword_1EACB8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8CE8);
  }

  return result;
}

unint64_t sub_18F01E2E4()
{
  result = qword_1EACB8D00;
  if (!qword_1EACB8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8D00);
  }

  return result;
}

unint64_t sub_18F01E338()
{
  result = qword_1EACB8D10;
  if (!qword_1EACB8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8D10);
  }

  return result;
}

unint64_t sub_18F01E38C()
{
  result = qword_1EACB71B8;
  if (!qword_1EACB71B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB8C38, &qword_18F0A7BE8);
    sub_18EF8882C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB71B8);
  }

  return result;
}

uint64_t sub_18F01E410(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_18F01E458(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_18F01E4A8()
{
  result = qword_1ED5FD1D0;
  if (!qword_1ED5FD1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD1D0);
  }

  return result;
}

unint64_t sub_18F01E4FC()
{
  result = qword_1ED5FD1C8;
  if (!qword_1ED5FD1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD1C8);
  }

  return result;
}

unint64_t sub_18F01E550()
{
  result = qword_1ED5FD1E0;
  if (!qword_1ED5FD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD1E0);
  }

  return result;
}

uint64_t sub_18F01E5A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_18F01E5E8()
{
  result = qword_1EACB6EB8;
  if (!qword_1EACB6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6EB8);
  }

  return result;
}

unint64_t sub_18F01E63C()
{
  result = qword_1EACB8E20;
  if (!qword_1EACB8E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB77C0, &qword_18F09BF18);
    sub_18F013748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8E20);
  }

  return result;
}

unint64_t sub_18F01E6C8()
{
  result = qword_1EACB8E28;
  if (!qword_1EACB8E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB8B78, &qword_18F0A7B90);
    sub_18EF8558C(&unk_1EACB6A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8E28);
  }

  return result;
}

unint64_t sub_18F01E784()
{
  result = qword_1EACB8E50;
  if (!qword_1EACB8E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8E50);
  }

  return result;
}

unint64_t sub_18F01E7D8()
{
  result = qword_1EACB8E58;
  if (!qword_1EACB8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8E58);
  }

  return result;
}

unint64_t sub_18F01E82C()
{
  result = qword_1EACB8E60;
  if (!qword_1EACB8E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8E60);
  }

  return result;
}

unint64_t sub_18F01E880()
{
  result = qword_1EACB8E78;
  if (!qword_1EACB8E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8E78);
  }

  return result;
}

uint64_t sub_18F01EA04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_170(-1);
  }

  if (a2 < 0 && *(a1 + 40))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_416();
  }

  return OUTLINED_FUNCTION_170(v2);
}

uint64_t sub_18F01EA44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

      return OUTLINED_FUNCTION_84(result, a2);
    }

    *(result + 40) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_84(result, a2);
    }
  }

  return result;
}

uint64_t sub_18F01EA94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F01EAE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_18F01EB60()
{
  result = qword_1EACB8EB8;
  if (!qword_1EACB8EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8EB8);
  }

  return result;
}

unint64_t sub_18F01EBB8()
{
  result = qword_1EACB8EC0;
  if (!qword_1EACB8EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8EC0);
  }

  return result;
}

unint64_t sub_18F01EC10()
{
  result = qword_1EACB8EC8;
  if (!qword_1EACB8EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8EC8);
  }

  return result;
}

unint64_t sub_18F01EC68()
{
  result = qword_1EACB8ED0;
  if (!qword_1EACB8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8ED0);
  }

  return result;
}

unint64_t sub_18F01ECC0()
{
  result = qword_1EACB8ED8;
  if (!qword_1EACB8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8ED8);
  }

  return result;
}

unint64_t sub_18F01ED18()
{
  result = qword_1EACB8EE0;
  if (!qword_1EACB8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8EE0);
  }

  return result;
}

unint64_t sub_18F01ED70()
{
  result = qword_1EACB8EE8;
  if (!qword_1EACB8EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8EE8);
  }

  return result;
}

unint64_t sub_18F01EDC8()
{
  result = qword_1EACB8EF0;
  if (!qword_1EACB8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8EF0);
  }

  return result;
}

unint64_t sub_18F01EE20()
{
  result = qword_1EACB8EF8;
  if (!qword_1EACB8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8EF8);
  }

  return result;
}

unint64_t sub_18F01EE78()
{
  result = qword_1EACB8F00;
  if (!qword_1EACB8F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F00);
  }

  return result;
}

unint64_t sub_18F01EED0()
{
  result = qword_1EACB8F08;
  if (!qword_1EACB8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F08);
  }

  return result;
}

unint64_t sub_18F01EF28()
{
  result = qword_1EACB8F10;
  if (!qword_1EACB8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F10);
  }

  return result;
}

unint64_t sub_18F01EF80()
{
  result = qword_1EACB8F18;
  if (!qword_1EACB8F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F18);
  }

  return result;
}

unint64_t sub_18F01EFD8()
{
  result = qword_1EACB8F20;
  if (!qword_1EACB8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F20);
  }

  return result;
}

unint64_t sub_18F01F030()
{
  result = qword_1EACB8F28;
  if (!qword_1EACB8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F28);
  }

  return result;
}

unint64_t sub_18F01F088()
{
  result = qword_1EACB8F30;
  if (!qword_1EACB8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F30);
  }

  return result;
}

unint64_t sub_18F01F0E0()
{
  result = qword_1EACB8F38;
  if (!qword_1EACB8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F38);
  }

  return result;
}

unint64_t sub_18F01F138()
{
  result = qword_1EACB8F40;
  if (!qword_1EACB8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F40);
  }

  return result;
}

unint64_t sub_18F01F190()
{
  result = qword_1EACB8F48;
  if (!qword_1EACB8F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F48);
  }

  return result;
}

unint64_t sub_18F01F1E8()
{
  result = qword_1EACB8F50;
  if (!qword_1EACB8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F50);
  }

  return result;
}

unint64_t sub_18F01F240()
{
  result = qword_1EACB8F58;
  if (!qword_1EACB8F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F58);
  }

  return result;
}

unint64_t sub_18F01F298()
{
  result = qword_1EACB8F60;
  if (!qword_1EACB8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F60);
  }

  return result;
}

unint64_t sub_18F01F2F0()
{
  result = qword_1EACB8F68;
  if (!qword_1EACB8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F68);
  }

  return result;
}

unint64_t sub_18F01F348()
{
  result = qword_1EACB8F70;
  if (!qword_1EACB8F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F70);
  }

  return result;
}

unint64_t sub_18F01F3A0()
{
  result = qword_1EACB8F78;
  if (!qword_1EACB8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F78);
  }

  return result;
}

unint64_t sub_18F01F3F8()
{
  result = qword_1EACB8F80;
  if (!qword_1EACB8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F80);
  }

  return result;
}

unint64_t sub_18F01F450()
{
  result = qword_1EACB8F88;
  if (!qword_1EACB8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F88);
  }

  return result;
}

unint64_t sub_18F01F4A8()
{
  result = qword_1EACB8F90;
  if (!qword_1EACB8F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F90);
  }

  return result;
}

unint64_t sub_18F01F500()
{
  result = qword_1ED5FD4F8;
  if (!qword_1ED5FD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD4F8);
  }

  return result;
}

unint64_t sub_18F01F558()
{
  result = qword_1ED5FD500;
  if (!qword_1ED5FD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD500);
  }

  return result;
}

unint64_t sub_18F01F5B0()
{
  result = qword_1EACB8F98;
  if (!qword_1EACB8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8F98);
  }

  return result;
}

unint64_t sub_18F01F608()
{
  result = qword_1EACB8FA0;
  if (!qword_1EACB8FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8FA0);
  }

  return result;
}

unint64_t sub_18F01F660()
{
  result = qword_1EACB8FA8;
  if (!qword_1EACB8FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8FA8);
  }

  return result;
}

unint64_t sub_18F01F6B8()
{
  result = qword_1EACB8FB0;
  if (!qword_1EACB8FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8FB0);
  }

  return result;
}

unint64_t sub_18F01F710()
{
  result = qword_1EACB6EA8;
  if (!qword_1EACB6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6EA8);
  }

  return result;
}

unint64_t sub_18F01F768()
{
  result = qword_1EACB6EB0;
  if (!qword_1EACB6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6EB0);
  }

  return result;
}

unint64_t sub_18F01F7C0()
{
  result = qword_1EACB8FB8;
  if (!qword_1EACB8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8FB8);
  }

  return result;
}

unint64_t sub_18F01F818()
{
  result = qword_1EACB8FC0;
  if (!qword_1EACB8FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8FC0);
  }

  return result;
}

unint64_t sub_18F01F870()
{
  result = qword_1EACB8FC8;
  if (!qword_1EACB8FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8FC8);
  }

  return result;
}

unint64_t sub_18F01F8C8()
{
  result = qword_1EACB8FD0;
  if (!qword_1EACB8FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8FD0);
  }

  return result;
}

unint64_t sub_18F01F920()
{
  result = qword_1EACB8FD8;
  if (!qword_1EACB8FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8FD8);
  }

  return result;
}

unint64_t sub_18F01F978()
{
  result = qword_1EACB8FE0;
  if (!qword_1EACB8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8FE0);
  }

  return result;
}

unint64_t sub_18F01F9D0()
{
  result = qword_1ED5FD568;
  if (!qword_1ED5FD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD568);
  }

  return result;
}

unint64_t sub_18F01FA28()
{
  result = qword_1ED5FD570;
  if (!qword_1ED5FD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD570);
  }

  return result;
}

unint64_t sub_18F01FA80()
{
  result = qword_1EACB7198;
  if (!qword_1EACB7198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7198);
  }

  return result;
}

unint64_t sub_18F01FAD8()
{
  result = qword_1EACB71A0;
  if (!qword_1EACB71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB71A0);
  }

  return result;
}

unint64_t sub_18F01FB30()
{
  result = qword_1ED5FCF28;
  if (!qword_1ED5FCF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF28);
  }

  return result;
}

unint64_t sub_18F01FB88()
{
  result = qword_1ED5FCF30;
  if (!qword_1ED5FCF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF30);
  }

  return result;
}

unint64_t sub_18F01FBE0()
{
  result = qword_1ED5FD188;
  if (!qword_1ED5FD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD188);
  }

  return result;
}

unint64_t sub_18F01FC38()
{
  result = qword_1ED5FD190;
  if (!qword_1ED5FD190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD190);
  }

  return result;
}

unint64_t sub_18F01FC90()
{
  result = qword_1EACB70B8;
  if (!qword_1EACB70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB70B8);
  }

  return result;
}

unint64_t sub_18F01FCE8()
{
  result = qword_1EACB70C0;
  if (!qword_1EACB70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB70C0);
  }

  return result;
}

unint64_t sub_18F01FD40()
{
  result = qword_1EACB6B98;
  if (!qword_1EACB6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6B98);
  }

  return result;
}

unint64_t sub_18F01FD98()
{
  result = qword_1EACB6BA0;
  if (!qword_1EACB6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6BA0);
  }

  return result;
}

unint64_t sub_18F01FDF0()
{
  result = qword_1EACB6F18;
  if (!qword_1EACB6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F18);
  }

  return result;
}

unint64_t sub_18F01FE48()
{
  result = qword_1EACB6F20;
  if (!qword_1EACB6F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F20);
  }

  return result;
}

unint64_t sub_18F01FEA0()
{
  result = qword_1EACB8FE8;
  if (!qword_1EACB8FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8FE8);
  }

  return result;
}

unint64_t sub_18F01FEF8()
{
  result = qword_1EACB8FF0;
  if (!qword_1EACB8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8FF0);
  }

  return result;
}

unint64_t sub_18F01FF50()
{
  result = qword_1EACB8FF8;
  if (!qword_1EACB8FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB8FF8);
  }

  return result;
}

unint64_t sub_18F01FFA8()
{
  result = qword_1EACB9000;
  if (!qword_1EACB9000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9000);
  }

  return result;
}

unint64_t sub_18F020000()
{
  result = qword_1ED5FCF98;
  if (!qword_1ED5FCF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCF98);
  }

  return result;
}

unint64_t sub_18F020058()
{
  result = qword_1ED5FCFA0;
  if (!qword_1ED5FCFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FCFA0);
  }

  return result;
}

unint64_t sub_18F0200B0()
{
  result = qword_1ED5FDEE8;
  if (!qword_1ED5FDEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDEE8);
  }

  return result;
}

unint64_t sub_18F020108()
{
  result = qword_1ED5FDEF0;
  if (!qword_1ED5FDEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDEF0);
  }

  return result;
}

unint64_t sub_18F02015C()
{
  result = qword_1EACB6F70;
  if (!qword_1EACB6F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F70);
  }

  return result;
}

unint64_t sub_18F0201B0()
{
  result = qword_1EACB9020;
  if (!qword_1EACB9020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9020);
  }

  return result;
}

unint64_t sub_18F020204()
{
  result = qword_1EACB9030;
  if (!qword_1EACB9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9030);
  }

  return result;
}

unint64_t sub_18F020258()
{
  result = qword_1EACB9050;
  if (!qword_1EACB9050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9050);
  }

  return result;
}

unint64_t sub_18F0202F0()
{
  result = qword_1EACB9080;
  if (!qword_1EACB9080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9080);
  }

  return result;
}

unint64_t sub_18F020348()
{
  result = qword_1EACB9088;
  if (!qword_1EACB9088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9088);
  }

  return result;
}

unint64_t sub_18F0203A0()
{
  result = qword_1EACB9090;
  if (!qword_1EACB9090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9090);
  }

  return result;
}

unint64_t sub_18F0203F8()
{
  result = qword_1EACB9098;
  if (!qword_1EACB9098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9098);
  }

  return result;
}

unint64_t sub_18F020450()
{
  result = qword_1EACB90A0;
  if (!qword_1EACB90A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB90A0);
  }

  return result;
}

unint64_t sub_18F0204A8()
{
  result = qword_1EACB90A8;
  if (!qword_1EACB90A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB90A8);
  }

  return result;
}

unint64_t sub_18F020500()
{
  result = qword_1EACB90B0;
  if (!qword_1EACB90B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB90B0);
  }

  return result;
}

unint64_t sub_18F020558()
{
  result = qword_1EACB90B8;
  if (!qword_1EACB90B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB90B8);
  }

  return result;
}

unint64_t sub_18F0205B0()
{
  result = qword_1EACB90C0;
  if (!qword_1EACB90C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB90C0);
  }

  return result;
}

unint64_t sub_18F020608()
{
  result = qword_1EACB6F58;
  if (!qword_1EACB6F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F58);
  }

  return result;
}

unint64_t sub_18F020660()
{
  result = qword_1EACB6F60;
  if (!qword_1EACB6F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6F60);
  }

  return result;
}

void OUTLINED_FUNCTION_40()
{
  *(v0 - 120) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_53()
{
  *(v0 - 120) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

uint64_t OUTLINED_FUNCTION_72()
{

  return sub_18F00D8B4();
}

unint64_t OUTLINED_FUNCTION_86(uint64_t a1)
{

  return sub_18EFA3C14(a1);
}

unint64_t OUTLINED_FUNCTION_89(uint64_t a1)
{

  return sub_18EF85B48(a1);
}

unint64_t OUTLINED_FUNCTION_90(uint64_t a1)
{

  return sub_18EFA3C14(a1);
}

uint64_t OUTLINED_FUNCTION_93(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_18F09421C();
}

uint64_t OUTLINED_FUNCTION_112(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_155(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return sub_18F09412C();
}

uint64_t OUTLINED_FUNCTION_214(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18F0945BC();
}

uint64_t OUTLINED_FUNCTION_221()
{

  return sub_18EF86A6C();
}

uint64_t OUTLINED_FUNCTION_223()
{

  return sub_18EF86A6C();
}

uint64_t OUTLINED_FUNCTION_249(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_277(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_286(void *a1@<X8>)
{
  v2 = *(v1 - 304);
  *a1 = *(v1 - 296);
  a1[1] = v2;
}

uint64_t OUTLINED_FUNCTION_290@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_314()
{

  return sub_18F0942CC();
}

void OUTLINED_FUNCTION_325(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *(v2 - 112) = v4;
  *(v2 - 104) = v3;
}

void OUTLINED_FUNCTION_335(uint64_t a1@<X8>)
{
  v2 = *(v1 - 120) + a1;
  v3 = *(v1 - 104);
  *v2 = *(v1 - 112);
  *(v2 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_345@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
}

uint64_t OUTLINED_FUNCTION_348()
{

  return sub_18F09411C();
}

id OUTLINED_FUNCTION_353()
{
  v3 = *(v1 + 8 * v0 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_407()
{

  return sub_18F09426C();
}

uint64_t OUTLINED_FUNCTION_408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_18F09412C();
}

uint64_t OUTLINED_FUNCTION_409(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_18F0941AC();
}

uint64_t OUTLINED_FUNCTION_410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_18F0941AC();
}

uint64_t OUTLINED_FUNCTION_411()
{

  return sub_18F09306C();
}

uint64_t OUTLINED_FUNCTION_412()
{

  return sub_18EFE920C((v0 - 136));
}

uint64_t OUTLINED_FUNCTION_413(uint64_t a1, uint64_t a2)
{

  return swift_deallocPartialClassInstance();
}

uint64_t OUTLINED_FUNCTION_414()
{

  return sub_18F093DBC();
}

uint64_t OUTLINED_FUNCTION_415(uint64_t a1)
{

  return sub_18F0940FC();
}

double sub_18F0214AC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_18F09374C();
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = 0x746E65746E49;
  *(a1 + 8) = 0xE600000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

id static LNCodableValueType.personNameComponents.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v28[-v1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9160, &unk_18F0AAE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F0AA0E0;
  *(inited + 32) = @"LNPlatformNameIOS";
  v4 = objc_allocWithZone(LNAvailabilityAnnotation);
  v5 = @"LNPlatformNameIOS";
  *(inited + 40) = OUTLINED_FUNCTION_0_1();
  *(inited + 48) = @"LNPlatformNameMACOS";
  v6 = objc_allocWithZone(LNAvailabilityAnnotation);
  v7 = @"LNPlatformNameMACOS";
  *(inited + 56) = OUTLINED_FUNCTION_0_1();
  *(inited + 64) = @"LNPlatformNameVISIONOS";
  v8 = objc_allocWithZone(LNAvailabilityAnnotation);
  v9 = @"LNPlatformNameVISIONOS";
  *(inited + 72) = OUTLINED_FUNCTION_0_1();
  *(inited + 80) = @"LNPlatformNameWATCHOS";
  v10 = objc_allocWithZone(LNAvailabilityAnnotation);
  v11 = @"LNPlatformNameWATCHOS";
  *(inited + 88) = OUTLINED_FUNCTION_0_1();
  *(inited + 96) = @"LNPlatformNameTVOS";
  v12 = objc_allocWithZone(LNAvailabilityAnnotation);
  v13 = @"LNPlatformNameTVOS";
  *(inited + 104) = OUTLINED_FUNCTION_0_1();
  type metadata accessor for LNPlatformName(0, v14, v15, v16);
  v17 = sub_18EFABC24();
  sub_18EFABC68(v17, v18, v19, v20);
  v21 = sub_18F093A5C();
  sub_18F09323C();
  v22 = sub_18F0932BC();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v22);
  v23 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  sub_18EFABD08(0xD000000000000014, 0x800000018F0AEB20, 0, 0, v2);
  v24 = objc_allocWithZone(LNTypeDisplayRepresentation);
  v25 = sub_18EF9307C();
  v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  return sub_18EFABE0C(0xD00000000000001FLL, 0x800000018F0AEAA0, 0xD000000000000023, 0x800000018F0AEAC0, v21, 0xD000000000000029, 0x800000018F0AEAF0, v25);
}

uint64_t LNRecurrenceRuleBridge.data.getter()
{
  v1 = *(v0 + OBJC_IVAR___LNRecurrenceRuleBridge_data);
  sub_18EF844C4(v1, *(v0 + OBJC_IVAR___LNRecurrenceRuleBridge_data + 8));
  return v1;
}

id LNRecurrenceRuleBridge.init(data:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_18F0932DC();
  v6 = [v4 initWithData_];

  sub_18EF9A4AC(a1, a2);
  return v6;
}

id LNRecurrenceRuleBridge.init(data:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___LNRecurrenceRuleBridge_data);
  *v3 = a1;
  v3[1] = a2;
  v5.super_class = LNRecurrenceRuleBridge;
  return objc_msgSendSuper2(&v5, sel_init);
}

id LNRecurrenceRuleBridge.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  sub_18EF825F4(0, &qword_1EACB9178, 0x1E695DEF0);
  v2 = sub_18F093F0C();
  if (v2)
  {
    v3 = v2;
    sub_18F0932FC();
  }

  type metadata accessor for LNRecurrenceRuleBridge(v4);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall LNRecurrenceRuleBridge.encode(with:)(NSCoder with)
{
  v3 = [v1 data];
  sub_18F09330C();

  OUTLINED_FUNCTION_0_2();
  v4 = sub_18F0932DC();
  v5 = OUTLINED_FUNCTION_0_2();
  sub_18EF9A4AC(v5, v6);
  v7 = sub_18F093B5C();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v7];
}

uint64_t static LNRecurrenceRuleBridge.== infix(_:_:)(void *a1, void *a2)
{
  v3 = [a1 data];
  sub_18F09330C();

  v4 = [a2 data];
  v5 = sub_18F09330C();
  v7 = v6;

  v8 = OUTLINED_FUNCTION_0_2();
  LOBYTE(v4) = MEMORY[0x193AD7E00](v8);
  sub_18EF9A4AC(v5, v7);
  v9 = OUTLINED_FUNCTION_0_2();
  sub_18EF9A4AC(v9, v10);
  return v4 & 1;
}

id LNRecurrenceRuleBridge.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t LNRecurrenceRuleBridge.isEqual(_:)(uint64_t a1)
{
  v2 = sub_18F021DCC(a1, v6);
  if (!v7)
  {
    sub_18F021E3C(v6);
    goto LABEL_5;
  }

  type metadata accessor for LNRecurrenceRuleBridge(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  v3 = static LNRecurrenceRuleBridge.== infix(_:_:)(v1, v5);

  return v3 & 1;
}

uint64_t sub_18F021DCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9180, &qword_18F09BD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F021E3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9180, &qword_18F09BD30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LNRecurrenceRuleBridge.recurrenceRule.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 data];
  v4 = sub_18F09330C();
  v6 = v5;

  sub_18F09302C();
  swift_allocObject();
  sub_18F09301C();
  v7 = sub_18F09335C();
  sub_18F022220(&qword_1EACB9188, MEMORY[0x1E6969988]);
  sub_18F09300C();
  sub_18EF9A4AC(v4, v6);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
}

id LNRecurrenceRuleBridge.init(rule:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_18F022104();
  v5 = v4;
  v6 = sub_18F0932DC();
  sub_18EF9A4AC(v3, v5);
  v7 = [v2 initWithData_];

  v8 = sub_18F09335C();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t sub_18F022104()
{
  v0 = sub_18F09305C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_18F0930BC();
  swift_allocObject();
  sub_18F0930AC();
  sub_18F09303C();
  sub_18F09307C();
  sub_18F09335C();
  sub_18F022220(&qword_1EACB91F8, MEMORY[0x1E6969978]);
  v1 = sub_18F09308C();

  return v1;
}

uint64_t sub_18F022220(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_18F09335C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t NSString.localizedString(withReplacements:table:bundleURL:localeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a6;
  v53 = a5;
  v65 = a4;
  v68 = a3;
  v67 = a2;
  v7 = sub_18F0931BC();
  v8 = OUTLINED_FUNCTION_1_2(v7, &v77);
  v63 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_0_3();
  v64 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9200, &qword_18F0AA128);
  v12 = OUTLINED_FUNCTION_95(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0(&v51 - v13);
  v14 = sub_18F09334C();
  v15 = OUTLINED_FUNCTION_1_2(v14, v75);
  v52 = v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(v17);
  v18 = sub_18F093AFC();
  v19 = OUTLINED_FUNCTION_95(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(v20);
  v21 = sub_18F093B1C();
  v22 = OUTLINED_FUNCTION_95(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(v23);
  v24 = sub_18F0931CC();
  v25 = OUTLINED_FUNCTION_95(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(v26);
  v27 = sub_18F093B4C();
  v28 = OUTLINED_FUNCTION_1_2(v27, &v76);
  v57 = v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v55 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v56 = &v51 - v32;
  sub_18F093B3C();
  v33 = *(a1 + 16);
  if (v33)
  {
    v34 = a1 + 32;
    v35 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_18EFB6E2C(v34, &v74);
      sub_18EFB6E2C(&v74, &v73);
      sub_18F022900();
      if (swift_dynamicCast())
      {
        v36 = v69;
        sub_18F022944(&v70);

        __swift_destroy_boxed_opaque_existential_1Tm(&v74);
      }

      else
      {
        sub_18EF914D4(&v74, &v69);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8648, &qword_18F0A1288);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v72 = 0;
          v70 = 0u;
          v71 = 0u;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v73);
      if (*(&v71 + 1))
      {
        sub_18EFBB5B4(&v70, &v73);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_18F00E9D0();
          v35 = v38;
        }

        v37 = *(v35 + 16);
        if (v37 >= *(v35 + 24) >> 1)
        {
          sub_18F00E9D0();
          v35 = v39;
        }

        *(v35 + 16) = v37 + 1;
        sub_18EFBB5B4(&v73, v35 + 40 * v37 + 32);
      }

      else
      {
        sub_18EF82E14(&v70, &qword_1EACB9208, &qword_18F0AA130);
      }

      v34 += 32;
      --v33;
    }

    while (v33);
  }

  v40 = v56;
  sub_18F093B2C();
  sub_18F022A54(v54);
  sub_18F093B0C();
  if (v61)
  {

    v41 = v60;
    sub_18F09332C();
    v42 = v58;
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v58);
    (*(v52 + 32))(v62, v41, v42);
  }

  else
  {
    v43 = v60;
    v44 = v58;
    __swift_storeEnumTagSinglePayload(v60, 1, 1, v58);
    sub_18F09333C();
    if (__swift_getEnumTagSinglePayload(v43, 1, v44) != 1)
    {
      sub_18EF82E14(v43, &qword_1EACB9200, &qword_18F0AA128);
    }
  }

  v45 = sub_18F0932BC();
  v46 = v64;
  (*(*(v45 - 8) + 16))(v64, v65, v45);
  (*(v63 + 104))(v46, *MEMORY[0x1E6968DF8], v66);

  sub_18F0931DC();
  v47 = v57;
  v48 = v59;
  (*(v57 + 16))(v55, v40, v59);
  v49 = sub_18F093BDC();
  (*(v47 + 8))(v40, v48);
  return v49;
}

unint64_t sub_18F022900()
{
  result = qword_1ED5FE760;
  if (!qword_1ED5FE760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FE760);
  }

  return result;
}

double sub_18F022944@<D0>(uint64_t a1@<X8>)
{
  switch([v1 ln_numberType])
  {
    case 1uLL:
      v3 = [v1 integerValue];
      v5 = MEMORY[0x1E69E6530];
      v6 = MEMORY[0x1E69E65A8];
      goto LABEL_6;
    case 2uLL:
      v3 = [v1 unsignedIntegerValue];
      v5 = MEMORY[0x1E69E6810];
      v6 = MEMORY[0x1E69E6870];
LABEL_6:
      *(a1 + 24) = v5;
      *(a1 + 32) = v6;
      *a1 = v3;
      break;
    case 3uLL:
      [v1 floatValue];
      v7 = MEMORY[0x1E69E64A8];
      *(a1 + 24) = MEMORY[0x1E69E6448];
      *(a1 + 32) = v7;
      *a1 = LODWORD(result);
      break;
    case 4uLL:
      [v1 doubleValue];
      v8 = MEMORY[0x1E69E6438];
      *(a1 + 24) = MEMORY[0x1E69E63B0];
      *(a1 + 32) = v8;
      *a1 = result;
      break;
    default:
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      break;
  }

  return result;
}

unint64_t sub_18F022A54@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9210, &qword_18F0AA138);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9218, &qword_18F0AA140);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v44 = sub_18F093AFC();
  v50 = swift_allocBox();
  v43 = v10;
  sub_18F093AEC();
  v49 = sub_18F093B8C();
  v51 = v11;
  v52 = v49;
  v53 = v11;
  sub_18F0939BC();
  sub_18F023488();
  sub_18F0234DC();
  v12 = sub_18F093A9C();
  (*(v7 + 8))(v9, v6);
  v13 = *(v12 + 16);
  if (v13)
  {
    v41 = v12;
    v42 = a1;
    v14 = *(v3 + 16);
    v47 = v3 + 16;
    v48 = v14;
    v15 = v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v16 = *(v3 + 72);
    v45 = (v3 + 8);
    v46 = v16;
    v17 = 15;
    while (1)
    {
      v48(v5, v15, v2);
      if (v17 >> 14 <= sub_18F0939CC() >> 14)
      {
        result = sub_18F0939CC();
        if (v17 >> 14 > result >> 14)
        {
          __break(1u);
          return result;
        }

        v20 = sub_18F093D2C();
        v21 = MEMORY[0x193AD8710](v20);
        v23 = v22;

        v18 = v50;
        sub_18F02306C(v21, v23, v50);

        sub_18F0939CC();
        v17 = v24;
      }

      else
      {
        v18 = v50;
      }

      sub_18F0939CC();
      v25 = sub_18F093D2C();
      v26 = MEMORY[0x193AD8710](v25);
      v28 = v27;

      sub_18F02306C(v26, v28, v18);

      (*v45)(v5, v2);
      v15 += v46;
      if (!--v13)
      {

        a1 = v42;
        goto LABEL_10;
      }
    }
  }

  v17 = 15;
LABEL_10:
  v29 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v29 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (v17 >> 14 < 4 * v29)
  {
    v30 = sub_18F02343C(v17, v49, v51);
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v37 = MEMORY[0x193AD8710](v30, v32, v34, v36);
    v39 = v38;

    sub_18F02306C(v37, v39, v50);
  }

  v40 = v43;
  swift_beginAccess();
  (*(*(v44 - 8) + 16))(a1, v40);
}

id sub_18F022EB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_18F0932BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18F093DCC();
  if (a4)
  {
    v14 = sub_18F093B8C();
    a4 = v15;
  }

  else
  {
    v14 = 0;
  }

  sub_18F09327C();
  if (a6)
  {
    v16 = sub_18F093B8C();
    a6 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = a1;
  NSString.localizedString(withReplacements:table:bundleURL:localeIdentifier:)(v13, v14, a4, v12, v16, a6);

  (*(v10 + 8))(v12, v9);
  v19 = sub_18F093B5C();

  return v19;
}

uint64_t sub_18F02306C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_18F093ABC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F093AFC();
  result = swift_projectBox();
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = a1 == 0x7D746E697B24 && a2 == 0xE600000000000000;
    if (v11 || (sub_18F09444C() & 1) != 0)
    {
      (*(v6 + 104))(v8, *MEMORY[0x1E6969D68], v5);
      swift_beginAccess();
    }

    else
    {
      v12 = a1 == 0x7D746E69757B24 && a2 == 0xE700000000000000;
      if (v12 || (sub_18F09444C() & 1) != 0)
      {
        (*(v6 + 104))(v8, *MEMORY[0x1E6969D70], v5);
        swift_beginAccess();
      }

      else
      {
        v13 = a1 == 0x7D74616F6C667B24 && a2 == 0xE800000000000000;
        if (v13 || (sub_18F09444C() & 1) != 0)
        {
          (*(v6 + 104))(v8, *MEMORY[0x1E6969D78], v5);
          swift_beginAccess();
        }

        else
        {
          v14 = a1 == 0x656C62756F647B24 && a2 == 0xE90000000000007DLL;
          if (v14 || (sub_18F09444C() & 1) != 0)
          {
            (*(v6 + 104))(v8, *MEMORY[0x1E6969D80], v5);
            swift_beginAccess();
          }

          else
          {
            v15 = a1 == 0x7463656A626F7B24 && a2 == 0xE90000000000007DLL;
            if (!v15 && (sub_18F09444C() & 1) == 0)
            {
              swift_beginAccess();
              sub_18F093ADC();
              return swift_endAccess();
            }

            (*(v6 + 104))(v8, *MEMORY[0x1E6969D88], v5);
            swift_beginAccess();
          }
        }
      }
    }

    sub_18F093ACC();
    swift_endAccess();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

unint64_t sub_18F02343C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_18F093D2C();
  }

  __break(1u);
  return result;
}

unint64_t sub_18F023488()
{
  result = qword_1EACB9220;
  if (!qword_1EACB9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9220);
  }

  return result;
}

unint64_t sub_18F0234DC()
{
  result = qword_1EACB9228;
  if (!qword_1EACB9228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB9218, &qword_18F0AA140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB9228);
  }

  return result;
}

unint64_t sub_18F02364C(unint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return v3;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    sub_18F023CEC(v3, a2, 10);

    return v3;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_18F0940EC();
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v16 = 0;
          if (result)
          {
            v17 = (result + 1);
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_61;
              }

              v19 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                goto LABEL_61;
              }

              v16 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                goto LABEL_61;
              }

              ++v17;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_69;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v24 = 0;
        if (result)
        {
          while (1)
          {
            v25 = *result - 48;
            if (v25 > 9)
            {
              goto LABEL_61;
            }

            v26 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              goto LABEL_61;
            }

            v24 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v8 = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v32 = v4;
        return v3;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v31[0] = result;
  v31[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v27 = 0;
        v28 = v31;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v27;
          if ((v27 * 10) >> 64 != (10 * v27) >> 63)
          {
            break;
          }

          v27 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            break;
          }

          ++v28;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        v12 = 0;
        v13 = v31 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_68;
  }

  if (v4)
  {
    if (--v4)
    {
      v20 = 0;
      v21 = v31 + 1;
      while (1)
      {
        v22 = *v21 - 48;
        if (v22 > 9)
        {
          break;
        }

        v23 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          break;
        }

        v20 = v23 + v22;
        if (__OFADD__(v23, v22))
        {
          break;
        }

        ++v21;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_18F0239A4()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_18F0239D4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_18F02364C(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v7;
  *(a3 + 24) = v6 & 1;
  return result;
}

uint64_t sub_18F023A1C@<X0>(uint64_t a1@<X8>)
{
  result = sub_18F023958();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4 & 1;
  return result;
}

uint64_t sub_18F023A58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_18F023AAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_18F023B98(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

unsigned __int8 *sub_18F023CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_18F093D1C();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_18F0303A0(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_18F0940EC();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}