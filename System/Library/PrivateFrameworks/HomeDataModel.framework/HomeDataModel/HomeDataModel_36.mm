uint64_t sub_1D19E209C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void *))
{
  v7 = a4;
  if (!a3)
  {
    v12 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v12;
  }

  v8 = a3;
  if (*(a4 + 16) == a3)
  {
    return v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1D1E6882C();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_17:
    v19 = *(*(v7 + 48) + (v16 | (v14 << 6)));
    v20 = sub_1D1E6920C();
    a7(v20);
    sub_1D1E678EC();

    result = sub_1D1E6926C();
    v21 = -1 << *(v12 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v12 + 48) + v24) = v19;
    ++*(v12 + 16);
    if (__OFSUB__(v8--, 1))
    {
      goto LABEL_32;
    }

    if (!v8)
    {
      goto LABEL_6;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_6;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
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

uint64_t sub_1D19E22C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StaticActionSet(0);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647418, &qword_1D1E85608);
  result = sub_1D1E6882C();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_1D19E33E8(v19 + v20 * (v16 | (v14 << 6)), v10, type metadata accessor for StaticActionSet);
    sub_1D1E6920C();
    StaticActionSet.hash(into:)(v33);
    result = sub_1D1E6926C();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_1D19E3450(v10, *(v11 + 48) + v24 * v20, type metadata accessor for StaticActionSet);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D19E2594(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StaticRoom(0);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647410, &unk_1D1E8EAC0);
  result = sub_1D1E6882C();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v25 = result + 56;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v28 = (v12 - 1) & v12;
LABEL_16:
    v17 = a4;
    v18 = *(a4 + 48);
    v19 = v26;
    v20 = *(v27 + 72);
    sub_1D19E33E8(v18 + v20 * (v14 | (v13 << 6)), v26, type metadata accessor for StaticRoom);
    sub_1D1E6920C();
    StaticRoom.hash(into:)(v29);
    sub_1D1E6926C();
    v21 = v25;
    v22 = sub_1D1E686CC();
    *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = sub_1D19E3450(v19, *(v10 + 48) + v22 * v20, type metadata accessor for StaticRoom);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v17;
    v12 = v28;
    if (!a3)
    {
LABEL_18:

      return v10;
    }
  }

  v15 = v13;
  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_18;
    }

    v16 = a1[v13];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v28 = (v16 - 1) & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D19E280C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1D1E6882C();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_1D1E684EC();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
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

uint64_t sub_1D19E29F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643010, &qword_1D1E90E20);
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v33 - v9);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473E8, &unk_1D1E8EAA0);
  result = sub_1D1E6882C();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v34 = result;
  v35 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v38 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v39 = *(v36 + 72);
    sub_1D1741C08(v19 + v39 * (v16 | (v14 << 6)), v10, &qword_1EC643010, &qword_1D1E90E20);
    sub_1D1E6920C();
    v21 = v10[3];
    v20 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v21);
    (*(v20 + 8))(v21, v20);
    sub_1D1E678EC();

    v22 = v10[3];
    v23 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v22);
    (*(v23 + 16))(v22, v23);
    sub_1D1E678EC();

    sub_1D1E66A7C();
    sub_1D17579AC();
    sub_1D1E676EC();
    sub_1D1E676EC();
    result = sub_1D1E6926C();
    v11 = v34;
    v24 = -1 << *(v34 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      a4 = v35;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    a4 = v35;
LABEL_26:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = sub_1D1741A90(v10, *(v11 + 48) + v27 * v39, &qword_1EC643010, &qword_1D1E90E20);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v13 = v38;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v38 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D19E2DE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v36 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473D0, &unk_1D1E8EA80);
  result = sub_1D1E6882C();
  v13 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 56;
  v34 = a4;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v37 = (v15 - 1) & v15;
LABEL_16:
    v21 = *(a4 + 48);
    v38 = *(v36 + 72);
    sub_1D19E33E8(v21 + v38 * (v18 | (v16 << 6)), v12, type metadata accessor for WriteInProgressStatusViewModel.ID);
    sub_1D1E6920C();
    v22 = v12;
    v23 = v35;
    sub_1D19E33E8(v12, v35, type metadata accessor for WriteInProgressStatusViewModel.ID);
    MEMORY[0x1D3892850](0);
    v24 = sub_1D1E66A7C();
    sub_1D17579AC();
    sub_1D1E676EC();
    (*(*(v24 - 8) + 8))(v23, v24);
    result = sub_1D1E6926C();
    v25 = -1 << *(v13 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      v12 = v22;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v17 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
    v12 = v22;
LABEL_26:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = sub_1D19E3450(v12, *(v13 + 48) + v28 * v38, type metadata accessor for WriteInProgressStatusViewModel.ID);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    v15 = v37;
    if (!a3)
    {
LABEL_28:

      return v13;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      goto LABEL_28;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v37 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1D19E315C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1D19FAD58(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t sub_1D19E31F0()
{
  result = qword_1EE07C960;
  if (!qword_1EE07C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07C960);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MatterDeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MatterDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D19E3394()
{
  result = qword_1EC648730;
  if (!qword_1EC648730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648730);
  }

  return result;
}

uint64_t sub_1D19E33E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19E3450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t MatterDeviceType.foregroundColor.getter()
{
  if (*v0 == 23)
  {
    v1 = objc_allocWithZone(MEMORY[0x1E69DC890]);
    aBlock[4] = sub_1D19E38B0;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D19E3848;
    aBlock[3] = &block_descriptor_29;
    v2 = _Block_copy(aBlock);
    [v1 initWithDynamicProvider_];
    _Block_release(v2);

    return sub_1D1E6730C();
  }

  else
  {
    LOBYTE(aBlock[0]) = *v0;
    MatterDeviceType.umbrellaCategory.getter(&v5);
    if (v5 <= 2u)
    {
      if (!v5)
      {
        return sub_1D1E6735C();
      }

      if (v5 == 2)
      {
        return sub_1D1E673FC();
      }
    }

    else
    {
      switch(v5)
      {
        case 3u:
          return sub_1D1E673CC();
        case 4u:
          return sub_1D1E6738C();
        case 6u:
          return sub_1D1E6734C();
      }
    }

    return sub_1D1E673AC();
  }
}

id static UIColor.rvcTintColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC890]);
  v4[4] = sub_1D19E38B0;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1D19E3848;
  v4[3] = &block_descriptor_3;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  return v2;
}

uint64_t Color.uiColor.getter()
{
  sub_1D19E39A8();

  return sub_1D1E684BC();
}

id static UIColor.rvcAccessibilityDark.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC890]);

  return [v0 initWithRed:1.0 green:0.607843137 blue:0.458823529 alpha:1.0];
}

id static UIColor.rvcDark.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC890]);

  return [v0 initWithRed:1.0 green:0.545098039 blue:0.368627451 alpha:1.0];
}

id static UIColor.rvcAccessibilityLight.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC890]);

  return [v0 initWithRed:0.615686275 green:0.0509803922 blue:0.0392156863 alpha:1.0];
}

id static UIColor.rvcLight.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC890]);

  return [v0 initWithRed:1.0 green:0.51372549 blue:0.341176471 alpha:1.0];
}

id sub_1D19E3848(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_1D19E38B0(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  v4 = objc_allocWithZone(MEMORY[0x1E69DC890]);
  if (v2 == 2)
  {
    if (v3 == 1)
    {
      v5 = 0.607843137;
      v6 = 0.458823529;
    }

    else
    {
      v5 = 0.545098039;
      v6 = 0.368627451;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v7 = 0.615686275;
      v5 = 0.0509803922;
      v6 = 0.0392156863;
      goto LABEL_9;
    }

    v5 = 0.51372549;
    v6 = 0.341176471;
  }

  v7 = 1.0;
LABEL_9:

  return [v4 initWithRed:v7 green:v5 blue:v6 alpha:1.0];
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D19E39A8()
{
  result = qword_1EC648738;
  if (!qword_1EC648738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC648738);
  }

  return result;
}

uint64_t MatterAttributeRequestPath.init(endpoint:cluster:attribute:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = result;
  *(a4 + 2) = BYTE2(result) & 1;
  *(a4 + 3) = v4;
  *(a4 + 4) = a3;
  *(a4 + 8) = BYTE4(a3) & 1;
  return result;
}

uint64_t ClusterPath.init(clusterPath:homeID:nodeID:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = [a1 cluster];
  v9 = [v8 unsignedIntValue];

  ClusterKind.init(rawValue:)(v9);
  if (v22 == 30)
  {
    v10 = sub_1D1E66A7C();
    (*(*(v10 - 8) + 8))(a2, v10);

    v11 = type metadata accessor for ClusterPath(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = v11;
    v14 = a4;
    v15 = 1;
  }

  else
  {
    v16 = [a1 endpoint];
    v17 = [v16 unsignedShortValue];

    v18 = type metadata accessor for EndpointPath(0);
    *(a4 + *(v18 + 20)) = a3;
    *(a4 + *(v18 + 24)) = v17;
    v19 = sub_1D1E66A7C();
    (*(*(v19 - 8) + 32))(a4, a2, v19);
    v20 = type metadata accessor for ClusterPath(0);
    *(a4 + *(v20 + 20)) = v22;
    v12 = *(*(v20 - 8) + 56);
    v13 = v20;
    v14 = a4;
    v15 = 0;
  }

  return v12(v14, v15, 1, v13);
}

BOOL static EndpointPath.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (v4 = type metadata accessor for EndpointPath(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t EndpointPath.init(home:nodeID:endpointID:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  result = type metadata accessor for EndpointPath(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t ClusterPath.init(endpointPath:clusterKind:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1D19E84DC(a1, a3, type metadata accessor for EndpointPath);
  result = type metadata accessor for ClusterPath(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t EndpointPath.clusterPath(with:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1D19E8598(v2, a2, type metadata accessor for EndpointPath);
  result = type metadata accessor for ClusterPath(0);
  *(a2 + *(result + 20)) = v4;
  return result;
}

uint64_t ClusterPath.homeID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D19E8598(v1, v5, type metadata accessor for EndpointPath);
  v6 = sub_1D1E66A7C();
  return (*(*(v6 - 8) + 32))(a1, v5, v6);
}

uint64_t EndpointPath.nodeID.setter(uint64_t a1)
{
  result = type metadata accessor for EndpointPath(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t EndpointPath.endpointID.setter(__int16 a1)
{
  result = type metadata accessor for EndpointPath(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t EndpointPath.description.getter()
{
  type metadata accessor for EndpointPath(0);
  v0 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v0);

  MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
  v1 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v1);

  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  return 3829371;
}

uint64_t EndpointPath.init(homeID:nodeID:endpointID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for EndpointPath(0);
  *(a4 + *(v8 + 20)) = a2;
  *(a4 + *(v8 + 24)) = a3;
  v9 = sub_1D1E66A7C();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4, a1, v9);
}

uint64_t EndpointPath.init(home:device:endpointID:)@<X0>(void *a1@<X0>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v9 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  ObjectType = swift_getObjectType();
  v11 = (*(a3 + 8))(ObjectType, a3);
  swift_unknownObjectRelease();

  result = type metadata accessor for EndpointPath(0);
  *(a5 + *(result + 20)) = v11;
  *(a5 + *(result + 24)) = a4;
  return result;
}

uint64_t sub_1D19E420C(uint64_t a1)
{
  v2 = sub_1D19E8374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19E4248(uint64_t a1)
{
  v2 = sub_1D19E8374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EndpointPath.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648740, &qword_1D1E8EBF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19E8374();
  sub_1D1E6930C();
  v8[15] = 0;
  sub_1D1E66A7C();
  sub_1D19E83C8(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v1)
  {
    type metadata accessor for EndpointPath(0);
    v8[14] = 1;
    sub_1D1E68F6C();
    v8[13] = 2;
    sub_1D1E68F4C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t EndpointPath.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v1 + *(v2 + 20)));
  return sub_1D1E6923C();
}

uint64_t EndpointPath.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v0 + *(v1 + 20)));
  sub_1D1E6923C();
  return sub_1D1E6926C();
}

uint64_t EndpointPath.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_1D1E66A7C();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648750, &qword_1D1E8EBF8);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19E8374();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v21;
  v27 = 0;
  sub_1D19E83C8(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v14 = v23;
  sub_1D1E68D7C();
  v15 = *(v13 + 32);
  v16 = v24;
  v24 = v4;
  v15(v12, v16, v4);
  v26 = 1;
  *(v12 + *(v9 + 20)) = sub_1D1E68DCC();
  v25 = 2;
  v17 = sub_1D1E68DAC();
  (*(v22 + 8))(v8, v14);
  *(v12 + *(v9 + 24)) = v17;
  sub_1D19E8598(v12, v20, type metadata accessor for EndpointPath);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D19E8600(v12, type metadata accessor for EndpointPath);
}

uint64_t sub_1D19E49C8(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v1 + *(a1 + 20)));
  sub_1D1E6923C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19E4A80(uint64_t a1, uint64_t a2)
{
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v2 + *(a2 + 20)));
  return sub_1D1E6923C();
}

uint64_t sub_1D19E4B24(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v2 + *(a2 + 20)));
  sub_1D1E6923C();
  return sub_1D1E6926C();
}

uint64_t ClusterPath.clusterKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ClusterPath(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ClusterPath.clusterKind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ClusterPath(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t ClusterPath.uuid.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 hmf_zeroUUID];
  sub_1D1E66A5C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434A8, &qword_1D1E8EC00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D1E6F900;
  v9 = type metadata accessor for EndpointPath(0);
  v19 = *(v1 + *(v9 + 20));
  *(v8 + 32) = sub_1D1E68FAC();
  *(v8 + 40) = v10;
  v18 = *(v1 + *(v9 + 24));
  *(v8 + 48) = sub_1D1E68FAC();
  *(v8 + 56) = v11;
  v17 = dword_1D1E8F66C[*(v1 + *(type metadata accessor for ClusterPath(0) + 20))];
  *(v8 + 64) = sub_1D1E68FAC();
  *(v8 + 72) = v12;
  v13 = sub_1D1E66A2C();
  v14 = sub_1D1E67BFC();

  v15 = [v6 hmf:v13 UUIDWithNamespace:0 data:v14 salts:?];

  sub_1D1E66A5C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ClusterPath.description.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](3829371, 0xE300000000000000);
  type metadata accessor for EndpointPath(0);
  v0 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v0);

  MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
  v1 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v1);

  MEMORY[0x1D3890F70](3826476, 0xE300000000000000);
  type metadata accessor for ClusterPath(0);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  return 0;
}

uint64_t ClusterPath.init(homeID:nodeID:endpointID:clusterKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = type metadata accessor for EndpointPath(0);
  *(a5 + *(v10 + 20)) = a2;
  *(a5 + *(v10 + 24)) = a3;
  v11 = sub_1D1E66A7C();
  (*(*(v11 - 8) + 32))(a5, a1, v11);
  result = type metadata accessor for ClusterPath(0);
  *(a5 + *(result + 20)) = v9;
  return result;
}

uint64_t ClusterPath.init(clusterPath:home:nodeID:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648758, &qword_1D1E8EC08);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  v14 = [a2 uniqueIdentifier];
  sub_1D1E66A5C();

  v15 = [a1 cluster];
  v16 = [v15 unsignedIntValue];

  ClusterKind.init(rawValue:)(v16);
  v17 = v28;
  if (v28 == 30)
  {

    (*(v8 + 8))(v10, v7);
    v18 = type metadata accessor for ClusterPath(0);
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  }

  else
  {
    v19 = [a1 endpoint];
    v20 = [v19 unsignedShortValue];

    v21 = type metadata accessor for EndpointPath(0);
    *&v13[*(v21 + 20)] = a3;
    *&v13[*(v21 + 24)] = v20;
    (*(v8 + 32))(v13, v10, v7);
    v18 = type metadata accessor for ClusterPath(0);
    v13[*(v18 + 20)] = v17;
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
  }

  type metadata accessor for ClusterPath(0);
  v22 = *(v18 - 8);
  if ((*(v22 + 48))(v13, 1, v18))
  {
    sub_1D19E8474(v13);
    v23 = 1;
    v24 = v27;
  }

  else
  {
    v25 = v13;
    v24 = v27;
    sub_1D19E84DC(v25, v27, type metadata accessor for ClusterPath);
    v23 = 0;
  }

  return (*(v22 + 56))(v24, v23, 1, v18);
}

uint64_t sub_1D19E54C0()
{
  if (*v0)
  {
    return 0x4B72657473756C63;
  }

  else
  {
    return 0x746E696F70646E65;
  }
}

uint64_t sub_1D19E550C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E696F70646E65 && a2 == 0xEC00000068746150;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4B72657473756C63 && a2 == 0xEB00000000646E69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D19E55F0(uint64_t a1)
{
  v2 = sub_1D19E8544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19E562C(uint64_t a1)
{
  v2 = sub_1D19E8544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClusterPath.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648760, &qword_1D1E8EC10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19E8544();
  sub_1D1E6930C();
  v10[15] = 0;
  type metadata accessor for EndpointPath(0);
  sub_1D19E83C8(&qword_1EC646B18, type metadata accessor for EndpointPath, &protocol conformance descriptor for EndpointPath);
  sub_1D1E68F1C();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for ClusterPath(0) + 20));
    v10[13] = 1;
    sub_1D19002B4();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ClusterPath.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v1 + *(v2 + 20)));
  sub_1D1E6923C();
  type metadata accessor for ClusterPath(0);
  return sub_1D1E6924C();
}

uint64_t ClusterPath.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v0 + *(v1 + 20)));
  sub_1D1E6923C();
  type metadata accessor for ClusterPath(0);
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t ClusterPath.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648770, &qword_1D1E8EC18);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19E8544();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v17;
  v22 = 0;
  sub_1D19E83C8(&qword_1EC646B80, type metadata accessor for EndpointPath, &protocol conformance descriptor for EndpointPath);
  v14 = v18;
  sub_1D1E68D7C();
  sub_1D19E84DC(v19, v12, type metadata accessor for EndpointPath);
  v20 = 1;
  sub_1D1900460();
  sub_1D1E68D7C();
  (*(v13 + 8))(v8, v14);
  *(v12 + *(v9 + 20)) = v21;
  sub_1D19E8598(v12, v16, type metadata accessor for ClusterPath);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D19E8600(v12, type metadata accessor for ClusterPath);
}

uint64_t sub_1D19E5D00(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v1 + *(v2 + 20)));
  sub_1D1E6923C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19E5DE0(uint64_t a1, uint64_t a2)
{
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v2 + *(v3 + 20)));
  sub_1D1E6923C();
  return sub_1D1E6924C();
}

uint64_t sub_1D19E5EA8(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v2 + *(v3 + 20)));
  sub_1D1E6923C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t AttributePath.description.getter()
{
  MEMORY[0x1D3890F70](3826555, 0xE300000000000000);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](3825964, 0xE300000000000000);
  type metadata accessor for MTRAttributeIDType(0);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D19E6154()
{
  if (*v0)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 0x4B72657473756C63;
  }
}

uint64_t sub_1D19E619C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4B72657473756C63 && a2 == 0xEB00000000646E69;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D19E6284(uint64_t a1)
{
  v2 = sub_1D19E8660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19E62C0(uint64_t a1)
{
  v2 = sub_1D19E8660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributePath.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648778, &qword_1D1E8EC20);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19E8660();
  sub_1D1E6930C();
  v15 = v8;
  v14 = 0;
  sub_1D19002B4();
  sub_1D1E68F1C();
  if (!v2)
  {
    v12 = v11;
    v13 = 1;
    type metadata accessor for MTRAttributeIDType(0);
    sub_1D19E83C8(&qword_1EC646CF0, type metadata accessor for MTRAttributeIDType, &protocol conformance descriptor for MTRAttributeIDType);
    sub_1D1E68F1C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t AttributePath.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E6924C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t AttributePath.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648788, &qword_1D1E8EC28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19E8660();
  sub_1D1E692FC();
  if (!v2)
  {
    v15 = 0;
    sub_1D1900460();
    sub_1D1E68D7C();
    v9 = v16;
    type metadata accessor for MTRAttributeIDType(0);
    v14 = 1;
    sub_1D19E83C8(&qword_1EC646D00, type metadata accessor for MTRAttributeIDType, &protocol conformance descriptor for MTRAttributeIDType);
    sub_1D1E68D7C();
    (*(v6 + 8))(v8, v5);
    v10 = v13;
    *a2 = v9;
    *(a2 + 4) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D19E67C4()
{
  sub_1D1E6920C();
  sub_1D1E6924C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19E6878(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6924C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t BasicClusterPath.description.getter()
{
  MEMORY[0x1D3890F70](3827067, 0xE300000000000000);
  v0 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v0);

  MEMORY[0x1D3890F70](3826476, 0xE300000000000000);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  return 0;
}

uint64_t BasicClusterPath.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19E6AE4()
{
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19E6B94(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t _s13HomeDataModel12EndpointPathV6homeID10Foundation4UUIDVvs_0(uint64_t a1)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MatterTilePath.nodeID.setter(uint64_t a1)
{
  result = type metadata accessor for MatterTilePath(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t MatterTilePath.endpointID.setter(int a1)
{
  result = type metadata accessor for MatterTilePath(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t MatterTilePath.init(homeID:nodeID:endpointID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MatterTilePath(0);
  v9 = a4 + *(v8 + 24);
  v10 = sub_1D1E66A7C();
  result = (*(*(v10 - 8) + 32))(a4, a1, v10);
  *(a4 + *(v8 + 20)) = a2;
  *v9 = a3;
  *(v9 + 2) = BYTE2(a3) & 1;
  return result;
}

uint64_t MatterTilePath.init(endpointPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D1E66A7C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = type metadata accessor for EndpointPath(0);
  v6 = *(a1 + *(v5 + 20));
  v7 = *(a1 + *(v5 + 24));
  sub_1D19E8600(a1, type metadata accessor for EndpointPath);
  result = type metadata accessor for MatterTilePath(0);
  v9 = a2 + *(result + 24);
  *(a2 + *(result + 20)) = v6;
  *v9 = v7;
  *(v9 + 2) = 0;
  return result;
}

uint64_t MatterTilePath.description.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1D1E6884C();

  v14 = 3829371;
  v15 = 0xE300000000000000;
  v5 = type metadata accessor for MatterTilePath(0);
  v13 = *(v0 + *(v5 + 20));
  v6 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v6);

  MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
  v7 = (v0 + *(v5 + 24));
  v8 = *v7;
  LOBYTE(v7) = *(v7 + 2);
  LOWORD(v13) = v8;
  BYTE2(v13) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648790, &qword_1D1E8EC30);
  v9 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v9);

  MEMORY[0x1D3890F70](0x3A646975752CLL, 0xE600000000000000);
  MatterTilePath.uuid.getter();
  sub_1D19E83C8(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v10 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v10);

  (*(v2 + 8))(v4, v1);
  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  return v14;
}

uint64_t MatterTilePath.uuid.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434A8, &qword_1D1E8EC00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D1E739C0;
  v6 = type metadata accessor for MatterTilePath(0);
  v24 = *(v0 + *(v6 + 20));
  *(v5 + 32) = sub_1D1E68FAC();
  *(v5 + 40) = v7;
  v8 = (v0 + *(v6 + 24));
  if ((v8[1] & 1) == 0)
  {
    v23 = *v8;
    v9 = sub_1D1E68FAC();
    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      v22 = v9;
      v19 = v10;
      v20 = sub_1D177CF00((v11 > 1), v12 + 1, 1, v5);
      v10 = v19;
      v5 = v20;
      v9 = v22;
    }

    *(v5 + 16) = v12 + 1;
    v13 = v5 + 16 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
  }

  v14 = objc_opt_self();
  v15 = sub_1D1E66A2C();
  v16 = sub_1D1E67BFC();

  v17 = [v14 hmf:v15 UUIDWithNamespace:0 data:v16 salts:?];

  sub_1D1E66A5C();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1D19E73F8(uint64_t a1)
{
  v2 = sub_1D19E875C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19E7434(uint64_t a1)
{
  v2 = sub_1D19E875C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MatterTilePath.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648798, &qword_1D1E8EC38);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19E875C();
  sub_1D1E6930C();
  v8[15] = 0;
  sub_1D1E66A7C();
  sub_1D19E83C8(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v1)
  {
    type metadata accessor for MatterTilePath(0);
    v8[14] = 1;
    sub_1D1E68F6C();
    v8[13] = 2;
    sub_1D1E68E9C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MatterTilePath.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for MatterTilePath(0);
  MEMORY[0x1D3892890](*(v1 + *(v2 + 20)));
  if (*(v1 + *(v2 + 24) + 2) == 1)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E6923C();
}

uint64_t MatterTilePath.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for MatterTilePath(0);
  MEMORY[0x1D3892890](*(v0 + *(v1 + 20)));
  if (*(v0 + *(v1 + 24) + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  return sub_1D1E6926C();
}

uint64_t MatterTilePath.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1D1E66A7C();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6487A8, &qword_1D1E8EC40);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for MatterTilePath(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19E875C();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v23;
  v29 = 0;
  sub_1D19E83C8(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v14 = v25;
  sub_1D1E68D7C();
  v15 = *(v13 + 32);
  v16 = v26;
  v26 = v4;
  v15(v12, v16, v4);
  v28 = 1;
  v17 = sub_1D1E68DCC();
  v21 = v9;
  *(v12 + *(v9 + 20)) = v17;
  v27 = 2;
  v18 = sub_1D1E68CFC();
  v19 = v12 + *(v21 + 24);
  (*(v24 + 8))(v8, v14);
  *v19 = v18;
  *(v19 + 2) = BYTE2(v18) & 1;
  sub_1D19E8598(v12, v22, type metadata accessor for MatterTilePath);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D19E8600(v12, type metadata accessor for MatterTilePath);
}

uint64_t sub_1D19E7BCC(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v1 + *(a1 + 20)));
  if (*(v1 + *(a1 + 24) + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D19E7CB4(uint64_t a1, uint64_t a2)
{
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v2 + *(a2 + 20)));
  if (*(v2 + *(a2 + 24) + 2) == 1)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E6923C();
}

uint64_t sub_1D19E7D88(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v2 + *(a2 + 20)));
  if (*(v2 + *(a2 + 24) + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  return sub_1D1E6926C();
}

uint64_t MatterAttributeRequestPath.endpoint.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t MatterAttributeRequestPath.attribute.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

uint64_t MatterAttributeRequestPath.init(clusterPath:attribute:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + *(type metadata accessor for EndpointPath(0) + 24));
  v7 = *(a1 + *(type metadata accessor for ClusterPath(0) + 20));
  result = sub_1D19E8600(a1, type metadata accessor for ClusterPath);
  *a3 = v6;
  *(a3 + 2) = 0;
  *(a3 + 3) = v7;
  *(a3 + 4) = a2;
  *(a3 + 8) = BYTE4(a2) & 1;
  return result;
}

uint64_t MatterAttributeRequestPath.isFullyGeneric.getter()
{
  if (v0[2] == 1 && v0[3] == 30)
  {
    return v0[8];
  }

  else
  {
    return 0;
  }
}

uint64_t MatterAttributeRequestPath.hash(into:)()
{
  v1 = v0[3];
  v2 = v0[8];
  if (v0[2] == 1)
  {
    sub_1D1E6922C();
    if (v1 != 30)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D1E6922C();
    if (!v2)
    {
      goto LABEL_4;
    }

    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  sub_1D1E6923C();
  if (v1 == 30)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D1E6922C();
  sub_1D1E6924C();
  if (!v2)
  {
LABEL_4:
    sub_1D1E6922C();
    return sub_1D1E6924C();
  }

  return sub_1D1E6922C();
}

uint64_t MatterAttributeRequestPath.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 8);
  sub_1D1E6920C();
  sub_1D1E6922C();
  if (v1 != 1)
  {
    sub_1D1E6923C();
  }

  if (v2 != 30)
  {
    sub_1D1E6922C();
    sub_1D1E6924C();
    if (!v3)
    {
      goto LABEL_5;
    }

LABEL_7:
    sub_1D1E6922C();
    return sub_1D1E6926C();
  }

  sub_1D1E6922C();
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_1D1E6922C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19E81FC(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = *(v1 + 8);
  sub_1D1E6920C();
  sub_1D1E6922C();
  if (v2 != 1)
  {
    sub_1D1E6923C();
  }

  if (v3 != 30)
  {
    sub_1D1E6922C();
    sub_1D1E6924C();
    if (!v4)
    {
      goto LABEL_5;
    }

LABEL_7:
    sub_1D1E6922C();
    return sub_1D1E6926C();
  }

  sub_1D1E6922C();
  if (v4)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_1D1E6922C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel11ClusterPathV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EndpointPath(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)) || *(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = type metadata accessor for ClusterPath(0);
  return dword_1D1E8F66C[*(a1 + *(v5 + 20))] == dword_1D1E8F66C[*(a2 + *(v5 + 20))];
}

unint64_t sub_1D19E8374()
{
  result = qword_1EC648748;
  if (!qword_1EC648748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648748);
  }

  return result;
}

uint64_t sub_1D19E83C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D19E8410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndpointPath(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D19E8474(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648758, &qword_1D1E8EC08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D19E84DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D19E8544()
{
  result = qword_1EC648768;
  if (!qword_1EC648768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648768);
  }

  return result;
}

uint64_t sub_1D19E8598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19E8600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D19E8660()
{
  result = qword_1EC648780;
  if (!qword_1EC648780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648780);
  }

  return result;
}

uint64_t _s13HomeDataModel14MatterTilePathV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MatterTilePath(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 2);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 2);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1D19E875C()
{
  result = qword_1EC6487A0;
  if (!qword_1EC6487A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6487A0);
  }

  return result;
}

BOOL _s13HomeDataModel26MatterAttributeRequestPathV2eeoiySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 3);
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  if (a1[1])
  {
    if (!*(a2 + 2))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (v2 == 30)
  {
    if (v4 != 30)
    {
      return 0;
    }
  }

  else if (v4 == 30 || dword_1D1E8F66C[v2] != dword_1D1E8F66C[v4])
  {
    return 0;
  }

  if ((a1[4] & 1) == 0)
  {
    if (*(a1 + 1) == *(a2 + 1))
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 1;
    }

    return (v6 & 1) == 0;
  }

  return (a2[4] & 1) != 0;
}

uint64_t sub_1D19E88DC(uint64_t a1)
{
  result = sub_1D19E83C8(&qword_1EC6487C0, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D19E8938()
{
  result = qword_1EC6487C8;
  if (!qword_1EC6487C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6487C8);
  }

  return result;
}

unint64_t sub_1D19E8990()
{
  result = qword_1EC6487D0;
  if (!qword_1EC6487D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6487D0);
  }

  return result;
}

unint64_t sub_1D19E89E4(uint64_t a1)
{
  result = sub_1D19E8A0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D19E8A0C()
{
  result = qword_1EC6487D8;
  if (!qword_1EC6487D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6487D8);
  }

  return result;
}

unint64_t sub_1D19E8AAC()
{
  result = qword_1EC6487E8;
  if (!qword_1EC6487E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6487E8);
  }

  return result;
}

uint64_t sub_1D19E8B28(uint64_t a1)
{
  result = sub_1D1E66A7C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D19E8BD4(uint64_t a1)
{
  result = type metadata accessor for EndpointPath(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributePath(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE3 && a1[8])
  {
    return (*a1 + 227);
  }

  v3 = *a1;
  v4 = v3 >= 0x1E;
  v5 = v3 - 30;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributePath(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE2)
  {
    *result = a2 - 227;
    if (a3 >= 0xE3)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE3)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 29;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_2(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BasicClusterPath(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE3)
  {
    if ((a2 + 33554205) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776989;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776989;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 0x1E;
  v6 = v4 - 30;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for BasicClusterPath(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554205) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xE2)
  {
    v3 = 0;
  }

  if (a2 > 0xE2)
  {
    *result = a2 - 227;
    *(result + 2) = (a2 - 227) >> 16;
    if (v3)
    {
      v4 = ((a2 - 227) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 29;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1D19E8F34(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D19E8FC0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D19E8FC0()
{
  if (!qword_1EE07D1D0)
  {
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07D1D0);
    }
  }
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MatterAttributeRequestPath(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE2 && *(a1 + 9))
  {
    return (*a1 + 226);
  }

  v3 = *(a1 + 3);
  if (v3 <= 0x1E)
  {
    v4 = 30;
  }

  else
  {
    v4 = *(a1 + 3);
  }

  v5 = v4 - 31;
  if (v3 < 0x1E)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MatterAttributeRequestPath(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE1)
  {
    *(result + 8) = 0;
    *result = a2 - 226;
    if (a3 >= 0xE2)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE2)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 3) = a2 + 30;
    }
  }

  return result;
}

unint64_t sub_1D19E9110()
{
  result = qword_1EC6487F0;
  if (!qword_1EC6487F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6487F0);
  }

  return result;
}

unint64_t sub_1D19E9168()
{
  result = qword_1EC6487F8;
  if (!qword_1EC6487F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6487F8);
  }

  return result;
}

unint64_t sub_1D19E91C0()
{
  result = qword_1EC648800;
  if (!qword_1EC648800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648800);
  }

  return result;
}

unint64_t sub_1D19E9218()
{
  result = qword_1EC648808;
  if (!qword_1EC648808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648808);
  }

  return result;
}

unint64_t sub_1D19E9270()
{
  result = qword_1EC648810;
  if (!qword_1EC648810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648810);
  }

  return result;
}

unint64_t sub_1D19E92C8()
{
  result = qword_1EC648818;
  if (!qword_1EC648818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648818);
  }

  return result;
}

unint64_t sub_1D19E9320()
{
  result = qword_1EC648820;
  if (!qword_1EC648820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648820);
  }

  return result;
}

unint64_t sub_1D19E9378()
{
  result = qword_1EC648828;
  if (!qword_1EC648828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648828);
  }

  return result;
}

unint64_t sub_1D19E93D0()
{
  result = qword_1EC648830;
  if (!qword_1EC648830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648830);
  }

  return result;
}

unint64_t sub_1D19E9428()
{
  result = qword_1EC648838;
  if (!qword_1EC648838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648838);
  }

  return result;
}

unint64_t sub_1D19E9480()
{
  result = qword_1EC648840;
  if (!qword_1EC648840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648840);
  }

  return result;
}

unint64_t sub_1D19E94D8()
{
  result = qword_1EC648848;
  if (!qword_1EC648848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648848);
  }

  return result;
}

uint64_t sub_1D19E952C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656D6F68 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444965646F6ELL && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xEA00000000004449)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

void StaticRVCClusterGroup.OperationalState.init(rawValue:for:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, __int16 *a3@<X8>)
{
  v4 = a1;
  if (a1 >= 4u)
  {
    v5 = a1;
    if (*a2 != 24 || (StaticRVCClusterGroup.OperationalState.RVC.init(rawValue:)(a1, &v23), v23 == 7))
    {
      if (v5 > 0x3Fu)
      {
        if ((v5 & 0x80) != 0)
        {
          if (v5 <= 0xBFu)
          {
            v4 = v5 | 0x200;
            goto LABEL_22;
          }

          if (qword_1EE07A0A8 != -1)
          {
            swift_once();
          }

          v19 = sub_1D1E6709C();
          __swift_project_value_buffer(v19, qword_1EE07A0B0);
          v7 = sub_1D1E6707C();
          v8 = sub_1D1E6833C();
          if (!os_log_type_enabled(v7, v8))
          {
            goto LABEL_21;
          }

          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v23 = v10;
          *v9 = 16908802;
          *(v9 + 4) = v5;
          *(v9 + 5) = 2082;
          v20 = sub_1D1E6789C();
          v22 = sub_1D1B1312C(v20, v21, &v23);

          *(v9 + 7) = v22;
          v14 = "Encountered a value out of range for Operational State: '%{public}hhu for cluster %{public}s";
        }

        else
        {
          if (qword_1EE07A0A8 != -1)
          {
            swift_once();
          }

          v15 = sub_1D1E6709C();
          __swift_project_value_buffer(v15, qword_1EE07A0B0);
          v7 = sub_1D1E6707C();
          v8 = sub_1D1E6833C();
          if (!os_log_type_enabled(v7, v8))
          {
            goto LABEL_21;
          }

          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v23 = v10;
          *v9 = 16908802;
          *(v9 + 4) = v5;
          *(v9 + 5) = 2082;
          v16 = sub_1D1E6789C();
          v18 = sub_1D1B1312C(v16, v17, &v23);

          *(v9 + 7) = v18;
          v14 = "Encountered an unknown value in the range for Cluster Operational States: '%{public}hhu for cluster %{public}s";
        }
      }

      else
      {
        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v6 = sub_1D1E6709C();
        __swift_project_value_buffer(v6, qword_1EE07A0B0);
        v7 = sub_1D1E6707C();
        v8 = sub_1D1E6833C();
        if (!os_log_type_enabled(v7, v8))
        {
          goto LABEL_21;
        }

        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v23 = v10;
        *v9 = 16908802;
        *(v9 + 4) = v5;
        *(v9 + 5) = 2080;
        v11 = sub_1D1E6789C();
        v13 = sub_1D1B1312C(v11, v12, &v23);

        *(v9 + 7) = v13;
        v14 = "Encountered an unknown value in the range for General Operational States: '%{public}hhu for cluster %s";
      }

      _os_log_impl(&dword_1D16EC000, v7, v8, v14, v9, 0xFu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
LABEL_21:

      v4 = -256;
      goto LABEL_22;
    }

    v4 = v23 | 0x100;
  }

LABEL_22:
  *a3 = v4;
}

uint64_t StaticRVCClusterGroup.OperationalState.rawValue.getter()
{
  if (v0[1] == 1)
  {
    return *v0 + 64;
  }

  else
  {
    return *v0;
  }
}

HomeDataModel::ModeClusterSemanticTag::Common_optional ModeClusterSemanticTag.init(rawValue:for:)@<W0>(Swift::UInt16 a1@<W0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  v5 = *a2;
  result.value = ModeClusterSemanticTag.Common.init(rawValue:)(a1).value;
  v7 = v12;
  v8 = a1 | 0x40;
  if ((a1 - 0x4000) >= 3u)
  {
    v8 = -16;
  }

  v9 = a1 | 0x80;
  if ((a1 & 0xFFFC) != 0x4000)
  {
    v9 = -16;
  }

  if (v5 != 25)
  {
    v8 = v9;
  }

  if (v5 - 27 >= 3)
  {
    v10 = v8;
  }

  else
  {
    v10 = -16;
  }

  if (v5 >= 0x19)
  {
    v11 = v10;
  }

  else
  {
    v11 = -16;
  }

  if (v12 == 10)
  {
    v7 = v11;
  }

  *a3 = v7;
  return result;
}

HomeDataModel::ModeClusterSemanticTag::Common_optional __swiftcall ModeClusterSemanticTag.Common.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 0xAu)
  {
    v2 = 10;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D19E9AFC()
{
  sub_1D1E6920C();
  sub_1D1E6923C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19E9B70(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6923C();
  return sub_1D1E6926C();
}

HomeDataModel::ModeClusterSemanticTag::RVCRun_optional __swiftcall ModeClusterSemanticTag.RVCRun.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = rawValue;
  if (rawValue - 0x4000 >= 3)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

HomeDataModel::ModeClusterSemanticTag::RVCClean_optional __swiftcall ModeClusterSemanticTag.RVCClean.init(rawValue:)(Swift::UInt16 rawValue)
{
  if ((rawValue & 0xFFFC) == 0x4000)
  {
    v2 = rawValue;
  }

  else
  {
    v2 = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D19E9D70()
{
  sub_1D1E6920C();
  sub_1D1E6923C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19E9DB8(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6923C();
  return sub_1D1E6926C();
}

uint64_t ModeClusterSemanticTag.rawValue.getter()
{
  v1 = *v0;
  if (v1 >> 6)
  {
    return v1 & 0x3F | 0x4000;
  }

  else
  {
    return *v0;
  }
}

uint64_t ModeClusterSemanticTag.hash(into:)(uint64_t a1)
{
  sub_1D1E6923C();

  return sub_1D1E678EC();
}

unint64_t ModeClusterSemanticTag.description.getter()
{
  v1 = *v0;
  if (v1 >> 6)
  {
    if (v1 >> 6 == 1)
    {
      v2 = v1 & 0x3F;
      if (v2)
      {
        if (v2 == 1)
        {
          return 0x632E6E7552637672;
        }

        else
        {
          return 0x6D2E6E7552637672;
        }
      }

      else
      {
        return 0x692E6E7552637672;
      }
    }

    else
    {
      v7 = 0x6E61656C43637672;
      v8 = v1 & 0x3F;
      v9 = 0x68546D7575636176;
      if (v8 == 2)
      {
        v9 = 0x6E61656C43637672;
      }

      if (!v8)
      {
        v7 = 0xD000000000000012;
      }

      if (v8 <= 1)
      {
        return v7;
      }

      else
      {
        return v9;
      }
    }
  }

  else if (*v0 > 4u)
  {
    v10 = 0x6D2E6E6F6D6D6F63;
    v11 = 0x6E2E6E6F6D6D6F63;
    if (v1 != 8)
    {
      v11 = 0x642E6E6F6D6D6F63;
    }

    if (v1 != 7)
    {
      v10 = v11;
    }

    v12 = 0x762E6E6F6D6D6F63;
    if (v1 != 5)
    {
      v12 = 0x6D2E6E6F6D6D6F63;
    }

    if (*v0 <= 6u)
    {
      return v12;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    v4 = 0x612E6E6F6D6D6F63;
    v5 = 0x712E6E6F6D6D6F63;
    v6 = 0x6C2E6E6F6D6D6F63;
    if (v1 != 3)
    {
      v6 = 0xD000000000000010;
    }

    if (v1 != 2)
    {
      v5 = v6;
    }

    if (*v0)
    {
      v4 = 0x712E6E6F6D6D6F63;
    }

    if (*v0 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }
}

uint64_t sub_1D19EA22C()
{
  v1 = 0x6E7552637672;
  if (*v0 != 1)
  {
    v1 = 0x6E61656C43637672;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6D6D6F63;
  }
}

uint64_t sub_1D19EA280@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D19ED638(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D19EA2A8(uint64_t a1)
{
  v2 = sub_1D19EC328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19EA2E4(uint64_t a1)
{
  v2 = sub_1D19EC328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19EA320(uint64_t a1)
{
  v2 = sub_1D19EC4CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19EA35C(uint64_t a1)
{
  v2 = sub_1D19EC4CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19EA398(uint64_t a1)
{
  v2 = sub_1D19EC37C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19EA3D4(uint64_t a1)
{
  v2 = sub_1D19EC37C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19EA410(uint64_t a1)
{
  v2 = sub_1D19EC424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19EA44C(uint64_t a1)
{
  v2 = sub_1D19EC424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModeClusterSemanticTag.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648850, &qword_1D1E8F6F0);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648858, &qword_1D1E8F6F8);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648860, &qword_1D1E8F700);
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648868, &qword_1D1E8F708);
  v12 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v14 = &v23 - v13;
  v15 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19EC328();
  sub_1D1E6930C();
  if (v15 >> 6)
  {
    v16 = v15 & 0x3F;
    if (v15 >> 6 == 1)
    {
      v33 = 1;
      sub_1D19EC424();
      v17 = v29;
      sub_1D1E68DFC();
      v32 = v16;
      sub_1D19EC478();
      v18 = v25;
      sub_1D1E68F1C();
      (*(v24 + 8))(v8, v18);
    }

    else
    {
      v35 = 2;
      sub_1D19EC37C();
      v21 = v26;
      v17 = v29;
      sub_1D1E68DFC();
      v34 = v16;
      sub_1D19EC3D0();
      v22 = v28;
      sub_1D1E68F1C();
      (*(v27 + 8))(v21, v22);
    }

    return (*(v12 + 8))(v14, v17);
  }

  else
  {
    v31 = 0;
    sub_1D19EC4CC();
    v19 = v29;
    sub_1D1E68DFC();
    v30 = v15;
    sub_1D19EC520();
    sub_1D1E68F1C();
    (*(v23 + 8))(v11, v9);
    return (*(v12 + 8))(v14, v19);
  }
}

uint64_t ModeClusterSemanticTag.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t ModeClusterSemanticTag.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6488A8, &qword_1D1E8F710);
  v33 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v35 = &v29 - v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6488B0, &qword_1D1E8F718);
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6488B8, &qword_1D1E8F720);
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6488C0, &unk_1D1E8F728);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v13 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D19EC328();
  v14 = v37;
  sub_1D1E692FC();
  if (!v14)
  {
    v37 = v10;
    v16 = v35;
    v15 = v36;
    v17 = sub_1D1E68DDC();
    v18 = (2 * *(v17 + 16)) | 1;
    v39 = v17;
    v40 = v17 + 32;
    v41 = 0;
    v42 = v18;
    v19 = sub_1D18085C8();
    if (v19 == 3 || v41 != v42 >> 1)
    {
      v21 = sub_1D1E688EC();
      swift_allocError();
      v22 = v12;
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v24 = &type metadata for ModeClusterSemanticTag;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v21 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v37 + 8))(v22, v9);
      swift_unknownObjectRelease();
    }

    else if (v19)
    {
      if (v19 == 1)
      {
        v43 = 1;
        sub_1D19EC424();
        sub_1D1E68C4C();
        sub_1D19EC5C8();
        v20 = v32;
        sub_1D1E68D7C();
        (*(v34 + 1))(v5, v20);
        (*(v37 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v28 = v43 | 0x40;
      }

      else
      {
        v43 = 2;
        sub_1D19EC37C();
        sub_1D1E68C4C();
        v34 = v12;
        sub_1D19EC574();
        v26 = v30;
        sub_1D1E68D7C();
        v27 = v37;
        (*(v33 + 8))(v16, v26);
        (*(v27 + 8))(v34, v9);
        swift_unknownObjectRelease();
        v28 = v43 | 0x80;
      }

      *v15 = v28;
    }

    else
    {
      v43 = 0;
      sub_1D19EC4CC();
      sub_1D1E68C4C();
      sub_1D19EC61C();
      sub_1D1E68D7C();
      (*(v31 + 8))(v8, v6);
      (*(v37 + 8))(v12, v9);
      swift_unknownObjectRelease();
      *v15 = v43;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_1D19EB024(uint64_t a1)
{
  sub_1D1E6923C();

  return sub_1D1E678EC();
}

uint64_t sub_1D19EB0D8(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.OperationalState.Common.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *a2 = v2;
  return result;
}

uint64_t StaticRVCClusterGroup.OperationalState.RVC.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = (result - 64);
  if (v2 >= 7)
  {
    LOBYTE(v2) = 7;
  }

  *a2 = v2;
  return result;
}

uint64_t StaticRVCClusterGroup.OperationalState.hash(into:)(uint64_t a1)
{
  sub_1D1E6922C();

  return sub_1D1E678EC();
}

uint64_t sub_1D19EB41C(uint64_t a1)
{
  v2 = sub_1D19EC670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19EB458(uint64_t a1)
{
  v2 = sub_1D19EC670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19EB494(uint64_t a1)
{
  v2 = sub_1D19EC7C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19EB4D0(uint64_t a1)
{
  v2 = sub_1D19EC7C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19EB50C(uint64_t a1)
{
  v2 = sub_1D19EC718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19EB548(uint64_t a1)
{
  v2 = sub_1D19EC718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19EB584(uint64_t a1)
{
  v2 = sub_1D19EC6C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19EB5C0(uint64_t a1)
{
  v2 = sub_1D19EC6C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticRVCClusterGroup.OperationalState.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6488E0, &qword_1D1E8F738);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6488E8, &qword_1D1E8F740);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6488F0, &qword_1D1E8F748);
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6488F8, &qword_1D1E8F750);
  v12 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v14 = &v22 - v13;
  v29 = *v2;
  v15 = v2[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19EC670();
  sub_1D1E6930C();
  if (v15)
  {
    if (v15 == 1)
    {
      v34 = 1;
      sub_1D19EC718();
      v16 = v30;
      sub_1D1E68DFC();
      v33 = v29;
      sub_1D19EC76C();
      v17 = v25;
      sub_1D1E68F1C();
      v18 = *(v24 + 8);
      v19 = v8;
    }

    else
    {
      v35 = 2;
      sub_1D19EC6C4();
      v20 = v26;
      v16 = v30;
      sub_1D1E68DFC();
      v17 = v28;
      sub_1D1E68F3C();
      v18 = *(v27 + 8);
      v19 = v20;
    }

    v18(v19, v17);
  }

  else
  {
    v32 = 0;
    sub_1D19EC7C0();
    v16 = v30;
    sub_1D1E68DFC();
    v31 = v29;
    sub_1D19EC814();
    sub_1D1E68F1C();
    (*(v23 + 8))(v11, v9);
  }

  return (*(v12 + 8))(v14, v16);
}

uint64_t StaticRVCClusterGroup.OperationalState.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.OperationalState.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648930, &qword_1D1E8F758);
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648938, &qword_1D1E8F760);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648940, &qword_1D1E8F768);
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648948, &qword_1D1E8F770);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v13;
  v15 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D19EC670();
  v16 = v48;
  sub_1D1E692FC();
  if (!v16)
  {
    v39 = v8;
    v40 = 0;
    v17 = v45;
    v18 = v46;
    v48 = v12;
    v19 = v47;
    v20 = v14;
    v21 = sub_1D1E68DDC();
    v22 = (2 * *(v21 + 16)) | 1;
    v50 = v21;
    v51 = v21 + 32;
    v52 = 0;
    v53 = v22;
    v23 = sub_1D18085C8();
    if (v23 == 3 || v52 != v53 >> 1)
    {
      v26 = sub_1D1E688EC();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v28 = &type metadata for StaticRVCClusterGroup.OperationalState;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v48 + 8))(v14, v11);
    }

    else
    {
      v54 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v55 = 1;
          sub_1D19EC718();
          v24 = v40;
          sub_1D1E68C4C();
          if (!v24)
          {
            sub_1D19EC868();
            v25 = v42;
            sub_1D1E68D7C();
            (*(v43 + 8))(v7, v25);
            (*(v48 + 8))(v14, v11);
            swift_unknownObjectRelease();
            v37 = v55;
LABEL_17:
            *v19 = v37;
            v19[1] = v54;
            return __swift_destroy_boxed_opaque_existential_1(v49);
          }

          (*(v48 + 8))(v14, v11);
          goto LABEL_10;
        }

        v55 = 2;
        sub_1D19EC6C4();
        v31 = v14;
        v34 = v40;
        sub_1D1E68C4C();
        if (!v34)
        {
          v35 = sub_1D1E68D9C();
          v36 = v48;
          v37 = v35;
          (*(v44 + 8))(v17, v18);
          (*(v36 + 8))(v14, v11);
          swift_unknownObjectRelease();
          goto LABEL_17;
        }
      }

      else
      {
        v55 = 0;
        sub_1D19EC7C0();
        v30 = v10;
        v31 = v20;
        v32 = v40;
        sub_1D1E68C4C();
        if (!v32)
        {
          sub_1D19EC8BC();
          v33 = v39;
          sub_1D1E68D7C();
          (*(v41 + 8))(v30, v33);
          (*(v48 + 8))(v20, v11);
          swift_unknownObjectRelease();
          v37 = v55;
          goto LABEL_17;
        }
      }

      (*(v48 + 8))(v31, v11);
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_1D19EC164(uint64_t a1)
{
  sub_1D1E6922C();

  return sub_1D1E678EC();
}

uint64_t sub_1D19EC1FC(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel22ModeClusterSemanticTagO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  v6 = v3 < 0x40 && v2 == v3;
  v7 = v3 & 0xC0;
  v8 = v3 ^ v2;
  v9 = (v8 & 0x3F) == 0;
  if (v7 != 64)
  {
    v9 = 0;
  }

  v10 = (v8 & 0x3F) == 0;
  if (v7 != 128)
  {
    v10 = 0;
  }

  if (v4 == 1)
  {
    v10 = v9;
  }

  if (v4)
  {
    return v10;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_1D19EC328()
{
  result = qword_1EC648870;
  if (!qword_1EC648870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648870);
  }

  return result;
}

unint64_t sub_1D19EC37C()
{
  result = qword_1EC648878;
  if (!qword_1EC648878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648878);
  }

  return result;
}

unint64_t sub_1D19EC3D0()
{
  result = qword_1EC648880;
  if (!qword_1EC648880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648880);
  }

  return result;
}

unint64_t sub_1D19EC424()
{
  result = qword_1EC648888;
  if (!qword_1EC648888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648888);
  }

  return result;
}

unint64_t sub_1D19EC478()
{
  result = qword_1EC648890;
  if (!qword_1EC648890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648890);
  }

  return result;
}

unint64_t sub_1D19EC4CC()
{
  result = qword_1EC648898;
  if (!qword_1EC648898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648898);
  }

  return result;
}

unint64_t sub_1D19EC520()
{
  result = qword_1EC6488A0;
  if (!qword_1EC6488A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6488A0);
  }

  return result;
}

unint64_t sub_1D19EC574()
{
  result = qword_1EC6488C8;
  if (!qword_1EC6488C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6488C8);
  }

  return result;
}

unint64_t sub_1D19EC5C8()
{
  result = qword_1EC6488D0;
  if (!qword_1EC6488D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6488D0);
  }

  return result;
}

unint64_t sub_1D19EC61C()
{
  result = qword_1EC6488D8;
  if (!qword_1EC6488D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6488D8);
  }

  return result;
}

unint64_t sub_1D19EC670()
{
  result = qword_1EC648900;
  if (!qword_1EC648900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648900);
  }

  return result;
}

unint64_t sub_1D19EC6C4()
{
  result = qword_1EC648908;
  if (!qword_1EC648908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648908);
  }

  return result;
}

unint64_t sub_1D19EC718()
{
  result = qword_1EC648910;
  if (!qword_1EC648910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648910);
  }

  return result;
}

unint64_t sub_1D19EC76C()
{
  result = qword_1EC648918;
  if (!qword_1EC648918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648918);
  }

  return result;
}

unint64_t sub_1D19EC7C0()
{
  result = qword_1EC648920;
  if (!qword_1EC648920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648920);
  }

  return result;
}

unint64_t sub_1D19EC814()
{
  result = qword_1EC648928;
  if (!qword_1EC648928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648928);
  }

  return result;
}

unint64_t sub_1D19EC868()
{
  result = qword_1EC648950;
  if (!qword_1EC648950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648950);
  }

  return result;
}

unint64_t sub_1D19EC8BC()
{
  result = qword_1EC648958;
  if (!qword_1EC648958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648958);
  }

  return result;
}

unint64_t sub_1D19EC914()
{
  result = qword_1EC648960;
  if (!qword_1EC648960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648960);
  }

  return result;
}

unint64_t sub_1D19EC96C()
{
  result = qword_1EC648968;
  if (!qword_1EC648968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648968);
  }

  return result;
}

unint64_t sub_1D19EC9C4()
{
  result = qword_1EC648970;
  if (!qword_1EC648970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648970);
  }

  return result;
}

unint64_t sub_1D19ECA20()
{
  result = qword_1EC648978;
  if (!qword_1EC648978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648978);
  }

  return result;
}

unint64_t sub_1D19ECA78()
{
  result = qword_1EC648980;
  if (!qword_1EC648980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648980);
  }

  return result;
}

unint64_t sub_1D19ECAD0()
{
  result = qword_1EC648988;
  if (!qword_1EC648988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648988);
  }

  return result;
}

unint64_t sub_1D19ECB28()
{
  result = qword_1EC648990;
  if (!qword_1EC648990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648990);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModeClusterSemanticTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE)
  {
    goto LABEL_17;
  }

  if (a2 + 242 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 242) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 242;
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

      return (*a1 | (v4 << 8)) - 242;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 242;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0xC | (*a1 >> 6)) ^ 0xF;
  if (v6 >= 0xD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ModeClusterSemanticTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 242 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 242) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE)
  {
    v4 = 0;
  }

  if (a2 > 0xD)
  {
    v5 = ((a2 - 14) >> 8) + 1;
    *result = a2 - 14;
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
    *result = 16 * (((-a2 >> 2) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D19ECDFC()
{
  result = qword_1EC648998;
  if (!qword_1EC648998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648998);
  }

  return result;
}

unint64_t sub_1D19ECE54()
{
  result = qword_1EC6489A0;
  if (!qword_1EC6489A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489A0);
  }

  return result;
}

unint64_t sub_1D19ECEAC()
{
  result = qword_1EC6489A8;
  if (!qword_1EC6489A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489A8);
  }

  return result;
}

unint64_t sub_1D19ECF04()
{
  result = qword_1EC6489B0;
  if (!qword_1EC6489B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489B0);
  }

  return result;
}

unint64_t sub_1D19ECF5C()
{
  result = qword_1EC6489B8;
  if (!qword_1EC6489B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489B8);
  }

  return result;
}

unint64_t sub_1D19ECFB4()
{
  result = qword_1EC6489C0;
  if (!qword_1EC6489C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489C0);
  }

  return result;
}

unint64_t sub_1D19ED00C()
{
  result = qword_1EC6489C8;
  if (!qword_1EC6489C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489C8);
  }

  return result;
}

unint64_t sub_1D19ED064()
{
  result = qword_1EC6489D0;
  if (!qword_1EC6489D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489D0);
  }

  return result;
}

unint64_t sub_1D19ED0BC()
{
  result = qword_1EC6489D8;
  if (!qword_1EC6489D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489D8);
  }

  return result;
}

unint64_t sub_1D19ED114()
{
  result = qword_1EC6489E0;
  if (!qword_1EC6489E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489E0);
  }

  return result;
}

unint64_t sub_1D19ED16C()
{
  result = qword_1EC6489E8;
  if (!qword_1EC6489E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489E8);
  }

  return result;
}

unint64_t sub_1D19ED1C4()
{
  result = qword_1EC6489F0;
  if (!qword_1EC6489F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489F0);
  }

  return result;
}

unint64_t sub_1D19ED21C()
{
  result = qword_1EC6489F8;
  if (!qword_1EC6489F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489F8);
  }

  return result;
}

unint64_t sub_1D19ED274()
{
  result = qword_1EC648A00;
  if (!qword_1EC648A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A00);
  }

  return result;
}

unint64_t sub_1D19ED2CC()
{
  result = qword_1EC648A08;
  if (!qword_1EC648A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A08);
  }

  return result;
}

unint64_t sub_1D19ED324()
{
  result = qword_1EC648A10;
  if (!qword_1EC648A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A10);
  }

  return result;
}

unint64_t sub_1D19ED37C()
{
  result = qword_1EC648A18;
  if (!qword_1EC648A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A18);
  }

  return result;
}

unint64_t sub_1D19ED3D4()
{
  result = qword_1EC648A20;
  if (!qword_1EC648A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A20);
  }

  return result;
}

unint64_t sub_1D19ED42C()
{
  result = qword_1EC648A28;
  if (!qword_1EC648A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A28);
  }

  return result;
}

unint64_t sub_1D19ED484()
{
  result = qword_1EC648A30;
  if (!qword_1EC648A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A30);
  }

  return result;
}

unint64_t sub_1D19ED4DC()
{
  result = qword_1EC648A38;
  if (!qword_1EC648A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A38);
  }

  return result;
}

unint64_t sub_1D19ED534()
{
  result = qword_1EC648A40;
  if (!qword_1EC648A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A40);
  }

  return result;
}

unint64_t sub_1D19ED58C()
{
  result = qword_1EC648A48;
  if (!qword_1EC648A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A48);
  }

  return result;
}

unint64_t sub_1D19ED5E4()
{
  result = qword_1EC648A50;
  if (!qword_1EC648A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A50);
  }

  return result;
}

uint64_t sub_1D19ED638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6D6D6F63 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E7552637672 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E61656C43637672 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

unint64_t sub_1D19ED748()
{
  result = qword_1EC648A58;
  if (!qword_1EC648A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A58);
  }

  return result;
}

unint64_t sub_1D19ED79C()
{
  result = qword_1EC648A60;
  if (!qword_1EC648A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A60);
  }

  return result;
}

unint64_t sub_1D19ED7F0()
{
  result = qword_1EC648A68;
  if (!qword_1EC648A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A68);
  }

  return result;
}

unint64_t sub_1D19ED844()
{
  result = qword_1EC648A70;
  if (!qword_1EC648A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A70);
  }

  return result;
}

unint64_t sub_1D19ED898()
{
  result = qword_1EC648A78;
  if (!qword_1EC648A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A78);
  }

  return result;
}

void sub_1D19ED910(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1D1E675FC();
  v8 = a1;
  sub_1D19F4834(v7, v9);
  swift_beginAccess();
  sub_1D1B0DAF8(v9, a5);
  swift_endAccess();
}

void sub_1D19EDB28(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19EDB70(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel21MockThermostatCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19EDBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = v4;
  v5[9] = a4;
  v5[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D19EDBC4, 0, 0);
}

uint64_t sub_1D19EDBC4()
{
  v1 = v0[9];
  sub_1D17419CC(v0[7], (v0 + 2));
  sub_1D19EDF88();
  swift_allocError();
  v3 = v2;
  v4 = swift_unknownObjectRetain();
  sub_1D19F67F8(v4, v1, v0 + 2, v3);
  swift_willThrow();
  v5 = v0[1];

  return v5();
}

uint64_t ThermostatPreset.copyApplying(coolingSetpoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  *a2 = a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  sub_1D1771B38(v6, v5);
}

id sub_1D19EDD80(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1D19EDEEC(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19EDF34(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel33MockOperationalCredentialsCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19EDF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = v4;
  v5[9] = a4;
  v5[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D19EDFE0, 0, 0);
}

unint64_t sub_1D19EDF88()
{
  result = qword_1EC648AE0;
  if (!qword_1EC648AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648AE0);
  }

  return result;
}

uint64_t sub_1D19EDFE4()
{
  v1 = OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_attributeStates;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!*(v2 + 16) || (v3 = sub_1D171D4E0(0), (v4 & 1) == 0))
  {
    memset(v18, 0, sizeof(v18));
    v19 = -1;
    goto LABEL_16;
  }

  sub_1D17417AC(*(v2 + 56) + 40 * v3, v18);
  if (v19 == 255)
  {
LABEL_16:
    sub_1D19F18F8(v18);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D17417AC(v18, v17);
  sub_1D19F18F8(v18);
  result = sub_1D17417AC(v17, v15);
  if (v16 != 5)
  {
    sub_1D17805D8(v17);
    sub_1D17805D8(v15);
    return MEMORY[0x1E69E7CC0];
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v8 = v15[0] + 32;
  v12 = v15[0] + 32;
  v9 = *(v15[0] + 16);
LABEL_6:
  v10 = v8 + 40 * v6;
  while (1)
  {
    if (v9 == v6)
    {

      sub_1D17805D8(v17);
      return v7;
    }

    if (v6 >= v9)
    {
      break;
    }

    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_22;
    }

    sub_1D19F41AC(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    sub_1D1741B10(0, &qword_1EC648B90, 0x1E696F6A0);
    result = swift_dynamicCast();
    ++v6;
    v10 += 40;
    if (result && v13[4])
    {
      MEMORY[0x1D3891220]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D1E67C5C();
      }

      result = sub_1D1E67CAC();
      v7 = v14;
      v6 = v11;
      v8 = v12;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1D19EE218(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[0] = a6;
  v20[1] = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648BA0, &qword_1D1E909C8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v20 - v14;
  (*(v13 + 16))(v20 - v14, a1, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, v15, v12);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  *(v18 + 40) = v20[0];
  *(v18 + 48) = a7;

  sub_1D1A05A3C(sub_1D19F3FD8, v17, sub_1D19F3FF4, v18);
}

void sub_1D19EE3E0(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v22[0] = a2;
  v23 = 2;
  sub_1D1B0DAF8(v22, 1);
  swift_beginAccess();
  v10 = *(a3 + 16);
  if (v10 >> 8 <= 0xFE)
  {
    swift_beginAccess();
    v11 = *(a4 + 16);
    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D1E73A90;
      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 64) = sub_1D1757D20();
      *(v12 + 32) = a5;
      *(v12 + 40) = a6;
      if ((v10 & 0xFF00) == 0x100)
      {
        v13 = v10 + 64;
      }

      else
      {
        v13 = v10;
      }

      v14 = MEMORY[0x1E69E7558];
      *(v12 + 96) = MEMORY[0x1E69E7508];
      *(v12 + 104) = v14;
      *(v12 + 72) = v13;

      v15 = v11;
      sub_1D1E66A8C();

      *&v22[0] = v13;
      v23 = 2;
      sub_1D19F4004(v22, v21);
      swift_beginAccess();
      sub_1D1B0DAF8(v21, 4);
      swift_endAccess();
      sub_1D19F18F8(v22);
      if ((*(v15 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID + 2) & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
      {
      }

      else
      {
        v17 = *(Strong + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_attributeWaitingState);
        v20 = MEMORY[0x1EEE9AC00](Strong);
        v18 = *(*v17 + *MEMORY[0x1E69E6B68] + 16);
        v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v17 + v19));
        sub_1D19F4074(v17 + v18);
        os_unfair_lock_unlock((v17 + v19));
      }
    }
  }
}

uint64_t sub_1D19EE818(void *a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    a2 = sub_1D1E67C1C();
  }

  v5[6] = a2;
  v10 = a1;
  v11 = a3;
  a5;
  v12 = swift_task_alloc();
  v5[7] = v12;
  *v12 = v5;
  v12[1] = sub_1D19EE938;

  return sub_1D19F1AE0(v10, a2);
}

uint64_t sub_1D19EE938(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 40);

  if (v3)
  {
    v11 = sub_1D1E6655C();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](v10, a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1D19EEB28(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19EEB4C, 0, 0);
}

uint64_t sub_1D19EEB4C()
{
  v19 = v0;
  sub_1D17419CC(*(v0 + 168), v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if (!swift_dynamicCast())
  {
    sub_1D17419CC(*(v0 + 168), v0 + 80);
    sub_1D19EDF88();
    swift_allocError();
    v7 = v6;
    v8 = swift_unknownObjectRetain();
    sub_1D19F67F8(v8, &off_1EEC1DE98, (v0 + 80), v7);
    swift_willThrow();
    goto LABEL_5;
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  if (v2)
  {
    v3 = *(v0 + 176);
    v17 = &type metadata for StaticRVCClusterGroup.Command;
    v18 = sub_1D18FA450();
    v15 = v1;
    v16 = v2;
    sub_1D19EDF88();
    swift_allocError();
    v5 = v4;
    sub_1D19637F0(v1, v2);
    sub_1D19F67F8(v3, &off_1EEC1DE98, &v15, v5);
    swift_willThrow();
    sub_1D19630E4(v1, v2);
LABEL_5:
    v9 = *(v0 + 8);

    return v9();
  }

  v11 = *(v0 + 176);
  v12 = [objc_allocWithZone(MEMORY[0x1E696F690]) init];
  *(v0 + 184) = v12;
  v13 = sub_1D1E685DC();
  [v12 setNewMode_];

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1D19EEE20;
  v14 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647520, &qword_1D1E85850);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D19F40C0;
  *(v0 + 104) = &block_descriptor_185;
  *(v0 + 112) = v14;
  [v11 changeToModeWithParams:v12 expectedValues:0 expectedValueInterval:0 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D19EEE20()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1D19EEFC4;
  }

  else
  {
    v2 = sub_1D19EEF30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D19EEF30()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[18];
  v2[3] = sub_1D1741B10(0, &qword_1EC647528, 0x1E696F698);

  *v2 = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1D19EEFC4(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void sub_1D19EF180(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19EF1C8(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19EF1F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return sub_1D19EEB28(a1, a2);
}

uint64_t sub_1D19EF2A0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648B88, &unk_1D1E90990);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(v6 + 16))(&v13 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  sub_1D1A05A6C(sub_1D19F3D24, v10, sub_1D19F3D40, v11);
}

uint64_t sub_1D19EF5CC(void *a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    a2 = sub_1D1E67C1C();
  }

  v5[6] = a2;
  v10 = a1;
  v11 = a3;
  a5;
  v12 = swift_task_alloc();
  v5[7] = v12;
  *v12 = v5;
  v12[1] = sub_1D19F40A0;

  return sub_1D19F2704(v10, a2);
}

uint64_t sub_1D19EF6EC(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19EF710, 0, 0);
}

uint64_t sub_1D19EF710()
{
  v19 = v0;
  sub_1D17419CC(*(v0 + 168), v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 152);
    if (v2 == 1)
    {
      v3 = *(v0 + 176);
      v4 = [objc_allocWithZone(MEMORY[0x1E696F660]) init];
      *(v0 + 184) = v4;
      v5 = sub_1D1E685DC();
      [v4 setNewMode_];

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_1D19EF9E8;
      v6 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647508, &qword_1D1E90960);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D19F40C0;
      *(v0 + 104) = &block_descriptor_159;
      *(v0 + 112) = v6;
      [v3 changeToModeWithParams:v4 expectedValues:0 expectedValueInterval:0 completion:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    v10 = *(v0 + 176);
    v17 = &type metadata for StaticRVCClusterGroup.Command;
    v18 = sub_1D18FA450();
    v15 = v1;
    v16 = v2;
    sub_1D19EDF88();
    swift_allocError();
    v12 = v11;
    sub_1D19637F0(v1, v2);
    sub_1D19F67F8(v10, &off_1EEC1DE18, &v15, v12);
    swift_willThrow();
    sub_1D19630E4(v1, v2);
  }

  else
  {
    sub_1D17419CC(*(v0 + 168), v0 + 80);
    sub_1D19EDF88();
    swift_allocError();
    v8 = v7;
    v9 = swift_unknownObjectRetain();
    sub_1D19F67F8(v9, &off_1EEC1DE18, (v0 + 80), v8);
    swift_willThrow();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D19EF9E8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1D19F40B4;
  }

  else
  {
    v2 = sub_1D19EFAF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D19EFAF8()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[18];
  v2[3] = sub_1D1741B10(0, &qword_1EC647510, 0x1E696F668);

  *v2 = v3;
  v4 = v0[1];

  return v4();
}

void sub_1D19EFC94(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19EFCDC(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel23MockRVCCleanModeCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19EFD0C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D19EF6EC(a1, a2);
}

void sub_1D19EFDB4(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_attributeStates;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16) || (v5 = sub_1D171D4E0(5), (v6 & 1) == 0))
  {
    *v13 = 0u;
    v14 = 0u;
    v15 = -1;
    goto LABEL_7;
  }

  sub_1D17417AC(*(v4 + 56) + 40 * v5, v13);
  if (v15 == 255)
  {
LABEL_7:
    sub_1D19F18F8(v13);
    goto LABEL_8;
  }

  sub_1D17417AC(v13, v12);
  sub_1D19F18F8(v13);
  sub_1D19F41AC(v16);
  sub_1D17805D8(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  sub_1D1741B10(0, &qword_1EC647368, 0x1E696F678);
  if (swift_dynamicCast())
  {
    v7 = v13[0];
    goto LABEL_9;
  }

LABEL_8:
  v7 = [objc_allocWithZone(MEMORY[0x1E696F678]) init];
LABEL_9:
  v8 = [v7 errorStateID];
  v9 = [v8 unsignedCharValue];

  StaticRVCClusterGroup.OperationalErrorState.init(rawValue:)(v9, v13);
  v10 = v13[0];
  v11 = HIBYTE(LOWORD(v13[0]));
  if (v11 > 0xFE)
  {
    __break(1u);
  }

  else
  {

    *a1 = v10;
    a1[1] = v11;
  }
}

uint64_t sub_1D19EFF44()
{
  sub_1D19EFDB4(v4);
  v0 = v4[1] | v4[0];
  v1 = v0 == 0;
  if (v0)
  {
    sub_1D19EFDB4(v3);
    LOBYTE(v0) = v3[0];
    if (v3[1] == 1)
    {
      LOBYTE(v0) = v3[0] + 64;
    }
  }

  return v0 | (v1 << 8);
}

uint64_t sub_1D19EFFB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648B80, &qword_1D1E90908);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  (*(v11 + 16))(&v18 - v12, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  (*(v11 + 32))(v15 + v14, v13, v10);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  sub_1D1A05F28(a6, v15, v19, v16);
}

uint64_t sub_1D19F02BC(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v8 = sub_1D1E67C1C();
  }

  else
  {
    v8 = 0;
  }

  v4[5] = v8;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1D19F40CC;

  return sub_1D19F2BA8(v8);
}

uint64_t sub_1D19F055C(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v8 = sub_1D1E67C1C();
  }

  else
  {
    v8 = 0;
  }

  v4[5] = v8;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1D19F40CC;

  return sub_1D19F3000(v8);
}

uint64_t sub_1D19F066C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648B80, &qword_1D1E90908);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_1D1A05F28(sub_1D19F3850, v7, sub_1D19F0838, 0);
}

uint64_t sub_1D19F07CC(uint64_t a1, uint64_t a2, Class *a3, uint64_t *a4, uint64_t *a5)
{
  [objc_allocWithZone(*a3) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  return sub_1D1E67D6C();
}

unint64_t sub_1D19F0838()
{
  v1[0] = 64;
  v2 = 2;
  return sub_1D1B0DAF8(v1, 4);
}

uint64_t sub_1D19F0A0C(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v8 = sub_1D1E67C1C();
  }

  else
  {
    v8 = 0;
  }

  v4[5] = v8;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1D19F0B1C;

  return sub_1D19F333C(v8);
}

uint64_t sub_1D19F0B1C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);

  if (v3)
  {
    v10 = sub_1D1E6655C();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1D19F0CEC(uint64_t a1, uint64_t a2)
{
  v3[37] = a2;
  v3[38] = v2;
  v3[36] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19F0D10, 0, 0);
}

uint64_t sub_1D19F0D10()
{
  v23 = v0;
  v1 = v0 + 272;
  sub_1D17419CC(*(v0 + 296), v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 272);
    v3 = *(v0 + 280);
    if (v3 == 4)
    {
      switch(v2)
      {
        case 0:
          v4 = v0 + 80;
          v17 = *(v0 + 304);
          *(v0 + 80) = v0;
          *(v0 + 120) = v1;
          *(v0 + 88) = sub_1D19F12B0;
          v18 = swift_continuation_init();
          *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647530, &qword_1D1E85858);
          *(v0 + 208) = MEMORY[0x1E69E9820];
          *(v0 + 216) = 1107296256;
          *(v0 + 224) = sub_1D19F40C0;
          *(v0 + 232) = &block_descriptor_95;
          *(v0 + 240) = v18;
          [v17 pauseWithExpectedValues:0 expectedValueInterval:0 completion:v0 + 208];
          goto LABEL_14;
        case 1:
          v4 = v0 + 16;
          v15 = *(v0 + 304);
          *(v0 + 16) = v0;
          *(v0 + 56) = v1;
          *(v0 + 24) = sub_1D19F13C0;
          v16 = swift_continuation_init();
          *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647530, &qword_1D1E85858);
          *(v0 + 208) = MEMORY[0x1E69E9820];
          *(v0 + 216) = 1107296256;
          *(v0 + 224) = sub_1D19F40C0;
          *(v0 + 232) = &block_descriptor_30;
          *(v0 + 240) = v16;
          [v15 resumeWithExpectedValues:0 expectedValueInterval:0 completion:v0 + 208];
          goto LABEL_14;
        case 2:
          v4 = v0 + 144;
          v5 = *(v0 + 304);
          *(v0 + 144) = v0;
          *(v0 + 184) = v1;
          *(v0 + 152) = sub_1D19F111C;
          v6 = swift_continuation_init();
          *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647530, &qword_1D1E85858);
          *(v0 + 208) = MEMORY[0x1E69E9820];
          *(v0 + 216) = 1107296256;
          *(v0 + 224) = sub_1D19F40C0;
          *(v0 + 232) = &block_descriptor_98;
          *(v0 + 240) = v6;
          [v5 goHomeWithExpectedValues:0 expectedValueInterval:0 completion:v0 + 208];
LABEL_14:

          return MEMORY[0x1EEE6DEC8](v4);
      }
    }

    v10 = *(v0 + 304);
    v21 = &type metadata for StaticRVCClusterGroup.Command;
    v22 = sub_1D18FA450();
    v19 = v2;
    v20 = v3;
    sub_1D19EDF88();
    swift_allocError();
    v12 = v11;
    sub_1D19637F0(v2, v3);
    sub_1D19F67F8(v10, &off_1EEC1DD98, &v19, v12);
    swift_willThrow();
    sub_1D19630E4(v2, v3);
  }

  else
  {
    sub_1D17419CC(*(v0 + 296), v0 + 208);
    sub_1D19EDF88();
    swift_allocError();
    v8 = v7;
    v9 = swift_unknownObjectRetain();
    sub_1D19F67F8(v9, &off_1EEC1DD98, (v0 + 208), v8);
    swift_willThrow();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D19F111C()
{
  v1 = *(*v0 + 176);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_1D19F14D0;
  }

  else
  {
    v2 = sub_1D19F122C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D19F122C()
{
  v1 = v0[36];
  v2 = v0[34];
  v1[3] = sub_1D1741B10(0, &qword_1EC647538, 0x1E696F680);
  *v1 = v2;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D19F12B0()
{
  v1 = *(*v0 + 112);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_1D19F153C;
  }

  else
  {
    v2 = sub_1D19F40C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D19F13C0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_1D19F15A8;
  }

  else
  {
    v2 = sub_1D19F40C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D19F14D0(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1D19F153C(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1D19F15A8(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

id sub_1D19F165C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1D19F16C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void, void))
{

  a5(*(a1 + *a4), *(a1 + *a4 + 8));

  JUMPOUT(0x1D3893750);
}

void sub_1D19F17C0(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19F1808(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19F1838(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D19F0CEC(a1, a2);
}

uint64_t sub_1D19F18F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648B70, &qword_1D1E90DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D19F1960()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D19F0A0C(v2, v3, v5, v4);
}

uint64_t sub_1D19F1A20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D17C4CF0;

  return sub_1D1A07F54(v2, v3, v4);
}

uint64_t sub_1D19F1AE0(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19F1B04, 0, 0);
}

uint64_t sub_1D19F1B04()
{
  v1 = v0;
  v2 = *(v0 + 88);
  v3 = [*(v1 + 72) getNewMode];
  v4 = [v3 unsignedCharValue];

  v100 = (v2 + OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_lastKnownEndpointID);
  if (*(v2 + OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_lastKnownEndpointID + 2))
  {
    v5 = 0xE700000000000000;
    v6 = 0x6E776F6E6B6E75;
  }

  else
  {
    *(v1 + 144) = *(v2 + OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_lastKnownEndpointID);
    sub_1D19F3EEC();
    v6 = sub_1D1E6865C();
    v5 = v7;
  }

  *(v1 + 96) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v8 = swift_allocObject();
  v95 = xmmword_1D1E73A90;
  *(v8 + 16) = xmmword_1D1E73A90;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v96 = sub_1D1757D20();
  *(v8 + 64) = v96;
  v9 = MEMORY[0x1E69E7508];
  v98 = v6;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  v10 = MEMORY[0x1E69E7558];
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 72) = v4;

  sub_1D1E66A8C();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (*(v100 + 2))
    {
      v13 = 0;
    }

    else
    {
      v13 = *v100;
    }

    v14 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v15 = *&v12[v14];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v12[v14] = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1D177EEB4(0, *(v15 + 2) + 1, 1, v15);
      *&v12[v14] = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_1D177EEB4((v17 > 1), v18 + 1, 1, v15);
    }

    *(v15 + 2) = v18 + 1;
    v19 = &v15[8 * v18];
    *(v19 + 16) = v13;
    v19[34] = 25;
    *(v19 + 9) = 0;
    *&v12[v14] = v15;
    swift_endAccess();
  }

  v20 = *(v1 + 88) + OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_commandObserver;
  v21 = *v20;
  if (*v20)
  {
    v22 = *(v1 + 80);
    v23 = *(v20 + 8);

    v21(0, v22, v4);
    sub_1D17169C0(v21, v23);
  }

  v97 = v5;
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    sub_1D19F6AB0(*(v1 + 80));
  }

  (*(*(v1 + 88) + OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_changeToModeBlock))(v4);
  v26 = sub_1D19EDFE4();
  v27 = v26;
  v99 = v4;
  if (v26 >> 62)
  {
LABEL_43:
    v28 = sub_1D1E6873C();
    if (v28)
    {
      goto LABEL_19;
    }

LABEL_44:

    v60 = swift_allocObject();
    v36 = 0;
    *(v60 + 16) = -256;
    v41 = v99;
    v40 = v98;
    goto LABEL_45;
  }

  v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
    goto LABEL_44;
  }

LABEL_19:
  v29 = 0;
  while (1)
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1D3891EF0](v29, v27);
    }

    else
    {
      if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v30 = *(v27 + 8 * v29 + 32);
    }

    v31 = v30;
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v33 = *(v1 + 72);
    sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
    v34 = [v31 mode];
    v35 = [v33 getNewMode];
    LOBYTE(v33) = sub_1D1E684FC();

    if (v33)
    {
      break;
    }

    ++v29;
    if (v32 == v28)
    {
      goto LABEL_44;
    }
  }

  v101 = swift_allocObject();
  *(v101 + 16) = -256;
  v36 = v31;
  v37 = [v36 modeTags];
  v38 = sub_1D1E67C1C();

  v39 = sub_1D1A0569C(v38);

  v40 = v98;
  if (!v39)
  {

    v41 = v99;
    v60 = v101;
    goto LABEL_45;
  }

  v102 = v36;
  v41 = v99;
  if (v39 >> 62)
  {
    v42 = sub_1D1E6873C();
    if (v42)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
LABEL_31:
      v103 = MEMORY[0x1E69E7CC0];
      v43 = sub_1D178D930(0, v42 & ~(v42 >> 63), 0);
      if (v42 < 0)
      {
        __break(1u);
        return MEMORY[0x1EEE6DDE0](v43, v44, v45, v46, v47, v48, v49, v50);
      }

      v51 = 0;
      v52 = v103;
      do
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v53 = MEMORY[0x1D3891EF0](v51, v39);
        }

        else
        {
          v53 = *(v39 + 8 * v51 + 32);
        }

        v54 = v53;
        v55 = [v53 value];
        v56 = [v55 unsignedShortValue];

        v58 = *(v103 + 16);
        v57 = *(v103 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_1D178D930((v57 > 1), v58 + 1, 1);
        }

        ++v51;
        *(v103 + 16) = v58 + 1;
        v59 = v103 + 4 * v58;
        *(v59 + 32) = v56;
        *(v59 + 34) = 0;
      }

      while (v42 != v51);

      v41 = v99;
      v40 = v98;
      goto LABEL_74;
    }
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_74:
  v88 = *(v52 + 16);
  v89 = (v52 + 34);
  v90 = v88 + 1;
  v60 = v101;
  v36 = v102;
  do
  {
    if (!--v90)
    {
LABEL_82:

      *(v101 + 16) = 0;
      goto LABEL_45;
    }

    v91 = v89;
    v89 += 4;
  }

  while ((*v91 & 1) != 0 || *(v91 - 1) != 16385);
  v92 = (v52 + 34);
  v93 = v88 + 1;
  while (--v93)
  {
    v94 = v92;
    v92 += 4;
    if ((*v94 & 1) == 0 && *(v94 - 1) == 0x4000)
    {
      goto LABEL_82;
    }
  }

  *(v101 + 16) = 1;
LABEL_45:
  *(v1 + 104) = v36;
  *(v1 + 112) = v60;
  v61 = swift_allocObject();
  *(v1 + 120) = v61;
  *(v61 + 16) = 0;
  if (v100[1])
  {
    v62 = 0;
    goto LABEL_58;
  }

  v63 = *v100;
  v62 = swift_unknownObjectWeakLoadStrong();
  if (v62)
  {
    v64 = v62;
    v65 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
    swift_beginAccess();
    v66 = *&v64[v65];
    if (!*(v66 + 16) || (v67 = sub_1D171D15C(v63), (v68 & 1) == 0))
    {
      swift_endAccess();

      v62 = 0;
      goto LABEL_58;
    }

    v69 = *(*(v66 + 56) + 16 * v67);
    swift_endAccess();

    if (*(v69 + 16) && (sub_1D171D278(24), (v70 & 1) != 0))
    {
      swift_unknownObjectRetain();

      type metadata accessor for MockRVCOperationalStateCluster();
      v62 = swift_dynamicCastClass();
      if (v62)
      {
LABEL_57:
        *(v61 + 16) = v62;
        goto LABEL_58;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v62 = 0;
    goto LABEL_57;
  }

LABEL_58:
  v71 = *(v60 + 16);
  v72 = v71 >> 8 > 0xFE || v62 == 0;
  if (v72 || v71 > 0xFF || *(v60 + 16) != 1 || (v76 = v62, v77 = sub_1D19EFF44(), v76, (v77 & 0x100) != 0))
  {
    v73 = *(v1 + 88);
    v74 = swift_task_alloc();
    *(v1 + 128) = v74;
    *(v74 + 16) = v73;
    *(v74 + 24) = v41;
    *(v74 + 32) = v60;
    *(v74 + 40) = v61;
    *(v74 + 48) = v40;
    *(v74 + 56) = v97;
    v75 = swift_task_alloc();
    *(v1 + 136) = v75;
    v50 = sub_1D1741B10(0, &qword_1EC647528, 0x1E696F698);
    *v75 = v1;
    v75[1] = sub_1D19F2554;
    v48 = sub_1D19F3F40;
    v43 = (v1 + 64);
    v46 = 0xD000000000000038;
    v47 = 0x80000001D1EC2630;
    v44 = 0;
    v45 = 0;
    v49 = v74;

    return MEMORY[0x1EEE6DDE0](v43, v44, v45, v46, v47, v48, v49, v50);
  }

  v78 = v1;
  v79 = swift_allocObject();
  *(v79 + 16) = v95;
  v80 = MEMORY[0x1E69E6158];
  *(v79 + 56) = MEMORY[0x1E69E6158];
  *(v79 + 64) = v96;
  *(v79 + 32) = v40;
  *(v79 + 40) = v97;
  *(v1 + 146) = v77;
  type metadata accessor for MTROperationalStateErrorState(0);
  v81 = sub_1D1E6789C();
  *(v79 + 96) = v80;
  *(v79 + 104) = v96;
  *(v79 + 72) = v81;
  *(v79 + 80) = v82;
  sub_1D1E66A8C();

  v83 = [objc_allocWithZone(MEMORY[0x1E696F698]) init];
  v84 = sub_1D1E691BC();
  [v83 setStatus_];

  v85 = sub_1D1E677EC();
  [v83 setStatusText_];

  v86 = *(v78 + 8);

  return v86(v83);
}

uint64_t sub_1D19F2554()
{

  return MEMORY[0x1EEE6DFA0](sub_1D19F2688, 0, 0);
}

uint64_t sub_1D19F2688()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D19F2704(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19F2728, 0, 0);
}

uint64_t sub_1D19F2728()
{
  v1 = *(v0 + 64);
  v2 = [*(v0 + 48) getNewMode];
  v3 = [v2 unsignedCharValue];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D1E73A90;
  v5 = (v1 + OBJC_IVAR____TtC13HomeDataModel23MockRVCCleanModeCluster_lastKnownEndpointID);
  v6 = *(v1 + OBJC_IVAR____TtC13HomeDataModel23MockRVCCleanModeCluster_lastKnownEndpointID);
  v7 = *(v1 + OBJC_IVAR____TtC13HomeDataModel23MockRVCCleanModeCluster_lastKnownEndpointID + 2);
  v8 = MEMORY[0x1E69E7660];
  *(v4 + 56) = MEMORY[0x1E69E75F8];
  *(v4 + 64) = v8;
  if (v7)
  {
    v6 = 1;
  }

  *(v4 + 32) = v6;
  v9 = MEMORY[0x1E69E7558];
  *(v4 + 96) = MEMORY[0x1E69E7508];
  *(v4 + 104) = v9;
  *(v4 + 72) = v3;
  sub_1D1E66A8C();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (*(v5 + 2))
    {
      v12 = 0;
    }

    else
    {
      v12 = *v5;
    }

    v13 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v14 = *&v11[v13];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v11[v13] = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1D177EEB4(0, *(v14 + 2) + 1, 1, v14);
      *&v11[v13] = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v17 >= v16 >> 1)
    {
      v14 = sub_1D177EEB4((v16 > 1), v17 + 1, 1, v14);
    }

    *(v14 + 2) = v17 + 1;
    v18 = &v14[8 * v17];
    *(v18 + 16) = v12;
    v18[34] = 26;
    *(v18 + 9) = 0;
    *&v11[v13] = v14;
    swift_endAccess();
  }

  v19 = *(v0 + 64) + OBJC_IVAR____TtC13HomeDataModel23MockRVCCleanModeCluster_commandObserver;
  v20 = *v19;
  if (*v19)
  {
    v21 = *(v0 + 56);
    v22 = *(v19 + 8);

    v20(0, v21, v3);
    sub_1D17169C0(v20, v22);
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    sub_1D19F6AB0(*(v0 + 56));
  }

  v25 = *(v0 + 64);
  v26 = swift_task_alloc();
  *(v0 + 72) = v26;
  *(v26 + 16) = v25;
  *(v26 + 24) = v3;
  v27 = swift_task_alloc();
  *(v0 + 80) = v27;
  v28 = sub_1D1741B10(0, &qword_1EC647510, 0x1E696F668);
  *v27 = v0;
  v27[1] = sub_1D19F2A74;

  return MEMORY[0x1EEE6DDE0](v0 + 40, 0, 0, 0xD000000000000038, 0x80000001D1EC2630, sub_1D19F3D18, v26, v28);
}

uint64_t sub_1D19F2A74()
{

  return MEMORY[0x1EEE6DFA0](sub_1D19F2B8C, 0, 0);
}

uint64_t sub_1D19F2BA8(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D19F2BC8, 0, 0);
}

uint64_t sub_1D19F2BC8()
{
  v1 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D1E739C0;
  v3 = (v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID);
  v4 = *(v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID);
  v5 = *(v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID + 2);
  v6 = MEMORY[0x1E69E7660];
  *(v2 + 56) = MEMORY[0x1E69E75F8];
  *(v2 + 64) = v6;
  if (v5)
  {
    v4 = 1;
  }

  *(v2 + 32) = v4;
  sub_1D1E66A8C();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(v3 + 2))
    {
      v9 = 0;
    }

    else
    {
      v9 = *v3;
    }

    v10 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v11 = *&v8[v10];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v8[v10] = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1D177EEB4(0, *(v11 + 2) + 1, 1, v11);
      *&v8[v10] = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1D177EEB4((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[8 * v14];
    *(v15 + 16) = v9;
    v15[34] = 24;
    *(v15 + 9) = 3;
    *&v8[v10] = v11;
    swift_endAccess();
  }

  v16 = v0[11] + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_commandObserver;
  v17 = *v16;
  if (*v16)
  {
    v18 = v0[10];
    v19 = *(v16 + 8);
    v0[5] = MEMORY[0x1E69E7508];
    *(v0 + 16) = 1;

    v17(3, v18, v0 + 2);
    sub_1D17169C0(v17, v19);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    sub_1D19F6AB0(v0[10]);
  }

  v22 = v0[11];
  v23 = swift_task_alloc();
  v0[12] = v23;
  *(v23 + 16) = v22;
  *(v23 + 24) = 1;
  v24 = swift_task_alloc();
  v0[13] = v24;
  v25 = sub_1D1741B10(0, &qword_1EC647538, 0x1E696F680);
  *v24 = v0;
  v24[1] = sub_1D19F2EE8;

  return MEMORY[0x1EEE6DDE0](v0 + 9, 0, 0, 0xD000000000000031, 0x80000001D1EC2590, sub_1D19F3BF8, v23, v25);
}

uint64_t sub_1D19F2EE8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D19F40C8, 0, 0);
}

uint64_t sub_1D19F3000(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D19F3020, 0, 0);
}

uint64_t sub_1D19F3020()
{
  v1 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D1E739C0;
  v3 = (v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID);
  v4 = *(v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID);
  v5 = *(v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID + 2);
  v6 = MEMORY[0x1E69E7660];
  *(v2 + 56) = MEMORY[0x1E69E75F8];
  *(v2 + 64) = v6;
  if (v5)
  {
    v4 = 1;
  }

  *(v2 + 32) = v4;
  sub_1D1E66A8C();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(v3 + 2))
    {
      v9 = 0;
    }

    else
    {
      v9 = *v3;
    }

    v10 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
    swift_beginAccess();
    v11 = *&v8[v10];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v8[v10] = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1D177EEB4(0, *(v11 + 2) + 1, 1, v11);
      *&v8[v10] = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1D177EEB4((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[8 * v14];
    *(v15 + 16) = v9;
    v15[34] = 24;
    *(v15 + 9) = 0;
    *&v8[v10] = v11;
    swift_endAccess();
  }

  v16 = v0[11] + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_commandObserver;
  v17 = *v16;
  if (*v16)
  {
    v18 = v0[10];
    v19 = *(v16 + 8);
    v0[5] = MEMORY[0x1E69E7508];
    *(v0 + 16) = 2;

    v17(0, v18, v0 + 2);
    sub_1D17169C0(v17, v19);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    sub_1D19F6AB0(v0[10]);
  }

  v22 = v0[11];
  v23 = swift_task_alloc();
  v0[12] = v23;
  *(v23 + 16) = v22;
  *(v23 + 24) = 2;
  v24 = swift_task_alloc();
  v0[13] = v24;
  v25 = sub_1D1741B10(0, &qword_1EC647538, 0x1E696F680);
  *v24 = v0;
  v24[1] = sub_1D19F2EE8;

  return MEMORY[0x1EEE6DDE0](v0 + 9, 0, 0, 0xD000000000000030, 0x80000001D1EC2530, sub_1D19F39F8, v23, v25);
}

uint64_t sub_1D19F333C(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D19F335C, 0, 0);
}

uint64_t sub_1D19F335C()
{
  v1 = v0[11];
  if (*(v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_supportsGoHomeCommand) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D1E739C0;
    v3 = (v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID);
    v4 = *(v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID);
    v5 = *(v1 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID + 2);
    v6 = MEMORY[0x1E69E7660];
    *(v2 + 56) = MEMORY[0x1E69E75F8];
    *(v2 + 64) = v6;
    if (v5)
    {
      v4 = 1;
    }

    *(v2 + 32) = v4;
    sub_1D1E66A8C();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      if (*(v3 + 2))
      {
        v9 = 0;
      }

      else
      {
        v9 = *v3;
      }

      v10 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_recordedCommands;
      swift_beginAccess();
      v11 = *&v8[v10];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v10] = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_1D177EEB4(0, *(v11 + 2) + 1, 1, v11);
        *&v8[v10] = v11;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      if (v14 >= v13 >> 1)
      {
        v11 = sub_1D177EEB4((v13 > 1), v14 + 1, 1, v11);
      }

      *(v11 + 2) = v14 + 1;
      v15 = &v11[8 * v14];
      *(v15 + 16) = v9;
      v15[34] = 24;
      *(v15 + 9) = 128;
      *&v8[v10] = v11;
      swift_endAccess();
    }

    v16 = v0[11] + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_commandObserver;
    v17 = *v16;
    if (*v16)
    {
      v18 = v0[10];
      v19 = *(v16 + 8);
      v20 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

      v21 = [v20 init];
      v0[5] = sub_1D1741B10(0, &qword_1EC648B78, 0x1E695DFB0);
      v0[2] = v21;
      v17(128, v18, v0 + 2);
      sub_1D17169C0(v17, v19);
      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    }

    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      sub_1D19F6AB0(v0[10]);
    }

    v24 = v0[11];
    v25 = swift_task_alloc();
    v0[12] = v25;
    *(v25 + 16) = v24;
    v26 = swift_task_alloc();
    v0[13] = v26;
    v27 = sub_1D1741B10(0, &qword_1EC647538, 0x1E696F680);
    *v26 = v0;
    v26[1] = sub_1D19F3714;

    return MEMORY[0x1EEE6DDE0](v0 + 9, 0, 0, 0xD000000000000031, 0x80000001D1EC24D0, sub_1D19F3848, v25, v27);
  }

  else
  {
    v28 = [objc_allocWithZone(MEMORY[0x1E696F680]) init];
    v29 = v0[1];

    return v29(v28);
  }
}

uint64_t sub_1D19F3714()
{

  return MEMORY[0x1EEE6DFA0](sub_1D19F382C, 0, 0);
}

uint64_t sub_1D19F386C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D19F055C(v2, v3, v5, v4);
}

uint64_t sub_1D19F392C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1A0803C(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D19F3B38()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D19F02BC(v2, v3, v5, v4);
}

uint64_t sub_1D19F3C50()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D17C4CF0;

  return sub_1D19EF5CC(v2, v3, v4, v5, v6);
}

unint64_t sub_1D19F3D48(uint64_t a1, uint64_t a2)
{
  *&v4[0] = *(v2 + 16);
  v5 = 2;
  return sub_1D1B0DAF8(v4, a2);
}

uint64_t objectdestroy_162Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D19F3DE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D17C4BFC;

  return sub_1D19EE818(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_101Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1D19F3EEC()
{
  result = qword_1EC648B98;
  if (!qword_1EC648B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648B98);
  }

  return result;
}

uint64_t objectdestroy_111Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1D19F4004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648B70, &qword_1D1E90DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D19F40F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 >= 7)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D19F412C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D19F4178(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1D19F41AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D17417AC(v1, v21);
  if (v22 <= 2u)
  {
    if (v22)
    {
      if (v22 == 1)
      {
        v6 = sub_1D1E6821C();
      }

      else
      {
        v6 = sub_1D1E685DC();
      }
    }

    else
    {
      v6 = sub_1D1E67D2C();
    }

    v13 = v6;
    result = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    a1[3] = result;
    *a1 = v13;
  }

  else if (v22 > 4u)
  {
    if (v22 == 5)
    {
      v7 = *v21;
      v8 = *(*v21 + 16);
      if (v8)
      {
        v20 = MEMORY[0x1E69E7CC0];
        sub_1D178D5F4(0, v8, 0);
        v9 = v20;
        v10 = v7 + 32;
        do
        {
          sub_1D17417AC(v10, &v17);
          sub_1D19F41AC(v19);
          sub_1D17805D8(&v17);
          v20 = v9;
          v12 = *(v9 + 16);
          v11 = *(v9 + 24);
          if (v12 >= v11 >> 1)
          {
            sub_1D178D5F4((v11 > 1), v12 + 1, 1);
            v9 = v20;
          }

          *(v9 + 16) = v12 + 1;
          sub_1D16EEE38(v19, (v9 + 32 * v12 + 32));
          v10 += 40;
          --v8;
        }

        while (v8);
      }

      else
      {

        v9 = MEMORY[0x1E69E7CC0];
      }

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648BA8, &unk_1D1E90B60);
      a1[3] = result;
      *a1 = v9;
    }

    else
    {
      a1[3] = MEMORY[0x1E6969080];
      *a1 = *v21;
    }
  }

  else if (v22 == 3)
  {
    v4 = *v21;
    v5 = *&v21[8];
    a1[3] = MEMORY[0x1E69E6158];
    *a1 = v4;
    a1[1] = v5;
  }

  else
  {
    sub_1D16EEE38(v21, &v17);
    v14 = v18;
    v15 = __swift_project_boxed_opaque_existential_1(&v17, v18);
    a1[3] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v15, v14);
    return __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  return result;
}

uint64_t sub_1D19F43EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D18CA7C0(a1, &v23);
  if (*(&v24 + 1))
  {
    sub_1D16EEE38(&v23, v26);
    sub_1D1741970(v26, v22);
    if (swift_dynamicCast())
    {
      goto LABEL_3;
    }

    if (!swift_dynamicCast())
    {
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v26);
        v3 = LOBYTE(v18[0]);
        goto LABEL_4;
      }

      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v26);
        v3 = LOWORD(v18[0]);
        goto LABEL_4;
      }

      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v26);
        v3 = LODWORD(v18[0]);
        goto LABEL_4;
      }

      if (swift_dynamicCast())
      {
LABEL_3:
        __swift_destroy_boxed_opaque_existential_1(v26);
        v3 = *&v18[0];
LABEL_4:
        *&v23 = v3;
        v4 = 2;
        goto LABEL_8;
      }

      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1(v26);
          v23 = v18[0];
          v4 = 3;
        }

        else
        {
          if (swift_dynamicCast())
          {
            __swift_destroy_boxed_opaque_existential_1(v26);
            LOBYTE(v23) = v18[0];
            v25 = 0;
            goto LABEL_9;
          }

          if (swift_dynamicCast())
          {
            __swift_destroy_boxed_opaque_existential_1(v26);
            v23 = v18[0];
            v4 = 6;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648300, &qword_1D1E8BEE8);
            if (swift_dynamicCast())
            {
              v8 = *(v21 + 16);
              if (v8)
              {
                v9 = MEMORY[0x1E69E7CC0];
                v10 = v21 + 32;
                do
                {
                  sub_1D1741970(v10, v20);
                  sub_1D1741970(v20, &v23);
                  sub_1D19F43EC(&v23, v18);
                  sub_1D1741A30(&v23, &qword_1EC649700, &qword_1D1E6E910);
                  __swift_destroy_boxed_opaque_existential_1(v20);
                  if (v19 == 255)
                  {
                    sub_1D1741A30(v18, &qword_1EC648B70, &qword_1D1E90DF0);
                  }

                  else
                  {
                    v23 = v18[0];
                    v24 = v18[1];
                    v25 = v19;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v9 = sub_1D177ED98(0, *(v9 + 2) + 1, 1, v9);
                    }

                    v12 = *(v9 + 2);
                    v11 = *(v9 + 3);
                    v13 = v12 + 1;
                    if (v12 >= v11 >> 1)
                    {
                      v17 = sub_1D177ED98((v11 > 1), v12 + 1, 1, v9);
                      v13 = v12 + 1;
                      v9 = v17;
                    }

                    *(v9 + 2) = v13;
                    v14 = &v9[40 * v12];
                    v15 = v23;
                    v16 = v24;
                    v14[64] = v25;
                    *(v14 + 2) = v15;
                    *(v14 + 3) = v16;
                  }

                  v10 += 32;
                  --v8;
                }

                while (v8);
              }

              else
              {

                v9 = MEMORY[0x1E69E7CC0];
              }

              __swift_destroy_boxed_opaque_existential_1(v26);
              *&v23 = v9;
              v4 = 5;
            }

            else
            {
              sub_1D16EEE38(v26, &v23);
              v4 = 4;
            }
          }
        }

LABEL_8:
        v25 = v4;
LABEL_9:
        result = __swift_destroy_boxed_opaque_existential_1(v22);
        v7 = v24;
        *a2 = v23;
        *(a2 + 16) = v7;
        v6 = v25;
        goto LABEL_10;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v26);
    *&v23 = *&v18[0];
    v4 = 1;
    goto LABEL_8;
  }

  result = sub_1D1741A30(&v23, &qword_1EC649700, &qword_1D1E6E910);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v6 = -1;
LABEL_10:
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1D19F4834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D1E6781C();
  if (!*(a1 + 16))
  {

    goto LABEL_11;
  }

  v7 = sub_1D171D2F0(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_11:

    goto LABEL_14;
  }

  sub_1D1741970(*(a1 + 56) + 32 * v7, &v89);
  sub_1D16EEE38(&v89, v96);
  v10 = *MEMORY[0x1E696F550];
  v11 = sub_1D1E6781C();
  if (!*(a1 + 16))
  {

    goto LABEL_13;
  }

  v13 = sub_1D171D2F0(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_13:

    result = __swift_destroy_boxed_opaque_existential_1(v96);
    goto LABEL_14;
  }

  sub_1D1741970(*(a1 + 56) + 32 * v13, &v89);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v96);
    goto LABEL_11;
  }

  v16 = v94[0];
  v17 = v94[1];
  sub_1D1741970(v96, v95);
  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    v18 = v89;
    if (sub_1D1E6781C() == v16 && v19 == v17)
    {

LABEL_19:
      v24 = [v18 BOOLValue];

      __swift_destroy_boxed_opaque_existential_1(v96);
      __swift_destroy_boxed_opaque_existential_1(v95);

      *a2 = v24;
      *(a2 + 32) = 0;
      return result;
    }

    v22 = v17;
    v23 = sub_1D1E6904C();

    if (v23)
    {

      goto LABEL_19;
    }

    if (sub_1D1E6781C() == v16 && v25 == v22)
    {

LABEL_25:
      v27 = [v18 integerValue];

      __swift_destroy_boxed_opaque_existential_1(v96);
      __swift_destroy_boxed_opaque_existential_1(v95);

      *a2 = v27;
      v21 = 1;
      goto LABEL_15;
    }

    v26 = sub_1D1E6904C();

    if (v26)
    {

      goto LABEL_25;
    }

    v28 = sub_1D1E6781C();
    v2 = v29;
    if (v28 == v16 && v29 == v22)
    {

LABEL_31:
      v31 = [v18 unsignedIntegerValue];

      __swift_destroy_boxed_opaque_existential_1(v96);
      __swift_destroy_boxed_opaque_existential_1(v95);

      *a2 = v31;
      v21 = 2;
      goto LABEL_15;
    }

    v30 = sub_1D1E6904C();

    if (v30)
    {

      goto LABEL_31;
    }

    v17 = v22;
  }

  if (swift_dynamicCast())
  {
    v2 = *(&v89 + 1);
    v32 = v89;
    if (sub_1D1E6781C() == v16 && v33 == v17)
    {

LABEL_38:
      __swift_destroy_boxed_opaque_existential_1(v96);

      v35 = 3;
LABEL_102:
      __swift_destroy_boxed_opaque_existential_1(v95);

      *a2 = v32;
      *(a2 + 8) = v2;
      *(a2 + 24) = v10;
      *(a2 + 32) = v35;
      return result;
    }

    v34 = sub_1D1E6904C();

    if (v34)
    {
      goto LABEL_38;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648308, &unk_1D1E8DD70);
  if (!swift_dynamicCast())
  {
    goto LABEL_94;
  }

  v36 = v93;
  v37 = sub_1D1E6781C();
  v2 = v38;
  if (v37 == v16 && v38 == v17)
  {

    goto LABEL_46;
  }

  v39 = v17;
  v40 = sub_1D1E6904C();

  if ((v40 & 1) == 0)
  {

    v17 = v39;
LABEL_94:
    if (sub_1D1E6781C() == v16 && v83 == v17)
    {

LABEL_98:
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      __swift_destroy_boxed_opaque_existential_1(v96);
      v35 = 4;
      v32 = a1;
      goto LABEL_102;
    }

    v84 = sub_1D1E6904C();

    if (v84)
    {
      goto LABEL_98;
    }

    __swift_destroy_boxed_opaque_existential_1(v96);

    result = sub_1D1741A30(v94, &qword_1EC646238, &qword_1D1E7E8D0);
LABEL_14:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v21 = -1;
LABEL_15:
    *(a2 + 32) = v21;
    return result;
  }

LABEL_46:
  v41 = *(v36 + 16);
  if (v41)
  {
    *&v86 = MEMORY[0x1E69E7CC0];
    sub_1D178D898(0, v41, 0);
    v42 = v86;
    v43 = 32;
    while (1)
    {
      v44 = v36;
      v45 = *(v36 + v43);
      v46 = sub_1D1E6781C();
      v48 = v47;
      if (!*(v45 + 16))
      {
        break;
      }

      v49 = v46;

      v50 = sub_1D171D2F0(v49, v48);
      v52 = v51;

      if ((v52 & 1) == 0)
      {
        break;
      }

      sub_1D1741970(*(v45 + 56) + 32 * v50, &v89);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      if (!swift_dynamicCast())
      {
        goto LABEL_53;
      }

      v53 = v92;
LABEL_54:
      *&v86 = v42;
      v55 = v42[2];
      v54 = v42[3];
      if (v55 >= v54 >> 1)
      {
        sub_1D178D898((v54 > 1), v55 + 1, 1);
        v42 = v86;
      }

      v42[2] = v55 + 1;
      v42[v55 + 4] = v53;
      v43 += 8;
      --v41;
      v36 = v44;
      if (!v41)
      {

        goto LABEL_59;
      }
    }

LABEL_53:
    v53 = 0;
    v92 = 0;
    goto LABEL_54;
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_59:
  v56 = v42[2];
  v2 = MEMORY[0x1E69E7CC0];
  if (v56)
  {
    v92 = MEMORY[0x1E69E7CC0];
    sub_1D178D858(0, v56, 0);
    v2 = v92;
    v57 = v42 + 4;
    while (1)
    {
      v59 = *v57++;
      v58 = v59;
      if (!v59)
      {
        goto LABEL_67;
      }

      v60 = sub_1D1E6781C();
      v62 = v61;
      if (!*(v58 + 16))
      {
        break;
      }

      v63 = v60;

      v64 = sub_1D171D2F0(v63, v62);
      v66 = v65;

      if ((v66 & 1) == 0)
      {
        break;
      }

      sub_1D1741970(*(v58 + 56) + 32 * v64, &v89);

      if (!swift_dynamicCast())
      {
        goto LABEL_67;
      }

      v67 = v86;
LABEL_68:
      v92 = v2;
      v69 = *(v2 + 16);
      v68 = *(v2 + 24);
      if (v69 >= v68 >> 1)
      {
        v85 = v67;
        sub_1D178D858((v68 > 1), v69 + 1, 1);
        v67 = v85;
        v2 = v92;
      }

      *(v2 + 16) = v69 + 1;
      *(v2 + 16 * v69 + 32) = v67;
      if (!--v56)
      {
        goto LABEL_71;
      }
    }

LABEL_67:
    v67 = 0uLL;
    v86 = 0u;
    goto LABEL_68;
  }

LABEL_71:
  v10 = sub_1D1785354(v2);

  if (*(v10 + 16))
  {
    sub_1D1E6920C();
    sub_1D1E6922C();
    v70 = sub_1D1E6926C();
    v71 = -1 << *(v10 + 32);
    v72 = v70 & ~v71;
    if ((*(v10 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72))
    {
      v73 = ~v71;
      while (*(*(v10 + 48) + 16 * v72 + 8))
      {
        v72 = (v72 + 1) & v73;
        if (((*(v10 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v96);
      goto LABEL_104;
    }

LABEL_76:
    v74 = *(v10 + 16);

    if (v74 > 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v96);

LABEL_104:
      __swift_destroy_boxed_opaque_existential_1(v95);

      goto LABEL_14;
    }
  }

  else
  {
  }

  v75 = v42[2];
  if (!v75)
  {
    v32 = MEMORY[0x1E69E7CC0];
LABEL_101:

    __swift_destroy_boxed_opaque_existential_1(v96);
    v35 = 5;
    goto LABEL_102;
  }

  v76 = 0;
  v32 = MEMORY[0x1E69E7CC0];
  v10 = 40;
  while (v76 < v42[2])
  {
    if (v42[v76 + 4])
    {

      sub_1D19F4834(v77, &v89);
    }

    else
    {
      v89 = 0u;
      v90 = 0u;
      v91 = -1;
    }

    v88 = v91;
    v86 = v89;
    v87 = v90;
    if (v91 == 255)
    {
      result = sub_1D1741A30(&v86, &qword_1EC648B70, &qword_1D1E90DF0);
    }

    else
    {
      v89 = v86;
      v90 = v87;
      v91 = v88;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D177ED98(0, *(v32 + 16) + 1, 1, v32);
        v32 = result;
      }

      v79 = *(v32 + 16);
      v78 = *(v32 + 24);
      v2 = v79 + 1;
      if (v79 >= v78 >> 1)
      {
        result = sub_1D177ED98((v78 > 1), v79 + 1, 1, v32);
        v32 = result;
      }

      *(v32 + 16) = v2;
      v80 = v32 + 40 * v79;
      v81 = v89;
      v82 = v90;
      *(v80 + 64) = v91;
      *(v80 + 32) = v81;
      *(v80 + 48) = v82;
    }

    if (v75 == ++v76)
    {
      goto LABEL_101;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19F52EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D1741970(a1, a2);
  *(a2 + 32) = 4;
  return result;
}

unint64_t sub_1D19F531C()
{
  sub_1D17417AC(v0, v74);
  if (v75 <= 2u)
  {
    if (v75)
    {
      if (v75 != 1)
      {
        v47 = *&v74[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D1E6F900;
        *(inited + 32) = sub_1D1E6781C();
        *(inited + 40) = v49;
        v50 = *MEMORY[0x1E696F560];
        *(inited + 72) = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
        *(inited + 48) = v50;
        *(inited + 80) = sub_1D1E6781C();
        *(inited + 88) = v51;
        v52 = v50;
        v53 = sub_1D1E685DC();
        v54 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
        *(inited + 96) = v53;
        *(inited + 120) = v54;
        *(inited + 128) = 0xD000000000000011;
        *(inited + 168) = MEMORY[0x1E69E6810];
        *(inited + 136) = 0x80000001D1EBE020;
        *(inited + 144) = v47;
LABEL_23:
        v9 = sub_1D18D6538(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
LABEL_26:
        swift_arrayDestroy();
        return v9;
      }

      v10 = *&v74[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1D1E6F900;
      *(v11 + 32) = sub_1D1E6781C();
      *(v11 + 40) = v12;
      v13 = *MEMORY[0x1E696F540];
      *(v11 + 72) = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
      *(v11 + 48) = v13;
      *(v11 + 80) = sub_1D1E6781C();
      *(v11 + 88) = v14;
      v15 = v13;
      v16 = sub_1D1E6821C();
      v17 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
      *(v11 + 96) = v16;
      *(v11 + 120) = v17;
      *(v11 + 128) = 0xD000000000000011;
      *(v11 + 168) = MEMORY[0x1E69E6530];
      *(v11 + 136) = 0x80000001D1EBE020;
      *(v11 + 144) = v10;
    }

    else
    {
      v40 = v74[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1D1E6F900;
      *(v11 + 32) = sub_1D1E6781C();
      *(v11 + 40) = v41;
      v42 = *MEMORY[0x1E696F508];
      *(v11 + 72) = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
      *(v11 + 48) = v42;
      *(v11 + 80) = sub_1D1E6781C();
      *(v11 + 88) = v43;
      v44 = v42;
      v45 = sub_1D1E67D2C();
      v46 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
      *(v11 + 96) = v45;
      *(v11 + 120) = v46;
      *(v11 + 128) = 0xD000000000000011;
      *(v11 + 136) = 0x80000001D1EBE020;
      *(v11 + 168) = MEMORY[0x1E69E6370];
      *(v11 + 144) = v40;
    }

    v9 = sub_1D18D6538(v11);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
    goto LABEL_19;
  }

  if (v75 <= 4u)
  {
    if (v75 != 3)
    {
      sub_1D16EEE38(v74, v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
      v55 = swift_initStackObject();
      *(v55 + 16) = xmmword_1D1E6F900;
      *(v55 + 32) = sub_1D1E6781C();
      *(v55 + 40) = v56;
      v57 = *MEMORY[0x1E696F548];
      *(v55 + 72) = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
      *(v55 + 48) = v57;
      *(v55 + 80) = sub_1D1E6781C();
      *(v55 + 88) = v58;
      sub_1D1741970(v72, v55 + 96);
      *(v55 + 128) = 0xD000000000000011;
      *(v55 + 136) = 0x80000001D1EBE020;
      sub_1D1741970(v72, v55 + 144);
      v59 = v57;
      v9 = sub_1D18D6538(v55);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
      swift_arrayDestroy();
      __swift_destroy_boxed_opaque_existential_1(v72);
      return v9;
    }

    v2 = *(&v74[0] + 1);
    v1 = *&v74[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D1E6F900;
    *(v3 + 32) = sub_1D1E6781C();
    *(v3 + 40) = v4;
    v5 = *MEMORY[0x1E696F558];
    v6 = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
    *(v3 + 72) = v6;
    *(v3 + 48) = v5;
    *(v3 + 80) = sub_1D1E6781C();
    *(v3 + 88) = v7;
    v8 = v5;
    *(v3 + 96) = sub_1D1E677EC();
    *(v3 + 120) = v6;
    *(v3 + 128) = 0xD000000000000011;
    *(v3 + 168) = MEMORY[0x1E69E6158];
    *(v3 + 136) = 0x80000001D1EBE020;
    *(v3 + 144) = __PAIR128__(v2, v1);
    v9 = sub_1D18D6538(v3);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
LABEL_19:
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v9;
  }

  if (v75 != 5)
  {
    v60 = v74[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E6F900;
    *(inited + 32) = sub_1D1E6781C();
    *(inited + 40) = v61;
    v62 = *MEMORY[0x1E696F538];
    *(inited + 72) = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
    *(inited + 48) = v62;
    *(inited + 80) = sub_1D1E6781C();
    *(inited + 88) = v63;
    v64 = v62;
    v65 = sub_1D1E6688C();
    v66 = sub_1D1741B10(0, &qword_1EC647ED0, 0x1E695DEF0);
    *(inited + 96) = v65;
    *(inited + 120) = v66;
    *(inited + 128) = 0xD000000000000011;
    *(inited + 168) = MEMORY[0x1E6969080];
    *(inited + 136) = 0x80000001D1EBE020;
    *(inited + 144) = v60;
    goto LABEL_23;
  }

  v18 = *&v74[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1D1E6F900;
  *(v19 + 32) = sub_1D1E6781C();
  *(v19 + 40) = v20;
  v21 = *MEMORY[0x1E696F4F8];
  *(v19 + 72) = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
  *(v19 + 48) = v21;
  *(v19 + 80) = sub_1D1E6781C();
  *(v19 + 88) = v22;
  v23 = *(v18 + 16);
  if (!v23)
  {
    v67 = v21;
    v25 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648BC0, &qword_1D1E90B80);
    *(v19 + 96) = v25;
    *(v19 + 120) = v68;
    *(v19 + 128) = 0xD000000000000011;
    *(v19 + 136) = 0x80000001D1EBE020;
    *(v19 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648BC8, &qword_1D1E90B88);
    *(v19 + 144) = v18;
    v9 = sub_1D18D6538(v19);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
    goto LABEL_26;
  }

  v69 = v19;
  v73 = MEMORY[0x1E69E7CC0];
  v24 = v21;
  sub_1D178D950(0, v23, 0);
  v25 = v73;
  v70 = v18;
  v26 = v18 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648BB0, &qword_1D1E90B70);
  while (1)
  {
    sub_1D17417AC(v26, v72);
    v27 = sub_1D1E6781C();
    v29 = v28;
    v71[0] = v27;
    v71[1] = v28;
    v30 = sub_1D19F531C();
    v71[2] = v30;
    v31 = sub_1D1E68BCC();

    result = sub_1D171D2F0(v27, v29);
    if (v33)
    {
      break;
    }

    v31[(result >> 6) + 8] |= 1 << result;
    v34 = (v31[6] + 16 * result);
    *v34 = v27;
    v34[1] = v29;
    *(v31[7] + 8 * result) = v30;
    v35 = v31[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_29;
    }

    v31[2] = v37;

    sub_1D1741A30(v71, &qword_1EC648BB8, &qword_1D1E90B78);
    sub_1D17805D8(v72);
    v73 = v25;
    v39 = *(v25 + 16);
    v38 = *(v25 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_1D178D950((v38 > 1), v39 + 1, 1);
      v25 = v73;
    }

    *(v25 + 16) = v39 + 1;
    *(v25 + 8 * v39 + 32) = v31;
    v26 += 40;
    if (!--v23)
    {
      v18 = v70;
      v19 = v69;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D19F5CA8(uint64_t a1, uint64_t a2)
{
  sub_1D17417AC(a1, v6);
  sub_1D17417AC(a2, v8);
  if (v7 <= 2u)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        sub_1D17417AC(v6, v5);
        if (v9 != 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1D17417AC(v6, v5);
        if (v9 != 2)
        {
          goto LABEL_22;
        }
      }

      v3 = v5[0] == v8[0];
    }

    else
    {
      sub_1D17417AC(v6, v5);
      if (v9)
      {
        goto LABEL_22;
      }

      v3 = LOBYTE(v5[0]) ^ LOBYTE(v8[0]) ^ 1;
    }

LABEL_26:
    sub_1D17805D8(v6);
    return v3 & 1;
  }

  if (v7 > 4u)
  {
    if (v7 == 5)
    {
      sub_1D17417AC(v6, v5);
      if (v9 == 5)
      {
        v3 = sub_1D1779E84(v5[0], v8[0]);

LABEL_25:

        goto LABEL_26;
      }

      goto LABEL_21;
    }

LABEL_22:
    sub_1D1741A30(v6, &qword_1EC643118, &qword_1D1E71570);
    v3 = 0;
    return v3 & 1;
  }

  if (v7 == 3)
  {
    sub_1D17417AC(v6, v5);
    if (v9 == 3)
    {
      if (v5[0] == v8[0] && v5[1] == v8[1])
      {
        v3 = 1;
      }

      else
      {
        v3 = sub_1D1E6904C();
      }

      goto LABEL_25;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (v9 != 4)
  {
    goto LABEL_22;
  }

  sub_1D17805D8(v8);
  sub_1D17805D8(v6);
  v3 = 1;
  return v3 & 1;
}

uint64_t sub_1D19F5E80(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1D178D5B4(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  result = sub_1D1E6869C();
  v6 = v25;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v26 + 16);
    v13 = *(v26 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_1D178D5B4((v13 > 1), v14 + 1, 1);
      v6 = v25;
      v12 = v23;
      result = v24;
    }

    v15 = dword_1D1E90EC0[v11];
    *(v26 + 16) = v14 + 1;
    *(v26 + 4 * v14 + 32) = v15;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v9);
    if ((v16 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 72 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1D1716920(result, v12, 0);
          v6 = v25;
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1D1716920(result, v12, 0);
      v6 = v25;
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

void sub_1D19F60C0(uint64_t a1)
{
  v1 = a1;
  v33 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D1E6873C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1D178D5D4(0, v2 & ~(v2 >> 63), 0);
    v34 = v40;
    if (v33)
    {
      v3 = sub_1D1E686DC();
    }

    else
    {
      v3 = sub_1D1E6869C();
      v4 = *(v1 + 36);
    }

    v37 = v3;
    v38 = v4;
    v39 = v33 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v31 = v1 + 56;
      v30 = v1 + 64;
      v32 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v9 = v37;
        v8 = v38;
        v10 = v39;
        v11 = v1;
        sub_1D17909A0(v37, v38, v39, v1);
        v13 = v12;
        v14 = [v12 unsignedIntegerValue];

        v15 = v34;
        v40 = v34;
        v17 = *(v34 + 16);
        v16 = *(v34 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1D178D5D4((v16 > 1), v17 + 1, 1);
          v15 = v40;
        }

        *(v15 + 16) = v17 + 1;
        v18 = v15 + 40 * v17;
        *(v18 + 32) = v14;
        v19 = v35;
        *(v18 + 56) = v36;
        *(v18 + 40) = v19;
        *(v18 + 64) = 2;
        v34 = v15;
        if (v33)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_1D1E686FC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648D88, &unk_1D1E90E10);
          v6 = sub_1D1E681AC();
          sub_1D1E687AC();
          v6(&v35, 0);
          if (v5 == v32)
          {
LABEL_32:
            sub_1D1716920(v37, v38, v39);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v20 = 1 << *(v11 + 32);
          if (v9 >= v20)
          {
            goto LABEL_36;
          }

          v21 = v9 >> 6;
          v22 = *(v31 + 8 * (v9 >> 6));
          if (((v22 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_38;
          }

          v23 = v22 & (-2 << (v9 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v32;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v30 + 8 * v21);
            v2 = v32;
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_1D1716920(v9, v8, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_31;
              }
            }

            sub_1D1716920(v9, v8, 0);
          }

LABEL_31:
          v29 = *(v1 + 36);
          v37 = v20;
          v38 = v29;
          v39 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_1D19F6430(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1D178D5D4(0, v1, 0);
  v2 = v28;
  v4 = a1 + 56;
  result = sub_1D1E6869C();
  v6 = v25;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 4 * result);
    v12 = *(a1 + 36);
    v14 = *(v28 + 16);
    v13 = *(v28 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_1D178D5D4((v13 > 1), v14 + 1, 1);
      v6 = v25;
      v12 = v23;
      result = v24;
    }

    *(v28 + 16) = v14 + 1;
    v15 = v28 + 40 * v14;
    *(v15 + 32) = v11;
    *(v15 + 56) = v27;
    *(v15 + 40) = v26;
    *(v15 + 64) = 2;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v9);
    if ((v16 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 64 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1D1716920(result, v12, 0);
          v6 = v25;
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1D1716920(result, v12, 0);
      v6 = v25;
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

double sub_1D19F6680@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = (*(a3 + 16))(a2, a3);
  if (*(v6 + 16) && (v7 = sub_1D171D4E0(a1), (v8 & 1) != 0))
  {
    sub_1D17417AC(*(v6 + 56) + 40 * v7, a4);
  }

  else
  {

    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = -1;
  }

  return result;
}

uint64_t sub_1D19F6730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D1741C08(a1, v11, &qword_1EC648B70, &qword_1D1E90DF0);
  v8 = (*(a4 + 32))(v10, a3, a4);
  sub_1D1B0DAF8(v11, a2);
  v8(v10, 0);
  return sub_1D1741A30(a1, &qword_1EC648B70, &qword_1D1E90DF0);
}

uint64_t sub_1D19F67F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  sub_1D17419CC(a3, (a4 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D1E73A90;
  ObjectType = swift_getObjectType();
  v8 = *(a2 + 112);
  swift_unknownObjectRetain();
  v8(v17, ObjectType, a2);
  v9 = sub_1D1E6789C();
  v11 = v10;
  v12 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1D1757D20();
  *(v6 + 64) = v13;
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  sub_1D17419CC(a3, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  v14 = sub_1D1E678BC();
  *(v6 + 96) = v12;
  *(v6 + 104) = v13;
  *(v6 + 72) = v14;
  *(v6 + 80) = v15;
  sub_1D1E66A8C();
  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_1(a3);
}

uint64_t sub_1D19F6954(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  a2(v10);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_1D19F6A1C(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7CD0];
  v2 = (*(a2 + 16))(a1);
  sub_1D19305E0(v2);
  if (qword_1EC642288 != -1)
  {
    swift_once();
  }

  sub_1D19305E0(v3);
  return v5;
}

void sub_1D19F6AB0(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = v1;
      v46 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
      v4 = (a1 + 32);
      v5 = MEMORY[0x1E69E7CA0];
      while (1)
      {
        v6 = *v4;
        v7 = sub_1D1E6781C();
        v9 = v8;
        if (!*(v6 + 16) || (v10 = v7, , v11 = sub_1D171D2F0(v10, v9), v13 = v12, , (v13 & 1) == 0) || (sub_1D1741970(*(v6 + 56) + 32 * v11, v51), sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570), (swift_dynamicCast() & 1) == 0))
        {

          return;
        }

        v14 = *&v49[0];
        v15 = [v14 cluster];
        v16 = [v15 unsignedIntValue];

        ClusterKind.init(rawValue:)(v16);
        if (LOBYTE(v51[0]) == 30)
        {
          goto LABEL_24;
        }

        v17 = sub_1D1E6781C();
        if (!*(v6 + 16))
        {

LABEL_24:

LABEL_25:

          return;
        }

        v19 = sub_1D171D2F0(v17, v18);
        v21 = v20;

        if ((v21 & 1) == 0)
        {
          goto LABEL_24;
        }

        sub_1D1741970(*(v6 + 56) + 32 * v19, v51);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_25;
        }

        sub_1D19F4834(*&v49[0], v49);
        if (v50 == 255)
        {

          sub_1D1741A30(v49, &qword_1EC648B70, &qword_1D1E90DF0);
          return;
        }

        v51[0] = v49[0];
        v51[1] = v49[1];
        v52 = v50;
        v22 = [v14 attribute];
        v23 = [v22 unsignedIntValue];
        v24 = [v14 cluster];
        v25 = [v24 unsignedIntValue];

        ClusterKind.init(rawValue:)(v25);
        v26 = LOBYTE(v49[0]);
        if (LOBYTE(v49[0]) == 30)
        {

          goto LABEL_32;
        }

        v27 = [v14 endpoint];

        v28 = [v27 unsignedShortValue];
        swift_beginAccess();
        v29 = *(v3 + v46);
        if (!*(v29 + 16) || (v30 = sub_1D171D15C(v28), (v31 & 1) == 0))
        {
          swift_endAccess();
          goto LABEL_30;
        }

        v32 = (*(v29 + 56) + 16 * v30);
        v33 = *v32;
        v34 = v32[1];
        if (!*(*v32 + 16))
        {

          swift_endAccess();
          sub_1D1791518(v33, v34);
          v45 = v22;
          v22 = v14;
          goto LABEL_31;
        }

        v35 = sub_1D171D278(v26);
        if ((v36 & 1) == 0)
        {
          break;
        }

        v47 = v22;
        v37 = v4;
        v38 = v2;
        v39 = v3;
        v40 = v5;
        v41 = *(*(v33 + 56) + 16 * v35 + 8);

        swift_unknownObjectRetain();
        swift_endAccess();
        sub_1D1791518(v33, v34);
        ObjectType = swift_getObjectType();
        sub_1D17417AC(v51, v49);
        v43 = (*(v41 + 32))(v48, ObjectType, v41);
        sub_1D1B0DAF8(v49, v23);
        v43(v48, 0);
        v5 = v40;
        v3 = v39;
        v44 = v38;

        swift_unknownObjectRelease();
        sub_1D17805D8(v51);
        v4 = v37 + 1;
        v2 = v44 - 1;
        if (!v2)
        {
          return;
        }
      }

      swift_endAccess();
      sub_1D1791518(v33, v34);
LABEL_30:
      v45 = v14;
LABEL_31:

LABEL_32:
      sub_1D17805D8(v51);
    }
  }
}

uint64_t sub_1D19F6F80()
{
  v17 = *(v0 + OBJC_IVAR____TtC13HomeDataModel21MockDescriptorCluster_otherAttributeStates);

  sub_1D19F7104();
  sub_1D19F60C0(v1);
  v3 = v2;

  *&v12 = v3;
  LOBYTE(v14) = 5;
  sub_1D1B0DAF8(&v12, 3);
  v4 = sub_1D19F77D8();
  v5 = sub_1D19F6430(v4);

  *&v12 = v5;
  LOBYTE(v14) = 5;
  sub_1D1B0DAF8(&v12, 1);
  v6 = *(v0 + OBJC_IVAR____TtC13HomeDataModel21MockDescriptorCluster_deviceTypeValues);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648D78, &qword_1D1E90E08);
  v13 = v7;
  v8 = sub_1D19FC698();
  v14 = v8;
  *&v12 = v6;
  __swift_project_boxed_opaque_existential_1(&v12, v7);
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = sub_1D19F52EC;
  v11[5] = 0;

  v15[0] = sub_1D18CE91C(sub_1D19FC6FC, v11, v7, &type metadata for MockMatterAttributeValue, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  v16 = 5;
  __swift_destroy_boxed_opaque_existential_1(&v12);
  sub_1D1B0DAF8(v15, 0);
  return v17;
}

void sub_1D19F7104()
{
  v63 = *MEMORY[0x1E69E9840];
  if (*(v0 + OBJC_IVAR____TtC13HomeDataModel21MockDescriptorCluster__endpointID) || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      return;
    }

    goto LABEL_65;
  }

  v2 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
  v3 = Strong;
  swift_beginAccess();
  v57 = v3;
  v4 = *&v3[v2];
  v5 = v4[2];
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v62 = MEMORY[0x1E69E7CC0];
    v59 = v4;

    sub_1D1E6899C();
    v7 = v59 + 8;
    v8 = sub_1D1E6869C();
    v9 = v59;
    v10 = 0;
    v58 = v59 + 9;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v9 + 32))
    {
      v12 = v8 >> 6;
      if ((v7[v8 >> 6] & (1 << v8)) == 0)
      {
        goto LABEL_60;
      }

      v13 = *(v9 + 9);
      sub_1D1E692AC();
      sub_1D1E6896C();
      sub_1D1E689AC();
      sub_1D1E689BC();
      sub_1D1E6897C();
      v9 = v59;
      v11 = 1 << *(v59 + 32);
      if (v8 >= v11)
      {
        goto LABEL_61;
      }

      v14 = v7[v12];
      if ((v14 & (1 << v8)) == 0)
      {
        goto LABEL_62;
      }

      if (v13 != *(v59 + 9))
      {
        goto LABEL_63;
      }

      v15 = v14 & (-2 << (v8 & 0x3F));
      if (v15)
      {
        v11 = __clz(__rbit64(v15)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v12 << 6;
        v17 = v12 + 1;
        v18 = &v58[v12];
        while (v17 < (v11 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            sub_1D1716920(v8, v13, 0);
            v9 = v59;
            v11 = __clz(__rbit64(v19)) + v16;
            goto LABEL_8;
          }
        }

        sub_1D1716920(v8, v13, 0);
        v9 = v59;
      }

LABEL_8:
      ++v10;
      v8 = v11;
      if (v10 == v5)
      {

        v6 = v62;
        goto LABEL_22;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_22:
  v21 = sub_1D17845AC(v6);

  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x1E69E7CD0];
    v62 = MEMORY[0x1E69E7CD0];
    sub_1D1E686EC();
    v24 = sub_1D1E6877C();
    if (v24)
    {
      v25 = v24;
      sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
      v26 = v25;
      do
      {
        v60 = v26;
        swift_dynamicCast();
        v27 = v61;
        if ([v61 integerValue])
        {
          v28 = v23[2];
          if (v23[3] <= v28)
          {
            sub_1D1939A58(v28 + 1);
          }

          v23 = v62;
          v29 = sub_1D1E684EC();
          v30 = v62 + 56;
          v31 = -1 << *(v62 + 32);
          v32 = v29 & ~v31;
          v33 = v32 >> 6;
          if (((-1 << v32) & ~*(v62 + 56 + 8 * (v32 >> 6))) != 0)
          {
            v34 = __clz(__rbit64((-1 << v32) & ~*(v62 + 56 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v35 = 0;
            v36 = (63 - v31) >> 6;
            do
            {
              if (++v33 == v36 && (v35 & 1) != 0)
              {
                __break(1u);
                goto LABEL_59;
              }

              v37 = v33 == v36;
              if (v33 == v36)
              {
                v33 = 0;
              }

              v35 |= v37;
              v38 = *(v30 + 8 * v33);
            }

            while (v38 == -1);
            v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          }

          *(v30 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
          *(v23[6] + 8 * v34) = v27;
          ++v23[2];
        }

        else
        {
        }

        v26 = sub_1D1E6877C();
      }

      while (v26);
    }

    goto LABEL_58;
  }

  v39 = *(v21 + 32);
  v40 = ((1 << v39) + 63) >> 6;
  if ((v39 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v55 = swift_slowAlloc();
      sub_1D19FA910(v55, v40, v21, sub_1D19F779C);

      MEMORY[0x1D3893640](v55, -1, -1);
LABEL_58:

      return;
    }
  }

  v59 = &v56;
  MEMORY[0x1EEE9AC00](v22);
  v42 = &v56 - ((v41 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v42, v41);
  v43 = 0;
  v44 = 0;
  v45 = 1 << *(v21 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v21 + 56);
  v48 = (v45 + 63) >> 6;
  while (v47)
  {
    v49 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
LABEL_53:
    v52 = v49 | (v44 << 6);
    if ([*(*(v21 + 48) + 8 * v52) integerValue])
    {
      *&v42[(v52 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v52;
      if (__OFADD__(v43++, 1))
      {
        __break(1u);
LABEL_57:
        sub_1D19E16A8(v42, v40, v43, v21);
        goto LABEL_58;
      }
    }
  }

  v50 = v44;
  while (1)
  {
    v44 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v44 >= v48)
    {
      goto LABEL_57;
    }

    v51 = *(v21 + 56 + 8 * v44);
    ++v50;
    if (v51)
    {
      v49 = __clz(__rbit64(v51));
      v47 = (v51 - 1) & v51;
      goto LABEL_53;
    }
  }

LABEL_64:
  __break(1u);
LABEL_65:
  if (sub_1D1E6873C())
  {
    v54 = MEMORY[0x1E69E7CC0];

    sub_1D179C284(v54);
  }
}

uint64_t sub_1D19F77D8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + OBJC_IVAR____TtC13HomeDataModel21MockDescriptorCluster__endpointID);
    v4 = OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_mockEndpoints;
    swift_beginAccess();
    if (*(*&v2[v4] + 16))
    {
      sub_1D171D15C(v3);
      if (v5)
      {
        swift_endAccess();

        v7 = sub_1D19F5E80(v6);

        v8 = sub_1D17845DC(v7);

        return v8;
      }
    }

    swift_endAccess();
  }

  return MEMORY[0x1E69E7CD0];
}

char sub_1D19F78C4()
{
  v0 = sub_1D19F77D8();
  v1 = v0;
  v2 = v0 + 56;
  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      LOBYTE(v7) = ClusterKind.init(rawValue:)(*(*(v1 + 48) + ((v8 << 8) | (4 * v10))));
      if (v20 != 30)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
    if ((v7 & 1) == 0)
    {
      v7 = sub_1D177DE5C(0, *(v9 + 16) + 1, 1, v9);
      v9 = v7;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v14 = v12 + 1;
    if (v12 >= v13 >> 1)
    {
      v19 = v12 + 1;
      v15 = v9;
      v16 = *(v9 + 16);
      v7 = sub_1D177DE5C((v13 > 1), v12 + 1, 1, v15);
      v12 = v16;
      v14 = v19;
      v9 = v7;
    }

    *(v9 + 16) = v14;
    *(v9 + v12 + 32) = v20;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      v17 = sub_1D17846C4(v9);

      LOBYTE(v7) = v17;
      return v7;
    }

    v5 = *(v2 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_4;
    }
  }

  __break(1u);
  return v7;
}

void sub_1D19F7BB0(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19F7C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = v4;
  v5[9] = a4;
  v5[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D19FC8A0, 0, 0);
}

uint64_t sub_1D19F7C30(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19F7C54, 0, 0);
}

uint64_t sub_1D19F7C54()
{
  sub_1D17419CC(*(v0 + 104), v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 144);
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
    *v4 = v0;
    v4[1] = sub_1D19F7E3C;
    v6 = *(v0 + 96);

    return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000010, 0x80000001D1EC2AC0, sub_1D19FC5F8, v3, v5);
  }

  else
  {
    sub_1D17419CC(*(v0 + 104), v0 + 56);
    sub_1D19EDF88();
    swift_allocError();
    v8 = v7;
    v9 = swift_unknownObjectRetain();
    sub_1D19F67F8(v9, &off_1EEC1E4A8, (v0 + 56), v8);
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1D19F7E3C()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19FC89C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_1D19F7F78(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648D68, &qword_1D1E90DF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E696F638]) init];
  v10 = sub_1D1E685DC();
  [v9 setIdentifyTime_];

  (*(v6 + 16))(v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v8, v5);
  aBlock[4] = sub_1D19FC8B4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1C40BA8;
  aBlock[3] = &block_descriptor_350;
  v13 = _Block_copy(aBlock);

  [a3 identifyWithParams:v9 expectedValues:0 expectedValueInterval:0 completion:v13];
  _Block_release(v13);
}

void sub_1D19F8268(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1D1E6655C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1D19F8448(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel19MockIdentifyCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19F8478(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D19F7C30(a1, a2);
}

void sub_1D19F8658(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19F86A0(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel25MockDiagnosticLogsCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19F86D0()
{
  v1 = OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_attributeStates;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!*(v2 + 16) || (v3 = sub_1D171D4E0(0), (v4 & 1) == 0))
  {
    memset(v10, 0, sizeof(v10));
    v11 = -1;
    goto LABEL_7;
  }

  sub_1D17417AC(*(v2 + 56) + 40 * v3, v10);
  if (v11 == 255)
  {
LABEL_7:
    sub_1D1741A30(v10, &qword_1EC648B70, &qword_1D1E90DF0);
    return 0;
  }

  sub_1D17417AC(v10, v8);
  sub_1D1741A30(v10, &qword_1EC648B70, &qword_1D1E90DF0);
  v7 = v9;
  v6[0] = v8[0];
  v6[1] = v8[1];
  if (!v9)
  {
    return LOBYTE(v6[0]);
  }

  sub_1D17805D8(v6);
  return 0;
}

uint64_t sub_1D19F896C(void *a1, int a2, void *a3, uint64_t a4, void *a5, void *aBlock, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t))
{
  v14 = _Block_copy(aBlock);
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    a4 = sub_1D1E67C1C();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = a3;
  v17 = a5;
  v18 = a1;
  a9(a4, a8, v15);
}

uint64_t sub_1D19F8AAC(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19F8AD0, 0, 0);
}

uint64_t sub_1D19F8AD0()
{
  sub_1D17419CC(*(v0 + 104), v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 144);
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
    *v4 = v0;
    v4[1] = sub_1D19F8CB8;
    v6 = *(v0 + 96);

    return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000010, 0x80000001D1EC2AC0, sub_1D19FC5A0, v3, v5);
  }

  else
  {
    sub_1D17419CC(*(v0 + 104), v0 + 56);
    sub_1D19EDF88();
    swift_allocError();
    v8 = v7;
    v9 = swift_unknownObjectRetain();
    sub_1D19F67F8(v9, &off_1EEC1E3A8, (v0 + 56), v8);
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1D19F8CB8()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19F8DF4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D19F8DF4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D19F8E58(uint64_t a1, char a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648D68, &qword_1D1E90DF8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock - v8;
  v10 = *(v7 + 16);
  v7 += 16;
  v10(&aBlock - v8, a1, v6);
  v11 = (*(v7 + 64) + 16) & ~*(v7 + 64);
  v12 = swift_allocObject();
  (*(v7 + 16))(v12 + v11, v9, v6);
  if (a2)
  {
    v19 = sub_1D19FC8B4;
    v20 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1D1C40BA8;
    v18 = &block_descriptor_319;
    v13 = _Block_copy(&aBlock);

    v14 = &selRef_offWithParams_expectedValues_expectedValueInterval_completion_;
  }

  else
  {
    v19 = sub_1D19FC5AC;
    v20 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1D1C40BA8;
    v18 = &block_descriptor_313;
    v13 = _Block_copy(&aBlock);

    v14 = &selRef_onWithParams_expectedValues_expectedValueInterval_completion_;
  }

  [a3 *v14];
  _Block_release(v13);
}

void sub_1D19F9204(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19F924C(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel16MockOnOffCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19F927C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return sub_1D19F8AAC(a1, a2);
}

void sub_1D19F942C(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19F9474(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel20MockBasicInfoCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

void sub_1D19F962C(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19F9674(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel23MockLevelControlCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19F96A4(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19F96C8, 0, 0);
}