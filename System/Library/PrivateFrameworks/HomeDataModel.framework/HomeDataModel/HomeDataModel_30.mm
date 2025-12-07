uint64_t sub_1D196274C(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4BFC;

  return StaticRVCClusterGroup.run(command:)(a1);
}

unint64_t _s13HomeDataModel13MatterCommandPAAE15_expectedValues3for19matterAttributePathSaySDySSs8Sendable_pGGSDySo18MTRAttributeIDTypeVAA0djB7BuilderOG_So0mK0CtF_0(uint64_t a1, void *a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
LABEL_8:
    while (1)
    {
      v11 = *(a1 + 56) + ((v8 << 10) | (16 * __clz(__rbit64(v5))));
      v12 = *v11;
      v13 = *(v11 + 8);
      v35 = sub_1D1E6781C();
      v36 = v14;
      v37 = sub_1D1E6781C();
      v38 = v15;
      sub_1D1741AF8(v12, v13);
      v16 = a2;
      MatterAttributeDataBuilder.dictionary.getter();
      sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
      v17 = sub_1D1E675DC();

      sub_1D1757AE8(v12, v13);
      v39 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C80, &unk_1D1E8DED0);
      v18 = sub_1D1E68BCC();

      v19 = a2;
      result = sub_1D171D2F0(v35, v36);
      if (v20)
      {
        break;
      }

      *(v18 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v18[6] + 16 * result);
      *v21 = v35;
      v21[1] = v36;
      *(v18[7] + 8 * result) = v19;
      v22 = v18[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_21;
      }

      v18[2] = v24;

      v25 = v39;
      result = sub_1D171D2F0(v37, v38);
      if (v26)
      {
        break;
      }

      *(v18 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v27 = (v18[6] + 16 * result);
      *v27 = v37;
      v27[1] = v38;
      *(v18[7] + 8 * result) = v25;
      v28 = v18[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_21;
      }

      v18[2] = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647728, &unk_1D1E86830);
      swift_arrayDestroy();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D177D31C(0, v9[2] + 1, 1, v9);
        v9 = result;
      }

      v31 = v9[2];
      v30 = v9[3];
      if (v31 >= v30 >> 1)
      {
        result = sub_1D177D31C((v30 > 1), v31 + 1, 1, v9);
        v9 = result;
      }

      v5 &= v5 - 1;
      v9[2] = v31 + 1;
      v9[v31 + 4] = v18;
      if (!v5)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v6)
      {

        v32 = sub_1D18F96D8(v9);

        return v32;
      }

      v5 = *(v2 + 8 * v10);
      ++v8;
      if (v5)
      {
        v8 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D1962B38(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t (*a4)(uint64_t, uint64_t, void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = a3 >> 5;
  if (v5 == 2)
  {
    return a5(result, a2);
  }

  if (v5 == 1)
  {
    return a4(result, a2, a3 & 0x1F);
  }

  return result;
}

uint64_t sub_1D1962B64(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

BOOL _s13HomeDataModel21StaticRVCClusterGroupV7CommandO13RoomSelectionO2eeoiySbAG_AGtFZ_0(_BOOL8 result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(result + 8))
  {
    if (v3 == 1)
    {
      if (v5 == 1)
      {
        sub_1D1771B5C(*result, 1);
        sub_1D1771B5C(v4, 1);
        return v2 == v4;
      }

      goto LABEL_11;
    }

    if (v5 != 2 || v4 != 0)
    {
LABEL_11:
      sub_1D1771B4C(v4, v5);
      sub_1D1771B5C(v2, v3);
      v7 = v4;
      v8 = v5;
LABEL_12:
      sub_1D1771B5C(v7, v8);
      return 0;
    }

    sub_1D1771B5C(*result, 2);
    v9 = 0;
    v10 = 2;
    goto LABEL_21;
  }

  if (*(a2 + 8))
  {

    goto LABEL_11;
  }

  v11 = *(v2 + 16);
  if (v11 != *(v4 + 16))
  {
LABEL_26:
    sub_1D1771B4C(*a2, 0);
    sub_1D1771B4C(v2, 0);
    sub_1D1771B5C(v2, 0);
    v7 = v4;
    v8 = 0;
    goto LABEL_12;
  }

  if (v11)
  {
    v12 = v2 == v4;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
LABEL_20:
    sub_1D1771B4C(*a2, 0);
    sub_1D1771B4C(v2, 0);
    sub_1D1771B5C(v2, 0);
    v9 = v4;
    v10 = 0;
LABEL_21:
    sub_1D1771B5C(v9, v10);
    return 1;
  }

  v13 = (v2 + 32);
  v14 = (v4 + 32);
  while (v11)
  {
    if (*v13 != *v14)
    {
      goto LABEL_26;
    }

    ++v13;
    ++v14;
    if (!--v11)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

BOOL _s13HomeDataModel21StaticRVCClusterGroupV7CommandO9CleanModeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {

LABEL_32:
      sub_1D1962B64(v6, v5, v7);
      sub_1D18FB818(v2, v3, v4);
      v15 = v6;
      v16 = v5;
      v17 = v7;
LABEL_33:
      sub_1D18FB818(v15, v16, v17);
      return 0;
    }

    if (v2 == v6)
    {
      if (v3)
      {
        v11 = *a1;
        if (v5)
        {
          sub_1D1962B64(v11, v3, 0);
          sub_1D1962B64(v2, v5, 0);
          sub_1D1962B64(v2, v3, 0);
          v12 = sub_1D17A7B94(v3, v5);
          sub_1D18FB818(v2, v3, 0);
          sub_1D18FB818(v2, v5, 0);
          sub_1D18FB818(v2, v3, 0);
          return (v12 & 1) != 0;
        }

        sub_1D1962B64(v11, 0, 0);
        sub_1D1962B64(v2, 0, 0);
        sub_1D1962B64(v2, v3, 0);
        sub_1D18FB818(v2, v3, 0);
      }

      else
      {

        sub_1D1962B64(v2, v5, 0);
        sub_1D1962B64(v2, 0, 0);
        sub_1D18FB818(v2, 0, 0);
        sub_1D18FB818(v2, v5, 0);
        if (!v5)
        {
          return 1;
        }
      }

      v15 = v2;
    }

    else
    {
      sub_1D1962B64(*a2, *(a2 + 8), 0);
      sub_1D1962B64(v2, v3, 0);
      sub_1D18FB818(v2, v3, 0);
      v15 = v6;
    }

    v16 = v5;
    v17 = 0;
    goto LABEL_33;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      v9 = *a2;
      sub_1D18FB818(*a1, v3, 1);
      sub_1D18FB818(v6, v5, 1);
      if (v8 >> 6)
      {
        if (v8 >> 6 == 1)
        {
          if ((v9 & 0xC0) == 0x40)
          {
LABEL_41:
            if (((v9 ^ v8) & 0x3F) == 0)
            {
              return 1;
            }
          }
        }

        else if ((v9 & 0xC0) == 0x80)
        {
          goto LABEL_41;
        }
      }

      else if (v9 < 0x40 && (v6 & 0x3F) == v2)
      {
        return 1;
      }

      return 0;
    }

    goto LABEL_32;
  }

  if (!(v2 | v3))
  {
    if (v7 != 2 || (v5 | v6) != 0)
    {
      goto LABEL_32;
    }

    sub_1D18FB818(*a1, v3, 2);
    v14 = 0;
LABEL_31:
    sub_1D18FB818(v14, 0, 2);
    return 1;
  }

  if (v2 ^ 1 | v3)
  {
    if (v7 != 2 || v6 != 2 || v5)
    {
      goto LABEL_32;
    }

    sub_1D18FB818(*a1, v3, 2);
    v14 = 2;
    goto LABEL_31;
  }

  if (v7 != 2 || v6 != 1 || v5)
  {
    goto LABEL_32;
  }

  sub_1D18FB818(*a1, v3, 2);
  v10 = 1;
  sub_1D18FB818(1, 0, 2);
  return v10;
}

uint64_t sub_1D1963018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1963080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticRVCClusterGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D19630E4(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
  }

  return result;
}

uint64_t sub_1D19630F8(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1D19630E4(a1, a2);
  }

  return a1;
}

uint64_t sub_1D196310C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s13HomeDataModel21StaticRVCClusterGroupV7CommandO8TemplateO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v4 >> 5;
  if (v4 >> 5 <= 1)
  {
    if (!v8)
    {
      if (v7 < 0x20)
      {
        sub_1D1962B38(*a1, v3, v4, sub_1D18FB818, sub_1D1771B5C);
        sub_1D1962B38(v5, v6, v7, sub_1D18FB818, sub_1D1771B5C);
        return ((v5 ^ v2) & 1) == 0;
      }

      goto LABEL_31;
    }

    if ((v7 & 0xE0) != 0x20)
    {
      sub_1D1962B64(*a1, v3, v4 & 0x1F);
      goto LABEL_31;
    }

    v16 = *a1;
    v17 = v3;
    v18 = v4 & 0x1F;
    v13 = v5;
    v14 = v6;
    v15 = v7 & 0x1F;
    sub_1D1962B38(v5, v6, v7, sub_1D1962B64, sub_1D1771B4C);
    sub_1D1962B38(v2, v3, v4, sub_1D1962B64, sub_1D1771B4C);
    sub_1D1962B38(v5, v6, v7, sub_1D1962B64, sub_1D1771B4C);
    sub_1D1962B38(v2, v3, v4, sub_1D1962B64, sub_1D1771B4C);
    v10 = _s13HomeDataModel21StaticRVCClusterGroupV7CommandO9CleanModeO2eeoiySbAG_AGtFZ_0(&v16, &v13);
LABEL_20:
    v9 = v10;
    sub_1D1962B38(v2, v3, v4, sub_1D18FB818, sub_1D1771B5C);
    sub_1D1962B38(v5, v6, v7, sub_1D18FB818, sub_1D1771B5C);
    sub_1D1962B38(v5, v6, v7, sub_1D18FB818, sub_1D1771B5C);
    sub_1D1962B38(v2, v3, v4, sub_1D18FB818, sub_1D1771B5C);
    return v9;
  }

  if (v8 == 2)
  {
    if ((v7 & 0xE0) != 0x40)
    {
      sub_1D1771B4C(*a1, v3);
      goto LABEL_31;
    }

    v16 = *a1;
    LOBYTE(v17) = v3;
    v13 = v5;
    LOBYTE(v14) = v6;
    sub_1D1962B38(v5, v6, v7, sub_1D1962B64, sub_1D1771B4C);
    sub_1D1962B38(v2, v3, v4, sub_1D1962B64, sub_1D1771B4C);
    sub_1D1962B38(v5, v6, v7, sub_1D1962B64, sub_1D1771B4C);
    sub_1D1962B38(v2, v3, v4, sub_1D1962B64, sub_1D1771B4C);
    v10 = _s13HomeDataModel21StaticRVCClusterGroupV7CommandO13RoomSelectionO2eeoiySbAG_AGtFZ_0(&v16, &v13);
    goto LABEL_20;
  }

  if (v8 != 3)
  {
    if (!(v3 | v2) && v4 == 128)
    {
      if ((v7 & 0xE0) != 0x80 || v6 | v5 || v7 != 128)
      {
        goto LABEL_31;
      }

      sub_1D1962B38(0, 0, 0x80u, sub_1D18FB818, sub_1D1771B5C);
      v11 = 0;
LABEL_17:
      sub_1D1962B38(v11, 0, 0x80u, sub_1D18FB818, sub_1D1771B5C);
      return 1;
    }

    if (v2 != 1 || v3 || v4 != 128)
    {
      if (v2 == 2 && !v3 && v4 == 128)
      {
        if ((v7 & 0xE0) != 0x80 || v5 != 2 || v6 || v7 != 128)
        {
          goto LABEL_31;
        }

        sub_1D1962B38(2, 0, 0x80u, sub_1D18FB818, sub_1D1771B5C);
        v11 = 2;
      }

      else if (v2 == 3 && !v3 && v4 == 128)
      {
        if ((v7 & 0xE0) != 0x80 || v5 != 3 || v6 || v7 != 128)
        {
          goto LABEL_31;
        }

        sub_1D1962B38(3, 0, 0x80u, sub_1D18FB818, sub_1D1771B5C);
        v11 = 3;
      }

      else
      {
        if ((v7 & 0xE0) != 0x80 || v5 != 4 || v6 || v7 != 128)
        {
          goto LABEL_31;
        }

        sub_1D1962B38(4, 0, 0x80u, sub_1D18FB818, sub_1D1771B5C);
        v11 = 4;
      }

      goto LABEL_17;
    }

    if ((v7 & 0xE0) == 0x80 && v5 == 1 && !v6 && v7 == 128)
    {
      v9 = 1;
      sub_1D1962B38(1, 0, 0x80u, sub_1D18FB818, sub_1D1771B5C);
      sub_1D1962B38(1, 0, 0x80u, sub_1D18FB818, sub_1D1771B5C);
      return v9;
    }

LABEL_31:
    sub_1D1962B38(v5, v6, v7, sub_1D1962B64, sub_1D1771B4C);
    sub_1D1962B38(v2, v3, v4, sub_1D18FB818, sub_1D1771B5C);
    sub_1D1962B38(v5, v6, v7, sub_1D18FB818, sub_1D1771B5C);
    return 0;
  }

  if ((v7 & 0xE0) != 0x60)
  {
    goto LABEL_31;
  }

  sub_1D1962B38(*a1, v3, v4, sub_1D18FB818, sub_1D1771B5C);
  sub_1D1962B38(v5, v6, v7, sub_1D18FB818, sub_1D1771B5C);
  return v2 == v5;
}

uint64_t sub_1D19637F0(uint64_t result, char a2)
{
  if (a2 == 2)
  {
  }

  return v2;
}

unint64_t sub_1D1963804()
{
  result = qword_1EC647558;
  if (!qword_1EC647558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647558);
  }

  return result;
}

uint64_t _s13HomeDataModel21StaticRVCClusterGroupV7CommandO2eeoiySbAE_AEtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (*(result + 8))
    {
      if (v5 != 1)
      {
        goto LABEL_26;
      }

      sub_1D19630E4(*result, 1);
      v6 = v4;
      v7 = 1;
    }

    else
    {
      if (*(a2 + 8))
      {
        goto LABEL_26;
      }

      sub_1D19630E4(*result, 0);
      v6 = v4;
      v7 = 0;
    }

    sub_1D19630E4(v6, v7);
    return v2 == v4;
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      if (v5 == 3)
      {
        sub_1D19630E4(*result, 3);
        sub_1D19630E4(v4, 3);
        return v2 == v4;
      }

      goto LABEL_26;
    }

    if (v2)
    {
      if (v2 == 1)
      {
        if (v5 == 4 && v4 == 1)
        {
          sub_1D19630E4(1, 4);
          sub_1D19630E4(1, 4);
          return v4;
        }

        goto LABEL_26;
      }

      if (v5 == 4 && v4 == 2)
      {
        sub_1D19630E4(2, 4);
        v10 = 2;
        goto LABEL_35;
      }
    }

    else if (v5 == 4 && !v4)
    {
      sub_1D19630E4(0, 4);
      v10 = 0;
LABEL_35:
      v11 = 4;
      goto LABEL_36;
    }

LABEL_26:
    sub_1D19637F0(v4, v5);
    sub_1D19630E4(v2, v3);
    v12 = v4;
    v13 = v5;
LABEL_27:
    sub_1D19630E4(v12, v13);
    return 0;
  }

  if (v5 != 2)
  {

    goto LABEL_26;
  }

  v8 = *(v2 + 16);
  if (v8 != *(v4 + 16))
  {
LABEL_41:
    sub_1D19637F0(*a2, 2);
    sub_1D19637F0(v2, 2);
    sub_1D19630E4(v2, 2);
    v12 = v4;
    v13 = 2;
    goto LABEL_27;
  }

  if (v8)
  {
    v9 = v2 == v4;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_16:
    sub_1D19637F0(*a2, 2);
    sub_1D19637F0(v2, 2);
    sub_1D19630E4(v2, 2);
    v10 = v4;
    v11 = 2;
LABEL_36:
    sub_1D19630E4(v10, v11);
    return 1;
  }

  v14 = (v2 + 32);
  v15 = (v4 + 32);
  while (v8)
  {
    if (*v14 != *v15)
    {
      goto LABEL_41;
    }

    ++v14;
    ++v15;
    if (!--v8)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D1963A90()
{
  result = qword_1EC6475A0;
  if (!qword_1EC6475A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6475A0);
  }

  return result;
}

unint64_t sub_1D1963AE4()
{
  result = qword_1EC6475A8;
  if (!qword_1EC6475A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6475A8);
  }

  return result;
}

unint64_t sub_1D1963B38()
{
  result = qword_1EC6475B0;
  if (!qword_1EC6475B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6475B0);
  }

  return result;
}

unint64_t sub_1D1963B8C()
{
  result = qword_1EC6475B8;
  if (!qword_1EC6475B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6475B8);
  }

  return result;
}

unint64_t sub_1D1963BE0()
{
  result = qword_1EC6475C8;
  if (!qword_1EC6475C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6475C8);
  }

  return result;
}

unint64_t sub_1D1963C34()
{
  result = qword_1EC6475D0;
  if (!qword_1EC6475D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6475D0);
  }

  return result;
}

unint64_t sub_1D1963C88()
{
  result = qword_1EC6475D8;
  if (!qword_1EC6475D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6475D8);
  }

  return result;
}

unint64_t sub_1D1963CDC()
{
  result = qword_1EC6475E0;
  if (!qword_1EC6475E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6475E0);
  }

  return result;
}

uint64_t sub_1D1963D30(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646A50, &unk_1D1E910D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1963DA0()
{
  result = qword_1EC647630;
  if (!qword_1EC647630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647630);
  }

  return result;
}

unint64_t sub_1D1963DF8()
{
  result = qword_1EC647638;
  if (!qword_1EC647638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647638);
  }

  return result;
}

unint64_t sub_1D1963E50()
{
  result = qword_1EC647640;
  if (!qword_1EC647640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647640);
  }

  return result;
}

unint64_t sub_1D1963EA4(uint64_t a1)
{
  result = sub_1D1963ECC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D1963ECC()
{
  result = qword_1EC647648;
  if (!qword_1EC647648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647648);
  }

  return result;
}

unint64_t sub_1D1963F24()
{
  result = qword_1EC647650;
  if (!qword_1EC647650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647650);
  }

  return result;
}

unint64_t sub_1D1963F7C()
{
  result = qword_1EC647658;
  if (!qword_1EC647658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647658);
  }

  return result;
}

unint64_t sub_1D1963FD0(uint64_t a1)
{
  result = sub_1D1963FF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D1963FF8()
{
  result = qword_1EC647660;
  if (!qword_1EC647660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647660);
  }

  return result;
}

unint64_t sub_1D196404C(uint64_t a1)
{
  result = sub_1D1964074();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D1964074()
{
  result = qword_1EC647668;
  if (!qword_1EC647668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647668);
  }

  return result;
}

unint64_t sub_1D19640CC()
{
  result = qword_1EC647670;
  if (!qword_1EC647670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647670);
  }

  return result;
}

unint64_t sub_1D1964120(uint64_t a1)
{
  result = sub_1D1964148();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D1964148()
{
  result = qword_1EC647678;
  if (!qword_1EC647678)
  {
    type metadata accessor for StaticRVCClusterGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647678);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel21StaticRVCClusterGroupV7CommandO(uint64_t a1)
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

uint64_t sub_1D19641BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D1964204(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D1964248(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel21StaticRVCClusterGroupV7CommandO9CleanModeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel21StaticRVCClusterGroupV7CommandO13RoomSelectionO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1D19642C8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D1964310(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D1964354(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel21StaticRVCClusterGroupV7CommandO8TemplateO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1D196439C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3C && *(a1 + 17))
  {
    return (*a1 + 60);
  }

  v3 = ((*(a1 + 16) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 16) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D19643F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *(result + 16) = 0;
    *result = a2 - 60;
    *(result + 8) = 0;
    if (a3 >= 0x3C)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1D1964454(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 16) = *(result + 16) & 3 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

unint64_t sub_1D1964524()
{
  result = qword_1EC647680;
  if (!qword_1EC647680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647680);
  }

  return result;
}

unint64_t sub_1D196457C()
{
  result = qword_1EC647688;
  if (!qword_1EC647688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647688);
  }

  return result;
}

unint64_t sub_1D19645D4()
{
  result = qword_1EC647690;
  if (!qword_1EC647690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647690);
  }

  return result;
}

unint64_t sub_1D196462C()
{
  result = qword_1EC647698;
  if (!qword_1EC647698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647698);
  }

  return result;
}

unint64_t sub_1D1964684()
{
  result = qword_1EC6476A0;
  if (!qword_1EC6476A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476A0);
  }

  return result;
}

unint64_t sub_1D19646DC()
{
  result = qword_1EC6476A8;
  if (!qword_1EC6476A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476A8);
  }

  return result;
}

unint64_t sub_1D1964734()
{
  result = qword_1EC6476B0;
  if (!qword_1EC6476B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476B0);
  }

  return result;
}

unint64_t sub_1D196478C()
{
  result = qword_1EC6476B8;
  if (!qword_1EC6476B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476B8);
  }

  return result;
}

unint64_t sub_1D19647E4()
{
  result = qword_1EC6476C0;
  if (!qword_1EC6476C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476C0);
  }

  return result;
}

unint64_t sub_1D196483C()
{
  result = qword_1EC6476C8;
  if (!qword_1EC6476C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476C8);
  }

  return result;
}

unint64_t sub_1D1964894()
{
  result = qword_1EC6476D0;
  if (!qword_1EC6476D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476D0);
  }

  return result;
}

unint64_t sub_1D19648EC()
{
  result = qword_1EC6476D8;
  if (!qword_1EC6476D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476D8);
  }

  return result;
}

unint64_t sub_1D1964944()
{
  result = qword_1EC6476E0;
  if (!qword_1EC6476E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476E0);
  }

  return result;
}

unint64_t sub_1D196499C()
{
  result = qword_1EC6476E8;
  if (!qword_1EC6476E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476E8);
  }

  return result;
}

unint64_t sub_1D19649F4()
{
  result = qword_1EC6476F0;
  if (!qword_1EC6476F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476F0);
  }

  return result;
}

unint64_t sub_1D1964A4C()
{
  result = qword_1EC6476F8;
  if (!qword_1EC6476F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476F8);
  }

  return result;
}

unint64_t sub_1D1964AA4()
{
  result = qword_1EC647700;
  if (!qword_1EC647700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647700);
  }

  return result;
}

unint64_t sub_1D1964AFC()
{
  result = qword_1EC647708;
  if (!qword_1EC647708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647708);
  }

  return result;
}

unint64_t sub_1D1964B54()
{
  result = qword_1EC647710;
  if (!qword_1EC647710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647710);
  }

  return result;
}

unint64_t sub_1D1964BAC()
{
  result = qword_1EC647718;
  if (!qword_1EC647718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647718);
  }

  return result;
}

unint64_t sub_1D1964C04()
{
  result = qword_1EC647720;
  if (!qword_1EC647720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647720);
  }

  return result;
}

uint64_t sub_1D1964C58(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a1)
  {
    v3 = a1 + 64;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;

    v9 = 0;
    for (i = MEMORY[0x1E69E7CC0]; v6; i = v27)
    {
      v27 = i;
      v11 = v9;
LABEL_10:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = v12 | (v11 << 6);
      v14 = *(*(a1 + 48) + 8 * v13);
      v15 = *(a1 + 56) + 16 * v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E0, &unk_1D1E8D5E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 32) = v14;
      v19 = inited + 32;
      *(inited + 40) = v16;
      *(inited + 48) = v17;
      v20 = sub_1D18D6FA8(inited);
      swift_setDeallocating();
      sub_1D1741AF8(v16, v17);
      sub_1D1741A30(v19, &qword_1EC6474E8, &unk_1D1E86820);
      v21 = sub_1D1E692AC();
      v22 = sub_1D1E692CC();
      v23 = sub_1D1E692CC();
      v24 = [objc_opt_self() attributePathWithEndpointID:v21 clusterID:v22 attributeID:v23];

      v25 = _s13HomeDataModel13MatterCommandPAAE15_expectedValues3for19matterAttributePathSaySDySSs8Sendable_pGGSDySo18MTRAttributeIDTypeVAA0djB7BuilderOG_So0mK0CtF_0(v20, v24);

      result = sub_1D17A386C(v25);
    }

    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v7)
      {

        return i;
      }

      v6 = *(v3 + 8 * v11);
      ++v9;
      if (v6)
      {
        v27 = i;
        v9 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D1964E7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x755265676E616863 && a2 == 0xED000065646F4D6ELL;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573756170 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D75736572 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EBE870 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F527463656C6573 && a2 == 0xEB00000000736D6FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6165724170696B73 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D6F486F67 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

void StaticRVCClusterGroup.OperationalErrorState.init(rawValue:)(uint64_t a1@<X0>, __int16 *a2@<X8>)
{
  v3 = a1;
  if (a1 >= 4u)
  {
    v4 = a1;
    StaticRVCClusterGroup.OperationalErrorState.RVC.init(rawValue:)(a1, &v12);
    if (v12 == 15)
    {
      if (v4 >= 0x40u)
      {
        if ((v4 & 0x80) != 0)
        {
          if (v4 <= 0xBFu)
          {
            v3 = v4 | 0x200;
            goto LABEL_21;
          }

          if (qword_1EE07A0A8 != -1)
          {
            swift_once();
          }

          v11 = sub_1D1E6709C();
          __swift_project_value_buffer(v11, qword_1EE07A0B0);
          v6 = sub_1D1E6707C();
          v7 = sub_1D1E6833C();
          if (!os_log_type_enabled(v6, v7))
          {
            goto LABEL_20;
          }

          v8 = swift_slowAlloc();
          *v8 = 16908544;
          v8[4] = v4;
          v9 = "Encountered a value out of range for Operational Error: '%{public}hhu for operational state cluster";
        }

        else
        {
          if (qword_1EE07A0A8 != -1)
          {
            swift_once();
          }

          v10 = sub_1D1E6709C();
          __swift_project_value_buffer(v10, qword_1EE07A0B0);
          v6 = sub_1D1E6707C();
          v7 = sub_1D1E6833C();
          if (!os_log_type_enabled(v6, v7))
          {
            goto LABEL_20;
          }

          v8 = swift_slowAlloc();
          *v8 = 16908544;
          v8[4] = v4;
          v9 = "Encountered an unknown value in the range for Cluster Operational Errors: '%{public}hhu for operational state cluster";
        }
      }

      else
      {
        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v5 = sub_1D1E6709C();
        __swift_project_value_buffer(v5, qword_1EE07A0B0);
        v6 = sub_1D1E6707C();
        v7 = sub_1D1E6833C();
        if (!os_log_type_enabled(v6, v7))
        {
          goto LABEL_20;
        }

        v8 = swift_slowAlloc();
        *v8 = 16908544;
        v8[4] = v4;
        v9 = "Encountered an unknown value in the range for General Operational Errors: '%{public}hhu for operational state cluster";
      }

      _os_log_impl(&dword_1D16EC000, v6, v7, v9, v8, 5u);
      MEMORY[0x1D3893640](v8, -1, -1);
LABEL_20:

      v3 = -256;
      goto LABEL_21;
    }

    v3 = v12 | 0x100;
  }

LABEL_21:
  *a2 = v3;
}

uint64_t StaticRVCClusterGroup.RunModeCommandError.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result)
  {
    result = sub_1D196BAF8(result);
    if (result == 10)
    {
      v4 = 266;
    }

    else
    {
      v4 = v2;
    }

    if (result == 9)
    {
      v5 = 265;
    }

    else
    {
      v5 = v4;
    }

    if (result == 7)
    {
      v6 = 263;
    }

    else
    {
      v6 = 264;
    }

    if (result == 6)
    {
      v7 = 262;
    }

    else
    {
      v7 = v6;
    }

    if (result <= 8u)
    {
      v5 = v7;
    }

    if (result == 4)
    {
      v8 = 260;
    }

    else
    {
      v8 = 261;
    }

    if (result == 3)
    {
      v9 = 259;
    }

    else
    {
      v9 = v8;
    }

    if (result == 1)
    {
      v10 = 257;
    }

    else
    {
      v10 = 258;
    }

    if (result)
    {
      v11 = v10;
    }

    else
    {
      v11 = 256;
    }

    if (result > 2u)
    {
      v11 = v9;
    }

    if (result <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v5;
    }
  }

  else
  {
    v12 = 0;
  }

  *a2 = v12;
  *(a2 + 2) = v2 == 0;
  return result;
}

uint64_t StaticRVCClusterGroup.CleanModeCommandError.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 1u)
  {
    if (!result)
    {
      v3 = 0;
      v2 = 1;
      goto LABEL_13;
    }

    if (result == 1)
    {
      v2 = 0;
      v3 = 256;
      goto LABEL_13;
    }

LABEL_12:
    v2 = 0;
    v3 = result;
    goto LABEL_13;
  }

  if (result == 2)
  {
    v2 = 0;
    v3 = 257;
    goto LABEL_13;
  }

  if (result == 3)
  {
    v2 = 0;
    v3 = 258;
    goto LABEL_13;
  }

  if (result != 64)
  {
    goto LABEL_12;
  }

  v2 = 0;
  v3 = 259;
LABEL_13:
  *a2 = v3;
  *(a2 + 2) = v2;
  return result;
}

uint64_t StaticRVCClusterGroup.OperationalErrorState.Common.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *a2 = v2;
  return result;
}

uint64_t StaticRVCClusterGroup.OperationalErrorState.RVC.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = (result - 64);
  if (v2 >= 0xF)
  {
    LOBYTE(v2) = 15;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1D19655E8()
{
  sub_1D1E6920C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1965660(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.OperationalErrorState.rawValue.getter()
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

uint64_t sub_1D1965794()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = MEMORY[0x1E69E7CC0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1D177EC90(0, *(v0 + 16) + 1, 1, v0);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1D177EC90((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  *&v1[2 * v3 + 32] = 1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1D177EC90(0, *(v1 + 2) + 1, 1, v1);
  }

  v5 = *(v1 + 2);
  v4 = *(v1 + 3);
  if (v5 >= v4 >> 1)
  {
    v1 = sub_1D177EC90((v4 > 1), v5 + 1, 1, v1);
  }

  *(v1 + 2) = v5 + 1;
  *&v1[2 * v5 + 32] = 2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1D177EC90(0, *(v1 + 2) + 1, 1, v1);
  }

  v7 = *(v1 + 2);
  v6 = *(v1 + 3);
  if (v7 >= v6 >> 1)
  {
    v1 = sub_1D177EC90((v6 > 1), v7 + 1, 1, v1);
  }

  *(v1 + 2) = v7 + 1;
  *&v1[2 * v7 + 32] = 3;
  sub_1D178D838(0, 15, 0);
  v8 = 0;
  v9 = v0;
  v10 = *(v0 + 16);
  v11 = 2 * v10;
  do
  {
    v12 = byte_1F4D653A8[v8 + 32];
    v17 = v9;
    v13 = *(v9 + 24);
    v14 = v10 + 1;
    if (v10 >= v13 >> 1)
    {
      sub_1D178D838((v13 > 1), v10 + 1, 1);
      v9 = v17;
    }

    ++v8;
    *(v9 + 16) = v14;
    v15 = v9 + v11;
    *(v15 + 32) = v12;
    *(v15 + 33) = 1;
    v11 += 2;
    v10 = v14;
  }

  while (v8 != 15);
  result = sub_1D17A4AF4(v9);
  qword_1EC647730 = v1;
  return result;
}

uint64_t static StaticRVCClusterGroup.OperationalErrorState.knownErrors.getter()
{
  if (qword_1EC642258 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D1965A2C()
{
  v1 = 6518386;
  if (*v0 != 1)
  {
    v1 = 0x726F646E6576;
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

uint64_t sub_1D1965A78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D196DED8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1965AA0(uint64_t a1)
{
  v2 = sub_1D196BBCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1965ADC(uint64_t a1)
{
  v2 = sub_1D196BBCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1965B18(uint64_t a1)
{
  v2 = sub_1D196BD1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1965B54(uint64_t a1)
{
  v2 = sub_1D196BD1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1965B90(uint64_t a1)
{
  v2 = sub_1D196BC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1965BCC(uint64_t a1)
{
  v2 = sub_1D196BC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1965C08(uint64_t a1)
{
  v2 = sub_1D196BC20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1965C44(uint64_t a1)
{
  v2 = sub_1D196BC20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticRVCClusterGroup.OperationalErrorState.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647738, &qword_1D1E868C0);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647740, &qword_1D1E868C8);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647748, &qword_1D1E868D0);
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647750, &qword_1D1E868D8);
  v12 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v14 = &v22 - v13;
  v29 = *v2;
  v15 = v2[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D196BBCC();
  sub_1D1E6930C();
  if (v15)
  {
    if (v15 == 1)
    {
      v34 = 1;
      sub_1D196BC74();
      v16 = v30;
      sub_1D1E68DFC();
      v33 = v29;
      sub_1D196BCC8();
      v17 = v25;
      sub_1D1E68F1C();
      v18 = *(v24 + 8);
      v19 = v8;
    }

    else
    {
      v35 = 2;
      sub_1D196BC20();
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
    sub_1D196BD1C();
    v16 = v30;
    sub_1D1E68DFC();
    v31 = v29;
    sub_1D196BD70();
    sub_1D1E68F1C();
    (*(v23 + 8))(v11, v9);
  }

  return (*(v12 + 8))(v14, v16);
}

uint64_t StaticRVCClusterGroup.OperationalErrorState.hash(into:)()
{
  if (!*(v0 + 1))
  {
    v1 = 0;
LABEL_6:
    MEMORY[0x1D3892850](v1);
    return sub_1D1E6922C();
  }

  if (*(v0 + 1) != 1)
  {
    v1 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1D3892850](1);
  return sub_1D1E6922C();
}

uint64_t StaticRVCClusterGroup.OperationalErrorState.hashValue.getter()
{
  v1 = *(v0 + 1);
  sub_1D1E6920C();
  if (!v1)
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x1D3892850](v2);
    goto LABEL_7;
  }

  if (v1 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1D3892850](1);
LABEL_7:
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.OperationalErrorState.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647788, &qword_1D1E868E0);
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647790, &qword_1D1E868E8);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647798, &qword_1D1E868F0);
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477A0, &unk_1D1E868F8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v13;
  v15 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D196BBCC();
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
      *v28 = &type metadata for StaticRVCClusterGroup.OperationalErrorState;
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
          sub_1D196BC74();
          v24 = v40;
          sub_1D1E68C4C();
          if (!v24)
          {
            sub_1D196BDC4();
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
        sub_1D196BC20();
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
        sub_1D196BD1C();
        v30 = v10;
        v31 = v20;
        v32 = v40;
        sub_1D1E68C4C();
        if (!v32)
        {
          sub_1D196BE18();
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

uint64_t sub_1D1966820()
{
  v1 = *(v0 + 1);
  sub_1D1E6920C();
  if (!v1)
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x1D3892850](v2);
    goto LABEL_7;
  }

  if (v1 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1D3892850](1);
LABEL_7:
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19668A4()
{
  if (!*(v0 + 1))
  {
    v1 = 0;
LABEL_6:
    MEMORY[0x1D3892850](v1);
    return sub_1D1E6922C();
  }

  if (*(v0 + 1) != 1)
  {
    v1 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1D3892850](1);
  return sub_1D1E6922C();
}

uint64_t sub_1D1966904(uint64_t a1)
{
  v2 = *(v1 + 1);
  sub_1D1E6920C();
  if (!v2)
  {
    v3 = 0;
LABEL_6:
    MEMORY[0x1D3892850](v3);
    goto LABEL_7;
  }

  if (v2 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1D3892850](1);
LABEL_7:
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.RunModeCommandError.rawValue.getter()
{
  if (v0[1] == 1)
  {
    return byte_1D1E8847A[*v0];
  }

  else
  {
    return *v0;
  }
}

unint64_t sub_1D19669E0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000015;
    v7 = 0x4C79726574746162;
    if (a1 != 10)
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6E61547265746177;
    if (a1 != 6)
    {
      v8 = 0xD000000000000010;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x726F707075736E75;
    v2 = 0x6B63757473;
    v3 = 0x4D6E694274737564;
    if (a1 != 4)
    {
      v3 = 0x466E694274737564;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x46636972656E6567;
    if (a1 != 1)
    {
      v4 = 0x4964696C61766E69;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D1966BB4(uint64_t a1)
{
  v2 = sub_1D196BF14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1966BF0(uint64_t a1)
{
  v2 = sub_1D196BF14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1966C34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D196DFE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1966C5C(uint64_t a1)
{
  v2 = sub_1D196BE6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1966C98(uint64_t a1)
{
  v2 = sub_1D196BE6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1966CD4(uint64_t a1)
{
  v2 = sub_1D196C0B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1966D10(uint64_t a1)
{
  v2 = sub_1D196C0B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1966D4C(uint64_t a1)
{
  v2 = sub_1D196C10C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1966D88(uint64_t a1)
{
  v2 = sub_1D196C10C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1966DC4(uint64_t a1)
{
  v2 = sub_1D196C208();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1966E00(uint64_t a1)
{
  v2 = sub_1D196C208();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1966E3C(uint64_t a1)
{
  v2 = sub_1D196C1B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1966E78(uint64_t a1)
{
  v2 = sub_1D196C1B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1966EB4(uint64_t a1)
{
  v2 = sub_1D196BF68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1966EF0(uint64_t a1)
{
  v2 = sub_1D196BF68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1966F2C(uint64_t a1)
{
  v2 = sub_1D196C160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1966F68(uint64_t a1)
{
  v2 = sub_1D196C160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1966FA4(uint64_t a1)
{
  v2 = sub_1D196BEC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1966FE0(uint64_t a1)
{
  v2 = sub_1D196BEC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D196701C(uint64_t a1)
{
  v2 = sub_1D196C25C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1967058(uint64_t a1)
{
  v2 = sub_1D196C25C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1967094(uint64_t a1)
{
  v2 = sub_1D196C064();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19670D0(uint64_t a1)
{
  v2 = sub_1D196C064();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D196710C(uint64_t a1)
{
  v2 = sub_1D196BFBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1967148(uint64_t a1)
{
  v2 = sub_1D196BFBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1967184(uint64_t a1)
{
  v2 = sub_1D196C010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19671C0(uint64_t a1)
{
  v2 = sub_1D196C010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticRVCClusterGroup.RunModeCommandError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477B8, &qword_1D1E86908);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477C0, &qword_1D1E86910);
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477C8, &qword_1D1E86918);
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477D0, &qword_1D1E86920);
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477D8, &qword_1D1E86928);
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v42 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477E0, &qword_1D1E86930);
  v60 = *(v13 - 8);
  v61 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v42 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477E8, &qword_1D1E86938);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v42 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477F0, &qword_1D1E86940);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v42 - v16;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477F8, &qword_1D1E86948);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v42 - v17;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647800, &qword_1D1E86950);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v42 - v18;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647808, &qword_1D1E86958);
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v42 - v19;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647810, &qword_1D1E86960);
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v21 = &v42 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647818, &qword_1D1E86968);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v42 - v24;
  v26 = *v1;
  v27 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D196BE6C();
  sub_1D1E6930C();
  if (v27 != 1)
  {
    v78[7] = 11;
    sub_1D196BEC0();
    v31 = v74;
    sub_1D1E68DFC();
    v32 = v76;
    sub_1D1E68F3C();
    (*(v75 + 8))(v31, v32);
    return (*(v23 + 8))(v25, v22);
  }

  if (v26 <= 4)
  {
    if (v26 <= 1)
    {
      if (v26)
      {
        v77[5] = 1;
        sub_1D196C208();
        v41 = v44;
        sub_1D1E68DFC();
        v35 = *(v45 + 8);
        v36 = v41;
        v37 = v77;
      }

      else
      {
        v77[4] = 0;
        sub_1D196C25C();
        sub_1D1E68DFC();
        v35 = *(v42 + 8);
        v36 = v21;
        v37 = &v75;
      }
    }

    else if (v26 == 2)
    {
      v77[6] = 2;
      sub_1D196C1B4();
      v38 = v47;
      sub_1D1E68DFC();
      v35 = *(v48 + 8);
      v36 = v38;
      v37 = v78;
    }

    else if (v26 == 3)
    {
      v77[7] = 3;
      sub_1D196C160();
      v34 = v50;
      sub_1D1E68DFC();
      v35 = *(v51 + 8);
      v36 = v34;
      v37 = &v79;
    }

    else
    {
      v78[0] = 4;
      sub_1D196C10C();
      v40 = v53;
      sub_1D1E68DFC();
      v35 = *(v54 + 8);
      v36 = v40;
      v37 = &v80;
    }

    v29 = *(v37 - 32);
    goto LABEL_26;
  }

  if (v26 > 7)
  {
    if (v26 == 8)
    {
      v78[4] = 8;
      sub_1D196BFBC();
      v28 = v65;
      sub_1D1E68DFC();
      v30 = v66;
      v29 = v67;
    }

    else if (v26 == 9)
    {
      v78[5] = 9;
      sub_1D196BF68();
      v28 = v68;
      sub_1D1E68DFC();
      v30 = v69;
      v29 = v70;
    }

    else
    {
      v78[6] = 10;
      sub_1D196BF14();
      v28 = v71;
      sub_1D1E68DFC();
      v30 = v72;
      v29 = v73;
    }

    goto LABEL_25;
  }

  if (v26 != 5)
  {
    if (v26 == 6)
    {
      v78[2] = 6;
      sub_1D196C064();
      v28 = v59;
      sub_1D1E68DFC();
      v30 = v60;
      v29 = v61;
    }

    else
    {
      v78[3] = 7;
      sub_1D196C010();
      v28 = v62;
      sub_1D1E68DFC();
      v30 = v63;
      v29 = v64;
    }

LABEL_25:
    v35 = *(v30 + 8);
    v36 = v28;
LABEL_26:
    v35(v36, v29);
    return (*(v23 + 8))(v25, v22);
  }

  v78[1] = 5;
  sub_1D196C0B8();
  v39 = v56;
  sub_1D1E68DFC();
  (*(v57 + 8))(v39, v58);
  return (*(v23 + 8))(v25, v22);
}

uint64_t StaticRVCClusterGroup.RunModeCommandError.hash(into:)()
{
  v1 = *v0;
  if (v0[1] == 1)
  {
    if (*v0 <= 4u)
    {
      if (*v0 <= 1u)
      {
        v2 = v1 != 0;
      }

      else if (v1 == 2)
      {
        v2 = 2;
      }

      else if (v1 == 3)
      {
        v2 = 3;
      }

      else
      {
        v2 = 4;
      }
    }

    else if (*v0 > 7u)
    {
      if (v1 == 8)
      {
        v2 = 8;
      }

      else if (v1 == 9)
      {
        v2 = 9;
      }

      else
      {
        v2 = 10;
      }
    }

    else if (v1 == 5)
    {
      v2 = 5;
    }

    else if (v1 == 6)
    {
      v2 = 6;
    }

    else
    {
      v2 = 7;
    }

    return MEMORY[0x1D3892850](v2);
  }

  else
  {
    MEMORY[0x1D3892850](11);
    return sub_1D1E6922C();
  }
}

uint64_t StaticRVCClusterGroup.RunModeCommandError.hashValue.getter()
{
  sub_1D1E6920C();
  StaticRVCClusterGroup.RunModeCommandError.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.RunModeCommandError.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v110 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647888, &qword_1D1E86970);
  v4 = *(v3 - 8);
  v98 = v3;
  v99 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v105 = &v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647890, &qword_1D1E86978);
  v96 = *(v6 - 8);
  v97 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v72 - v7;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647898, &qword_1D1E86980);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v101 = &v72 - v8;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478A0, &qword_1D1E86988);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v103 = &v72 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478A8, &qword_1D1E86990);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v102 = &v72 - v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478B0, &qword_1D1E86998);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v109 = &v72 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478B8, &qword_1D1E869A0);
  v87 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v108 = &v72 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478C0, &qword_1D1E869A8);
  v85 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v107 = &v72 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478C8, &qword_1D1E869B0);
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v106 = &v72 - v14;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478D0, &qword_1D1E869B8);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v100 = &v72 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478D8, &qword_1D1E869C0);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v17 = &v72 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478E0, &qword_1D1E869C8);
  v77 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478E8, &qword_1D1E869D0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v72 - v23;
  v25 = a1[3];
  v112 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D196BE6C();
  v26 = v111;
  sub_1D1E692FC();
  if (!v26)
  {
    v74 = v20;
    v73 = v18;
    v75 = v17;
    v28 = v106;
    v27 = v107;
    v30 = v108;
    v29 = v109;
    v76 = 0;
    v111 = v22;
    v31 = v110;
    v32 = v24;
    v33 = sub_1D1E68DDC();
    v34 = (2 * *(v33 + 16)) | 1;
    v113 = v33;
    v114 = v33 + 32;
    v115 = 0;
    v116 = v34;
    v35 = sub_1D18085C0();
    if (v35 == 12 || v115 != v116 >> 1)
    {
      v40 = v21;
      v41 = sub_1D1E688EC();
      swift_allocError();
      v43 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v43 = &type metadata for StaticRVCClusterGroup.RunModeCommandError;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
      swift_willThrow();
      (*(v111 + 8))(v32, v40);
    }

    else
    {
      if (v35 <= 5u)
      {
        if (v35 <= 2u)
        {
          if (v35)
          {
            if (v35 == 1)
            {
              v117 = 1;
              sub_1D196C208();
              v36 = v75;
              v37 = v24;
              v38 = v76;
              sub_1D1E68C4C();
              if (!v38)
              {
                (*(v78 + 8))(v36, v79);
                (*(v111 + 8))(v24, v21);
                swift_unknownObjectRelease();
                v39 = 1;
LABEL_28:
                v52 = 1;
                v46 = v31;
                goto LABEL_46;
              }
            }

            else
            {
              v117 = 2;
              sub_1D196C1B4();
              v65 = v100;
              v37 = v24;
              v66 = v76;
              sub_1D1E68C4C();
              if (!v66)
              {
                (*(v80 + 8))(v65, v81);
                (*(v111 + 8))(v24, v21);
                swift_unknownObjectRelease();
                v52 = 1;
                v39 = 2;
                v46 = v31;
                goto LABEL_46;
              }
            }
          }

          else
          {
            v117 = 0;
            sub_1D196C25C();
            v59 = v74;
            v37 = v24;
            v60 = v76;
            sub_1D1E68C4C();
            if (!v60)
            {
              (*(v77 + 8))(v59, v73);
              (*(v111 + 8))(v24, v21);
              swift_unknownObjectRelease();
              v39 = 0;
              goto LABEL_28;
            }
          }

          (*(v111 + 8))(v37, v21);
          goto LABEL_11;
        }

        v53 = v21;
        v47 = v111;
        if (v35 == 3)
        {
          v117 = 3;
          sub_1D196C160();
          v51 = v53;
          v48 = v24;
          v62 = v76;
          sub_1D1E68C4C();
          if (!v62)
          {
            (*(v82 + 8))(v28, v83);
            (*(v47 + 8))(v24, v53);
            swift_unknownObjectRelease();
            v52 = 1;
            v39 = 3;
            v46 = v110;
            goto LABEL_46;
          }
        }

        else
        {
          v48 = v24;
          if (v35 == 4)
          {
            v117 = 4;
            sub_1D196C10C();
            v51 = v53;
            v54 = v76;
            sub_1D1E68C4C();
            v46 = v110;
            if (!v54)
            {
              (*(v85 + 8))(v27, v84);
              (*(v47 + 8))(v24, v53);
              swift_unknownObjectRelease();
              v52 = 1;
              v39 = 4;
              goto LABEL_46;
            }
          }

          else
          {
            v117 = 5;
            sub_1D196C0B8();
            v51 = v53;
            v68 = v76;
            sub_1D1E68C4C();
            v46 = v110;
            if (!v68)
            {
              (*(v87 + 8))(v30, v86);
              (*(v47 + 8))(v24, v53);
              swift_unknownObjectRelease();
              v52 = 1;
              v39 = 5;
              goto LABEL_46;
            }
          }
        }

LABEL_40:
        (*(v47 + 8))(v48, v51);
        goto LABEL_11;
      }

      if (v35 <= 8u)
      {
        v45 = v21;
        v46 = v31;
        v47 = v111;
        v48 = v24;
        if (v35 == 6)
        {
          v117 = 6;
          sub_1D196C064();
          v51 = v45;
          v61 = v76;
          sub_1D1E68C4C();
          if (!v61)
          {
            (*(v88 + 8))(v29, v89);
            (*(v47 + 8))(v24, v45);
            swift_unknownObjectRelease();
            v52 = 1;
            v39 = 6;
            goto LABEL_46;
          }
        }

        else
        {
          v49 = v76;
          if (v35 == 7)
          {
            v117 = 7;
            sub_1D196C010();
            v50 = v102;
            v51 = v45;
            sub_1D1E68C4C();
            if (!v49)
            {
              (*(v90 + 8))(v50, v91);
              (*(v47 + 8))(v48, v45);
              swift_unknownObjectRelease();
              v52 = 1;
              v39 = 7;
LABEL_46:
              *v46 = v39;
              v46[1] = v52;
              return __swift_destroy_boxed_opaque_existential_1(v112);
            }
          }

          else
          {
            v117 = 8;
            sub_1D196BFBC();
            v67 = v103;
            v51 = v45;
            sub_1D1E68C4C();
            if (!v49)
            {
              (*(v92 + 8))(v67, v93);
              (*(v47 + 8))(v48, v45);
              swift_unknownObjectRelease();
              v52 = 1;
              v39 = 8;
              goto LABEL_46;
            }
          }
        }

        goto LABEL_40;
      }

      v46 = v31;
      v55 = v111;
      v56 = v24;
      if (v35 == 9)
      {
        v117 = 9;
        sub_1D196BF68();
        v63 = v101;
        v64 = v76;
        sub_1D1E68C4C();
        if (!v64)
        {
          (*(v94 + 8))(v63, v95);
          (*(v55 + 8))(v24, v21);
          swift_unknownObjectRelease();
          v52 = 1;
          v39 = 9;
          goto LABEL_46;
        }
      }

      else
      {
        v57 = v76;
        if (v35 == 10)
        {
          v117 = 10;
          sub_1D196BF14();
          v58 = v104;
          sub_1D1E68C4C();
          if (!v57)
          {
            (*(v96 + 8))(v58, v97);
            (*(v55 + 8))(v56, v21);
            swift_unknownObjectRelease();
            v52 = 1;
            v39 = 10;
            goto LABEL_46;
          }
        }

        else
        {
          v117 = 11;
          sub_1D196BEC0();
          v69 = v105;
          sub_1D1E68C4C();
          if (!v57)
          {
            v70 = v21;
            v71 = v98;
            v39 = sub_1D1E68D9C();
            (*(v99 + 8))(v69, v71);
            (*(v55 + 8))(v56, v70);
            swift_unknownObjectRelease();
            v52 = 0;
            goto LABEL_46;
          }
        }
      }

      (*(v55 + 8))(v56, v21);
    }

LABEL_11:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v112);
}

uint64_t sub_1D1968F98()
{
  sub_1D1E6920C();
  StaticRVCClusterGroup.RunModeCommandError.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1968FF0(uint64_t a1)
{
  sub_1D1E6920C();
  StaticRVCClusterGroup.RunModeCommandError.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.CleanModeCommandError.rawValue.getter()
{
  if (v0[1])
  {
    return 0x40030201u >> (8 * *v0);
  }

  else
  {
    return *v0;
  }
}

BOOL static StaticRVCClusterGroup.CleanModeCommandError.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[1] != 1)
  {
    if ((a2[1] & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*a1 <= 1u)
  {
    if (!*a1)
    {
      if (*a2)
      {
        v4 = 0;
      }

      else
      {
        v4 = a2[1];
      }

      return (v4 & 1) != 0;
    }

    if (v3 == 1)
    {
      v7 = a2[1];
    }

    else
    {
      v7 = 0;
    }

    return (v7 & 1) != 0;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      v6 = a2[1];
    }

    else
    {
      v6 = 0;
    }

    return (v6 & 1) != 0;
  }

  if (v3 > 2)
  {
    v8 = a2[1];
  }

  else
  {
    v8 = 0;
  }

  return (v8 & 1) != 0;
}

uint64_t sub_1D1969128(uint64_t a1)
{
  v2 = sub_1D196C358();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1969164(uint64_t a1)
{
  v2 = sub_1D196C358();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19691A0()
{
  v1 = *v0;
  v2 = 0x726F707075736E75;
  v3 = 0x4964696C61766E69;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x46636972656E6567;
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

uint64_t sub_1D1969264@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D196E3E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D196928C(uint64_t a1)
{
  v2 = sub_1D196C2B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19692C8(uint64_t a1)
{
  v2 = sub_1D196C2B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1969304(uint64_t a1)
{
  v2 = sub_1D196C400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1969340(uint64_t a1)
{
  v2 = sub_1D196C400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D196937C(uint64_t a1)
{
  v2 = sub_1D196C3AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19693B8(uint64_t a1)
{
  v2 = sub_1D196C3AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19693F4(uint64_t a1)
{
  v2 = sub_1D196C304();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1969430(uint64_t a1)
{
  v2 = sub_1D196C304();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D196946C(uint64_t a1)
{
  v2 = sub_1D196C454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19694A8(uint64_t a1)
{
  v2 = sub_1D196C454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticRVCClusterGroup.CleanModeCommandError.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478F0, &qword_1D1E869D8);
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478F8, &qword_1D1E869E0);
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647900, &qword_1D1E869E8);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v28 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647908, &qword_1D1E869F0);
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647910, &qword_1D1E869F8);
  v29 = *(v12 - 8);
  v30 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647918, &qword_1D1E86A00);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  v19 = *v2;
  v20 = v2[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D196C2B0();
  sub_1D1E6930C();
  if (v20 != 1)
  {
    v47 = 4;
    sub_1D196C304();
    v22 = v40;
    sub_1D1E68DFC();
    v23 = v42;
    sub_1D1E68F3C();
    (*(v41 + 8))(v22, v23);
    return (*(v16 + 8))(v18, v15);
  }

  v21 = v15;
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v45 = 2;
      sub_1D196C3AC();
      v25 = v34;
      sub_1D1E68DFC();
      v27 = v35;
      v26 = v36;
    }

    else
    {
      v46 = 3;
      sub_1D196C358();
      v25 = v37;
      sub_1D1E68DFC();
      v27 = v38;
      v26 = v39;
    }

    goto LABEL_10;
  }

  if (v19)
  {
    v44 = 1;
    sub_1D196C400();
    v25 = v31;
    sub_1D1E68DFC();
    v27 = v32;
    v26 = v33;
LABEL_10:
    (*(v27 + 8))(v25, v26);
    return (*(v16 + 8))(v18, v21);
  }

  v43 = 0;
  sub_1D196C454();
  sub_1D1E68DFC();
  (*(v29 + 8))(v14, v30);
  return (*(v16 + 8))(v18, v21);
}

uint64_t StaticRVCClusterGroup.CleanModeCommandError.hash(into:)()
{
  v1 = *v0;
  if (v0[1] == 1)
  {
    if (*v0 > 1u)
    {
      if (v1 == 2)
      {
        v2 = 2;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = v1 != 0;
    }

    return MEMORY[0x1D3892850](v2);
  }

  else
  {
    MEMORY[0x1D3892850](4);
    return sub_1D1E6922C();
  }
}

uint64_t StaticRVCClusterGroup.CleanModeCommandError.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  if (v2 == 1)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        MEMORY[0x1D3892850](2);
      }

      else
      {
        MEMORY[0x1D3892850](3);
      }
    }

    else if (v1)
    {
      MEMORY[0x1D3892850](1);
    }

    else
    {
      MEMORY[0x1D3892850](0);
    }
  }

  else
  {
    MEMORY[0x1D3892850](4);
    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.CleanModeCommandError.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647950, &qword_1D1E86A08);
  v50 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v40 - v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647958, &qword_1D1E86A10);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v40 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647960, &qword_1D1E86A18);
  v43 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v52 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647968, &qword_1D1E86A20);
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647970, &qword_1D1E86A28);
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647978, &qword_1D1E86A30);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v16 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D196C2B0();
  v17 = v56;
  sub_1D1E692FC();
  if (!v17)
  {
    v18 = v11;
    v41 = v9;
    v20 = v52;
    v19 = v53;
    v56 = v13;
    v21 = v54;
    v22 = sub_1D1E68DDC();
    v23 = (2 * *(v22 + 16)) | 1;
    v57 = v22;
    v58 = v22 + 32;
    v59 = 0;
    v60 = v23;
    v24 = sub_1D18085CC();
    if (v24 != 5 && v59 == v60 >> 1)
    {
      if (v24 <= 1u)
      {
        if (v24)
        {
          v61 = 1;
          sub_1D196C400();
          sub_1D1E68C4C();
          v36 = v56;
          (*(v44 + 8))(v8, v45);
          (*(v36 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v38 = 1;
        }

        else
        {
          v61 = 0;
          sub_1D196C454();
          v31 = v18;
          sub_1D1E68C4C();
          v32 = v56;
          (*(v42 + 8))(v31, v41);
          (*(v32 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v38 = 0;
        }

        v37 = 1;
      }

      else
      {
        if (v24 != 2)
        {
          if (v24 == 3)
          {
            v61 = 3;
            sub_1D196C358();
            sub_1D1E68C4C();
            v25 = v56;
            (*(v47 + 8))(v19, v49);
            (*(v25 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v37 = 1;
            v38 = 3;
          }

          else
          {
            v61 = 4;
            sub_1D196C304();
            v33 = v51;
            sub_1D1E68C4C();
            v34 = v56;
            v35 = v48;
            v39 = sub_1D1E68D9C();
            (*(v50 + 8))(v33, v35);
            (*(v34 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v38 = v39;
            v37 = 0;
          }

          v21 = v54;
          v29 = v55;
          goto LABEL_19;
        }

        v61 = 2;
        sub_1D196C3AC();
        sub_1D1E68C4C();
        (*(v43 + 8))(v20, v46);
        (*(v56 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v37 = 1;
        v38 = 2;
      }

      v29 = v55;
LABEL_19:
      *v21 = v38;
      v21[1] = v37;
      return __swift_destroy_boxed_opaque_existential_1(v29);
    }

    v26 = sub_1D1E688EC();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
    *v28 = &type metadata for StaticRVCClusterGroup.CleanModeCommandError;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    (*(v56 + 8))(v15, v12);
    swift_unknownObjectRelease();
  }

  v29 = v55;
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

BOOL sub_1D196A3A4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[1] != 1)
  {
    if ((a2[1] & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*a1 > 1u)
  {
    if (v2 != 2)
    {
      if (v3 > 2)
      {
        v7 = a2[1];
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    v4 = v3 == 2;
  }

  else if (*a1)
  {
    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = a2[1];
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t sub_1D196A418()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  if (v2 == 1)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        MEMORY[0x1D3892850](2);
      }

      else
      {
        MEMORY[0x1D3892850](3);
      }
    }

    else if (v1)
    {
      MEMORY[0x1D3892850](1);
    }

    else
    {
      MEMORY[0x1D3892850](0);
    }
  }

  else
  {
    MEMORY[0x1D3892850](4);
    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D196A4C0()
{
  v1 = *v0;
  if (v0[1] == 1)
  {
    if (*v0 > 1u)
    {
      if (v1 == 2)
      {
        v2 = 2;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = v1 != 0;
    }

    return MEMORY[0x1D3892850](v2);
  }

  else
  {
    MEMORY[0x1D3892850](4);
    return sub_1D1E6922C();
  }
}

uint64_t sub_1D196A53C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1D1E6920C();
  if (v3 == 1)
  {
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        MEMORY[0x1D3892850](2);
      }

      else
      {
        MEMORY[0x1D3892850](3);
      }
    }

    else if (v2)
    {
      MEMORY[0x1D3892850](1);
    }

    else
    {
      MEMORY[0x1D3892850](0);
    }
  }

  else
  {
    MEMORY[0x1D3892850](4);
    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D196A610(uint64_t a1)
{
  v3 = *v1;
  if (v1[1])
  {
    if (v1[1] == 1)
    {
      switch(*v1)
      {
        case 1u:
        case 2u:
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
          return sub_1D196A9CC(a1);
        case 9u:
          v3 = static String.hfLocalized(_:)(0xD000000000000043, 0x80000001D1EBED00);
          v7 = "MatterCommandError-RVC-OperationalState-CannotReachTargetArea-Description";
          goto LABEL_15;
        case 0xAu:
          v3 = static String.hfLocalized(_:)(0xD000000000000040, 0x80000001D1EBEC60);
          v8 = "erTankFull-Title";
          v9 = 0xD000000000000046;
          break;
        case 0xBu:
          v3 = static String.hfLocalized(_:)(0xD000000000000043, 0x80000001D1EBEBC0);
          v7 = "MatterCommandError-RVC-OperationalState-DirtyWaterTankMissing-Description";
          goto LABEL_15;
        case 0xCu:
          v3 = static String.hfLocalized(_:)(0xD00000000000003ALL, 0x80000001D1EBEB30);
          v8 = "alState-WheelsJammed-Title";
          v9 = 0xD000000000000040;
          break;
        case 0xDu:
          v3 = static String.hfLocalized(_:)(0xD000000000000039, 0x80000001D1EBEAB0);
          v8 = "alState-BrushJammed-Title";
          v9 = 0xD00000000000003FLL;
          break;
        case 0xEu:
          v3 = static String.hfLocalized(_:)(0xD000000000000046, 0x80000001D1EBEA10);
          v4 = "MatterCommandError-RVC-OperationalState-NavigationSensorObscured-Description";
          goto LABEL_11;
        default:
          v3 = static String.hfLocalized(_:)(0xD000000000000046, 0x80000001D1EBEDA0);
          v4 = "MatterCommandError-RVC-OperationalState-FailedToFindChargingDock-Description";
LABEL_11:
          v8 = (v4 - 32);
          v9 = 0xD00000000000004CLL;
          break;
      }

LABEL_16:
      sub_1D1A15B88(v9, v8 | 0x8000000000000000);
      return v3;
    }
  }

  else if (*v1 <= 1u)
  {
    if (!*v1)
    {
      return v3;
    }

    v3 = static String.hfLocalized(_:)(0xD000000000000043, 0x80000001D1EBEE40);
    v7 = "MatterCommandError-RVC-OperationalState-UnableToStartOrResume-Description";
LABEL_15:
    v8 = (v7 - 32);
    v9 = 0xD000000000000049;
    goto LABEL_16;
  }

  type metadata accessor for MatterCommandError(0);
  sub_1D196E660();
  v5 = swift_allocError();
  sub_1D196E6B8(a1, v6);
  v3 = sub_1D1A1ECDC();

  return v3;
}

uint64_t sub_1D196A9CC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v48 - v13;
  v15 = type metadata accessor for StaticRVCClusterGroup(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[1] != 1)
  {
    goto LABEL_16;
  }

  v20 = *v1;
  if (v20 <= 4)
  {
    if (*v1 > 1u)
    {
      if (v20 != 2)
      {
        if (v20 != 3)
        {
          v21 = static String.hfLocalized(_:)(0xD000000000000033, 0x80000001D1EBF2D0);
          v22 = "MatterCommandError-RVC-RunMode-DustBinMissing-Description";
          goto LABEL_22;
        }

        v21 = static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EBF350);
        v23 = "or-RVC-RunMode-Stuck-Title";
        v24 = 0xD000000000000030;
        goto LABEL_23;
      }

      v29 = v17;
      v30 = type metadata accessor for MatterCommandError(0);
      sub_1D1741C08(a1 + *(v30 + 32), v6, &qword_1EC644780, &qword_1D1E91AA0);
      v31 = type metadata accessor for StaticEndpoint(0);
      if ((*(*(v31 - 8) + 48))(v6, 1, v31) == 1)
      {
        v32 = &qword_1EC644780;
        v33 = &qword_1D1E91AA0;
        v34 = v6;
      }

      else
      {
        sub_1D1741C08(&v6[*(v31 + 40)], v12, &qword_1EC644778, &unk_1D1E75B10);
        sub_1D196E71C(v6, type metadata accessor for StaticEndpoint);
        if ((*(v16 + 48))(v12, 1, v29) != 1)
        {
          v43 = *&v12[*(v29 + 32)];
          sub_1D196E71C(v12, type metadata accessor for StaticRVCClusterGroup);
          v48[6] = v43;
          return sub_1D196A610(a1);
        }

        v32 = &qword_1EC644778;
        v33 = &unk_1D1E75B10;
        v34 = v12;
      }

      sub_1D1741A30(v34, v32, v33);
      sub_1D196E660();
      v25 = swift_allocError();
      sub_1D196E6B8(a1, v41);
      v27 = sub_1D1A1ECE0();
LABEL_32:
      v42 = v27;

      return v42;
    }

    if (!*v1)
    {
      type metadata accessor for MatterCommandError(0);
      sub_1D196E660();
      v25 = swift_allocError();
      sub_1D196E6B8(a1, v26);
      v27 = sub_1D1A1ECE0();
      goto LABEL_32;
    }

LABEL_16:
    static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBEF10);
    return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBEEE0);
  }

  if (*v1 <= 7u)
  {
    if (v20 != 5)
    {
      if (v20 == 6)
      {
        v21 = static String.hfLocalized(_:)(0xD000000000000033, 0x80000001D1EBF1D0);
        v22 = "MatterCommandError-RVC-RunMode-WaterTankEmpty-Description";
LABEL_22:
        v23 = (v22 - 32);
        v24 = 0xD000000000000039;
        goto LABEL_23;
      }

      v21 = static String.hfLocalized(_:)(0xD00000000000002DLL, 0x80000001D1EBF160);
      v35 = "MatterCommandError-RVC-WaterTankMissing-Description";
LABEL_25:
      v36 = (v35 - 32) | 0x8000000000000000;
      v24 = 0xD000000000000033;
      goto LABEL_26;
    }

    v21 = static String.hfLocalized(_:)(0xD000000000000030, 0x80000001D1EBF250);
    v23 = "ustBinFull-Title";
    v24 = 0xD000000000000036;
LABEL_23:
    v36 = v23 | 0x8000000000000000;
LABEL_26:
    sub_1D1A15B88(v24, v36);
    return v21;
  }

  if (v20 == 8)
  {
    v21 = static String.hfLocalized(_:)(0xD00000000000002DLL, 0x80000001D1EBF0F0);
    v35 = "MatterCommandError-RVC-WaterTankLidOpen-Description";
    goto LABEL_25;
  }

  if (v20 == 9)
  {
    v21 = static String.hfLocalized(_:)(0xD000000000000032, 0x80000001D1EBF070);
    v23 = "ngPadMissing-Title";
    v24 = 0xD000000000000038;
    goto LABEL_23;
  }

  v37 = v17;
  v38 = static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EBEF40);
  v39 = type metadata accessor for MatterCommandError(0);
  sub_1D1741C08(a1 + *(v39 + 32), v8, &qword_1EC644780, &qword_1D1E91AA0);
  v40 = type metadata accessor for StaticEndpoint(0);
  if ((*(*(v40 - 8) + 48))(v8, 1, v40) == 1)
  {
    sub_1D1741A30(v8, &qword_1EC644780, &qword_1D1E91AA0);
    (*(v16 + 56))(v14, 1, 1, v37);
  }

  else
  {
    sub_1D1741C08(&v8[*(v40 + 40)], v14, &qword_1EC644778, &unk_1D1E75B10);
    sub_1D196E71C(v8, type metadata accessor for StaticEndpoint);
    if ((*(v16 + 48))(v14, 1, v37) != 1)
    {
      sub_1D1963080(v14, v19);
      v44 = v19[*(v37 + 20)];
      if ((v44 - 5) >= 2)
      {
        if (v44 == 3 && (v47 = &v19[*(v37 + 32)], v47[1] == 1) && !*v47)
        {
          v46 = "w-Undocked-Description";
          v45 = 0xD00000000000003ALL;
        }

        else
        {
          v46 = "w-UnknownState-Description";
          v45 = 0xD000000000000036;
        }
      }

      else
      {
        v45 = 0xD000000000000034;
        v46 = "w-CantFindDock-Description";
      }

      sub_1D1A15B88(v45, v46 | 0x8000000000000000);
      sub_1D196E71C(v19, type metadata accessor for StaticRVCClusterGroup);
      return v38;
    }
  }

  sub_1D1741A30(v14, &qword_1EC644778, &unk_1D1E75B10);
  sub_1D1A15B88(0xD00000000000003ALL, 0x80000001D1EBEF70);
  return v38;
}

uint64_t sub_1D196B1D4(uint64_t a1)
{
  if (v1[1] != 1)
  {
    goto LABEL_4;
  }

  v2 = *v1;
  if (v2 <= 1)
  {
    if (*v1)
    {
LABEL_4:
      static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBEF10);
      return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBEEE0);
    }

    goto LABEL_6;
  }

  if (v2 == 2)
  {
LABEL_6:
    type metadata accessor for MatterCommandError(0);
    sub_1D196E660();
    v5 = swift_allocError();
    sub_1D196E6B8(a1, v6);
    v7 = sub_1D1A1DE40(v5, v2 | 0x100);

    return v7;
  }

  v8 = static String.hfLocalized(_:)(0xD000000000000039, 0x80000001D1EBF3C0);
  sub_1D1A15B88(0xD00000000000003FLL, 0x80000001D1EBF400);
  return v8;
}

unint64_t StaticRVCClusterGroup.CleanModeCommandError.description.getter()
{
  if (v0[1] == 1)
  {
    v1 = 0x726F707075736E75;
    v2 = 0x4964696C61766E69;
    if (*v0 != 2)
    {
      v2 = 0xD000000000000012;
    }

    if (*v0)
    {
      v1 = 0x46636972656E6567;
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

  else
  {
    v4 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v4);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return 0x286E776F6E6B6E75;
  }
}

unint64_t StaticRVCClusterGroup.RunModeCommandError.description.getter()
{
  v1 = *v0;
  if (v0[1] == 1)
  {
    if (*v0 <= 4u)
    {
      v8 = 0x726F707075736E75;
      v9 = 0x4964696C61766E69;
      v10 = 0x6B63757473;
      if (v1 != 3)
      {
        v10 = 0x4D6E694274737564;
      }

      if (v1 != 2)
      {
        v9 = v10;
      }

      if (*v0)
      {
        v8 = 0x46636972656E6567;
      }

      if (*v0 <= 1u)
      {
        return v8;
      }

      else
      {
        return v9;
      }
    }

    else
    {
      v2 = 0xD000000000000010;
      v3 = 0xD000000000000015;
      if (v1 != 9)
      {
        v3 = 0x4C79726574746162;
      }

      if (v1 != 8)
      {
        v2 = v3;
      }

      v4 = 0x466E694274737564;
      v5 = 0x6E61547265746177;
      if (v1 != 6)
      {
        v5 = 0xD000000000000010;
      }

      if (v1 != 5)
      {
        v4 = v5;
      }

      if (*v0 <= 7u)
      {
        return v4;
      }

      else
      {
        return v2;
      }
    }
  }

  else
  {
    v7 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v7);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return 0x286E776F6E6B6E75;
  }
}

uint64_t StaticRVCClusterGroup.OperationalErrorState.description.getter()
{
  if (v0[1])
  {
    if (v0[1] == 1)
    {
      result = 0x6B63757473;
      switch(*v0)
      {
        case 1u:
          return result;
        case 2u:
          result = 0x4D6E694274737564;
          break;
        case 3u:
          result = 0x466E694274737564;
          break;
        case 4u:
          result = 0x6E61547265746177;
          break;
        case 5u:
        case 6u:
          result = 0xD000000000000010;
          break;
        case 7u:
          result = 0xD000000000000015;
          break;
        case 8u:
          result = 0x6574746142776F6CLL;
          break;
        case 9u:
          result = 0xD000000000000015;
          break;
        case 0xAu:
          result = 0xD000000000000012;
          break;
        case 0xBu:
          result = 0xD000000000000015;
          break;
        case 0xCu:
          result = 0x614A736C65656877;
          break;
        case 0xDu:
          result = 0x6D614A6873757262;
          break;
        default:
          result = 0xD000000000000018;
          break;
      }
    }

    else
    {
      v4 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v4);

      return 0x726F646E6576;
    }
  }

  else
  {
    v2 = 0x726F7272456F6ELL;
    v3 = 0xD000000000000019;
    if (*v0 != 2)
    {
      v3 = 0xD000000000000015;
    }

    if (*v0)
    {
      v2 = 0xD000000000000015;
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

  return result;
}

BOOL _s13HomeDataModel21StaticRVCClusterGroupV19RunModeCommandErrorO2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  if (a1[1] != 1)
  {
    if ((a2[1] & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*a1 <= 4u)
  {
    if (*a1 <= 1u)
    {
      if (*a1)
      {
        if (v3 != 1)
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }

      else
      {
        if (*a2)
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }
    }

    else if (v2 == 2)
    {
      if (v3 != 2)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else if (v2 == 3)
    {
      if (v3 != 3)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v3 != 4)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*a1 <= 7u)
  {
    if (v2 == 5)
    {
      if (v3 != 5)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == 6)
      {
        if (v3 != 6)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (v3 != 7)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 8)
  {
    if (v3 != 8)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v2 == 9)
  {
    if (v3 != 9)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v3 <= 9)
  {
    v4 = 0;
  }

  return (v4 & 1) != 0;
}

uint64_t sub_1D196BAF8(unsigned __int8 a1)
{
  if (a1 <= 0x42u)
  {
    if (a1 <= 2u)
    {
      if (a1 == 1)
      {
        return 0;
      }

      if (a1 == 2)
      {
        return 1;
      }
    }

    else
    {
      switch(a1)
      {
        case 3u:
          return 2;
        case 0x41u:
          return 3;
        case 0x42u:
          return 4;
      }
    }
  }

  else if (a1 > 0x45u)
  {
    switch(a1)
    {
      case 'F':
        return 8;
      case 'G':
        return 9;
      case 'H':
        return 10;
    }
  }

  else
  {
    switch(a1)
    {
      case 'C':
        return 5;
      case 'D':
        return 6;
      case 'E':
        return 7;
    }
  }

  return 11;
}

unint64_t sub_1D196BBCC()
{
  result = qword_1EC647758;
  if (!qword_1EC647758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647758);
  }

  return result;
}

unint64_t sub_1D196BC20()
{
  result = qword_1EC647760;
  if (!qword_1EC647760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647760);
  }

  return result;
}

unint64_t sub_1D196BC74()
{
  result = qword_1EC647768;
  if (!qword_1EC647768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647768);
  }

  return result;
}

unint64_t sub_1D196BCC8()
{
  result = qword_1EC647770;
  if (!qword_1EC647770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647770);
  }

  return result;
}

unint64_t sub_1D196BD1C()
{
  result = qword_1EC647778;
  if (!qword_1EC647778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647778);
  }

  return result;
}

unint64_t sub_1D196BD70()
{
  result = qword_1EC647780;
  if (!qword_1EC647780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647780);
  }

  return result;
}

unint64_t sub_1D196BDC4()
{
  result = qword_1EC6477A8;
  if (!qword_1EC6477A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6477A8);
  }

  return result;
}

unint64_t sub_1D196BE18()
{
  result = qword_1EC6477B0;
  if (!qword_1EC6477B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6477B0);
  }

  return result;
}

unint64_t sub_1D196BE6C()
{
  result = qword_1EC647820;
  if (!qword_1EC647820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647820);
  }

  return result;
}

unint64_t sub_1D196BEC0()
{
  result = qword_1EC647828;
  if (!qword_1EC647828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647828);
  }

  return result;
}

unint64_t sub_1D196BF14()
{
  result = qword_1EC647830;
  if (!qword_1EC647830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647830);
  }

  return result;
}

unint64_t sub_1D196BF68()
{
  result = qword_1EC647838;
  if (!qword_1EC647838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647838);
  }

  return result;
}

unint64_t sub_1D196BFBC()
{
  result = qword_1EC647840;
  if (!qword_1EC647840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647840);
  }

  return result;
}

unint64_t sub_1D196C010()
{
  result = qword_1EC647848;
  if (!qword_1EC647848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647848);
  }

  return result;
}

unint64_t sub_1D196C064()
{
  result = qword_1EC647850;
  if (!qword_1EC647850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647850);
  }

  return result;
}

unint64_t sub_1D196C0B8()
{
  result = qword_1EC647858;
  if (!qword_1EC647858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647858);
  }

  return result;
}

unint64_t sub_1D196C10C()
{
  result = qword_1EC647860;
  if (!qword_1EC647860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647860);
  }

  return result;
}

unint64_t sub_1D196C160()
{
  result = qword_1EC647868;
  if (!qword_1EC647868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647868);
  }

  return result;
}

unint64_t sub_1D196C1B4()
{
  result = qword_1EC647870;
  if (!qword_1EC647870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647870);
  }

  return result;
}

unint64_t sub_1D196C208()
{
  result = qword_1EC647878;
  if (!qword_1EC647878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647878);
  }

  return result;
}

unint64_t sub_1D196C25C()
{
  result = qword_1EC647880;
  if (!qword_1EC647880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647880);
  }

  return result;
}

unint64_t sub_1D196C2B0()
{
  result = qword_1EC647920;
  if (!qword_1EC647920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647920);
  }

  return result;
}

unint64_t sub_1D196C304()
{
  result = qword_1EC647928;
  if (!qword_1EC647928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647928);
  }

  return result;
}

unint64_t sub_1D196C358()
{
  result = qword_1EC647930;
  if (!qword_1EC647930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647930);
  }

  return result;
}

unint64_t sub_1D196C3AC()
{
  result = qword_1EC647938;
  if (!qword_1EC647938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647938);
  }

  return result;
}

unint64_t sub_1D196C400()
{
  result = qword_1EC647940;
  if (!qword_1EC647940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647940);
  }

  return result;
}

unint64_t sub_1D196C454()
{
  result = qword_1EC647948;
  if (!qword_1EC647948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647948);
  }

  return result;
}

unint64_t sub_1D196C4AC()
{
  result = qword_1EC647980;
  if (!qword_1EC647980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647980);
  }

  return result;
}

unint64_t sub_1D196C534()
{
  result = qword_1EC647998;
  if (!qword_1EC647998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647998);
  }

  return result;
}

unint64_t sub_1D196C5BC()
{
  result = qword_1EC6479B0;
  if (!qword_1EC6479B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479B0);
  }

  return result;
}

unint64_t sub_1D196C614()
{
  result = qword_1EC6479B8;
  if (!qword_1EC6479B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479B8);
  }

  return result;
}

unint64_t sub_1D196C66C()
{
  result = qword_1EC6479C0;
  if (!qword_1EC6479C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479C0);
  }

  return result;
}

uint64_t _s21OperationalErrorStateOwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t _s21OperationalErrorStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s21OperationalErrorStateO3RVCOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
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

  return (v8 + 1);
}

uint64_t _s21OperationalErrorStateO3RVCOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D196C9A4(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *sub_1D196CA28(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

unint64_t sub_1D196CC4C()
{
  result = qword_1EC6479C8;
  if (!qword_1EC6479C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479C8);
  }

  return result;
}

unint64_t sub_1D196CCA4()
{
  result = qword_1EC6479D0;
  if (!qword_1EC6479D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479D0);
  }

  return result;
}

unint64_t sub_1D196CCFC()
{
  result = qword_1EC6479D8;
  if (!qword_1EC6479D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479D8);
  }

  return result;
}

unint64_t sub_1D196CD54()
{
  result = qword_1EC6479E0;
  if (!qword_1EC6479E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479E0);
  }

  return result;
}

unint64_t sub_1D196CDAC()
{
  result = qword_1EC6479E8;
  if (!qword_1EC6479E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479E8);
  }

  return result;
}

unint64_t sub_1D196CE04()
{
  result = qword_1EC6479F0;
  if (!qword_1EC6479F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479F0);
  }

  return result;
}

unint64_t sub_1D196CE5C()
{
  result = qword_1EC6479F8;
  if (!qword_1EC6479F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479F8);
  }

  return result;
}

unint64_t sub_1D196CEB4()
{
  result = qword_1EC647A00;
  if (!qword_1EC647A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A00);
  }

  return result;
}

unint64_t sub_1D196CF0C()
{
  result = qword_1EC647A08;
  if (!qword_1EC647A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A08);
  }

  return result;
}

unint64_t sub_1D196CF64()
{
  result = qword_1EC647A10;
  if (!qword_1EC647A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A10);
  }

  return result;
}

unint64_t sub_1D196CFBC()
{
  result = qword_1EC647A18;
  if (!qword_1EC647A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A18);
  }

  return result;
}

unint64_t sub_1D196D014()
{
  result = qword_1EC647A20;
  if (!qword_1EC647A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A20);
  }

  return result;
}

unint64_t sub_1D196D06C()
{
  result = qword_1EC647A28;
  if (!qword_1EC647A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A28);
  }

  return result;
}

unint64_t sub_1D196D0C4()
{
  result = qword_1EC647A30;
  if (!qword_1EC647A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A30);
  }

  return result;
}

unint64_t sub_1D196D11C()
{
  result = qword_1EC647A38;
  if (!qword_1EC647A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A38);
  }

  return result;
}

unint64_t sub_1D196D174()
{
  result = qword_1EC647A40;
  if (!qword_1EC647A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A40);
  }

  return result;
}

unint64_t sub_1D196D1CC()
{
  result = qword_1EC647A48;
  if (!qword_1EC647A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A48);
  }

  return result;
}

unint64_t sub_1D196D224()
{
  result = qword_1EC647A50;
  if (!qword_1EC647A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A50);
  }

  return result;
}

unint64_t sub_1D196D27C()
{
  result = qword_1EC647A58;
  if (!qword_1EC647A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A58);
  }

  return result;
}

unint64_t sub_1D196D2D4()
{
  result = qword_1EC647A60;
  if (!qword_1EC647A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A60);
  }

  return result;
}

unint64_t sub_1D196D32C()
{
  result = qword_1EC647A68;
  if (!qword_1EC647A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A68);
  }

  return result;
}

unint64_t sub_1D196D384()
{
  result = qword_1EC647A70;
  if (!qword_1EC647A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A70);
  }

  return result;
}

unint64_t sub_1D196D3DC()
{
  result = qword_1EC647A78;
  if (!qword_1EC647A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A78);
  }

  return result;
}

unint64_t sub_1D196D434()
{
  result = qword_1EC647A80;
  if (!qword_1EC647A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A80);
  }

  return result;
}

unint64_t sub_1D196D48C()
{
  result = qword_1EC647A88;
  if (!qword_1EC647A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A88);
  }

  return result;
}

unint64_t sub_1D196D4E4()
{
  result = qword_1EC647A90;
  if (!qword_1EC647A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A90);
  }

  return result;
}

unint64_t sub_1D196D53C()
{
  result = qword_1EC647A98;
  if (!qword_1EC647A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A98);
  }

  return result;
}

unint64_t sub_1D196D594()
{
  result = qword_1EC647AA0;
  if (!qword_1EC647AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AA0);
  }

  return result;
}

unint64_t sub_1D196D5EC()
{
  result = qword_1EC647AA8;
  if (!qword_1EC647AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AA8);
  }

  return result;
}

unint64_t sub_1D196D644()
{
  result = qword_1EC647AB0;
  if (!qword_1EC647AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AB0);
  }

  return result;
}

unint64_t sub_1D196D69C()
{
  result = qword_1EC647AB8;
  if (!qword_1EC647AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AB8);
  }

  return result;
}

unint64_t sub_1D196D6F4()
{
  result = qword_1EC647AC0;
  if (!qword_1EC647AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AC0);
  }

  return result;
}

unint64_t sub_1D196D74C()
{
  result = qword_1EC647AC8;
  if (!qword_1EC647AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AC8);
  }

  return result;
}

unint64_t sub_1D196D7A4()
{
  result = qword_1EC647AD0;
  if (!qword_1EC647AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AD0);
  }

  return result;
}

unint64_t sub_1D196D7FC()
{
  result = qword_1EC647AD8;
  if (!qword_1EC647AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AD8);
  }

  return result;
}

unint64_t sub_1D196D854()
{
  result = qword_1EC647AE0;
  if (!qword_1EC647AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AE0);
  }

  return result;
}

unint64_t sub_1D196D8AC()
{
  result = qword_1EC647AE8;
  if (!qword_1EC647AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AE8);
  }

  return result;
}

unint64_t sub_1D196D904()
{
  result = qword_1EC647AF0;
  if (!qword_1EC647AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AF0);
  }

  return result;
}

unint64_t sub_1D196D95C()
{
  result = qword_1EC647AF8;
  if (!qword_1EC647AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AF8);
  }

  return result;
}

unint64_t sub_1D196D9B4()
{
  result = qword_1EC647B00;
  if (!qword_1EC647B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B00);
  }

  return result;
}

unint64_t sub_1D196DA0C()
{
  result = qword_1EC647B08;
  if (!qword_1EC647B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B08);
  }

  return result;
}

unint64_t sub_1D196DA64()
{
  result = qword_1EC647B10;
  if (!qword_1EC647B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B10);
  }

  return result;
}

unint64_t sub_1D196DABC()
{
  result = qword_1EC647B18;
  if (!qword_1EC647B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B18);
  }

  return result;
}

unint64_t sub_1D196DB14()
{
  result = qword_1EC647B20;
  if (!qword_1EC647B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B20);
  }

  return result;
}

unint64_t sub_1D196DB6C()
{
  result = qword_1EC647B28;
  if (!qword_1EC647B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B28);
  }

  return result;
}

unint64_t sub_1D196DBC4()
{
  result = qword_1EC647B30;
  if (!qword_1EC647B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B30);
  }

  return result;
}

unint64_t sub_1D196DC1C()
{
  result = qword_1EC647B38;
  if (!qword_1EC647B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B38);
  }

  return result;
}

unint64_t sub_1D196DC74()
{
  result = qword_1EC647B40;
  if (!qword_1EC647B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B40);
  }

  return result;
}

unint64_t sub_1D196DCCC()
{
  result = qword_1EC647B48;
  if (!qword_1EC647B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B48);
  }

  return result;
}

unint64_t sub_1D196DD24()
{
  result = qword_1EC647B50;
  if (!qword_1EC647B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B50);
  }

  return result;
}

unint64_t sub_1D196DD7C()
{
  result = qword_1EC647B58;
  if (!qword_1EC647B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B58);
  }

  return result;
}

unint64_t sub_1D196DDD4()
{
  result = qword_1EC647B60;
  if (!qword_1EC647B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B60);
  }

  return result;
}

unint64_t sub_1D196DE2C()
{
  result = qword_1EC647B68;
  if (!qword_1EC647B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B68);
  }

  return result;
}

unint64_t sub_1D196DE84()
{
  result = qword_1EC647B70;
  if (!qword_1EC647B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B70);
  }

  return result;
}

uint64_t sub_1D196DED8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6D6D6F63 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6518386 && a2 == 0xE300000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F646E6576 && a2 == 0xE600000000000000)
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

uint64_t sub_1D196DFE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F707075736E75 && a2 == 0xEF65646F4D646574;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x46636972656E6567 && a2 == 0xEE006572756C6961 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4964696C61766E69 && a2 == 0xED000065646F4D6ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B63757473 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D6E694274737564 && a2 == 0xEE00676E69737369 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x466E694274737564 && a2 == 0xEB000000006C6C75 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E61547265746177 && a2 == 0xEE007974706D456BLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBE8F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBE8D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EBE8B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4C79726574746162 && a2 == 0xEA0000000000776FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1D196E3E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F707075736E75 && a2 == 0xEF65646F4D646574;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x46636972656E6567 && a2 == 0xEE006572756C6961 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4964696C61766E69 && a2 == 0xED000065646F4D6ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EBE890 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

unint64_t sub_1D196E5B8()
{
  result = qword_1EC647B78;
  if (!qword_1EC647B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B78);
  }

  return result;
}

unint64_t sub_1D196E60C()
{
  result = qword_1EC647B80;
  if (!qword_1EC647B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B80);
  }

  return result;
}

unint64_t sub_1D196E660()
{
  result = qword_1EC6474F8;
  if (!qword_1EC6474F8)
  {
    type metadata accessor for MatterCommandError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6474F8);
  }

  return result;
}

uint64_t sub_1D196E6B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterCommandError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D196E71C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1D196E798@<D0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ClusterPath(0);
  v7 = v6 - 8;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v84 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v79 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v79 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v79 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v79 - v19;
  v22 = *a2;
  v21 = a2[1];
  v86 = a1;
  sub_1D197AF6C(a1, &v79 - v19, type metadata accessor for EndpointPath);
  v20[*(v7 + 28)] = 27;
  sub_1D197AF6C(v20, v18, type metadata accessor for ClusterPath);
  v23 = sub_1D192B170(65532, v18, v22, v21);
  sub_1D197AFD4(v18, type metadata accessor for ClusterPath);
  if ((v23 & 0x100000000) != 0)
  {

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v32 = sub_1D1E6709C();
    __swift_project_value_buffer(v32, qword_1EE07A0B0);
    sub_1D197AF6C(v20, v15, type metadata accessor for ClusterPath);
    v33 = sub_1D1E6707C();
    v34 = sub_1D1E6833C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v88 = v36;
      *v35 = 136446210;
      v37 = ClusterPath.description.getter();
      v39 = v38;
      sub_1D197AFD4(v15, type metadata accessor for ClusterPath);
      v40 = sub_1D1B1312C(v37, v39, &v88);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1D16EC000, v33, v34, "Couldn't get value for feature map attribute '%{public}s'", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1D3893640](v36, -1, -1);
      MEMORY[0x1D3893640](v35, -1, -1);

LABEL_18:
      v52 = type metadata accessor for EndpointPath;
      v41 = v86;
LABEL_40:
      sub_1D197AFD4(v41, v52);
      sub_1D197AFD4(v20, type metadata accessor for ClusterPath);
      *(a3 + 109) = 0;
      result = 0.0;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return result;
    }

    sub_1D197AFD4(v86, type metadata accessor for EndpointPath);
    v41 = v15;
LABEL_39:
    v52 = type metadata accessor for ClusterPath;
    goto LABEL_40;
  }

  v85 = v23 & 2;
  sub_1D197AF6C(v20, v12, type metadata accessor for ClusterPath);
  v24 = sub_1D19C52F0(v12, v22, v21);
  sub_1D197AFD4(v12, type metadata accessor for ClusterPath);
  v25 = v24;
  v26 = *(v24 + 16);
  v27 = 32;
  do
  {
    v28 = v26;
    if (v26-- == 0)
    {
      break;
    }

    v30 = *(v25 + v27);
    v27 += 4;
  }

  while (v30 != 3);

  *&v88 = v22;
  *(&v88 + 1) = v21;
  v31 = sub_1D197264C(v20);
  if (!v31)
  {

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v42 = sub_1D1E6709C();
    __swift_project_value_buffer(v42, qword_1EE07A0B0);
    v43 = v84;
    sub_1D197AF6C(v20, v84, type metadata accessor for ClusterPath);
    v44 = sub_1D1E6707C();
    v45 = sub_1D1E6833C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v88 = v47;
      *v46 = 136446210;
      v48 = ClusterPath.description.getter();
      v50 = v49;
      sub_1D197AFD4(v43, type metadata accessor for ClusterPath);
      v51 = sub_1D1B1312C(v48, v50, &v88);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_1D16EC000, v44, v45, "Failed to fetch supportedAreas %{public}s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1D3893640](v47, -1, -1);
      MEMORY[0x1D3893640](v46, -1, -1);

      goto LABEL_18;
    }

    sub_1D197AFD4(v86, type metadata accessor for EndpointPath);
    v41 = v43;
    goto LABEL_39;
  }

  *&v88 = v31;

  sub_1D197704C(&v88);

  v84 = v88;
  v83 = v23 & 4;
  if ((v23 & 4) != 0)
  {
    *&v88 = v22;
    *(&v88 + 1) = v21;
    v82 = sub_1D1972CD0(v20);
  }

  else
  {
    v82 = 0;
  }

  *&v88 = v22;
  *(&v88 + 1) = v21;
  v53 = sub_1D197321C(v20);
  *&v88 = v22;
  *(&v88 + 1) = v21;
  v54 = sub_1D1973598(v20);
  *&v88 = v22;
  *(&v88 + 1) = v21;
  v81 = sub_1D1973918(v20);
  if (v85)
  {
    *&v88 = v22;
    *(&v88 + 1) = v21;
    v55 = sub_1D1973C98(v20);
  }

  else
  {
    v55 = 0;
  }

  v56 = sub_1D192C254(v20, v22, v21);

  if (v85 && (v54 & 0x100000000) == 0)
  {
    v57 = *(v56 + 16);
    v58 = 32;
    while (v57)
    {
      v59 = *(v56 + v58);
      v58 += 4;
      --v57;
      if (v59 == 2)
      {

        v60 = 1;
        goto LABEL_30;
      }
    }
  }

  v60 = 0;
LABEL_30:
  v61 = v84;
  v62 = sub_1D19743A8(v53, v84);

  v63 = *(v61 + 16);
  if (v63)
  {
    v64 = (v61 + 32);
    while (1)
    {
      v65 = *v64;
      v66 = v64[1];
      *&v89[9] = *(v64 + 25);
      v88 = v65;
      *v89 = v66;
      if ((v54 & 0x100000000) == 0 && v88 == v54)
      {
        break;
      }

      v64 += 3;
      if (!--v63)
      {
        goto LABEL_36;
      }
    }

    v67 = v55;
    v68 = v89[24];
    v69 = *&v89[16];
    v80 = *v89;
    v79 = v88;
    sub_1D18B869C(&v88, v87);
  }

  else
  {
LABEL_36:
    v79 = 0u;
    v80 = xmmword_1D1E88490;
    v67 = v55;
    v69 = 0;
    v68 = 0;
  }

  v70 = v82;
  sub_1D1974504(v62, v82, &v88);
  sub_1D197AFD4(v86, type metadata accessor for EndpointPath);
  sub_1D197AFD4(v20, type metadata accessor for ClusterPath);
  v71 = *v89;
  v72 = v85 >> 1;
  v73 = v88;
  v74 = v81;
  v90 = BYTE4(v81) & 1;
  v75 = v83 >> 2;
  v76 = BYTE4(v81) & 1;
  *a3 = v84;
  *(a3 + 8) = v70;
  *(a3 + 16) = v62;
  *(a3 + 24) = v73;
  *(a3 + 40) = v71;
  v77 = v80;
  result = *&v79;
  *(a3 + 48) = v79;
  *(a3 + 64) = v77;
  *(a3 + 80) = v69;
  *(a3 + 88) = v68;
  *(a3 + 92) = v74;
  *(a3 + 96) = v76;
  *(a3 + 104) = v67;
  *(a3 + 112) = v23 & 1;
  *(a3 + 113) = v72;
  *(a3 + 114) = v75;
  *(a3 + 115) = v28 != 0;
  *(a3 + 116) = v60;
  return result;
}

uint64_t ServiceArea.copyApplying(selectedAreaIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v47 = *(v2 + 3);
  v57 = *(v2 + 1);
  v5 = v2[5];
  v54 = v2[7];
  v55 = v2[6];
  v52 = v2[9];
  v53 = v2[8];
  v51 = v2[10];
  v50 = *(v2 + 88);
  v84 = *(v2 + 89);
  v85 = *(v2 + 91);
  v48 = *(v2 + 23);
  v46 = *(v2 + 96);
  v83 = v46;
  v6 = *(v2 + 97);
  *(v82 + 3) = *(v2 + 25);
  v82[0] = v6;
  v49 = v2[13];
  v45 = *(v2 + 112);
  v81 = v45;
  v44 = *(v2 + 113);
  v80 = v44;
  v43 = *(v2 + 114);
  v79 = v43;
  v42 = *(v2 + 115);
  v7 = v4;
  v8 = *(v4 + 16);

  v58 = v7;
  if (v8)
  {
    v10 = 0;
    v11 = v7 + 32;
    v12 = MEMORY[0x1E69E7CC0];
    v59 = v5;
    while (2)
    {
      v13 = *(v7 + 16);
LABEL_4:
      if (v10 >= v13)
      {
        __break(1u);
        return result;
      }

      v14 = (v11 + 48 * v10);
      v16 = *v14;
      v15 = v14[1];
      *&v60[25] = *(v14 + 25);
      *v60 = v16;
      *&v60[16] = v15;
      ++v10;
      v17 = *(a1 + 16);
      v18 = (a1 + 32);
      do
      {
        if (!v17)
        {
          if (v10 != v8)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }

        v19 = *v18++;
        --v17;
      }

      while (v19 != v16);
      sub_1D18B869C(v60, v77);
      result = swift_isUniquelyReferenced_nonNull_native();
      v78 = v12;
      if ((result & 1) == 0)
      {
        result = sub_1D178D634(0, *(v12 + 16) + 1, 1);
        v7 = v58;
        v12 = v78;
      }

      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1D178D634((v20 > 1), v21 + 1, 1);
        v7 = v58;
        v12 = v78;
      }

      *(v12 + 16) = v21 + 1;
      v22 = (v12 + 48 * v21);
      v23 = *v60;
      v24 = *&v60[16];
      *(v22 + 57) = *&v60[25];
      v22[2] = v23;
      v22[3] = v24;
      v5 = v59;
      if (v10 != v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:
  if (*(v12 + 16) && (*(v12 + 40) & 1) == 0)
  {
    v37 = *(v12 + 36);
    *v60 = v7;
    *&v60[24] = v47;
    *&v60[8] = v57;
    *&v60[40] = v5;
    v30 = v54;
    v29 = v55;
    v61 = v55;
    v62 = v54;
    v32 = v52;
    v31 = v53;
    v63 = v53;
    v64 = v52;
    v33 = v51;
    v65 = v51;
    v34 = v50;
    v66 = v50;
    v67 = v84;
    v68 = v85;
    v36 = v48;
    v69 = v48;
    v70 = v46;
    *&v71[3] = *(v82 + 3);
    *v71 = v82[0];
    v35 = v49;
    v72 = v49;
    v73 = v45;
    v74 = v44;
    v75 = v43;
    v76 = v42;
    ServiceArea.map(for:)(v37, v77);
    v7 = v58;
    v25 = v77[0];
    v26 = v77[1];
    v27 = v77[2];
    v28 = a2;
  }

  else
  {

    v26 = *(&v47 + 1);
    v25 = v47;
    v27 = v5;
    v29 = v55;
    v28 = a2;
    v31 = v53;
    v30 = v54;
    v33 = v51;
    v32 = v52;
    v34 = v50;
    v35 = v49;
    v36 = v48;
  }

  v38 = v83;
  v39 = v81;
  v40 = v80;
  v41 = v79;
  *v28 = v7;
  *(v28 + 8) = v57;
  *(v28 + 16) = v12;
  *(v28 + 24) = v25;
  *(v28 + 32) = v26;
  *(v28 + 40) = v27;
  *(v28 + 48) = v29;
  *(v28 + 56) = v30;
  *(v28 + 64) = v31;
  *(v28 + 72) = v32;
  *(v28 + 80) = v33;
  *(v28 + 88) = v34;
  *(v28 + 92) = v36;
  *(v28 + 96) = v38;
  *(v28 + 104) = v35;
  *(v28 + 112) = v39;
  *(v28 + 113) = v40;
  *(v28 + 114) = v41;
  *(v28 + 115) = 0;

  sub_1D1978DB8(v29, v30, v31, v32);
}

uint64_t ServiceArea.areas(for:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = result;
  v5 = 0;
  v6 = (result + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v8 = *(v2 + 16);
LABEL_4:
    if (v5 < v8)
    {
      v9 = (v2 + 32 + 48 * v5);
      v11 = *v9;
      v10 = v9[1];
      *&v22[9] = *(v9 + 25);
      v21 = v11;
      *v22 = v10;
      ++v5;
      v12 = *(v4 + 16);
      v13 = v6;
      do
      {
        if (!v12)
        {
          if (v5 != v3)
          {
            goto LABEL_4;
          }

          return v7;
        }

        v14 = *v13++;
        --v12;
      }

      while (v14 != v11);
      sub_1D18B869C(&v21, &v20);
      result = swift_isUniquelyReferenced_nonNull_native();
      v23 = v7;
      if ((result & 1) == 0)
      {
        result = sub_1D178D634(0, *(v7 + 16) + 1, 1);
        v7 = v23;
      }

      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1D178D634((v15 > 1), v16 + 1, 1);
        v7 = v23;
      }

      *(v7 + 16) = v16 + 1;
      v17 = (v7 + 48 * v16);
      v18 = v21;
      v19 = *v22;
      *(v17 + 57) = *&v22[9];
      v17[2] = v18;
      v17[3] = v19;
      if (v5 != v3)
      {
        continue;
      }

      return v7;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t ServiceArea.map(for:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = (v3 + 32);
    v5 = *(v3 + 16) + 1;
    while (--v5)
    {
      v6 = v4 + 6;
      v7 = *v4;
      v4 += 6;
      if (v7 == result)
      {
        v9 = *(v6 - 2);
        v8 = *(v6 - 1);
        *a2 = result;
        a2[1] = v9;
        a2[2] = v8;
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t ServiceArea.supportedAreas(for:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = *(v2 + 16);
    v7 = (v2 + 32 + 48 * v4);
    v8 = v4;
    while (1)
    {
      if (v8 >= v6)
      {
        __break(1u);
        return result;
      }

      v10 = *v7;
      v9 = v7[1];
      *&v20[9] = *(v7 + 25);
      v19 = v10;
      *v20 = v9;
      if ((BYTE8(v10) & 1) == 0 && DWORD1(v19) == result)
      {
        break;
      }

      ++v8;
      v7 += 3;
      if (v3 == v8)
      {
        return v5;
      }
    }

    v11 = result;
    sub_1D18B869C(&v19, &v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D178D634(0, *(v5 + 16) + 1, 1);
      v5 = v21;
    }

    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    result = v11;
    if (v14 >= v13 >> 1)
    {
      sub_1D178D634((v13 > 1), v14 + 1, 1);
      result = v11;
      v5 = v21;
    }

    v4 = v8 + 1;
    *(v5 + 16) = v14 + 1;
    v15 = (v5 + 48 * v14);
    v16 = v19;
    v17 = *v20;
    *(v15 + 57) = *&v20[9];
    v15[2] = v16;
    v15[3] = v17;
  }

  while (v3 - 1 != v8);
  return v5;
}

uint64_t StaticRVCClusterGroup.select(areaIDs:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  type metadata accessor for EndpointPath(0);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for ClusterPath(0);
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D196F7A4, 0, 0);
}

uint64_t sub_1D196F7A4()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E0, &unk_1D1E8D5E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = 2;
  v6 = inited + 32;
  *(inited + 40) = v4;
  *(inited + 48) = 3;
  v7 = sub_1D18D6FA8(inited);
  swift_setDeallocating();

  sub_1D1741A30(v6, &qword_1EC6474E8, &unk_1D1E86820);
  v0[16] = sub_1D1951BB0(v7, 0x1Bu);

  v8 = [objc_allocWithZone(MEMORY[0x1E696F6B0]) init];
  v0[17] = v8;
  v9 = sub_1D18F9BB0(v4);
  sub_1D18F9C58(v9);

  v10 = sub_1D1E67BFC();

  [v8 setNewAreas_];

  sub_1D1741B10(0, &qword_1EC647B88, 0x1E696F5D0);
  sub_1D197AF6C(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 27;
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_1D196F9A4;
  v12 = v0[15];

  return sub_1D1A092C4(v12);
}

uint64_t sub_1D196F9A4(uint64_t a1)
{
  v2 = *(*v1 + 120);
  *(*v1 + 152) = a1;

  sub_1D197AFD4(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D196FAD8, 0, 0);
}

uint64_t sub_1D196FAD8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = swift_allocObject();
  v0[20] = v3;
  *(v3 + 16) = v2;
  v4 = v2;
  v5 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v5);

  v0[21] = 0x80000001D1EBE710;
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1D196FC38;
  v7 = v0[19];

  return sub_1D1916350(0x72417463656C6573, 0xEB00000000736165, v7, v1, 0xD000000000000016, 0x80000001D1EBE710, &unk_1D1E884B0, v3);
}

uint64_t sub_1D196FC38()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {

    v3 = sub_1D196FE14;
  }

  else
  {
    v4 = *(v2 + 152);

    v3 = sub_1D196FD98;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D196FD98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D196FE14()
{
  v1 = *(v0 + 184);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);

    v5 = *(v0 + 80);
    sub_1D197AF6C(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D197B034(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint(0);
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D191F714(v3, &v8[v6[5]]);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v11 = *(v0 + 152);
  v12 = *(v0 + 136);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t StaticRVCClusterGroup.skipArea(areaToSkip:)(int a1)
{
  *(v2 + 88) = v1;
  *(v2 + 184) = a1;
  type metadata accessor for EndpointPath(0);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = type metadata accessor for ClusterPath(0);
  *(v2 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19700C4, 0, 0);
}

uint64_t sub_1D19700C4()
{
  v1 = *(v0 + 88);
  v2 = (v1 + *(type metadata accessor for StaticRVCClusterGroup(0) + 60));
  v3 = v2[13];
  if (*v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {

    v3 = MEMORY[0x1E69E7CC0];
    v5 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v5)
    {
LABEL_31:

      v7 = MEMORY[0x1E69E7CC0];
      v6 = v35;
      goto LABEL_32;
    }
  }

  else
  {

    v5 = *(v3 + 16);
    if (!v5)
    {
      goto LABEL_31;
    }
  }

  v36 = MEMORY[0x1E69E7CC0];
  sub_1D178D674(0, v5, 0);
  v6 = v35;
  v7 = v36;
  v8 = (v3 + 52);
  do
  {
    v9 = *(v6 + 184);
    v10 = *(v8 - 5);
    v11 = v10 == v9;
    if (v10 == v9)
    {
      v12 = *(v6 + 184);
    }

    else
    {
      v12 = *(v8 - 5);
    }

    if (v10 == v9)
    {
      v13 = 2;
    }

    else
    {
      v13 = *(v8 - 16);
    }

    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v8 - 3);
    }

    if (v11)
    {
      v15 = 1;
    }

    else
    {
      v15 = *(v8 - 8);
    }

    if (v11)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v8 - 1);
    }

    if (v11)
    {
      v17 = 1;
    }

    else
    {
      v17 = *v8;
    }

    v37 = v7;
    v19 = *(v7 + 16);
    v18 = *(v7 + 24);
    if (v19 >= v18 >> 1)
    {
      v21 = v13;
      v34 = v17;
      sub_1D178D674((v18 > 1), v19 + 1, 1);
      v17 = v34;
      v13 = v21;
      v6 = v35;
      v7 = v37;
    }

    *(v7 + 16) = v19 + 1;
    v20 = v7 + 24 * v19;
    *(v20 + 32) = v12;
    *(v20 + 36) = v13;
    *(v20 + 40) = v14;
    *(v20 + 44) = v15;
    *(v20 + 48) = v16;
    *(v20 + 52) = v17;
    v8 += 24;
    --v5;
  }

  while (v5);

LABEL_32:
  v23 = *(v6 + 104);
  v22 = *(v6 + 112);
  v24 = v6;
  v25 = *(v6 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E0, &unk_1D1E8D5E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = 5;
  v27 = inited + 32;
  *(inited + 40) = v7;
  *(inited + 48) = 4;
  v28 = sub_1D18D6FA8(inited);
  swift_setDeallocating();
  sub_1D1741A30(v27, &qword_1EC6474E8, &unk_1D1E86820);
  v24[15] = sub_1D1951BB0(v28, 0x1Bu);

  v29 = [objc_allocWithZone(MEMORY[0x1E696F6C0]) init];
  v24[16] = v29;
  v30 = sub_1D1E692CC();
  [v29 setSkippedArea_];

  sub_1D1741B10(0, &qword_1EC647B88, 0x1E696F5D0);
  sub_1D197AF6C(v25, v22, type metadata accessor for EndpointPath);
  *(v22 + *(v23 + 20)) = 27;
  v31 = swift_task_alloc();
  v24[17] = v31;
  *v31 = v24;
  v31[1] = sub_1D1970400;
  v32 = v24[14];

  return sub_1D1A092C4(v32);
}

uint64_t sub_1D1970400(uint64_t a1)
{
  v2 = *(*v1 + 112);
  *(*v1 + 144) = a1;

  sub_1D197AFD4(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1970534, 0, 0);
}

uint64_t sub_1D1970534()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = swift_allocObject();
  v0[19] = v3;
  *(v3 + 16) = v2;
  v4 = v2;
  v5 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v5);

  v0[20] = 0x80000001D1EBE710;
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1D197068C;
  v7 = v0[18];

  return sub_1D1916350(0x6165724170696B73, 0xE800000000000000, v7, v1, 0xD000000000000016, 0x80000001D1EBE710, &unk_1D1E884D0, v3);
}

uint64_t sub_1D197068C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {

    v3 = sub_1D1970868;
  }

  else
  {
    v4 = *(v2 + 144);

    v3 = sub_1D19707EC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19707EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1970868()
{
  v1 = *(v0 + 176);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);

    v5 = *(v0 + 80);
    sub_1D197AF6C(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D197B034(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint(0);
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D191F714(v3, &v8[v6[5]]);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v11 = *(v0 + 144);
  v12 = *(v0 + 128);

  v13 = *(v0 + 8);

  return v13();
}

HomeDataModel::ServiceArea::Progress::OperationalStatus_optional __swiftcall ServiceArea.Progress.OperationalStatus.init(rawValue:)(HomeDataModel::ServiceArea::Progress::OperationalStatus_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xFC) != 0)
  {
    value = HomeDataModel_ServiceArea_Progress_OperationalStatus_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

double ServiceArea.Progress.currentProgress.getter()
{
  if ((*(v0 + 12) & 1) == 0 && (*(v0 + 20) & 1) == 0)
  {
    return *(v0 + 8) / *(v0 + 16);
  }

  return result;
}

unint64_t sub_1D1970BDC()
{
  v1 = 25705;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x6574616D69747365;
  }

  if (*v0)
  {
    v1 = 0x737574617473;
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

uint64_t sub_1D1970C58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D197A750(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1970C80(uint64_t a1)
{
  v2 = sub_1D1979664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1970CBC(uint64_t a1)
{
  v2 = sub_1D1979664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServiceArea.Progress.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647B90, &qword_1D1E884D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v16 = *(v1 + 4);
  v15 = *(v1 + 8);
  v14 = *(v1 + 12);
  v13 = *(v1 + 16);
  v12 = *(v1 + 20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1979664();
  sub_1D1E6930C();
  v23 = 0;
  sub_1D1E68F5C();
  if (!v2)
  {
    v8 = v14;
    v9 = v12;
    v22 = v16;
    v21 = 1;
    sub_1D19796B8();
    sub_1D1E68F1C();
    v20 = 2;
    v18 = v8;
    sub_1D1E68EAC();
    v19 = 3;
    v17 = v9;
    sub_1D1E68EAC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ServiceArea.Progress.hash(into:)()
{
  v1 = *(v0 + 12);
  v2 = *(v0 + 20);
  sub_1D1E6924C();
  sub_1D1E6922C();
  if (v1 == 1)
  {
    sub_1D1E6922C();
    if (!v2)
    {
LABEL_3:
      sub_1D1E6922C();
      return sub_1D1E6924C();
    }
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6924C();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  return sub_1D1E6922C();
}

uint64_t ServiceArea.Progress.hashValue.getter()
{
  v1 = *(v0 + 12);
  v2 = *(v0 + 20);
  sub_1D1E6920C();
  sub_1D1E6924C();
  sub_1D1E6922C();
  if (v1 != 1)
  {
    sub_1D1E6922C();
    sub_1D1E6924C();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1D1E6922C();
    return sub_1D1E6926C();
  }

  sub_1D1E6922C();
  if (v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D1E6922C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t ServiceArea.Progress.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647BA8, &qword_1D1E884E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1979664();
  sub_1D1E692FC();
  if (!v2)
  {
    v20 = 0;
    v9 = sub_1D1E68DBC();
    v18 = 1;
    sub_1D197970C();
    sub_1D1E68D7C();
    v10 = v19;
    v17 = 2;
    v15 = sub_1D1E68D0C();
    v16 = 3;
    v12 = sub_1D1E68D0C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 4) = v10;
    v13 = BYTE4(v15);
    *(a2 + 8) = v15;
    *(a2 + 12) = v13 & 1;
    *(a2 + 16) = v12;
    *(a2 + 20) = BYTE4(v12) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D19712BC(uint64_t a1)
{
  v2 = *(v1 + 12);
  v3 = *(v1 + 20);
  sub_1D1E6920C();
  sub_1D1E6924C();
  sub_1D1E6922C();
  if (v2 != 1)
  {
    sub_1D1E6922C();
    sub_1D1E6924C();
    if (!v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1D1E6922C();
    return sub_1D1E6926C();
  }

  sub_1D1E6922C();
  if (v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D1E6922C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t ServiceArea.Area.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_1D1971490()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6B72616D646E616CLL;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x726F6F6C66;
  if (v1 != 3)
  {
    v4 = 0x6570795461657261;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x444970616DLL;
  if (v1 != 1)
  {
    v5 = 1701667182;
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

uint64_t sub_1D197155C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D197A8B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1971584(uint64_t a1)
{
  v2 = sub_1D1979760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19715C0(uint64_t a1)
{
  v2 = sub_1D1979760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServiceArea.Area.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647BB8, &qword_1D1E884E8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v18 = *(v1 + 4);
  v17 = *(v1 + 8);
  v7 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = v7;
  LODWORD(v5) = *(v1 + 34);
  v14[6] = *(v1 + 32);
  v14[7] = v5;
  LODWORD(v7) = *(v1 + 35);
  v14[4] = *(v1 + 36);
  v14[5] = v7;
  LODWORD(v7) = *(v1 + 37);
  v14[2] = *(v1 + 38);
  v14[3] = v7;
  v8 = a1[3];
  v9 = a1;
  v11 = v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);
  sub_1D1979760();
  sub_1D1E6930C();
  v27 = 0;
  v12 = v19;
  sub_1D1E68F5C();
  if (v12)
  {
    return (*(v4 + 8))(v6, v11);
  }

  v26 = 1;
  v24 = v17;
  sub_1D1E68EAC();
  v25 = 2;
  sub_1D1E68E0C();
  v23 = 3;
  sub_1D1E68E6C();
  v22[0] = 4;
  sub_1D1E68E8C();
  v21 = 5;
  sub_1D1E68E8C();
  v20[0] = 6;
  sub_1D1E68E8C();
  return (*(v4 + 8))(v6, v11);
}

uint64_t ServiceArea.Area.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  v4 = *(v1 + 34);
  v5 = *(v1 + 36);
  v6 = *(v1 + 38);
  v8 = *(v1 + 40);
  sub_1D1E6924C();
  if (v2 == 1)
  {
    sub_1D1E6922C();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6924C();
    if (v3)
    {
LABEL_3:
      sub_1D1E6922C();
      sub_1D1E678EC();
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  sub_1D1E6922C();
  if (v4)
  {
LABEL_4:
    sub_1D1E6922C();
    if (v5)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

LABEL_8:
  sub_1D1E6922C();
  sub_1D1E6923C();
  if ((v5 & 1) == 0)
  {
LABEL_5:
    sub_1D1E6922C();
  }

LABEL_9:
  sub_1D1E6922C();
  if ((v6 & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if ((v8 & 1) == 0)
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t ServiceArea.Area.hashValue.getter()
{
  sub_1D1E6920C();
  ServiceArea.Area.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t ServiceArea.Area.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647BC8, &qword_1D1E884F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1979760();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v9 = sub_1D1E68DBC();
  LOBYTE(v34[0]) = 1;
  v10 = sub_1D1E68D0C();
  v47 = BYTE4(v10) & 1;
  LOBYTE(v34[0]) = 2;
  v11 = sub_1D1E68C6C();
  v13 = v12;
  v31 = v11;
  LOBYTE(v34[0]) = 3;
  v30 = sub_1D1E68CCC();
  v50 = BYTE2(v30) & 1;
  LOBYTE(v34[0]) = 4;
  v29 = sub_1D1E68CEC();
  v49 = BYTE1(v29) & 1;
  LOBYTE(v34[0]) = 5;
  v28 = sub_1D1E68CEC();
  v48 = BYTE1(v28) & 1;
  v51 = 6;
  v14 = sub_1D1E68CEC();
  v15 = *(v6 + 8);
  v27 = v14;
  v15(v8, v5);
  v16 = (v27 >> 8) & 1;
  v46 = BYTE1(v27) & 1;
  v26 = v9;
  *&v32 = __PAIR64__(v10, v9);
  v25 = v10;
  v24 = v47;
  BYTE8(v32) = v47;
  *v33 = v31;
  *&v33[8] = v13;
  LOBYTE(v10) = v29;
  *&v33[16] = v30;
  v23 = v50;
  v33[18] = v50;
  v33[19] = v29;
  LOBYTE(v9) = v49;
  v33[20] = v49;
  v17 = v28;
  v33[21] = v28;
  v18 = v48;
  v33[22] = v48;
  *&v33[23] = v27 & 0x1FF;
  v19 = v32;
  v20 = *v33;
  *(a2 + 25) = *&v33[9];
  *a2 = v19;
  a2[1] = v20;
  sub_1D18B869C(&v32, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v26;
  v34[1] = v25;
  v35 = v24;
  v36 = v31;
  v37 = v13;
  v38 = v30;
  v39 = v23;
  v40 = v10;
  v41 = v9;
  v42 = v17;
  v43 = v18;
  v44 = v27;
  v45 = v16;
  return sub_1D18B86F8(v34);
}

uint64_t sub_1D1971D84()
{
  sub_1D1E6920C();
  ServiceArea.Area.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1971DC8(uint64_t a1)
{
  sub_1D1E6920C();
  ServiceArea.Area.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t ServiceArea.Map.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t static ServiceArea.Map.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1D1E6904C();
  }
}

uint64_t sub_1D1971EB8()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D1971EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_1D1971FB4(uint64_t a1)
{
  v2 = sub_1D19797B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1971FF0(uint64_t a1)
{
  v2 = sub_1D19797B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServiceArea.Map.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647BD0, &qword_1D1E884F8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19797B4();
  sub_1D1E6930C();
  v12 = 0;
  sub_1D1E68F5C();
  if (!v2)
  {
    v11 = 1;
    sub_1D1E68ECC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ServiceArea.Map.hash(into:)(uint64_t a1)
{
  sub_1D1E6924C();

  return sub_1D1E678EC();
}

uint64_t ServiceArea.Map.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E6924C();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t ServiceArea.Map.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647BE0, &qword_1D1E88500);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19797B4();
  sub_1D1E692FC();
  if (!v2)
  {
    v16 = 0;
    v9 = sub_1D1E68DBC();
    v15 = 1;
    v11 = sub_1D1E68D2C();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D197241C()
{
  sub_1D1E6920C();
  sub_1D1E6924C();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1972480(uint64_t a1)
{
  sub_1D1E6924C();

  return sub_1D1E678EC();
}

uint64_t sub_1D19724D4(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6924C();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1972534(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1D1E6904C();
  }
}

uint64_t ServiceArea.selectedMap.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v2;
}

uint64_t ServiceArea.currentArea.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 88);
  return sub_1D1978DB8(v2, v3, v4, v5);
}

char *sub_1D197264C(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v6 = v1[1];
  sub_1D197AF6C(a1, v5, type metadata accessor for ClusterPath);
  v8 = sub_1D19C52F0(v5, v7, v6);
  sub_1D197AFD4(v5, type metadata accessor for ClusterPath);
  v9 = *(v8 + 16);
  v10 = 32;
  do
  {
    if (!v9)
    {

      return 0;
    }

    v11 = *(v8 + v10);
    v10 += 4;
    --v9;
  }

  while (v11);

  *&v35[8] = v3;
  *&v35[16] = sub_1D197B034(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
  sub_1D197AF6C(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v36[0] = v7;
  v36[1] = v6;
  AttributeValueSet.value(for:in:)(0, &v34, v38);
  __swift_destroy_boxed_opaque_existential_1(&v34);
  sub_1D18C20AC(v38, &v34);
  if (!*&v35[8])
  {
    sub_1D1741A30(&v34, &qword_1EC645D58, &unk_1D1E7E530);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D38, &qword_1D1E88FE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v24 = sub_1D1E6709C();
    __swift_project_value_buffer(v24, qword_1EE07A0B0);
    sub_1D18C20AC(v38, &v34);
    v25 = sub_1D1E6707C();
    v26 = sub_1D1E6833C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37 = v28;
      *v27 = 136315138;
      sub_1D18C20AC(&v34, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
      v29 = sub_1D1E678BC();
      v31 = v30;
      sub_1D1741A30(&v34, &qword_1EC645D58, &unk_1D1E7E530);
      v32 = sub_1D1B1312C(v29, v31, &v37);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1D16EC000, v25, v26, "Couldn't create [MTRServiceAreaClusterAreaStruct] from value '%s'", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1D3893640](v28, -1, -1);
      MEMORY[0x1D3893640](v27, -1, -1);
    }

    else
    {

      sub_1D1741A30(&v34, &qword_1EC645D58, &unk_1D1E7E530);
    }

    sub_1D1741A30(v38, &qword_1EC645D58, &unk_1D1E7E530);
    return 0;
  }

  v13 = v36[0];
  if (!(v36[0] >> 62))
  {
    v14 = *((v36[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_29:

    sub_1D1741A30(v38, &qword_1EC645D58, &unk_1D1E7E530);
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1D1E6873C();
  if (!v14)
  {
    goto LABEL_29;
  }

LABEL_8:
  v36[0] = MEMORY[0x1E69E7CC0];
  result = sub_1D178D634(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v17 = v36[0];
    if ((v13 & 0xC000000000000001) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    for (i = MEMORY[0x1D3891EF0](v16, v13); ; i = *(v13 + 8 * v16 + 32))
    {
      sub_1D1976D2C(i, &v34);
      v36[0] = v17;
      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D178D634((v19 > 1), v20 + 1, 1);
        v17 = v36[0];
      }

      *(v17 + 16) = v20 + 1;
      v21 = (v17 + 48 * v20);
      v22 = v34;
      v23 = *v35;
      *(v21 + 57) = *&v35[9];
      v21[2] = v22;
      v21[3] = v23;
      if (v14 - 1 == v16)
      {
        break;
      }

      ++v16;
      if ((v13 & 0xC000000000000001) != 0)
      {
        goto LABEL_10;
      }

LABEL_11:
      ;
    }

    sub_1D1741A30(v38, &qword_1EC645D58, &unk_1D1E7E530);

    return v17;
  }

  __break(1u);
  return result;
}

uint64_t ServiceArea.Area.displayName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 39);
  v3 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_6;
  }

  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = *(v0 + 16);

    return v5;
  }

  else
  {
LABEL_6:
    if (*(v0 + 36))
    {
      if (*(v0 + 38))
      {
        return static String.hfLocalized(_:)(0xD000000000000014, 0x80000001D1EBF440);
      }

      else
      {
        v7 = UInt8.landmarkLocalizationKey.getter(*(v0 + 37));
        MEMORY[0x1D3890F70](v7);

        if ((v3 & 1) == 0)
        {
          v8 = UInt8.relativePositionLocalizationKey.getter(v2);
          if (v9)
          {
            v10 = v8;
            v11 = v9;

            MEMORY[0x1D3890F70](95, 0xE100000000000000);

            MEMORY[0x1D3890F70](v10, v11);
          }
        }

        v12 = static String.hfLocalized(_:)(0xD000000000000015, 0x80000001D1EBF460);

        return v12;
      }
    }

    else
    {
      return UInt8.areaTypeDisplayName.getter(*(v0 + 35));
    }
  }
}

char *sub_1D1972CD0(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v6 = v1[1];
  sub_1D197AF6C(a1, v5, type metadata accessor for ClusterPath);
  v8 = sub_1D19C52F0(v5, v7, v6);
  sub_1D197AFD4(v5, type metadata accessor for ClusterPath);
  v9 = *(v8 + 16);
  v10 = 32;
  do
  {
    if (!v9)
    {

      return 0;
    }

    v11 = *(v8 + v10);
    v10 += 4;
    --v9;
  }

  while (v11 != 2);

  v41 = v3;
  v42 = sub_1D197B034(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  sub_1D197AF6C(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v38[0] = v7;
  v38[1] = v6;
  AttributeValueSet.value(for:in:)(1, v40, v43);
  __swift_destroy_boxed_opaque_existential_1(v40);
  sub_1D18C20AC(v43, v40);
  if (!v41)
  {
    sub_1D1741A30(v40, &qword_1EC645D58, &unk_1D1E7E530);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D28, &qword_1D1E88FC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v29 = sub_1D1E6709C();
    __swift_project_value_buffer(v29, qword_1EE07A0B0);
    sub_1D18C20AC(v43, v40);
    v30 = sub_1D1E6707C();
    v31 = sub_1D1E6833C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v39 = v33;
      *v32 = 136315138;
      sub_1D18C20AC(v40, v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
      v34 = sub_1D1E678BC();
      v36 = v35;
      sub_1D1741A30(v40, &qword_1EC645D58, &unk_1D1E7E530);
      v37 = sub_1D1B1312C(v34, v36, &v39);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_1D16EC000, v30, v31, "Couldn't create [MTRServiceAreaClusterMapStruct] from value '%s'", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1D3893640](v33, -1, -1);
      MEMORY[0x1D3893640](v32, -1, -1);
    }

    else
    {

      sub_1D1741A30(v40, &qword_1EC645D58, &unk_1D1E7E530);
    }

    sub_1D1741A30(v43, &qword_1EC645D58, &unk_1D1E7E530);
    return 0;
  }

  v13 = v38[0];
  if (!(v38[0] >> 62))
  {
    v14 = *((v38[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_28:

    sub_1D1741A30(v43, &qword_1EC645D58, &unk_1D1E7E530);
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1D1E6873C();
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_8:
  v40[0] = MEMORY[0x1E69E7CC0];
  result = sub_1D178D654(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v17 = v40[0];
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1D3891EF0](v16, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = [v18 mapID];
      v21 = [v20 unsignedIntValue];

      v22 = [v19 name];
      v23 = sub_1D1E6781C();
      v25 = v24;

      v40[0] = v17;
      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1D178D654((v26 > 1), v27 + 1, 1);
        v17 = v40[0];
      }

      *(v17 + 16) = v27 + 1;
      v28 = v17 + 24 * v27;
      *(v28 + 32) = v21;
      ++v16;
      *(v28 + 40) = v23;
      *(v28 + 48) = v25;
    }

    while (v14 != v16);
    sub_1D1741A30(v43, &qword_1EC645D58, &unk_1D1E7E530);

    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D197321C(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v6 = v1[1];
  sub_1D197AF6C(a1, v5, type metadata accessor for ClusterPath);
  v8 = sub_1D19C52F0(v5, v7, v6);
  sub_1D197AFD4(v5, type metadata accessor for ClusterPath);
  v9 = *(v8 + 16);
  v10 = 32;
  do
  {
    if (!v9)
    {

      return 0;
    }

    v11 = *(v8 + v10);
    v10 += 4;
    --v9;
  }

  while (v11 != 2);

  v25[3] = v3;
  v25[4] = sub_1D197B034(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  sub_1D197AF6C(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v24[0] = v7;
  v24[1] = v6;
  AttributeValueSet.value(for:in:)(2, v25, &v26);
  __swift_destroy_boxed_opaque_existential_1(v25);
  if (v27)
  {
    sub_1D1742194(&v26, v28);
    sub_1D1741970(v28, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A50, &unk_1D1E910D0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v28);
      return v26;
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v14 = sub_1D1E6709C();
    __swift_project_value_buffer(v14, qword_1EE07A0B0);
    sub_1D1741970(v28, v25);
    v15 = sub_1D1E6707C();
    v16 = sub_1D1E6833C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 136315138;
      sub_1D1741970(v25, &v26);
      v19 = sub_1D1E678BC();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1(v25);
      v22 = sub_1D1B1312C(v19, v21, v24);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1D16EC000, v15, v16, "Couldn't decode selectedAreaIDs from value '%s'", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1D3893640](v18, -1, -1);
      MEMORY[0x1D3893640](v17, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_1D1741A30(&v26, &qword_1EC645D58, &unk_1D1E7E530);
  }

  return 0;
}

unint64_t sub_1D1973598(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v6 = v1[1];
  sub_1D197AF6C(a1, v5, type metadata accessor for ClusterPath);
  v8 = sub_1D19C52F0(v5, v7, v6);
  sub_1D197AFD4(v5, type metadata accessor for ClusterPath);
  v9 = *(v8 + 16);
  v10 = 32;
  do
  {
    if (!v9)
    {

      goto LABEL_15;
    }

    v11 = *(v8 + v10);
    v10 += 4;
    --v9;
  }

  while (v11 != 3);

  v27[3] = v3;
  v27[4] = sub_1D197B034(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  sub_1D197AF6C(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v26[0] = v7;
  v26[1] = v6;
  AttributeValueSet.value(for:in:)(3, v27, &v28);
  __swift_destroy_boxed_opaque_existential_1(v27);
  if (v29)
  {
    sub_1D1742194(&v28, v30);
    sub_1D1741970(v30, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v30);
      v13 = 0;
      v14 = v28;
      return v14 | (v13 << 32);
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v15 = sub_1D1E6709C();
    __swift_project_value_buffer(v15, qword_1EE07A0B0);
    sub_1D1741970(v30, v27);
    v16 = sub_1D1E6707C();
    v17 = sub_1D1E6833C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26[0] = v19;
      *v18 = 136315138;
      sub_1D1741970(v27, &v28);
      v20 = sub_1D1E678BC();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v27);
      v23 = sub_1D1B1312C(v20, v22, v26);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1D16EC000, v16, v17, "Couldn't decode currentAreaID from value '%s'", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1D3893640](v19, -1, -1);
      MEMORY[0x1D3893640](v18, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    sub_1D1741A30(&v28, &qword_1EC645D58, &unk_1D1E7E530);
  }

LABEL_15:
  v14 = 0;
  v13 = 1;
  return v14 | (v13 << 32);
}

unint64_t sub_1D1973918(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v6 = v1[1];
  sub_1D197AF6C(a1, v5, type metadata accessor for ClusterPath);
  v8 = sub_1D19C52F0(v5, v7, v6);
  sub_1D197AFD4(v5, type metadata accessor for ClusterPath);
  v9 = *(v8 + 16);
  v10 = 32;
  do
  {
    if (!v9)
    {

      goto LABEL_15;
    }

    v11 = *(v8 + v10);
    v10 += 4;
    --v9;
  }

  while (v11 != 4);

  v27[3] = v3;
  v27[4] = sub_1D197B034(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  sub_1D197AF6C(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v26[0] = v7;
  v26[1] = v6;
  AttributeValueSet.value(for:in:)(4, v27, &v28);
  __swift_destroy_boxed_opaque_existential_1(v27);
  if (v29)
  {
    sub_1D1742194(&v28, v30);
    sub_1D1741970(v30, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v30);
      v13 = 0;
      v14 = v28;
      return v14 | (v13 << 32);
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v15 = sub_1D1E6709C();
    __swift_project_value_buffer(v15, qword_1EE07A0B0);
    sub_1D1741970(v30, v27);
    v16 = sub_1D1E6707C();
    v17 = sub_1D1E6833C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26[0] = v19;
      *v18 = 136315138;
      sub_1D1741970(v27, &v28);
      v20 = sub_1D1E678BC();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v27);
      v23 = sub_1D1B1312C(v20, v22, v26);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1D16EC000, v16, v17, "Couldn't decode estimatedEndTime from value '%s'", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1D3893640](v19, -1, -1);
      MEMORY[0x1D3893640](v18, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    sub_1D1741A30(&v28, &qword_1EC645D58, &unk_1D1E7E530);
  }

LABEL_15:
  v14 = 0;
  v13 = 1;
  return v14 | (v13 << 32);
}

char *sub_1D1973C98(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v6 = v1[1];
  sub_1D197AF6C(a1, v5, type metadata accessor for ClusterPath);
  v8 = sub_1D19C52F0(v5, v7, v6);
  sub_1D197AFD4(v5, type metadata accessor for ClusterPath);
  v9 = *(v8 + 16);
  v10 = 32;
  do
  {
    if (!v9)
    {

      return 0;
    }

    v11 = *(v8 + v10);
    v10 += 4;
    --v9;
  }

  while (v11 != 5);

  v59 = v3;
  v60 = sub_1D197B034(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  sub_1D197AF6C(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v56[0] = v7;
  v56[1] = v6;
  AttributeValueSet.value(for:in:)(5, v58, v61);
  __swift_destroy_boxed_opaque_existential_1(v58);
  sub_1D18C20AC(v61, v58);
  if (!v59)
  {
    sub_1D1741A30(v58, &qword_1EC645D58, &unk_1D1E7E530);
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D30, &unk_1D1E88FD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v41 = sub_1D1E6709C();
    __swift_project_value_buffer(v41, qword_1EE07A0B0);
    sub_1D18C20AC(v61, v58);
    v42 = sub_1D1E6707C();
    v43 = sub_1D1E6833C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v57 = v45;
      *v44 = 136446210;
      sub_1D18C20AC(v58, v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
      v46 = sub_1D1E678BC();
      v48 = v47;
      sub_1D1741A30(v58, &qword_1EC645D58, &unk_1D1E7E530);
      v49 = sub_1D1B1312C(v46, v48, &v57);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1D16EC000, v42, v43, "Couldn't create [MTRServiceAreaClusterProgressStruct] from value '%{public}s'", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1D3893640](v45, -1, -1);
      MEMORY[0x1D3893640](v44, -1, -1);
    }

    else
    {

      sub_1D1741A30(v58, &qword_1EC645D58, &unk_1D1E7E530);
    }

    sub_1D1741A30(v61, &qword_1EC645D58, &unk_1D1E7E530);
    return 0;
  }

  v13 = v56[0];
  if (!(v56[0] >> 62))
  {
    v14 = *((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_42:

    sub_1D1741A30(v61, &qword_1EC645D58, &unk_1D1E7E530);
    return MEMORY[0x1E69E7CC0];
  }

  v50 = v56[0];
  v14 = sub_1D1E6873C();
  v13 = v50;
  if (!v14)
  {
    goto LABEL_42;
  }

LABEL_8:
  v15 = v13;
  v58[0] = MEMORY[0x1E69E7CC0];
  result = sub_1D178D674(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v19 = v58[0];
    v20 = v15;
    v52 = v15 & 0xC000000000000001;
    v21 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    *&v17 = 16908544;
    v51 = v17;
    v53 = v14;
    v54 = v15;
    do
    {
      if (v52)
      {
        v22 = MEMORY[0x1D3891EF0](v18, v20);
      }

      else
      {
        v22 = *(v20 + 8 * v18 + 32);
      }

      v23 = v22;
      v24 = [v22 areaID];
      v55 = [v24 v21[322]];

      v25 = [v23 status];
      v26 = [v25 unsignedCharValue];
      if (v26 >= 4)
      {
        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v28 = sub_1D1E6709C();
        __swift_project_value_buffer(v28, qword_1EE07A0B0);
        v29 = v25;
        v25 = sub_1D1E6707C();
        v30 = sub_1D1E6834C();
        if (os_log_type_enabled(v25, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = v51;
          v31[4] = [v29 unsignedCharValue];

          _os_log_impl(&dword_1D16EC000, v25, v30, "Couldn't create MTRServiceAreaOperationalStatus from value '%{public}hhu'", v31, 5u);
          MEMORY[0x1D3893640](v31, -1, -1);
        }

        else
        {

          v25 = v29;
        }

        v27 = 0;
      }

      else
      {
        v27 = v26;
      }

      v32 = [v23 totalOperationalTime];
      v33 = v32;
      if (v32)
      {
        v34 = [v32 v21[322]];
      }

      else
      {
        v34 = 0;
      }

      v35 = [v23 estimatedTime];
      v36 = v35;
      if (v35)
      {
        v37 = [v35 v21[322]];
      }

      else
      {
        v37 = 0;
      }

      v58[0] = v19;
      v39 = *(v19 + 16);
      v38 = *(v19 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1D178D674((v38 > 1), v39 + 1, 1);
        v19 = v58[0];
      }

      *(v19 + 16) = v39 + 1;
      v40 = v19 + 24 * v39;
      *(v40 + 32) = v55;
      *(v40 + 36) = v27;
      ++v18;
      *(v40 + 40) = v34;
      *(v40 + 44) = v33 == 0;
      *(v40 + 48) = v37;
      *(v40 + 52) = v36 == 0;
      v20 = v54;
      v21 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    }

    while (v53 != v18);
    sub_1D1741A30(v61, &qword_1EC645D58, &unk_1D1E7E530);

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19743A8(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = result;
  v4 = 0;
  v5 = a2 + 32;
  v6 = (result + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (v4 < v2)
  {
    v13 = (v5 + 48 * v4);
    v14 = v13[1];
    v20 = *v13;
    v21[0] = v14;
    *(v21 + 9) = *(v13 + 25);
    if (__OFADD__(v4++, 1))
    {
      goto LABEL_19;
    }

    v16 = *(v3 + 16);
    v17 = v6;
    while (v16)
    {
      v18 = *v17++;
      --v16;
      if (v18 == v20)
      {
        sub_1D18B869C(&v20, &v19);
        result = swift_isUniquelyReferenced_nonNull_native();
        v22 = v7;
        if ((result & 1) == 0)
        {
          result = sub_1D178D634(0, *(v7 + 16) + 1, 1);
          v7 = v22;
        }

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        if (v9 >= v8 >> 1)
        {
          result = sub_1D178D634((v8 > 1), v9 + 1, 1);
          v7 = v22;
        }

        *(v7 + 16) = v9 + 1;
        v10 = (v7 + 48 * v9);
        v11 = v20;
        v12 = v21[0];
        *(v10 + 57) = *(v21 + 9);
        v10[2] = v11;
        v10[3] = v12;
        break;
      }
    }

    if (v4 == v2)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_1D1974504(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        if ((*(a1 + 40) & 1) == 0)
        {
          v4 = *(a1 + 36);
          v5 = (a1 + 40);
          v6 = v3 + 1;
          while (--v6)
          {
            if ((*v5 & 1) == 0)
            {
              v7 = *(v5 - 1);
              v5 += 48;
              if (v7 == v4)
              {
                continue;
              }
            }

            if (qword_1EE07A0A8 != -1)
            {
              swift_once();
            }

            v10 = sub_1D1E6709C();
            __swift_project_value_buffer(v10, qword_1EE07A0B0);

            v11 = sub_1D1E6707C();
            v12 = sub_1D1E6833C();

            if (os_log_type_enabled(v11, v12))
            {
              v13 = swift_slowAlloc();
              v14 = swift_slowAlloc();
              v24 = v14;
              *v13 = 136315138;
              v15 = MEMORY[0x1D3891260](a1, &type metadata for ServiceArea.Area);
              v17 = sub_1D1B1312C(v15, v16, &v24);

              *(v13 + 4) = v17;
              _os_log_impl(&dword_1D16EC000, v11, v12, "Selected locations have a mix of map IDs!! %s", v13, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v14);
              MEMORY[0x1D3893640](v14, -1, -1);
              MEMORY[0x1D3893640](v13, -1, -1);
            }

            *a3 = 0;
            a3[1] = 0;
            a3[2] = 0;
            return;
          }

          v18 = (a2 + 32);
          v19 = *(a2 + 16) + 1;
          while (--v19)
          {
            v20 = v18 + 6;
            v21 = *v18;
            v18 += 6;
            if (v21 == v4)
            {
              v23 = *(v20 - 2);
              v22 = *(v20 - 1);
              *a3 = v4;
              a3[1] = v23;
              a3[2] = v22;

              return;
            }
          }
        }
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

uint64_t ServiceArea.area(for:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v4 = (*v2 + 32);
    while (1)
    {
      v6 = *v4;
      v5 = v4[1];
      *&v12[9] = *(v4 + 25);
      v11 = v6;
      *v12 = v5;
      if (v6 == result)
      {
        break;
      }

      v4 += 3;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v7 = *&v12[16];
    v8 = v12[24];
    v9 = *v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    *(a2 + 32) = v7;
    *(a2 + 40) = v8;
    return sub_1D18B869C(&v11, &v10);
  }

  else
  {
LABEL_5:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = xmmword_1D1E85870;
    *(a2 + 40) = 0;
  }

  return result;
}

unint64_t sub_1D19747C4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7374726F70707573;
    v7 = 0xD000000000000013;
    if (a1 != 10)
    {
      v7 = 0xD000000000000017;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000029;
    if (a1 != 7)
    {
      v8 = 0xD000000000000010;
    }

    if (a1 == 6)
    {
      v8 = 0x73736572676F7270;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6574726F70707573;
    v2 = 0x64657463656C6573;
    v3 = 0x41746E6572727563;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x64657463656C6573;
    if (a1 == 1)
    {
      v4 = 0x6574726F70707573;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D1974984@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D197AAFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D19749AC(uint64_t a1)
{
  v2 = sub_1D1979808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19749E8(uint64_t a1)
{
  v2 = sub_1D1979808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServiceArea.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647BE8, &qword_1D1E88508);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - v5;
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 24);
  v31 = *(v1 + 16);
  v32 = v7;
  v10 = *(v1 + 40);
  v28 = *(v1 + 32);
  v29 = v9;
  v30 = v10;
  v11 = *(v1 + 48);
  v26 = *(v1 + 56);
  v27 = v11;
  v12 = *(v1 + 64);
  v24 = *(v1 + 72);
  v25 = v12;
  v13 = *(v1 + 80);
  v41 = *(v1 + 88);
  v22 = *(v1 + 92);
  v23 = v13;
  v21 = *(v1 + 96);
  v20 = *(v1 + 104);
  v19[7] = *(v1 + 112);
  v19[6] = *(v1 + 113);
  v19[5] = *(v1 + 114);
  v19[4] = *(v1 + 115);
  v14 = *(v1 + 116);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1979808();

  sub_1D1E6930C();
  v35 = v8;
  v42 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647548, &qword_1D1E88510);
  sub_1D197985C();
  v34 = v3;
  v15 = v33;
  sub_1D1E68F1C();
  if (v15)
  {

    return (*(v4 + 8))(v6, v34);
  }

  else
  {
    v17 = v31;
    v19[3] = v14;
    v33 = v4;

    v35 = v32;
    v42 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647C08, &unk_1D1E88518);
    sub_1D1979934();
    sub_1D1E68E5C();
    v35 = v17;
    v42 = 2;
    sub_1D1E68E5C();
    v35 = v29;
    v36 = v28;
    v37 = v30;
    v42 = 3;
    sub_1D19799B8();

    sub_1D1E68E5C();

    v35 = v27;
    v36 = v26;
    v37 = v25;
    v38 = v24;
    v39 = v23;
    v40 = v41;
    v42 = 4;
    sub_1D1978DB8(v27, v26, v25, v24);
    sub_1D19798E0();
    sub_1D1E68E5C();
    sub_1D1979A0C(v35, v36, v37, v38);
    LOBYTE(v35) = 5;
    v42 = v21;
    sub_1D1E68EAC();
    v35 = v20;
    v42 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646DE8, &unk_1D1E85520);
    sub_1D1979A20();
    sub_1D1E68E5C();
    LOBYTE(v35) = 7;
    sub_1D1E68EDC();
    LOBYTE(v35) = 8;
    sub_1D1E68EDC();
    LOBYTE(v35) = 9;
    sub_1D1E68EDC();
    LOBYTE(v35) = 10;
    sub_1D1E68EDC();
    LOBYTE(v35) = 11;
    v18 = v34;
    sub_1D1E68EDC();
    return (*(v33 + 8))(0, v18);
  }
}

uint64_t ServiceArea.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 40);
  v14 = *(v1 + 56);
  v15 = *(v1 + 48);
  v6 = *(v1 + 72);
  v12 = *(v1 + 80);
  v13 = *(v1 + 64);
  v11 = *(v1 + 88);
  v7 = *(v1 + 104);
  v16 = *(v1 + 96);
  sub_1D1770B7C(a1, *v1);
  if (v3)
  {
    sub_1D1E6922C();
    v8 = *(v3 + 16);
    MEMORY[0x1D3892850](v8);
    if (v8)
    {
      v9 = v3 + 48;
      do
      {
        sub_1D1E6924C();

        sub_1D1E678EC();

        v9 += 24;
        --v8;
      }

      while (v8);
    }

    if (v4)
    {
LABEL_6:
      sub_1D1E6922C();
      sub_1D1770B7C(a1, v4);
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_1D1E6922C();
    if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_1D1E6922C();
  if (v5)
  {
LABEL_7:
    sub_1D1E6922C();
    sub_1D1E6924C();
    sub_1D1E678EC();
    if (v6 == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  sub_1D1E6922C();
  if (v6 == 1)
  {
LABEL_8:
    sub_1D1E6922C();
    if (!v16)
    {
      goto LABEL_9;
    }

LABEL_15:
    sub_1D1E6922C();
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_16:
    sub_1D1E6922C();
    goto LABEL_17;
  }

LABEL_14:
  *&v17 = v15;
  *(&v17 + 1) = v14;
  *v18 = v13;
  *&v18[8] = v6;
  *&v18[16] = v12;
  v18[24] = v11;
  sub_1D1E6922C();
  v19[0] = v15;
  v19[1] = v14;
  v19[2] = v13;
  v19[3] = v6;
  v19[4] = v12;
  v20 = v11;
  sub_1D18B869C(v19, &v21);
  ServiceArea.Area.hash(into:)(a1);
  v21 = v17;
  v22[0] = *v18;
  *(v22 + 9) = *&v18[9];
  sub_1D18B86F8(&v21);
  if (v16)
  {
    goto LABEL_15;
  }

LABEL_9:
  sub_1D1E6922C();
  sub_1D1E6924C();
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_10:
  sub_1D1E6922C();
  sub_1D176F7B0(a1, v7);
LABEL_17:
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  return sub_1D1E6922C();
}