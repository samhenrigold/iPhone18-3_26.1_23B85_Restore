uint64_t sub_1C3F0D3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  swift_getAssociatedConformanceWitness();
  return sub_1C4031160() & 1;
}

uint64_t sub_1C3F0D47C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_1C3F0D528@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1C4031350();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1C3EFFEDC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1C3EFFEDC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1C4031330();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1C4031290();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1C4031290();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1C4031350();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1C3EFFEDC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1C4031350();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1C3EFFEDC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1C3EFFEDC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1C4031290();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F0D8E8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C4031BF0() & 1;
  }
}

uint64_t sub_1C3F0D97C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C4031BF0() & 1;
  }
}

uint64_t sub_1C3F0DA18@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = MEMORY[0x1C6932F70](*a1, a1[1]);
  *a2 = 46;
  a2[1] = 0xE100000000000000;
  return result;
}

unint64_t sub_1C3F0DA74()
{
  result = qword_1EC08F578;
  if (!qword_1EC08F578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F570, &qword_1C4038C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F578);
  }

  return result;
}

unint64_t sub_1C3F0DAEC()
{
  result = qword_1EC08F580;
  if (!qword_1EC08F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F580);
  }

  return result;
}

uint64_t sub_1C3F0DB78(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1C3EF0290(0, v1, 0);
  v2 = v28;
  v3 = a1 + 64;
  result = sub_1C4031770();
  v5 = v25;
  v6 = a1;
  v7 = 0;
  v8 = *(a1 + 36);
  v27 = v8;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v6 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_23;
    }

    v12 = *(*(v6 + 48) + 8 * result);
    v13 = *(*(v6 + 56) + result);
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = result;
      sub_1C3EF0290((v14 > 1), v15 + 1, 1);
      v6 = a1;
      v8 = v27;
      v5 = v25;
      result = v24;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = v12;
    v9 = 1 << *(v6 + 32);
    if (result >= v9)
    {
      goto LABEL_24;
    }

    v17 = *(v3 + 8 * v10);
    if ((v17 & v11) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1C3F038B4(result, v27, 0);
          v6 = a1;
          v8 = v27;
          v5 = v25;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_1C3F038B4(result, v27, 0);
      v6 = a1;
      v8 = v27;
      v5 = v25;
    }

LABEL_4:
    ++v7;
    result = v9;
    if (v7 == v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1C3F0DDD4()
{
  result = sub_1C3F15BBC(&unk_1F4387730);
  qword_1EC0B0C50 = result;
  return result;
}

CallHistory::AutoAnsweredReason_optional __swiftcall AutoAnsweredReason.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

_WORD *sub_1C3F0DE48@<X0>(_WORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1C3F0DF24()
{
  sub_1C4031C70();
  sub_1C4031CA0();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F0DF98(uint64_t a1)
{
  sub_1C4031C70();
  sub_1C4031CA0();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F0DFF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09714();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F0E044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09618();
  v5 = sub_1C3F09714();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F0E0A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09618();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

uint64_t _sSo30CHRecentCallAutoAnsweredReasonV0B7HistoryEyAbC0cdE0OcfC_0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1EC08EB00 != -1)
  {
    swift_once();
  }

  v2 = sub_1C3F0DB78(qword_1EC0B0C50);
  if (*(v2 + 16))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F238, &unk_1C4038DE0);
    v4 = sub_1C4031A10();
    v2 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v10 = v4;
  sub_1C3F02D14(v2, 1u, &v10);
  v5 = v10;
  if (*(v10 + 16) && (v6 = sub_1C3F3C788(v1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

unint64_t sub_1C3F0E21C()
{
  result = qword_1EC08F588;
  if (!qword_1EC08F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F588);
  }

  return result;
}

unint64_t sub_1C3F0E274()
{
  result = qword_1EC08F590;
  if (!qword_1EC08F590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F598, &qword_1C4038D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F590);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoAnsweredReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutoAnsweredReason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C3F0E434(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1C3EF0538(0, v1, 0);
  v2 = v28;
  v3 = a1 + 64;
  result = sub_1C4031770();
  v5 = v25;
  v6 = a1;
  v7 = 0;
  v8 = *(a1 + 36);
  v27 = v8;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v6 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_23;
    }

    v12 = *(*(v6 + 48) + 8 * result);
    v13 = *(*(v6 + 56) + result);
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = result;
      sub_1C3EF0538((v14 > 1), v15 + 1, 1);
      v6 = a1;
      v8 = v27;
      v5 = v25;
      result = v24;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = v12;
    v9 = 1 << *(v6 + 32);
    if (result >= v9)
    {
      goto LABEL_24;
    }

    v17 = *(v3 + 8 * v10);
    if ((v17 & v11) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1C3E97CDC(result, v27, 0);
          v6 = a1;
          v8 = v27;
          v5 = v25;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v27, 0);
      v6 = a1;
      v8 = v27;
      v5 = v25;
    }

LABEL_4:
    ++v7;
    result = v9;
    if (v7 == v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1C3F0E68C()
{
  result = sub_1C3F15BE4(&unk_1F4387770);
  qword_1EC0B0C58 = result;
  return result;
}

CallHistory::CallDirectoryIdentityType_optional __swiftcall CallDirectoryIdentityType.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 3u)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F0E7B0()
{
  result = qword_1EC08F5A0;
  if (!qword_1EC08F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F5A0);
  }

  return result;
}

unint64_t sub_1C3F0E808()
{
  result = qword_1EC08F5A8;
  if (!qword_1EC08F5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F5B0, &qword_1C4038EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F5A8);
  }

  return result;
}

uint64_t sub_1C3F0E880(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0995C();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F0E8D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0980C();
  v5 = sub_1C3F0995C();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F0E934(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0980C();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

uint64_t getEnumTagSinglePayload for MediaType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C3F0EAE0(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  if (v5 == 3)
  {
    goto LABEL_3;
  }

  LOBYTE(v7) = a2;
  v8 = *(a1 + 40);
  v9 = *a3;
  v10 = sub_1C3F41298();
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F019C8(v15, v7 & 1);
    v10 = sub_1C3F41298();
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v7)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v21 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v21[6] + v10) = v5;
    *(v21[7] + 8 * v10) = v8;
    v22 = v21[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v14)
    {
      v21[2] = v23;
      if (v4 == 1)
      {
LABEL_3:

        return;
      }

      v8 = (a1 + 56);
      v24 = 1;
      while (v24 < *(a1 + 16))
      {
        v5 = *(v8 - 8);
        if (v5 == 3)
        {
          goto LABEL_3;
        }

        v7 = *v8;
        v25 = *a3;
        v26 = sub_1C3F41298();
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v14 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v27;
        if (v25[3] < v30)
        {
          sub_1C3F019C8(v30, 1);
          v26 = sub_1C3F41298();
          if ((v16 & 1) != (v31 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v32 = *a3;
        *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        *(v32[6] + v26) = v5;
        *(v32[7] + 8 * v26) = v7;
        v33 = v32[2];
        v14 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v24;
        v32[2] = v34;
        v8 += 2;
        if (v4 == v24)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v10;
  sub_1C3F02B88();
  v10 = v20;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v18 = swift_allocError();
  swift_willThrow();

  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_28:
  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
  sub_1C40319C0();
  MEMORY[0x1C6932F70](39, 0xE100000000000000);
  sub_1C40319D0();
  __break(1u);
}

uint64_t sub_1C3F0EE38()
{
  if (qword_1EC08EB08 != -1)
  {
    swift_once();
  }

  v0 = sub_1C3F0E434(qword_1EC0B0C58);
  if (*(v0 + 16))
  {
    v1 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2E0, &qword_1C4038758);
    v2 = sub_1C4031A10();
    v0 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v8 = v2;
  sub_1C3F0EAE0(v0, 1, &v8);
  v3 = v8;
  if (*(v8 + 16) && (v4 = sub_1C3F41298(), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1C3F0EF58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1C3EF0418(0, v1, 0);
  v2 = v28;
  v3 = a1 + 64;
  result = sub_1C4031770();
  v5 = v25;
  v6 = a1;
  v7 = 0;
  v8 = *(a1 + 36);
  v27 = v8;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v6 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_23;
    }

    v12 = *(*(v6 + 48) + 4 * result);
    v13 = *(*(v6 + 56) + result);
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = result;
      sub_1C3EF0418((v14 > 1), v15 + 1, 1);
      v6 = a1;
      v8 = v27;
      v5 = v25;
      result = v24;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 8 * v15;
    *(v16 + 32) = v13;
    *(v16 + 36) = v12;
    v9 = 1 << *(v6 + 32);
    if (result >= v9)
    {
      goto LABEL_24;
    }

    v17 = *(v3 + 8 * v10);
    if ((v17 & v11) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1C3E97CDC(result, v27, 0);
          v6 = a1;
          v8 = v27;
          v5 = v25;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v27, 0);
      v6 = a1;
      v8 = v27;
      v5 = v25;
    }

LABEL_4:
    ++v7;
    result = v9;
    if (v7 == v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1C3F0F1B0()
{
  result = sub_1C3F15A1C(&unk_1F4387588);
  qword_1EC0B0C60 = result;
  return result;
}

CallHistory::CallerIDAvailability_optional __swiftcall CallerIDAvailability.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 3u)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F0F2C0()
{
  result = qword_1EC08F5B8;
  if (!qword_1EC08F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F5B8);
  }

  return result;
}

unint64_t sub_1C3F0F318()
{
  result = qword_1EC08F5C0;
  if (!qword_1EC08F5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F5C8, &qword_1C4039090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F5C0);
  }

  return result;
}

uint64_t sub_1C3F0F390(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09BA4();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F0F3E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09A54();
  v5 = sub_1C3F09BA4();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F0F444(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09A54();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

void sub_1C3F0F4A8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  if (v5 == 3)
  {
    goto LABEL_3;
  }

  LOBYTE(v7) = a2;
  LODWORD(v8) = *(a1 + 36);
  v9 = *a3;
  v10 = sub_1C3F41298();
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F016D8(v15, v7 & 1);
    v10 = sub_1C3F41298();
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v7)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v21 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v21[6] + v10) = v5;
    *(v21[7] + 4 * v10) = v8;
    v22 = v21[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v14)
    {
      v21[2] = v23;
      if (v4 == 1)
      {
LABEL_3:

        return;
      }

      v8 = (a1 + 44);
      v24 = 1;
      while (v24 < *(a1 + 16))
      {
        v5 = *(v8 - 4);
        if (v5 == 3)
        {
          goto LABEL_3;
        }

        v7 = *v8;
        v25 = *a3;
        v26 = sub_1C3F41298();
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v14 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v27;
        if (v25[3] < v30)
        {
          sub_1C3F016D8(v30, 1);
          v26 = sub_1C3F41298();
          if ((v16 & 1) != (v31 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v32 = *a3;
        *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        *(v32[6] + v26) = v5;
        *(v32[7] + 4 * v26) = v7;
        v33 = v32[2];
        v14 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v24;
        v32[2] = v34;
        v8 += 2;
        if (v4 == v24)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v10;
  sub_1C3F029D4();
  v10 = v20;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v18 = swift_allocError();
  swift_willThrow();

  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_28:
  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
  sub_1C40319C0();
  MEMORY[0x1C6932F70](39, 0xE100000000000000);
  sub_1C40319D0();
  __break(1u);
}

uint64_t sub_1C3F0F800()
{
  if (qword_1EC08EB10 != -1)
  {
    swift_once();
  }

  v0 = sub_1C3F0EF58(qword_1EC0B0C60);
  if (*(v0 + 16))
  {
    v1 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F310, &qword_1C4038788);
    v2 = sub_1C4031A10();
    v0 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v8 = v2;
  sub_1C3F0F4A8(v0, 1, &v8);
  v3 = v8;
  if (*(v8 + 16) && (v4 = sub_1C3F41298(), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 4 * v4);
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

uint64_t sub_1C3F0F920(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1C3EF0448(0, v1, 0);
  v2 = v28;
  v3 = a1 + 64;
  result = sub_1C4031770();
  v5 = v25;
  v6 = a1;
  v7 = 0;
  v8 = *(a1 + 36);
  v27 = v8;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v6 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_23;
    }

    v12 = *(*(v6 + 48) + 4 * result);
    v13 = *(*(v6 + 56) + result);
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = result;
      sub_1C3EF0448((v14 > 1), v15 + 1, 1);
      v6 = a1;
      v8 = v27;
      v5 = v25;
      result = v24;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 8 * v15;
    *(v16 + 32) = v13;
    *(v16 + 36) = v12;
    v9 = 1 << *(v6 + 32);
    if (result >= v9)
    {
      goto LABEL_24;
    }

    v17 = *(v3 + 8 * v10);
    if ((v17 & v11) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1C3E97CDC(result, v27, 0);
          v6 = a1;
          v8 = v27;
          v5 = v25;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v27, 0);
      v6 = a1;
      v8 = v27;
      v5 = v25;
    }

LABEL_4:
    ++v7;
    result = v9;
    if (v7 == v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C3F0FB78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F5E8, &unk_1C4039300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4039150;
  *(inited + 32) = 1;
  *(inited + 36) = 1;
  *(inited + 40) = 2;
  *(inited + 44) = 2;
  *(inited + 48) = 4;
  *(inited + 52) = 3;
  *(inited + 56) = 8;
  *(inited + 60) = 4;
  *(inited + 64) = 16;
  *(inited + 68) = 5;
  v1 = sub_1C3F15A30(inited);
  result = swift_setDeallocating();
  qword_1EC0B0C68 = v1;
  return result;
}

CallHistory::CallStatus_optional __swiftcall CallStatus.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 6u)
  {
    v2 = 6;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F0FCD0()
{
  result = qword_1EC08F5D0;
  if (!qword_1EC08F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F5D0);
  }

  return result;
}

unint64_t sub_1C3F0FDD8()
{
  result = qword_1EC08F5D8;
  if (!qword_1EC08F5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F5E0, &qword_1C403AA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F5D8);
  }

  return result;
}

uint64_t sub_1C3F0FE50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09DEC();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F0FEA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09C9C();
  v5 = sub_1C3F09DEC();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F0FF04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09C9C();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

uint64_t getEnumTagSinglePayload for CallStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CallStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C3F100A8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  if (v5 == 6)
  {
    goto LABEL_3;
  }

  LOBYTE(v7) = a2;
  LODWORD(v8) = *(a1 + 36);
  v9 = *a3;
  v10 = sub_1C3F41298();
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F016EC(v15, v7 & 1);
    v10 = sub_1C3F41298();
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v7)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v21 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v21[6] + v10) = v5;
    *(v21[7] + 4 * v10) = v8;
    v22 = v21[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v14)
    {
      v21[2] = v23;
      if (v4 == 1)
      {
LABEL_3:

        return;
      }

      v8 = (a1 + 44);
      v24 = 1;
      while (v24 < *(a1 + 16))
      {
        v5 = *(v8 - 4);
        if (v5 == 6)
        {
          goto LABEL_3;
        }

        v7 = *v8;
        v25 = *a3;
        v26 = sub_1C3F41298();
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v14 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v27;
        if (v25[3] < v30)
        {
          sub_1C3F016EC(v30, 1);
          v26 = sub_1C3F41298();
          if ((v16 & 1) != (v31 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v32 = *a3;
        *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        *(v32[6] + v26) = v5;
        *(v32[7] + 4 * v26) = v7;
        v33 = v32[2];
        v14 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v24;
        v32[2] = v34;
        v8 += 2;
        if (v4 == v24)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v10;
  sub_1C3F029E8();
  v10 = v20;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v18 = swift_allocError();
  swift_willThrow();

  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_28:
  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
  sub_1C40319C0();
  MEMORY[0x1C6932F70](39, 0xE100000000000000);
  sub_1C40319D0();
  __break(1u);
}

uint64_t sub_1C3F10400()
{
  if (qword_1EC08EB18 != -1)
  {
    swift_once();
  }

  v0 = sub_1C3F0F920(qword_1EC0B0C68);
  if (*(v0 + 16))
  {
    v1 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F308, &qword_1C4038780);
    v2 = sub_1C4031A10();
    v0 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v9 = v2;
  sub_1C3F100A8(v0, 1, &v9);
  v3 = v9;
  if (*(v9 + 16) && (v4 = sub_1C3F41298(), (v5 & 1) != 0))
  {
    v6 = (*(v3 + 56) + 4 * v4);
  }

  else
  {
    v6 = &kCHCallStatusUnknown;
  }

  v7 = *v6;

  return v7;
}

uint64_t sub_1C3F10528(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1C3EF0598(0, v1, 0);
  v2 = v28;
  v3 = a1 + 64;
  result = sub_1C4031770();
  v5 = v25;
  v6 = a1;
  v7 = 0;
  v8 = *(a1 + 36);
  v27 = v8;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v6 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_23;
    }

    v12 = *(*(v6 + 48) + 8 * result);
    v13 = *(*(v6 + 56) + result);
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = result;
      sub_1C3EF0598((v14 > 1), v15 + 1, 1);
      v6 = a1;
      v8 = v27;
      v5 = v25;
      result = v24;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = v12;
    v9 = 1 << *(v6 + 32);
    if (result >= v9)
    {
      goto LABEL_24;
    }

    v17 = *(v3 + 8 * v10);
    if ((v17 & v11) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1C3E97CDC(result, v27, 0);
          v6 = a1;
          v8 = v27;
          v5 = v25;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v27, 0);
      v6 = a1;
      v8 = v27;
      v5 = v25;
    }

LABEL_4:
    ++v7;
    result = v9;
    if (v7 == v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1C3F10780()
{
  result = sub_1C3F15D3C(&unk_1F4387860);
  qword_1EC0B0C70 = result;
  return result;
}

CallHistory::CommunicationTrustScore_optional __swiftcall CommunicationTrustScore.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 0xAu)
  {
    v2 = 10;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F10890()
{
  result = qword_1EC08F5F0;
  if (!qword_1EC08F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F5F0);
  }

  return result;
}

unint64_t sub_1C3F108E8()
{
  result = qword_1EC08F5F8;
  if (!qword_1EC08F5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F600, &qword_1C4039400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F5F8);
  }

  return result;
}

uint64_t sub_1C3F1095C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C3F10C7C();
  v9 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE530](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_1C3F109D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F10C7C();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F10A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F10C28();
  v5 = sub_1C3F10C7C();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F10A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F10C28();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

uint64_t getEnumTagSinglePayload for CommunicationTrustScore(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CommunicationTrustScore(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C3F10C28()
{
  result = qword_1EC08F608;
  if (!qword_1EC08F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F608);
  }

  return result;
}

unint64_t sub_1C3F10C7C()
{
  result = qword_1EC08F610;
  if (!qword_1EC08F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F610);
  }

  return result;
}

void sub_1C3F10CD0(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  if (v5 == 10)
  {
    goto LABEL_3;
  }

  LOBYTE(v7) = a2;
  v8 = *(a1 + 40);
  v9 = *a3;
  v10 = sub_1C3F41298();
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F019F0(v15, v7 & 1);
    v10 = sub_1C3F41298();
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v7)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v21 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v21[6] + v10) = v5;
    *(v21[7] + 8 * v10) = v8;
    v22 = v21[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v14)
    {
      v21[2] = v23;
      if (v4 == 1)
      {
LABEL_3:

        return;
      }

      v8 = (a1 + 56);
      v24 = 1;
      while (v24 < *(a1 + 16))
      {
        v5 = *(v8 - 8);
        if (v5 == 10)
        {
          goto LABEL_3;
        }

        v7 = *v8;
        v25 = *a3;
        v26 = sub_1C3F41298();
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v14 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v27;
        if (v25[3] < v30)
        {
          sub_1C3F019F0(v30, 1);
          v26 = sub_1C3F41298();
          if ((v16 & 1) != (v31 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v32 = *a3;
        *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        *(v32[6] + v26) = v5;
        *(v32[7] + 8 * v26) = v7;
        v33 = v32[2];
        v14 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v24;
        v32[2] = v34;
        v8 += 2;
        if (v4 == v24)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v10;
  sub_1C3F02BB0();
  v10 = v20;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v18 = swift_allocError();
  swift_willThrow();

  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_28:
  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
  sub_1C40319C0();
  MEMORY[0x1C6932F70](39, 0xE100000000000000);
  sub_1C40319D0();
  __break(1u);
}

uint64_t sub_1C3F11028()
{
  if (qword_1EC08EB20 != -1)
  {
    swift_once();
  }

  v0 = sub_1C3F10528(qword_1EC0B0C70);
  if (*(v0 + 16))
  {
    v1 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2D0, &unk_1C40394D0);
    v2 = sub_1C4031A10();
    v0 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v8 = v2;
  sub_1C3F10CD0(v0, 1, &v8);
  v3 = v8;
  if (*(v8 + 16) && (v4 = sub_1C3F41298(), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 4;
  }

  return v6;
}

unint64_t sub_1C3F11148()
{
  result = sub_1C3F15C34(&unk_1F4387820);
  qword_1EC0B0C78 = result;
  return result;
}

CallHistory::EmergencyMediaType_optional __swiftcall EmergencyMediaType.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F11258()
{
  result = qword_1EC08F618;
  if (!qword_1EC08F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F618);
  }

  return result;
}

unint64_t sub_1C3F112B0()
{
  result = qword_1EC08F620;
  if (!qword_1EC08F620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F628, &qword_1C40395D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F620);
  }

  return result;
}

uint64_t sub_1C3F11328(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A034();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F1137C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09EE4();
  v5 = sub_1C3F0A034();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F113DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F09EE4();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

uint64_t sub_1C3F11440(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1C3EF0568(0, v1, 0);
  v2 = v28;
  v3 = a1 + 64;
  result = sub_1C4031770();
  v5 = v25;
  v6 = a1;
  v7 = 0;
  v8 = *(a1 + 36);
  v27 = v8;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v6 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_23;
    }

    v12 = *(*(v6 + 48) + 8 * result);
    v13 = *(*(v6 + 56) + result);
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = result;
      sub_1C3EF0568((v14 > 1), v15 + 1, 1);
      v6 = a1;
      v8 = v27;
      v5 = v25;
      result = v24;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = v12;
    v9 = 1 << *(v6 + 32);
    if (result >= v9)
    {
      goto LABEL_24;
    }

    v17 = *(v3 + 8 * v10);
    if ((v17 & v11) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1C3E97CDC(result, v27, 0);
          v6 = a1;
          v8 = v27;
          v5 = v25;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v27, 0);
      v6 = a1;
      v8 = v27;
      v5 = v25;
    }

LABEL_4:
    ++v7;
    result = v9;
    if (v7 == v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1C3F11698()
{
  result = sub_1C3F15C0C(&unk_1F43877C0);
  qword_1EC0B0C80 = result;
  return result;
}

CallHistory::HandleType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HandleType.init(from:)(Swift::String from)
{
  object = from._object;
  countAndFlagsBits = from._countAndFlagsBits;
  v4 = v1;
  v6 = sub_1C4031220();
  v7 = v5;
  if (v6 == 0x636972656E6567 && v5 == 0xE700000000000000 || (sub_1C4031BF0() & 1) != 0 || v6 == 103 && v7 == 0xE100000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    v9 = 1;
LABEL_8:
    *v4 = v9;
    return result;
  }

  if (v6 == 0x656E6F6870 && v7 == 0xE500000000000000 || (sub_1C4031BF0() & 1) != 0 || v6 == 0x6D754E656E6F6870 && v7 == 0xEB00000000726562 || (sub_1C4031BF0() & 1) != 0 || v6 == 112 && v7 == 0xE100000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    v9 = 2;
    goto LABEL_8;
  }

  if (v6 == 0x6C69616D65 && v7 == 0xE500000000000000 || (sub_1C4031BF0() & 1) != 0 || v6 == 0x6464416C69616D65 && v7 == 0xEC00000073736572 || (sub_1C4031BF0() & 1) != 0 || v6 == 101 && v7 == 0xE100000000000000)
  {

LABEL_26:

    v9 = 3;
    goto LABEL_8;
  }

  v10 = sub_1C4031BF0();

  if (v10)
  {
    goto LABEL_26;
  }

  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001ALL, 0x80000001C4056D40);
  MEMORY[0x1C6932F70](countAndFlagsBits, object);

  MEMORY[0x1C6932F70](0xD000000000000069, 0x80000001C4056D60);
  sub_1C4030C20();
  sub_1C3F11A00();
  swift_allocError();
  sub_1C4030C30();
  return swift_willThrow();
}

unint64_t sub_1C3F11A00()
{
  result = qword_1EC08F630;
  if (!qword_1EC08F630)
  {
    sub_1C4030C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F630);
  }

  return result;
}

CallHistory::HandleType_optional __swiftcall HandleType.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if ((rawValue & 0xFFFC) != 0)
  {
    v2 = 4;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F11B40()
{
  result = qword_1EC08F638;
  if (!qword_1EC08F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F638);
  }

  return result;
}

unint64_t sub_1C3F11B98()
{
  result = qword_1EC08F640;
  if (!qword_1EC08F640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F648, &qword_1C4039770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F640);
  }

  return result;
}

uint64_t sub_1C3F11C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A27C();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F11C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A12C();
  v5 = sub_1C3F0A27C();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F11CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A12C();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

uint64_t getEnumTagSinglePayload for HandleType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HandleType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C3F11E68(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  if (v5 == 4)
  {
    goto LABEL_3;
  }

  LOBYTE(v7) = a2;
  v8 = *(a1 + 40);
  v9 = *a3;
  v10 = sub_1C3F41298();
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F019DC(v15, v7 & 1);
    v10 = sub_1C3F41298();
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v7)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v21 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v21[6] + v10) = v5;
    *(v21[7] + 8 * v10) = v8;
    v22 = v21[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v14)
    {
      v21[2] = v23;
      if (v4 == 1)
      {
LABEL_3:

        return;
      }

      v8 = (a1 + 56);
      v24 = 1;
      while (v24 < *(a1 + 16))
      {
        v5 = *(v8 - 8);
        if (v5 == 4)
        {
          goto LABEL_3;
        }

        v7 = *v8;
        v25 = *a3;
        v26 = sub_1C3F41298();
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v14 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v27;
        if (v25[3] < v30)
        {
          sub_1C3F019DC(v30, 1);
          v26 = sub_1C3F41298();
          if ((v16 & 1) != (v31 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v32 = *a3;
        *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        *(v32[6] + v26) = v5;
        *(v32[7] + 8 * v26) = v7;
        v33 = v32[2];
        v14 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v24;
        v32[2] = v34;
        v8 += 2;
        if (v4 == v24)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v10;
  sub_1C3F02B9C();
  v10 = v20;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v18 = swift_allocError();
  swift_willThrow();

  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_28:
  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
  sub_1C40319C0();
  MEMORY[0x1C6932F70](39, 0xE100000000000000);
  sub_1C40319D0();
  __break(1u);
}

uint64_t sub_1C3F121C0()
{
  if (qword_1EC08EB30 != -1)
  {
    swift_once();
  }

  v0 = sub_1C3F11440(qword_1EC0B0C80);
  if (*(v0 + 16))
  {
    v1 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2C8, &qword_1C4038748);
    v2 = sub_1C4031A10();
    v0 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v8 = v2;
  sub_1C3F11E68(v0, 1, &v8);
  v3 = v8;
  if (*(v8 + 16) && (v4 = sub_1C3F41298(), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1C3F122E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1C3EF0478(0, v1, 0);
  v2 = v28;
  v3 = a1 + 64;
  result = sub_1C4031770();
  v5 = v25;
  v6 = a1;
  v7 = 0;
  v8 = *(a1 + 36);
  v27 = v8;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v6 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_23;
    }

    v12 = *(*(v6 + 48) + 8 * result);
    v13 = *(*(v6 + 56) + result);
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = result;
      sub_1C3EF0478((v14 > 1), v15 + 1, 1);
      v6 = a1;
      v8 = v27;
      v5 = v25;
      result = v24;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = v12;
    v9 = 1 << *(v6 + 32);
    if (result >= v9)
    {
      goto LABEL_24;
    }

    v17 = *(v3 + 8 * v10);
    if ((v17 & v11) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1C3E97CDC(result, v27, 0);
          v6 = a1;
          v8 = v27;
          v5 = v25;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v27, 0);
      v6 = a1;
      v8 = v27;
      v5 = v25;
    }

LABEL_4:
    ++v7;
    result = v9;
    if (v7 == v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1C3F12538()
{
  result = sub_1C3F15B1C(&unk_1F43875C0);
  qword_1EC0B0C88 = result;
  return result;
}

CallHistory::JunkConfidence_optional __swiftcall JunkConfidence.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if ((rawValue & 0xFFFC) != 0)
  {
    v2 = 4;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F12658()
{
  result = qword_1EC08F650;
  if (!qword_1EC08F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F650);
  }

  return result;
}

unint64_t sub_1C3F12700()
{
  result = qword_1EC08F658;
  if (!qword_1EC08F658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F660, &qword_1C4039958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F658);
  }

  return result;
}

uint64_t sub_1C3F12774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C3F12954();
  v9 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE530](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_1C3F127E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F12954();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F1283C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F12900();
  v5 = sub_1C3F12954();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F1289C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F12900();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

unint64_t sub_1C3F12900()
{
  result = qword_1EC08F668;
  if (!qword_1EC08F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F668);
  }

  return result;
}

unint64_t sub_1C3F12954()
{
  result = qword_1EC08F670;
  if (!qword_1EC08F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F670);
  }

  return result;
}

void sub_1C3F129A8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  if (v5 == 4)
  {
    goto LABEL_3;
  }

  LOBYTE(v7) = a2;
  v8 = *(a1 + 40);
  v9 = *a3;
  v10 = sub_1C3F41298();
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F01978(v15, v7 & 1);
    v10 = sub_1C3F41298();
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v7)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v21 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v21[6] + v10) = v5;
    *(v21[7] + 8 * v10) = v8;
    v22 = v21[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v14)
    {
      v21[2] = v23;
      if (v4 == 1)
      {
LABEL_3:

        return;
      }

      v8 = (a1 + 56);
      v24 = 1;
      while (v24 < *(a1 + 16))
      {
        v5 = *(v8 - 8);
        if (v5 == 4)
        {
          goto LABEL_3;
        }

        v7 = *v8;
        v25 = *a3;
        v26 = sub_1C3F41298();
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v14 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v27;
        if (v25[3] < v30)
        {
          sub_1C3F01978(v30, 1);
          v26 = sub_1C3F41298();
          if ((v16 & 1) != (v31 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v32 = *a3;
        *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        *(v32[6] + v26) = v5;
        *(v32[7] + 8 * v26) = v7;
        v33 = v32[2];
        v14 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v24;
        v32[2] = v34;
        v8 += 2;
        if (v4 == v24)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v10;
  sub_1C3F02B38();
  v10 = v20;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v18 = swift_allocError();
  swift_willThrow();

  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_28:
  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
  sub_1C40319C0();
  MEMORY[0x1C6932F70](39, 0xE100000000000000);
  sub_1C40319D0();
  __break(1u);
}

uint64_t sub_1C3F12D00()
{
  if (qword_1EC08EB38 != -1)
  {
    swift_once();
  }

  v0 = sub_1C3F122E0(qword_1EC0B0C88);
  if (*(v0 + 16))
  {
    v1 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F300, &qword_1C4038778);
    v2 = sub_1C4031A10();
    v0 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v8 = v2;
  sub_1C3F129A8(v0, 1, &v8);
  v3 = v8;
  if (*(v8 + 16) && (v4 = sub_1C3F41298(), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1C3F12E24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1C3EF04A8(0, v1, 0);
  v2 = v28;
  v3 = a1 + 64;
  result = sub_1C4031770();
  v5 = v25;
  v6 = a1;
  v7 = 0;
  v8 = *(a1 + 36);
  v27 = v8;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v6 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_23;
    }

    v12 = *(*(v6 + 48) + 8 * result);
    v13 = *(*(v6 + 56) + result);
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = result;
      sub_1C3EF04A8((v14 > 1), v15 + 1, 1);
      v6 = a1;
      v8 = v27;
      v5 = v25;
      result = v24;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = v12;
    v9 = 1 << *(v6 + 32);
    if (result >= v9)
    {
      goto LABEL_24;
    }

    v17 = *(v3 + 8 * v10);
    if ((v17 & v11) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1C3E97CDC(result, v27, 0);
          v6 = a1;
          v8 = v27;
          v5 = v25;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v27, 0);
      v6 = a1;
      v8 = v27;
      v5 = v25;
    }

LABEL_4:
    ++v7;
    result = v9;
    if (v7 == v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t MediaType.description.getter()
{
  v1 = 0x6F696475612ELL;
  if (*v0 != 1)
  {
    v1 = 0x6F656469762ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

unint64_t sub_1C3F130D0()
{
  result = sub_1C3F15B44(&unk_1F4387620);
  qword_1EC0B0C90 = result;
  return result;
}

CallHistory::MediaType_optional __swiftcall MediaType.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 3u)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F131E0()
{
  result = qword_1EC08F678;
  if (!qword_1EC08F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F678);
  }

  return result;
}

unint64_t sub_1C3F13238()
{
  result = qword_1EC08F680;
  if (!qword_1EC08F680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F688, &qword_1C403AAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F680);
  }

  return result;
}

uint64_t sub_1C3F132B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A4C4();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F13304(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A374();
  v5 = sub_1C3F0A4C4();
  v6 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE398](a1, a2, v4, v5, v6);
}

uint64_t sub_1C3F13364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F0A374();

  return MEMORY[0x1EEDEE3A0](a1, a2, v4);
}

void sub_1C3F133C8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  if (v5 == 3)
  {
    goto LABEL_3;
  }

  LOBYTE(v7) = a2;
  v8 = *(a1 + 40);
  v9 = *a3;
  v10 = sub_1C3F41298();
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F0198C(v15, v7 & 1);
    v10 = sub_1C3F41298();
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v7)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v21 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v21[6] + v10) = v5;
    *(v21[7] + 8 * v10) = v8;
    v22 = v21[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v14)
    {
      v21[2] = v23;
      if (v4 == 1)
      {
LABEL_3:

        return;
      }

      v8 = (a1 + 56);
      v24 = 1;
      while (v24 < *(a1 + 16))
      {
        v5 = *(v8 - 8);
        if (v5 == 3)
        {
          goto LABEL_3;
        }

        v7 = *v8;
        v25 = *a3;
        v26 = sub_1C3F41298();
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v14 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v27;
        if (v25[3] < v30)
        {
          sub_1C3F0198C(v30, 1);
          v26 = sub_1C3F41298();
          if ((v16 & 1) != (v31 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v32 = *a3;
        *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        *(v32[6] + v26) = v5;
        *(v32[7] + 8 * v26) = v7;
        v33 = v32[2];
        v14 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v24;
        v32[2] = v34;
        v8 += 2;
        if (v4 == v24)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v10;
  sub_1C3F02B4C();
  v10 = v20;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v18 = swift_allocError();
  swift_willThrow();

  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_28:
  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
  sub_1C40319C0();
  MEMORY[0x1C6932F70](39, 0xE100000000000000);
  sub_1C40319D0();
  __break(1u);
}

uint64_t sub_1C3F13720()
{
  if (qword_1EC08EB40 != -1)
  {
    swift_once();
  }

  v0 = sub_1C3F12E24(qword_1EC0B0C90);
  if (*(v0 + 16))
  {
    v1 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2F8, &qword_1C4038770);
    v2 = sub_1C4031A10();
    v0 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v8 = v2;
  sub_1C3F133C8(v0, 1, &v8);
  v3 = v8;
  if (*(v8 + 16) && (v4 = sub_1C3F41298(), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1C3F13840@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v29 = a3;
  v5 = sub_1C4030720();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C3F153C8(&unk_1F4387A88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F690, &qword_1C4039BA0);
  swift_arrayDestroy();
  sub_1C4030700();
  v37 = 32;
  v38 = 0xE100000000000000;
  v35 = &v37;
  v9 = sub_1C3F0D528(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C3F15878, v34, a1, a2, 0x20uLL);
  v26 = v7;
  v33 = v7;
  v10 = sub_1C3F32990(sub_1C3F0D940, v32, v9);

  v12 = 0;
  v31 = 0;
  v13 = *(v8 + 64);
  v30 = v8;
  v14 = 1 << *(v8 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
LABEL_11:
    v19 = __clz(__rbit64(v16)) | (v12 << 6);
    v20 = *(*(v30 + 56) + 2 * v19);
    v36 = *(*(v30 + 56) + 2 * v19);
    v37 = sub_1C4031220();
    v38 = v21;
    MEMORY[0x1EEE9AC00](v37);
    *(&v26 - 2) = &v37;
    v22 = sub_1C3F0D47C(sub_1C3F15878, (&v26 - 4), v10);

    if (v22 & 1) != 0 || (v37 = sub_1C4031BB0(), v38 = v23, MEMORY[0x1EEE9AC00](v37), *(&v26 - 2) = &v37, v24 = sub_1C3F0D47C(sub_1C3F161A4, (&v26 - 4), v10), result = , (v24))
    {
      v31 |= v20;
    }

    v16 &= v16 - 1;
  }

  while (1)
  {
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      v25 = v28;
      *v29 = v31;
      return (*(v27 + 8))(v26, v25);
    }

    v16 = *(v8 + 64 + 8 * v18);
    ++v12;
    if (v16)
    {
      v12 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3F13B7C(__int16 a1)
{
  v28 = a1;
  v1 = sub_1C3F153C8(&unk_1F43872B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F690, &qword_1C4039BA0);
  swift_arrayDestroy();
  v24 = &v28;
  v2 = sub_1C3F14D8C(sub_1C3F15898, v23, v1);

  v3 = v2[2];
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = sub_1C3F14318(v2[2], 0);
    v6 = sub_1C3EF189C(&v26, (v5 + 4), v3, v2);
    v7 = v26;

    sub_1C3EE75E4(v7);
    if (v6 != v3)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v26 = v5;
  sub_1C3F143A8(&v26);

  v8 = v26;
  v9 = *(v26 + 16);
  if (v9)
  {
    v25 = v4;
    sub_1C3EF0270(0, v9, 0);
    v10 = v25;
    v11 = (v8 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v26 = 46;
      v27 = 0xE100000000000000;

      MEMORY[0x1C6932F70](v12, v13);

      v14 = v26;
      v15 = v27;
      v25 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1C3EF0270((v16 > 1), v17 + 1, 1);
        v10 = v25;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      v11 += 3;
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v26 = 91;
  v27 = 0xE100000000000000;
  v25 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F570, &qword_1C4038C00);
  sub_1C3F0DA74();
  v19 = sub_1C4031150();
  v21 = v20;

  MEMORY[0x1C6932F70](v19, v21);

  MEMORY[0x1C6932F70](93, 0xE100000000000000);
  return v26;
}

unint64_t static ScreenSharingType.caseMap.getter()
{
  v0 = sub_1C3F153C8(&unk_1F4387DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F690, &qword_1C4039BA0);
  swift_arrayDestroy();
  return v0;
}

uint64_t sub_1C3F13F6C()
{
  sub_1C4031C70();
  sub_1C4031CA0();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F13FE0(uint64_t a1)
{
  sub_1C4031C70();
  sub_1C4031CA0();
  return sub_1C4031CC0();
}

unint64_t sub_1C3F14024()
{
  v0 = sub_1C3F153C8(&unk_1F4387AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F690, &qword_1C4039BA0);
  swift_arrayDestroy();
  return v0;
}

BOOL sub_1C3F140C0(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int16 *sub_1C3F140F0@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

unsigned __int16 *sub_1C3F1411C@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

_WORD *sub_1C3F141F4@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_1C3F1422C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C3F13840(a1, a2, &v5);
  *a3 = v5;
  *(a3 + 2) = 0;
  return result;
}

uint64_t sub_1C3F14268(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3F154C8();
  v5 = MEMORY[0x1E698CFA8];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t sub_1C3F142C0@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
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
    LOWORD(v4) = 0;
  }

  *a2 = v4;
  return result;
}

void *sub_1C3F14318(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF70, &qword_1C4039EA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

uint64_t sub_1C3F143A8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C3F15364(v2);
  }

  v3 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = sub_1C4031BA0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 5;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 16);
          if (v13 >= *(v12 + 4))
          {
            break;
          }

          v14 = v12[2];
          v15 = v12[3];
          *(v12 + 1) = *(v12 - 1);
          v12[4] = v12[1];
          *(v12 - 1) = v14;
          *v12 = v15;
          *(v12 + 4) = v13;
          v12 -= 3;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF78, &unk_1C4038160);
      v7 = sub_1C4031420();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = v7 + 32;
    v17[1] = v6;
    sub_1C3F1450C(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C3F1450C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C3F14D78(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1C3F14AC0((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 40);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[12];
        v14 += 12;
        ++v13;
        if (v9 < v12 == v16 >= v15)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 24 * v6 - 8;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v26 + v10);
            v21 = (v26 + v17);
            v22 = *v20;
            v23 = v20[1];
            v24 = *(v20 + 8);
            v25 = *v21;
            *v20 = *(v21 - 1);
            v20[2] = v25;
            *(v21 - 2) = v22;
            *(v21 - 1) = v23;
            *v21 = v24;
          }

          ++v19;
          v17 -= 24;
          v10 += 24;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C3EFFD7C(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_1C3EFFD7C((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_1C3F14AC0((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6 - 24;
  v29 = v8 - v6;
LABEL_30:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 40);
    if (v32 >= *(v31 + 16))
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v34 = *(v31 + 24);
    v33 = *(v31 + 32);
    v35 = *(v31 + 16);
    *(v31 + 24) = *v31;
    *(v31 + 40) = v35;
    *v31 = v34;
    *(v31 + 8) = v33;
    *(v31 + 16) = v32;
    v31 -= 24;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1C3F14AC0(char *__dst, char *__src, unint64_t a3, __int16 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12 / 2];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[8] < v4[8])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 12;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 12;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 12 * v11;
  if (a4 != __src || &__src[v17 * 2] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v18 = (v5 + 24);
      if (*(v13 - 4) < *(v6 - 4))
      {
        v21 = v6 - 12;
        if (v18 != v6)
        {
          v22 = *v21;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v13 <= v4 || (v6 -= 12, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v19 = v13 - 12;
      if (v18 != v13)
      {
        v20 = *v19;
        *(v5 + 16) = *(v13 - 1);
        *v5 = v20;
      }

      v5 -= 24;
      v13 -= 12;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v23 = 12 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23 * 2);
  }

  return 1;
}

uint64_t sub_1C3F14CEC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C3F14D78(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t *sub_1C3F14D8C(uint64_t (*a1)(void *, __int16 *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_1C3F14F0C(v9, v7, a3, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = sub_1C3F15084(v11, v7, a3, v5);
  result = MEMORY[0x1C6934650](v11, -1, -1);
  if (!v3)
  {
    return v12;
  }

  return result;
}

unint64_t *sub_1C3F14F0C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __int16 *))
{
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 56);
    v16 = (*(a3 + 48) + 16 * v14);
    v17 = v16[1];
    v25[0] = *v16;
    v25[1] = v17;
    v26 = *(v15 + 2 * v14);

    v18 = a4(v25, &v26);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_1C3F15114(v21, a2, v22, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1C3F15114(v21, a2, v22, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1C3F15084(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __int16 *))
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

    v8 = sub_1C3F14F0C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1C3F15114(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F6D0, &qword_1C4039EA8);
  result = sub_1C4031A10();
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
  v31 = v4;
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
    v32 = *(v17 + 2 * v16);
    sub_1C4031C70();

    sub_1C4031280();
    result = sub_1C4031CC0();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + 2 * v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1C3F153C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F6D0, &qword_1C4039EA8);
    v3 = sub_1C4031A10();

    for (i = (a1 + 48); ; i += 12)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C3F3C710(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 2 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3F154C8()
{
  result = qword_1EC08F698;
  if (!qword_1EC08F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F698);
  }

  return result;
}

unint64_t sub_1C3F15520()
{
  result = qword_1EC08F6A0;
  if (!qword_1EC08F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F6A0);
  }

  return result;
}

unint64_t sub_1C3F15574()
{
  result = qword_1EC08F6A8;
  if (!qword_1EC08F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F6A8);
  }

  return result;
}

unint64_t sub_1C3F155C8(void *a1)
{
  a1[1] = sub_1C3F15600();
  a1[2] = sub_1C3F15654();
  result = sub_1C3F156A8();
  a1[3] = result;
  return result;
}

unint64_t sub_1C3F15600()
{
  result = qword_1EC08F6B0;
  if (!qword_1EC08F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F6B0);
  }

  return result;
}

unint64_t sub_1C3F15654()
{
  result = qword_1EC08F6B8;
  if (!qword_1EC08F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F6B8);
  }

  return result;
}

unint64_t sub_1C3F156A8()
{
  result = qword_1EC08F6C0;
  if (!qword_1EC08F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F6C0);
  }

  return result;
}

unint64_t sub_1C3F15700()
{
  result = qword_1EC08F6C8;
  if (!qword_1EC08F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F6C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScreenSharingType(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for ScreenSharingType(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

unint64_t sub_1C3F158EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1C4031A10();

    for (i = (a1 + 48); ; i += 24)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1C3F3C710(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3F15A44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1C4031A10();
    for (i = (a1 + 36); ; i += 8)
    {
      v7 = *(i - 1);
      v8 = *i;
      result = sub_1C3F3C890(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 4 * result) = v7;
      *(v5[7] + result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3F15C5C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1C4031A10();
    for (i = (a1 + 40); ; i += 16)
    {
      v9 = *(i - 1);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3F15D64(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1C4031A10();
    for (i = (a1 + 40); ; i += 16)
    {
      v9 = *(i - 1);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3F15E44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F320, &qword_1C4039F60);
    v3 = sub_1C4031A10();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 32);
      v9 = *(i - 3);
      v8 = *(i - 2);
      v11 = *(i - 1);
      v10 = *i;

      result = sub_1C3F3C710(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = v3[7] + 40 * result;
      *v15 = v7;
      *(v15 + 8) = v9;
      *(v15 + 16) = v8;
      *(v15 + 24) = v11;
      *(v15 + 32) = v10;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3F15F80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F318, &qword_1C4038790);
    v3 = sub_1C4031A10();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = sub_1C3F3C710(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v8;
      *(v13 + 8) = v7;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C3F160B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1C4031A10();

    for (i = (a1 + 48); ; i += 24)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1C3F3C710(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t ServiceProvider.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x80000001C4056D00 == a2;
  if (v5 || (v6 = a1, (sub_1C4031BF0() & 1) != 0))
  {
    v7 = 0;
LABEL_7:

    v6 = 0;
    goto LABEL_8;
  }

  if (v6 == 0xD000000000000012 && 0x80000001C4056D20 == a2 || (result = sub_1C4031BF0(), v7 = a2, (result & 1) != 0))
  {
    v7 = 1;
    goto LABEL_7;
  }

LABEL_8:
  *a3 = v6;
  a3[1] = v7;
  return result;
}

unint64_t ServiceProvider.serviceProviderString.getter()
{
  v1 = v0[1];
  v2 = 0xD000000000000013;
  if (v1)
  {
    v2 = *v0;
  }

  if (v1 == 1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = v2;
  }

  sub_1C3F16304(*v0, v1);
  return v3;
}

uint64_t sub_1C3F16304(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t ServiceProvider.description.getter()
{
  v1 = 0xD000000000000012;
  v2 = *v0;
  v3 = v0[1];
  sub_1C40318C0();

  v4 = 0x80000001C4056D00;
  if (v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v3)
  {
    v4 = v3;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001C4056D20;
  }

  else
  {
    v1 = v5;
    v6 = v4;
  }

  sub_1C3F16304(v2, v3);
  MEMORY[0x1C6932F70](v1, v6);

  MEMORY[0x1C6932F70](34, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_1C3F16400()
{
  v1 = *v0;
  sub_1C4031C70();
  MEMORY[0x1C6933940](v1);
  return sub_1C4031CC0();
}

uint64_t sub_1C3F16474(uint64_t a1)
{
  v2 = *v1;
  sub_1C4031C70();
  MEMORY[0x1C6933940](v2);
  return sub_1C4031CC0();
}

uint64_t sub_1C3F164B8()
{
  v1 = 0x656D695465636166;
  if (*v0 != 1)
  {
    v1 = 0x7261506472696874;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6870656C6574;
  }
}

uint64_t sub_1C3F1651C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C3F17C48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C3F16550(uint64_t a1)
{
  v2 = sub_1C3F175EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F1658C(uint64_t a1)
{
  v2 = sub_1C3F175EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F165D4(uint64_t a1)
{
  v2 = sub_1C3F17694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F16610(uint64_t a1)
{
  v2 = sub_1C3F17694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F1664C(uint64_t a1)
{
  v2 = sub_1C3F176E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F16688(uint64_t a1)
{
  v2 = sub_1C3F176E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3F166D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C4031BF0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C3F16750(uint64_t a1)
{
  v2 = sub_1C3F17640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F1678C(uint64_t a1)
{
  v2 = sub_1C3F17640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServiceProvider.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F788, &qword_1C4039F70);
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F790, &qword_1C4039F78);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v22 = &v19 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F798, &qword_1C4039F80);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F7A0, &qword_1C4039F88);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  v14 = v1[1];
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C3F175EC();
  sub_1C4031D10();
  if (!v14)
  {
    v28 = 0;
    sub_1C3F176E8();
    sub_1C4031B00();
    (*(v20 + 8))(v9, v21);
    return (*(v11 + 8))(v13, v10);
  }

  if (v14 == 1)
  {
    v29 = 1;
    sub_1C3F17694();
    v15 = v22;
    sub_1C4031B00();
    (*(v23 + 8))(v15, v24);
    return (*(v11 + 8))(v13, v10);
  }

  v30 = 2;
  sub_1C3F17640();
  v17 = v25;
  sub_1C4031B00();
  v18 = v27;
  sub_1C4031B30();
  (*(v26 + 8))(v17, v18);
  return (*(v11 + 8))(v13, v10);
}

uint64_t ServiceProvider.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 0;
    return MEMORY[0x1C6933940](v3);
  }

  if (v2 == 1)
  {
    v3 = 1;
    return MEMORY[0x1C6933940](v3);
  }

  MEMORY[0x1C6933940](2);

  return sub_1C4031280();
}

uint64_t ServiceProvider.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1C4031C70();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1C6933940](2);
      sub_1C4031280();
      return sub_1C4031CC0();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1C6933940](v2);
  return sub_1C4031CC0();
}

uint64_t ServiceProvider.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F7C8, &qword_1C4039F90);
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v44 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F7D0, &qword_1C4039F98);
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F7D8, &qword_1C4039FA0);
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F7E0, &qword_1C4039FA8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v15 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1C3F175EC();
  v16 = v45;
  sub_1C4031D00();
  if (!v16)
  {
    v37 = 0;
    v45 = v12;
    v17 = sub_1C4031AE0();
    v18 = *(v17 + 16);
    if (!v18 || ((v19 = *(v17 + 32), v18 == 1) ? (v20 = v19 == 3) : (v20 = 1), v20))
    {
      v21 = sub_1C4031900();
      swift_allocError();
      v22 = v11;
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F7E8, &qword_1C4039FB0);
      *v24 = &type metadata for ServiceProvider;
      sub_1C4031A50();
      sub_1C40318F0();
      (*(*(v21 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v45 + 8))(v14, v22);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v46);
    }

    if (!*(v17 + 32))
    {
      v47 = 0;
      sub_1C3F176E8();
      v26 = v14;
      v32 = v37;
      sub_1C4031A40();
      if (!v32)
      {
        (*(v38 + 8))(v10, v8);
        (*(v45 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v29 = 0;
        v30 = 0;
        v31 = v43;
        goto LABEL_22;
      }

      v28 = v45;
      goto LABEL_17;
    }

    if (v19 == 1)
    {
      v48 = 1;
      sub_1C3F17694();
      v26 = v14;
      v27 = v37;
      sub_1C4031A40();
      v28 = v45;
      if (!v27)
      {
        (*(v41 + 8))(v7, v40);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v29 = 0;
        v30 = 1;
        v31 = v43;
LABEL_22:
        *v31 = v29;
        v31[1] = v30;
        return __swift_destroy_boxed_opaque_existential_1(v46);
      }

LABEL_17:
      (*(v28 + 8))(v26, v11);
      goto LABEL_9;
    }

    v49 = 2;
    sub_1C3F17640();
    v33 = v37;
    sub_1C4031A40();
    v31 = v43;
    v34 = v45;
    if (!v33)
    {
      v41 = v11;
      v35 = v39;
      v29 = sub_1C4031A80();
      v30 = v36;
      (*(v42 + 8))(v44, v35);
      (*(v34 + 8))(v14, v41);
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    (*(v45 + 8))(v14, v11);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_1C3F172A8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 17;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3F172DC()
{
  v1 = *(v0 + 8);
  sub_1C4031C70();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1C6933940](2);
      sub_1C4031280();
      return sub_1C4031CC0();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1C6933940](v2);
  return sub_1C4031CC0();
}

uint64_t sub_1C3F1735C(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 0;
    return MEMORY[0x1C6933940](v3);
  }

  if (v2 == 1)
  {
    v3 = 1;
    return MEMORY[0x1C6933940](v3);
  }

  MEMORY[0x1C6933940](2);

  return sub_1C4031280();
}

uint64_t sub_1C3F173E4(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1C4031C70();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1C6933940](2);
      sub_1C4031280();
      return sub_1C4031CC0();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1C6933940](v3);
  return sub_1C4031CC0();
}

uint64_t _s11CallHistory15ServiceProviderO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_1C3F17D70(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_1C3F17D70(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = sub_1C4031BF0();
      sub_1C3F16304(v4, v5);
      sub_1C3F16304(v2, v3);
      sub_1C3F17D70(v2, v3);
      sub_1C3F17D70(v4, v5);
      return v11 & 1;
    }

    sub_1C3F16304(v9, v3);
    sub_1C3F16304(v2, v3);
    sub_1C3F17D70(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_1C3F16304(*a2, *(a2 + 8));
    sub_1C3F16304(v2, v3);
    sub_1C3F17D70(v2, v3);
    sub_1C3F17D70(v4, v5);
    return 0;
  }

  v6 = 1;
  sub_1C3F17D70(*a1, 1uLL);
  sub_1C3F17D70(v4, 1uLL);
  return v6;
}

unint64_t sub_1C3F175EC()
{
  result = qword_1EC08F7A8;
  if (!qword_1EC08F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F7A8);
  }

  return result;
}

unint64_t sub_1C3F17640()
{
  result = qword_1EC08F7B0;
  if (!qword_1EC08F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F7B0);
  }

  return result;
}

unint64_t sub_1C3F17694()
{
  result = qword_1EC08F7B8;
  if (!qword_1EC08F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F7B8);
  }

  return result;
}

unint64_t sub_1C3F176E8()
{
  result = qword_1EC08F7C0;
  if (!qword_1EC08F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F7C0);
  }

  return result;
}

unint64_t sub_1C3F17740()
{
  result = qword_1EC08F7F0;
  if (!qword_1EC08F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F7F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11CallHistory15ServiceProviderO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C3F177B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C3F1780C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1C3F17868(void *result, int a2)
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

unint64_t sub_1C3F178DC()
{
  result = qword_1EC08F7F8;
  if (!qword_1EC08F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F7F8);
  }

  return result;
}

unint64_t sub_1C3F17934()
{
  result = qword_1EC08F800;
  if (!qword_1EC08F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F800);
  }

  return result;
}

unint64_t sub_1C3F1798C()
{
  result = qword_1EC08F808;
  if (!qword_1EC08F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F808);
  }

  return result;
}

unint64_t sub_1C3F179E4()
{
  result = qword_1EC08F810;
  if (!qword_1EC08F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F810);
  }

  return result;
}

unint64_t sub_1C3F17A3C()
{
  result = qword_1EC08F818;
  if (!qword_1EC08F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F818);
  }

  return result;
}

unint64_t sub_1C3F17A94()
{
  result = qword_1EC08F820;
  if (!qword_1EC08F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F820);
  }

  return result;
}

unint64_t sub_1C3F17AEC()
{
  result = qword_1EC08F828;
  if (!qword_1EC08F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F828);
  }

  return result;
}

unint64_t sub_1C3F17B44()
{
  result = qword_1EC08F830;
  if (!qword_1EC08F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F830);
  }

  return result;
}

unint64_t sub_1C3F17B9C()
{
  result = qword_1EC08F838;
  if (!qword_1EC08F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F838);
  }

  return result;
}

unint64_t sub_1C3F17BF4()
{
  result = qword_1EC08F840;
  if (!qword_1EC08F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F840);
  }

  return result;
}

uint64_t sub_1C3F17C48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6870656C6574 && a2 == 0xE900000000000079;
  if (v4 || (sub_1C4031BF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D695465636166 && a2 == 0xE800000000000000 || (sub_1C4031BF0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261506472696874 && a2 == 0xEA00000000007974)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C4031BF0();

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

uint64_t sub_1C3F17D70(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1C3F17D88(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1C3EF04D8(0, v1, 0);
  v2 = v28;
  v3 = a1 + 64;
  result = sub_1C4031770();
  v5 = v25;
  v6 = a1;
  v7 = 0;
  v8 = *(a1 + 36);
  v27 = v8;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v6 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_23;
    }

    v12 = *(*(v6 + 48) + 8 * result);
    v13 = *(*(v6 + 56) + result);
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = result;
      sub_1C3EF04D8((v14 > 1), v15 + 1, 1);
      v6 = a1;
      v8 = v27;
      v5 = v25;
      result = v24;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = v12;
    v9 = 1 << *(v6 + 32);
    if (result >= v9)
    {
      goto LABEL_24;
    }

    v17 = *(v3 + 8 * v10);
    if ((v17 & v11) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1C3E97CDC(result, v27, 0);
          v6 = a1;
          v8 = v27;
          v5 = v25;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v27, 0);
      v6 = a1;
      v8 = v27;
      v5 = v25;
    }

LABEL_4:
    ++v7;
    result = v9;
    if (v7 == v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1C3F17FE0()
{
  result = sub_1C3F15B6C(&unk_1F4387670);
  qword_1EC0B0C98 = result;
  return result;
}

CallHistory::TTYType_optional __swiftcall TTYType.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 3u)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F180F0()
{
  result = qword_1EC08F848;
  if (!qword_1EC08F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F848);
  }

  return result;
}

unint64_t sub_1C3F18148()
{
  result = qword_1EC08F850;
  if (!qword_1EC08F850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F858, &qword_1C403A5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F850);
  }

  return result;
}

void sub_1C3F181CC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  if (v5 == 3)
  {
    goto LABEL_3;
  }

  LOBYTE(v7) = a2;
  v8 = *(a1 + 40);
  v9 = *a3;
  v10 = sub_1C3F41298();
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F019A0(v15, v7 & 1);
    v10 = sub_1C3F41298();
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v7)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v21 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v21[6] + v10) = v5;
    *(v21[7] + 8 * v10) = v8;
    v22 = v21[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v14)
    {
      v21[2] = v23;
      if (v4 == 1)
      {
LABEL_3:

        return;
      }

      v8 = (a1 + 56);
      v24 = 1;
      while (v24 < *(a1 + 16))
      {
        v5 = *(v8 - 8);
        if (v5 == 3)
        {
          goto LABEL_3;
        }

        v7 = *v8;
        v25 = *a3;
        v26 = sub_1C3F41298();
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v14 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v27;
        if (v25[3] < v30)
        {
          sub_1C3F019A0(v30, 1);
          v26 = sub_1C3F41298();
          if ((v16 & 1) != (v31 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v32 = *a3;
        *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        *(v32[6] + v26) = v5;
        *(v32[7] + 8 * v26) = v7;
        v33 = v32[2];
        v14 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v24;
        v32[2] = v34;
        v8 += 2;
        if (v4 == v24)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v10;
  sub_1C3F02B60();
  v10 = v20;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v18 = swift_allocError();
  swift_willThrow();

  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_28:
  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
  sub_1C40319C0();
  MEMORY[0x1C6932F70](39, 0xE100000000000000);
  sub_1C40319D0();
  __break(1u);
}

uint64_t sub_1C3F18524()
{
  if (qword_1EC08EB48 != -1)
  {
    swift_once();
  }

  v0 = sub_1C3F17D88(qword_1EC0B0C98);
  if (*(v0 + 16))
  {
    v1 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2F0, &qword_1C4038768);
    v2 = sub_1C4031A10();
    v0 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v8 = v2;
  sub_1C3F181CC(v0, 1, &v8);
  v3 = v8;
  if (*(v8 + 16) && (v4 = sub_1C3F41298(), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1C3F18644(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1C3EF0508(0, v1, 0);
  v2 = v28;
  v3 = a1 + 64;
  result = sub_1C4031770();
  v5 = v25;
  v6 = a1;
  v7 = 0;
  v8 = *(a1 + 36);
  v27 = v8;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v6 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_23;
    }

    v12 = *(*(v6 + 48) + 8 * result);
    v13 = *(*(v6 + 56) + result);
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = result;
      sub_1C3EF0508((v14 > 1), v15 + 1, 1);
      v6 = a1;
      v8 = v27;
      v5 = v25;
      result = v24;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = v12;
    v9 = 1 << *(v6 + 32);
    if (result >= v9)
    {
      goto LABEL_24;
    }

    v17 = *(v3 + 8 * v10);
    if ((v17 & v11) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(v6 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1C3E97CDC(result, v27, 0);
          v6 = a1;
          v8 = v27;
          v5 = v25;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_1C3E97CDC(result, v27, 0);
      v6 = a1;
      v8 = v27;
      v5 = v25;
    }

LABEL_4:
    ++v7;
    result = v9;
    if (v7 == v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1C3F1889C()
{
  result = sub_1C3F15B94(&unk_1F43876C0);
  qword_1EC0B0CA0 = result;
  return result;
}

CallHistory::VerificationStatus_optional __swiftcall VerificationStatus.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 5u)
  {
    v2 = 5;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C3F189AC()
{
  result = qword_1EC08F860;
  if (!qword_1EC08F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F860);
  }

  return result;
}

unint64_t sub_1C3F18A04()
{
  result = qword_1EC08F868;
  if (!qword_1EC08F868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F870, &qword_1C403A710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F868);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VerificationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VerificationStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C3F18BC8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  if (v5 == 5)
  {
    goto LABEL_3;
  }

  LOBYTE(v7) = a2;
  v8 = *(a1 + 40);
  v9 = *a3;
  v10 = sub_1C3F41298();
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1C3F019B4(v15, v7 & 1);
    v10 = sub_1C3F41298();
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_1C4031C30();
    __break(1u);
  }

  if (v7)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v21 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v21[6] + v10) = v5;
    *(v21[7] + 8 * v10) = v8;
    v22 = v21[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v14)
    {
      v21[2] = v23;
      if (v4 == 1)
      {
LABEL_3:

        return;
      }

      v8 = (a1 + 56);
      v24 = 1;
      while (v24 < *(a1 + 16))
      {
        v5 = *(v8 - 8);
        if (v5 == 5)
        {
          goto LABEL_3;
        }

        v7 = *v8;
        v25 = *a3;
        v26 = sub_1C3F41298();
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v14 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v27;
        if (v25[3] < v30)
        {
          sub_1C3F019B4(v30, 1);
          v26 = sub_1C3F41298();
          if ((v16 & 1) != (v31 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v32 = *a3;
        *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        *(v32[6] + v26) = v5;
        *(v32[7] + 8 * v26) = v7;
        v33 = v32[2];
        v14 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v24;
        v32[2] = v34;
        v8 += 2;
        if (v4 == v24)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v10;
  sub_1C3F02B74();
  v10 = v20;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v18 = swift_allocError();
  swift_willThrow();

  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F148, &unk_1C4038470);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_28:
  sub_1C40318C0();
  MEMORY[0x1C6932F70](0xD00000000000001BLL, 0x80000001C4056C90);
  sub_1C40319C0();
  MEMORY[0x1C6932F70](39, 0xE100000000000000);
  sub_1C40319D0();
  __break(1u);
}

uint64_t sub_1C3F18F20()
{
  if (qword_1EC08EB50 != -1)
  {
    swift_once();
  }

  v0 = sub_1C3F18644(qword_1EC0B0CA0);
  if (*(v0 + 16))
  {
    v1 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2E8, &qword_1C4038760);
    v2 = sub_1C4031A10();
    v0 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v8 = v2;
  sub_1C3F18BC8(v0, 1, &v8);
  v3 = v8;
  if (*(v8 + 16) && (v4 = sub_1C3F41298(), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 3;
  }

  return v6;
}

void CallFetchRequest.init(predicate:originatingBundleID:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  sub_1C40309E0();
  v8 = type metadata accessor for CallFetchRequest(0);
  *(a4 + *(v8 + 20)) = v7;
  if (!a3)
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E698E740]) init];
    v10 = [v9 bundleIdentifier];

    if (v10)
    {
      a2 = sub_1C40311C0();
      a3 = v11;
    }

    else
    {
      a2 = 0;
      a3 = 0;
    }
  }

  v12 = (a4 + *(v8 + 24));
  *v12 = a2;
  v12[1] = a3;
}

uint64_t type metadata accessor for CallFetchRequest(uint64_t a1)
{
  result = qword_1EC08F8A0;
  if (!qword_1EC08F8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t CallFetchRequest.predicate.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for CallFetchRequest(0) + 20));
  *a1 = v3;

  return sub_1C3EE61B4(v3);
}

uint64_t CallFetchRequest.originatingBundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for CallFetchRequest(0) + 24));

  return v1;
}

uint64_t CallFetchRequest.description.getter()
{
  sub_1C40318C0();

  sub_1C40309F0();
  sub_1C3F1A028(&qword_1EC08F230, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v0 = sub_1C4031BB0();
  MEMORY[0x1C6932F70](v0);

  MEMORY[0x1C6932F70](0x636964657270202CLL, 0xED0000203A657461);
  type metadata accessor for CallFetchRequest(0);
  v1 = CallPredicate.description.getter();
  MEMORY[0x1C6932F70](v1);

  MEMORY[0x1C6932F70](0xD000000000000017, 0x80000001C4056E20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F878, &qword_1C403A790);
  v2 = sub_1C4031210();
  MEMORY[0x1C6932F70](v2);

  return 540697705;
}

unint64_t sub_1C3F1935C()
{
  v1 = 0x7461636964657270;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1C3F193B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C3F1A28C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C3F193DC(uint64_t a1)
{
  v2 = sub_1C3F19F28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3F19418(uint64_t a1)
{
  v2 = sub_1C3F19F28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CallFetchRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F880, &qword_1C403A798);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C3F19F28();
  sub_1C4031D10();
  v12 = 0;
  sub_1C40309F0();
  sub_1C3F1A028(&qword_1EC08F0B8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1C4031B70();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for CallFetchRequest(0) + 20));
    v10[15] = 1;
    sub_1C3EE61B4(v11);
    sub_1C3EE979C();
    sub_1C4031B70();
    sub_1C3EE6238(v11);
    v10[14] = 2;
    sub_1C4031B10();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CallFetchRequest.hash(into:)(uint64_t a1)
{
  sub_1C40309F0();
  sub_1C3F1A028(&qword_1EC08F290, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C4031140();
  v3 = type metadata accessor for CallFetchRequest(0);
  CallPredicate.hash(into:)(a1);
  if (!*(v1 + *(v3 + 24) + 8))
  {
    return sub_1C4031C90();
  }

  sub_1C4031C90();

  return sub_1C4031280();
}

uint64_t CallFetchRequest.hashValue.getter()
{
  sub_1C4031C70();
  sub_1C40309F0();
  sub_1C3F1A028(&qword_1EC08F290, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C4031140();
  v1 = type metadata accessor for CallFetchRequest(0);
  CallPredicate.hash(into:)(v3);
  if (*(v0 + *(v1 + 24) + 8))
  {
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  return sub_1C4031CC0();
}

uint64_t CallFetchRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1C40309F0();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F890, &qword_1C403A7A0);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v21 - v6;
  v8 = type metadata accessor for CallFetchRequest(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C3F19F28();
  sub_1C4031D00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v24;
  v11 = v25;
  v21 = v8;
  v22 = v10;
  v31 = 0;
  sub_1C3F1A028(&qword_1EC08F0B0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v14 = v26;
  v13 = v27;
  sub_1C4031AC0();
  (*(v11 + 32))(v22, v14, v4);
  v30 = 1;
  sub_1C3EE9748();
  sub_1C4031AC0();
  *&v22[*(v21 + 20)] = v28;
  v29 = 2;
  v15 = sub_1C4031A60();
  v17 = v16;
  (*(v12 + 8))(v7, v13);
  v18 = v22;
  v19 = &v22[*(v21 + 24)];
  *v19 = v15;
  v19[1] = v17;
  sub_1C3F19F7C(v18, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1C3EED32C(v18);
}

uint64_t sub_1C3F19C5C(uint64_t a1, uint64_t a2)
{
  sub_1C40309F0();
  sub_1C3F1A028(&qword_1EC08F290, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C4031140();
  CallPredicate.hash(into:)(a1);
  if (!*(v2 + *(a2 + 24) + 8))
  {
    return sub_1C4031C90();
  }

  sub_1C4031C90();

  return sub_1C4031280();
}

uint64_t sub_1C3F19D64(uint64_t a1, uint64_t a2)
{
  sub_1C4031C70();
  sub_1C40309F0();
  sub_1C3F1A028(&qword_1EC08F290, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C4031140();
  CallPredicate.hash(into:)(v5);
  if (*(v2 + *(a2 + 24) + 8))
  {
    sub_1C4031C90();
    sub_1C4031280();
  }

  else
  {
    sub_1C4031C90();
  }

  return sub_1C4031CC0();
}

uint64_t _s11CallHistory0A12FetchRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1C40309C0())
  {
    v4 = type metadata accessor for CallFetchRequest(0);
    v5 = *(v4 + 20);
    v6 = *(a1 + v5);
    v15 = *(a2 + v5);
    v16 = v6;
    sub_1C3EE61B4(v6);
    sub_1C3EE61B4(v15);
    v7 = static CallPredicate.== infix(_:_:)(&v16, &v15);
    sub_1C3EE6238(v15);
    sub_1C3EE6238(v16);
    if (v7)
    {
      v8 = *(v4 + 24);
      v9 = (a1 + v8);
      v10 = *(a1 + v8 + 8);
      v11 = (a2 + v8);
      v12 = v11[1];
      if (v10)
      {
        if (v12)
        {
          v13 = *v9 == *v11 && v10 == v12;
          if (v13 || (sub_1C4031BF0() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v12)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1C3F19F28()
{
  result = qword_1EC08F888;
  if (!qword_1EC08F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F888);
  }

  return result;
}

uint64_t sub_1C3F19F7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallFetchRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3F1A028(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C3F1A098(uint64_t a1)
{
  sub_1C40309F0();
  if (v1 <= 0x3F)
  {
    sub_1C3F1A124();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C3F1A124()
{
  if (!qword_1EC08F8B0)
  {
    v0 = sub_1C40316A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC08F8B0);
    }
  }
}

unint64_t sub_1C3F1A188()
{
  result = qword_1EC08F8B8;
  if (!qword_1EC08F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F8B8);
  }

  return result;
}

unint64_t sub_1C3F1A1E0()
{
  result = qword_1EC08F8C0;
  if (!qword_1EC08F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F8C0);
  }

  return result;
}

unint64_t sub_1C3F1A238()
{
  result = qword_1EC08F8C8;
  if (!qword_1EC08F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC08F8C8);
  }

  return result;
}

uint64_t sub_1C3F1A28C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C4031BF0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065 || (sub_1C4031BF0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C4056E40 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C4031BF0();

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

unint64_t sub_1C3F1A3AC@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F000, &qword_1C40381F0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v63 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v63 - v10;
  v12 = sub_1C4030980();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v63 - v18;
  v20 = *v1;
  switch(*v1 >> 60)
  {
    case 1uLL:
    case 2uLL:
    case 6uLL:
    case 7uLL:
    case 9uLL:
    case 0xAuLL:
      v51 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1EEE9AC00](v17);
      *(&v63 - 2) = v51;

      *&v67[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      goto LABEL_22;
    case 3uLL:
      v33 = v17;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F8D8, &qword_1C403A9F0);
      v35 = swift_projectBox();
      v36 = *(v34 + 48);
      v37 = *(v13 + 16);
      v37(v19, v35, v33);
      v38 = (v37)(v16, v35 + v36, v33);
      MEMORY[0x1EEE9AC00](v38);
      *(&v63 - 2) = v19;
      *(&v63 - 1) = v16;
      *&v67[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      sub_1C4030A80();
      v39 = *(v13 + 8);
      v39(v16, v33);
      return (v39)(v19, v33);
    case 4uLL:
    case 5uLL:
      v40 = v17;
      v41 = swift_projectBox();
      v42 = (*(v13 + 16))(v19, v41, v40);
      MEMORY[0x1EEE9AC00](v42);
      *(&v63 - 2) = v19;
      *&v67[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      sub_1C4030A80();
      return (*(v13 + 8))(v19, v40);
    case 8uLL:
      v52 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v53 = *(v52 + 16);
      v54 = MEMORY[0x1E69E7CC0];
      if (v53)
      {
        v66 = MEMORY[0x1E69E7CC0];

        v55 = sub_1C3EF01EC(0, v53, 0);
        v54 = v66;
        v64 = v3 + 32;
        v56 = v53 - 1;
        for (i = 32; ; i += 40)
        {
          v58 = v52;
          v59 = *(v52 + i);
          v60 = *(v52 + i + 16);
          v68 = *(v52 + i + 32);
          v67[0] = v59;
          v67[1] = v60;
          MEMORY[0x1EEE9AC00](v55);
          *(&v63 - 2) = v67;
          sub_1C3F2AF14(v67, v65);
          v65[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
          sub_1C4030A80();
          sub_1C3F2AF70(v67);
          v66 = v54;
          v62 = *(v54 + 16);
          v61 = *(v54 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_1C3EF01EC((v61 > 1), v62 + 1, 1);
            v54 = v66;
          }

          *(v54 + 16) = v62 + 1;
          v55 = (*(v3 + 32))(v54 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v62, v11, v2);
          if (!v56)
          {
            break;
          }

          --v56;
          v52 = v58;
        }
      }

      MEMORY[0x1EEE9AC00](v17);
      *(&v63 - 4) = v54;
      *(&v63 - 3) = sub_1C3F28CF8;
      *(&v63 - 2) = 0;
      v65[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      sub_1C4030A80();
      goto LABEL_36;
    case 0xBuLL:
      MEMORY[0x1EEE9AC00](v17);
      *(&v63 - 16) = v30;
      *&v67[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      return sub_1C4030A80();
    case 0xCuLL:
      v32 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1EEE9AC00](v17);
      *(&v63 - 2) = v32;
      sub_1C3EE61B4(v32);
      *&v67[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      sub_1C4030A80();
      return sub_1C3EE6238(v32);
    case 0xDuLL:
      v43 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v44 = *(v43 + 16);
      v45 = MEMORY[0x1E69E7CC0];
      if (v44)
      {
        v64 = v2;
        *&v67[0] = MEMORY[0x1E69E7CC0];

        sub_1C3EF01EC(0, v44, 0);
        v45 = *&v67[0];
        v46 = v44 - 1;
        for (j = 32; ; j += 8)
        {
          v48 = v43;
          v65[0] = *(v43 + j);
          sub_1C3F1A3AC(v9);
          *&v67[0] = v45;
          v50 = *(v45 + 16);
          v49 = *(v45 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_1C3EF01EC((v49 > 1), v50 + 1, 1);
            v45 = *&v67[0];
          }

          *(v45 + 16) = v50 + 1;
          (*(v3 + 32))(v45 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v50, v9, v64);
          if (!v46)
          {
            break;
          }

          --v46;
          v43 = v48;
        }
      }

      MEMORY[0x1EEE9AC00](v17);
      *(&v63 - 4) = v45;
      *(&v63 - 3) = sub_1C3F28AD0;
      *(&v63 - 2) = 0;
      *&v67[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      goto LABEL_33;
    case 0xEuLL:
      v22 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *(v22 + 16);
      v24 = MEMORY[0x1E69E7CC0];
      if (v23)
      {
        v64 = v2;
        *&v67[0] = MEMORY[0x1E69E7CC0];

        sub_1C3EF01EC(0, v23, 0);
        v24 = *&v67[0];
        v25 = v23 - 1;
        for (k = 32; ; k += 8)
        {
          v27 = v22;
          v65[0] = *(v22 + k);
          sub_1C3F1A3AC(v6);
          *&v67[0] = v24;
          v29 = *(v24 + 16);
          v28 = *(v24 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_1C3EF01EC((v28 > 1), v29 + 1, 1);
            v24 = *&v67[0];
          }

          *(v24 + 16) = v29 + 1;
          (*(v3 + 32))(v24 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v29, v6, v64);
          if (!v25)
          {
            break;
          }

          --v25;
          v22 = v27;
        }
      }

      MEMORY[0x1EEE9AC00](v17);
      *(&v63 - 4) = v24;
      *(&v63 - 3) = sub_1C3F28CF8;
      *(&v63 - 2) = 0;
      *&v67[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
LABEL_33:
      sub_1C4030A80();
LABEL_36:

      break;
    case 0xFuLL:
      *&v67[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
      if (v20 == 0xF000000000000000)
      {
        result = sub_1C4030A40();
      }

      else
      {
        result = sub_1C4030A50();
      }

      break;
    default:
      v21 = *(v20 + 16);
      MEMORY[0x1EEE9AC00](v17);
      *(&v63 - 2) = v21;

      *&v67[0] = type metadata accessor for CallHistorySchemaV39.ManagedRecentCall(0);
LABEL_22:
      sub_1C4030A80();

      break;
  }

  return result;
}

id sub_1C3F1AFD8()
{
  v1 = sub_1C4030980();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v210 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v210 - v6;
  *&v216 = sub_1C40309F0();
  v8 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v10 = &v210 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  switch(*v0 >> 60)
  {
    case 1uLL:
      v97 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
      v98 = swift_allocObject();
      v14 = v98;
      *(v98 + 16) = xmmword_1C4038040;
      *(v98 + 56) = MEMORY[0x1E69E6158];
      *(v98 + 32) = 0xD000000000000014;
      *(v98 + 40) = 0x80000001C4056FB0;
      v99 = v97[2];
      v16 = MEMORY[0x1E69E7CC0];
      if (!v99)
      {
        goto LABEL_110;
      }

      v212 = v98;
      v218 = MEMORY[0x1E69E7CC0];

      sub_1C3EF0270(0, v99, 0);
      v16 = v218;
      v101 = *(v8 + 16);
      v100 = v8 + 16;
      v102 = *(v100 + 64);
      v211 = v97;
      v103 = v97 + ((v102 + 32) & ~v102);
      v213 = *(v100 + 56);
      *&v214 = v101;
      v215 = v100;
      v104 = (v100 - 8);
      do
      {
        v105 = v216;
        (v214)(v10, v103, v216);
        v106 = sub_1C40309A0();
        v108 = v107;
        (*v104)(v10, v105);
        v218 = v16;
        v110 = *(v16 + 16);
        v109 = *(v16 + 24);
        if (v110 >= v109 >> 1)
        {
          sub_1C3EF0270((v109 > 1), v110 + 1, 1);
          v16 = v218;
        }

        *(v16 + 16) = v110 + 1;
        v111 = v16 + 16 * v110;
        *(v111 + 32) = v106;
        *(v111 + 40) = v108;
        v103 += v213;
        --v99;
      }

      while (v99);
      goto LABEL_38;
    case 2uLL:
      v56 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
      v57 = swift_allocObject();
      v14 = v57;
      *(v57 + 16) = xmmword_1C4038040;
      *(v57 + 56) = MEMORY[0x1E69E6158];
      strcpy((v57 + 32), "conversationID");
      *(v57 + 47) = -18;
      v58 = v56[2];
      v16 = MEMORY[0x1E69E7CC0];
      if (!v58)
      {
        goto LABEL_110;
      }

      v212 = v57;
      v218 = MEMORY[0x1E69E7CC0];

      sub_1C3EF0270(0, v58, 0);
      v16 = v218;
      v60 = *(v8 + 16);
      v59 = v8 + 16;
      v61 = *(v59 + 64);
      v211 = v56;
      v62 = v56 + ((v61 + 32) & ~v61);
      v213 = *(v59 + 56);
      *&v214 = v60;
      v215 = v59;
      v63 = (v59 - 8);
      do
      {
        v64 = v216;
        (v214)(v10, v62, v216);
        v65 = sub_1C40309A0();
        v67 = v66;
        (*v63)(v10, v64);
        v218 = v16;
        v69 = *(v16 + 16);
        v68 = *(v16 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_1C3EF0270((v68 > 1), v69 + 1, 1);
          v16 = v218;
        }

        *(v16 + 16) = v69 + 1;
        v70 = v16 + 16 * v69;
        *(v70 + 32) = v65;
        *(v70 + 40) = v67;
        v62 += v213;
        --v58;
      }

      while (v58);
      goto LABEL_38;
    case 3uLL:
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F8D8, &qword_1C403A9F0);
      v74 = swift_projectBox();
      v75 = *(v73 + 48);
      v76 = v2[2];
      (v76)(v7, v74, v1);
      (v76)(v5, v74 + v75, v1);
      v215 = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_1C4038660;
      *&v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
      v78 = swift_allocObject();
      v214 = xmmword_1C40385D0;
      *(v78 + 16) = xmmword_1C40385D0;
      *(v78 + 56) = v1;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v78 + 32));
      (v76)(boxed_opaque_existential_1, v7, v1);
      v80 = sub_1C4031190();
      v81 = sub_1C40313E0();

      v82 = objc_opt_self();
      v83 = [v82 predicateWithFormat:v80 argumentArray:v81];

      *(v77 + 32) = v83;
      v84 = swift_allocObject();
      *(v84 + 16) = v214;
      *(v84 + 56) = v1;
      v85 = __swift_allocate_boxed_opaque_existential_1((v84 + 32));
      (v215)(v85, v5, v1);
      v86 = sub_1C4031190();
      v87 = sub_1C40313E0();

      v88 = [v82 predicateWithFormat:v86 argumentArray:v87];

      *(v77 + 40) = v88;
      sub_1C3F2AE94();
      v89 = sub_1C40313E0();

      v41 = [objc_opt_self() andPredicateWithSubpredicates_];

      v90 = v2[1];
      v90(v5, v1);
      v90(v7, v1);
      return v41;
    case 4uLL:
    case 5uLL:
      v112 = swift_projectBox();
      v113 = v2[2];
      v113(v7, v112, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
      v114 = swift_allocObject();
      *(v114 + 16) = xmmword_1C40385D0;
      *(v114 + 56) = v1;
      v115 = __swift_allocate_boxed_opaque_existential_1((v114 + 32));
      v113(v115, v7, v1);
      v116 = sub_1C4031190();
      v117 = sub_1C40313E0();

      v118 = [objc_opt_self() predicateWithFormat:v116 argumentArray:v117];

      (v2[1])(v7, v1);
      return v118;
    case 6uLL:
      v122 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v123 = MEMORY[0x1E69E7CD0];
      v218 = MEMORY[0x1E69E7CD0];
      v124 = *(v122 + 16);
      if (v124)
      {

        v125 = 32;
        do
        {
          if (*(v122 + v125))
          {
            if (*(v122 + v125) == 1)
            {
              v126 = 1;
            }

            else
            {
              v126 = 2;
            }

            sub_1C4025E80(&v221, v126);
          }

          ++v125;
          --v124;
        }

        while (v124);

        v123 = v218;
      }

      v172 = *(v123 + 16);
      if (!v172)
      {
        goto LABEL_141;
      }

      v221 = MEMORY[0x1E69E7CC0];
      sub_1C4031950();
      v173 = v123 + 56;
      v152 = sub_1C4031770();
      LODWORD(v212) = *(v123 + 36);
      v174 = objc_opt_self();
      v154 = 0;
      v215 = "ipantHandles.value IN %@";
      *&v216 = v174;
      v175 = *(v123 + 32);
      v210 = v123 + 64;
      v214 = xmmword_1C4038040;
      v213 = 0xD000000000000019;
      v211 = v172;
      while (2)
      {
        if (v152 < 0 || v152 >= 1 << v175)
        {
          goto LABEL_151;
        }

        v178 = v152 >> 6;
        if ((*(v173 + 8 * (v152 >> 6)) & (1 << v152)) == 0)
        {
          goto LABEL_153;
        }

        v179 = *(*(v123 + 48) + 4 * v152);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
        v180 = swift_allocObject();
        *(v180 + 16) = v214;
        v181 = MEMORY[0x1E69E7668];
        *(v180 + 56) = MEMORY[0x1E69E7668];
        *(v180 + 32) = v179;
        *(v180 + 88) = v181;
        *(v180 + 64) = v179;
        v2 = sub_1C4031190();
        v182 = sub_1C40313E0();

        v183 = [v216 predicateWithFormat:v2 argumentArray:v182];

        sub_1C4031920();
        sub_1C4031960();
        sub_1C4031970();
        sub_1C4031930();
        v175 = *(v123 + 32);
        v176 = 1 << v175;
        if (v152 >= 1 << v175)
        {
          goto LABEL_155;
        }

        v184 = *(v173 + 8 * v178);
        if ((v184 & (1 << v152)) == 0)
        {
          goto LABEL_157;
        }

        if (v212 == *(v123 + 36))
        {
          v185 = v184 & (-2 << (v152 & 0x3F));
          if (v185)
          {
            v176 = __clz(__rbit64(v185)) | v152 & 0x7FFFFFFFFFFFFFC0;
            v177 = v211;
          }

          else
          {
            v186 = v178 << 6;
            v187 = v178 + 1;
            v177 = v211;
            v188 = (v210 + 8 * v178);
            while (v187 < (v176 + 63) >> 6)
            {
              v190 = *v188++;
              v189 = v190;
              v186 += 64;
              ++v187;
              if (v190)
              {
                v176 = __clz(__rbit64(v189)) + v186;
                break;
              }
            }
          }

          ++v154;
          v152 = v176;
          if (v154 == v177)
          {
            goto LABEL_141;
          }

          continue;
        }

        goto LABEL_159;
      }

    case 7uLL:
      v92 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v93 = MEMORY[0x1E69E7CD0];
      v218 = MEMORY[0x1E69E7CD0];
      v94 = *(v92 + 16);
      if (v94)
      {

        v95 = 32;
        do
        {
          if (*(v92 + v95))
          {
            if (*(v92 + v95) == 1)
            {
              v96 = 4;
            }

            else
            {
              v96 = 8;
            }

            sub_1C4025E80(&v221, v96);
          }

          ++v95;
          --v94;
        }

        while (v94);

        v93 = v218;
      }

      v150 = *(v93 + 16);
      if (!v150)
      {
        goto LABEL_141;
      }

      v221 = MEMORY[0x1E69E7CC0];
      sub_1C4031950();
      v151 = v93 + 56;
      v152 = sub_1C4031770();
      LODWORD(v212) = *(v93 + 36);
      v153 = objc_opt_self();
      v154 = 0;
      v215 = "ipantHandles.value IN %@";
      *&v216 = v153;
      v155 = *(v93 + 32);
      v210 = v93 + 64;
      v214 = xmmword_1C4038040;
      v213 = 0xD000000000000019;
      v211 = v150;
      while (2)
      {
        if (v152 < 0 || v152 >= 1 << v155)
        {
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        v158 = v152 >> 6;
        if ((*(v151 + 8 * (v152 >> 6)) & (1 << v152)) == 0)
        {
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        v159 = *(*(v93 + 48) + 4 * v152);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
        v160 = swift_allocObject();
        *(v160 + 16) = v214;
        v161 = MEMORY[0x1E69E7668];
        *(v160 + 56) = MEMORY[0x1E69E7668];
        *(v160 + 32) = v159;
        *(v160 + 88) = v161;
        *(v160 + 64) = v159;
        v2 = sub_1C4031190();
        v162 = sub_1C40313E0();

        v163 = [v216 predicateWithFormat:v2 argumentArray:v162];

        sub_1C4031920();
        sub_1C4031960();
        sub_1C4031970();
        sub_1C4031930();
        v155 = *(v93 + 32);
        v156 = 1 << v155;
        if (v152 >= 1 << v155)
        {
          goto LABEL_154;
        }

        v164 = *(v151 + 8 * v158);
        if ((v164 & (1 << v152)) == 0)
        {
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
          break;
        }

        if (v212 == *(v93 + 36))
        {
          v165 = v164 & (-2 << (v152 & 0x3F));
          if (v165)
          {
            v156 = __clz(__rbit64(v165)) | v152 & 0x7FFFFFFFFFFFFFC0;
            v157 = v211;
          }

          else
          {
            v166 = v158 << 6;
            v167 = v158 + 1;
            v157 = v211;
            v168 = (v210 + 8 * v158);
            while (v167 < (v156 + 63) >> 6)
            {
              v170 = *v168++;
              v169 = v170;
              v166 += 64;
              ++v167;
              if (v170)
              {
                v156 = __clz(__rbit64(v169)) + v166;
                break;
              }
            }
          }

          ++v154;
          v152 = v156;
          if (v154 == v157)
          {
LABEL_141:

            sub_1C3F2AE94();
            v200 = sub_1C40313E0();

            v201 = [objc_opt_self() orPredicateWithSubpredicates_];

            return v201;
          }

          continue;
        }

        break;
      }

      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      sub_1C4031400();
LABEL_132:
      sub_1C4031430();
      v217 = v2;
      v195 = v219;
      if (*(v219 + 16))
      {
        v196 = swift_allocObject();
        *(v196 + 16) = v216;
        *(v196 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD10, &qword_1C403C1E8);
        *(v196 + 32) = v195;
        v197 = sub_1C4031190();
        v198 = sub_1C40313E0();

        v199 = [v154 *(v152 + 1800)];

        MEMORY[0x1C6933090]();
        if (*((v217 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v217 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C4031400();
        }

        sub_1C4031430();
      }

      else
      {
      }

      v202 = swift_allocObject();
      *(v202 + 16) = v216;
      v203 = v220;
      *(v202 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD10, &qword_1C403C1E8);
      *(v202 + 32) = v203;
      v204 = sub_1C4031190();
      v205 = sub_1C40313E0();

      v206 = [v154 *(v152 + 1800)];

      MEMORY[0x1C6933090]();
      if (*((v217 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v217 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C4031400();
      }

      sub_1C4031430();
      sub_1C3F2AE94();
      v207 = sub_1C40313E0();

      v208 = objc_opt_self();
      v209 = [v208 orPredicateWithSubpredicates_];

      MEMORY[0x1C6933090]();
      if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C4031400();
      }

      sub_1C4031430();
      v32 = sub_1C40313E0();

      v33 = [v208 andPredicateWithSubpredicates_];
LABEL_148:
      v118 = v33;

      return v118;
    case 8uLL:
      v141 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v142 = MEMORY[0x1E69E7CD0];
      v220 = MEMORY[0x1E69E7CD0];
      v221 = MEMORY[0x1E69E7CD0];
      v219 = MEMORY[0x1E69E7CD0];
      v143 = *(v141 + 16);
      if (v143)
      {

        v144 = (v141 + 64);
        do
        {
          v145 = *(v144 - 32);
          v147 = *(v144 - 3);
          v146 = *(v144 - 2);
          v149 = *(v144 - 1);
          v148 = *v144;

          sub_1C4025D98(&v218, v145);

          sub_1C4025C48(&v218, v147, v146);

          if (v148)
          {
            sub_1C4025C48(&v218, v149, v148);
          }

          v144 += 5;
          --v143;
        }

        while (v143);

        v142 = v221;
      }

      v2 = MEMORY[0x1E69E7CC0];
      v218 = MEMORY[0x1E69E7CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
      v191 = swift_allocObject();
      v216 = xmmword_1C40385D0;
      *(v191 + 16) = xmmword_1C40385D0;
      *(v191 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD08, &qword_1C403C1E0);
      *(v191 + 32) = v142;
      v192 = sub_1C4031190();
      v193 = sub_1C40313E0();

      v154 = objc_opt_self();
      v152 = CHAppProtectionReadEntitlement;
      v194 = [v154 predicateWithFormat:v192 argumentArray:v193];

      MEMORY[0x1C6933090]();
      if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_132;
      }

      goto LABEL_160;
    case 9uLL:
      v42 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
      v43 = swift_allocObject();
      v44 = v43;
      *(v43 + 16) = xmmword_1C40385D0;
      v45 = *(v42 + 16);
      v46 = MEMORY[0x1E69E7CC0];
      if (v45)
      {
        v215 = v43;
        v218 = MEMORY[0x1E69E7CC0];

        sub_1C3EF0270(0, v45, 0);
        v46 = v218;
        *&v216 = 0x80000001C4056D20;
        *&v214 = v42;
        v47 = (v42 + 40);
        do
        {
          v48 = *v47;
          if (*v47)
          {
            v49 = *(v47 - 1);
          }

          else
          {
            v49 = 0xD000000000000013;
          }

          if (*v47)
          {
            v50 = *v47;
          }

          else
          {
            v50 = 0x80000001C4056D00;
          }

          if (v48 == 1)
          {
            v51 = 0xD000000000000012;
          }

          else
          {
            v51 = v49;
          }

          if (v48 == 1)
          {
            v52 = v216;
          }

          else
          {
            v52 = v50;
          }

          sub_1C3F16304(*(v47 - 1), v48);
          v218 = v46;
          v54 = *(v46 + 16);
          v53 = *(v46 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_1C3EF0270((v53 > 1), v54 + 1, 1);
            v46 = v218;
          }

          v47 += 2;
          *(v46 + 16) = v54 + 1;
          v55 = v46 + 16 * v54;
          *(v55 + 32) = v51;
          *(v55 + 40) = v52;
          --v45;
        }

        while (v45);

        v44 = v215;
      }

      *(v44 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F570, &qword_1C4038C00);
      *(v44 + 32) = v46;
      v36 = sub_1C4031190();
      v37 = sub_1C40313E0();

      v38 = [objc_opt_self() predicateWithFormat:v36 argumentArray:v37];
      goto LABEL_111;
    case 0xAuLL:
      v127 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v128 = *(v127 + 16);
      if (!v128)
      {
        goto LABEL_12;
      }

      v218 = MEMORY[0x1E69E7CC0];

      sub_1C4031950();
      v129 = 32;
      v130 = MEMORY[0x1E69E6370];
      v216 = xmmword_1C4038040;
      break;
    case 0xBuLL:
      v34 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1C40385D0;
      *(v35 + 56) = MEMORY[0x1E69E6370];
      *(v35 + 32) = v34;
      v36 = sub_1C4031190();
      v37 = sub_1C40313E0();

      v38 = [objc_opt_self() predicateWithFormat:v36 argumentArray:v37];
      goto LABEL_111;
    case 0xCuLL:
      v39 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v218 = v39;
      sub_1C3EE61B4(v39);
      v40 = sub_1C3F1AFD8();
      v41 = [objc_opt_self() notPredicateWithSubpredicate_];

      sub_1C3EE6238(v39);
      return v41;
    case 0xDuLL:
      v119 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v120 = *(v119 + 16);
      if (v120)
      {
        v218 = MEMORY[0x1E69E7CC0];

        sub_1C4031950();
        v121 = 32;
        do
        {
          v221 = *(v119 + v121);
          sub_1C3F1AFD8();
          sub_1C4031920();
          sub_1C4031960();
          sub_1C4031970();
          sub_1C4031930();
          v121 += 8;
          --v120;
        }

        while (v120);
      }

      sub_1C3F2AE94();
      v32 = sub_1C40313E0();

      v33 = [objc_opt_self() andPredicateWithSubpredicates_];
      goto LABEL_148;
    case 0xEuLL:
      v29 = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v30 = *(v29 + 16);
      if (v30)
      {
        v218 = MEMORY[0x1E69E7CC0];

        sub_1C4031950();
        v31 = 32;
        do
        {
          v221 = *(v29 + v31);
          sub_1C3F1AFD8();
          sub_1C4031920();
          sub_1C4031960();
          sub_1C4031970();
          sub_1C4031930();
          v31 += 8;
          --v30;
        }

        while (v30);
      }

      goto LABEL_12;
    case 0xFuLL:
      v71 = objc_opt_self();
      if (v11 == 0xF000000000000000)
      {
        v72 = [v71 predicateWithValue_];
      }

      else
      {
        v72 = [v71 predicateWithValue_];
      }

      return v72;
    default:
      v12 = *(v11 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
      v13 = swift_allocObject();
      v14 = v13;
      *(v13 + 16) = xmmword_1C4038040;
      *(v13 + 56) = MEMORY[0x1E69E6158];
      *(v13 + 32) = 0x695F657571696E75;
      *(v13 + 40) = 0xE900000000000064;
      v15 = v12[2];
      v16 = MEMORY[0x1E69E7CC0];
      if (!v15)
      {
        goto LABEL_110;
      }

      v212 = v13;
      v218 = MEMORY[0x1E69E7CC0];

      sub_1C3EF0270(0, v15, 0);
      v16 = v218;
      v18 = *(v8 + 16);
      v17 = v8 + 16;
      v19 = *(v17 + 64);
      v211 = v12;
      v20 = v12 + ((v19 + 32) & ~v19);
      v213 = *(v17 + 56);
      *&v214 = v18;
      v215 = v17;
      v21 = (v17 - 8);
      do
      {
        v22 = v216;
        (v214)(v10, v20, v216);
        v23 = sub_1C40309A0();
        v25 = v24;
        (*v21)(v10, v22);
        v218 = v16;
        v27 = *(v16 + 16);
        v26 = *(v16 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1C3EF0270((v26 > 1), v27 + 1, 1);
          v16 = v218;
        }

        *(v16 + 16) = v27 + 1;
        v28 = v16 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
        v20 += v213;
        --v15;
      }

      while (v15);
LABEL_38:

      v14 = v212;
LABEL_110:
      *(v14 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F570, &qword_1C4038C00);
      *(v14 + 64) = v16;
      v36 = sub_1C4031190();
      v37 = sub_1C40313E0();

      v38 = [objc_opt_self() predicateWithFormat:v36 argumentArray:v37];
LABEL_111:
      v171 = v38;

      return v171;
  }

  while (1)
  {
    v136 = *(v127 + v129);
    if (v136 > 2)
    {
      if (v136 != 3)
      {
        if (v136 == 4)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
          v138 = swift_allocObject();
          *(v138 + 16) = v216;
          *(v138 + 56) = v130;
          *(v138 + 32) = 0;
          *(v138 + 88) = v130;
          *(v138 + 64) = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
          v140 = swift_allocObject();
          *(v140 + 16) = v216;
          *(v140 + 56) = v130;
          *(v140 + 32) = 0;
          *(v140 + 88) = v130;
          *(v140 + 64) = 1;
        }

        v132 = sub_1C4031190();
        v133 = sub_1C40313E0();

        v134 = [objc_opt_self() predicateWithFormat:v132 argumentArray:v133];
        goto LABEL_74;
      }
    }

    else
    {
      if (!*(v127 + v129))
      {
        v139 = [objc_opt_self() predicateWithValue_];
        goto LABEL_75;
      }

      if (v136 != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
        v137 = swift_allocObject();
        *(v137 + 16) = v216;
        *(v137 + 56) = v130;
        *(v137 + 32) = 1;
        *(v137 + 88) = v130;
        *(v137 + 64) = 1;
        v132 = sub_1C4031190();
        v133 = sub_1C40313E0();

        v134 = [objc_opt_self() predicateWithFormat:v132 argumentArray:v133];
        goto LABEL_74;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08FD00, &unk_1C403C1D0);
    v131 = swift_allocObject();
    *(v131 + 16) = v216;
    *(v131 + 56) = v130;
    *(v131 + 32) = 1;
    *(v131 + 88) = v130;
    *(v131 + 64) = 0;
    v132 = sub_1C4031190();
    v133 = sub_1C40313E0();

    v134 = [objc_opt_self() predicateWithFormat:v132 argumentArray:v133];
LABEL_74:
    v135 = v134;

LABEL_75:
    sub_1C4031920();
    sub_1C4031960();
    sub_1C4031970();
    sub_1C4031930();
    ++v129;
    if (!--v128)
    {

LABEL_12:
      sub_1C3F2AE94();
      v32 = sub_1C40313E0();

      v33 = [objc_opt_self() orPredicateWithSubpredicates_];
      goto LABEL_148;
    }
  }
}