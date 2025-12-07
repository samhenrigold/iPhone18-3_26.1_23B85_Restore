void *sub_18E2FE28C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_18E2FE0E4(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_18E2FE304(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_18E2706EC(&qword_1EABE10C0, &qword_18E49DD50);
  result = sub_18E44F17C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 16 * v16);
    v22 = v21[1];
    v35 = *v21;
    sub_18E44F48C();

    sub_18E44EB4C();
    result = sub_18E44F4CC();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    v32 = (*(v9 + 56) + 16 * v26);
    *v32 = v35;
    v32[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v34;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_18E2FE54C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_18E2FE6A8(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetManagerShared(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

BOOL sub_18E2FE928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_18E2706EC(&qword_1EABE2DC8, &unk_18E4AFE40);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v20 - v13;
  v20[7] = a1;
  v20[8] = a2;
  v20[9] = a3;
  v20[4] = a4;
  v20[5] = a5;
  v20[6] = a6;
  v20[2] = AssetSpecificationVersion.number.getter();
  v20[3] = v15;
  v20[0] = AssetSpecificationVersion.number.getter();
  v20[1] = v16;
  v17 = sub_18E44E72C();
  sub_18E201DC8(v14, 1, 1, v17);
  sub_18E24D39C();
  v18 = sub_18E44EF1C();
  sub_18E2FF568(v14);

  return v18 == -1;
}

BOOL sub_18E2FEA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18E2706EC(&qword_1EABE2DC8, &unk_18E4AFE40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  v14[2] = a1;
  v14[3] = a2;
  v14[0] = a3;
  v14[1] = a4;
  v11 = sub_18E44E72C();
  sub_18E201DC8(v10, 1, 1, v11);
  sub_18E24D39C();

  v12 = sub_18E44EF1C();
  sub_18E2FF568(v10);

  return v12 == -1;
}

uint64_t AssetVersion.number.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static AssetVersion.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_18E44F3CC();
  }
}

BOOL sub_18E2FEC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18E2706EC(&qword_1EABE2DC8, &unk_18E4AFE40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  v14[2] = a3;
  v14[3] = a4;
  v14[0] = a1;
  v14[1] = a2;
  v11 = sub_18E44E72C();
  sub_18E201DC8(v10, 1, 1, v11);
  sub_18E24D39C();

  v12 = sub_18E44EF1C();
  sub_18E2FF568(v10);

  return v12 != -1;
}

BOOL sub_18E2FEDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18E2706EC(&qword_1EABE2DC8, &unk_18E4AFE40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  v14[2] = a1;
  v14[3] = a2;
  v14[0] = a3;
  v14[1] = a4;
  v11 = sub_18E44E72C();
  sub_18E201DC8(v10, 1, 1, v11);
  sub_18E24D39C();

  v12 = sub_18E44EF1C();
  sub_18E2FF568(v10);

  return v12 != -1;
}

BOOL sub_18E2FEEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18E2706EC(&qword_1EABE2DC8, &unk_18E4AFE40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v14 - v9;
  v14[2] = a3;
  v14[3] = a4;
  v14[0] = a1;
  v14[1] = a2;
  v11 = sub_18E44E72C();
  sub_18E201DC8(v10, 1, 1, v11);
  sub_18E24D39C();

  v12 = sub_18E44EF1C();
  sub_18E2FF568(v10);

  return v12 == -1;
}

ModelCatalog::AssetSpecificationVersion __swiftcall AssetSpecificationVersion.init(major:minor:patch:)(Swift::UInt major, Swift::UInt minor, Swift::UInt patch)
{
  *v3 = major;
  v3[1] = minor;
  v3[2] = patch;
  result.patch = patch;
  result.minor = minor;
  result.major = major;
  return result;
}

uint64_t AssetSpecificationVersion.number.getter()
{
  v3 = sub_18E1C6BD8();
  MEMORY[0x193ACC300](46, 0xE100000000000000);
  v0 = sub_18E1C6BD8();
  MEMORY[0x193ACC300](v0);

  MEMORY[0x193ACC300](46, 0xE100000000000000);
  v1 = sub_18E1C6BD8();
  MEMORY[0x193ACC300](v1);

  return v3;
}

unint64_t sub_18E2FF184()
{
  result = qword_1EABE2D98;
  if (!qword_1EABE2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2D98);
  }

  return result;
}

unint64_t sub_18E2FF1D8()
{
  result = qword_1EABE2DA0;
  if (!qword_1EABE2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2DA0);
  }

  return result;
}

unint64_t sub_18E2FF230()
{
  result = qword_1EABE2DA8;
  if (!qword_1EABE2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2DA8);
  }

  return result;
}

uint64_t sub_18E2FF2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E2FF2EC()
{
  result = qword_1EABE2DB0;
  if (!qword_1EABE2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2DB0);
  }

  return result;
}

unint64_t sub_18E2FF340()
{
  result = qword_1EABE2DB8;
  if (!qword_1EABE2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2DB8);
  }

  return result;
}

unint64_t sub_18E2FF39C()
{
  result = qword_1EABE2DC0;
  if (!qword_1EABE2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2DC0);
  }

  return result;
}

uint64_t sub_18E2FF480(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_18E2FF4C0(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AssetSpecificationVersion(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AssetSpecificationVersion(uint64_t result, int a2, int a3)
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

uint64_t sub_18E2FF568(uint64_t a1)
{
  v2 = sub_18E2706EC(&qword_1EABE2DC8, &unk_18E4AFE40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SupportedArgument.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E1C5780();
  v36 = v6;
  v37 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v9;
  v11 = type metadata accessor for SupportedArgument(0, v10, v9, v9);
  sub_18E1C5780();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_18E1C5780();
  v19 = v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v32 - v22;
  v24 = *(v21 + 48);
  v35 = v13;
  v25 = *(v13 + 16);
  v25(&v32 - v22, a1, v11);
  v25(&v23[v24], v37, v11);
  sub_18E1C6AC8(v23);
  if (v27)
  {
    v26 = 1;
    sub_18E1C6AC8(&v23[v24]);
    if (v27)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v25(v16, v23, v11);
    sub_18E1C6AC8(&v23[v24]);
    if (!v27)
    {
      v28 = v36;
      v29 = v33;
      (*(v36 + 32))(v33, &v23[v24], a3);
      v26 = sub_18E44EA1C();
      v30 = *(v28 + 8);
      v30(v29, a3);
      v30(v16, a3);
LABEL_10:
      v19 = v35;
      goto LABEL_11;
    }

    (*(v36 + 8))(v16, a3);
  }

  v26 = 0;
  v11 = TupleTypeMetadata2;
LABEL_11:
  (*(v19 + 8))(v23, v11);
  return v26 & 1;
}

uint64_t sub_18E2FF94C(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_18E2FF9A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_18E1CAF28(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_18E2FFB20(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
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
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            sub_18E201DC8(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_18E2FFD5C()
{
  result = qword_1EABE04B8;
  if (!qword_1EABE04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE04B8);
  }

  return result;
}

unint64_t sub_18E2FFDC4()
{
  result = qword_1EABE2DD0;
  if (!qword_1EABE2DD0)
  {
    sub_18E2707F8(&qword_1EABE2DD8, &qword_18E4AFFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2DD0);
  }

  return result;
}

uint64_t sub_18E2FFE38(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
LABEL_8:
    while (1)
    {
      v14 = (*(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v15 = v14[1];
      v18[0] = *v14;
      v18[1] = v15;

      a1(&v17, v18);
      if (v3)
      {
        break;
      }

      if (v17)
      {
        MEMORY[0x193ACC400](result);
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18E44ECBC();
        }

        result = sub_18E44ECDC();
        v5 = v19;
      }

      v9 &= v9 - 1;
      if (!v9)
      {
        goto LABEL_4;
      }
    }

    return v5;
  }

  else
  {
LABEL_4:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return v5;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        v12 = v13;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static Catalog.requestDownload(for:on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_18E2706EC(&qword_1EABE2DE0, &qword_18E4B0040);
  sub_18E1C4EAC();
  v34 = v8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v33 = &v29 - v11;
  v36[0] = MEMORY[0x1E69E7CD0];
  v12 = *(a1 + 16);
  v13 = a1 + 32;
  v14 = v12 + 1;
  v15 = (a1 + 32);
  while (--v14)
  {
    v16 = v15 + 5;
    sub_18E3002A4(v36, v15);
    v15 = v16;
    if (v3)
    {

      __break(1u);
      break;
    }
  }

  v35 = a2;
  v32 = v36[0];
  v17 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v29 = v7;
    v30 = a1;
    v31 = a3;
    v39 = MEMORY[0x1E69E7CC0];
    sub_18E26F1E0(0, v12, 0);
    v17 = v39;
    do
    {
      sub_18E1E4398(v13, v36);
      v19 = v37;
      v18 = v38;
      sub_18E1E15F4(v36, v37);
      v20 = (*(*(v18 + 8) + 24))(v19);
      v22 = v21;
      v10 = sub_18E1C9934(v36);
      v39 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_18E26F1E0(v23 > 1, v24 + 1, 1);
        v17 = v39;
      }

      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      v13 += 40;
      --v12;
    }

    while (v12);
    a1 = v30;
    v7 = v29;
  }

  MEMORY[0x1EEE9AC00](v10);
  v26 = v34;
  *(&v29 - 4) = v35;
  *(&v29 - 3) = v17;
  v27 = v33;
  *(&v29 - 2) = v32;
  *(&v29 - 1) = a1;
  (*(v26 + 104))(v27, *MEMORY[0x1E69E8650], v7);
  sub_18E44ED8C();
}

void sub_18E3002A4(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  sub_18E1E15F4(a2, v3);
  (*(v4 + 64))(&v42, v3, v4);
  v5 = [objc_opt_self() sharedManager];
  if (sub_18E44EB5C())
  {
    v6 = sub_18E44EA8C();
    v7 = sub_18E44EA8C();
    v8 = [v5 downloadStatusForSubscriber:v6 subscriptionName:v7];

    sub_18E299C2C(v8, &v39);
    v9 = v39;

    switch(v9)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        v10 = a2[3];
        v11 = a2[4];
        sub_18E1E15F4(a2, v10);
        (*(v11 + 64))(&v42, v10, v11);
        sub_18E274C80(&v39, &v42);

        return;
      case 6:
        if (qword_1ED6A8AB0 != -1)
        {
          swift_once();
        }

        v33 = sub_18E44E83C();
        sub_18E1C95EC(v33, qword_1ED6A9870);
        sub_18E1E4398(a2, &v39);
        v17 = sub_18E44E80C();
        v18 = sub_18E44EDFC();
        if (!os_log_type_enabled(v17, v18))
        {
          goto LABEL_23;
        }

        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v45 = v20;
        *v19 = 136315138;
        v34 = v40;
        v35 = v41;
        sub_18E1E15F4(&v39, v40);
        (*(v35 + 64))(&v42, v34, v35);
        v36 = v43;
        v37 = v44;

        sub_18E1C9934(&v39);
        v38 = sub_18E1C9624(v36, v37, &v45);

        *(v19 + 4) = v38;
        v26 = "Non network error ocurred for %s";
        goto LABEL_22;
      case 7:
        if (qword_1ED6A8AB0 != -1)
        {
          swift_once();
        }

        v16 = sub_18E44E83C();
        sub_18E1C95EC(v16, qword_1ED6A9870);
        sub_18E1E4398(a2, &v39);
        v17 = sub_18E44E80C();
        v18 = sub_18E44EDFC();
        if (!os_log_type_enabled(v17, v18))
        {
          goto LABEL_23;
        }

        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v45 = v20;
        *v19 = 136315138;
        v21 = v40;
        v22 = v41;
        sub_18E1E15F4(&v39, v40);
        (*(v22 + 64))(&v42, v21, v22);
        v23 = v43;
        v24 = v44;

        sub_18E1C9934(&v39);
        v25 = sub_18E1C9624(v23, v24, &v45);

        *(v19 + 4) = v25;
        v26 = "Network error ocurred for %s";
        goto LABEL_22;
      default:
        if (qword_1ED6A8AB0 != -1)
        {
          swift_once();
        }

        v27 = sub_18E44E83C();
        sub_18E1C95EC(v27, qword_1ED6A9870);
        sub_18E1E4398(a2, &v39);
        v17 = sub_18E44E80C();
        v18 = sub_18E44EDFC();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v45 = v20;
          *v19 = 136315138;
          v28 = v40;
          v29 = v41;
          sub_18E1E15F4(&v39, v40);
          (*(v29 + 64))(&v42, v28, v29);
          v30 = v43;
          v31 = v44;

          sub_18E1C9934(&v39);
          v32 = sub_18E1C9624(v30, v31, &v45);

          *(v19 + 4) = v32;
          v26 = "Skipping unknown subscription %s";
LABEL_22:
          _os_log_impl(&dword_18E1C1000, v17, v18, v26, v19, 0xCu);
          sub_18E1C9934(v20);
          MEMORY[0x193ACD400](v20, -1, -1);
          MEMORY[0x193ACD400](v19, -1, -1);
        }

        else
        {
LABEL_23:

          sub_18E1C9934(&v39);
        }

        break;
    }
  }

  else
  {

    if (qword_1ED6A8AB0 != -1)
    {
      swift_once();
    }

    v12 = sub_18E44E83C();
    sub_18E1C95EC(v12, qword_1ED6A9870);
    v13 = sub_18E44E80C();
    v14 = sub_18E44EDFC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_18E1C1000, v13, v14, "Skipping unmanaged subscription", v15, 2u);
      MEMORY[0x193ACD400](v15, -1, -1);
    }
  }
}

void sub_18E300924(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v101 = a5;
  v102 = a4;
  v99 = a1;
  v98 = sub_18E2706EC(&qword_1EABE2E30, &qword_18E4B0108);
  v100 = *(v98 - 8);
  v94 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v93 = v89 - v6;
  v7 = sub_18E44EE5C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18E44EE4C();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_18E44E90C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v97 = a2;
  }

  else
  {
    v111 = sub_18E29B230();
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_18E44EFFC();

    *&aBlock = 0xD000000000000028;
    *(&aBlock + 1) = 0x800000018E467960;
    *&v118 = sub_18E44ECEC();
    v14 = sub_18E44F39C();
    MEMORY[0x193ACC300](v14);

    v110 = *(&aBlock + 1);
    sub_18E44E8FC();
    *&aBlock = v13;
    sub_18E29B274();
    sub_18E2706EC(&qword_1EABE12D8, &qword_18E49ED00);
    sub_18E303A08();
    sub_18E44EF4C();
    (*(v8 + 104))(v10, *MEMORY[0x1E69E8090], v7);
    v97 = sub_18E44EE6C();
  }

  v15 = objc_opt_self();
  v16 = a2;
  v96 = [v15 sharedManager];
  v17 = swift_allocObject();
  v19 = v102 + 56;
  v18 = *(v102 + 56);
  v20 = 1 << *(v102 + 32);
  v21 = -1;
  v22 = *(v102 + 16);
  v95 = v17;
  *(v17 + 16) = v22;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v23 = v21 & v18;
  v24 = (v20 + 63) >> 6;
  v90 = v101 + 32;
  v89[3] = 0x800000018E45B3E0;
  v89[2] = 0x800000018E45B3C0;
  v89[1] = 0x800000018E45B3A0;
  v89[0] = 0x800000018E45B2D0;
  v105 = v100 + 16;
  v89[5] = v100 + 32;
  v89[4] = &v113;

  v25 = 0;
  v92 = v19;
  v91 = v24;
LABEL_7:
  v26 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v24)
    {
      v88 = v102;

      *(swift_allocObject() + 16) = v88;

      sub_18E44ED5C();

      return;
    }

    v23 = *(v19 + 8 * v27);
    ++v25;
    if (v23)
    {
      v25 = v27;
LABEL_12:
      v104 = (v23 - 1) & v23;
      v103 = v25;
      v28 = *(v102 + 48) + 56 * (__clz(__rbit64(v23)) | (v25 << 6));
      v29 = *(v28 + 8);
      v111 = *v28;
      v30 = *(v28 + 24);
      v109 = *(v28 + 16);
      v31 = *(v28 + 32);
      v32 = *(v28 + 40);
      v106 = *(v28 + 48);
      v107 = v31;
      v33 = *(v101 + 16);

      v110 = v30;

      v108 = v32;

      v34 = v90;
      if (v33)
      {
        while (2)
        {
          sub_18E1E4398(v34, &v118);
          v35 = v119;
          v36 = v120;
          sub_18E1E15F4(&v118, v119);
          (*(v36 + 64))(&aBlock, v35, v36);
          v38 = v113;
          v37 = v114;
          v39 = v115;
          v40 = v116;
          v41 = v117;
          v42 = aBlock == v111 && *(&aBlock + 1) == v29;
          if (v42 || (sub_18E44F3CC() & 1) != 0)
          {
            v43 = v38 == v109 && v37 == v110;
            if (v43 || (sub_18E44F3CC() & 1) != 0)
            {
              v44 = v39 == v107 && v40 == v108;
              if (v44 || (sub_18E44F3CC() & 1) != 0)
              {
                if (v41 == 15)
                {

                  if (v106 == 15)
                  {
                    goto LABEL_83;
                  }

LABEL_33:
                  sub_18E1C9934(&v118);
LABEL_34:
                  v34 += 40;
                  if (!--v33)
                  {
                    goto LABEL_88;
                  }

                  continue;
                }

                if (v106 != 15)
                {
                  v45 = 0xEF31765F65677261;
                  v46 = 0x6C5F6D6C65646F63;
                  switch(v41)
                  {
                    case 1:
                      goto LABEL_56;
                    case 2:
                      v46 = 0x6C5F6D6C65646F63;
                      v51 = 1701278305;
                      goto LABEL_55;
                    case 3:
                      v46 = 0x6C5F6D6C65646F63;
                      v50 = 1701278305;
                      goto LABEL_45;
                    case 4:
                      v46 = 0x6C5F6D6C65646F63;
                      v49 = 1701278305;
                      goto LABEL_53;
                    case 5:
                      v46 = 0x6C5F6D6C65646F63;
                      v48 = 1701278305;
                      goto LABEL_48;
                    case 6:
                      v46 = 0x735F6D6C65646F63;
                      v45 = 0xED00007974656661;
                      goto LABEL_56;
                    case 7:
                      v46 = 0x735F6D6C65646F63;
                      v45 = 0xEF31765F6C6C616DLL;
                      goto LABEL_56;
                    case 8:
                      v46 = 0x735F6D6C65646F63;
                      v51 = 1819042157;
LABEL_55:
                      v45 = v51 | 0xEF32765F00000000;
                      goto LABEL_56;
                    case 9:
                      v46 = 0x735F6D6C65646F63;
                      v50 = 1819042157;
LABEL_45:
                      v45 = v50 | 0xEF33765F00000000;
                      goto LABEL_56;
                    case 10:
                      v46 = 0x735F6D6C65646F63;
                      v49 = 1819042157;
LABEL_53:
                      v45 = v49 | 0xEF34765F00000000;
                      goto LABEL_56;
                    case 11:
                      v46 = 0x735F6D6C65646F63;
                      v48 = 1819042157;
LABEL_48:
                      v45 = v48 | 0xEF35765F00000000;
                      goto LABEL_56;
                    case 12:
                      v46 = 0xD000000000000016;
                      v47 = &v116;
                      goto LABEL_50;
                    case 13:
                      v46 = 0xD000000000000015;
                      v47 = &v117;
                      goto LABEL_50;
                    case 14:
                      v46 = 0xD000000000000014;
                      v47 = &v118;
                      goto LABEL_50;
                    default:
                      v46 = 0xD000000000000016;
                      v47 = &v115;
LABEL_50:
                      v45 = *(v47 - 32);
LABEL_56:
                      v52 = 0x6C5F6D6C65646F63;
                      v53 = 0xEF31765F65677261;
                      switch(v106)
                      {
                        case 1:
                          goto LABEL_76;
                        case 2:
                          v52 = 0x6C5F6D6C65646F63;
                          v58 = 1701278305;
                          goto LABEL_75;
                        case 3:
                          v52 = 0x6C5F6D6C65646F63;
                          v57 = 1701278305;
                          goto LABEL_65;
                        case 4:
                          v52 = 0x6C5F6D6C65646F63;
                          v56 = 1701278305;
                          goto LABEL_73;
                        case 5:
                          v52 = 0x6C5F6D6C65646F63;
                          v55 = 1701278305;
                          goto LABEL_68;
                        case 6:
                          v52 = 0x735F6D6C65646F63;
                          v53 = 0xED00007974656661;
                          goto LABEL_76;
                        case 7:
                          v52 = 0x735F6D6C65646F63;
                          v53 = 0xEF31765F6C6C616DLL;
                          goto LABEL_76;
                        case 8:
                          v52 = 0x735F6D6C65646F63;
                          v58 = 1819042157;
LABEL_75:
                          v53 = v58 | 0xEF32765F00000000;
                          goto LABEL_76;
                        case 9:
                          v52 = 0x735F6D6C65646F63;
                          v57 = 1819042157;
LABEL_65:
                          v53 = v57 | 0xEF33765F00000000;
                          goto LABEL_76;
                        case 10:
                          v52 = 0x735F6D6C65646F63;
                          v56 = 1819042157;
LABEL_73:
                          v53 = v56 | 0xEF34765F00000000;
                          goto LABEL_76;
                        case 11:
                          v52 = 0x735F6D6C65646F63;
                          v55 = 1819042157;
LABEL_68:
                          v53 = v55 | 0xEF35765F00000000;
                          goto LABEL_76;
                        case 12:
                          v52 = 0xD000000000000016;
                          v54 = &v116;
                          goto LABEL_70;
                        case 13:
                          v52 = 0xD000000000000015;
                          v54 = &v117;
                          goto LABEL_70;
                        case 14:
                          v52 = 0xD000000000000014;
                          v54 = &v118;
                          goto LABEL_70;
                        default:
                          v52 = 0xD000000000000016;
                          v54 = &v115;
LABEL_70:
                          v53 = *(v54 - 32);
LABEL_76:
                          if (v46 == v52 && v45 == v53)
                          {
                          }

                          else
                          {
                            v60 = sub_18E44F3CC();

                            if ((v60 & 1) == 0)
                            {
                              goto LABEL_33;
                            }
                          }

                          break;
                      }

                      break;
                  }

LABEL_83:
                  sub_18E1C551C(&v118, &aBlock);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v121 = v26;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_18E26F298(0, *(v26 + 16) + 1, 1);
                    v26 = v121;
                  }

                  v63 = *(v26 + 16);
                  v62 = *(v26 + 24);
                  if (v63 >= v62 >> 1)
                  {
                    sub_18E26F298(v62 > 1, v63 + 1, 1);
                    v26 = v121;
                  }

                  *(v26 + 16) = v63 + 1;
                  sub_18E1C551C(&aBlock, v26 + 40 * v63 + 32);
                  goto LABEL_34;
                }
              }
            }
          }

          break;
        }

        goto LABEL_33;
      }

LABEL_88:
      v64 = *(v26 + 16);
      if (v64)
      {
        *&v118 = MEMORY[0x1E69E7CC0];
        sub_18E26F1E0(0, v64, 0);
        v65 = v118;
        v66 = v26 + 32;
        do
        {
          sub_18E1E4398(v66, &aBlock);
          v67 = v114;
          v68 = v115;
          sub_18E1E15F4(&aBlock, v114);
          v69 = (*(*(v68 + 1) + 24))(v67);
          v71 = v70;
          sub_18E1C9934(&aBlock);
          *&v118 = v65;
          v73 = *(v65 + 16);
          v72 = *(v65 + 24);
          if (v73 >= v72 >> 1)
          {
            sub_18E26F1E0(v72 > 1, v73 + 1, 1);
            v65 = v118;
          }

          *(v65 + 16) = v73 + 1;
          v74 = v65 + 16 * v73;
          *(v74 + 32) = v69;
          *(v74 + 40) = v71;
          v66 += 40;
          --v64;
        }

        while (v64);
      }

      else
      {

        v65 = MEMORY[0x1E69E7CC0];
      }

      v111 = sub_18E44EA8C();
      v109 = sub_18E44EA8C();

      v75 = v100;
      v107 = *(v100 + 16);
      v76 = v93;
      v77 = v99;
      v78 = v98;
      v107(v93, v99, v98);
      v79 = (*(v75 + 80) + 24) & ~*(v75 + 80);
      v80 = swift_allocObject();
      *(v80 + 16) = v65;
      v81 = *(v75 + 32);
      v81(v80 + v79, v76, v78);
      v115 = sub_18E303BB4;
      v116 = v80;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v113 = sub_18E29AF30;
      v114 = &unk_1F014DCB0;
      v110 = _Block_copy(&aBlock);
      v108 = v97;

      v107(v76, v77, v78);
      v82 = swift_allocObject();
      *(v82 + 16) = v95;
      v81(v82 + v79, v76, v78);
      v115 = sub_18E303D08;
      v116 = v82;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v113 = sub_18E203E04;
      v114 = &unk_1F014DD00;
      v83 = _Block_copy(&aBlock);

      v85 = v110;
      v84 = v111;
      v87 = v108;
      v86 = v109;
      [v96 updateAssetsForSubscriber:v111 subscriptionName:v109 policies:0 queue:v108 detailedProgress:v110 completion:v83];
      _Block_release(v83);
      _Block_release(v85);

      v19 = v92;
      v24 = v91;
      v23 = v104;
      v25 = v103;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_18E3017F8(void *a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE2E48, &qword_18E4B0118);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-1] - v6;
  [a1 completedPercent];
  v9 = v8;
  sub_18E299C2C([a1 downloadStatus], v15);
  v10 = 0x807030502010004uLL >> (8 * LOBYTE(v15[0]));
  v11 = [a1 completedBytes];
  v12 = [a1 totalBytes];
  v15[0] = a2;
  v15[1] = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;

  sub_18E2706EC(&qword_1EABE2E30, &qword_18E4B0108);
  sub_18E44ED6C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_18E301988(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v5;
    if (v5 <= 0)
    {
      sub_18E2706EC(&qword_1EABE2E30, &qword_18E4B0108);
      return sub_18E44ED7C();
    }
  }

  return result;
}

void sub_18E3019FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_18E2706EC(&qword_1EABE2E38, &qword_18E4B0110);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  (*(v4 + 16))(&v29 - v5, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == *MEMORY[0x1E69E8610])
  {
    if (qword_1ED6A8AB0 != -1)
    {
      swift_once();
    }

    v8 = sub_18E44E83C();
    sub_18E1C95EC(v8, qword_1ED6A9870);

    v9 = sub_18E44E80C();
    v10 = sub_18E44EE2C();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    sub_18E303D80();
    v13 = sub_18E44EDBC();
    v15 = sub_18E1C9624(v13, v14, &v30);

    *(v11 + 4) = v15;
    v16 = "Finish request download for %s";
LABEL_11:
    _os_log_impl(&dword_18E1C1000, v9, v10, v16, v11, 0xCu);
    sub_18E1C9934(v12);
    MEMORY[0x193ACD400](v12, -1, -1);
    MEMORY[0x193ACD400](v11, -1, -1);
LABEL_12:

    return;
  }

  if (v7 == *MEMORY[0x1E69E8618])
  {
    if (qword_1ED6A8AB0 != -1)
    {
      swift_once();
    }

    v17 = sub_18E44E83C();
    sub_18E1C95EC(v17, qword_1ED6A9870);

    v9 = sub_18E44E80C();
    v10 = sub_18E44EE2C();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    sub_18E303D80();
    v18 = sub_18E44EDBC();
    v20 = sub_18E1C9624(v18, v19, &v30);

    *(v11 + 4) = v20;
    v16 = "Cancelled download request updates for %s";
    goto LABEL_11;
  }

  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v21 = sub_18E44E83C();
  sub_18E1C95EC(v21, qword_1ED6A9870);

  v22 = sub_18E44E80C();
  v23 = sub_18E44EE0C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30 = v25;
    *v24 = 136315138;
    sub_18E303D80();
    v26 = sub_18E44EDBC();
    v28 = sub_18E1C9624(v26, v27, &v30);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_18E1C1000, v22, v23, "Unexpected termination while requesting download %s", v24, 0xCu);
    sub_18E1C9934(v25);
    MEMORY[0x193ACD400](v25, -1, -1);
    MEMORY[0x193ACD400](v24, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t static Catalog.monitorUpdates(for:on:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE2DE8, &qword_18E4B0048);
  sub_18E1C4EAC();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11[-v8];
  v12 = a1;
  v13 = a2;
  sub_18E2706EC(&qword_1EABE2DF0, &qword_18E4B0050);
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8650], v4);
  return sub_18E44ED8C();
}

void sub_18E301FB8(uint64_t a1, uint64_t a2, void *a3)
{
  v52 = a1;
  v5 = sub_18E44EE5C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v51 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_18E44EE4C();
  MEMORY[0x1EEE9AC00](v49);
  v50 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18E44E90C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v48 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v53 = a2;
  if (v11)
  {
    v46 = v6;
    v47 = v5;
    v13 = a3;
    v59[0] = MEMORY[0x1E69E7CC0];
    sub_18E26F1E0(0, v11, 0);
    v14 = v59[0];
    v15 = a2 + 32;
    v16 = v11;
    do
    {
      sub_18E1E4398(v15, &v54);
      v18 = v56;
      v17 = v57;
      sub_18E1E15F4(&v54, v56);
      v19 = (*(*(v17 + 8) + 24))(v18);
      v21 = v20;
      sub_18E1C9934(&v54);
      v59[0] = v14;
      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_18E26F1E0(v22 > 1, v23 + 1, 1);
        v14 = v59[0];
      }

      *(v14 + 16) = v23 + 1;
      v24 = v14 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      v15 += 40;
      --v16;
    }

    while (v16);
    a3 = v13;
    v6 = v46;
    v5 = v47;
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v25 = [objc_opt_self() sharedManager];
  if (a3)
  {
    v26 = a3;
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_18:
    v39 = a3;
    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v47 = sub_18E29B230();
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_18E44EFFC();

  v54 = 0xD000000000000027;
  v55 = 0x800000018E467930;
  v59[0] = sub_18E44ECEC();
  v38 = sub_18E44F39C();
  MEMORY[0x193ACC300](v38);

  v46 = v54;
  v45[1] = v55;
  sub_18E44E8FC();
  v54 = v12;
  sub_18E29B274();
  sub_18E2706EC(&qword_1EABE12D8, &qword_18E49ED00);
  sub_18E303A08();
  sub_18E44EF4C();
  (*(v6 + 104))(v51, *MEMORY[0x1E69E8090], v5);
  v26 = sub_18E44EE6C();
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_10:
  v27 = v53 + 32;
  v28 = a3;
  v29 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_18E1E4398(v27, v59);
    v30 = v60;
    v31 = v61;
    sub_18E1E15F4(v59, v60);
    (*(v31 + 64))(&v54, v30, v31);
    v32 = v57;
    v33 = v58;

    sub_18E1C9934(v59);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18E264698();
      v29 = v36;
    }

    v34 = *(v29 + 16);
    if (v34 >= *(v29 + 24) >> 1)
    {
      sub_18E264698();
      v29 = v37;
    }

    *(v29 + 16) = v34 + 1;
    v35 = v29 + 16 * v34;
    *(v35 + 32) = v32;
    *(v35 + 40) = v33;
    v27 += 40;
    --v11;
  }

  while (v11);
LABEL_19:
  v40 = sub_18E207C7C(v29);
  MEMORY[0x1EEE9AC00](v40);
  v45[-4] = v25;
  v45[-3] = v26;
  v41 = v53;
  v45[-2] = v52;
  v45[-1] = v41;
  v42 = sub_18E2FFE38(sub_18E303AF0, &v45[-6], v40);

  v43 = swift_allocObject();
  v43[2] = v14;
  v43[3] = v42;
  v43[4] = v25;
  v44 = v25;
  sub_18E2706EC(&qword_1EABE2E18, &qword_18E4B00F0);
  sub_18E44ED5C();
}

void sub_18E302548(void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v22 = a3;
  v23 = a6;
  v9 = sub_18E2706EC(&qword_1EABE2E18, &qword_18E4B00F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v21 - v12;
  v14 = sub_18E44EA8C();
  v15 = *(v10 + 16);
  v21[1] = a4;
  v15(v13, a4, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v16, v13, v9);
  *(v18 + v17) = a5;
  aBlock[4] = sub_18E303B1C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E203E04;
  aBlock[3] = &unk_1F014DC38;
  v19 = _Block_copy(aBlock);

  v20 = [a2 observeAssetSet:v14 queue:v22 handler:v19];
  _Block_release(v19);

  if (!v20)
  {
    sub_18E44ED7C();
  }

  *v23 = v20;
}

uint64_t sub_18E302770(uint64_t a1, uint64_t a2)
{
  v3 = sub_18E2706EC(&qword_1EABE2E28, &qword_18E4B0100);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  v8[1] = a2;

  sub_18E2706EC(&qword_1EABE2E18, &qword_18E4B00F0);
  sub_18E44ED6C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_18E302874(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_18E2706EC(&qword_1EABE2E20, &qword_18E4B00F8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  (*(v9 + 16))(&v27 - v10, a1, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 != *MEMORY[0x1E69E8610])
  {
    if (v12 != *MEMORY[0x1E69E8618])
    {
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v19 = sub_18E44E83C();
      sub_18E1C95EC(v19, qword_1ED6A9870);

      v20 = sub_18E44E80C();
      v21 = sub_18E44EE0C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 134217984;
        *(v22 + 4) = *(a2 + 16);

        _os_log_impl(&dword_18E1C1000, v20, v21, "Unexpected termination while monitoring updates for %ld resources", v22, 0xCu);
        MEMORY[0x193ACD400](v22, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v11, v8);
      goto LABEL_18;
    }

    if (qword_1ED6A8AB0 != -1)
    {
      swift_once();
    }

    v18 = sub_18E44E83C();
    sub_18E1C95EC(v18, qword_1ED6A9870);

    v14 = sub_18E44E80C();
    v15 = sub_18E44EE2C();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_11;
    }

    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = *(a2 + 16);

    v17 = "Cancelled monitoring updates for %ld resources";
    goto LABEL_10;
  }

  if (qword_1ED6A8AB0 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v13 = sub_18E44E83C();
    sub_18E1C95EC(v13, qword_1ED6A9870);

    v14 = sub_18E44E80C();
    v15 = sub_18E44EE0C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = *(a2 + 16);

      v17 = "Finish/error monitoring updates for %ld resources";
LABEL_10:
      _os_log_impl(&dword_18E1C1000, v14, v15, v17, v16, 0xCu);
      MEMORY[0x193ACD400](v16, -1, -1);
    }

    else
    {
LABEL_11:
    }

LABEL_18:
    result = sub_18E289108();
    if (!result)
    {
      break;
    }

    v24 = result;
    if (result >= 1)
    {
      for (i = 0; i != v24; ++i)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x193ACC7B0](i, a3);
        }

        else
        {
          v26 = *(a3 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        [a4 removeObserver_];
        result = swift_unknownObjectRelease();
      }

      return result;
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

  return result;
}

void static Catalog.notifyGenerativeExperiencesReady()()
{
  if ([objc_opt_self() isClassCLocked])
  {
    if (qword_1ED6A94F8 != -1)
    {
      sub_18E1C5C20(&qword_1ED6A94F8);
    }

    v0 = sub_18E44E83C();
    sub_18E1C95EC(v0, qword_1ED6A98C0);
    oslog = sub_18E44E80C();
    v1 = sub_18E44EE2C();
    if (!os_log_type_enabled(oslog, v1))
    {
      goto LABEL_18;
    }

    v2 = swift_slowAlloc();
    *v2 = 0;
    v3 = "Not posting generative experiences ready notification because the device is not class c unlocked";
    goto LABEL_16;
  }

  v4 = [objc_opt_self() sharedManager];
  v5 = [v4 assetDeliveryReady];

  if (!v5)
  {
    if (qword_1ED6A94F8 != -1)
    {
      sub_18E1C5C20(&qword_1ED6A94F8);
    }

    v14 = sub_18E44E83C();
    sub_18E1C95EC(v14, qword_1ED6A98C0);
    oslog = sub_18E44E80C();
    v1 = sub_18E44EE2C();
    if (!os_log_type_enabled(oslog, v1))
    {
      goto LABEL_18;
    }

    v2 = swift_slowAlloc();
    *v2 = 0;
    v3 = "Not posting generative experiences ready notification because asset delivery is not ready";
LABEL_16:
    v10 = v1;
    v11 = oslog;
    v12 = v2;
    v13 = 2;
    goto LABEL_17;
  }

  v6 = sub_18E44EB1C();
  v7 = notify_post((v6 + 32));

  if (!v7)
  {
    return;
  }

  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v8 = sub_18E44E83C();
  sub_18E1C95EC(v8, qword_1ED6A9870);
  oslog = sub_18E44E80C();
  v9 = sub_18E44EE0C();
  if (os_log_type_enabled(oslog, v9))
  {
    v2 = swift_slowAlloc();
    *v2 = 67109120;
    *(v2 + 4) = v7;
    v3 = "Failed to post generative experience ready notification: %u";
    v10 = v9;
    v11 = oslog;
    v12 = v2;
    v13 = 8;
LABEL_17:
    _os_log_impl(&dword_18E1C1000, v11, v10, v3, v12, v13);
    MEMORY[0x193ACD400](v2, -1, -1);
  }

LABEL_18:
}

uint64_t static Catalog.monitorGenerativeExperiencesReadiness(on:)(uint64_t a1)
{
  sub_18E2706EC(&qword_1EABE2DF8, &qword_18E4B0058);
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v2);
  v7 = a1;
  (*(v4 + 104))(&v6[-v3], *MEMORY[0x1E69E8650]);
  return sub_18E44ED8C();
}

void sub_18E303070(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = sub_18E2706EC(&qword_1EABE2E00, &unk_18E4B00C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - v6;
  v8 = sub_18E44EE5C();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18E44EE4C();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_18E44E90C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v14 = sub_18E29B230();
    v23[1] = "e-experiences-readiness";
    v23[2] = v14;
    sub_18E44E8FC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    v15 = sub_18E29B274();
    v24 = a1;
    v23[0] = v15;
    sub_18E2706EC(&qword_1EABE12D8, &qword_18E49ED00);
    sub_18E303A08();
    a1 = v24;
    sub_18E44EF4C();
    (*(v25 + 104))(v10, *MEMORY[0x1E69E8090], v26);
    v13 = sub_18E44EE6C();
  }

  out_token = -1;
  (*(v5 + 16))(v7, a1, v4);
  v16 = v4;
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + v17, v7, v16);
  aBlock[4] = sub_18E303A6C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E3035B4;
  aBlock[3] = &unk_1F014DB98;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  v21 = v13;

  v22 = sub_18E44EB1C();
  notify_register_dispatch((v22 + 32), &out_token, v21, v19);

  _Block_release(v19);

  LODWORD(v19) = out_token;
  *(swift_allocObject() + 16) = v19;
  sub_18E44ED5C();
}

uint64_t sub_18E3034C0()
{
  v0 = sub_18E2706EC(&qword_1EABE2E10, &unk_18E4B00E0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5[-v2];
  v5[15] = 1;
  sub_18E2706EC(&qword_1EABE2E00, &unk_18E4B00C8);
  sub_18E44ED6C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_18E3035B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_18E303608(uint64_t a1, int a2)
{
  v4 = sub_18E2706EC(&qword_1EABE2E08, &qword_18E4B00D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  (*(v5 + 16))(&v20 - v6, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x1E69E8610])
  {
    if (qword_1ED6A8AB0 != -1)
    {
      swift_once();
    }

    v9 = sub_18E44E83C();
    sub_18E1C95EC(v9, qword_1ED6A9870);
    v10 = sub_18E44E80C();
    v11 = sub_18E44EE0C();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Finish/error monitoring generative experiences readiness";
LABEL_11:
    _os_log_impl(&dword_18E1C1000, v10, v11, v13, v12, 2u);
    MEMORY[0x193ACD400](v12, -1, -1);
LABEL_12:

    return notify_cancel(a2);
  }

  if (v8 == *MEMORY[0x1E69E8618])
  {
    if (qword_1ED6A8AB0 != -1)
    {
      swift_once();
    }

    v14 = sub_18E44E83C();
    sub_18E1C95EC(v14, qword_1ED6A9870);
    v10 = sub_18E44E80C();
    v11 = sub_18E44EE2C();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Cancelled monitoring generative experiences readiness";
    goto LABEL_11;
  }

  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v15 = sub_18E44E83C();
  sub_18E1C95EC(v15, qword_1ED6A9870);
  v16 = sub_18E44E80C();
  v17 = sub_18E44EE0C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_18E1C1000, v16, v17, "Unexpected termination while monitoring generative experiences readiness", v18, 2u);
    MEMORY[0x193ACD400](v18, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return notify_cancel(a2);
}

__n128 sub_18E30395C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18E303970(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_18E3039B0(uint64_t result, int a2, int a3)
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18E303A08()
{
  result = qword_1ED6A7CB8;
  if (!qword_1ED6A7CB8)
  {
    sub_18E2707F8(&qword_1EABE12D8, &qword_18E49ED00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7CB8);
  }

  return result;
}

uint64_t sub_18E303A6C()
{
  sub_18E2706EC(&qword_1EABE2E00, &unk_18E4B00C8);

  return sub_18E3034C0();
}

uint64_t sub_18E303B1C()
{
  v1 = *(sub_18E2706EC(&qword_1EABE2E18, &qword_18E4B00F0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_18E302770(v0 + v2, v3);
}

uint64_t sub_18E303BB4(void *a1)
{
  sub_18E2706EC(&qword_1EABE2E30, &qword_18E4B0108);
  v3 = *(v1 + 16);

  return sub_18E3017F8(a1, v3);
}

uint64_t sub_18E303C34(void (*a1)(void))
{
  v3 = sub_18E2706EC(&qword_1EABE2E30, &qword_18E4B0108);
  sub_18E1C4EAC();
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 24) & ~v6;
  v9 = *(v8 + 64);
  a1(*(v1 + 16));
  (*(v5 + 8))(v1 + v7, v3);

  return MEMORY[0x1EEE6BDD0](v1, v7 + v9, v6 | 7);
}

uint64_t sub_18E303D08()
{
  sub_18E2706EC(&qword_1EABE2E30, &qword_18E4B0108);
  v1 = *(v0 + 16);

  return sub_18E301988(v1);
}

unint64_t sub_18E303D80()
{
  result = qword_1EABE2E40;
  if (!qword_1EABE2E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2E40);
  }

  return result;
}

uint64_t AJAXConfiguration.init(url:modelName:endPromptToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_18E44E54C();
  sub_18E1C4EEC();
  (*(v12 + 32))(a6, a1);
  result = type metadata accessor for AJAXConfiguration(0);
  v14 = (a6 + *(result + 20));
  *v14 = a2;
  v14[1] = a3;
  v15 = (a6 + *(result + 24));
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t type metadata accessor for AJAXConfiguration(uint64_t a1)
{
  result = qword_1EABDFB20;
  if (!qword_1EABDFB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AJAXConfiguration.url.getter()
{
  sub_18E44E54C();
  sub_18E1C4EEC();
  v0 = sub_18E1C5BFC();

  return v1(v0);
}

uint64_t AJAXConfiguration.modelName.getter()
{
  type metadata accessor for AJAXConfiguration(0);

  return sub_18E1C5BFC();
}

uint64_t AJAXConfiguration.endPromptToken.getter()
{
  type metadata accessor for AJAXConfiguration(0);

  return sub_18E1C5BFC();
}

uint64_t sub_18E303FA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x706D6F7250646E65 && a2 == 0xEE006E656B6F5474)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E44F3CC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18E3040C4(char a1)
{
  if (!a1)
  {
    return 7107189;
  }

  if (a1 == 1)
  {
    return 0x6D614E6C65646F6DLL;
  }

  return 0x706D6F7250646E65;
}

uint64_t sub_18E30412C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E303FA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E304154(uint64_t a1)
{
  v2 = sub_18E30439C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E304190(uint64_t a1)
{
  v2 = sub_18E30439C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AJAXConfiguration.encode(to:)(void *a1)
{
  v3 = sub_18E2706EC(&qword_1EABE2E50, &qword_18E4B0140);
  sub_18E1C4EAC();
  v5 = v4;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  sub_18E1E15F4(a1, a1[3]);
  sub_18E30439C();
  sub_18E44F4EC();
  v12[15] = 0;
  sub_18E44E54C();
  sub_18E1C50C4();
  sub_18E305410(v9, v10, MEMORY[0x1E6968FB8]);
  sub_18E44F35C();
  if (!v1)
  {
    type metadata accessor for AJAXConfiguration(0);
    v12[14] = 1;
    sub_18E44F31C();
    v12[13] = 2;
    sub_18E44F31C();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_18E30439C()
{
  result = qword_1EABE2E58;
  if (!qword_1EABE2E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2E58);
  }

  return result;
}

void AJAXConfiguration.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_18E1C62A0();
  v27 = v26;
  v51 = v28;
  v29 = sub_18E44E54C();
  sub_18E1C4EAC();
  v53 = v30;
  MEMORY[0x1EEE9AC00](v31);
  sub_18E1C4EDC();
  v54 = v33 - v32;
  v55 = sub_18E2706EC(&qword_1EABE2E60, &qword_18E4B0148);
  sub_18E1C4EAC();
  v52 = v34;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v35);
  v36 = sub_18E1C53E8();
  sub_18E1C4EEC();
  MEMORY[0x1EEE9AC00](v37);
  sub_18E1C4EDC();
  v40 = v39 - v38;
  sub_18E1E15F4(v27, v27[3]);
  sub_18E30439C();
  sub_18E44F4DC();
  if (v24)
  {
    sub_18E1C9934(v27);
  }

  else
  {
    v50 = v36;
    sub_18E1C50C4();
    sub_18E305410(v41, v42, MEMORY[0x1E6968FD0]);
    sub_18E44F26C();
    (*(v53 + 32))(v40, v54, v29);
    v43 = sub_18E44F22C();
    v44 = (v40 + *(v36 + 20));
    *v44 = v43;
    v44[1] = v45;
    v46 = sub_18E44F22C();
    v48 = v47;
    (*(v52 + 8))(v25, v55);
    v49 = (v40 + *(v50 + 24));
    *v49 = v46;
    v49[1] = v48;
    sub_18E304720(v40, v51);
    sub_18E1C9934(v27);
    sub_18E304784(v40);
  }

  sub_18E1C6650();
}

uint64_t sub_18E304720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AJAXConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E304784(uint64_t a1)
{
  v2 = type metadata accessor for AJAXConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_18E304810()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_18E2462E8(0xD00000000000001BLL, 0x800000018E467A50);
  if (!result)
  {
    sub_18E3064D0();
    swift_allocError();
    *v2 = 0xD000000000000037;
    *(v2 + 8) = 0x800000018E467A70;
    *(v2 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

void overrideAJAX(configuration:forResource:)()
{
  sub_18E1C62A0();
  v3 = v2;
  v4 = sub_18E44EADC();
  v5 = sub_18E1C5B08(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  v6 = sub_18E2706EC(&qword_1EABE2E68, &unk_18E4B0150);
  sub_18E1C5B08(v6);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_18E1C53E8();
  sub_18E1C4EEC();
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C4EDC();
  v12 = v11 - v10;
  sub_18E304B7C(v3, v1);
  if (sub_18E1CAF28(v1, 1, v8) == 1)
  {
    sub_18E1E8EEC(v1, &qword_1EABE2E68, &unk_18E4B0150);
    v13 = sub_18E304810();
    if (!v0)
    {
      v14 = v13;
      v15 = sub_18E44EA8C();
      [v14 removeObjectForKey_];
    }
  }

  else
  {
    sub_18E304BEC(v1, v12);
    sub_18E44E27C();
    swift_allocObject();
    sub_18E44E26C();
    sub_18E1C6BF4();
    sub_18E305410(v16, v17, &protocol conformance descriptor for AJAXConfiguration);
    v18 = sub_18E44E25C();
    if (v0)
    {
      sub_18E304784(v12);
    }

    else
    {
      v20 = v18;
      v21 = v19;

      sub_18E44EACC();
      sub_18E44EABC();
      v23 = v22;
      v24 = sub_18E304810();
      if (v23)
      {
        v25 = sub_18E44EA8C();
      }

      else
      {
        v25 = 0;
      }

      v26 = sub_18E44EA8C();
      [v24 setObject:v25 forKey:v26];

      swift_unknownObjectRelease();
      sub_18E1FDFE0(v20, v21);
      sub_18E304784(v12);
    }
  }

  sub_18E1C6650();
}

uint64_t sub_18E304B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE2E68, &unk_18E4B0150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E304BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AJAXConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id ajaxConfiguration(forResource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_18E2706EC(&qword_1EABE2E68, &unk_18E4B0150);
  sub_18E1C5B08(v8);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C561C();
  result = overriddenAJAXConfiguration(forResource:)(v4);
  if (!v3)
  {
    v11 = type metadata accessor for AJAXConfiguration(0);
    if (sub_18E1CAF28(v4, 1, v11) == 1)
    {
      sub_18E1E8EEC(v4, &qword_1EABE2E68, &unk_18E4B0150);
      return defaultAJAXConfirguration(for:)(a1, a2, a3);
    }

    else
    {
      sub_18E304BEC(v4, a3);
      return sub_18E201DC8(a3, 0, 1, v11);
    }
  }

  return result;
}

id overriddenAJAXConfiguration(forResource:)@<X0>(uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AJAXConfiguration(0);
  sub_18E1C4EEC();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C4EDC();
  sub_18E1C561C();
  result = sub_18E304810();
  if (!v2)
  {
    v8 = result;
    v9 = sub_18E44EA8C();
    v10 = [v8 stringForKey_];

    if (v10)
    {
      v11 = sub_18E44EAAC();
      v13 = v12;

      sub_18E44E24C();
      swift_allocObject();
      sub_18E44E23C();
      v14 = sub_18E304F08(v11, v13);
      v16 = v15;
      sub_18E1C6BF4();
      sub_18E305410(v17, v18, &protocol conformance descriptor for AJAXConfiguration);
      sub_18E44E22C();
      sub_18E1FDFE0(v14, v16);

      sub_18E304BEC(v3, a2);
      v19 = a2;
      v20 = 0;
    }

    else
    {
      v19 = a2;
      v20 = 1;
    }

    return sub_18E201DC8(v19, v20, 1, v5);
  }

  return result;
}

uint64_t sub_18E304F08(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  sub_18E2706EC(&qword_1EABE2E98, &qword_18E4B02F8);
  if (swift_dynamicCast())
  {
    sub_18E1C551C(v40, &v43);
    sub_18E1E15F4(&v43, v44);
    sub_18E44E43C();
    v40[0] = v42;
    sub_18E1C9934(&v43);
    goto LABEL_59;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_18E1E8EEC(v40, &qword_1EABE2EA0, &unk_18E4B0300);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v40[0] = a1;
    *(&v40[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v40;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_18E44F07C();
  }

  sub_18E306FB4(v5, v6, &v43);
  v7 = *(&v43 + 1);
  v8 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    v40[0] = v43;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v40[0] = MEMORY[0x193ACBD70](v9);
  *(&v40[0] + 1) = v10;
  MEMORY[0x1EEE9AC00](*&v40[0]);
  v34[2] = v39;
  v11 = sub_18E307120(sub_18E307DE0, v34);
  v13 = *(&v40[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v40[0]);
  switch(*(&v40[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v40[0]) - LODWORD(v40[0]);
      if (__OFSUB__(DWORD1(v40[0]), v40[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v40[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v40[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v40[0] + 16);
      v21 = *(*&v40[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_18E44E5DC();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34[4] = v4;
      v35 = v8;
      v36 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v37 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v38 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v42 + 7) = 0;
      *&v42 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v40[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v28 = sub_18E43AC9C(v18, v14, v16);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_18E44EBAC();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_18E44EBDC();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_18E44F07C();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v18 = sub_18E43AC9C(v18, v14, v16);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    v18 = sub_18E44EBBC();
LABEL_46:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_18E44E5FC();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_18E44E5FC();
    sub_18E2886D0(v35, v36);
    goto LABEL_58;
  }

  sub_18E2886D0(v35, v36);
LABEL_59:
  v32 = v40[0];
  sub_18E2523A0(*&v40[0], *(&v40[0] + 1));

  sub_18E1FDFE0(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_18E305410(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18E305458(void *a1)
{
  v28[5] = *MEMORY[0x1E69E9840];
  v24 = a1;
  *&v25 = a1;
  sub_18E25BD94();
  v2 = a1;
  sub_18E2706EC(&qword_1EABE2E98, &qword_18E4B02F8);
  if (swift_dynamicCast())
  {
    sub_18E1C551C(v26, v28);
    sub_18E1E15F4(v28, v28[3]);
    sub_18E44E43C();
    v26[0] = v25;
    sub_18E1C9934(v28);
    goto LABEL_33;
  }

  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_18E1E8EEC(v26, &qword_1EABE2EA0, &unk_18E4B0300);
  v3 = sub_18E307B6C();
  *&v26[0] = MEMORY[0x193ACBD70](v3);
  *(&v26[0] + 1) = v4;
  MEMORY[0x1EEE9AC00](*&v26[0]);
  v23[2] = &v24;
  v5 = sub_18E3074E4(sub_18E307DA4, v23);
  v7 = *(&v26[0] + 1) >> 62;
  v8 = v5;
  v10 = v9;
  v11 = BYTE14(v26[0]);
  switch(*(&v26[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v12) = DWORD1(v26[0]) - LODWORD(v26[0]);
      if (__OFSUB__(DWORD1(v26[0]), v26[0]))
      {
        goto LABEL_36;
      }

      v12 = v12;
LABEL_12:
      if (v6 == v12)
      {
        goto LABEL_13;
      }

      if (v7 == 2)
      {
        v11 = *(*&v26[0] + 24);
      }

      else if (v7 == 1)
      {
        v11 = *&v26[0] >> 32;
      }

      goto LABEL_30;
    case 2:
      v14 = *(*&v26[0] + 16);
      v13 = *(*&v26[0] + 24);
      v15 = __OFSUB__(v13, v14);
      v12 = v13 - v14;
      if (!v15)
      {
        goto LABEL_12;
      }

      __break(1u);
LABEL_8:
      if (v6)
      {
        v11 = 0;
LABEL_30:
        if (v11 >= v6)
        {
          sub_18E44E5DC();
          goto LABEL_32;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

LABEL_13:
      memset(v28, 0, 15);
      if (v10 == sub_18E44EE9C())
      {
        goto LABEL_32;
      }

      LOBYTE(v16) = 0;
      do
      {
        v17 = sub_18E44EEAC();
        v18 = sub_18E44EE8C();
        v19 = sub_18E44EE9C();
        if (v10 < v18 || v10 >= v19)
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        *(v28 + v16) = v17;
        v16 = v16 + 1;
        if ((v16 >> 8))
        {
          goto LABEL_34;
        }

        if (v16 == 14)
        {
          sub_18E1C8784();
          sub_18E44E5FC();
          LOBYTE(v16) = 0;
        }

        ++v10;
      }

      while (v10 != sub_18E44EE9C());
      if (v16)
      {
        sub_18E1C8784();
        sub_18E44E5FC();
      }

LABEL_32:

LABEL_33:
      v21 = v26[0];
      sub_18E2523A0(*&v26[0], *(&v26[0] + 1));

      sub_18E1FDFE0(v21, *(&v21 + 1));
      return v21;
    case 3:
      goto LABEL_8;
    default:
      v12 = BYTE14(v26[0]);
      goto LABEL_12;
  }
}

uint64_t sub_18E3057A4(uint64_t *a1)
{
  v2 = *a1;
  sub_18E26C3FC(*a1, &v41);
  v3 = v42;
  sub_18E1E8EEC(&v41, &qword_1EABE3B70, &qword_18E4AAB80);
  if (v3)
  {
    sub_18E2706EC(&qword_1EABE2EA8, &qword_18E4B0318);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18E49D9B0;
    sub_18E2706EC(&qword_1EABE9020, &qword_18E4B0320);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18E49DA90;
    *(inited + 32) = 1953722211;
    *(inited + 40) = 0xE400000000000000;
    sub_18E2706EC(&qword_1EABE2EB0, &qword_18E4B0328);
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_18E4B0120;
    *(v6 + 32) = 0x6C62616568636163;
    *(v6 + 40) = 0xE900000000000065;
    v7 = MEMORY[0x1E69E6370];
    *(v6 + 48) = 1;
    *(v6 + 72) = v7;
    *(v6 + 80) = 0xD000000000000012;
    *(v6 + 88) = 0x800000018E467AD0;
    *(v6 + 96) = 0;
    *(v6 + 120) = v7;
    *(v6 + 128) = 0xD000000000000013;
    *(v6 + 136) = 0x800000018E467AF0;
    *(v6 + 144) = 0;
    *(v6 + 168) = v7;
    strcpy((v6 + 176), "onDeviceMemory");
    *(v6 + 216) = MEMORY[0x1E69E6530];
    *(v6 + 191) = -18;
    *(v6 + 192) = 0;
    v8 = MEMORY[0x1E69E6158];
    *(inited + 48) = sub_18E44E9AC();
    *(inited + 56) = 0xD000000000000011;
    *(inited + 64) = 0x800000018E467B10;
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_18E49D9B0;
    *(v9 + 32) = 25705;
    *(v9 + 40) = 0xE200000000000000;
    *(v9 + 72) = v8;
    *(v9 + 48) = 2019650145;
    *(v9 + 56) = 0xE400000000000000;
    *(inited + 72) = sub_18E44E9AC();
    sub_18E2706EC(&unk_1EABE9010, &qword_18E4B0160);
    *(v4 + 32) = sub_18E44E9AC();
    v42 = sub_18E2706EC(&qword_1EABE2EB8, &qword_18E4B0330);
    *&v41 = v4;
    return sub_18E2736F0(&v41, 0xD000000000000012, 0x800000018E467AB0);
  }

  else
  {
    v11 = 1 << *(v2 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v2 + 64);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    v16 = v2;
    while (v13)
    {
      v17 = v13;
LABEL_12:
      v13 = (v17 - 1) & v17;
      if (*(v16 + 16))
      {
        v19 = (*(v2 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v17)))));
        v21 = *v19;
        v20 = v19[1];

        v22 = sub_18E1CBD4C();
        if (v23 & 1) != 0 && (sub_18E1C97D8(*(v16 + 56) + 32 * v22, &v41), v24 = sub_18E2706EC(&unk_1EABE9010, &qword_18E4B0160), (swift_dynamicCast()))
        {
          v40 = *&v39[0];
          sub_18E3057A4(&v40);
          v42 = v24;
          *&v41 = v40;
          sub_18E270D70(&v41, v39);
          swift_isUniquelyReferenced_nonNull_native();
          v25 = *a1;
          v38 = *a1;
          v36 = sub_18E1CBD4C();
          v37 = v26;
          if (__OFADD__(*(v25 + 16), (v26 & 1) == 0))
          {
            goto LABEL_29;
          }

          sub_18E2706EC(&qword_1EABE0E30, &qword_18E4B0310);
          if (sub_18E44F0EC())
          {
            v27 = sub_18E1CBD4C();
            v29 = v37;
            if ((v37 & 1) != (v28 & 1))
            {
              goto LABEL_31;
            }

            v30 = v27;
          }

          else
          {
            v30 = v36;
            v29 = v37;
          }

          if (v29)
          {

            v16 = v38;
            v31 = (v38[7] + 32 * v30);
            sub_18E1C9934(v31);
            sub_18E270D70(v39, v31);
          }

          else
          {
            v16 = v38;
            v38[(v30 >> 6) + 8] |= 1 << v30;
            v32 = (v38[6] + 16 * v30);
            *v32 = v21;
            v32[1] = v20;
            sub_18E270D70(v39, (v38[7] + 32 * v30));
            v33 = v38[2];
            v34 = __OFADD__(v33, 1);
            v35 = v33 + 1;
            if (v34)
            {
              goto LABEL_30;
            }

            v38[2] = v35;
          }

          *a1 = v16;
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v18 >= v14)
      {
      }

      v17 = *(v2 + 64 + 8 * v18);
      ++v15;
      if (v17)
      {
        v15 = v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_18E44F41C();
    __break(1u);
  }

  return result;
}

void forceAJAX(configuration:forResourceBundle:)()
{
  sub_18E1C62A0();
  v4 = v3;
  v73 = *MEMORY[0x1E69E9840];
  v5 = sub_18E2706EC(&qword_1EABE2E68, &unk_18E4B0150);
  sub_18E1C5B08(v5);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_18E1C53E8();
  sub_18E1C4EEC();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C4EDC();
  sub_18E1C561C();
  type metadata accessor for CatalogClient();
  swift_allocObject();
  CatalogClient.init()();
  v9 = sub_18E1C6004();
  v11 = sub_18E1CDBD8(v9, v10);
  if (!v0)
  {
    v12 = v11;
    ResourceBundleContainer.toResourceBundle()();

    if (v68)
    {
      v63 = v4;
      sub_18E1C551C(&v67, &v69);
      v13 = type metadata accessor for ResourceBundleContainer();
      sub_18E1E4398(&v69, &v67);
      static ResourceBundleContainer.from(resourceBundle:)();
      v21 = v14;
      v60 = v13;
      sub_18E1E8EEC(&v67, &qword_1EABE1010, &unk_18E4E24D0);
      if (v21[OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked])
      {
        *&v67 = 0;
        *(&v67 + 1) = 0xE000000000000000;
        sub_18E44EFFC();
        MEMORY[0x193ACC300](0xD000000000000032, 0x800000018E467A10);
        v22 = sub_18E1C6004();
        MEMORY[0x193ACC300](v22);
        v23 = v67;
        v24 = sub_18E3064D0();
        v25 = sub_18E1C8558(&type metadata for CatalogErrors.SideloadError, v24);
        *v26 = v23;
        sub_18E1C5D9C(v25, v26);

LABEL_16:

LABEL_17:
        sub_18E1C9934(&v69);
        goto LABEL_4;
      }

      v58 = OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked;
      v62 = objc_opt_self();
      v61 = v21;
      v27 = *&v21[OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData];
      v59 = *&v21[OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData + 8];
      sub_18E2523A0(v27, v59);
      v28 = sub_18E44E60C();
      v29 = sub_18E1FDFE0(v27, v59);
      *&v67 = 0;
      v30 = sub_18E1C8CC0(v29, sel_JSONObjectWithData_options_error_);

      if (v30)
      {
        v31 = v67;
        sub_18E44EF2C();
        swift_unknownObjectRelease();
        sub_18E2706EC(&unk_1EABE9010, &qword_18E4B0160);
        if (!swift_dynamicCast())
        {
          v41 = sub_18E3064D0();
          v42 = sub_18E1C8558(&type metadata for CatalogErrors.SideloadError, v41);
          *v43 = 0xD00000000000001CLL;
          v43[1] = 0x800000018E4679B0;
          sub_18E1C5D9C(v42, v43);

          goto LABEL_16;
        }

        v64 = v65;
        sub_18E3057A4(&v64);
        v32 = sub_18E44E97C();

        *&v67 = 0;
        v34 = sub_18E1C8CC0(v33, sel_dataWithJSONObject_options_error_);

        v35 = v67;
        if (v34)
        {
          v62 = sub_18E44E61C();
          v37 = v36;

          v38 = *&v61[OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleType + 8];
          v57 = *&v61[OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleType];
          v59 = v38;
          LODWORD(v58) = v61[v58];
          v56[4] = objc_allocWithZone(v60);
          sub_18E2523A0(v62, v37);

          v60 = v37;
          v39 = ResourceBundleContainer.init(resourceBundleData:resourceBundleType:assetBacked:)(v62, v37, v57, v59, v58);
          ResourceBundleContainer.toResourceBundle()();
          v59 = v39;
          if (v66)
          {
            sub_18E1C551C(&v65, &v67);
            v45 = sub_18E1C6004();

            sub_18E2776FC(&v67);
            v50 = v60;
            sub_18E304B7C(v63, v2);
            if (sub_18E1CAF28(v2, 1, v7) == 1)
            {
              sub_18E1C9934(&v67);
              sub_18E1FDFE0(v62, v60);

              sub_18E1E8EEC(v2, &qword_1EABE2E68, &unk_18E4B0150);
            }

            else
            {
              sub_18E304BEC(v2, v1);
              v51 = v71;
              v52 = v72;
              sub_18E1E15F4(&v69, v71);
              v53 = (*(v52 + 48))(v51, v52);
              MEMORY[0x1EEE9AC00](v53);
              v56[2] = v1;
              sub_18E306648(sub_18E306D10, v56, v53);
              v54 = v62;
              v55 = v59;
              sub_18E1C9934(&v67);

              sub_18E1FDFE0(v54, v50);

              sub_18E304784(v1);
            }
          }

          else
          {
            sub_18E1E8EEC(&v65, &qword_1EABE1010, &unk_18E4E24D0);
            v47 = sub_18E3064D0();
            v48 = sub_18E1C8558(&type metadata for CatalogErrors.SideloadError, v47);
            *v49 = 0xD000000000000030;
            v49[1] = 0x800000018E4679D0;
            sub_18E1C5D9C(v48, v49);

            sub_18E1FDFE0(v62, v60);
          }

          goto LABEL_17;
        }

        v44 = v35;
        sub_18E44E44C();
      }

      else
      {
        v40 = v67;
        sub_18E44E44C();
      }

      swift_willThrow();

      goto LABEL_17;
    }

    sub_18E1E8EEC(&v67, &qword_1EABE1010, &unk_18E4E24D0);
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_18E44EFFC();

    v69 = 0xD000000000000010;
    v70 = 0x800000018E467990;
    v15 = sub_18E1C6004();
    MEMORY[0x193ACC300](v15);
    sub_18E1C6760();
    v16 = v69;
    v17 = v70;
    v18 = sub_18E3064D0();
    v19 = sub_18E1C8558(&type metadata for CatalogErrors.SideloadError, v18);
    *v20 = v16;
    v20[1] = v17;
    sub_18E1C5D9C(v19, v20);
  }

LABEL_4:
  sub_18E1C6650();
}

unint64_t sub_18E3064D0()
{
  result = qword_1EABE3510;
  if (!qword_1EABE3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE3510);
  }

  return result;
}

uint64_t sub_18E306524(void *a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE2E68, &unk_18E4B0150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_18E304720(a2, &v11 - v5);
  v7 = type metadata accessor for AJAXConfiguration(0);
  sub_18E201DC8(v6, 0, 1, v7);
  v8 = a1[3];
  v9 = a1[4];
  sub_18E1E15F4(a1, v8);
  (*(v9 + 24))(v8, v9);
  overrideAJAX(configuration:forResource:)();
  sub_18E1E8EEC(v6, &qword_1EABE2E68, &unk_18E4B0150);
}

uint64_t sub_18E306648(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  result = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = result + 40;
    a1();
    result = v7;
  }

  while (!v3);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> unforceAJAX(forResourceBundle:)(Swift::String forResourceBundle)
{
  sub_18E1C62A0();
  v3 = sub_18E44EADC();
  v4 = sub_18E1C5B08(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C4EDC();
  v7 = v6 - v5;
  v8 = type metadata accessor for AJAXConfiguration(0);
  sub_18E1C4EEC();
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C4EDC();
  sub_18E1C561C();
  v10 = sub_18E2706EC(&qword_1EABE2E68, &unk_18E4B0150);
  v11 = sub_18E1C5B08(v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v66 - v15;
  type metadata accessor for CatalogClient();
  swift_allocObject();
  v17 = CatalogClient.init()();
  v18 = sub_18E1C5838();
  v19 = v17;
  v21 = sub_18E1CDBD8(v18, v20);
  if (v1)
  {
LABEL_3:

LABEL_4:
    sub_18E1C6650();
    return;
  }

  v22 = v21;
  v74 = v16;
  v75 = v14;
  v73 = v7;
  ResourceBundleContainer.toResourceBundle()();

  if (!v77)
  {
    sub_18E1E8EEC(&v76, &qword_1EABE1010, &unk_18E4E24D0);
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_18E44EFFC();

    v79 = 0xD000000000000010;
    v80 = 0x800000018E467990;
    v25 = sub_18E1C5838();
    MEMORY[0x193ACC300](v25);
    sub_18E1C6760();
    v26 = v79;
    v27 = v80;
    v28 = sub_18E3064D0();
    v29 = sub_18E1C8558(&type metadata for CatalogErrors.SideloadError, v28);
    *v30 = v26;
    v30[1] = v27;
    sub_18E1C5D9C(v29, v30);
    goto LABEL_3;
  }

  sub_18E1C551C(&v76, &v79);
  v23 = sub_18E1C5838();

  v69 = v2;
  v31 = v81;
  v32 = v82;
  v72 = v19;
  sub_18E1E15F4(&v79, v81);
  v33 = (*(v32 + 48))(v31, v32);
  v34 = 0;
  v35 = *(v33 + 16);
  v70 = v33;
  v71 = v35;
  v36 = v74;
  v37 = v8;
  v38 = v33 + 32;
  v67 = v37;
  v68 = "d resource bundle ";
  while (1)
  {
    if (v71 == v34)
    {

      goto LABEL_23;
    }

    if (v34 >= *(v33 + 16))
    {
      break;
    }

    sub_18E1E4398(v38, &v76);
    sub_18E201DC8(v36, 1, 1, v37);
    v39 = v77;
    v40 = v78;
    sub_18E1E15F4(&v76, v77);
    v41 = v39;
    v42 = v75;
    (*(v40 + 24))(v41, v40);
    sub_18E304B7C(v36, v42);
    if (sub_18E1CAF28(v42, 1, v37) == 1)
    {
      sub_18E1E8EEC(v42, &qword_1EABE2E68, &unk_18E4B0150);
      v43 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v44 = sub_18E1C5A08();
      if (!v44)
      {
        v60 = sub_18E3064D0();
        sub_18E1C8558(&type metadata for CatalogErrors.SideloadError, v60);
        sub_18E1D60FC();
        *v61 = v62;
        *(v61 + 8) = 0x800000018E467A70;
        *(v61 + 16) = 0;
        swift_willThrow();

        goto LABEL_22;
      }

      v45 = v44;
      v46 = sub_18E44EA8C();
      [v45 removeObjectForKey_];

      v33 = v70;
    }

    else
    {
      v47 = v38;
      v48 = v34;
      sub_18E304BEC(v42, v69);
      sub_18E44E27C();
      swift_allocObject();
      sub_18E44E26C();
      sub_18E1C6BF4();
      sub_18E305410(&qword_1EABE2E70, v49, &protocol conformance descriptor for AJAXConfiguration);
      v50 = sub_18E44E25C();
      v52 = v51;

      sub_18E44EACC();
      sub_18E44EABC();
      v54 = v53;
      v55 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v56 = sub_18E1C5A08();
      if (!v56)
      {
        v63 = sub_18E3064D0();
        sub_18E1C8558(&type metadata for CatalogErrors.SideloadError, v63);
        sub_18E1D60FC();
        *v64 = v65;
        *(v64 + 8) = 0x800000018E467A70;
        *(v64 + 16) = 0;
        swift_willThrow();
        sub_18E304784(v69);

        sub_18E1FDFE0(v50, v52);

        v36 = v74;
LABEL_22:
        sub_18E1E8EEC(v36, &qword_1EABE2E68, &unk_18E4B0150);
        sub_18E1C9934(&v76);
LABEL_23:
        sub_18E1C9934(&v79);
        goto LABEL_4;
      }

      v57 = v56;
      if (v54)
      {
        v58 = sub_18E44EA8C();
      }

      else
      {
        v58 = 0;
      }

      v59 = sub_18E44EA8C();
      [v57 setObject:v58 forKey:v59];

      swift_unknownObjectRelease();
      sub_18E1FDFE0(v50, v52);
      sub_18E304784(v69);
      v33 = v70;
      v36 = v74;
      v34 = v48;
      v38 = v47;
    }

    sub_18E1E8EEC(v36, &qword_1EABE2E68, &unk_18E4B0150);

    sub_18E1C9934(&v76);
    v38 += 40;
    ++v34;
    v37 = v67;
  }

  __break(1u);
}

uint64_t sub_18E306D54(uint64_t a1)
{
  result = sub_18E44E54C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AJAXConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E306EB0()
{
  result = qword_1EABE2E80;
  if (!qword_1EABE2E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2E80);
  }

  return result;
}

unint64_t sub_18E306F08()
{
  result = qword_1EABE2E88;
  if (!qword_1EABE2E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2E88);
  }

  return result;
}

unint64_t sub_18E306F60()
{
  result = qword_1EABE2E90;
  if (!qword_1EABE2E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2E90);
  }

  return result;
}

uint64_t sub_18E306FB4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_18E44E55C();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_18E44E3EC();
      swift_allocObject();
      v8 = sub_18E44E3AC();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_18E44E5CC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_18E30707C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_18E307940(sub_18E307DFC, v5, a1, a2);
}

void *sub_18E3070D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v4[2] = &v5;
  return sub_18E3079A4(sub_18E307DC0, v4, a1, a2);
}

uint64_t sub_18E307120(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_18E1FDFE0(v7, v6);
      *v5 = xmmword_18E4B0130;
      sub_18E1FDFE0(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_18E44E3BC() && __OFSUB__(v7, sub_18E44E3DC()))
      {
        goto LABEL_24;
      }

      sub_18E44E3EC();
      swift_allocObject();
      v14 = sub_18E44E39C();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_18E307A04(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_18E1FDFE0(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_18E4B0130;
      sub_18E1FDFE0(0, 0xC000000000000000);
      sub_18E44E56C();
      v7 = v17;
      v10 = sub_18E307A04(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_18E1FDFE0(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_18E3074E4(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_18E1FDFE0(v7, v6);
      *v5 = xmmword_18E4B0130;
      sub_18E1FDFE0(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_18E44E3BC() && __OFSUB__(v7, sub_18E44E3DC()))
      {
        goto LABEL_24;
      }

      sub_18E44E3EC();
      swift_allocObject();
      v14 = sub_18E44E39C();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_18E307AB8(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_18E1FDFE0(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_18E4B0130;
      sub_18E1FDFE0(0, 0xC000000000000000);
      sub_18E44E56C();
      v7 = v17;
      v10 = sub_18E307AB8(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_18E1FDFE0(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_18E307898(uint64_t result)
{
  if (result)
  {
    result = sub_18E44F00C();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18E3078E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  sub_18E307C5C(&v7, a1, a2);
  return v7;
}

void *sub_18E307940(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

void *sub_18E3079A4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_18E307A04(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_18E44E3BC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_18E44E3DC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_18E44E3CC();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_18E307AB8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_18E44E3BC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_18E44E3DC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_18E44E3CC();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_18E307B6C()
{
  v0 = sub_18E44EE8C();
  v1 = sub_18E44EE9C();
  v2 = sub_18E44EE8C();
  result = sub_18E44EE9C();
  if (v0 < v2 || result < v0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = sub_18E44EE8C();
  result = sub_18E44EE9C();
  if (v1 < v5 || result < v1)
  {
    goto LABEL_12;
  }

  result = v1 - v0;
  if (__OFSUB__(v1, v0))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

void *sub_18E307BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_18E30707C(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_18E307C1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18E307898(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_18E307C5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E44EE8C();
  v8 = result;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    *a1 = v3;
    a1[1] = v8;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v11 = v8 + v9;
      if (v8 + v9 == sub_18E44EE9C())
      {
        v8 += v9;
        a3 = v9;
        goto LABEL_16;
      }

      v12 = sub_18E44EEAC();
      v13 = sub_18E44EE8C();
      result = sub_18E44EE9C();
      if (v11 < v13 || v11 >= result)
      {
        goto LABEL_18;
      }

      *(a2 + v9++) = v12;
      if (v10 == a3)
      {
        v8 += v9;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_18E307D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_18E3070D0(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_18E307D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_18E3078E0(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_18E307E1C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_18E1C5F34(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  v9 = sub_18E1C8300();
  return sub_18E204BF4(v9, v8);
}

uint64_t TokenInputDenyList.cost.getter@<X0>(uint64_t a2@<X8>)
{
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18E2706EC(&qword_1EABE12A0, &qword_18E49EB78);
  if (swift_dynamicCast())
  {
    sub_18E224478(v7, &v8);
    sub_18E1E15F4(&v8, v9);
    sub_18E1C4FE0();
    return sub_18E1C9934(&v8);
  }

  else
  {
    result = sub_18E1C5F54();
    *a2 = 0;
    *(a2 + 5) = 0;
    *(a2 + 16) = MEMORY[0x1E69E7CC0];
    *(a2 + 24) = 1;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_18E307F94()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_18E1C8300();
  return sub_18E307FF0(v1, v2, sub_18E32EE3C);
}

uint64_t sub_18E307FF0(void (*a1)(const void *, uint64_t *), uint64_t a2, uint64_t (*a3)(uint64_t))
{
  memcpy(__dst, v3, sizeof(__dst));
  a1(v3, v19);
  v6 = sub_18E2706EC(&qword_1EABE12A0, &qword_18E49EB78);
  if (sub_18E1C5CBC(v6, v7, v8, v9, v10, v11, v12, v13, v18, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9], v19[10], v19[11], v19[12], v19[13], v19[14], v19[15], v19[16], v19[17], v19[18], v19[19], v19[20], v19[21], v19[22], v19[23], v19[24], v19[25], v19[26], v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, __dst[0]))
  {
    sub_18E224478(&v20, &v25);
    sub_18E1E15F4(&v25, v26);
    v14 = sub_18E1C5C98();
    sub_18E1C9934(&v25);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v15 = sub_18E298E58(&v20);
    v16 = a3(v15);
    sub_18E2989E4(v16);

    return sub_18E292D44();
  }

  return v14;
}

uint64_t TokenInputDenyList.executionContexts.getter(uint64_t a1, uint64_t a2)
{
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 16))(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  sub_18E2706EC(&qword_1EABE12A0, &qword_18E49EB78);
  if (swift_dynamicCast())
  {
    sub_18E224478(v12, &v13);
    sub_18E1E15F4(&v13, v14);
    v8 = sub_18E1C5C98();
    sub_18E1C9934(&v13);
  }

  else
  {
    sub_18E1C5F54();
    v9 = (*(*(*(a2 + 8) + 8) + 32))(a1);
    sub_18E2989E4(v9);

    return sub_18E292D44();
  }

  return v8;
}

void sub_18E308244()
{

  if (qword_1ED6A8AB0 != -1)
  {
    sub_18E1C5568(&qword_1ED6A8AB0);
  }

  v0 = sub_18E44E83C();
  sub_18E1C95EC(v0, qword_1ED6A9870);
  oslog = sub_18E44E80C();
  v1 = sub_18E44EE1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    sub_18E1C6358(&dword_18E1C1000, v3, v4, "TokenInputDenyList: Cannot set execution contexts on custom deny list. Please override functionality if needed.", v5, v6, v7, v8, v9, oslog);
    MEMORY[0x193ACD400](v2, -1, -1);
  }
}

void TokenInputDenyList.executionContexts.setter()
{

  if (qword_1ED6A8AB0 != -1)
  {
    sub_18E1C5568(&qword_1ED6A8AB0);
  }

  v0 = sub_18E44E83C();
  sub_18E1C95EC(v0, qword_1ED6A9870);
  oslog = sub_18E44E80C();
  v1 = sub_18E44EE1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    sub_18E1C6358(&dword_18E1C1000, v3, v4, "TokenInputDenyList: Cannot set execution contexts on custom deny list. Please override functionality if needed.", v5, v6, v7, v8, v9, oslog);
    MEMORY[0x193ACD400](v2, -1, -1);
  }
}

uint64_t (*sub_18E3083DC())()
{
  v1 = sub_18E29965C(0xE8uLL);
  sub_18E1C5340(v1);
  v2 = sub_18E1C8300();
  *(v0 + 216) = sub_18E307FF0(v2, v3, sub_18E32EE3C);
  return sub_18E30845C;
}

void (*TokenInputDenyList.executionContexts.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = TokenInputDenyList.executionContexts.getter(a2, a3);
  return sub_18E3084B4;
}

void sub_18E3084B4(uint64_t a1, char a2)
{
  if (a2)
  {

    TokenInputDenyList.executionContexts.setter();
  }

  else
  {
    TokenInputDenyList.executionContexts.setter();
  }
}

uint64_t sub_18E30850C()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_18E1C6C0C();
  return sub_18E307FF0(v1, v2, sub_18E32EE3C);
}

uint64_t (*sub_18E308568())()
{
  v1 = sub_18E29965C(0xE8uLL);
  sub_18E1C5340(v1);
  v2 = sub_18E1C6C0C();
  *(v0 + 216) = sub_18E307FF0(v2, v3, sub_18E32EE3C);
  return sub_18E308700;
}

void sub_18E3085E8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    sub_18E308244();
  }

  else
  {
    sub_18E308244();
  }

  free(v2);
}

uint64_t sub_18E30864C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = TokenInputDenyList.executionContexts.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t sub_18E308704@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_18E3087F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_18E308820@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

ModelCatalog::DebugInformationOptions sub_18E3088F4@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = DebugInformationOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_18E308934@<X0>(uint64_t *a1@<X8>)
{
  result = DebugInformationOptions.rawValue.getter();
  *a1 = result;
  return result;
}

ModelCatalog::DebugInformation::DeviceConfiguration __swiftcall DebugInformation.DeviceConfiguration.init(languages:featureFlags:)(Swift::OpaquePointer languages, Swift::OpaquePointer featureFlags)
{
  v2->_rawValue = languages._rawValue;
  v2[1]._rawValue = featureFlags._rawValue;
  result.featureFlags = featureFlags;
  result.languages = languages;
  return result;
}

uint64_t sub_18E308984(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xE900000000000073;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4665727574616566 && a2 == 0xEC0000007367616CLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E44F3CC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18E308A58(char a1)
{
  if (a1)
  {
    return 0x4665727574616566;
  }

  else
  {
    return 0x65676175676E616CLL;
  }
}

uint64_t sub_18E308AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E308984(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E308ACC(uint64_t a1)
{
  v2 = sub_18E308D18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E308B08(uint64_t a1)
{
  v2 = sub_18E308D18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DebugInformation.DeviceConfiguration.encode(to:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v3 = sub_18E2706EC(&qword_1EABE2EC0, &unk_18E4B0340);
  sub_18E1C4EAC();
  v5 = v4;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C57AC();
  sub_18E1C5628(v2);
  v7 = sub_18E308D18();

  sub_18E1CB000();
  sub_18E44F4EC();
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  sub_18E1C783C();
  sub_18E1D5CE4(v8);
  sub_18E1C7FB8();
  sub_18E44F35C();

  if (!v7)
  {
    sub_18E2706EC(&qword_1EABE2EC8, &qword_18E4B0350);
    sub_18E308F70(&unk_1EABDF750);
    sub_18E1C7FB8();
    sub_18E44F35C();
  }

  (*(v5 + 8))(v0, v3);
  sub_18E1C6650();
}

unint64_t sub_18E308D18()
{
  result = qword_1EABDFBC0;
  if (!qword_1EABDFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBC0);
  }

  return result;
}

void DebugInformation.DeviceConfiguration.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E1C62A0();
  v12 = v11;
  v14 = v13;
  v15 = sub_18E2706EC(&qword_1EABE2ED0, &qword_18E4B0358);
  sub_18E1C4EAC();
  v17 = v16;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - v19;
  sub_18E1C5628(v12);
  sub_18E308D18();
  sub_18E1CB000();
  sub_18E44F4DC();
  if (v10)
  {
    sub_18E1C9934(v12);
  }

  else
  {
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    v25 = 0;
    sub_18E1C50DC();
    v22 = sub_18E1D5CE4(v21);
    sub_18E1C6010(v22);
    sub_18E2706EC(&qword_1EABE2EC8, &qword_18E4B0350);
    v25 = 1;
    v23 = sub_18E308F70(&unk_1EABE2ED8);
    sub_18E1C6010(v23);
    (*(v17 + 8))(v20, v15);
    *v14 = a10;
    v14[1] = a10;

    sub_18E1C9934(v12);
  }

  sub_18E1C6650();
}

unint64_t sub_18E308F70(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E2707F8(&qword_1EABE2EC8, &qword_18E4B0350);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void __swiftcall DebugInformation.CoherenceTokens.init(assetSetName:assetSetIdentifier:currentToken:pidsLockingToken:)(ModelCatalog::DebugInformation::CoherenceTokens *__return_ptr retstr, Swift::String assetSetName, Swift::String_optional assetSetIdentifier, Swift::String_optional currentToken, Swift::OpaquePointer_optional pidsLockingToken)
{
  retstr->assetSetName = assetSetName;
  retstr->assetSetIdentifier = assetSetIdentifier;
  retstr->currentToken = currentToken;
  retstr->pidsLockingToken.value._rawValue = pidsLockingToken.value._rawValue;
}

uint64_t sub_18E3090AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465537465737361 && a2 == 0xEC000000656D614ELL;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000018E467B30 == a2;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x54746E6572727563 && a2 == 0xEC0000006E656B6FLL;
      if (v7 || (sub_18E44F3CC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x800000018E467B50 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_18E44F3CC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_18E30921C(char a1)
{
  result = 0x7465537465737361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x54746E6572727563;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E3092DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E3090AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E309304(uint64_t a1)
{
  v2 = sub_18E309560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E309340(uint64_t a1)
{
  v2 = sub_18E309560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DebugInformation.CoherenceTokens.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_18E1C62A0();
  v26 = v25;
  v27 = sub_18E2706EC(&qword_1EABE2EE0, &unk_18E4B0360);
  sub_18E1C4EAC();
  v29 = v28;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v30);
  sub_18E1C57AC();
  sub_18E1C5628(v26);
  sub_18E309560();
  sub_18E1CB000();
  sub_18E44F4EC();
  sub_18E44F31C();
  if (!v23)
  {
    sub_18E44F2BC();
    sub_18E44F2BC();
    sub_18E2706EC(&unk_1EABE1218, &qword_18E49E398);
    sub_18E1C783C();
    sub_18E3095B4(v31);
    sub_18E1C7FB8();
    sub_18E44F2FC();
  }

  (*(v29 + 8))(v24, v27);
  sub_18E1C6650();
}

unint64_t sub_18E309560()
{
  result = qword_1EABDFBE0;
  if (!qword_1EABDFBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBE0);
  }

  return result;
}

unint64_t sub_18E3095B4(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E1C5B20();
    sub_18E2707F8(&unk_1EABE1218, &qword_18E49E398);
    sub_18E1CA1A4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void DebugInformation.CoherenceTokens.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_18E1C62A0();
  v26 = v25;
  v28 = v27;
  sub_18E2706EC(&qword_1EABE2EE8, &qword_18E4B0370);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v29);
  sub_18E1E15F4(v26, v26[3]);
  sub_18E309560();
  sub_18E44F4DC();
  if (v24)
  {
    sub_18E1C9934(v26);
  }

  else
  {
    v30 = sub_18E44F22C();
    v42 = v31;
    v32 = sub_18E44F1CC();
    v41 = v33;
    v39 = v32;
    v38 = sub_18E44F1CC();
    v40 = v34;
    sub_18E2706EC(&unk_1EABE1218, &qword_18E49E398);
    sub_18E1C50DC();
    sub_18E3095B4(v35);
    sub_18E44F20C();
    v36 = sub_18E1C8318();
    v37(v36);
    *v28 = v30;
    v28[1] = v42;
    v28[2] = v39;
    v28[3] = v41;
    v28[4] = v38;
    v28[5] = v40;
    v28[6] = v43;

    sub_18E1C9934(v26);
  }

  sub_18E1C6650();
}

uint64_t sub_18E309954(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E44F3CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E3099E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E309954(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E309A0C(uint64_t a1)
{
  v2 = sub_18E309BA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E309A48(uint64_t a1)
{
  v2 = sub_18E309BA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DebugInformation.UsageAliasSubscription.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1C62A0();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v25 = sub_18E2706EC(&qword_1EABE2EF0, &qword_18E4B0378);
  sub_18E1C4EAC();
  v27 = v26;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  sub_18E1E15F4(v24, v24[3]);
  sub_18E309BA0();
  sub_18E44F4EC();
  sub_18E44F31C();
  (*(v27 + 8))(v30, v25);
  sub_18E1C6650();
}

unint64_t sub_18E309BA0()
{
  result = qword_1EABDFBA0;
  if (!qword_1EABDFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBA0);
  }

  return result;
}

void DebugInformation.UsageAliasSubscription.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1C62A0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_18E2706EC(&qword_1EABE2EF8, &qword_18E4B0380);
  sub_18E1C4EAC();
  v29 = v28;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  sub_18E1C5628(v24);
  sub_18E309BA0();
  sub_18E1CB000();
  sub_18E44F4DC();
  if (!v20)
  {
    v33 = sub_18E44F22C();
    v35 = v34;
    (*(v29 + 8))(v32, v27);
    *v26 = v33;
    v26[1] = v35;
  }

  sub_18E1C9934(v24);
  sub_18E1C6650();
}

uint64_t DebugInformation.deviceConfiguration.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_18E309D78(v2);
}

uint64_t sub_18E309D78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 DebugInformation.init(deviceConfiguration:tokens:subscriptions:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = a2;
  a4[1].n128_u64[1] = a3;
  return result;
}

uint64_t sub_18E309DD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000018E467B70 == a2;
  if (v3 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E656B6F74 && a2 == 0xE600000000000000;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7069726373627573 && a2 == 0xED0000736E6F6974)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E44F3CC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18E309EF4(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0x736E656B6F74;
  }

  return 0x7069726373627573;
}

uint64_t sub_18E309F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_18E44F48C();
  a4(v8, v6);
  return sub_18E44F4CC();
}

uint64_t sub_18E309FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E309DD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E309FD4(uint64_t a1)
{
  v2 = sub_18E30A290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E30A010(uint64_t a1)
{
  v2 = sub_18E30A290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DebugInformation.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_18E1C62A0();
  v27 = v26;
  v28 = sub_18E2706EC(&qword_1EABE2F00, &qword_18E4B0388);
  sub_18E1C4EAC();
  v30 = v29;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v31);
  sub_18E1C57AC();
  v32 = *v23;
  sub_18E1E15F4(v27, v27[3]);
  sub_18E309D78(v32);
  sub_18E30A290();
  sub_18E44F4EC();
  sub_18E30A2E4();
  sub_18E44F2FC();
  sub_18E30A338(v32);
  if (!v24)
  {
    sub_18E2706EC(&qword_1EABE2F08, &qword_18E4B0390);
    sub_18E30A7A4(&unk_1EABDF740);
    sub_18E1C7FB8();
    sub_18E44F35C();
    sub_18E2706EC(&qword_1EABE2F10, &qword_18E4B0398);
    sub_18E30A3CC(&unk_1EABDF738);
    sub_18E1C7FB8();
    sub_18E44F35C();
  }

  (*(v30 + 8))(v25, v28);
  sub_18E1C6650();
}

unint64_t sub_18E30A290()
{
  result = qword_1EABDFBF8;
  if (!qword_1EABDFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBF8);
  }

  return result;
}

unint64_t sub_18E30A2E4()
{
  result = qword_1EABDFBB0;
  if (!qword_1EABDFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBB0);
  }

  return result;
}

uint64_t sub_18E30A338(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_18E30A378()
{
  result = qword_1EABDFBD0;
  if (!qword_1EABDFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBD0);
  }

  return result;
}

unint64_t sub_18E30A3CC(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E1C5B20();
    sub_18E2707F8(&qword_1EABE2F10, &qword_18E4B0398);
    v2();
    sub_18E1CA1A4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18E30A438()
{
  result = qword_1EABDFB90;
  if (!qword_1EABDFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFB90);
  }

  return result;
}

void DebugInformation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_18E1C62A0();
  v25 = v24;
  v27 = v26;
  sub_18E2706EC(&qword_1EABE2F18, &qword_18E4B03A0);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v28);
  sub_18E1C5628(v25);
  sub_18E30A290();
  sub_18E1CB000();
  sub_18E44F4DC();
  if (v23)
  {
    sub_18E1C9934(v25);
  }

  else
  {
    sub_18E30A750();
    sub_18E44F20C();
    sub_18E2706EC(&qword_1EABE2F08, &qword_18E4B0390);
    sub_18E30A7A4(&unk_1EABE2F28);
    sub_18E1C8AE8();
    sub_18E44F26C();
    sub_18E2706EC(&qword_1EABE2F10, &qword_18E4B0398);
    sub_18E30A3CC(&unk_1EABE2F38);
    sub_18E1C8AE8();
    sub_18E44F26C();
    v29 = sub_18E1C59F8();
    v30(v29);
    *v27 = v31;
    v27[1] = v32;
    v27[2] = v31;
    v27[3] = v31;
    sub_18E309D78(v31);

    sub_18E1C9934(v25);
    sub_18E30A338(v31);
  }

  sub_18E1C6650();
}

unint64_t sub_18E30A750()
{
  result = qword_1EABE2F20;
  if (!qword_1EABE2F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2F20);
  }

  return result;
}

unint64_t sub_18E30A7A4(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E1C5B20();
    sub_18E2707F8(&qword_1EABE2F08, &qword_18E4B0390);
    v2();
    sub_18E1CA1A4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18E30A810()
{
  result = qword_1EABE2F30;
  if (!qword_1EABE2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2F30);
  }

  return result;
}

unint64_t sub_18E30A864()
{
  result = qword_1EABE2F40;
  if (!qword_1EABE2F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2F40);
  }

  return result;
}

unint64_t sub_18E30A8BC()
{
  result = qword_1EABE2F48;
  if (!qword_1EABE2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2F48);
  }

  return result;
}

unint64_t sub_18E30A914()
{
  result = qword_1EABE2F50;
  if (!qword_1EABE2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2F50);
  }

  return result;
}

unint64_t sub_18E30A96C()
{
  result = qword_1EABE0370;
  if (!qword_1EABE0370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0370);
  }

  return result;
}

unint64_t sub_18E30A9C4()
{
  result = qword_1EABDF9B0;
  if (!qword_1EABDF9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF9B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DebugInformationOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E30AA74(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18E30AA8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_18E30AACC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_18E30AB18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_18E30AB58(uint64_t result, int a2, int a3)
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

uint64_t sub_18E30ABA0(uint64_t a1, int a2)
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

uint64_t sub_18E30ABE0(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for DebugInformation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DebugInformation.UsageAliasSubscription.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DebugInformation.CoherenceTokens.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DebugInformation.DeviceConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E30AF88()
{
  result = qword_1EABE2F58;
  if (!qword_1EABE2F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2F58);
  }

  return result;
}

unint64_t sub_18E30AFE0()
{
  result = qword_1EABE2F60;
  if (!qword_1EABE2F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2F60);
  }

  return result;
}

unint64_t sub_18E30B038()
{
  result = qword_1EABE2F68;
  if (!qword_1EABE2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2F68);
  }

  return result;
}

unint64_t sub_18E30B090()
{
  result = qword_1EABE2F70;
  if (!qword_1EABE2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE2F70);
  }

  return result;
}

unint64_t sub_18E30B0E8()
{
  result = qword_1EABE0538;
  if (!qword_1EABE0538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0538);
  }

  return result;
}

unint64_t sub_18E30B140()
{
  result = qword_1EABDFBF0;
  if (!qword_1EABDFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBF0);
  }

  return result;
}

unint64_t sub_18E30B198()
{
  result = qword_1EABDFBA8;
  if (!qword_1EABDFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBA8);
  }

  return result;
}

unint64_t sub_18E30B1F0()
{
  result = qword_1EABDFB98;
  if (!qword_1EABDFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFB98);
  }

  return result;
}

unint64_t sub_18E30B248()
{
  result = qword_1EABDFBE8;
  if (!qword_1EABDFBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBE8);
  }

  return result;
}

unint64_t sub_18E30B2A0()
{
  result = qword_1EABDFBD8;
  if (!qword_1EABDFBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBD8);
  }

  return result;
}

unint64_t sub_18E30B2F8()
{
  result = qword_1EABDFBC8;
  if (!qword_1EABDFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBC8);
  }

  return result;
}

unint64_t sub_18E30B350()
{
  result = qword_1EABDFBB8;
  if (!qword_1EABDFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFBB8);
  }

  return result;
}

uint64_t sub_18E30B3A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v35 = MEMORY[0x1E69E7CC0];
  sub_18E26F220(0, v1, 0);
  v2 = v35;
  result = sub_18E327EEC(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v27 = v3 + 64;
  v28 = v1;
  v29 = v3 + 56;
  v30 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v33 = v6;
      v31 = v8;
      v32 = v5;
      v11 = *(v3 + 48) + 24 * v7;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v35 + 16);
      v16 = *(v35 + 24);

      if (v15 >= v16 >> 1)
      {
        result = sub_18E26F220((v16 > 1), v15 + 1, 1);
      }

      *(v35 + 16) = v15 + 1;
      v17 = v35 + (v15 << 6);
      *(v17 + 32) = v12;
      *(v17 + 40) = v13;
      *(v17 + 48) = v14;
      *(v17 + 49) = *v34;
      *(v17 + 52) = *&v34[3];
      *(v17 + 56) = 0u;
      *(v17 + 72) = 0u;
      *(v17 + 88) = 0;
      if (v33)
      {
        goto LABEL_29;
      }

      v9 = v29;
      v3 = v30;
      v18 = 1 << *(v30 + 32);
      if (v7 >= v18)
      {
        goto LABEL_26;
      }

      v19 = *(v29 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v30 + 36) != v32)
      {
        goto LABEL_28;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v21 = v28;
      }

      else
      {
        v22 = v10 << 6;
        v23 = v10 + 1;
        v24 = (v27 + 8 * v10);
        v21 = v28;
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_18E249F2C(v7, v32, 0);
            v18 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        result = sub_18E249F2C(v7, v32, 0);
      }

LABEL_19:
      v8 = v31 + 1;
      if (v31 + 1 == v21)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v30 + 36);
      v7 = v18;
      if (v18 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

id StatusResponse.__allocating_init(status:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___MCResourceStatus_status] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ResourceInformation.__allocating_init(location:metadata:)()
{
  v0 = objc_allocWithZone(sub_18E2287AC());
  sub_18E1D8004();
  return ResourceInformation.init(location:metadata:)();
}

void __swiftcall CostProfile.init(onDeviceMemory:cacheable:dynamicModeAllowed:energyEfficientMode:avoidUnload:unentitledGatedByFoundationModels:unentitledUseCases:powerCost:preferUnload:)(ModelCatalog::CostProfile *__return_ptr retstr, Swift::Int onDeviceMemory, Swift::Bool cacheable, Swift::Bool dynamicModeAllowed, Swift::Bool energyEfficientMode, Swift::Bool avoidUnload, Swift::Bool unentitledGatedByFoundationModels, Swift::OpaquePointer unentitledUseCases, Swift::Int powerCost, Swift::Bool preferUnload)
{
  sub_18E1E9DAC(onDeviceMemory, cacheable, dynamicModeAllowed, energyEfficientMode, avoidUnload, unentitledGatedByFoundationModels, retstr);
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  *(v12 + 32) = v13;
}

void __swiftcall ManagedRuntimeInformation.init(inferenceProvider:vmInferenceProvider:cost:instanceID:)(ModelCatalog::ManagedRuntimeInformation *__return_ptr retstr, ModelCatalog::InferenceProvider inferenceProvider, ModelCatalog::InferenceProvider_optional vmInferenceProvider, ModelCatalog::CostProfile *cost, Swift::String_optional instanceID)
{
  v5 = *(inferenceProvider.id._countAndFlagsBits + 8);
  v6 = *(inferenceProvider.id._countAndFlagsBits + 16);
  v7 = *(inferenceProvider.id._object + 16);
  retstr->inferenceProvider.id._countAndFlagsBits = *inferenceProvider.id._countAndFlagsBits;
  retstr->inferenceProvider.id._object = v5;
  retstr->inferenceProvider.hostedOnServerOverride.value = v6;
  retstr->vmInferenceProvider.value.id = *inferenceProvider.id._object;
  retstr->vmInferenceProvider.value.hostedOnServerOverride.value = v7;
  v8 = *(*&inferenceProvider.hostedOnServerOverride.value + 16);
  *&retstr->instanceID.value._object = **&inferenceProvider.hostedOnServerOverride.value;
  *&retstr->cost.cacheable = v8;
  LOBYTE(retstr->cost.powerCost) = *(*&inferenceProvider.hostedOnServerOverride.value + 32);
  *&retstr->vmInferenceProvider.is_nil = vmInferenceProvider.value.id._countAndFlagsBits;
  retstr->instanceID.value._countAndFlagsBits = vmInferenceProvider.value.id._object;
}

void __swiftcall AssetSubscriptionInformation.init(subscriberID:subscriptionName:assetSetName:ttl:requestResourcesKey:)(ModelCatalog::AssetSubscriptionInformation *__return_ptr retstr, Swift::String subscriberID, Swift::String subscriptionName, Swift::String assetSetName, Swift::Int_optional ttl, ModelCatalog::RequestResourcesKey_optional requestResourcesKey)
{
  v6 = *requestResourcesKey.value;
  retstr->subscriberID = subscriberID;
  retstr->subscriptionName = subscriptionName;
  retstr->assetSetName = assetSetName;
  retstr->ttl.value = ttl.value;
  retstr->ttl.is_nil = ttl.is_nil;
  retstr->requestResourcesKey.value = v6;
}

ModelCatalog::Platform __swiftcall Platform.init(platformType:version:)(ModelCatalog::Platform::PlatformType platformType, Swift::String version)
{
  *v2 = *platformType;
  *(v2 + 8) = version;
  result.version = version;
  result.platformType = platformType;
  return result;
}

void __swiftcall CostProfile.init(onDeviceMemory:cacheable:dynamicModeAllowed:energyEfficientMode:avoidUnload:unentitledGatedByFoundationModels:unentitledUseCases:)(ModelCatalog::CostProfile *__return_ptr retstr, Swift::Int onDeviceMemory, Swift::Bool cacheable, Swift::Bool dynamicModeAllowed, Swift::Bool energyEfficientMode, Swift::Bool avoidUnload, Swift::Bool unentitledGatedByFoundationModels, Swift::OpaquePointer unentitledUseCases)
{
  sub_18E1E9DAC(onDeviceMemory, cacheable, dynamicModeAllowed, energyEfficientMode, avoidUnload, unentitledGatedByFoundationModels, retstr);
  *(v9 + 16) = v8;
  *(v9 + 24) = 1;
  *(v9 + 32) = 0;
}

uint64_t _s12ModelCatalog15ManagedResourcePA2A018ConfigurationBasedD0RzrlE17executionContextsShyAA16ExecutionContextVGvg_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(*(a3 + 8) + 32))(a1);
  sub_18E30B3A8(v3);
  sub_18E1C5D78();

  return sub_18E292D44();
}

void static ResourceConfiguration.== infix(_:_:)()
{
  sub_18E1C575C();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v72 = v3[6];
  v70 = *(v3 + 56);
  v68 = v3[9];
  v66 = *(v3 + 80);
  v10 = *(v3 + 13);
  v87[0] = *(v3 + 11);
  v87[1] = v10;
  v88[0] = *(v3 + 15);
  *(v88 + 10) = *(v3 + 130);
  v60 = v3[19];
  v64 = v3[20];
  v62 = v3[21];
  v58 = v3[22];
  v55 = v3[23];
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = v1[5];
  v71 = v1[6];
  v69 = *(v1 + 56);
  v67 = v1[9];
  v65 = *(v1 + 80);
  v17 = *(v1 + 13);
  v89[0] = *(v1 + 11);
  v89[1] = v17;
  v90[0] = *(v1 + 15);
  *(v90 + 10) = *(v1 + 130);
  v18 = v4 == v11 && v5 == v12;
  v59 = v1[19];
  v63 = v1[20];
  v61 = v1[21];
  v56 = v1[23];
  v57 = v1[22];
  if (!v18 && (sub_18E44F3CC() & 1) == 0)
  {
    goto LABEL_33;
  }

  if (v6 != v13 || v7 != v14)
  {
    sub_18E1CFFC0();
    if ((sub_18E44F3CC() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v20 = v8 == v15 && v9 == v16;
  if (!v20 && (sub_18E44F3CC() & 1) == 0)
  {
    goto LABEL_33;
  }

  if ((sub_18E290008(v72, v71) & 1) == 0)
  {
    goto LABEL_33;
  }

  if ((v70 ^ v69))
  {
    goto LABEL_33;
  }

  sub_18E290AD4();
  if ((v21 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (v68)
  {
    if (!v67)
    {
      goto LABEL_33;
    }

    sub_18E21D0F8();
    v22 = sub_18E290E60();

    if ((v22 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v67)
  {
    goto LABEL_33;
  }

  if ((v66 ^ v65))
  {
    goto LABEL_33;
  }

  v23 = v87[0];
  v24 = v89[0];
  if (*(&v87[0] + 1))
  {
    v83 = v87[0];
    v25 = *(v3 + 15);
    v26 = *(v3 + 130);
    v84 = *(v3 + 13);
    v85[0] = v25;
    *(v85 + 10) = v26;
    v80 = v87[0];
    v81 = v84;
    v82[0] = v85[0];
    *(v82 + 10) = v26;
    if (*(&v89[0] + 1))
    {
      v27 = *(v1 + 15);
      v78 = *(v1 + 13);
      v79[0] = v27;
      *(v79 + 10) = *(v1 + 130);
      v77 = v89[0];
      sub_18E24058C();
      sub_18E2F66D4(v28, v29, v30, &qword_18E4B0C70);
      sub_18E24058C();
      sub_18E2F66D4(v31, v32, v33, &qword_18E4B0C70);
      sub_18E24058C();
      sub_18E2F66D4(v34, v35, v36, &qword_18E4B0C70);
      v38 = static AssetSubscriptionInformation.== infix(_:_:)(&v80, &v77, v37);
      v73[0] = v77;
      v73[1] = v78;
      v74[0] = v79[0];
      *(v74 + 10) = *(v79 + 10);
      sub_18E1FFAD8(v73);
      v75[0] = v80;
      v75[1] = v81;
      v76[0] = v82[0];
      *(v76 + 10) = *(v82 + 10);
      sub_18E1FFAD8(v75);
      v77 = v23;
      v39 = *(v3 + 15);
      v78 = *(v3 + 13);
      v79[0] = v39;
      *(v79 + 10) = *(v3 + 130);
      sub_18E1D44B4();
      sub_18E327C3C(v40, v41);
      if ((v38 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_35;
    }

    v77 = v83;
    v78 = v84;
    v79[0] = v85[0];
    *(v79 + 10) = *(v85 + 10);
    sub_18E24058C();
    sub_18E2F66D4(v42, v43, v44, &qword_18E4B0C70);
    sub_18E24058C();
    sub_18E2F66D4(v45, v46, v47, &qword_18E4B0C70);
    sub_18E24058C();
    sub_18E2F66D4(v48, v49, v50, &qword_18E4B0C70);
    sub_18E1FFAD8(&v77);
LABEL_32:
    v83 = v23;
    sub_18E223470();
    v85[2] = v24;
    v51 = *(v1 + 15);
    v85[3] = *(v1 + 13);
    v86[0] = v51;
    *(v86 + 10) = *(v1 + 130);
    sub_18E327C3C(&v83, &unk_1EABE2FC0);
    goto LABEL_33;
  }

  if (*(&v89[0] + 1))
  {
    sub_18E2F66D4(v87, &v83, &qword_1EABE2FB8, &qword_18E4B0C70);
    sub_18E2F66D4(v89, &v83, &qword_1EABE2FB8, &qword_18E4B0C70);
    goto LABEL_32;
  }

  v83 = *&v87[0];
  sub_18E223470();
  sub_18E2F66D4(v87, &v80, &qword_1EABE2FB8, &qword_18E4B0C70);
  sub_18E2F66D4(v89, &v80, &qword_1EABE2FB8, &qword_18E4B0C70);
  sub_18E327C3C(&v83, &qword_1EABE2FB8);
LABEL_35:
  if (v64)
  {
    if (!v63)
    {
      goto LABEL_33;
    }

    v52 = v60 == v59 && v64 == v63;
    if (!v52 && (sub_18E44F3CC() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v63)
  {
    goto LABEL_33;
  }

  if (v62)
  {
    if (!v61 || !sub_18E290BF0(v62, v61))
    {
      goto LABEL_33;
    }
  }

  else if (v61)
  {
    goto LABEL_33;
  }

  if (v58)
  {
    if (!v57)
    {
      goto LABEL_33;
    }

    sub_18E290F68();
    v54 = v53;

    if ((v54 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v57)
  {
    goto LABEL_33;
  }

  if (v55 && v56)
  {

    sub_18E1C5BFC();
    sub_18E290C28();
  }

LABEL_33:
  sub_18E1C5544();
}

void sub_18E30BD1C()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C8E58();
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v4 = sub_18E1E1594();
    sub_18E1C8B08(&type metadata for ResourceConfiguration, v5, v6, v7, v4);
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E208040();
    sub_18E1D4380();
    sub_18E1E2678();
    sub_18E1D5DD4(v8, v9, v10);
    sub_18E1E26B4();
    v11 = sub_18E1C6040();
    v12(v11);
    sub_18E216880();
    sub_18E1FED0C();
    sub_18E22013C();
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30BED8()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  v4 = v3;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C8E58();
  v6 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v7 = sub_18E1E1594();
    sub_18E1C8B08(&type metadata for ResourceConfiguration, v8, v9, v10, v7);
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E216858();
    if (v12)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v11;
    }

    sub_18E1D7FE4();
    sub_18E1E3C78();
    sub_18E1D5DD4(v14, v15, v16);
    sub_18E235304();
    sub_18E1D6354();
    sub_18E1E9DF4();
    v17 = sub_18E1C9010();
    v18(v17);
    sub_18E216880();
    sub_18E1FED0C();
    *(v4 + 200) = v6;
    *(v4 + 208) = v13;
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30C0B4()
{
  sub_18E1C62A0();
  sub_18E1E200C(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1CAFF0();
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v4 = sub_18E1E2624();
    sub_18E1D6110(&type metadata for ResourceConfiguration, v5, v6, v7, v4);
    sub_18E1E6468();
    sub_18E1C5644();
    sub_18E216858();
    sub_18E1E0FE0();
    sub_18E2244A8();
    sub_18E201A88(17, v8, v9);
    sub_18E1CD780();
    if (v10 && *(v10 + 16))
    {
      v11 = sub_18E1C5844();
      v12(v11);
      sub_18E200604();
      sub_18E1E9FEC();
      sub_18E2214B4();
    }

    else
    {
      v13 = sub_18E32EFD4();
      v14 = sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v13);
      sub_18E32EF80(v14, v15);
      sub_18E243ED0(v16, 0xD000000000000029);
      sub_18E22355C();
      v17 = sub_18E1C89D0();
      MEMORY[0](v17);

      sub_18E1FE044(&v18);
    }
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30C358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, ...)
{
  va_start(va, a63);
  sub_18E1C62A0();
  a19 = v65;
  a20 = v66;
  sub_18E32EFFC();
  sub_18E2236EC();
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v67);
  sub_18E1C61D0();
  v68 = v64[3];
  v69 = sub_18E1E25B0();
  sub_18E1DD34C(v69, v70);
  sub_18E1E9D4C();
  sub_18E1E2CC0();
  sub_18E44F4DC();
  if (!v63)
  {
    sub_18E1E69A4();
    sub_18E212018();
    sub_18E1E23B8();
    sub_18E44F26C();
    sub_18E1E3E84();
    sub_18E1C7854();
    sub_18E1E23B8();
    sub_18E44F1CC();
    memcpy(&a12, va, 0xC1uLL);
    v71 = sub_18E232F6C();
    v68(v71);
    v72 = sub_18E1D0120();
    v73(v72);
    memcpy(a9, &a37, 0xD8uLL);
  }

  sub_18E1C9934(v64);
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E30C520()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C8E58();
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v4 = sub_18E1E1594();
    sub_18E1C8B08(&type metadata for ResourceConfiguration, v5, v6, v7, v4);
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E208040();
    sub_18E1D4380();
    sub_18E1E2678();
    sub_18E1D5DD4(v8, v9, v10);
    sub_18E1E26B4();
    v11 = sub_18E1C6040();
    v12(v11);
    sub_18E216880();
    sub_18E1FED0C();
    sub_18E22013C();
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30C6DC()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  v4 = v3;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C8E58();
  v6 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v7 = sub_18E1E1594();
    sub_18E1C8B08(&type metadata for ResourceConfiguration, v8, v9, v10, v7);
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E216858();
    if (v12)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v11;
    }

    sub_18E1D7FE4();
    sub_18E1E3C78();
    sub_18E1D5DD4(v14, v15, v16);
    sub_18E235304();
    sub_18E1D6354();
    sub_18E1E9DF4();
    v17 = sub_18E1C9010();
    v18(v17);
    sub_18E216880();
    sub_18E1FED0C();
    *(v4 + 200) = v6;
    *(v4 + 208) = v13;
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30C8B8()
{
  sub_18E1C62A0();
  sub_18E1E200C(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1CAFF0();
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v4 = sub_18E1E2624();
    sub_18E1D6110(&type metadata for ResourceConfiguration, v5, v6, v7, v4);
    sub_18E1E6468();
    sub_18E1C5644();
    sub_18E216858();
    sub_18E1E0FE0();
    sub_18E2244A8();
    sub_18E201A88(17, v8, v9);
    sub_18E1CD780();
    if (v10 && *(v10 + 16))
    {
      v11 = sub_18E1C5844();
      v12(v11);
      sub_18E200604();
      sub_18E1E9FEC();
      sub_18E2214B4();
    }

    else
    {
      v13 = sub_18E32EFD4();
      v14 = sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v13);
      sub_18E32EF80(v14, v15);
      sub_18E243ED0(v16, 0xD000000000000029);
      sub_18E22355C();
      v17 = sub_18E1C89D0();
      MEMORY[0](v17);

      sub_18E1FE044(&v18);
    }
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30CAF8()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C8E58();
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v4 = sub_18E1E1594();
    sub_18E1C8B08(&type metadata for ResourceConfiguration, v5, v6, v7, v4);
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E208040();
    sub_18E1D4380();
    sub_18E1E2678();
    sub_18E201A88(21, v8, v9);
    sub_18E1E26B4();
    v10 = sub_18E1C6040();
    v11(v10);
    sub_18E216880();
    sub_18E1FED0C();
    sub_18E22013C();
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30CCB8()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  v4 = v3;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C8E58();
  v6 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v7 = sub_18E1E1594();
    sub_18E1C8B08(&type metadata for ResourceConfiguration, v8, v9, v10, v7);
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E216858();
    if (v12)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v11;
    }

    sub_18E1D7FE4();
    sub_18E1E3C78();
    sub_18E201A88(21, v14, v15);
    sub_18E235304();
    sub_18E1D6354();
    sub_18E1E9DF4();
    v16 = sub_18E1C9010();
    v17(v16);
    sub_18E216880();
    sub_18E1FED0C();
    *(v4 + 200) = v6;
    *(v4 + 208) = v13;
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30CE98()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C8E58();
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v4 = sub_18E1E1594();
    sub_18E1C8B08(&type metadata for ResourceConfiguration, v5, v6, v7, v4);
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E208040();
    sub_18E1D4380();
    sub_18E1E2678();
    sub_18E201A88(22, v8, v9);
    sub_18E1E26B4();
    v10 = sub_18E1C6040();
    v11(v10);
    sub_18E216880();
    sub_18E1FED0C();
    sub_18E22013C();
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30D058()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  v4 = v3;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C8E58();
  v6 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v7 = sub_18E1E1594();
    sub_18E1C8B08(&type metadata for ResourceConfiguration, v8, v9, v10, v7);
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E216858();
    if (v12)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v11;
    }

    sub_18E1D7FE4();
    sub_18E1E3C78();
    sub_18E201A88(22, v14, v15);
    sub_18E235304();
    sub_18E1D6354();
    sub_18E1E9DF4();
    v16 = sub_18E1C9010();
    v17(v16);
    sub_18E216880();
    sub_18E1FED0C();
    *(v4 + 200) = v6;
    *(v4 + 208) = v13;
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30D238()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C8E58();
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v4 = sub_18E1E1594();
    sub_18E1C8B08(&type metadata for ResourceConfiguration, v5, v6, v7, v4);
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E208040();
    sub_18E1D4380();
    sub_18E1E2678();
    sub_18E1D5DD4(v8, v9, v10);
    sub_18E1E26B4();
    v11 = sub_18E1C6040();
    v12(v11);
    sub_18E216880();
    sub_18E1FED0C();
    sub_18E22013C();
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30D3F4()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  v4 = v3;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C8E58();
  v6 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v7 = sub_18E1E1594();
    sub_18E1C8B08(&type metadata for ResourceConfiguration, v8, v9, v10, v7);
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E216858();
    if (v12)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v11;
    }

    sub_18E1D7FE4();
    sub_18E1E3C78();
    sub_18E1D5DD4(v14, v15, v16);
    sub_18E235304();
    sub_18E1D6354();
    sub_18E1E9DF4();
    v17 = sub_18E1C9010();
    v18(v17);
    sub_18E216880();
    sub_18E1FED0C();
    *(v4 + 200) = v6;
    *(v4 + 208) = v13;
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30D608()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C8E58();
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v4 = sub_18E1E1594();
    sub_18E1C8B08(&type metadata for ResourceConfiguration, v5, v6, v7, v4);
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E208040();
    sub_18E1D4380();
    sub_18E1E2678();
    sub_18E201A88(17, v8, v9);
    sub_18E1E26B4();
    v10 = sub_18E1C6040();
    v11(v10);
    sub_18E216880();
    sub_18E1FED0C();
    sub_18E22013C();
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30D7C8()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  v4 = v3;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C8E58();
  v6 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v7 = sub_18E1E1594();
    sub_18E1C8B08(&type metadata for ResourceConfiguration, v8, v9, v10, v7);
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E216858();
    if (v12)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v11;
    }

    sub_18E1D7FE4();
    sub_18E1E3C78();
    sub_18E201A88(17, v14, v15);
    sub_18E235304();
    sub_18E1D6354();
    sub_18E1E9DF4();
    v16 = sub_18E1C9010();
    v17(v16);
    sub_18E216880();
    sub_18E1FED0C();
    *(v4 + 200) = v6;
    *(v4 + 208) = v13;
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30D9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_18E1C62A0();
  a19 = v66;
  a20 = v67;
  sub_18E32EFFC();
  sub_18E22177C(v68, v69, v70);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v71);
  sub_18E1C8E58();
  sub_18E1DD34C(v65, v65[3]);
  sub_18E1E9D4C();
  sub_18E1E6A9C();
  sub_18E44F4DC();
  if (!v64)
  {
    *(v66 - 65) = 0;
    v72 = sub_18E1E9E20();
    sub_18E1C6900(&type metadata for ResourceConfiguration, v73, v74, v75, v72);
    sub_18E1E3E84();
    a14 = 1;
    sub_18E1E845C();
    v76 = sub_18E44F1CC();
    v78 = v77;
    v79 = 0xE700000000000000;
    if (v77)
    {
      v79 = v77;
    }

    v83 = v76;
    v84 = v79;
    memcpy(&a39, &a64, 0xC1uLL);
    sub_18E1D45EC(a13, a11, &a39);
    if (v78)
    {
      v80 = v83;
    }

    else
    {
      v80 = 0x636972656E6567;
    }

    v81 = sub_18E1C6004();
    v82(v81);
    sub_18E1E8538();
    memcpy(a12, &a14, 0xC8uLL);
    a12[25] = v80;
    a12[26] = v84;
  }

  sub_18E1C9934(v65);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30DBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, ...)
{
  va_start(va, a63);
  sub_18E1C62A0();
  a19 = v65;
  a20 = v66;
  sub_18E32EFFC();
  sub_18E22177C(v67, v68, v69);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v70);
  sub_18E1C8E58();
  sub_18E1DD34C(v64, v64[3]);
  sub_18E1E9D4C();
  sub_18E1E6A9C();
  sub_18E44F4DC();
  if (!v63)
  {
    *(v65 - 65) = 0;
    v71 = sub_18E1E9E20();
    sub_18E1C6900(&type metadata for ResourceConfiguration, v72, v73, v74, v71);
    sub_18E1E3E84();
    LOBYTE(a14) = 1;
    sub_18E1E845C();
    v75 = sub_18E44F1CC();
    v77 = 0x636972656E6567;
    if (v76)
    {
      v77 = v75;
    }

    v81 = v77;
    if (v76)
    {
      v78 = v76;
    }

    else
    {
      v78 = 0xE700000000000000;
    }

    sub_18E1E8538();
    sub_18E1D45EC(a13, a11, &a14);
    memcpy(&a39, va, 0xC1uLL);
    sub_18E1D46CC(v81, v78);
    v79 = sub_18E1C9010();
    v80(v79);
    sub_18E1E8538();
    memcpy(a12, &a14, 0xC8uLL);
    a12[25] = v81;
    a12[26] = v78;
  }

  sub_18E1C9934(v64);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30DE38()
{
  sub_18E1C62A0();
  sub_18E1E200C(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1CAFF0();
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v4 = sub_18E1E2624();
    sub_18E1D6110(&type metadata for ResourceConfiguration, v5, v6, v7, v4);
    sub_18E1E6468();
    sub_18E1C5644();
    sub_18E216858();
    sub_18E1E0FE0();
    sub_18E2244A8();
    sub_18E201A88(24, v8, v9);
    sub_18E1CD780();
    if (v10 && *(v10 + 16))
    {
      v11 = sub_18E1C5844();
      v12(v11);
      sub_18E200604();
      sub_18E1E9FEC();
      sub_18E2214B4();
    }

    else
    {
      v13 = sub_18E32EFD4();
      v14 = sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v13);
      sub_18E32EF80(v14, v15);
      sub_18E243ED0(v16, 0xD000000000000029);
      sub_18E22355C();
      v17 = sub_18E1C89D0();
      MEMORY[0](v17);

      sub_18E1FE044(&v18);
    }
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30E0B0()
{
  sub_18E1C62A0();
  v30 = v2;
  v31 = v3;
  v32 = v4;
  v6 = v5;
  v7 = sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  v9 = v8;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1CAFF0();
  sub_18E1C5628(v6);
  sub_18E1E9D4C();
  sub_18E1E6A9C();
  sub_18E1CB000();
  sub_18E44F4DC();
  if (!v0)
  {
    v11 = v9;
    v12 = sub_18E1E9E20();
    sub_18E1D6110(&type metadata for ResourceConfiguration, v13, v14, v15, v12);
    sub_18E1E6468();
    v16 = sub_18E1C5644();
    v18 = 0x636972656E6567;
    if (v17)
    {
      v18 = v16;
    }

    v29 = v18;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0xE700000000000000;
    }

    sub_18E200604();
    sub_18E1D45EC(v32, v30, v33);
    if (v35 && *(v35 + 16))
    {
      v20 = sub_18E1C5844();
      v21(v20);
      sub_18E200604();
      memcpy(v31, v33, 0xC8uLL);
      v31[25] = v29;
      v31[26] = v19;
    }

    else
    {
      v22 = v7;
      v23 = v11;
      v25 = v34[0];
      v24 = v34[1];
      v26 = sub_18E32EFD4();
      sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v26);
      *v27 = v25;
      v27[1] = v24;
      sub_18E243ED0(v27, 0xD000000000000029);
      v28 = *(v23 + 8);

      v28(v1, v22);

      sub_18E1FE044(v34);
    }
  }

  sub_18E1C9934(v6);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30E338()
{
  sub_18E1C62A0();
  sub_18E1E200C(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1CAFF0();
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v4 = sub_18E1E2624();
    sub_18E1D6110(&type metadata for ResourceConfiguration, v5, v6, v7, v4);
    sub_18E1E6468();
    sub_18E1C5644();
    sub_18E216858();
    sub_18E1E0FE0();
    sub_18E2244A8();
    sub_18E201A88(27, v8, v9);
    sub_18E1CD780();
    if (v10 && *(v10 + 16))
    {
      v11 = sub_18E1C5844();
      v12(v11);
      sub_18E200604();
      sub_18E1E9FEC();
      sub_18E2214B4();
    }

    else
    {
      v13 = sub_18E32EFD4();
      v14 = sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v13);
      sub_18E32EF80(v14, v15);
      sub_18E243ED0(v16, 0xD000000000000029);
      sub_18E22355C();
      v17 = sub_18E1C89D0();
      MEMORY[0](v17);

      sub_18E1FE044(&v18);
    }
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30E578()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C8E58();
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v4 = sub_18E1E1594();
    sub_18E1C8B08(&type metadata for ResourceConfiguration, v5, v6, v7, v4);
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E208040();
    sub_18E1D4380();
    sub_18E1E2678();
    sub_18E201A88(23, v8, v9);
    sub_18E1E26B4();
    v10 = sub_18E1C6040();
    v11(v10);
    sub_18E216880();
    sub_18E1FED0C();
    sub_18E22013C();
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30E738()
{
  sub_18E1C62A0();
  sub_18E223D24(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  v4 = v3;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C8E58();
  v6 = v1[4];
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v7 = sub_18E1E1594();
    sub_18E1C8B08(&type metadata for ResourceConfiguration, v8, v9, v10, v7);
    sub_18E1E88D0();
    sub_18E1C7854();
    sub_18E1E845C();
    sub_18E44F1CC();
    sub_18E216858();
    if (v12)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v11;
    }

    sub_18E1D7FE4();
    sub_18E1E3C78();
    sub_18E201A88(23, v14, v15);
    sub_18E235304();
    sub_18E1D6354();
    sub_18E1E9DF4();
    v16 = sub_18E1C9010();
    v17(v16);
    sub_18E216880();
    sub_18E1FED0C();
    *(v4 + 200) = v6;
    *(v4 + 208) = v13;
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30E918()
{
  sub_18E1C62A0();
  sub_18E1E200C(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1CAFF0();
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v4 = sub_18E1E2624();
    sub_18E1D6110(&type metadata for ResourceConfiguration, v5, v6, v7, v4);
    sub_18E1E6468();
    sub_18E1C5644();
    sub_18E216858();
    sub_18E1E0FE0();
    sub_18E2244A8();
    sub_18E201A88(29, v8, v9);
    sub_18E1CD780();
    if (v10 && *(v10 + 16))
    {
      v11 = sub_18E1C5844();
      v12(v11);
      sub_18E200604();
      sub_18E1E9FEC();
      sub_18E2214B4();
    }

    else
    {
      v13 = sub_18E32EFD4();
      v14 = sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v13);
      sub_18E32EF80(v14, v15);
      sub_18E243ED0(v16, 0xD000000000000029);
      sub_18E22355C();
      v17 = sub_18E1C89D0();
      MEMORY[0](v17);

      sub_18E1FE044(&v18);
    }
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30EC80()
{
  sub_18E1C62A0();
  sub_18E1E200C(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1CAFF0();
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v4 = sub_18E1E2624();
    sub_18E1D6110(&type metadata for ResourceConfiguration, v5, v6, v7, v4);
    sub_18E1E6468();
    sub_18E1C5644();
    sub_18E216858();
    sub_18E1E0FE0();
    sub_18E2244A8();
    sub_18E201A88(21, v8, v9);
    sub_18E1CD780();
    if (v10 && *(v10 + 16))
    {
      v11 = sub_18E1C5844();
      v12(v11);
      sub_18E200604();
      sub_18E1E9FEC();
      sub_18E2214B4();
    }

    else
    {
      v13 = sub_18E32EFD4();
      v14 = sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v13);
      sub_18E32EF80(v14, v15);
      sub_18E243ED0(v16, 0xD000000000000029);
      sub_18E22355C();
      v17 = sub_18E1C89D0();
      MEMORY[0](v17);

      sub_18E1FE044(&v18);
    }
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30EEC0()
{
  sub_18E1C62A0();
  sub_18E1E200C(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1CAFF0();
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v4 = sub_18E1E2624();
    sub_18E1D6110(&type metadata for ResourceConfiguration, v5, v6, v7, v4);
    sub_18E1E6468();
    sub_18E1C5644();
    sub_18E216858();
    sub_18E1E0FE0();
    sub_18E2244A8();
    sub_18E201A88(18, v8, v9);
    sub_18E1CD780();
    if (v10 && *(v10 + 16))
    {
      v11 = sub_18E1C5844();
      v12(v11);
      sub_18E200604();
      sub_18E1E9FEC();
      sub_18E2214B4();
    }

    else
    {
      v13 = sub_18E32EFD4();
      v14 = sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v13);
      sub_18E32EF80(v14, v15);
      sub_18E243ED0(v16, 0xD000000000000029);
      sub_18E22355C();
      v17 = sub_18E1C89D0();
      MEMORY[0](v17);

      sub_18E1FE044(&v18);
    }
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30F0D4()
{
  sub_18E1C62A0();
  sub_18E1E200C(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1CAFF0();
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v4 = sub_18E1E2624();
    sub_18E1D6110(&type metadata for ResourceConfiguration, v5, v6, v7, v4);
    sub_18E1E6468();
    sub_18E1C5644();
    sub_18E216858();
    sub_18E1E0FE0();
    sub_18E2244A8();
    sub_18E1D5DD4(v8, v9, v10);
    sub_18E1CD780();
    if (v11 && *(v11 + 16))
    {
      v12 = sub_18E1C5844();
      v13(v12);
      sub_18E200604();
      sub_18E1E9FEC();
      sub_18E2214B4();
    }

    else
    {
      v14 = sub_18E32EFD4();
      v15 = sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v14);
      sub_18E32EF80(v15, v16);
      sub_18E243ED0(v17, 0xD000000000000029);
      sub_18E22355C();
      v18 = sub_18E1C89D0();
      MEMORY[0](v18);

      sub_18E1FE044(&v19);
    }
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30F2E4()
{
  sub_18E1C62A0();
  sub_18E1E200C(v2);
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1CAFF0();
  sub_18E1E1D50(v1);
  sub_18E1E9D4C();
  sub_18E1CA1B0();
  sub_18E44F4DC();
  if (!v0)
  {
    v4 = sub_18E1E2624();
    sub_18E1D6110(&type metadata for ResourceConfiguration, v5, v6, v7, v4);
    sub_18E1E6468();
    sub_18E1C5644();
    sub_18E216858();
    sub_18E1E0FE0();
    sub_18E2244A8();
    sub_18E201A88(21, v8, v9);
    sub_18E1CD780();
    if (v10 && *(v10 + 16))
    {
      v11 = sub_18E1C5844();
      v12(v11);
      sub_18E200604();
      sub_18E1E9FEC();
      sub_18E2214B4();
    }

    else
    {
      v13 = sub_18E32EFD4();
      v14 = sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v13);
      sub_18E32EF80(v14, v15);
      sub_18E243ED0(v16, 0xD000000000000029);
      sub_18E22355C();
      v17 = sub_18E1C89D0();
      MEMORY[0](v17);

      sub_18E1FE044(&v18);
    }
  }

  sub_18E1C9934(v1);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void sub_18E30F524()
{
  sub_18E1C62A0();
  sub_18E2236EC();
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1C61D0();
  v3 = v1[3];
  v4 = sub_18E1E25B0();
  sub_18E1DD34C(v4, v5);
  sub_18E1E9D4C();
  sub_18E1E2CC0();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E69A4();
    sub_18E212018();
    sub_18E1E23B8();
    sub_18E44F26C();
    memcpy(v12, v13, sizeof(v12));
    sub_18E1C7854();
    sub_18E1E23B8();
    sub_18E44F1CC();
    memcpy(v10, v12, 0xC1uLL);
    v6 = sub_18E232F6C();
    v3(v6);
    v7 = sub_18E1D0120();
    v8(v7);
    memcpy(v9, v11, 0xF8uLL);
  }

  sub_18E1C9934(v1);
  sub_18E1E2968();
  sub_18E1C6650();
}

void ConfigurationBasedResource.init(from:)()
{
  sub_18E1C62A0();
  v22 = v1;
  v3 = v2;
  v5 = v4;
  v21 = v6;
  v20 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C4EDC();
  v9 = v8 - v7;
  sub_18E2706EC(&qword_1EABE2FC8, &qword_18E4B0C80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C61D0();
  v23 = v5;
  sub_18E1C5628(v5);
  sub_18E1E9D4C();
  sub_18E1E2294();
  sub_18E44F4DC();
  if (!v0)
  {
    sub_18E1E9E20();
    sub_18E1E23B8();
    sub_18E44F26C();
    memcpy(v25, v26, sizeof(v25));
    LOBYTE(v24[0]) = 1;
    sub_18E1E23B8();
    sub_18E44F1CC();
    sub_18E216858();
    v15 = v14 | 0x636972656E0000;
    if (v11)
    {
      v16 = v15;
    }

    else
    {
      v16 = v12;
    }

    if (v11)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = v13;
    }

    memcpy(v24, v25, 0xC1uLL);
    (*(v22 + 48))(v24, v16, v17, v3, v22);
    v18 = sub_18E221BAC();
    v19(v18);
    (*(v20 + 32))(v21, v9, v3);
  }

  sub_18E1C9934(v23);
  sub_18E1E2968();
  sub_18E1C6650();
}

void ConfigurationBasedResource.encode(to:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v4 = v3;
  sub_18E2706EC(&unk_1EABE2FD0, &unk_18E4B0C88);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C6BA8();
  v6 = sub_18E2016D4();
  sub_18E1DD34C(v6, v7);
  sub_18E1E9D4C();
  sub_18E1E6748();
  sub_18E44F4EC();
  v8 = sub_18E1D5F00();
  v9(v8);
  sub_18E2120B8();
  sub_18E44F35C();
  memcpy(v14, v15, 0xC1uLL);
  sub_18E1FE044(v14);
  if (v0)
  {
    v10 = sub_18E1E1B1C();
    v11(v10);
  }

  else
  {
    (*(v2 + 32))(v4, v2);
    sub_18E224E3C();
    sub_18E223F6C();
    sub_18E44F31C();
    v12 = sub_18E1E1B1C();
    v13(v12);
  }

  sub_18E1C6650();
}

void CatalogResource<>.id.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E20052C();
  v11 = *(v10 + 32);
  if (v11() == 0x636972656E6567 && v12 == 0xE700000000000000)
  {
  }

  else
  {
    sub_18E1D0380();
    v14 = sub_18E44F3CC();

    if ((v14 & 1) == 0)
    {
      v15 = sub_18E1CF50C();
      v16(v15);
      v17 = sub_18E21D0F8();
      (v11)(v17);
      static VariantHelpers.createResourceIdentifier(with:variant:)();

      sub_18E1E1DA0();
      return;
    }
  }

  sub_18E1CF50C();
  sub_18E1E1DA0();

  v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_18E30FC90()
{
  sub_18E2452F0();
  v3 = *(v0 + 72);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = sub_18E1CF3F8();
      sub_18E26F200(v5, v4, 0);
      sub_18E1E6CA8();
      do
      {
        sub_18E1CFE24();
        if (v1 >= v2 >> 1)
        {
          sub_18E1E332C();
          sub_18E26F200(v7, v8, v9);
        }

        sub_18E221960();
      }

      while (!v6);
    }
  }

  sub_18E2209F0();

  return sub_18E292C80();
}

uint64_t CatalogResource<>.inferenceProviders.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(v15, a1, a3);
  v3 = v15[9];

  sub_18E1FE044(v15);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = sub_18E1CF3F8();
      sub_18E26F200(v5, v4, 0);
      v6 = (v3 + 48);
      do
      {
        v8 = *(v6 - 2);
        v7 = *(v6 - 1);
        v9 = *v6;
        v11 = *(v14 + 16);
        v10 = *(v14 + 24);

        if (v11 >= v10 >> 1)
        {
          sub_18E26F200((v10 > 1), v11 + 1, 1);
        }

        v6 += 104;
        *(v14 + 16) = v11 + 1;
        v12 = v14 + 24 * v11;
        *(v12 + 32) = v8;
        *(v12 + 40) = v7;
        *(v12 + 48) = v9;
        --v4;
      }

      while (v4);
    }
  }

  return sub_18E292C80();
}

void sub_18E30FE5C()
{
  sub_18E1C575C();
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = 0;
    v3 = *(v1 + 16);
    v4 = v1 - 48;
    v5 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v6 = v4 + 104 * v2;
    while (v3 != v2)
    {
      if (v2 >= v3)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      if (__OFADD__(v2, 1))
      {
        goto LABEL_17;
      }

      v7 = *(v6 + 112);
      ++v2;
      v6 += 104;
      if (v7)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_18E1C6868();
          sub_18E3F0110(v9, v10, v11, v5);
          v5 = v12;
        }

        v8 = *(v5 + 24);
        if (*(v5 + 16) >= v8 >> 1)
        {
          sub_18E223604(v8 > 1);
          v5 = v13;
        }

        sub_18E233370();
        goto LABEL_3;
      }
    }
  }

  sub_18E1C5544();

  sub_18E292C80();
}

void CatalogResource<>.vmInferenceProviders.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(v22, a1, a3);
  v3 = v22[9];

  sub_18E1FE044(v22);
  if (v3)
  {
    v4 = 0;
    v5 = *(v3 + 16);
    v6 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v7 = v3 - 48 + 104 * v4;
    while (1)
    {
      if (v5 == v4)
      {

        goto LABEL_13;
      }

      if (v4 >= *(v3 + 16))
      {
        break;
      }

      ++v4;
      v8 = v7 + 104;
      v9 = *(v7 + 112);
      v7 += 104;
      if (v9)
      {
        v10 = *v8;
        v11 = *(v8 + 16);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_18E1C6868();
          sub_18E3F0110(v14, v15, v16, v6);
          v6 = v17;
        }

        v12 = *(v6 + 16);
        if (v12 >= *(v6 + 24) >> 1)
        {
          sub_18E1E332C();
          sub_18E3F0110(v18, v19, v20, v6);
          v6 = v21;
        }

        *(v6 + 16) = v12 + 1;
        v13 = v6 + 24 * v12;
        *(v13 + 32) = v10;
        *(v13 + 40) = v9;
        *(v13 + 48) = v11;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    sub_18E292C80();
  }
}

void CatalogResource<>.dependentResourceIDs.getter()
{
  sub_18E1C575C();
  v2 = v1;
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v5);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1CA5EC();
  sub_18E44E38C();
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C4EDC();
  if (qword_1ED6A8360 != -1)
  {
LABEL_17:
    sub_18E1CF494(&qword_1ED6A8360);
  }

  v8 = off_1ED6A8720;
  v9 = (*(v2 + 104))(v4, v2);
  v11 = sub_18E21654C(v9, v10, v8);

  if (v11 && (v12 = sub_18E1D03F8(), v14 = v13(v12), v16 = sub_18E21654C(v14, v15, v11), , , v16))
  {
    v2 = 0;
    sub_18E249B9C(v16);

    v17 = sub_18E1D03F8();
    v18(v17);
    v19 = v45[6];

    sub_18E1FE044(v45);
    v20 = 0;
    v43 = *(v19 + 16);
    v44 = v19;
    v21 = v19 + 40;
    v42 = MEMORY[0x1E69E7CC0];
    for (i = v19 + 40; ; v21 = i)
    {
      v22 = (v21 + 16 * v20);
      if (v43 == v20)
      {
        sub_18E1D002C();

        goto LABEL_15;
      }

      if (v20 >= *(v44 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      v23 = *(v22 - 1);
      v24 = *v22;

      sub_18E44E37C();

      MEMORY[0x193ACBAD0](v23, v24);

      sub_18E44E2FC();
      sub_18E44E32C();
      v25 = sub_18E44E54C();
      sub_18E220124(v0, 1, v25);
      if (v26)
      {
        break;
      }

      type metadata accessor for CatalogIndex(0);
      sub_18E1C5D78();
      v4 = v25 - 8;
      v27 = static CatalogIndex.resolveResourceQueryURI(uri:variantResolverMappings:)();
      v29 = v28;

      v30 = sub_18E223E74();
      v31(v30);
      v32 = sub_18E21D0F8();
      v33(v32);
      v34 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18E1C6868();
        sub_18E264698();
        v34 = v37;
      }

      v42 = v34;
      v35 = *(v34 + 16);
      if (v35 >= *(v34 + 24) >> 1)
      {
        sub_18E1E332C();
        sub_18E264698();
        v42 = v38;
      }

      ++v20;
      *(v42 + 16) = v35 + 1;
      v36 = v42 + 16 * v35;
      *(v36 + 32) = v27;
      *(v36 + 40) = v29;
    }

    __break(1u);
  }

  else
  {
    v39 = sub_18E1D03F8();
    v40(v39);

    sub_18E1FE044(v45);
LABEL_15:
    sub_18E1C5544();
  }
}

uint64_t CatalogResource<>.preconditions.getter()
{
  sub_18E1CC414();
  v0();
  v1 = v4;

  sub_18E1FE044(v3);
  return v1;
}

uint64_t CatalogResource<>.sideloaded.getter()
{
  sub_18E1CC414();
  v0();
  sub_18E1FE044(v2);
  return v2[56];
}

uint64_t CatalogResource<>.assetBacked.getter()
{
  sub_18E1CC414();
  v0();
  sub_18E1FE044(v2);
  return v2[80];
}

uint64_t CatalogResource<>.tags.getter()
{
  sub_18E1CC414();
  v0();
  v1 = v4;

  sub_18E1FE044(v3);
  if (v1)
  {
    return v1;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t CatalogResource<>.useCases.getter()
{
  sub_18E1CC414();
  v0();
  v1 = v4;

  sub_18E1FE044(v3);
  if (v1)
  {
    return v1;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t CatalogResource<>.platforms.getter()
{
  sub_18E1CC414();
  v0();
  v1 = v4;

  sub_18E1FE044(v3);
  if (!v1)
  {
    if (qword_1EABE0D08 != -1)
    {
      sub_18E1C6C24();
      swift_once();
    }

    v1 = qword_1EABE2F98;
  }

  return v1;
}

uint64_t CatalogResource<>.configurationIdentifier.getter()
{
  sub_18E1CC414();
  v0();

  sub_18E1FE044(v2);
  return sub_18E1C5BFC();
}

void sub_18E310730(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  if (v2 && *(v2 + 16))
  {
    sub_18E1CD580(a1, v3, v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    *(a1 + 5) = 0;
    *a1 = 0;
    sub_18E1E32A8(a1);
  }
}

uint64_t ManagedResource<>.runtimeInformation.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v4, a1);
  v2 = v4[9];

  sub_18E1FE044(v4);
  if (v2)
  {
    return v2;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_18E3107F8()
{
  v0 = sub_18E30FC90();
  sub_18E30B3A8(v0);
  sub_18E1C5D78();

  return sub_18E292D44();
}

uint64_t sub_18E310858()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E310920()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E310994()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E310A08()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E310A7C()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E310AF0()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E310B64()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E310BD8()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E310C4C()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E310CC0()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

void sub_18E310D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11);
  memcpy(v8, v9, 0xD8uLL);
  sub_18E310D6C();
}

uint64_t sub_18E310E24()
{
  sub_18E2706EC(&qword_1EABE2FE8, &qword_18E4B0C98);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18E49D9B0;
  *(v1 + 56) = &type metadata for Catalog.LLM.Model.AFMTextInstruct3BBase;
  *(v1 + 64) = sub_18E32EA80();
  v2 = swift_allocObject();
  *(v1 + 32) = v2;
  memcpy(__dst, (v0 + 96), sizeof(__dst));
  memcpy((v2 + 16), (v0 + 96), 0xF0uLL);
  sub_18E32EAD4(__dst, &v4);
  return v1;
}

uint64_t sub_18E310EE0()
{
  sub_18E221A1C();
  sub_18E2706EC(&qword_1EABE2FE8, &qword_18E4B0C98);
  sub_18E1E1950();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18E49D9B0;
  *(v4 + 56) = v3;
  *(v4 + 64) = v2();
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  memcpy(__dst, (v1 + 80), 0xF0uLL);
  memcpy((v5 + 16), (v1 + 80), 0xF0uLL);
  v0(__dst, v7);
  return v4;
}

void LLMAdapter.dependencies.getter()
{
  sub_18E20052C();
  sub_18E1CD8B8();
  sub_18E2706EC(&qword_1EABE2FE8, &qword_18E4B0C98);
  sub_18E1E1950();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18E49D9B0;
  v2 = *(v0 + 32);
  sub_18E1D44B4();
  *(v1 + 56) = swift_getAssociatedTypeWitness();
  sub_18E1CF50C();
  *(v1 + 64) = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  sub_18E1E1774((v1 + 32));
  v3 = sub_18E1D8004();
  v2(v3);
  sub_18E1E1DA0();
}

uint64_t sub_18E311064()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E3110D8()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E31114C()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E3111C0()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

void sub_18E311234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11);
  memcpy(v8, v9, 0xD8uLL);
  sub_18E31126C();
}

uint64_t sub_18E311324()
{
  sub_18E221A1C();
  sub_18E2706EC(&qword_1EABE2FE8, &qword_18E4B0C98);
  sub_18E1E1950();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18E49D9B0;
  *(v4 + 56) = v3;
  *(v4 + 64) = v2();
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  memcpy(__dst, (v1 + 96), 0x88uLL);
  memcpy((v5 + 16), (v1 + 96), 0x88uLL);
  v0(__dst, v7);
  return v4;
}

uint64_t sub_18E3113E4()
{
  sub_18E221A1C();
  sub_18E2706EC(&qword_1EABE2FE8, &qword_18E4B0C98);
  sub_18E1E1950();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18E49D9B0;
  *(v4 + 56) = v3;
  *(v4 + 64) = v2();
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  memcpy(__dst, (v1 + 80), 0x78uLL);
  memcpy((v5 + 16), (v1 + 80), 0x78uLL);
  v0(__dst, v7);
  return v4;
}

void LLMModel.dependencies.getter()
{
  sub_18E20052C();
  sub_18E1CD8B8();
  sub_18E2706EC(&qword_1EABE2FE8, &qword_18E4B0C98);
  sub_18E1E1950();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18E49D9B0;
  v2 = *(v0 + 32);
  sub_18E1D44B4();
  *(v1 + 56) = swift_getAssociatedTypeWitness();
  sub_18E1CF50C();
  *(v1 + 64) = *(swift_getAssociatedConformanceWitness() + 8);
  sub_18E1E1774((v1 + 32));
  v3 = sub_18E1D8004();
  v2(v3);
  sub_18E1E1DA0();
}

uint64_t sub_18E311564()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E3115D8()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E31164C()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E3116C4()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E311738()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E3117AC()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E311820()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E311894()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E311908()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E31197C()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}

uint64_t sub_18E3119F0()
{
  v1 = sub_18E1CE920();
  v2 = sub_18E29965C(v1);
  sub_18E1CA720(v2);
  v3 = sub_18E30FC90();
  sub_18E2167E8(v3);
  sub_18E2287AC();

  *(v0 + 216) = sub_18E292D44();
  return sub_18E1D5C24();
}