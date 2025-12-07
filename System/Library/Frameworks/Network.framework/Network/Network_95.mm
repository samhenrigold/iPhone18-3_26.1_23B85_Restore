unint64_t sub_18208B9E8()
{
  v1 = *v0;
  v2 = v0[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v4 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LODWORD(v4) = 1;
  }

  v5 = 11;
  if (v4)
  {
    v5 = 7;
  }

  v6 = v5 | (v3 << 16);
  if (!v3)
  {
    return v6;
  }

  v7 = v0[4];
  v8 = 4 << v4;
  v13 = v0[2];
  while (1)
  {
    result = v6;
    if ((v6 & 0xC) == v8)
    {
      break;
    }

    if (v6 < 0x4000)
    {
      goto LABEL_39;
    }

LABEL_13:
    if ((v2 & 0x1000000000000000) != 0)
    {
      if (v3 < result >> 16)
      {
        goto LABEL_42;
      }

      result = sub_182AD3188();
    }

    else
    {
      result = (result & 0xFFFFFFFFFFFF0000) - 65532;
    }

    if ((result & 0xC) == v8)
    {
      result = sub_18208A330(result, v1, v2);
    }

    v10 = result >> 16;
    if (result >> 16 >= v3)
    {
      goto LABEL_40;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      v12 = sub_182AD31C8();
    }

    else if ((v2 & 0x2000000000000000) != 0)
    {
      v14[0] = v1;
      v14[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      v12 = *(v14 + v10);
    }

    else
    {
      v11 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v1 & 0x1000000000000000) == 0)
      {
        v11 = sub_182AD3CF8();
      }

      v12 = *(v11 + v10);
    }

    LOBYTE(v14[0]) = v12;
    v13(&v15, v14);
    result = v7(&v15);
    if ((result & 1) == 0)
    {
      return v6;
    }

    if ((v6 & 0xC) == v8)
    {
      result = sub_18208A330(v6, v1, v2);
      v6 = result;
      if (result < 0x4000)
      {
        goto LABEL_41;
      }
    }

    else if (v6 < 0x4000)
    {
      goto LABEL_41;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      if (v3 < v6 >> 16)
      {
        goto LABEL_43;
      }

      v6 = sub_182AD3188();
      if (v6 < 0x4000)
      {
        return v6;
      }
    }

    else
    {
      v6 = (v6 & 0xFFFFFFFFFFFF0000) - 65532;
      if (v6 < 0x4000)
      {
        return v6;
      }
    }
  }

  result = sub_18208A330(v6, v1, v2);
  if (result >= 0x4000)
  {
    goto LABEL_13;
  }

LABEL_39:
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

uint64_t sub_18208BC10(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 152);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839FD0, &unk_182AF2570);
  v44 = a1;
  v4(v45, sub_181D0482C, a1, v5);
  v6 = v45[0];
  v43 = a2;
  result = (*(*a2 + 152))(v45, sub_181D0482C, a2, v5);
  v8 = v45[0];
  if (*(v6 + 16) == *(v45[0] + 16))
  {
    v9 = 0;
    v10 = v6 + 64;
    v11 = 1 << *(v6 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v41 = v45[0];
    v42 = v6;
    v39 = v14;
    v40 = v6 + 64;
    while (v13)
    {
      if (!*(v8 + 16))
      {
        goto LABEL_35;
      }

LABEL_7:
      v15 = __clz(__rbit64(v13)) | (v9 << 6);
      v16 = *(*(v6 + 56) + 4 * v15);
      v17 = (*(v6 + 48) + 16 * v15);
      v18 = *v17;
      v19 = v17[1];

      v20 = sub_181CA266C(v18, v19);
      v22 = v21;

      if (v22)
      {
        v23 = *(*(v8 + 56) + 4 * v20);
        swift_beginAccess();
        result = swift_beginAccess();
        while (1)
        {
          v24 = v16 == 0xFFFF || v23 == 0xFFFF;
          if (v24)
          {
            break;
          }

          v25 = *(v44 + 16);
          if (*(v25 + 16) <= v16)
          {
            goto LABEL_39;
          }

          v26 = *(v43 + 16);
          if (*(v26 + 16) <= v23)
          {
            goto LABEL_40;
          }

          v27 = v25 + (v16 << 6);
          result = *(v27 + 48);
          v28 = *(v27 + 56);
          v29 = *(v27 + 64);
          v30 = *(v27 + 72);
          v31 = *(v27 + 80);
          v16 = *(v27 + 88);
          v32 = v26 + (v23 << 6);
          v33 = *(v32 + 64);
          v34 = *(v32 + 72);
          v35 = *(v32 + 80);
          v23 = *(v32 + 88);
          v36 = result == *(v32 + 48) && v28 == *(v32 + 56);
          if (v36 || (result = sub_182AD4268(), (result & 1) != 0))
          {
            if (v29 == v33)
            {
              if (v30 == v34 && v31 == v35)
              {
                continue;
              }

              result = sub_182AD4268();
              if (result)
              {
                continue;
              }
            }
          }

          goto LABEL_35;
        }

        v13 &= v13 - 1;
        v24 = v16 == v23;
        v8 = v41;
        v6 = v42;
        v14 = v39;
        v10 = v40;
        if (v24)
        {
          continue;
        }
      }

      goto LABEL_35;
    }

    do
    {
      v38 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return result;
      }

      if (v38 >= v14)
      {

        return 1;
      }

      v13 = *(v10 + 8 * v38);
      ++v9;
    }

    while (!v13);
    v9 = v38;
    if (*(v8 + 16))
    {
      goto LABEL_7;
    }

LABEL_35:
  }

  else
  {
  }

  return 0;
}

unint64_t sub_18208BF44(unint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((result & 0xC) == 4 << v4)
  {
    v5 = a3;
    result = sub_18208A330(result, a2, a3);
    a3 = v5;
    if ((v5 & 0x1000000000000000) == 0)
    {
      return (result & 0xFFFFFFFFFFFF0000) + 65540;
    }
  }

  else if ((a3 & 0x1000000000000000) == 0)
  {
    return (result & 0xFFFFFFFFFFFF0000) + 65540;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  else
  {

    return sub_182AD3178();
  }

  return result;
}

unint64_t sub_18208BFE4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((result & 0xC) != 4 << v4)
  {
    if (result >= 0x4000)
    {
      goto LABEL_5;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = a2;
  result = sub_18208A330(result, a2, a3);
  a2 = v5;
  if (result < 0x4000)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((a3 & 0x1000000000000000) == 0)
  {
    return (result & 0xFFFFFFFFFFFF0000) - 65532;
  }

LABEL_9:
  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  else
  {

    return sub_182AD3188();
  }

  return result;
}

unint64_t sub_18208C094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_181DAEBE0();

    *v4 = v8;
  }

  v9 = *(*v8 + 152);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839FD0, &unk_182AF2570);
  v9(v20, sub_181D0482C, v8, v10);
  v11 = v20[0];
  if (*(v20[0] + 16) && (v12 = sub_181CA266C(a3, a4), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 4 * v12);

    if (v14 != 0xFFFF)
    {
      swift_beginAccess();
      v15 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_181F5A904(0, *(v15 + 16) + 1, 1, v15);
          v15 = result;
        }

        v18 = *(v15 + 16);
        v17 = *(v15 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_181F5A904((v17 > 1), v18 + 1, 1, v15);
          v15 = result;
        }

        *(v15 + 16) = v18 + 1;
        *(v15 + 8 * v18 + 32) = v14;
        v19 = v8[2];
        if (*(v19 + 16) <= v14)
        {
          break;
        }

        v14 = *(v19 + (v14 << 6) + 88);
        if (v14 == 0xFFFF)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_16:
  if (*(v15 + 16))
  {
    swift_beginAccess();
    sub_182087194(v15);
    swift_endAccess();

    swift_beginAccess();
    v8[3] = 0;
  }
}

unint64_t sub_18208C2BC()
{
  result = qword_1EA836E10;
  if (!qword_1EA836E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836E10);
  }

  return result;
}

unint64_t sub_18208C328()
{
  result = qword_1EA836540;
  if (!qword_1EA836540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836540);
  }

  return result;
}

unint64_t sub_18208C37C()
{
  result = qword_1EA839FE8;
  if (!qword_1EA839FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839FE8);
  }

  return result;
}

unint64_t sub_18208C3D0()
{
  result = qword_1EA839FF0;
  if (!qword_1EA839FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839FF0);
  }

  return result;
}

unint64_t sub_18208C428()
{
  result = qword_1EA839FF8;
  if (!qword_1EA839FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839FF8);
  }

  return result;
}

unint64_t sub_18208C47C()
{
  result = qword_1EA836538;
  if (!qword_1EA836538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836538);
  }

  return result;
}

unint64_t sub_18208C518()
{
  result = qword_1EA83A010;
  if (!qword_1EA83A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A010);
  }

  return result;
}

unint64_t sub_18208C570()
{
  result = qword_1EA83A018;
  if (!qword_1EA83A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A018);
  }

  return result;
}

unint64_t sub_18208C60C()
{
  result = qword_1EA83A028;
  if (!qword_1EA83A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A028);
  }

  return result;
}

unint64_t sub_18208C6A8()
{
  result = qword_1EA83A038;
  if (!qword_1EA83A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A038);
  }

  return result;
}

uint64_t sub_18208C78C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A008, &qword_182AF2638);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

unint64_t sub_18208C8C8()
{
  result = qword_1EA836548;
  if (!qword_1EA836548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836548);
  }

  return result;
}

unint64_t sub_18208C920()
{
  result = qword_1EA83A068;
  if (!qword_1EA83A068)
  {
    type metadata accessor for HTTPFields._Storage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A068);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return swift_deallocObject();
}

unint64_t sub_18208C9B8()
{
  result = *(v0 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result >> 16)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_18208C9D8@<X0>(_DWORD *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_18208CA08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_18208CA50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double Connection5.nw.getter()
{
  sub_181F3D244();

  return result;
}

uint64_t Connection5.__allocating_init(to:using:where:)(uint64_t TupleTypeMetadata, void (*a2)(char *, __n128), uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v41 = a4;
  v5 = TupleTypeMetadata;
  v6 = v4[10];
  if (v6)
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = v4[12];
    *v8 = v4[11];
    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if (v6 >= 6 && v8 - v10 + 8 >= 0x20)
    {
      v11 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v36 = v8 + 3;
      v37 = (v10 + 16);
      v38 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v39 = *v37;
        *(v36 - 1) = *(v37 - 1);
        *v36 = v39;
        v36 += 2;
        v37 += 2;
        v38 -= 4;
      }

      while (v38);
      if (v6 == v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v6 - v11;
    v13 = 8 * v11;
    v14 = &v8[v11 + 1];
    v15 = (v10 + v13);
    do
    {
      v16 = *v15++;
      *v14++ = v16;
      --v12;
    }

    while (v12);
LABEL_7:
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v17 = TupleTypeMetadata;
    goto LABEL_9;
  }

  v17 = v4[11];
LABEL_9:
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for NWEndpoint(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_181FE4EE0(v5, v23);
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v24);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    v28 = (v17 + 48);
    v29 = v27;
    do
    {
      v30 = *v28;
      v28 += 4;
      *v29++ = &v20[v30];
      --v6;
    }

    while (v6);
    v31 = *(v17 + 32);
  }

  else
  {
    v31 = 0;
  }

  v40(&v20[v31], v25);
  v32 = sub_182185B3C(v20, v17);
  (*(v18 + 8))(v20, v17);
  swift_allocObject();
  sub_182090234(v23, v32, v41);
  v34 = v33;

  sub_181FDAD5C(v5);
  return v34;
}

uint64_t Connection5.__allocating_init(using:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_18208CEBC(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a1 + 4);
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = v5;
    v8 = (v5 | (v4 << 32)) >> 32;
    a3(result);
  }

  return result;
}

uint64_t sub_18208CF94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

void sub_18208D098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *, __n128), void (*a6)(uint64_t, void *))
{
  if (v6[2])
  {
    v11 = *v6;
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = v11[10];
    v13[3] = v11[11];
    v13[4] = swift_allocateMetadataPack();
    v13[5] = v11[13];
    v13[6] = swift_allocateWitnessTablePack();
    v13[7] = v12;
    v13[8] = a1;
    v13[9] = a2;
    v13[10] = v11;

    (a5)(a4, v13);
    a6(a4, v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18208D1FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t Connection5.deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    nw_connection_cancel(*(v1 + 16));

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Connection5.__deallocating_deinit()
{
  Connection5.deinit();

  return swift_deallocClassInstance();
}

uint64_t Connection5.hashValue.getter()
{
  v1 = *v0;
  v5 = v0;
  sub_182AD44E8();
  WitnessTable = swift_getWitnessTable();
  ConnectionProtocol.hash(into:)(&v4, v1, WitnessTable);
  return sub_182AD4558();
}

uint64_t sub_18208D36C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = ConnectionProtocol.id.getter(a1, WitnessTable);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_18208D3E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return ConnectionProtocol.hash(into:)(a1, a2, WitnessTable);
}

uint64_t sub_18208D448(uint64_t a1, uint64_t a2)
{
  sub_182AD44E8();
  WitnessTable = swift_getWitnessTable();
  ConnectionProtocol.hash(into:)(v5, a2, WitnessTable);
  return sub_182AD4558();
}

uint64_t Connection5<>.send(_:metadata:isComplete:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 120) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  *(v6 + 64) = *v5;
  *(v6 + 72) = *(*v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 80) = AssociatedTypeWitness;
  *(v6 + 88) = *(AssociatedTypeWitness - 8);
  *(v6 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18208D5F4, 0, 0);
}

uint64_t sub_18208D5F4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 120);
  v11 = *(v0 + 48);
  v3 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 56);
  (*(v11 + 40))(v2, v3);
  v10 = (*(v11 + 16) + **(v11 + 16));
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  WitnessTable = swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_181FDDA88;
  v6 = *(v0 + 96);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);

  return v10(v0 + 16, v7, v8, v6, v1, WitnessTable);
}

uint64_t Connection5<>.receive(minimumLength:maximumLength:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v4[3] = a3;
  v9 = v8;
  v10 = *(*v3 + 88);
  v4[4] = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[5] = AssociatedTypeWitness;
  v4[6] = *(AssociatedTypeWitness - 8);
  v12 = swift_task_alloc();
  v4[7] = v12;
  v4[2] = v3;
  v16 = (*(a3 + 32) + **(a3 + 32));
  v13 = swift_task_alloc();
  v4[8] = v13;
  WitnessTable = swift_getWitnessTable();
  *v13 = v4;
  v13[1] = sub_181FDECFC;

  return v16(v12, v4 + 2, a1, a2, v9, WitnessTable, v10, a3);
}

uint64_t Connection5<>.receive(exactly:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v3[3] = a2;
  v7 = v6;
  v8 = *(*v2 + 88);
  v3[4] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[5] = AssociatedTypeWitness;
  v3[6] = *(AssociatedTypeWitness - 8);
  v10 = swift_task_alloc();
  v3[7] = v10;
  v3[2] = v2;
  v14 = (*(a2 + 32) + **(a2 + 32));
  v11 = swift_task_alloc();
  v3[8] = v11;
  WitnessTable = swift_getWitnessTable();
  *v11 = v3;
  v11[1] = sub_181FDF1C4;

  return v14(v10, v3 + 2, a1, a1, v7, WitnessTable, v8, a2);
}

uint64_t Connection5.send<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  *(v4 + 16) = v3;
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  WitnessTable = swift_getWitnessTable();
  *v9 = v4;
  v9[1] = sub_181FDF40C;

  return static UDP.send<A>(connection:content:metadata:)(v4 + 16, a1, a2, a3, v8, WitnessTable);
}

{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18208ED44, 0, 0);
}

{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18208F078, 0, 0);
}

uint64_t Connection5.receive<>()()
{
  v2 = *v0;
  *(v1 + 24) = v0;
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  WitnessTable = swift_getWitnessTable();
  *v3 = v1;
  v3[1] = sub_18208DDEC;

  return static UDP.receive<A>(connection:)(v1 + 16, v1 + 24, v2, WitnessTable);
}

uint64_t sub_18208DDEC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v7 = sub_18208DFC4;
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;
    v7 = sub_18208DF20;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18208DF20()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[2];
  sub_181F49B58(v2, v1);
  sub_181F49B58(v2, v1);
  sub_181C1F2E4(v2, v1);
  sub_181C1F2E4(v2, v1);
  v4 = v0[1];
  v6 = v0[6];
  v5 = v0[7];

  return v4(v5, v6, v3);
}

uint64_t Connection5.send<>(type:_:metadata:isFinal:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 116) = a5;
  *(v6 + 72) = a4;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 112) = a1;
  *(v6 + 88) = *v5;
  return MEMORY[0x1EEE6DFA0](sub_18208E030, 0, 0);
}

void sub_18208E030()
{
  *(v0 + 48) = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v5 = *(*(v0 + 56) + 16);
    v6 = *(*(v0 + 56) + 24);
    v7 = __OFSUB__(v6, v5);
    v4 = v6 - v5;
    if (!v7)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v4 = BYTE6(v2);
    goto LABEL_11;
  }

  v8 = *(v0 + 56);
  v9 = *(v0 + 60);
  v7 = __OFSUB__(v9, v8);
  LODWORD(v4) = v9 - v8;
  if (v7)
  {
    __break(1u);
    return;
  }

  v4 = v4;
LABEL_11:
  v10 = *(v0 + 88);
  v11 = *(v0 + 116);
  v12 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 24) = v4;
  *(v0 + 32) = 1;
  *(v0 + 33) = v11;
  *(v0 + 40) = v12;

  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  WitnessTable = swift_getWitnessTable();
  *v13 = v0;
  v13[1] = sub_18208E190;
  v15 = *(v0 + 56);
  v16 = *(v0 + 64);

  static TLV.send<A>(connection:content:metadata:)(v0 + 48, v15, v16, v0 + 16, v10, WitnessTable);
}

uint64_t sub_18208E190()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18208E2EC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Connection5.receive<>()(uint64_t a1)
{
  v3 = *v1;
  v2[7] = a1;
  v2[6] = v1;
  v4 = swift_task_alloc();
  v2[8] = v4;
  WitnessTable = swift_getWitnessTable();
  *v4 = v2;
  v4[1] = sub_18208E400;

  return static TLV.receive<A>(connection:)((v2 + 2), (v2 + 6), v3, WitnessTable);
}

{
  v3 = *v1;
  v2[5] = a1;
  v2[4] = v1;
  v4 = swift_task_alloc();
  v2[6] = v4;
  WitnessTable = swift_getWitnessTable();
  *v4 = v2;
  v4[1] = sub_18208F9A0;

  return static WebSocket.receive<A>(connection:)((v2 + 2), (v2 + 4), v3, WitnessTable);
}

uint64_t sub_18208E400(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = sub_18208E600;
  }

  else
  {
    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = sub_18208E534;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18208E534()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = *(v0 + 33);
  v6 = *(v0 + 40);
  sub_181F49B58(v2, v1);
  sub_181F49B58(v2, v1);

  sub_181C1F2E4(v2, v1);
  sub_181C1F2E4(v2, v1);

  *v3 = v4;
  *(v3 + 8) = v2;
  *(v3 + 16) = v1;
  *(v3 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t Connection5.send<A>(_:metadata:isFinal:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 128) = a3;
  *(v4 + 56) = a1;
  *(v4 + 80) = *v3;
  *(v4 + 88) = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18208E690, 0, 0);
}

uint64_t sub_18208E690()
{
  *(v0 + 48) = *(v0 + 72);
  v1 = *(v0 + 88);
  sub_182AD1C98();
  swift_allocObject();
  sub_182AD1C88();
  v2 = *(v1 + 88);
  v3 = v2[2];
  v4 = v2[4];
  v5 = sub_182AD1C68();
  *(v0 + 96) = v5;
  *(v0 + 104) = v6;
  v7 = v5;
  v8 = v6;
  v15 = *(v0 + 80);
  v9 = *(v0 + 128);
  v10 = *(v0 + 64);

  v11 = v2[3];
  sub_1821EBCD8(v9, v10, v0 + 16);
  v12 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v12;

  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  swift_getWitnessTable();
  *v13 = v0;
  v13[1] = sub_181FE06E0;

  return static JSON.send<A>(connection:content:metadata:)(v0 + 48, v7, v8, v0 + 32, v3, v15, v11, v4);
}

uint64_t Connection5.receive<A>()(uint64_t a1)
{
  v3 = *v1;
  v2[5] = a1;
  v4 = *(*v1 + 88);
  v5 = v4[2];
  v2[6] = v5;
  v2[7] = *(v5 - 8);
  v6 = swift_task_alloc();
  v2[8] = v6;
  v2[4] = v1;
  v7 = swift_task_alloc();
  v2[9] = v7;
  v8 = v4[3];
  v2[10] = v8;
  v9 = v4[4];
  v2[11] = v9;
  WitnessTable = swift_getWitnessTable();
  *v7 = v2;
  v7[1] = sub_18208EA38;

  return static JSON.receive<A>(connection:)(v6, (v2 + 2), (v2 + 4), v5, v3, v8, v9, WitnessTable);
}

uint64_t sub_18208EA38()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_18208EC90;
  }

  else
  {
    v2 = sub_18208EB4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18208EB4C()
{
  v20 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v18[0] = *(v0 + 16);
  v19 = v7;
  v8 = static JSON.mapLegacy(_:)(v5, v4, v18, v6, v3, v1);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 48);
  if (v2)
  {

    (*(v11 + 8))(v10, v12);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = v9;
    v16 = v8;

    (*(v11 + 8))(v10, v12);

    v17 = *(v0 + 8);

    return v17(v16, v15 & 1);
  }
}

uint64_t sub_18208EC90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18208ED44()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  *(v0 + 32) = *(v0 + 64);
  if (v2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = sub_181F76154(v5, v6);
  v9 = v8;
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  *(v0 + 16) = 1;
  *(v0 + 20) = -1;
  *(v0 + 18) = 0;
  *(v0 + 21) = 1;
  *(v0 + 24) = v3;

  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  WitnessTable = swift_getWitnessTable();
  *v10 = v0;
  v10[1] = sub_18208EE90;

  return static WebSocket.send<A>(connection:content:metadata:)(v0 + 32, v7, v9, v0 + 16, v1, WitnessTable);
}

uint64_t sub_18208EE90()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 104) = v0;

  sub_181C1F2E4(v3, v2);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18208E2EC, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_18208F078()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 40);
  }

  *(v0 + 16) = 2;
  if (v2 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v2;
  }

  *(v0 + 20) = -1;
  *(v0 + 18) = 0;
  *(v0 + 21) = 1;
  *(v0 + 24) = *(v0 + 56);

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v0;
  v5[1] = sub_18208F1A0;

  return static WebSocket.send<A>(connection:content:metadata:)(v0 + 32, v3, v4, v0 + 16, v1, WitnessTable);
}

uint64_t sub_18208F1A0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18209075C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Connection5.ping<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18208F348, 0, 0);
}

uint64_t sub_18208F348()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 40);
  }

  *(v0 + 16) = 4;
  if (v2 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v2;
  }

  *(v0 + 20) = -1;
  *(v0 + 18) = 0;
  *(v0 + 21) = 1;
  *(v0 + 24) = *(v0 + 56);

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v0;
  v5[1] = sub_181FE1BC8;

  return static WebSocket.send<A>(connection:content:metadata:)(v0 + 32, v3, v4, v0 + 16, v1, WitnessTable);
}

uint64_t Connection5.pong<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18208F4BC, 0, 0);
}

uint64_t sub_18208F4BC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 40);
  }

  *(v0 + 16) = 5;
  if (v2 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v2;
  }

  *(v0 + 20) = -1;
  *(v0 + 18) = 0;
  *(v0 + 21) = 1;
  *(v0 + 24) = *(v0 + 56);

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v0;
  v5[1] = sub_18208F1A0;

  return static WebSocket.send<A>(connection:content:metadata:)(v0 + 32, v3, v4, v0 + 16, v1, WitnessTable);
}

uint64_t Connection5.close<>(code:reason:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 56) = *v4;
  *(v5 + 80) = *a1;
  *(v5 + 82) = *(a1 + 2);
  return MEMORY[0x1EEE6DFA0](sub_18208F63C, 0, 0);
}

uint64_t sub_18208F63C()
{
  v1 = *(v0 + 82);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  *(v0 + 16) = 3;
  *(v0 + 20) = v1;
  *(v0 + 18) = v2;
  *(v0 + 21) = 257;
  *(v0 + 24) = *(v0 + 40);

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  WitnessTable = swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_18208F748;

  return static WebSocket.send<A>(connection:content:metadata:)(v0 + 32, 0, 0xC000000000000000, v0 + 16, v3, WitnessTable);
}

uint64_t sub_18208F748()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18208E600, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_18208F9A0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_18208FB9C;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_18208FAD4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18208FAD4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 22);
  v4 = *(v0 + 24);
  **(v0 + 40) = *(v0 + 16);
  sub_181F49B58(v2, v1);
  sub_181F49B58(v2, v1);

  sub_181C1F2E4(v2, v1);
  sub_181C1F2E4(v2, v1);

  v5 = *(v0 + 8);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);

  return v5(v6, v7, v4, v3);
}

uint64_t Connection5<>.messages.getter(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return MEMORY[0x1EEE6DBA8](&unk_182AF2CA8, v3, AssociatedTypeWitness, v5);
}

uint64_t sub_18208FC78(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v3[3] = a1;
  v3[4] = a3;
  v7 = v6;
  v8 = *(*a2 + 88);
  v3[5] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[6] = AssociatedTypeWitness;
  v3[7] = *(AssociatedTypeWitness - 8);
  v10 = swift_task_alloc();
  v3[8] = v10;
  v11 = swift_getAssociatedTypeWitness();
  v3[9] = v11;
  v3[10] = *(v11 - 8);
  v12 = swift_task_alloc();
  v3[11] = v12;
  v3[2] = a2;
  v16 = (*(a3 + 40) + **(a3 + 40));
  v13 = swift_task_alloc();
  v3[12] = v13;
  WitnessTable = swift_getWitnessTable();
  *v13 = v3;
  v13[1] = sub_18208FF18;

  return v16(v12, v10, v3 + 2, v7, WitnessTable, v8, a3);
}

uint64_t sub_18208FF18()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1820901C4;
  }

  else
  {
    v2 = sub_18209002C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18209002C()
{
  v1 = v0[13];
  (*(v0[4] + 56))(v0[11], v0[8]);
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[7];
  if (v1)
  {
    (*(v5 + 8))(v0[8], v0[6]);
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    v7 = v0[3];
    (*(v5 + 8))();
    (*(v3 + 8))(v2, v4);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 56))(v7, 0, 1, AssociatedTypeWitness);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1820901C4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_182090234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NWEndpoint(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v29 - v8;
  v36 = a2;
  v10 = a3;
  v30 = &v29 - v8;
  v31 = a1;
  if (a3)
  {
    goto LABEL_4;
  }

  sub_181FE4EE0(a1, &v29 - v8);
  sub_1821DDE54(&v36, v9);
  if (v11)
  {
    v10 = v11;

LABEL_4:
    swift_retain_n();
    v29 = v10;
    goto LABEL_5;
  }

  type metadata accessor for NWParameters();
  v10 = swift_allocObject();
  v27 = nw_parameters_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00, &qword_182AEE4C0);
  v28 = swift_allocObject();
  v29 = 0;
  *(v28 + 24) = 0;
  *(v28 + 16) = v27;
  *(v10 + 16) = v28;
LABEL_5:
  v12 = v36;
  v13 = *(v36 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = v36 + 32;
    while (v14 < *(v12 + 16))
    {
      sub_181F75240(v15, v33);
      ++v14;
      v16 = v34;
      v17 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v18 = *(v10 + 16);
      os_unfair_lock_lock((v18 + 24));
      v19 = *(v18 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v18 + 24));
      (*(v17 + 56))(v19, v16, v17);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v33);
      v15 += 40;
      if (v13 == v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    v20 = v31;
    v21 = NWEndpoint.nw.getter();
    v22 = v30;
    if (v21)
    {
      v23 = v21;
      if (nw_endpoint_get_type(v21) == nw_endpoint_type_url)
      {
        v24 = *(v10 + 16);
        os_unfair_lock_lock((v24 + 24));
        v25 = *(v24 + 16);
        swift_unknownObjectRetain();
        os_unfair_lock_unlock((v24 + 24));
        nw_parameters_set_url_endpoint(v25, v23);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_181FE4EE0(v20, v22);
    type metadata accessor for NWConnection(0);
    swift_allocObject();
    v26 = sub_181E60914(v22, v10);

    sub_181FDAD5C(v20);
    *(v32 + 16) = v26;
  }
}

uint64_t objectdestroy_2Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1820905AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_181F54964;

  return sub_18208FC78(a1, v4, v5);
}

uint64_t sub_182090658(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_182090764(uint64_t a1, uint64_t a2)
{
  v9[0] = *v2;
  *(v9 + 9) = *(v2 + 9);
  v7[0] = 1;
  v8[0] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A950, &unk_182AF9020);
  v5 = swift_allocObject();
  *(v5 + 57) = 0;
  *(v5 + 64) = xmmword_182AF2DC0;
  *(v5 + 16) = *v2;
  *(v5 + 25) = *(v2 + 9);
  *(v5 + 41) = a1;
  *(v5 + 49) = a2;
  swift_beginAccess();
  *(v5 + 64) = 0;
  *(v5 + 72) = 0x1000002000001;
  sub_181BBBFDC(v9, v7);
  return v5;
}

uint64_t _nw_ip_create_options()
{
  if (qword_1ED4102F0 != -1)
  {
    swift_once();
  }

  v0 = *(&xmmword_1ED411D60 + 1);
  v1 = unk_1ED411D70;
  v2 = byte_1ED411D78;
  v3 = xmmword_1ED411D60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760, &qword_182AE4BE8);
  swift_allocObject();
  v4 = sub_181BB68A0(v3, v0, v1, v2, 0);
  sub_181F49A24(v0, v1, v2);
  return v4;
}

uint64_t sub_182090914(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760, &qword_182AE4BE8);
  result = sub_181AA8420();
  if (result)
  {
    v4 = (result + *(*result + 128));
    result = swift_beginAccess();
    if (*v4 == 3)
    {
      __break(1u);
      return result;
    }

    v5 = v4[4];
    if (a2)
    {
      if ((v4[4] & 1) == 0)
      {
        v6 = v5 | 1;
LABEL_8:
        v4[4] = v6;
      }
    }

    else if (v4[4])
    {
      v6 = v5 & 0xFE;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1820909D8(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760, &qword_182AE4BE8);
  result = sub_181AA8420();
  if (result)
  {
    v4 = (result + *(*result + 128));
    result = swift_beginAccess();
    if (*v4 == 3)
    {
      __break(1u);
      return result;
    }

    v5 = v4[4];
    if (a2)
    {
      if ((v4[4] & 2) == 0)
      {
        v6 = v5 | 2;
LABEL_8:
        v4[4] = v6;
      }
    }

    else if ((v4[4] & 2) != 0)
    {
      v6 = v5 & 0xFD;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_182090A9C(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760, &qword_182AE4BE8);
  result = sub_181AA8420();
  if (result)
  {
    v4 = result + *(*result + 128);
    result = swift_beginAccess();
    if (*v4 == 3)
    {
      __break(1u);
    }

    else
    {
      if (((*(v4 + 4) << 32) & 0x8000000000) == 0)
      {
        *(v4 + 4) |= 0x80u;
      }

      *(v4 + 2) = a2;
    }
  }

  return result;
}

uint64_t sub_182090B64(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760, &qword_182AE4BE8);
  result = sub_181AA8420();
  if (result)
  {
    v4 = (result + *(*result + 128));
    result = swift_beginAccess();
    if (*v4 == 3)
    {
      __break(1u);
      return result;
    }

    v5 = v4[4];
    if (a2)
    {
      if ((v4[4] & 4) == 0)
      {
        v6 = v5 | 4;
LABEL_8:
        v4[4] = v6;
      }
    }

    else if ((v4[4] & 4) != 0)
    {
      v6 = v5 & 0xFB;
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t _nw_ip_options_get_disable_multicast_loopback()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760, &qword_182AE4BE8);
  result = sub_181AA8420();
  if (result)
  {
    v1 = (result + *(*result + 128));
    result = swift_beginAccess();
    v2 = *v1 | (*(v1 + 4) << 32);
    if (v2 == 3)
    {
      __break(1u);
    }

    else
    {

      return (v2 >> 34) & 1;
    }
  }

  return result;
}

uint64_t sub_182090CCC(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760, &qword_182AE4BE8);
  result = sub_181AA8420();
  if (result)
  {
    v4 = (result + *(*result + 128));
    result = swift_beginAccess();
    if (*v4 == 3)
    {
      __break(1u);
      return result;
    }

    v5 = v4[4];
    if (a2)
    {
      if ((v4[4] & 8) == 0)
      {
        v6 = v5 | 8;
LABEL_8:
        v4[4] = v6;
      }
    }

    else if ((v4[4] & 8) != 0)
    {
      v6 = v5 & 0xF7;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_182090D90(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760, &qword_182AE4BE8);
  result = sub_181AA8420();
  if (result)
  {
    v4 = (result + *(*result + 128));
    result = swift_beginAccess();
    if (*v4 == 3)
    {
      __break(1u);
      return result;
    }

    v5 = v4[4];
    if (a2)
    {
      if ((v4[4] & 0x10) == 0)
      {
        v6 = v5 | 0x10;
LABEL_8:
        v4[4] = v6;
      }
    }

    else if ((v4[4] & 0x10) != 0)
    {
      v6 = v5 & 0xEF;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_182090E54(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760, &qword_182AE4BE8);
  result = sub_181AA8420();
  if (result)
  {
    v4 = (result + *(*result + 128));
    result = swift_beginAccess();
    if (*v4 == 3)
    {
      __break(1u);
      return result;
    }

    v5 = v4[4];
    if ((v5 & 0x20) == 0)
    {
      v5 |= 0x20u;
      v4[4] = v5;
    }

    if (a2)
    {
      if ((v5 & 0x40) != 0)
      {
        v6 = v5 & 0xBF;
LABEL_10:
        v4[4] = v6;
      }
    }

    else if ((v5 & 0x40) == 0)
    {
      v6 = v5 | 0x40;
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_182090F24(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760, &qword_182AE4BE8);
  result = sub_181AA8420();
  if (result)
  {
    v4 = result;
    v5 = *(*result + 128);
    result = swift_beginAccess();
    if (*(v4 + v5) == 3)
    {
      __break(1u);
    }

    else
    {
      v6 = 2 * (a2 == 6);
      if (a2 == 4)
      {
        v6 = 1;
      }

      *(v4 + v5) = v6;
    }
  }

  return result;
}

uint64_t sub_182090FE0(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760, &qword_182AE4BE8);
  result = sub_181AA8420();
  if (result)
  {
    v4 = (result + *(*result + 128));
    result = swift_beginAccess();
    if (*v4 == 3)
    {
      __break(1u);
    }

    else
    {
      v5 = 2 * (a2 == 2);
      if (a2 == 1)
      {
        v5 = 1;
      }

      v4[1] = v5;
    }
  }

  return result;
}

uint64_t _nw_ip_options_set_dscp_value(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760, &qword_182AE4BE8);
  result = sub_181AA8420();
  if (result)
  {
    v4 = (result + *(*result + 128));
    result = swift_beginAccess();
    if (*v4 == 3)
    {
      __break(1u);
    }

    else
    {
      v4[3] = a2;
    }
  }

  return result;
}

uint64_t sub_182091148()
{
  v3 = *MEMORY[0x1E69E9840];
  if (qword_1ED4102F0 != -1)
  {
    swift_once();
  }

  v1[1] = xmmword_1ED411D60;
  v1[2] = unk_1ED411D70;
  v1[3] = unk_1ED411D80;
  v2 = qword_1ED411D90;
  v1[0] = 0uLL;
  nw_uuid_generate_insecure_1(v1);
  return sub_182090764(*&v1[0], *(&v1[0] + 1));
}

double sub_182091204(int a1)
{
  if (a1 == 1)
  {
    if (qword_1EA836878 != -1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        if (qword_1EA836530 == -1)
        {
          goto LABEL_11;
        }
      }

      else if (qword_1EA837048 == -1)
      {
        goto LABEL_11;
      }

LABEL_14:
      swift_once();
      goto LABEL_11;
    }

    if (qword_1EA837050 != -1)
    {
      goto LABEL_14;
    }
  }

LABEL_11:

  return result;
}

uint64_t _nw_ip_metadata_set_enable_fragmentation(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A950, &unk_182AF9020);
  result = sub_181A932D0(a1);
  if (result)
  {
    v5 = result;
    result = swift_beginAccess();
    if (*(v5 + 79) == 2)
    {
      __break(1u);
    }

    else
    {
      sub_181F7FC9C(a2);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1820913D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A950, &unk_182AF9020);
  result = sub_181A932D0(a1);
  if (result)
  {
    v3 = result;
    result = swift_beginAccess();
    v4 = *(v3 + 72);
    if (HIBYTE(v4) == 2)
    {
      __break(1u);
    }

    else
    {

      if ((v4 & 0x1000000) != 0)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      if ((v4 & 0xFF000000) == 0x2000000)
      {
        return 0;
      }

      else
      {
        return v5;
      }
    }
  }

  return result;
}

uint64_t _nw_ip_metadata_set_hop_limit(uint64_t a1, __int16 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A950, &unk_182AF9020);
  result = sub_181A932D0(a1);
  if (result)
  {
    v5 = result;
    result = swift_beginAccess();
    if (*(v5 + 79) == 2)
    {
      __break(1u);
    }

    else
    {
      sub_181F7FEA4(a2);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t _nw_ip_metadata_get_hop_limit(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A950, &unk_182AF9020);
  v2 = sub_181A932D0(a1);
  if (!v2)
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  v3 = v2;
  result = swift_beginAccess();
  v5 = *(v3 + 72);
  if (HIBYTE(v5) != 2)
  {

    v6 = v5 >> 40;
    if ((v5 & 0x1000000000000) != 0)
    {
      LOBYTE(v6) = 0;
    }

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1820915B4(uint64_t a1, unsigned int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A950, &unk_182AF9020);
  result = sub_181A932D0(a1);
  if (result)
  {
    v5 = result;
    result = swift_beginAccess();
    if (*(v5 + 79) == 2)
    {
      __break(1u);
    }

    else
    {
      v6 = 0x3010200u >> (8 * a2);
      if (a2 >= 4)
      {
        LOBYTE(v6) = 0;
      }

      v7 = v6;
      sub_181F7FA90(&v7);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_182091670(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A950, &unk_182AF9020);
  v2 = sub_181A932D0(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  result = swift_beginAccess();
  v5 = *(v3 + 72);
  if (HIBYTE(v5) != 2)
  {
    v6 = dword_182AF2DD0[v5 >> 8];

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t _nw_ip_metadata_set_dscp_value(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A950, &unk_182AF9020);
  result = sub_181A932D0(a1);
  if (result)
  {
    v5 = result;
    result = swift_beginAccess();
    if (*(v5 + 79) == 2)
    {
      __break(1u);
    }

    else
    {
      sub_181F7FDA0(a2);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t _nw_ip_metadata_get_dscp_value(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A950, &unk_182AF9020);
  v2 = sub_181A932D0(a1);
  if (!v2)
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  v3 = v2;
  result = swift_beginAccess();
  v5 = *(v3 + 72);
  if (HIBYTE(v5) != 2)
  {

    return BYTE4(v5);
  }

  __break(1u);
  return result;
}

uint64_t _nw_ip_metadata_set_service_class(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A950, &unk_182AF9020);
  result = sub_181A932D0(a1);
  if (result)
  {
    v5 = result;
    result = swift_beginAccess();
    if (*(v5 + 79) == 2)
    {
      __break(1u);
    }

    else
    {
      v6 = sub_182091C70(a2);
      sub_181F7FB98(v6);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1820918E0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A950, &unk_182AF9020);
  v2 = sub_181A932D0(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  result = swift_beginAccess();
  v5 = *(v3 + 72);
  if (HIBYTE(v5) != 2)
  {
    v6 = BYTE2(v5);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t _nw_ip_metadata_set_receive_time(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A950, &unk_182AF9020);
  result = sub_181A932D0(a1);
  if (result)
  {
    v5 = result;
    result = swift_beginAccess();
    if (*(v5 + 79) == 2)
    {
      __break(1u);
    }

    else
    {
      sub_181F7F984(a2, 0);
      swift_endAccess();
    }
  }

  return result;
}

unint64_t _nw_ip_metadata_get_receive_time(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A950, &unk_182AF9020);
  v2 = sub_181A932D0(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  result = swift_beginAccess();
  v5 = *(v3 + 72);
  if (HIBYTE(v5) != 2)
  {
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = nw_convert_to_timebase(*(v3 + 64));
    }

    swift_endAccess();

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t _nw_custom_ip_create_options(char a1)
{
  if (qword_1ED40FD30 != -1)
  {
    swift_once();
  }

  v2 = *(&xmmword_1ED411A98 + 1);
  v3 = unk_1ED411AA8;
  v4 = byte_1ED411AB0;
  v5 = xmmword_1ED411A98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DD0, &qword_182AE4BE0);
  swift_allocObject();
  v6 = sub_181CFD414(v5, v2, v3, v4, 0);
  v7 = (v6 + *(*v6 + 128));
  result = swift_beginAccess();
  if (v7[1])
  {
    __break(1u);
  }

  else
  {
    *v7 = a1;
    sub_181F49A24(v2, v3, v4);
    return v6;
  }

  return result;
}

uint64_t _nw_custom_ip_options_get_protocol()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DD0, &qword_182AE4BE0);
  v0 = sub_181AA8420();
  if (!v0)
  {
    return 0;
  }

  v1 = (v0 + *(*v0 + 128));
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_182091C70(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

double static Interface.fromC(_:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + OBJC_IVAR____TtC7Network13__NWInterface_interface);

  return result;
}

uint64_t InterfaceType.description.getter()
{
  v1 = *v0;
  v2 = 1768319351;
  v3 = 0x72616C756C6C6563;
  v4 = 0x7465206465726977;
  if (v1 != 3)
  {
    v4 = 0x6B636162706F6F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0x726568746FLL;
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

uint64_t sub_182091D80()
{
  v1 = *v0;
  v2 = 1768319351;
  v3 = 0x72616C756C6C6563;
  v4 = 0x7465206465726977;
  if (v1 != 3)
  {
    v4 = 0x6B636162706F6F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0x726568746FLL;
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

unint64_t InterfaceSubtype.description.getter()
{
  v1 = *v0;
  v2 = 0x6477615F69666977;
  v3 = 0x7365636F72706F63;
  if (v1 != 3)
  {
    v3 = 0x6F696E61706D6F63;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0x726568746FLL;
  if (*v0)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_182091EC4()
{
  v1 = *v0;
  v2 = 0x6477615F69666977;
  v3 = 0x7365636F72706F63;
  if (v1 != 3)
  {
    v3 = 0x6F696E61706D6F63;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0x726568746FLL;
  if (*v0)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

id sub_182091F6C()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage];
  if (v2)
  {
    MEMORY[0x1865DF520](v2, -1, -1);
  }

  MEMORY[0x1865DF520](*&v0[OBJC_IVAR____TtC7Network13__NWInterface_lock], -1, -1);
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_182092014@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (!nw_interface_key_name)
  {
    goto LABEL_31;
  }

  v3 = result;
  if (!xpc_dictionary_get_string(result, nw_interface_key_name))
  {
    swift_unknownObjectRelease();
    result = 0;
LABEL_26:
    *a2 = result;
    return result;
  }

  result = sub_182AD3158();
  v5 = v4;
  if (!nw_interface_key_index)
  {
    goto LABEL_32;
  }

  v6 = result;
  result = xpc_dictionary_get_uint64(v3, nw_interface_key_index);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!nw_interface_key_type)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v7 = result;
  result = xpc_dictionary_get_uint64(v3, nw_interface_key_type);
  if (HIDWORD(result))
  {
    goto LABEL_28;
  }

  if (result >= 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = result;
  }

  if (!nw_interface_key_subtype)
  {
    goto LABEL_34;
  }

  result = xpc_dictionary_get_uint64(v3, nw_interface_key_subtype);
  if (HIDWORD(result))
  {
    goto LABEL_29;
  }

  if (result > 4000)
  {
    if (result != 4001)
    {
      if (result == 5001)
      {
        v9 = 4;
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    v9 = 3;
  }

  else
  {
    if (result != 1001)
    {
      if (result == 1002)
      {
        v9 = 2;
        goto LABEL_23;
      }

LABEL_20:
      v9 = 0;
      goto LABEL_23;
    }

    v9 = 1;
  }

LABEL_23:
  if (nw_interface_key_generation)
  {
    uint64 = xpc_dictionary_get_uint64(v3, nw_interface_key_generation);
    result = swift_unknownObjectRelease();
    if ((uint64 & 0x8000000000000000) == 0)
    {
      type metadata accessor for Interface.BackingClass();
      result = swift_allocObject();
      *(result + 16) = v7;
      *(result + 24) = 0;
      *(result + 32) = uint64;
      *(result + 40) = v6;
      *(result + 48) = v5;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = xmmword_182AE69F0;
      *(result + 104) = 1;
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      *(result + 144) = 0u;
      *(result + 160) = 256;
      *(result + 170) = 0;
      *(result + 162) = 0;
      *(result + 175) = 0;
      *(result + 183) = 1;
      *(result + 184) = v8;
      *(result + 185) = v9;
      goto LABEL_26;
    }

    goto LABEL_30;
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_182092204()
{
  v1 = *v0;
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!nw_interface_key_type)
  {
    goto LABEL_11;
  }

  v3 = v2;
  v4 = qword_182AF2E60[*(v1 + 185)];
  xpc_dictionary_set_uint64(v2, nw_interface_key_type, *(v1 + 184));
  if (!nw_interface_key_subtype)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  xpc_dictionary_set_uint64(v3, nw_interface_key_subtype, v4);
  v5 = nw_interface_key_name;
  if (!nw_interface_key_name)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = sub_182AD3048();
  xpc_dictionary_set_string(v3, v5, (v6 + 32));

  if (!nw_interface_key_index)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(v1 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  xpc_dictionary_set_uint64(v3, nw_interface_key_index, v7);
  if (nw_interface_key_generation)
  {
    v8 = *(v1 + 32);
    if ((v8 & 0x8000000000000000) == 0)
    {
      xpc_dictionary_set_uint64(v3, nw_interface_key_generation, v8);
      return;
    }

    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
}

id sub_18209231C(unsigned int a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_182AD3158();
  sub_181C8E1E0(v2, v3, v4, v18, v19);
  type metadata accessor for Interface.BackingClass();
  v5 = swift_allocObject();
  v6 = v20[0];
  v5[9] = v19[8];
  v5[10] = v6;
  *(v5 + 170) = *(v20 + 10);
  v7 = v19[5];
  v5[5] = v19[4];
  v5[6] = v7;
  v8 = v19[7];
  v5[7] = v19[6];
  v5[8] = v8;
  v9 = v19[1];
  v5[1] = v19[0];
  v5[2] = v9;
  v10 = v19[3];
  v5[3] = v19[2];
  v5[4] = v10;
  v11 = type metadata accessor for __NWInterface();
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC7Network13__NWInterface_lock;

  v14 = swift_slowAlloc();
  *&v12[v13] = v14;
  *&v12[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
  *&v12[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v5;
  *v14 = 0;
  v17.receiver = v12;
  v17.super_class = v11;
  v15 = objc_msgSendSuper2(&v17, sel_init);

  return v15;
}

unint64_t _nw_interface_get_csum_flags(uint64_t a1)
{
  result = *(*(a1 + OBJC_IVAR____TtC7Network13__NWInterface_interface) + 112);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t _nw_interface_get_shallow_hash(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7Network13__NWInterface_interface);

  sub_182AD44E8();
  v2 = *(v1 + 184);
  v3 = *(v1 + 185);
  MEMORY[0x1865DB070](*(v1 + 16));
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF2EA0[v2]);
  MEMORY[0x1865DB070](qword_182AF2EC8[v3]);
  v4 = sub_182AD4558();

  return v4;
}

uint64_t _nw_interface_enumerate_typesTm(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = _Block_copy(a1);
  if (v9[2](v9, 0) && v9[2](v9, a2) && v9[2](v9, a3) && v9[2](v9, a4))
  {
    v10 = v9[2](v9, a5);
    _Block_release(v9);
    if (v10)
    {
      return 1;
    }
  }

  else
  {
    _Block_release(v9);
  }

  return 0;
}

void sub_18209265C()
{
  v0 = nw_protocol_copy_ip_definition();
  type metadata accessor for NWProtocolDefinition();
  v1 = swift_allocObject();
  v1[4] = v0;
  v2 = [swift_unknownObjectRetain() description];
  swift_unknownObjectRelease();
  v3 = sub_182AD2F88();
  v5 = v4;

  v1[2] = v3;
  v1[3] = v5;
  qword_1EA83A0A8 = v1;
}

double static NWProtocolIP.definition.getter()
{
  if (qword_1EA837178 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_182092760@<X0>(char *a1@<X8>)
{
  result = nw_ip_options_get_version();
  v3 = 2 * (result == 6);
  if (result == 4)
  {
    v3 = 1;
  }

  *a1 = v3;
  return result;
}

void (*sub_1820927A0(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  version = nw_ip_options_get_version();
  v4 = 2 * (version == 6);
  if (version == 4)
  {
    v4 = 1;
  }

  *(a1 + 8) = v4;
  return sub_182092800;
}

void (*sub_182092844(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = nw_ip_options_get_hop_limit();
  return sub_182092890;
}

void (*sub_1820928CC(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = nw_ip_options_get_use_minimum_mtu();
  return sub_182092918;
}

void (*sub_18209295C(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = nw_ip_options_get_fragmentation_value(v3) == 1;
  return sub_1820929B0;
}

void (*sub_1820929EC(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = nw_ip_options_get_calculate_receive_time();
  return sub_182092A38;
}

uint64_t sub_182092A54@<X0>(char *a1@<X8>)
{
  result = nw_ip_options_get_local_address_preference();
  v3 = 2 * (result == 2);
  if (result == 1)
  {
    v3 = 1;
  }

  *a1 = v3;
  return result;
}

void (*sub_182092A94(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  local_address_preference = nw_ip_options_get_local_address_preference();
  v4 = 2 * (local_address_preference == 2);
  if (local_address_preference == 1)
  {
    v4 = 1;
  }

  *(a1 + 8) = v4;
  return sub_182092AF4;
}

void (*sub_182092B2C(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = nw_ip_options_get_disable_multicast_loopback();
  return sub_182092B78;
}

uint64_t NWProtocolIP.Options.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_182092C58@<X0>(_BYTE *a1@<X8>)
{
  result = nw_ip_metadata_get_ecn_flag(*(v1 + 16));
  v4 = 0x3010200u >> (8 * result);
  if (result >= 4)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

void (*sub_182092C9C(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  ecn_flag = nw_ip_metadata_get_ecn_flag(v3);
  v5 = 0x3010200u >> (8 * ecn_flag);
  if (ecn_flag >= 4)
  {
    LOBYTE(v5) = 0;
  }

  *(a1 + 8) = v5;
  return sub_182092D00;
}

uint64_t sub_182092D38@<X0>(_BYTE *a1@<X8>)
{
  result = nw_ip_metadata_get_service_class(*(v1 + 16));
  if (result >= 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  *a1 = v4;
  return result;
}

void (*sub_182092D6C(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  service_class = nw_ip_metadata_get_service_class(v3);
  if (service_class >= (nw_service_class_responsive_data|nw_service_class_interactive_video))
  {
    v5 = 0;
  }

  else
  {
    v5 = service_class;
  }

  *(a1 + 8) = v5;
  return sub_182092DC0;
}

uint64_t NWProtocolIP.Metadata.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = nw_ip_create_metadata();
  return v0;
}

unint64_t sub_182092E4C()
{
  result = qword_1EA83A0B0;
  if (!qword_1EA83A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A0B0);
  }

  return result;
}

unint64_t sub_182092EA4()
{
  result = qword_1EA83A0B8;
  if (!qword_1EA83A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A0B8);
  }

  return result;
}

unint64_t sub_182092EFC()
{
  result = qword_1EA83A0C0;
  if (!qword_1EA83A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A0C0);
  }

  return result;
}

uint64_t static UDPProtocol.options()()
{
  if (qword_1ED410028 != -1)
  {
    swift_once();
  }

  v0 = *(&xmmword_1ED40FF68 + 1);
  v1 = unk_1ED40FF78;
  v2 = byte_1ED40FF80;
  v3 = xmmword_1ED40FF68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710, &qword_182AE4BA0);
  swift_allocObject();
  v4 = sub_181CFD414(v3, v0, v1, v2, 0);
  sub_181F49A24(v0, v1, v2);
  return v4;
}

uint64_t ProtocolOptions<>.useQUICStats.getter()
{
  v1 = (v0 + *(*v0 + 128));
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    return (*v1 >> 3) & 1;
  }

  __break(1u);
  return result;
}

uint64_t UDPProtocol.UDPInstance.__allocating_init()()
{
  v0 = swift_allocObject();
  UDPProtocol.UDPInstance.init()();
  return v0;
}

uint64_t ProtocolOptions<>.udpOptions()()
{
  v1 = v0;
  if (qword_1ED410028 != -1)
  {
    swift_once();
  }

  v2 = *(&xmmword_1ED40FF68 + 1);
  v3 = unk_1ED40FF78;
  v29 = unk_1ED40FF78;
  v30 = *(&xmmword_1ED40FF68 + 1);
  v4 = byte_1ED40FF80;
  v5 = xmmword_1ED40FF68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710, &qword_182AE4BA0);
  swift_allocObject();
  v6 = sub_181CFD414(v5, v2, v3, v4, 0);
  v7 = (v1 + *(*v1 + 128));
  swift_beginAccess();
  LOBYTE(v2) = *v7;
  v8 = v7[1];
  v9 = (v6 + *(*v6 + 128));
  swift_beginAccess();
  *v9 = v2;
  v9[1] = v8;
  swift_beginAccess();
  LOWORD(v3) = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + 40);
  swift_beginAccess();
  v13 = *(v6 + 24);
  v14 = *(v6 + 32);
  LOBYTE(v2) = *(v6 + 40);
  *(v6 + 16) = v3;
  *(v6 + 24) = v10;
  *(v6 + 32) = v11;
  *(v6 + 40) = v12;
  sub_181F49A24(v30, v29, v4);
  sub_181F49A24(v10, v11, v12);
  sub_181F48350(v13, v14, v2);
  v15 = *(*v1 + 136);
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = *(*v6 + 136);
  swift_beginAccess();
  v18 = *(v6 + v17);
  *(v6 + v17) = v16;
  v19 = v16;

  v20 = *(*v1 + 144);
  swift_beginAccess();
  v21 = *(v1 + v20);
  v22 = *(*v6 + 144);
  swift_beginAccess();
  *(v6 + v22) = v21;

  v23 = *(*v1 + 176);
  swift_beginAccess();
  LOBYTE(v23) = *(v1 + v23);
  v24 = *(*v6 + 176);
  swift_beginAccess();
  *(v6 + v24) = v23;
  v25 = *(*v1 + 184);
  swift_beginAccess();
  v26 = *(v1 + v25);
  v27 = *(*v6 + 184);
  swift_beginAccess();
  *(v6 + v27) = v26;
  return v6;
}

void sub_182093930(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 == 1)
  {
    v10 = *(a1 + 32);
  }

  else
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v5 = sub_182AD2698();
    __swift_project_value_buffer(v5, qword_1EA843348);

    v6 = sub_182AD2678();
    v7 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      v9 = *(a1 + 16);

      *(v8 + 4) = v9;

      _os_log_impl(&dword_181A37000, v6, v7, "Serialized bytes for UDP have unexpected length %ld", v8, 0xCu);
      MEMORY[0x1865DF520](v8, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v10 = 0;
  }

  *a2 = v10;
  a2[1] = v4 != 1;
}

Swift::OpaquePointer_optional __swiftcall UDPProtocol.UDPOptions.serialize()()
{
  v6[0] = *v0;
  v6[40] = 0;
  sub_181F80BF8(v6, v5);
  v4 = MEMORY[0x1E69E7CC0];
  sub_181F80BF8(v5, v3);
  sub_181F80C54(v5);
  sub_1822A69B4(&v4);
  sub_181F80C54(v3);
  sub_181F80C54(v6);
  v2 = v4;
  result.value._rawValue = v2;
  result.is_nil = v1;
  return result;
}

uint64_t UDPProtocol.UDPInstance.localAddress.getter@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 168);
  v8[0] = *(v1 + 152);
  v8[1] = v3;
  v9[0] = *(v1 + 184);
  v4 = v9[0];
  *(v9 + 12) = *(v1 + 196);
  v5 = *(v9 + 12);
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  *(a1 + 44) = v5;
  return sub_181D6B080(v8, v7);
}

uint64_t UDPProtocol.UDPInstance.localAddress.setter(_OWORD *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 168);
  v6[0] = *(v1 + 152);
  v6[1] = v3;
  v7[0] = *(v1 + 184);
  *(v7 + 12) = *(v1 + 196);
  v4 = a1[1];
  *(v1 + 152) = *a1;
  *(v1 + 168) = v4;
  *(v1 + 184) = a1[2];
  *(v1 + 196) = *(a1 + 44);
  return sub_181AA57B4(v6);
}

uint64_t UDPProtocol.UDPInstance.remoteAddress.getter@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 232);
  v8[0] = *(v1 + 216);
  v8[1] = v3;
  v9[0] = *(v1 + 248);
  v4 = v9[0];
  *(v9 + 12) = *(v1 + 260);
  v5 = *(v9 + 12);
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  *(a1 + 44) = v5;
  return sub_181D6B080(v8, v7);
}

uint64_t UDPProtocol.UDPInstance.remoteAddress.setter(_OWORD *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 232);
  v6[0] = *(v1 + 216);
  v6[1] = v3;
  v7[0] = *(v1 + 248);
  *(v7 + 12) = *(v1 + 260);
  v4 = a1[1];
  *(v1 + 216) = *a1;
  *(v1 + 232) = v4;
  *(v1 + 248) = a1[2];
  *(v1 + 260) = *(a1 + 44);
  return sub_181AA57B4(v6);
}

uint64_t UDPProtocol.UDPInstance.transmitByteCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 280) = a1;
  return result;
}

uint64_t UDPProtocol.UDPInstance.receiveByteCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 288) = a1;
  return result;
}

uint64_t UDPProtocol.UDPInstance.trafficClass.setter(int a1)
{
  result = swift_beginAccess();
  *(v1 + 296) = a1;
  return result;
}

uint64_t UDPProtocol.UDPInstance.maximumDatagramSize.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 304) = a1;
  return result;
}

uint64_t sub_182094100()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  __dst[0] = *(v0 + 16);
  __dst[1] = v2;
  LOBYTE(__dst[2]) = v3;
  sub_181F68EA8(__dst[0], v2, v3);
  InputHandlerLinkage.invokeGetPath()(__src);
  sub_181F68E5C(__dst[0], __dst[1], __dst[2]);
  memcpy(__dst, __src, 0x17AuLL);
  result = sub_181FD7540(__dst);
  if (result != 1)
  {
    if ((*(v0 + 312) & 0x400) == 0)
    {
      *(v0 + 312) |= 0x400u;
    }

    if (LOBYTE(__dst[47]) == 1)
    {
      v5 = __dst[13];
      if (!LODWORD(__dst[13]))
      {
        v6 = __dst[4];
        swift_beginAccess();
        v5 = *(v6 + 220);
      }
    }

    else
    {
      v5 = 0;
    }

    swift_beginAccess();
    *(v1 + 296) = v5;
    memcpy(v8, __dst, sizeof(v8));
    v7 = PathProperties.maximumPacketSize.getter();
    sub_181F49A88(__src, &qword_1EA83A110, &qword_182AF35F0);
    result = swift_beginAccess();
    *(v1 + 304) = v7;
    if (v7 >= 9)
    {
      *(v1 + 304) = v7 - 8;
    }
  }

  return result;
}

Swift::Bool __swiftcall UDPProtocol.UDPInstance.addInputHandler()()
{
  v1 = v0;
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v44[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v44[-1] - v6);
  sub_182094100();
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v46[0] = *(v0 + 16);
  v46[1] = v8;
  LOBYTE(v46[2]) = v9;
  sub_181F68EA8(v46[0], v8, v9);
  Local = InputHandlerLinkage.invokeGetLocalEndpoint()();
  sub_181F68E5C(v46[0], v46[1], v46[2]);
  if (!Local)
  {
    goto LABEL_9;
  }

  v11 = *(v0 + 24);
  v12 = *(v0 + 32);
  v46[0] = *(v0 + 16);
  v46[1] = v11;
  LOBYTE(v46[2]) = v12;
  sub_181F68EA8(v46[0], v11, v12);
  Remote = InputHandlerLinkage.invokeGetRemoteEndpoint()();
  sub_181F68E5C(v46[0], v46[1], v46[2]);
  if (Remote)
  {
    v14 = OBJC_IVAR____TtC7Network8Endpoint_type;
    swift_beginAccess();
    sub_181B5C0FC(Local + v14, v7);
    if (swift_getEnumCaseMultiPayload())
    {

      v15 = v7;
LABEL_8:
      sub_181B5C160(v15);
      goto LABEL_9;
    }

    v16 = v7[1];
    v54 = *v7;
    v55 = v16;
    v56[0] = v7[2];
    *(v56 + 12) = *(v7 + 44);
    v17 = OBJC_IVAR____TtC7Network8Endpoint_type;
    swift_beginAccess();
    sub_181B5C0FC(Remote + v17, v4);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_181AA57B4(&v54);

      v15 = v4;
      goto LABEL_8;
    }

    v19 = v4[1];
    v47 = *v4;
    v48 = v19;
    v49[0] = v4[2];
    *(v49 + 12) = *(v4 + 44);
    swift_beginAccess();
    v20 = *(v1 + 168);
    v50[0] = *(v1 + 152);
    v50[1] = v20;
    v51[0] = *(v1 + 184);
    *(v51 + 12) = *(v1 + 196);
    v21 = v55;
    *(v1 + 152) = v54;
    *(v1 + 168) = v21;
    *(v1 + 184) = v56[0];
    *(v1 + 196) = *(v56 + 12);
    sub_181D6B080(&v54, v46);
    sub_181AA57B4(v50);
    swift_beginAccess();
    v22 = *(v1 + 232);
    v52[0] = *(v1 + 216);
    v52[1] = v22;
    v53[0] = *(v1 + 248);
    *(v53 + 12) = *(v1 + 260);
    v23 = v48;
    *(v1 + 216) = v47;
    *(v1 + 232) = v23;
    *(v1 + 248) = v49[0];
    *(v1 + 260) = *(v49 + 12);
    sub_181D6B080(&v47, v46);
    sub_181AA57B4(v52);
    if (!*(v1 + 258))
    {
      v24 = *(v1 + 312);
      if ((v24 & 1) == 0)
      {
        *(v1 + 312) = v24 | 1;
      }
    }

    v25 = *(v1 + 24);
    v26 = *(v1 + 32);
    v46[0] = *(v1 + 16);
    v46[1] = v25;
    LOBYTE(v46[2]) = v26;
    sub_181F68EA8(v46[0], v25, v26);
    InputHandlerLinkage.invokeGetParameters()(v44);
    sub_181F68E5C(v46[0], v46[1], v46[2]);
    memcpy(v45, v44, sizeof(v45));
    memcpy(v46, v44, 0x188uLL);
    if (sub_182064A58(v46) == 1)
    {
      sub_181AA57B4(&v54);
      sub_181AA57B4(&v47);

      return 1;
    }

    v28 = *(v1 + 16);
    v27 = *(v1 + 24);
    v29 = *(v1 + 32);
    if (v29 == 4)
    {
      sub_181F68EA8(*(v1 + 16), *(v1 + 24), 4u);
      sub_181F636F0(v28, v44);
      if (v44[0])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710, &qword_182AE4BA0);
        v30 = swift_dynamicCastClass();
        if (v30)
        {
          v31 = v30;
LABEL_25:
          LOBYTE(v29) = 4;
LABEL_26:
          sub_181F68E5C(v28, v27, v29);
          v34 = (v31 + *(*v31 + 128));
          result = swift_beginAccess();
          if (v34[1])
          {
            __break(1u);
          }

          else
          {
            v35 = *v34;
            if ((*v34 & 2) == 0)
            {
LABEL_31:
              if ((v35 & 1) == 0 || (v37 = *(v1 + 312), (v37 & 0x10) != 0) || (*(v1 + 312) = v37 | 0x10, (v34[1] & 1) == 0))
              {
                v38 = *v34;
                sub_181F49A88(v45, &qword_1EA839BE8, &unk_182AF0250);

                sub_181AA57B4(&v47);
                sub_181AA57B4(&v54);
                if ((v38 & 4) != 0)
                {
                  v39 = *(v1 + 312);
                  if ((v39 & 0x40) == 0)
                  {
                    *(v1 + 312) = v39 | 0x40;
                    return 1;
                  }
                }

                return 1;
              }

LABEL_45:
              __break(1u);
              return result;
            }

            v36 = *(v1 + 312);
            if ((v36 & 0x20) != 0 || (*(v1 + 312) = v36 | 0x20, (v34[1] & 1) == 0))
            {
              v35 = *v34;
              goto LABEL_31;
            }
          }

          __break(1u);
          goto LABEL_45;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DF0, &unk_182AE7590);
        if (swift_dynamicCastClass())
        {
          v31 = ProtocolOptions<>.udpOptions()();
          swift_unknownObjectRelease();
          goto LABEL_25;
        }

        swift_unknownObjectRelease();
      }

      v40 = v28;
      v41 = v27;
      v42 = 4;
    }

    else
    {
      v44[0] = v1;
      v44[1] = 0x2000000000000000;
      sub_181F68EA8(v28, v27, v29);

      v32 = sub_181F6433C(v44);

      if (v32)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710, &qword_182AE4BA0);
        v33 = swift_dynamicCastClass();
        if (v33)
        {
          v31 = v33;
          goto LABEL_26;
        }

        swift_unknownObjectRelease();
      }

      v40 = v28;
      v41 = v27;
      v42 = v29;
    }

    sub_181F68E5C(v40, v41, v42);
    sub_181AA57B4(&v54);
    sub_181AA57B4(&v47);

    sub_181F49A88(v45, &qword_1EA839BE8, &unk_182AF0250);
    return 1;
  }

LABEL_9:
  sub_182292DC8(0xD000000000000019, 0x8000000182BDCDB0);
  return 0;
}

uint64_t ProtocolOptions<>.noMetadata.getter()
{
  v1 = (v0 + *(*v0 + 128));
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    return (*v1 >> 1) & 1;
  }

  __break(1u);
  return result;
}

uint64_t ProtocolOptions<>.preferNoChecksum.getter()
{
  v1 = (v0 + *(*v0 + 128));
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    return *v1 & 1;
  }

  __break(1u);
  return result;
}

uint64_t ProtocolOptions<>.ignoreInboundChecksum.getter()
{
  v1 = (v0 + *(*v0 + 128));
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    return (*v1 >> 2) & 1;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall UDPProtocol.UDPInstance.connected()()
{
  if ((*(v0 + 312) & 0x400) == 0)
  {
    sub_182094100();
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = v1;
  v9 = v2;
  sub_181F68EA8(v7, v1, v2);
  sub_182292B80(&v5);
  v3 = v5;
  v4 = v6;
  InputHandlerLinkage.invokeConnected(_:)(&v3);
  sub_181F68E5C(v3, *(&v3 + 1), v4);
  sub_181F68E5C(v7, v8, v9);
}

uint64_t UDPProtocol.UDPInstance.messageProperties.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 304);
  if (v4 <= 0)
  {
    v4 = 4000;
  }

  if (v4 > 0xFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 6) = 0;
    *a1 = v4;
    *(a1 + 4) = 1;
  }

  return result;
}

Swift::Int __swiftcall UDPProtocol.UDPInstance.incrementByUDPHeaderLength(_:)(Swift::Int result)
{
  if (__OFSUB__(0x7FFFFFFFFFFFFFFFLL, result))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (0x7FFFFFFFFFFFFFFFLL - result < 8)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v1 = __OFADD__(result, 8);
  result += 8;
  if (v1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_182094A70(int a1, unint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x10000) != 0)
  {
    swift_beginAccess();
    v15 = *(v2 + 168);
    v40 = *(v2 + 152);
    v41 = v15;
    *v42 = *(v2 + 184);
    *&v42[12] = *(v2 + 196);
    swift_beginAccess();
    *&v45[12] = *(v2 + 260);
    v16 = *(v2 + 248);
    v17 = *(v2 + 216);
    v44 = *(v2 + 232);
    *v45 = v16;
    v43 = v17;
    v34 = *&v42[16];
    v35 = *&v42[24];
    v32 = *&v42[14];
    v33 = v42[20];
    v31 = *&v42[12];
    v6 = *v42;
    v7 = *&v42[8];
    v8 = v42[10];
    v30 = v40;
    v28 = *&v45[16];
    v29 = *&v45[24];
    v9 = v45[20];
    v10 = HIWORD(v16);
    v11 = WORD6(v16);
    v12 = v16;
    v13 = WORD4(v16);
    v14 = BYTE10(v16);
    v36 = v44;
    v37 = v41;
    v27 = v17;
    sub_181D6B080(&v40, &v38);
    sub_181D6B080(&v43, &v38);
    v25 = 0;
  }

  else
  {
    v25 = a1;
    swift_beginAccess();
    v3 = *(v2 + 232);
    v40 = *(v2 + 216);
    v41 = v3;
    *v42 = *(v2 + 248);
    *&v42[12] = *(v2 + 260);
    swift_beginAccess();
    *&v45[12] = *(v2 + 196);
    v4 = *(v2 + 184);
    v5 = *(v2 + 152);
    v44 = *(v2 + 168);
    *v45 = v4;
    v43 = v5;
    v34 = *&v42[16];
    v35 = *&v42[24];
    v32 = *&v42[14];
    v33 = v42[20];
    v31 = *&v42[12];
    v6 = *v42;
    v7 = *&v42[8];
    v8 = v42[10];
    v30 = v40;
    v28 = *&v45[16];
    v29 = *&v45[24];
    v9 = v45[20];
    v10 = HIWORD(v4);
    v11 = WORD6(v4);
    v12 = v4;
    v13 = WORD4(v4);
    v14 = BYTE10(v4);
    v36 = v44;
    v37 = v41;
    v27 = v5;
    sub_181D6B080(&v40, &v38);
    sub_181D6B080(&v43, &v38);
  }

  v40 = v27;
  v41 = v36;
  *v42 = v12;
  *&v42[8] = v13;
  v42[10] = v14;
  *&v42[12] = v11;
  *&v42[14] = v10;
  *&v42[16] = v28;
  v42[20] = v9;
  *&v42[24] = v29;
  v43 = v30;
  v44 = v37;
  *v45 = v6;
  *&v45[8] = v7;
  v45[10] = v8;
  *&v45[12] = v31;
  *&v45[14] = v32;
  *&v45[16] = v34;
  v45[20] = v33;
  *&v45[24] = v35;
  if (*(v2 + 312))
  {
    if (v8 == 1)
    {
      goto LABEL_11;
    }

    if (!v8 && !v14)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(a2))
        {
          sub_181AA57B4(&v40);
          sub_181AA57B4(&v43);
          v22 = bswap32(a2 + 17) + v25;
          v23 = ((v22 + v37 + v36) >> 16) + (v22 + v37 + v36) + ((v22 + v37 + v36) >> 32);
          v21 = HIWORD(v23) + v23;
          goto LABEL_20;
        }

LABEL_25:
        __break(1u);
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_10:
    sub_181AA57B4(&v40);
    sub_181AA57B4(&v43);
    return 0;
  }

  if (v8 != 1)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (v14 != 1)
  {

    sub_181AA57B4(&v43);
    sub_181AA57B4(&v40);
    sub_181AD1DE4(v37, *(&v37 + 1), v6, v7, v8);
    return 0;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(a2))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v38 = v37;
  v39 = v6;
  v19 = sub_181FD75EC();
  v38 = v36;
  v39 = v12;
  v20 = sub_181FD75EC();
  sub_181AA57B4(&v40);
  sub_181AA57B4(&v43);
  if (a2 >= 0xFFFFFFEF)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = bswap32(a2 + 17) + v25 + v19 + v20;
LABEL_20:
  v24 = ((HIWORD(v21) + v21) >> 16) + (HIWORD(v21) + v21);
  return v24 + HIWORD(v24);
}

uint64_t sub_182094EA0(uint64_t result)
{
  v1 = *(result + 56);
  v2 = *(result + 64);
  v3 = *(result + 72);
  if (*(result + 24) == 5)
  {
    v4 = nw_frame_unclaimed_length(*result);
    goto LABEL_9;
  }

  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
    return result;
  }

  v4 = v3 - v5;
  if (__OFSUB__(v3, v5))
  {
    __break(1u);
LABEL_8:
    v4 = 0;
  }

LABEL_9:
  v6 = sub_181FD7694(0, v4);
  if (sub_182094A70(v6, v4) == 0xFFFF)
  {
    return 1;
  }

  sub_182292DC8(0xD000000000000016, 0x8000000182BDD020);
  return 0;
}

__n128 UDPProtocol.UDPInstance.getInputFrames(minimumBytes:maximumBytes:maximumFrameCount:)@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v238 = a3;
  v224 = a4;
  v413 = *MEMORY[0x1E69E9840];
  v10 = sub_182AD27E8();
  v11 = *(v10 - 8);
  v232 = v10;
  v233 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v228 = &v223 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8, &unk_182AF5710);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v247 = &v223 - v14;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980, &unk_182AF3120);
  v15 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v229 = &v223 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v241 = &v223 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v248 = &v223 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0, &qword_182AEE6B0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v245 = &v223 - v26;
  if (__OFSUB__(0x7FFFFFFFFFFFFFFFLL, a1))
  {
    goto LABEL_283;
  }

  v239 = 0x7FFFFFFFFFFFFFFFLL;
  if ((0x7FFFFFFFFFFFFFFFLL - a1) >= 8)
  {
    v239 = a1 + 8;
    if (__OFADD__(a1, 8))
    {
      goto LABEL_286;
    }
  }

  if (__OFSUB__(0x7FFFFFFFFFFFFFFFLL, a2))
  {
    goto LABEL_284;
  }

  if (0x7FFFFFFFFFFFFFFFLL - a2 >= 8)
  {
    v237 = a2 + 8;
    if (__OFADD__(a2, 8))
    {
      goto LABEL_287;
    }
  }

  else
  {
    v237 = 0x7FFFFFFFFFFFFFFFLL;
  }

  a1 = &v396;
  v6 = v394;
  a2 = &v312;
  sub_181F73CAC(v411);
  v27 = 0;
  v408 = v411[12];
  v409 = v411[13];
  v244 = (v15 + 48);
  v231 = (v233 + 16);
  v410 = v412;
  v225 = v233 + 8;
  v226 = "packets, checking for more";
  v235 = 0x8000000182BDCE20;
  v404 = v411[8];
  v405 = v411[9];
  v242 = 0x8000000182BDCE70;
  v243 = 0x8000000182BDCE50;
  v240 = 0x8000000182BDCEC0;
  v234 = "Received local port ";
  v406 = v411[10];
  v407 = v411[11];
  v230 = "Invalid endpoints for UDP";
  v400 = v411[4];
  v401 = v411[5];
  v402 = v411[6];
  v403 = v411[7];
  v396 = v411[0];
  v397 = v411[1];
  *&v28 = 136315394;
  v249 = v28;
  v227 = xmmword_182AE7580;
  v398 = v411[2];
  v399 = v411[3];
  while (1)
  {
    v29 = v294;
    sub_182294E28(v239, v237, v238, v394);
    if ((*(v29 + 312) & 0x200) != 0)
    {
      v30 = v294;
      *(v294 + 312) = *(v29 + 312) & 0xFDFF;
      v31 = *(v30 + 16);
      v32 = *(v30 + 24);
      v33 = *(v30 + 32);
      *&v382 = v31;
      *(&v382 + 1) = v32;
      LOBYTE(v383) = v33;
      if (*(v30 + 128) == 6 && *(v294 + 112) == 0)
      {
        v39 = v294;
        *(v294 + 112) = v294;
        *(v39 + 120) = 0;
        *(v39 + 128) = 1;
        sub_181F68EA8(v31, v32, v33);

        sub_181F68E5C(0, 0, 6u);
        if (*(v39 + 128) == 6 && *(v294 + 112) == 0)
        {
          v40 = v294;
          *(v294 + 112) = v294;
          *(v40 + 120) = 0;
          *(v40 + 128) = 1;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v31, v32, v33);
      }

      v34 = *(v294 + 120);
      v35 = *(v294 + 128);
      *&v367 = *(v294 + 112);
      *(&v367 + 1) = v34;
      LOBYTE(v368) = v35;
      LODWORD(v341) = 0;
      BYTE4(v341) = 1;
      sub_181F68EA8(v367, v34, v35);
      InputHandlerLinkage.invokeError(_:error:)(&v367, &v341);
      sub_181F68E5C(v367, *(&v367 + 1), v368);
      sub_181F68E5C(v382, *(&v382 + 1), v383);
    }

    v391[1] = v394[12];
    v392 = v394[13];
    v393 = v395;
    v388 = v394[8];
    v389 = v394[9];
    v390 = v394[10];
    v391[0] = v394[11];
    v385[1] = v394[4];
    v385[2] = v394[5];
    v386 = v394[6];
    v387 = v394[7];
    v382 = v394[0];
    v383 = v394[1];
    v384 = v394[2];
    v385[0] = v394[3];
    isUniquelyReferenced_nonNull_native = sub_181F3D1E4(&v382);
    if (isUniquelyReferenced_nonNull_native == 1)
    {
      break;
    }

    v15 = v393;
    a1 = *(&v392 + 1);
    if (v393)
    {
      v236 = 0;
    }

    else
    {
      if (*(&v392 + 1))
      {
        v37 = *(*(&v392 + 1) + 24);
        v42 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v42)
        {
          goto LABEL_276;
        }
      }

      else
      {
        v38 = 1;
        if (__OFSUB__(isUniquelyReferenced_nonNull_native, 1))
        {
          goto LABEL_276;
        }
      }

      v236 = v38;
    }

    v7 = *(&v391[1] + 1);
    v278 = v392;
    v279 = BYTE2(v391[1]);
    v6 = *(v391 + 1);
    v283 = *(v391 + 9);
    v271 = BYTE1(v391[1]);
    v277 = LOBYTE(v391[0]);
    v289 = *(&v390 + 1);
    v281 = *(&v389 + 1);
    *&v284[4] = v389;
    *v284 = v390;
    LODWORD(v282) = WORD5(v388);
    v270 = BYTE12(v388);
    v276 = v386;
    v280 = v388;
    v275 = WORD4(v388);
    HIDWORD(v282) = BYTE8(v385[2]);
    v272 = *(&v385[1] + 8);
    v273 = *(v385 + 8);
    v274 = v387;
    *&v287 = *(&v384 + 1);
    *(&v287 + 1) = v384;
    v285 = LOBYTE(v385[0]);
    v41 = *(&v382 + 1);
    v4 = v382;
    v288 = v383;
    v286 = BYTE8(v383);
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    if ((v15 & 1) == 0)
    {
      v268 = v7;
      v269 = v6;
      isUniquelyReferenced_nonNull_native = a1;
      a2 = v41;
      while (1)
      {
        v290 = v27;
        v24 = a2;
        v23 = v288;
        v43 = v286;
        v5 = v287;
        LOBYTE(v7) = v285;
        v6 = *&v284[4];
        a2 = v281;
        v15 = v289;
        v25 = v279;
        if (isUniquelyReferenced_nonNull_native)
        {
          v44 = *(isUniquelyReferenced_nonNull_native + 24);
          v42 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v42)
          {
            goto LABEL_265;
          }
        }

        else
        {
          v45 = 1;
          if (v42)
          {
LABEL_265:
            __break(1u);
LABEL_266:
            __break(1u);
LABEL_267:
            __break(1u);
LABEL_268:
            __break(1u);
LABEL_269:
            __break(1u);
LABEL_270:
            __break(1u);
LABEL_271:
            __break(1u);
            goto LABEL_272;
          }
        }

        if (v45 < 1)
        {
          a2 = v24;
          v27 = v290;
          goto LABEL_248;
        }

        v253 = v277;
        v254 = v279;
        v255 = v24;
        v256 = v288;
        v257 = HIDWORD(v282);
        v258 = *(&v287 + 1);
        v259 = v280;
        v260 = v275;
        v261 = v282;
        v262 = v276;
        v263 = v274;
        v264 = v269;
        v265 = v283;
        v266 = v268;
        LODWORD(v267) = v278;
        v291 = v272;
        v293 = v273;
        v297 = v270 & 1;
        v296 = v284[0] & 1;
        v295 = v271 & 1;
        if (isUniquelyReferenced_nonNull_native && (*&v367 = isUniquelyReferenced_nonNull_native, *(isUniquelyReferenced_nonNull_native + 24)))
        {
          a1 = isUniquelyReferenced_nonNull_native;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v292 = a1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_1820E5FD0();
            a1 = v367;
          }

          v46 = *(a1 + 32);
          v47 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_266;
          }

          v48 = v15;
          v15 = *(a1 + 8 * v46 + 40);
          v49 = *(a1 + 24);
          if (v47 >= *(a1 + 16))
          {
            v47 = 0;
          }

          *(a1 + 32) = v47;
          if (__OFSUB__(v49, 1))
          {
            goto LABEL_267;
          }

          *(a1 + 24) = v49 - 1;
          LOBYTE(v341) = 1;
          LOBYTE(v312) = 1;
          LOBYTE(v327) = 1;
          swift_beginAccess();
          v50 = v341;
          v51 = v312;
          v52 = v327;
          v252 = *(v15 + 16);
          v251 = *(v15 + 24);
          v288 = *(v15 + 32);
          v286 = *(v15 + 40);
          *(&v287 + 1) = *(v15 + 48);
          *&v287 = *(v15 + 56);
          v285 = *(v15 + 64);
          v53 = *(v15 + 72);
          v272 = *(v15 + 88);
          v273 = v53;
          HIDWORD(v282) = *(v15 + 104);
          v54 = *(v15 + 112);
          v274 = *(v15 + 128);
          v276 = v54;
          v280 = *(v15 + 144);
          v275 = *(v15 + 152);
          LODWORD(v282) = *(v15 + 154);
          *&v284[4] = *(v15 + 160);
          v281 = *(v15 + 168);
          v289 = *(v15 + 184);
          v269 = *(v15 + 193);
          v283 = *(v15 + 201);
          v268 = *(v15 + 216);
          v278 = *(v15 + 224);
          v279 = *(v15 + 210);
          v277 = *(v15 + 192);
          *v284 = *(v15 + 176);
          v270 = *(v15 + 156);
          v271 = *(v15 + 209);
          *(v15 + 16) = 0;
          *(v15 + 24) = 0;
          *(v15 + 32) = 0;
          *(v15 + 40) = 6;
          *(v15 + 48) = 0;
          *(v15 + 56) = 0;
          *(v15 + 64) = 2;
          *(v15 + 72) = 0u;
          *(v15 + 88) = 0u;
          *(v15 + 104) = 0;
          *(v15 + 112) = 0u;
          *(v15 + 128) = 0u;
          *(v15 + 144) = 0;
          *(v15 + 152) = 2;
          *(v15 + 156) = v50;
          *(v15 + 160) = 0;
          *(v15 + 168) = 0;
          *(v15 + 176) = v51;
          *(v15 + 192) = 0;
          *(v15 + 200) = 0;
          *(v15 + 184) = 0;
          *(v15 + 208) = 0;
          *(v15 + 209) = v52;
          *(v15 + 210) = 0;
          *(v15 + 216) = 0;
          *(v15 + 224) = -1;

          v250 = 0;
          v15 = v48;
        }

        else
        {
          LOBYTE(v367) = 1;
          LOBYTE(v341) = 1;
          v250 = 1;
          LOBYTE(v312) = 1;

          a1 = 0;
          v251 = 0;
          v252 = 0;
          v288 = 0;
          v287 = 0uLL;
          v282 = 0;
          v280 = 0;
          *&v284[8] = 0;
          v281 = 0;
          v289 = 0;
          v277 = 0;
          v268 = 0;
          v269 = 0;
          v283 = 0;
          v279 = 0;
          *v284 = v341;
          v270 = v367;
          v271 = v312;
          v276 = 0u;
          v278 = 255;
          v273 = 0u;
          v274 = 0u;
          v285 = 2;
          v286 = 6;
          v272 = 0u;
          v275 = 2;
        }

        *&v356 = v4;
        *(&v356 + 1) = v255;
        *&v357 = v256;
        BYTE8(v357) = v43;
        *(&v357 + 9) = v311[0];
        HIDWORD(v357) = *(v311 + 3);
        *&v358 = v258;
        *(&v358 + 1) = v5;
        LOBYTE(v359[0]) = v7;
        *(v359 + 1) = *v310;
        DWORD1(v359[0]) = *&v310[3];
        *(v359 + 8) = v293;
        *(&v359[1] + 8) = v291;
        BYTE8(v359[2]) = v257;
        HIDWORD(v359[2]) = *&v309[3];
        *(&v359[2] + 9) = *v309;
        v360 = v262;
        v361 = v263;
        *&v362 = v259;
        WORD4(v362) = v260;
        WORD5(v362) = v261;
        BYTE12(v362) = v297;
        *(&v362 + 13) = v307;
        HIBYTE(v362) = v308;
        *&v363 = v6;
        *(&v363 + 1) = a2;
        LOBYTE(v364) = v296;
        DWORD1(v364) = *&v306[3];
        *(&v364 + 1) = *v306;
        *(&v364 + 1) = v15;
        LOBYTE(v365[0]) = v253 & 1;
        *(v365 + 1) = v264;
        *(v365 + 9) = v265;
        BYTE1(v365[1]) = v295;
        BYTE2(v365[1]) = v254 & 1;
        BYTE7(v365[1]) = v305;
        *(&v365[1] + 3) = v304[1];
        *(&v365[1] + 1) = v266;
        v366 = v267;
        v292 = a1;
        if (v43 == 5)
        {
          isUniquelyReferenced_nonNull_native = nw_frame_unclaimed_length(v4);
          v6 = isUniquelyReferenced_nonNull_native;
        }

        else if (v291)
        {
          v55 = v293 + *(&v293 + 1);
          if (__OFADD__(v293, *(&v293 + 1)))
          {
            goto LABEL_270;
          }

          v6 = v291 - v55;
          v4 = &v312;
          if (__OFSUB__(v291, v55))
          {
            goto LABEL_271;
          }
        }

        else
        {
          v6 = 0;
        }

        v7 = &v223;
        v304[0] = 0;
        v303 = 0;
        MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
        *(&v223 - 4) = v304 + 2;
        *(&v223 - 3) = v304;
        *(&v223 - 2) = &v303 + 2;
        *(&v223 - 1) = &v303;
        *&v291 = v6;
        if (BYTE8(v357) != 2)
        {
          goto LABEL_62;
        }

        v267 = &v223 - 6;
        v56 = swift_projectBox();
        v57 = v245;
        sub_181AB5D28(v56, v245, &qword_1EA8398E0, &qword_182AEE6B0);
        v58 = sub_182AD2868();
        v59 = *(*(v58 - 8) + 8);
        v59(v57, v58);
        v377 = v364;
        v378 = v365[0];
        v379 = v365[1];
        LOBYTE(v380) = v366;
        v373 = v360;
        v374 = v361;
        v375 = v362;
        v376 = v363;
        v369 = v358;
        v370 = v359[0];
        v371 = v359[1];
        v372 = v359[2];
        v367 = v356;
        v368 = v357;
        v5 = v247;
        sub_1821438A8(v247);
        if ((*v244)(v5, 1, v246) == 1)
        {
          break;
        }

        v67 = v248;
        sub_182022420(v5, v248);
        v68 = v241;
        sub_181AB5D28(v67, v241, &unk_1EA83A980, &unk_182AF3120);
        v69 = sub_182AD27F8();
        v59(v68, v58);
        v70 = *(v69 + 16);

        if (v70)
        {
          v266 = &v223;
          if (v70 == 1)
          {
            v71 = v248;
            v72 = v229;
            v5 = &unk_1EA83A980;
            sub_181AB5D28(v248, v229, &unk_1EA83A980, &unk_182AF3120);
            v73 = sub_182AD27F8();
            v59(v72, v58);
            if (!*(v73 + 16))
            {
              goto LABEL_293;
            }

            v74 = v232;
            v75 = v233;
            v76 = v228;
            (*(v233 + 16))(v228, v73 + ((*(v75 + 80) + 32) & ~*(v75 + 80)), v232);

            MEMORY[0x1EEE9AC00](v77);
            *(&v223 - 4) = &v356;
            *(&v223 - 24) = 0;
            v78 = v267;
            *(&v223 - 2) = sub_182099900;
            *(&v223 - 1) = v78;
            v79 = v290;
            sub_182AD27D8();
            v290 = v79;
            sub_181F49A88(v71, &unk_1EA83A980, &unk_182AF3120);
            (*(v75 + 8))(v76, v74);
          }

          else
          {
            v341 = v227;
            v80 = v241;
            sub_181AB5D28(v248, v241, &unk_1EA83A980, &unk_182AF3120);
            v5 = sub_182AD27F8();
            v59(v80, v58);
            v81 = *(v5 + 2);
            if (v81)
            {
              v82 = v232;
              v83 = *(v233 + 80);
              v265 = v5;
              v84 = &v5[(v83 + 32) & ~v83];
              *&v293 = *(v233 + 72);
              v5 = &v356;
              v85 = v290;
              v86 = v231;
              do
              {
                *(&v368 + 1) = v82;
                *&v369 = MEMORY[0x1E6969D40];
                boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v367);
                (*v86)(boxed_opaque_existential_0Tm, v84, v82);
                __swift_project_boxed_opaque_existential_1(&v367, *(&v368 + 1));
                sub_182AD1DC8();
                v88 = v312;
                __swift_destroy_boxed_opaque_existential_1(&v367);
                sub_182AD2178();
                sub_181C1F2E4(v88, *(&v88 + 1));
                v84 += v293;
                --v81;
              }

              while (v81);
              v290 = v85;
            }

            else
            {
            }

            v92 = v341;
            MEMORY[0x1EEE9AC00](v89);
            *(&v223 - 4) = &v356;
            *(&v223 - 24) = 0;
            v93 = v267;
            *(&v223 - 2) = sub_182099900;
            *(&v223 - 1) = v93;
            v94 = v290;
            sub_1820E375C(sub_182022490, (&v223 - 6), v92, *(&v92 + 1));
            v290 = v94;
            sub_181F49A88(v248, &unk_1EA83A980, &unk_182AF3120);
            sub_181C1F2E4(v92, *(&v92 + 1));
          }

          v6 = v291;
          LOBYTE(v7) = v266;
        }

        else
        {
          sub_181F49A88(v248, &unk_1EA83A980, &unk_182AF3120);
          *&v367 = 1;
          BYTE8(v367) = 1;
        }

LABEL_88:
        if (BYTE8(v367) == 1 && v367)
        {
          if (v367 == 1)
          {
            *&v367 = 0;
            *(&v367 + 1) = 0xE000000000000000;
            sub_182AD3BA8();

            *&v367 = 0xD000000000000029;
            *(&v367 + 1) = v235;
            *&v341 = v6;
            v95 = sub_182AD41B8();
            MEMORY[0x1865D9CA0](v95);

            v96 = v367;
            v7 = *(v294 + 72);
            v6 = *(v294 + 80);
            v97 = qword_1EA8371A0;

            if (v97 != -1)
            {
              swift_once();
            }

            v98 = sub_182AD2698();
            __swift_project_value_buffer(v98, qword_1EA843348);

            v99 = sub_182AD2678();
            LOBYTE(v5) = sub_182AD3898();

            if (os_log_type_enabled(v99, v5))
            {
              v100 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              *&v367 = v101;
              *v100 = v249;
              v7 = sub_181C64FFC(v7, v6, &v367);

              *(v100 + 4) = v7;
              *(v100 + 12) = 2080;
              *(v100 + 14) = sub_181C64FFC(v96, *(&v96 + 1), &v367);
              _os_log_impl(&dword_181A37000, v99, v5, "%s %s", v100, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1865DF520](v101, -1, -1);
              MEMORY[0x1865DF520](v100, -1, -1);
            }

            else
            {
            }

            goto LABEL_112;
          }

          v106 = *(v294 + 72);
          v105 = *(v294 + 80);
          v107 = qword_1EA8371A0;

          if (v107 != -1)
          {
            swift_once();
          }

          v108 = sub_182AD2698();
          __swift_project_value_buffer(v108, qword_1EA843348);

          v99 = sub_182AD2678();
          v109 = sub_182AD3898();

          if (os_log_type_enabled(v99, v109))
          {
            v5 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            *&v367 = v110;
            *v5 = v249;
            v111 = sub_181C64FFC(v106, v105, &v367);

            *(v5 + 4) = v111;
            *(v5 + 6) = 2080;
            *(v5 + 14) = sub_181C64FFC(0xD00000000000001ALL, v226 | 0x8000000000000000, &v367);
            _os_log_impl(&dword_181A37000, v99, v109, "%s %s", v5, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v110, -1, -1);
            MEMORY[0x1865DF520](v5, -1, -1);
          }

          else
          {
LABEL_112:
          }

          goto LABEL_162;
        }

        v102 = HIWORD(v304[0]);
        if (*(v294 + 258) <= 1u)
        {
          if (*(v294 + 258))
          {
            if (HIWORD(v304[0]) == *(v294 + 256))
            {
LABEL_110:
              LOBYTE(v102) = 0;
              goto LABEL_121;
            }
          }

          else if (HIWORD(v304[0]) == *(v294 + 248))
          {
            goto LABEL_110;
          }
        }

        else if (!HIWORD(v304[0]))
        {
          goto LABEL_121;
        }

        *&v367 = 0;
        *(&v367 + 1) = 0xE000000000000000;
        sub_182AD3BA8();

        *&v367 = 0xD000000000000015;
        *(&v367 + 1) = v243;
        LOWORD(v341) = __rev16(v102);
        v103 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v103);

        MEMORY[0x1865D9CA0](540877088, 0xE400000000000000);
        if (*(v294 + 258) <= 1u)
        {
          if (*(v294 + 258))
          {
            v104 = *(v294 + 256);
          }

          else
          {
            v104 = *(v294 + 248);
          }
        }

        else
        {
          v104 = 0;
        }

        LOWORD(v341) = bswap32(v104) >> 16;
        v112 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v112);

        v113 = v367;
        v115 = *(v294 + 72);
        v114 = *(v294 + 80);
        v116 = qword_1EA8371A0;

        if (v116 != -1)
        {
          swift_once();
        }

        v117 = sub_182AD2698();
        __swift_project_value_buffer(v117, qword_1EA843348);

        v118 = sub_182AD2678();
        LOBYTE(v5) = sub_182AD38B8();

        if (os_log_type_enabled(v118, v5))
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          *&v367 = v120;
          *v119 = v249;
          v121 = sub_181C64FFC(v115, v114, &v367);

          *(v119 + 4) = v121;
          *(v119 + 12) = 2080;
          *(v119 + 14) = sub_181C64FFC(v113, *(&v113 + 1), &v367);
          _os_log_impl(&dword_181A37000, v118, v5, "%s %s", v119, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v120, -1, -1);
          MEMORY[0x1865DF520](v119, -1, -1);
        }

        else
        {
        }

        LOBYTE(v102) = 1;
        v6 = v291;
LABEL_121:
        a1 = LOWORD(v304[0]);
        if (*(v294 + 194) <= 1u)
        {
          if (*(v294 + 194))
          {
            if (LOWORD(v304[0]) != *(v294 + 192))
            {
LABEL_131:
              *&v367 = 0;
              *(&v367 + 1) = 0xE000000000000000;
              sub_182AD3BA8();

              *&v367 = 0xD000000000000014;
              *(&v367 + 1) = v242;
              LOWORD(v341) = __rev16(a1);
              v122 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v122);

              MEMORY[0x1865D9CA0](540877088, 0xE400000000000000);
              if (*(v294 + 194) <= 1u)
              {
                if (*(v294 + 194))
                {
                  v123 = *(v294 + 192);
                }

                else
                {
                  v123 = *(v294 + 184);
                }
              }

              else
              {
                v123 = 0;
              }

              LOWORD(v341) = bswap32(v123) >> 16;
              v124 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v124);

              a1 = *(&v367 + 1);
              v125 = v367;
              v127 = *(v294 + 72);
              v126 = *(v294 + 80);
              v128 = qword_1EA8371A0;

              if (v128 != -1)
              {
                swift_once();
              }

              v129 = sub_182AD2698();
              __swift_project_value_buffer(v129, qword_1EA843348);

              v130 = sub_182AD2678();
              LOBYTE(v5) = sub_182AD38B8();

              if (os_log_type_enabled(v130, v5))
              {
                v131 = swift_slowAlloc();
                v132 = swift_slowAlloc();
                *&v367 = v132;
                *v131 = v249;
                v133 = sub_181C64FFC(v127, v126, &v367);

                *(v131 + 4) = v133;
                *(v131 + 12) = 2080;
                *(v131 + 14) = sub_181C64FFC(v125, a1, &v367);
                _os_log_impl(&dword_181A37000, v130, v5, "%s %s", v131, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x1865DF520](v132, -1, -1);
                MEMORY[0x1865DF520](v131, -1, -1);
              }

              else
              {
              }

              LOBYTE(v102) = 1;
              v6 = v291;
            }
          }

          else if (LOWORD(v304[0]) != *(v294 + 184))
          {
            goto LABEL_131;
          }
        }

        else if (*(v294 + 194) == 2)
        {
          if (LOWORD(v304[0]))
          {
            goto LABEL_131;
          }
        }

        else if (LOWORD(v304[0]))
        {
          goto LABEL_131;
        }

        v7 = HIWORD(v303);
        if (v6 < HIWORD(v303))
        {
          *&v367 = 0;
          *(&v367 + 1) = 0xE000000000000000;
          sub_182AD3BA8();

          *&v367 = 0xD000000000000010;
          *(&v367 + 1) = v240;
          v266 = v7;
          LOWORD(v341) = v7;
          v134 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v134);

          MEMORY[0x1865D9CA0](2113056, 0xE300000000000000);
          *&v341 = v6;
          v135 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v135);

          a1 = *(&v367 + 1);
          v136 = v367;
          v138 = *(v294 + 72);
          v137 = *(v294 + 80);
          v139 = qword_1EA8371A0;

          if (v139 != -1)
          {
            swift_once();
          }

          v140 = sub_182AD2698();
          __swift_project_value_buffer(v140, qword_1EA843348);

          v141 = sub_182AD2678();
          LOBYTE(v5) = sub_182AD38B8();

          if (os_log_type_enabled(v141, v5))
          {
            v142 = swift_slowAlloc();
            v143 = swift_slowAlloc();
            *&v367 = v143;
            *v142 = v249;
            v144 = sub_181C64FFC(v138, v137, &v367);

            *(v142 + 4) = v144;
            *(v142 + 12) = 2080;
            *(v142 + 14) = sub_181C64FFC(v136, a1, &v367);
            _os_log_impl(&dword_181A37000, v141, v5, "%s %s", v142, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v143, -1, -1);
            MEMORY[0x1865DF520](v142, -1, -1);
          }

          else
          {
          }

          LOBYTE(v102) = 1;
          v6 = v291;
          v7 = v266;
        }

        if ((*(v294 + 312) & 1) == 0 && !v303)
        {
          v145 = *(v294 + 72);
          a1 = *(v294 + 80);
          v146 = qword_1EA8371A0;

          if (v146 != -1)
          {
            swift_once();
          }

          v147 = sub_182AD2698();
          __swift_project_value_buffer(v147, qword_1EA843348);

          v148 = sub_182AD2678();
          LOBYTE(v5) = sub_182AD38B8();

          if (os_log_type_enabled(v148, v5))
          {
            v149 = swift_slowAlloc();
            v150 = swift_slowAlloc();
            *&v367 = v150;
            *v149 = v249;
            v151 = sub_181C64FFC(v145, a1, &v367);

            *(v149 + 4) = v151;
            *(v149 + 12) = 2080;
            *(v149 + 14) = sub_181C64FFC(0xD00000000000002ALL, v234 | 0x8000000000000000, &v367);
            _os_log_impl(&dword_181A37000, v148, v5, "%s %s", v149, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v150, -1, -1);
            MEMORY[0x1865DF520](v149, -1, -1);
          }

          else
          {
          }

          LOBYTE(v102) = 1;
        }

        v152 = *(v294 + 312);
        if ((v152 & 0x40) != 0 || !v303)
        {
          if (v102)
          {
            goto LABEL_162;
          }

LABEL_167:
          if ((v152 & 0x20) == 0)
          {
            v4 = &v312;
            if (qword_1ED410028 != -1)
            {
              swift_once();
            }

            a2 = xmmword_1ED40FF68;
            v156 = *(&xmmword_1ED40FF68 + 1);
            a1 = unk_1ED40FF78;
            v157 = byte_1ED40FF80;
            v5 = &v356;
            v367 = 0uLL;
            nw_uuid_generate_insecure_2(&v367);
            v327 = v367;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D58, &unk_182AF3130);
            v158 = swift_allocObject();
            *(v158 + 57) = 256;
            *(v158 + 8) = a2;
            v158[3] = v156;
            v158[4] = a1;
            *(v158 + 40) = v157;
            *(v158 + 41) = v327;
            swift_beginAccess();
            *(v158 + 58) = 0;
            if (BYTE8(v357) == 5)
            {
              v159 = v356;
              sub_181F49A24(v156, a1, v157);
              nw_frame_set_metadata(v159, 0, 1, 1);

              a2 = &v396;
              v6 = v291;
              goto LABEL_206;
            }

            v267 = v158;
            v265 = sub_18209990C();
            v160 = *(&v364 + 1);
            if (!*(&v364 + 1))
            {
              v302 = *(v267 + 41);
              v162 = a1;
              a1 = v267;
              sub_181F49A24(v156, v162, v157);

              v15 = *sub_182AD2388();
              *(&v364 + 1) = v15;

              v6 = v291;
              v163 = *(v15 + 24);
              if ((v163 & 0x8000000000000000) == 0)
              {
                goto LABEL_195;
              }

              goto LABEL_277;
            }

            v161 = *(*(&v364 + 1) + 24);
            v266 = v7;
            if (v161)
            {
              LOBYTE(v5) = v267;
              v301 = *(v267 + 41);
            }

            else
            {
              LOBYTE(v365[0]) = 1;
              LOBYTE(v5) = v267;
              v301 = *(v267 + 41);
              v161 = *(*(&v364 + 1) + 24);
            }

            a2 = *(*(&v364 + 1) + 32);
            v164 = v161 + a2;
            if (*(*(&v364 + 1) + 16) >= v164)
            {
              v165 = v164;
            }

            else
            {
              v165 = *(*(&v364 + 1) + 16);
            }

            *&v312 = *(&v364 + 1);
            *(&v312 + 1) = a2;
            *&v313 = v165;

            sub_181F49A24(v156, a1, v157);

            v264 = v160;
            a1 = v160;
            while (1)
            {
              if (a2 == v165)
              {
                if ((sub_181AC81FC(v166) & 1) == 0)
                {

                  v302 = v301;
                  v15 = *(&v364 + 1);
                  v6 = v291;
                  v7 = v266;
                  a1 = v267;
                  v163 = *(*(&v364 + 1) + 24);
                  if ((v163 & 0x8000000000000000) == 0)
                  {
LABEL_195:
                    a2 = v163 + 1;
                    if (!__OFADD__(v163, 1))
                    {

                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v179 = *(&v364 + 1);
                      if (*(*(&v364 + 1) + 16) >= a2 && (isUniquelyReferenced_nonNull_native & 1) != 0)
                      {
                        v180 = *(*(&v364 + 1) + 32);
                        if (v180)
                        {
                          goto LABEL_199;
                        }

LABEL_203:
                        v182 = v179[2];
                        v42 = __OFSUB__(v182, 1);
                        v181 = v182 - 1;
                        a2 = &v396;
                        if (!v42)
                        {
                          goto LABEL_204;
                        }

LABEL_282:
                        __break(1u);
LABEL_283:
                        __break(1u);
LABEL_284:
                        __break(1u);
LABEL_285:
                        __break(1u);
LABEL_286:
                        __break(1u);
LABEL_287:
                        __break(1u);
LABEL_288:
                        sub_181F68EF4(isUniquelyReferenced_nonNull_native, v23, v24, v25);

                        sub_181F68F3C(a2, a1, v4);
                        __break(1u);
LABEL_289:
                        __break(1u);
LABEL_290:
                        sub_181F68EF4(v4, a2, v288, v286);

                        sub_181F68F3C(v15, a1, v5);
                        __break(1u);
LABEL_291:
                        sub_181F68EF4(*(v4 + 464), *(v4 + 472), *(v4 + 480), BYTE8(v342));

                        sub_181F68F3C(v15, a2, a1);
                        __break(1u);
LABEL_292:
                        sub_181F68EF4(v267, a1, v4, v5);

                        sub_181F68F3C(v6, v15, v7);
                        __break(1u);
LABEL_293:

                        __break(1u);
                      }

                      v15 = &v364 + 8;
                      isUniquelyReferenced_nonNull_native = sub_181F463C8(isUniquelyReferenced_nonNull_native, a2, 0);
                      v179 = *(&v364 + 1);
                      v180 = *(*(&v364 + 1) + 32);
                      if (!v180)
                      {
                        goto LABEL_203;
                      }

LABEL_199:
                      v42 = __OFSUB__(v180, 1);
                      v181 = v180 - 1;
                      a2 = &v396;
                      if (!v42)
                      {
LABEL_204:
                        v183 = &v179[5 * v181];
                        *(v183 + 5) = v302;
                        v184 = v265;
                        v183[7] = a1;
                        v183[8] = v184;
                        *(v183 + 72) = 1;
                        v179[4] = v181;
                        v185 = v179[3];
                        v42 = __OFADD__(v185, 1);
                        v186 = v185 + 1;
                        if (!v42)
                        {
                          v179[3] = v186;

                          goto LABEL_206;
                        }

LABEL_279:
                        __break(1u);
                      }

                      __break(1u);
LABEL_281:
                      __break(1u);
                      goto LABEL_282;
                    }

LABEL_278:
                    __break(1u);
                    goto LABEL_279;
                  }

LABEL_277:
                  __break(1u);
                  goto LABEL_278;
                }

                a2 = *(&v312 + 1);
                a1 = v312;
              }

              LOBYTE(v5) = a2 + 1;
              *(&v312 + 1) = a2 + 1;
              v167 = a1 + 40 * a2;
              v168 = *(v167 + 56);
              v169 = *(v167 + 72);
              v170 = *(v167 + 40);
              LOBYTE(v369) = v169;
              v367 = v170;
              v368 = v168;
              v299 = v170;
              v300 = v170;
              v293 = v168;
              v298 = v301;
              sub_181F49AE8(&v367, &v341);
              if (!uuid_compare(&v299, &v298))
              {
                v171 = *(&v368 + 1);
                ObjectType = swift_getObjectType();
                v173 = v267[3];
                v174 = v267[4];
                v175 = *(v267 + 40);
                LOWORD(v341) = *(v267 + 8);
                *(&v341 + 1) = v173;
                *&v342 = v174;
                BYTE8(v342) = v175;
                v176 = *(v171 + 48);
                v177 = sub_181F49A24(v173, v174, v175);
                v178 = v176(&v341, ObjectType, v171, v177);
                sub_181F48350(*(&v341 + 1), v342, SBYTE8(v342));
                if (v178)
                {

                  sub_18206A19C(&v367);
                  v341 = v300;
                  *&v342 = v267;
                  *(&v342 + 1) = v265;
                  LOBYTE(v343) = 1;
                  sub_18206A19C(&v341);

                  a2 = &v396;
                  v6 = v291;
                  v7 = v266;
                  goto LABEL_206;
                }
              }

              v341 = v300;
              v342 = v293;
              LOBYTE(v343) = v169;
              sub_18206A19C(&v341);
              v165 = v313;
              ++a2;
            }
          }

          v4 = &v312;
          a2 = &v396;
          if (BYTE8(v357) == 5)
          {
            nw_frame_set_metadata(v356, 0, 1, 1);
          }

          else if (*(&v364 + 1) && !*(*(&v364 + 1) + 24))
          {
            LOBYTE(v365[0]) = 1;
          }

LABEL_206:
          v15 = &v356;
          Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(8, 0, 1);
          if (v6 > v7)
          {
            v15 = &v356;
            Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(0, v6 - v7, 1);
          }

          v379 = v408;
          v380 = v409;
          v381 = v410;
          v375 = v404;
          v376 = v405;
          v377 = v406;
          v378 = v407;
          v371 = v400;
          v372 = v401;
          v373 = v402;
          v374 = v403;
          v367 = v396;
          v368 = v397;
          v369 = v398;
          v370 = v399;
          if (sub_181F3D1E4(&v367) == 1)
          {
            v337 = v364;
            v338 = v365[0];
            v339 = v365[1];
            LOBYTE(v340) = v366;
            v333 = v360;
            v334 = v361;
            v335 = v362;
            v336 = v363;
            v329 = v358;
            v330 = v359[0];
            v331 = v359[1];
            v332 = v359[2];
            v327 = v356;
            v328 = v357;
            v353 = v408;
            v354 = v409;
            v355 = v410;
            v349 = v404;
            v350 = v405;
            v351 = v406;
            v352 = v407;
            v345 = v400;
            v346 = v401;
            v347 = v402;
            v348 = v403;
            v341 = v396;
            v342 = v397;
            v343 = v398;
            v344 = v399;
            if (sub_181F3D1E4(&v341) != 1)
            {

              a2 = *(&v343 + 1);
              v15 = v343;
              a1 = v344.n128_u8[0];
              if (v344.n128_u8[0] != 2 || v343 != 0)
              {
                goto LABEL_291;
              }

              if ((v351 & 1) == 0 && v350)
              {
                MEMORY[0x1865DF520](v350, -1, -1);
              }

              sub_181F68EF4(v341, *(&v341 + 1), v342, BYTE8(v342));
            }

            v322 = v337;
            v323 = v338;
            v324 = v339;
            v318 = v333;
            v319 = v334;
            v320 = v335;
            v321 = v336;
            v314 = v329;
            v315 = v330;
            v316 = v331;
            v317 = v332;
            v312 = v327;
            v313 = v328;
            v325 = v340;
            v326 = 0;
            nullsub_41();
            v408 = v324;
            v409 = v325;
            v410 = v326;
            v404 = v320;
            v405 = v321;
            v406 = v322;
            v407 = v323;
            v400 = v316;
            v401 = v317;
            v402 = v318;
            v403 = v319;
            v396 = v312;
            v397 = v313;
            v398 = v314;
            v399 = v315;
            v27 = v290;
            isUniquelyReferenced_nonNull_native = v292;
            a2 = v251;
            v4 = v252;
          }

          else
          {
            v353 = v408;
            v354 = v409;
            v355 = v410;
            v349 = v404;
            v350 = v405;
            v351 = v406;
            v352 = v407;
            v345 = v400;
            v346 = v401;
            v347 = v402;
            v348 = v403;
            v341 = v396;
            v342 = v397;
            v343 = v398;
            v344 = v399;
            if (sub_181F3D1E4(&v341) == 1)
            {
              goto LABEL_289;
            }

            v337 = v364;
            v338 = v365[0];
            v339 = v365[1];
            LOBYTE(v340) = v366;
            v333 = v360;
            v334 = v361;
            v335 = v362;
            v336 = v363;
            v329 = v358;
            v330 = v359[0];
            v331 = v359[1];
            v332 = v359[2];
            v327 = v356;
            v328 = v357;
            v27 = v290;
            if (v410 == 1)
            {
              v322 = v364;
              v323 = v365[0];
              v324 = v365[1];
              LOBYTE(v325) = v366;
              v318 = v360;
              v319 = v361;
              v320 = v362;
              v321 = v363;
              v314 = v358;
              v315 = v359[0];
              v316 = v359[1];
              v317 = v359[2];
              v312 = v356;
              v313 = v357;
              a1 = *(&v396 + 1);
              v267 = v396;
              v4 = v397;
              LOBYTE(v5) = BYTE8(v397);
              v15 = *(&v398 + 1);
              v6 = v398;
              LODWORD(v7) = v399.n128_u8[0];
              v187 = v405;
              v188 = v406;
              *&v293 = *(&v406 + 1);

              if (v7 != 2 || __PAIR128__(v15, v6) != 0)
              {
                goto LABEL_292;
              }

              if (v187)
              {
                v189 = v188;
              }

              else
              {
                v189 = 1;
              }

              if ((v189 & 1) == 0)
              {
                MEMORY[0x1865DF520](v187, -1, -1);
              }

              sub_181F68EF4(v267, a1, v4, v5);

              v406 = v322;
              v407 = v323;
              v408 = v324;
              v402 = v318;
              v403 = v319;
              v404 = v320;
              v405 = v321;
              v398 = v314;
              v399 = v315;
              v400 = v316;
              v401 = v317;
              v396 = v312;
              v397 = v313;
              v409 = v325;
              v410 = 0;
              isUniquelyReferenced_nonNull_native = v292;
              a2 = v251;
              v4 = v252;
              v6 = v291;
            }

            else
            {
              v15 = *(&v409 + 1);
              if (!*(&v409 + 1))
              {
                v15 = *sub_182AD2388();
                *(&v409 + 1) = v15;
              }

              v5 = &v396;
              type metadata accessor for FrameArrayEntry();
              a1 = swift_allocObject();
              isUniquelyReferenced_nonNull_native = swift_beginAccess();
              v190 = v332;
              *(a1 + 80) = v331;
              *(a1 + 96) = v190;
              v191 = v330;
              *(a1 + 48) = v329;
              *(a1 + 64) = v191;
              v192 = v336;
              *(a1 + 144) = v335;
              *(a1 + 160) = v192;
              v193 = v334;
              *(a1 + 112) = v333;
              *(a1 + 128) = v193;
              *(a1 + 224) = v340;
              v194 = v339;
              *(a1 + 192) = v338;
              *(a1 + 208) = v194;
              *(a1 + 176) = v337;
              v195 = v328;
              *(a1 + 16) = v327;
              *(a1 + 32) = v195;
              v196 = *(v15 + 24);
              a2 = v196 + 1;
              if (__OFADD__(v196, 1))
              {
                goto LABEL_273;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (*(v15 + 16) < a2 || (isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                isUniquelyReferenced_nonNull_native = sub_181F461F8(isUniquelyReferenced_nonNull_native, a2, 0);
                v15 = *(&v409 + 1);
              }

              v197 = *(v15 + 24);
              v198 = *(v15 + 32);
              v42 = __OFADD__(v198, v197);
              v199 = v198 + v197;
              v4 = v252;
              if (v42)
              {
                goto LABEL_274;
              }

              if (v197 < 0)
              {
                isUniquelyReferenced_nonNull_native = v292;
                a2 = v251;
                if (v199 < 0)
                {
                  v203 = *(v15 + 16);
                  v42 = __OFADD__(v199, v203);
                  v199 += v203;
                  if (v42)
                  {
                    goto LABEL_285;
                  }
                }
              }

              else
              {
                v200 = *(v15 + 16);
                v201 = __OFSUB__(v199, v200);
                v202 = v199 - v200;
                isUniquelyReferenced_nonNull_native = v292;
                a2 = v251;
                if (v202 < 0 == v201)
                {
                  v199 = v202;
                  if (v201)
                  {
                    goto LABEL_281;
                  }
                }
              }

              *(v15 + 8 * v199 + 40) = a1;
              v42 = __OFADD__(v197, 1);
              v204 = v197 + 1;
              if (v42)
              {
                goto LABEL_275;
              }

              *(v15 + 24) = v204;
            }
          }

          v205 = v6 - 8;
          if (__OFSUB__(v6, 8))
          {
            goto LABEL_268;
          }

          v206 = *(v294 + 288);
          v42 = __OFADD__(v206, v205);
          v207 = v206 + v205;
          if (v42)
          {
            goto LABEL_269;
          }

          *(v294 + 288) = v207;
          if (v250)
          {
            goto LABEL_248;
          }
        }

        else
        {
          if (!(v102 & 1 | ((sub_182094EA0(&v356) & 1) == 0)))
          {
            v152 = *(v294 + 312);
            goto LABEL_167;
          }

LABEL_162:
          Frame.finalize(success:)(0);
          v23 = *(&v356 + 1);
          isUniquelyReferenced_nonNull_native = v356;
          v24 = v357;
          v25 = BYTE8(v357);
          a1 = *(&v358 + 1);
          a2 = v358;
          v4 = LOBYTE(v359[0]);
          v15 = *(&v364 + 1);
          if (LOBYTE(v359[0]) != 2 || v358 != 0)
          {
            goto LABEL_288;
          }

          v27 = v290;
          if ((v364 & 1) == 0 && v363)
          {
            a1 = *(&v356 + 1);
            v153 = v356;
            v154 = v357;
            v155 = BYTE8(v357);
            MEMORY[0x1865DF520](v363, -1, -1);
            isUniquelyReferenced_nonNull_native = v153;
            v23 = a1;
            v24 = v154;
            v25 = v155;
          }

          sub_181F68EF4(isUniquelyReferenced_nonNull_native, v23, v24, v25);

          isUniquelyReferenced_nonNull_native = v292;
          a2 = v251;
          v4 = v252;
          if (v250)
          {
            goto LABEL_248;
          }
        }
      }

      sub_181F49A88(v5, &qword_1EA839BA8, &unk_182AF5710);
LABEL_62:
      v377 = v364;
      v378 = v365[0];
      v379 = v365[1];
      LOBYTE(v380) = v366;
      v373 = v360;
      v374 = v361;
      v375 = v362;
      v376 = v363;
      v369 = v358;
      v370 = v359[0];
      v371 = v359[1];
      v372 = v359[2];
      v367 = v356;
      v368 = v357;
      v60 = Frame.unclaimedBytes.getter();
      if (v62)
      {
        *&v367 = 1;
        BYTE8(v367) = 1;
      }

      else
      {
        if (v60)
        {
          v63 = v61;
        }

        else
        {
          v63 = 0;
        }

        v64 = 1;
        v65 = 1;
        if (v60)
        {
          v66 = v63 - v60;
          if (v66 >= 2)
          {
            HIWORD(v304[0]) = bswap32(*v60) >> 16;
            if (v66 >= 4 && (LOWORD(v304[0]) = bswap32(v60[1]) >> 16, v66 >= 6))
            {
              HIWORD(v303) = bswap32(v60[2]) >> 16;
              v64 = 1;
              if ((v66 & 0x7FFFFFFFFFFFFFFELL) != 4)
              {
                v90 = v66 < 8;
                v91 = v66 - 8;
                if (!v90)
                {
                  LOWORD(v303) = v60[3];
                  v65 = v91 == 0;
                  v64 = v91;
                }
              }
            }

            else
            {
              v64 = 1;
            }
          }
        }

        *&v367 = v64;
        BYTE8(v367) = v65;
      }

      goto LABEL_88;
    }

    a2 = v41;
LABEL_248:

    LOBYTE(v5) = v285;
    v15 = *(&v287 + 1);
    a1 = v287;
    if (v285 != 2 || v287 != 0)
    {
      goto LABEL_290;
    }

    v15 = &v396;
    if (!(v284[0] & 1 | (*&v284[4] == 0)))
    {
      MEMORY[0x1865DF520]();
    }

    sub_181F68EF4(v4, a2, v288, v286);

    v379 = v408;
    v380 = v409;
    v381 = v410;
    v375 = v404;
    v376 = v405;
    v377 = v406;
    v378 = v407;
    v371 = v400;
    v372 = v401;
    v373 = v402;
    v374 = v403;
    v367 = v396;
    v368 = v397;
    v369 = v398;
    v370 = v399;
    isUniquelyReferenced_nonNull_native = sub_181F3D1E4(&v367);
    v6 = v394;
    if (isUniquelyReferenced_nonNull_native == 1)
    {
      v36 = v236;
      goto LABEL_259;
    }

    v36 = v236;
    if ((v381 & 1) == 0)
    {
      goto LABEL_255;
    }

LABEL_259:
    if (!v36)
    {
      goto LABEL_264;
    }

    v4 = *(v294 + 72);
    a1 = *(v294 + 80);
    v210 = qword_1EA8371A0;

    if (v210 != -1)
    {
      swift_once();
    }

    v211 = sub_182AD2698();
    __swift_project_value_buffer(v211, qword_1EA843348);

    v212 = sub_182AD2678();
    LOBYTE(v5) = sub_182AD38B8();

    if (os_log_type_enabled(v212, v5))
    {
      v213 = swift_slowAlloc();
      v214 = swift_slowAlloc();
      *&v367 = v214;
      *v213 = v249;
      v4 = sub_181C64FFC(v4, a1, &v367);

      *(v213 + 4) = v4;
      *(v213 + 12) = 2080;
      *(v213 + 14) = sub_181C64FFC(0xD00000000000002ALL, v230 | 0x8000000000000000, &v367);
      _os_log_impl(&dword_181A37000, v212, v5, "%s %s", v213, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v214, -1, -1);
      MEMORY[0x1865DF520](v213, -1, -1);
    }

    else
    {
    }

    a2 = &v312;
  }

  v15 = &v396;
  v379 = v408;
  v380 = v409;
  v381 = v410;
  v375 = v404;
  v376 = v405;
  v377 = v406;
  v378 = v407;
  v371 = v400;
  v372 = v401;
  v373 = v402;
  v374 = v403;
  v367 = v396;
  v368 = v397;
  v369 = v398;
  v370 = v399;
  isUniquelyReferenced_nonNull_native = sub_181F3D1E4(&v367);
  if (isUniquelyReferenced_nonNull_native == 1 || (v381 & 1) != 0)
  {
    goto LABEL_264;
  }

  v36 = 0;
LABEL_255:
  v208 = *(&v380 + 1);
  if (*(&v380 + 1))
  {
    v208 = *(*(&v380 + 1) + 24);
  }

  v42 = __OFADD__(v208, 1);
  v209 = v208 + 1;
  if (v42)
  {
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
    goto LABEL_277;
  }

  if (!v209)
  {
    goto LABEL_259;
  }

LABEL_264:
  v215 = v409;
  v216 = v224;
  *(v224 + 192) = v408;
  *(v216 + 208) = v215;
  *(v216 + 224) = v410;
  v217 = v405;
  *(v216 + 128) = v404;
  *(v216 + 144) = v217;
  v218 = v407;
  *(v216 + 160) = v406;
  *(v216 + 176) = v218;
  v219 = v401;
  *(v216 + 64) = v400;
  *(v216 + 80) = v219;
  v220 = v403;
  *(v216 + 96) = v402;
  *(v216 + 112) = v220;
  v221 = v397;
  *v216 = v396;
  *(v216 + 16) = v221;
  result = v399;
  *(v216 + 32) = v398;
  *(v216 + 48) = result;
  return result;
}

void *sub_182097DA0@<X0>(_WORD *a1@<X1>, _WORD *a2@<X2>, _WORD *a3@<X3>, uint64_t a5@<X8>)
{
  Deserializer.uint16NetworkByteOrder(_:)(a1, &v19);
  Deserializer.uint16NetworkByteOrder(_:)(a2, &v17);
  Deserializer.uint16NetworkByteOrder(_:)(a3, &v15);
  result = Deserializer.uint16(_:)();
  v9 = v18;
  if (v19 == 1)
  {
    v10 = v20;
  }

  else
  {
    v10 = 0;
  }

  if (v17 != 1)
  {
    v9 = 0;
  }

  v11 = 1;
  v12 = 1;
  if ((v10 & 1) == 0 && (v9 & 1) == 0)
  {
    if ((v16 & (v15 == 1)) != 0)
    {
      v11 = 1;
    }

    else
    {
      v11 = v13;
    }

    v12 = v16 & (v15 == 1) | v14;
  }

  *a5 = v11;
  *(a5 + 8) = v12 & 1;
  return result;
}

void UDPProtocol.UDPInstance.getOutputFrames(minimumBytes:maximumBytes:maximumFrameCount:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(v4 + 312);
  if ((v6 & 2) != 0)
  {
    if ((v6 & 4) == 0)
    {
      *(v4 + 312) = v6 | 4;
    }

    sub_181F73CAC(&v46);
    v11 = v59;
    *(a4 + 192) = v58;
    *(a4 + 208) = v11;
    *(a4 + 224) = v60;
    v12 = v55;
    *(a4 + 128) = v54;
    *(a4 + 144) = v12;
    v13 = v57;
    *(a4 + 160) = v56;
    *(a4 + 176) = v13;
    v14 = v51;
    *(a4 + 64) = v50;
    *(a4 + 80) = v14;
    v15 = v53;
    *(a4 + 96) = v52;
    *(a4 + 112) = v15;
    v16 = v47;
    *a4 = v46;
    *(a4 + 16) = v16;
    v18 = v48;
    v17 = v49;
LABEL_25:
    *(a4 + 32) = v18;
    *(a4 + 48) = v17;
    return;
  }

  v7 = 0x7FFFFFFFFFFFFFFFLL - a1;
  if (__OFSUB__(0x7FFFFFFFFFFFFFFFLL, a1))
  {
    __break(1u);
    goto LABEL_27;
  }

  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 >= 8)
  {
    v9 = a1 + 8;
    if (__OFADD__(a1, 8))
    {
      goto LABEL_28;
    }
  }

  if (__OFSUB__(0x7FFFFFFFFFFFFFFFLL, a2))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (0x7FFFFFFFFFFFFFFFLL - a2 < 8)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_12;
  }

  v19 = __OFADD__(a2, 8);
  v10 = a2 + 8;
  if (!v19)
  {
LABEL_12:
    sub_1822955B4(v9, v10, a3, &v31);
    v58 = v43;
    v59 = v44;
    v60 = v45;
    v54 = v39;
    v55 = v40;
    v56 = v41;
    v57 = v42;
    v50 = v35;
    v51 = v36;
    v52 = v37;
    v53 = v38;
    v46 = v31;
    v47 = v32;
    v48 = v33;
    v49 = v34;
    if (sub_181F3D1E4(&v46) != 1 && (v45 & 1) == 0)
    {
      Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(8, 0, 1);
      if (*(&v44 + 1))
      {
        v20 = *(*(&v44 + 1) + 32);
        if (*(*(&v44 + 1) + 16) >= *(*(&v44 + 1) + 24) + v20)
        {
          v21 = *(*(&v44 + 1) + 24) + v20;
        }

        else
        {
          v21 = *(*(&v44 + 1) + 16);
        }

        v29 = *(*(&v44 + 1) + 32);
        v30 = v21;
        swift_retain_n();
        while (1)
        {
          if (v20 == v21)
          {
            if ((sub_181AC81FC(v22) & 1) == 0)
            {

              break;
            }

            v20 = v29;
            v21 = v30;
          }

          v29 = v20 + 1;
          swift_beginAccess();

          Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(8, 0, 1);
          swift_endAccess();

          ++v20;
        }
      }
    }

    v23 = v44;
    *(a4 + 192) = v43;
    *(a4 + 208) = v23;
    *(a4 + 224) = v45;
    v24 = v40;
    *(a4 + 128) = v39;
    *(a4 + 144) = v24;
    v25 = v42;
    *(a4 + 160) = v41;
    *(a4 + 176) = v25;
    v26 = v36;
    *(a4 + 64) = v35;
    *(a4 + 80) = v26;
    v27 = v38;
    *(a4 + 96) = v37;
    *(a4 + 112) = v27;
    v28 = v32;
    *a4 = v31;
    *(a4 + 16) = v28;
    v17 = v34;
    v18 = v33;
    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
}

uint64_t UDPProtocol.UDPInstance.finalizeOutputFrames(frames:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 176);
  v29[10] = *(a1 + 160);
  v29[11] = v3;
  v29[12] = *(a1 + 192);
  v4 = *(a1 + 112);
  v29[6] = *(a1 + 96);
  v29[7] = v4;
  v5 = *(a1 + 144);
  v29[8] = *(a1 + 128);
  v29[9] = v5;
  v6 = *(a1 + 48);
  v29[2] = *(a1 + 32);
  v29[3] = v6;
  v7 = *(a1 + 80);
  v29[4] = *(a1 + 64);
  v29[5] = v7;
  v8 = *(a1 + 16);
  v29[0] = *a1;
  v29[1] = v8;
  v9 = *(a1 + 216);
  v10 = *(a1 + 224);
  v30 = *(a1 + 208);
  v31 = v9;
  v32 = v10;
  if ((v10 & 1) == 0 && (sub_1820982E4(v29, v1) & 1) != 0 && v9)
  {
    v11 = v9[4];
    v12 = &v11[v9[3]];
    if (v9[2] < v12)
    {
      v12 = v9[2];
    }

    v24 = v9;
    v25 = v11;
    v26 = v12;
    swift_retain_n();
    v14 = v9;
    while (1)
    {
      if (v11 == v26)
      {
        if ((sub_181AC81FC(v13) & 1) == 0)
        {
LABEL_11:

          break;
        }

        v14 = v24;
        v11 = v25;
      }

      v15 = v11 + 1;
      v25 = v11 + 1;
      v16 = *(v14 + 8 * v11 + 40);
      swift_beginAccess();

      v17 = sub_1820982E4((v16 + 16), v2);
      swift_endAccess();

      v11 = v15;
      if ((v17 & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  v18 = *(v2 + 48);
  v19 = *(v2 + 56);
  v24 = *(v2 + 40);
  v25 = v18;
  LOBYTE(v26) = v19;
  sub_181F68EA8(v24, v18, v19);
  sub_182292A10(&v22);
  v27 = v22;
  v28 = v23;
  v20 = OutputHandlerLinkage.invokeFinalizeOutputFrames(_:frames:)(&v27, v29);
  sub_181F68E5C(v27, *(&v27 + 1), v28);
  sub_181F68E5C(v24, v25, v26);
  return v20 & 1;
}

uint64_t sub_1820982E4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0, &qword_182AEE6B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v70 - v5;
  LODWORD(v7) = Frame.unclaim(fromStart:fromEnd:adjustSingleIPAggregate:)(8, 0, 1);
  v8 = *(a1 + 24);
  if (v8 == 5)
  {
    v9 = nw_frame_unclaimed_length(*a1);
    v8 = *(a1 + 24);
    goto LABEL_9;
  }

  v10 = a1[9];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = a1[7];
  v12 = a1[8];
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v9 = v10 - v14;
  if (__OFSUB__(v10, v14))
  {
    __break(1u);
LABEL_8:
    v9 = 0;
  }

LABEL_9:
  if (v8 == 2)
  {
    v15 = swift_projectBox();
    sub_181AB5D28(v15, v6, &qword_1EA8398E0, &qword_182AEE6B0);
    v16 = sub_182AD2868();
    v17 = *(*(v16 - 8) + 8);

    v17(v6, v16);
    sub_1822A7888(a1, 0, a2, v9, &v72);
    v18 = v72;
    if (!BYTE8(v72))
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v19 = *(a1 + 10);
  v20 = *(a1 + 12);
  v83 = *(a1 + 11);
  v84 = v20;
  v21 = *(a1 + 6);
  v22 = *(a1 + 8);
  v23 = *(a1 + 9);
  v79 = *(a1 + 7);
  v80 = v22;
  v81 = v23;
  v82 = v19;
  v24 = *(a1 + 3);
  v74 = *(a1 + 2);
  v75 = v24;
  v25 = *(a1 + 5);
  v76 = *(a1 + 4);
  v85 = *(a1 + 208);
  v77 = v25;
  v78 = v21;
  v26 = *(a1 + 1);
  v72 = *a1;
  v73 = v26;

  v27 = Frame.unclaimedBytes.getter();
  if (v29)
  {
    goto LABEL_13;
  }

  if (*(a1 + 24) == 5)
  {
    v30 = v27;
    v31 = v28;
    nw_frame_unclaimed_length(*a1);
    v28 = v31;
    v27 = v30;
  }

  *&v72 = v27;
  *(&v72 + 1) = v28;
  v73 = 0uLL;
  LOBYTE(v74) = 1;
  sub_182098908(a2, v9, &v71);
  v18 = *(&v73 + 1);
  if (v74 != 1)
  {

    goto LABEL_29;
  }

  if (*(&v73 + 1))
  {
    if (*(&v73 + 1) == 1)
    {

LABEL_26:
      if (v18)
      {
        v35 = 0x8000000182BDCF90;
        v36 = 0xD00000000000001CLL;
LABEL_28:
        sub_182292DC8(v36, v35);
        return 1;
      }

      goto LABEL_29;
    }

LABEL_13:

    v18 = 2;
    goto LABEL_26;
  }

  v32 = v72;
  v33 = v73;

  v34 = *(&v32 + 1) - v32;
  if (!v32)
  {
    v34 = 0;
  }

  v18 = v34 - v33;
  if (__OFSUB__(v34, v33))
  {
    goto LABEL_69;
  }

  if (v18 < 0)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v34 == v33)
  {
    goto LABEL_26;
  }

LABEL_29:
  swift_beginAccess();
  v7 = *(a2 + 296);
  if (v7 && (*(a1 + 136) == 2 || !*(a1 + 24)))
  {
    if ((v7 & 0x80000000) == 0)
    {
      sub_1821437AC(v7);
      goto LABEL_34;
    }

    goto LABEL_68;
  }

LABEL_34:
  if ((~*(a2 + 312) & 0x11) == 0)
  {
    return 1;
  }

  v37 = sub_182094A70(0x10000, v9);
  if (*(a1 + 24) == 2)
  {
    v38 = swift_projectBox();
    sub_181AB5D28(v38, v6, &qword_1EA8398E0, &qword_182AEE6B0);
    v39 = sub_182AD2868();
    (*(*(v39 - 8) + 8))(v6, v39);
    sub_1822A7DD4(a1, 0, v37, &v72);
    v40 = v72;
    if (!BYTE8(v72))
    {
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  v41 = *(a1 + 10);
  v42 = *(a1 + 12);
  v83 = *(a1 + 11);
  v84 = v42;
  v43 = *(a1 + 6);
  v44 = *(a1 + 8);
  v45 = *(a1 + 9);
  v79 = *(a1 + 7);
  v80 = v44;
  v81 = v45;
  v82 = v41;
  v46 = *(a1 + 3);
  v74 = *(a1 + 2);
  v75 = v46;
  v47 = *(a1 + 5);
  v76 = *(a1 + 4);
  v85 = *(a1 + 208);
  v77 = v47;
  v78 = v43;
  v48 = *(a1 + 1);
  v72 = *a1;
  v73 = v48;
  v49 = Frame.unclaimedBytes.getter();
  if (v51)
  {
    v40 = 2;
    goto LABEL_63;
  }

  if (*(a1 + 24) == 5)
  {
    v52 = v49;
    v53 = v50;
    nw_frame_unclaimed_length(*a1);
    v50 = v53;
    v49 = v52;
  }

  if (v49)
  {
    v54 = v50 - v49 < 6;
  }

  else
  {
    v54 = 1;
  }

  v55 = v54;
  v56 = v55 == 0;
  v57 = 6;
  if (!v56)
  {
    v57 = 0;
  }

  v58 = 2;
  if (v56)
  {
    v58 = 0;
  }

  *&v72 = v49;
  *(&v72 + 1) = v50;
  *&v73 = v57;
  *(&v73 + 1) = v58;
  LOBYTE(v74) = 1;
  LODWORD(v7) = InPlaceSerializer.uint16(_:)();
  v40 = *(&v73 + 1);
  if (v74 != 1)
  {
    goto LABEL_65;
  }

  if (*(&v73 + 1))
  {
LABEL_63:
    if (v40)
    {
      v36 = 0xD000000000000022;
      v35 = 0x8000000182BDCFB0;
      goto LABEL_28;
    }

LABEL_65:
    sub_181FD7BCC(6, 1u);
    return 1;
  }

  if (v72)
  {
    v59 = *(&v72 + 1) - v72;
  }

  else
  {
    v59 = 0;
  }

  v13 = __OFSUB__(v59, v73);
  v40 = v59 - v73;
  if (v13)
  {
    goto LABEL_71;
  }

  if ((v40 & 0x8000000000000000) == 0)
  {
    if (v40)
    {
      goto LABEL_65;
    }

    goto LABEL_63;
  }

LABEL_72:
  __break(1u);
  HIDWORD(v70) = v7;
  v61 = *a1;
  v62 = a1[1];
  v63 = a1[2];
  v64 = *(a1 + 24);
  v65 = a1[4];
  v66 = a1[5];
  v67 = *(a1 + 48);
  if (v67 != 2 || v66 | v65)
  {
    sub_181F68EF4(*a1, a1[1], a1[2], *(a1 + 24));

    sub_181F68F3C(v65, v66, v67);
    __break(1u);
  }

  if ((a1[20] & 1) == 0)
  {
    v68 = a1[18];
    if (v68)
    {
      MEMORY[0x1865DF520](v68, -1, -1);
    }
  }

  sub_181F68EF4(v61, v62, v63, v64);

  sub_181FD7FF8();
  swift_allocError();
  *v69 = BYTE4(v70) & 1;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_182098908@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (*(a1 + 194) <= 1u)
  {
    if (*(a1 + 194))
    {
      v6 = *(a1 + 192);
    }

    else
    {
      v6 = *(a1 + 184);
    }
  }

  else
  {
    v6 = 0;
  }

  InPlaceSerializer.uint16NetworkByteOrder(_:)(v6, &v16);
  swift_beginAccess();
  if (*(a1 + 258) <= 1u)
  {
    if (*(a1 + 258))
    {
      v7 = *(a1 + 256);
    }

    else
    {
      v7 = *(a1 + 248);
    }
  }

  else
  {
    v7 = 0;
  }

  result = InPlaceSerializer.uint16NetworkByteOrder(_:)(v7, &v14);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (a2 >> 16)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  result = InPlaceSerializer.uint16NetworkByteOrder(_:)(a2, &v12);
  if (v17 == 1 && v16 > 1 || ((v9 = v14, (v15 & (v14 == 1)) == 0) ? (v10 = v15) : (v9 = v16, v10 = v17), v10 && v9 > 1))
  {
    LOBYTE(v10) = 1;
    v11 = 2;
  }

  else
  {
    v11 = v12;
    if ((v13 & (v12 == 1)) != 0)
    {
      v11 = v9;
    }

    else
    {
      LOBYTE(v10) = v13;
    }
  }

  *a3 = v11;
  *(a3 + 8) = v10;
  return result;
}

uint64_t *sub_182098A6C@<X0>(uint64_t *result@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result;
  v4 = *result;
  v5 = result[2];
  if (*(result + 32) == 1 && result[3] > 1)
  {
    goto LABEL_7;
  }

  v6 = result[1] - v4;
  if (!v4)
  {
    v6 = 0;
  }

  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (!v7)
  {
    if (v8 >= 2)
    {
      v11 = a3;
      if (v4)
      {
        *(v4 + v5) = a2;
      }

      result = sub_1822A6F0C(2);
      v9 = *(v3 + 24);
      v10 = *(v3 + 32);
      a3 = v11;
      goto LABEL_11;
    }

LABEL_7:
    v9 = 2;
    result[3] = 2;
    v10 = 1;
    *(result + 32) = 1;
LABEL_11:
    *a3 = v9;
    *(a3 + 8) = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t UDPProtocol.UDPInstance.init()()
{
  if (qword_1EA8370A0 != -1)
  {
    swift_once();
  }

  v2 = *(&xmmword_1EA839410 + 1);
  v1 = xmmword_1EA839410;
  v3 = off_1EA839420;
  v32 = 1;
  if (!xmmword_1EA839410 && DWORD2(xmmword_1EA839410) == -65536)
  {
    v4 = 0;
    v5 = 0;
    v1 = HIDWORD(*(&xmmword_1EA839410 + 1));
    v2 = off_1EA839420;
    if (!off_1EA839420)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = 1;
  v4 = off_1EA839420;
  if (off_1EA839420)
  {
LABEL_8:
    v6 = *(off_1EA839420 + 2);

    sub_181E378A4(v6, &v28, v26);
    type metadata accessor for Interface.BackingClass();
    v3 = swift_allocObject();
    v7 = v27[0];
    v3[9] = v26[8];
    v3[10] = v7;
    *(v3 + 170) = *(v27 + 10);
    v8 = v26[5];
    v3[5] = v26[4];
    v3[6] = v8;
    v9 = v26[7];
    v3[7] = v26[6];
    v3[8] = v9;
    v10 = v26[1];
    v3[1] = v26[0];
    v3[2] = v10;
    v11 = v26[3];
    v3[3] = v26[2];
    v3[4] = v11;
  }

LABEL_9:
  v12 = v32;
  *(v0 + 152) = v3;
  *(v0 + 160) = 0;
  *(v0 + 168) = v1;
  *(v0 + 176) = v2;
  *(v0 + 184) = v4;
  *(v0 + 192) = 0;
  *(v0 + 194) = v5;
  *(v0 + 196) = 0;
  *(v0 + 204) = v12;
  *(v0 + 208) = 0;
  v14 = *(&xmmword_1EA839410 + 1);
  v13 = xmmword_1EA839410;
  v15 = off_1EA839420;
  v31 = 1;
  if (!xmmword_1EA839410 && DWORD2(xmmword_1EA839410) == -65536)
  {
    v16 = 0;
    v17 = 0;
    v13 = HIDWORD(*(&xmmword_1EA839410 + 1));
    v14 = off_1EA839420;
    if (!off_1EA839420)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v17 = 1;
  v16 = off_1EA839420;
  if (off_1EA839420)
  {
LABEL_14:
    v18 = *(off_1EA839420 + 2);

    sub_181E378A4(v18, &v28, v29);
    type metadata accessor for Interface.BackingClass();
    v15 = swift_allocObject();
    v19 = v30[0];
    v15[9] = v29[8];
    v15[10] = v19;
    *(v15 + 170) = *(v30 + 10);
    v20 = v29[5];
    v15[5] = v29[4];
    v15[6] = v20;
    v21 = v29[7];
    v15[7] = v29[6];
    v15[8] = v21;
    v22 = v29[1];
    v15[1] = v29[0];
    v15[2] = v22;
    v23 = v29[3];
    v15[3] = v29[2];
    v15[4] = v23;
  }

LABEL_15:
  v24 = v31;
  *(v0 + 216) = v15;
  *(v0 + 224) = 0;
  *(v0 + 232) = v13;
  *(v0 + 240) = v14;
  *(v0 + 248) = v16;
  *(v0 + 256) = 0;
  *(v0 + 258) = v17;
  *(v0 + 260) = 0;
  *(v0 + 268) = v24;
  *(v0 + 272) = 0;
  *(v0 + 304) = 0;
  *(v0 + 312) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = 0;
  *(v0 + 32) = 6;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 6;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 6;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 6;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  return v0;
}

void sub_182098D64()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 194);
  v5 = *(v0 + 192);

  sub_181AD1DE4(v1, v2, v3, v5, v4);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  v8 = *(v0 + 248);
  v9 = *(v0 + 258);
  v10 = *(v0 + 256);

  sub_181AD1DE4(v6, v7, v8, v10, v9);
}

uint64_t UDPProtocol.UDPInstance.deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 194);
  v5 = *(v0 + 192);

  sub_181AD1DE4(v1, v2, v3, v5, v4);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  v8 = *(v0 + 248);
  v9 = *(v0 + 258);
  v10 = *(v0 + 256);

  sub_181AD1DE4(v6, v7, v8, v10, v9);
  return v0;
}

uint64_t UDPProtocol.UDPInstance.__deallocating_deinit()
{
  UDPProtocol.UDPInstance.deinit();

  return swift_deallocClassInstance();
}

void UDPProtocol.newPerProtocolOptions(from:)(_BYTE *a2@<X8>)
{

  sub_182093930(v3, a2);
}

uint64_t UDPProtocol.newProtocolInstance()(uint64_t a1)
{
  type metadata accessor for UDPProtocol.UDPInstance();
  v1 = swift_allocObject();
  UDPProtocol.UDPInstance.init()();
  return v1;
}

double static UDPProtocol.identifier.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ED410110 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = qword_1ED410150;
  v3 = unk_1ED410158;
  v4 = byte_1ED410160;
  *a1 = word_1ED410148;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_181F49A24(v2, v3, v4);
}

uint64_t static UDPProtocol.definition.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED410028 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1ED40FF78;
  v7[0] = xmmword_1ED40FF68;
  v7[1] = unk_1ED40FF78;
  v2 = unk_1ED40FF88;
  v7[2] = unk_1ED40FF88;
  v3 = qword_1ED40FF98;
  v8 = qword_1ED40FF98;
  *a1 = xmmword_1ED40FF68;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_181AB5D28(v7, v6, &unk_1EA838E40, &qword_182AE8EE0);
}

uint64_t static UDPProtocol.instance()(uint64_t a1)
{
  type metadata accessor for UDPProtocol.UDPInstance();
  v1 = swift_allocObject();
  UDPProtocol.UDPInstance.init()();
  return v1;
}

uint64_t sub_182099124(uint64_t a1)
{
  type metadata accessor for UDPProtocol.UDPInstance();
  v1 = swift_allocObject();
  UDPProtocol.UDPInstance.init()();
  return v1;
}

uint64_t sub_18209915C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*a1 + *(**a1 + 128));
  result = swift_beginAccess();
  if (v3[1])
  {
    __break(1u);
  }

  else
  {
    *a2 = *v3 & 1;
  }

  return result;
}

uint64_t ProtocolOptions<>.preferNoChecksum.setter(char a1)
{
  v2 = (v1 + *(*v1 + 128));
  if (a1)
  {
    result = swift_beginAccess();
    if ((v2[1] & 1) == 0)
    {
      if (*v2)
      {
        return result;
      }

      v4 = *v2 | 1;
      goto LABEL_8;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  if (v2[1])
  {
    goto LABEL_11;
  }

  if ((*v2 & 1) == 0)
  {
    return result;
  }

  v4 = *v2 & 0xFE;
LABEL_8:
  *v2 = v4;
  return result;
}

void (*ProtocolOptions<>.preferNoChecksum.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = (v1 + *(*v1 + 128));
  result = swift_beginAccess();
  if (v5[1])
  {
    __break(1u);
  }

  else
  {
    *(v4 + 32) = *v5 & 1;
    return sub_18209931C;
  }

  return result;
}

uint64_t sub_182099334@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = (*a1 + *(**a1 + 128));
  result = swift_beginAccess();
  if (v3[1])
  {
    __break(1u);
  }

  else
  {
    *a2 = (*v3 & 2) != 0;
  }

  return result;
}

uint64_t ProtocolOptions<>.noMetadata.setter(char a1)
{
  v2 = (v1 + *(*v1 + 128));
  if (a1)
  {
    result = swift_beginAccess();
    if ((v2[1] & 1) == 0)
    {
      if ((*v2 & 2) != 0)
      {
        return result;
      }

      v4 = *v2 | 2;
      goto LABEL_8;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  if (v2[1])
  {
    goto LABEL_11;
  }

  if ((*v2 & 2) == 0)
  {
    return result;
  }

  v4 = *v2 & 0xFD;
LABEL_8:
  *v2 = v4;
  return result;
}

void (*ProtocolOptions<>.noMetadata.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = (v1 + *(*v1 + 128));
  result = swift_beginAccess();
  if (v5[1])
  {
    __break(1u);
  }

  else
  {
    *(v4 + 32) = (*v5 & 2) != 0;
    return sub_1820994F4;
  }

  return result;
}

uint64_t sub_18209950C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = (*a1 + *(**a1 + 128));
  result = swift_beginAccess();
  if (v3[1])
  {
    __break(1u);
  }

  else
  {
    *a2 = (*v3 & 4) != 0;
  }

  return result;
}

uint64_t ProtocolOptions<>.ignoreInboundChecksum.setter(char a1)
{
  v2 = (v1 + *(*v1 + 128));
  if (a1)
  {
    result = swift_beginAccess();
    if ((v2[1] & 1) == 0)
    {
      if ((*v2 & 4) != 0)
      {
        return result;
      }

      v4 = *v2 | 4;
      goto LABEL_8;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  if (v2[1])
  {
    goto LABEL_11;
  }

  if ((*v2 & 4) == 0)
  {
    return result;
  }

  v4 = *v2 & 0xFB;
LABEL_8:
  *v2 = v4;
  return result;
}

void (*ProtocolOptions<>.ignoreInboundChecksum.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = (v1 + *(*v1 + 128));
  result = swift_beginAccess();
  if (v5[1])
  {
    __break(1u);
  }

  else
  {
    *(v4 + 32) = (*v5 & 4) != 0;
    return sub_1820996CC;
  }

  return result;
}

uint64_t sub_1820996E4@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = (*a1 + *(**a1 + 128));
  result = swift_beginAccess();
  if (v3[1])
  {
    __break(1u);
  }

  else
  {
    *a2 = (*v3 & 8) != 0;
  }

  return result;
}

uint64_t ProtocolOptions<>.useQUICStats.setter(char a1)
{
  v2 = (v1 + *(*v1 + 128));
  if (a1)
  {
    result = swift_beginAccess();
    if ((v2[1] & 1) == 0)
    {
      if ((*v2 & 8) != 0)
      {
        return result;
      }

      v4 = *v2 | 8;
      goto LABEL_8;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  if (v2[1])
  {
    goto LABEL_11;
  }

  if ((*v2 & 8) == 0)
  {
    return result;
  }

  v4 = *v2 & 0xF7;
LABEL_8:
  *v2 = v4;
  return result;
}

void (*ProtocolOptions<>.useQUICStats.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = (v1 + *(*v1 + 128));
  result = swift_beginAccess();
  if (v5[1])
  {
    __break(1u);
  }

  else
  {
    *(v4 + 32) = (*v5 & 8) != 0;
    return sub_1820998A4;
  }

  return result;
}

void sub_1820998BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 32), a2);

  free(v3);
}

unint64_t sub_18209990C()
{
  result = qword_1EA836960;
  if (!qword_1EA836960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA838D58, &unk_182AF3130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836960);
  }

  return result;
}

unint64_t sub_182099998()
{
  result = qword_1EA83A0C8;
  if (!qword_1EA83A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A0C8);
  }

  return result;
}

unint64_t sub_1820999F0()
{
  result = qword_1EA83A0D0;
  if (!qword_1EA83A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A0D0);
  }

  return result;
}

unint64_t sub_182099A44(uint64_t a1)
{
  result = sub_182099A6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_182099A6C()
{
  result = qword_1EA836FC0;
  if (!qword_1EA836FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836FC0);
  }

  return result;
}

unint64_t sub_182099AC8()
{
  result = qword_1EA83A0D8;
  if (!qword_1EA83A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A0D8);
  }

  return result;
}

unint64_t sub_182099B1C(uint64_t a1)
{
  result = sub_182099B44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_182099B44()
{
  result = qword_1EA83A0E0;
  if (!qword_1EA83A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A0E0);
  }

  return result;
}

unint64_t sub_182099B98()
{
  result = qword_1EA83A0E8;
  if (!qword_1EA83A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A0E8);
  }

  return result;
}

unint64_t sub_182099BEC()
{
  result = qword_1EA836FB8;
  if (!qword_1EA836FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836FB8);
  }

  return result;
}

unint64_t sub_182099C64()
{
  result = qword_1EA83A0F0;
  if (!qword_1EA83A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A0F0);
  }

  return result;
}

unint64_t sub_182099CBC()
{
  result = qword_1EA83A0F8;
  if (!qword_1EA83A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A0F8);
  }

  return result;
}

unint64_t sub_182099D14()
{
  result = qword_1EA83A100;
  if (!qword_1EA83A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A100);
  }

  return result;
}

unint64_t sub_182099D6C()
{
  result = qword_1EA83A108;
  if (!qword_1EA83A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A108);
  }

  return result;
}

double Connection7.nw.getter()
{
  sub_181F3D244();

  return result;
}

uint64_t Connection7.SendOptions.hashValue.getter()
{
  sub_182AD44E8();
  MEMORY[0x1865DB070](0);
  return sub_182AD4558();
}

uint64_t sub_182099E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[3];
  v10 = *(*v4 + 80);
  v11 = *(v6 + 88);
  v12 = a1;
  type metadata accessor for Connection7.LockedState(0, v10, v11, a4);
  sub_181F50DA0(sub_1820AC52C, &v9, v7);
  return sub_181F49A88(a1, &qword_1EA83A290, &qword_182AF3B50);
}

void *Connection7.__allocating_init<A>(to:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = type metadata accessor for NWEndpoint(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v7 + 80);
  v19 = *(*(v7 + 88) + 8);
  NWParametersBuilder.init(_:)(v31, v15, a2, a3, a4, v18, a5);
  v20 = v31[0];
  v21 = v31[1];
  sub_181D8E1E8(a1, v17, type metadata accessor for NWEndpoint);
  v29 = v20;
  v30 = v21;
  *&v26 = a4;
  *(&v26 + 1) = v18;
  *&v27 = a5;
  *(&v27 + 1) = v19;
  v28 = a6;
  v22 = type metadata accessor for NWParametersBuilder(0, &v26);
  v23 = NWParametersBuilder.parameters(for:)(a1, v22);
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  swift_allocObject();
  v24 = sub_1820A9BF8(v17, v23, &v26);

  sub_181FDAD5C(a1);
  return v24;
}

void *Connection7.__allocating_init<A>(to:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v12 = type metadata accessor for NWEndpoint(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v35 = &v30 - v17;
  v36 = v6;
  v18 = *(v6 + 88);
  v31 = *(v6 + 80);
  v19 = *(v18 + 8);
  NWParametersBuilder.init(_:)(v43, v16, a2, a3, a4, v31, a5);
  v20 = v43[0];
  v21 = v43[1];
  v22 = a1;
  v37 = a1;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v25 = *(v24 + 8);
  v25(v23, v24);
  v41 = v20;
  v42 = v21;
  v25(v23, v24);
  *&v38 = v32;
  *(&v38 + 1) = v31;
  *&v39 = v33;
  *(&v39 + 1) = v19;
  v40 = v34;
  v26 = type metadata accessor for NWParametersBuilder(0, &v38);
  v27 = NWParametersBuilder.parameters(for:)(v14, v26);
  sub_181FDAD5C(v14);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  swift_allocObject();
  v28 = sub_1820A9BF8(v35, v27, &v38);

  __swift_destroy_boxed_opaque_existential_1(v37);
  return v28;
}

void *Connection7.__allocating_init<A>(to:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for NWEndpoint(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v15 = a2[1];
  sub_181D8E1E8(a1, v14, type metadata accessor for NWEndpoint);
  v26 = v16;
  v27 = v15;
  v17 = *(v6 + 80);
  v18 = *(*(v6 + 88) + 8);
  *&v23 = a3;
  *(&v23 + 1) = v17;
  *&v24 = a4;
  *(&v24 + 1) = v18;
  v25 = a5;
  v19 = type metadata accessor for NWParametersBuilder(0, &v23);
  v20 = NWParametersBuilder.parameters(for:)(a1, v19);

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  swift_allocObject();
  v21 = sub_1820A9BF8(v14, v20, &v23);

  sub_181FDAD5C(a1);
  return v21;
}

void *Connection7.__allocating_init<A>(to:using:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v7 = type metadata accessor for NWEndpoint(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = *a2;
  v14 = a2[1];
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = *(v16 + 8);
  v17(v15, v16);
  v31 = v13;
  v32 = v14;
  v17(v15, v16);
  v18 = *(v24 + 80);
  v19 = *(*(v24 + 88) + 8);
  *&v28 = v25;
  *(&v28 + 1) = v18;
  *&v29 = v26;
  *(&v29 + 1) = v19;
  v30 = v27;
  v20 = type metadata accessor for NWParametersBuilder(0, &v28);
  v21 = NWParametersBuilder.parameters(for:)(v9, v20);
  sub_181FDAD5C(v9);

  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  swift_allocObject();
  v22 = sub_1820A9BF8(v12, v21, &v28);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v22;
}

void *sub_18209A594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  NWParametersBuilder.init(_:)(&v15, a7, a2, a3, a4, *(v7 + 80), a5);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  swift_allocObject();
  v11 = sub_1820A9E14(a1, v13, v9, v10);

  return v11;
}

void *Connection7.__allocating_init(using:with:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1820A9F24(a1, a2);

  return v2;
}

void *Connection7.init(using:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1820A9E14(a1, a2, a3, a4);

  return v4;
}

void sub_18209A6B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  if (*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900, &unk_182AEE160);
    sub_182AD3608();
  }

  if (a2)
  {
    v11 = sub_182AD3548();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = a4;
    sub_181AA39C0(a2, a3);

    v13 = sub_182271E84(0, 0, v10, &unk_182AF3B00, v12);

    *a1 = v13;
  }

  else if (*(a4 + 16))
  {
    NWConnection.stateUpdateHandler.setter(0, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18209A860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A158, &qword_182AF3B08);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A160, &qword_182AF3B10);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18209A998, 0, 0);
}

uint64_t sub_18209A998()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v6 = *(v0 + 16);
  (*(*(v0 + 48) + 104))(*(v0 + 56), *MEMORY[0x1E69E8790], *(v0 + 40));
  sub_182AD3738();
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v6;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_18209AAE4;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_18209AAE4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1820AC63C;
  }

  else
  {

    v2 = sub_1820AC6E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_18209AC00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A170, &qword_182AF3B40);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  if (*(a2 + 16))
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v10 = swift_allocObject();
    (*(v5 + 32))(v10 + v9, v8, v4);
    NWConnection.stateUpdateHandler.setter(sub_1820AC47C, v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18209AD4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A178, &qword_182AF3B48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = *(a1 + 4);
  LODWORD(v12) = *a1;
  v7 = v12 | (v6 << 32);
  BYTE4(v12) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A170, &qword_182AF3B40);
  sub_182AD36A8();
  result = (*(v3 + 8))(v5, v2);
  if (v6 >> 6 == 1)
  {
    sub_181F4B3B8();
    v9 = swift_allocError();
    *v10 = v7;
    *(v10 + 4) = BYTE4(v7) & 0x3F;
    v12 = v9;
    return sub_182AD36B8();
  }

  if (v6 >> 6 == 2 && v7 == 0x8000000003)
  {
    v12 = 0;
    return sub_182AD36B8();
  }

  return result;
}

uint64_t sub_18209AEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A168, &qword_182AF3B28);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18209AFE0, 0, 0);
}

uint64_t sub_18209AFE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A160, &qword_182AF3B10);
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_18209B0B0;
  v2 = *(v0 + 136);

  return MEMORY[0x1EEE6DB90](v0 + 168, 0, 0, v2, v0 + 72);
}

uint64_t sub_18209B0B0()
{

  if (v0)
  {
    v1 = sub_18209B58C;
  }

  else
  {
    v1 = sub_18209B1C0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_18209B1C0()
{
  if (*(v0 + 172) >> 2 < 0x3FuLL)
  {
    v3 = *(v0 + 168) | (*(v0 + 172) << 32);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v6 = *(v0 + 104);
    v19 = *(v0 + 96);
    v20 = *(v0 + 112);
    v7 = sub_182AD3548();
    v8 = *(v7 - 8);
    (*(v8 + 56))(v5, 1, 1, v7);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = v19;
    *(v9 + 40) = v6;
    *(v9 + 52) = BYTE4(v3);
    *(v9 + 48) = v3;
    *(v9 + 56) = v20;
    sub_181AB5D28(v5, v4, &unk_1EA839850, &qword_182AF4770);
    LODWORD(v4) = (*(v8 + 48))(v4, 1, v7);

    v10 = *(v0 + 120);
    if (v4 == 1)
    {
      sub_181F49A88(*(v0 + 120), &unk_1EA839850, &qword_182AF4770);
      v11 = 0;
      v12 = 0;
    }

    else
    {
      sub_182AD3538();
      (*(v8 + 8))(v10, v7);
      if (*(v9 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v11 = sub_182AD34A8();
        v12 = v13;
        swift_unknownObjectRelease();
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }
    }

    v14 = **(v0 + 80);

    if (v12 | v11)
    {
      v15 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v11;
      *(v0 + 40) = v12;
    }

    else
    {
      v15 = 0;
    }

    v16 = *(v0 + 128);
    *(v0 + 48) = 1;
    *(v0 + 56) = v15;
    *(v0 + 64) = v14;
    swift_task_create();

    sub_181F49A88(v16, &unk_1EA839850, &qword_182AF4770);
    v17 = swift_task_alloc();
    *(v0 + 160) = v17;
    *v17 = v0;
    v17[1] = sub_18209B0B0;
    v18 = *(v0 + 136);

    return MEMORY[0x1EEE6DB90](v0 + 168, 0, 0, v18, v0 + 72);
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900, &unk_182AEE160);
    sub_182AD4248();

    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_18209B58C()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_18209B628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  *(v6 + 16) = a3;
  *(v6 + 40) = a5;
  *(v6 + 44) = BYTE4(a5);
  if (*(a4 + 16))
  {
    swift_getObjectType();
    v7 = sub_182AD34A8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_18209B6C8, v7, v9);
}

uint64_t sub_18209B6C8()
{
  (*(v0 + 16))(*(v0 + 32), v0 + 40);
  v1 = *(v0 + 8);

  return v1();
}

void sub_18209B750(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  if (*(a1 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900, &unk_182AEE160);
    v10 = sub_182AD3608();
  }

  if (a2)
  {
    v13 = sub_182AD3548();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a2;
    v14[5] = a3;
    v14[6] = a4;
    sub_181AA39C0(a2, a3);

    v15 = sub_182271E84(0, 0, v12, &unk_182AF3AC0, v14);

    *(a1 + 8) = v15;
    return;
  }

  v16 = *(a4 + 16);
  if (v16)
  {
    a2 = *(v16 + 24);
    MEMORY[0x1EEE9AC00](v10);
    *(&v17 - 2) = 0;
    *(&v17 - 1) = 0;
    os_unfair_lock_lock(a2 + 24);
    sub_181EC7B18(&a2[4]);
    if (!v4)
    {
      os_unfair_lock_unlock(a2 + 24);
      nw_connection_set_path_changed_handler(*(v16 + 16), 0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  os_unfair_lock_unlock(a2 + 24);
  __break(1u);
}

uint64_t sub_18209B958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A148, &qword_182AF3AC8);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B180, &qword_182AFE520);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18209BA90, 0, 0);
}

uint64_t sub_18209BA90()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  type metadata accessor for NWPath(0);
  v9 = *(v0 + 16);
  (*(v3 + 104))(v2, *MEMORY[0x1E69E8790], v4);
  sub_182AD3738();
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v9;
  *(v6 + 40) = v5;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_18209BBF8;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_18209BBF8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_18209BD9C;
  }

  else
  {

    v2 = sub_18209BD14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18209BD14()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_18209BD9C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_18209BE38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A150, &qword_182AF3AF0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock[-1] - v7;
  v9 = *(a2 + 16);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    v12 = (*(v5 + 32))(v11 + v10, v8, v4);
    v13 = *(v9 + 24);
    MEMORY[0x1EEE9AC00](v12);
    *(&v17 - 2) = sub_1820AC10C;
    *(&v17 - 1) = v11;
    os_unfair_lock_lock(v13 + 24);
    sub_1820AC6CC(&v13[4]);
    os_unfair_lock_unlock(v13 + 24);
    v14 = *(v9 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1820AC10C;
    *(v15 + 24) = v11;
    aBlock[4] = sub_181ECAA3C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181B7F17C;
    aBlock[3] = &block_descriptor_329;
    v16 = _Block_copy(aBlock);

    nw_connection_set_path_changed_handler(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18209C07C(uint64_t a1)
{
  v2 = type metadata accessor for NWPath(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1A0, &unk_182AFE560);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_181D8E1E8(a1, v4, type metadata accessor for NWPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A150, &qword_182AF3AF0);
  sub_182AD36A8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18209C1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a2;
  v6[15] = *a6;
  v7 = type metadata accessor for NWPath(0);
  v6[16] = v7;
  v8 = *(v7 - 8);
  v6[17] = v8;
  v6[18] = *(v8 + 64);
  v6[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839EC8, &qword_182AF1AE8);
  v6[22] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B190, &qword_182AFE540);
  v6[23] = v9;
  v6[24] = *(v9 - 8);
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18209C3B0, 0, 0);
}

uint64_t sub_18209C3B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B180, &qword_182AFE520);
  sub_182AD35B8();
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_18209C47C;
  v2 = v0[22];
  v3 = v0[23];

  return MEMORY[0x1EEE6DB90](v2, 0, 0, v3, v0 + 9);
}

uint64_t sub_18209C47C()
{

  if (v0)
  {
    v1 = sub_18209C9B4;
  }

  else
  {
    v1 = sub_18209C58C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_18209C58C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 136);
  if ((*(v2 + 48))(v1, 1, *(v0 + 128)) == 1)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900, &unk_182AEE160);
    sub_182AD4248();

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = *(v0 + 168);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 120);
  v27 = *(v0 + 112);
  v28 = *(v0 + 160);
  v25 = *(v0 + 96);
  v26 = *(v0 + 104);
  v9 = sub_182AD3548();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v5, 1, 1, v9);
  sub_1820ABF80(v1, v7);
  v11 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v12 = (v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v13[2] = 0;
  v14 = v13 + 2;
  v13[3] = 0;
  v13[4] = *(v8 + 80);
  v13[5] = *(v8 + 88);
  v13[6] = v25;
  v13[7] = v26;
  sub_1820ABF80(v7, v13 + v11);
  *(v13 + v12) = v27;
  sub_181AB5D28(v5, v28, &unk_1EA839850, &qword_182AF4770);
  LODWORD(v12) = (*(v10 + 48))(v28, 1, v9);

  v15 = *(v0 + 160);
  if (v12 != 1)
  {
    sub_182AD3538();
    (*(v10 + 8))(v15, v9);
    if (*v14)
    {
      goto LABEL_7;
    }

LABEL_9:
    v16 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  sub_181F49A88(*(v0 + 160), &unk_1EA839850, &qword_182AF4770);
  if (!*v14)
  {
    goto LABEL_9;
  }

LABEL_7:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_182AD34A8();
  v18 = v17;
  swift_unknownObjectRelease();
LABEL_10:
  v19 = **(v0 + 80);

  if (v18 | v16)
  {
    v20 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v16;
    *(v0 + 40) = v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v0 + 168);
  *(v0 + 48) = 1;
  *(v0 + 56) = v20;
  *(v0 + 64) = v19;
  swift_task_create();

  sub_181F49A88(v21, &unk_1EA839850, &qword_182AF4770);
  v22 = swift_task_alloc();
  *(v0 + 208) = v22;
  *v22 = v0;
  v22[1] = sub_18209C47C;
  v23 = *(v0 + 176);
  v24 = *(v0 + 184);

  return MEMORY[0x1EEE6DB90](v23, 0, 0, v24, v0 + 72);
}

uint64_t sub_18209C9B4()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_18209CA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a3;
  v6[3] = a4;
  if (*(a4 + 16))
  {
    swift_getObjectType();
    v7 = sub_182AD34A8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_18209CB00, v7, v9);
}

uint64_t sub_18209CB00()
{
  (*(v0 + 16))(*(v0 + 40), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

void sub_18209CB84(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900, &unk_182AEE160);
    v10 = sub_182AD3608();
  }

  if (a2)
  {
    v13 = sub_182AD3548();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a2;
    v14[5] = a3;
    v14[6] = a4;
    sub_181AA39C0(a2, a3);

    v15 = sub_182271E84(0, 0, v12, &unk_182AF3A90, v14);

    *(a1 + 16) = v15;
    return;
  }

  v16 = *(a4 + 16);
  if (v16)
  {
    a2 = *(v16 + 24);
    MEMORY[0x1EEE9AC00](v10);
    *(&v17 - 2) = 0;
    *(&v17 - 1) = 0;
    os_unfair_lock_lock(a2 + 24);
    sub_181E60818(&a2[4]);
    if (!v4)
    {
      os_unfair_lock_unlock(a2 + 24);
      nw_connection_set_viability_changed_handler(*(v16 + 16), 0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  os_unfair_lock_unlock(a2 + 24);
  __break(1u);
}

uint64_t sub_18209CD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B150, &unk_182AFE490);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A138, &qword_182AF3A58);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18209CEC4, 0, 0);
}

uint64_t sub_18209CEC4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v6 = *(v0 + 16);
  (*(*(v0 + 48) + 104))(*(v0 + 56), *MEMORY[0x1E69E8790], *(v0 + 40));
  sub_182AD3738();
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v6;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_18209AAE4;

  return MEMORY[0x1EEE6DE40]();
}

void sub_18209D010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A140, &qword_182AF3A80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock[-1] - v7;
  v9 = *(a2 + 16);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    v12 = (*(v5 + 32))(v11 + v10, v8, v4);
    v13 = *(v9 + 24);
    MEMORY[0x1EEE9AC00](v12);
    *(&v17 - 2) = sub_1820ABD74;
    *(&v17 - 1) = v11;
    os_unfair_lock_lock(v13 + 24);
    sub_1820AC6B4(&v13[4]);
    os_unfair_lock_unlock(v13 + 24);
    v14 = *(v9 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1820ABD74;
    *(v15 + 24) = v11;
    aBlock[4] = sub_181F1B704;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181F1B6B0;
    aBlock[3] = &block_descriptor_306;
    v16 = _Block_copy(aBlock);

    nw_connection_set_viability_changed_handler(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18209D254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B160, &qword_182AFE4B0);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18209D36C, 0, 0);
}

uint64_t sub_18209D36C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A138, &qword_182AF3A58);
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_18209D43C;
  v2 = *(v0 + 136);

  return MEMORY[0x1EEE6DB90](v0 + 168, 0, 0, v2, v0 + 72);
}

uint64_t sub_18209D43C()
{

  if (v0)
  {
    v1 = sub_18209B58C;
  }

  else
  {
    v1 = sub_18209D54C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_18209D54C()
{
  v1 = *(v0 + 168);
  if (v1 == 2)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900, &unk_182AEE160);
    sub_182AD4248();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v21 = *(v0 + 96);
    v8 = sub_182AD3548();
    v9 = *(v8 - 8);
    (*(v9 + 56))(v5, 1, 1, v8);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = v21;
    *(v10 + 40) = v7;
    *(v10 + 48) = v1 & 1;
    *(v10 + 56) = v6;
    sub_181AB5D28(v5, v4, &unk_1EA839850, &qword_182AF4770);
    LODWORD(v4) = (*(v9 + 48))(v4, 1, v8);

    v11 = *(v0 + 120);
    if (v4 == 1)
    {
      sub_181F49A88(*(v0 + 120), &unk_1EA839850, &qword_182AF4770);
      v12 = 0;
      v13 = 0;
    }

    else
    {
      sub_182AD3538();
      (*(v9 + 8))(v11, v8);
      if (*(v10 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v12 = sub_182AD34A8();
        v13 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }
    }

    v15 = **(v0 + 80);

    if (v13 | v12)
    {
      v16 = v0 + 168;
      v17 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
    }

    else
    {
      v17 = 0;
      v16 = v0 + 168;
    }

    v18 = *(v0 + 128);
    *(v0 + 48) = 1;
    *(v0 + 56) = v17;
    *(v0 + 64) = v15;
    swift_task_create();

    sub_181F49A88(v18, &unk_1EA839850, &qword_182AF4770);
    v19 = swift_task_alloc();
    *(v0 + 160) = v19;
    *v19 = v0;
    v19[1] = sub_18209D43C;
    v20 = *(v0 + 136);

    return MEMORY[0x1EEE6DB90](v16, 0, 0, v20, v0 + 72);
  }
}

uint64_t sub_18209D910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  *(v6 + 40) = a5;
  *(v6 + 16) = a3;
  if (*(a4 + 16))
  {
    swift_getObjectType();
    v7 = sub_182AD34A8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_18209D9A8, v7, v9);
}

uint64_t sub_18209D9A8()
{
  (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

double sub_18209DA30(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v6 = *v4;
  v7 = v4[3];
  v9[2] = a1;
  v9[3] = a2;
  type metadata accessor for Connection7.LockedState(0, *(v6 + 80), *(v6 + 88), a4);
  sub_181F50DA0(a3, v9, v7);

  return result;
}

void sub_18209DACC(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  if (*(a1 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900, &unk_182AEE160);
    v10 = sub_182AD3608();
  }

  if (a2)
  {
    v13 = sub_182AD3548();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a2;
    v14[5] = a3;
    v14[6] = a4;
    sub_181AA39C0(a2, a3);

    v15 = sub_182271E84(0, 0, v12, &unk_182AF3A50, v14);

    *(a1 + 24) = v15;
    return;
  }

  v16 = *(a4 + 16);
  if (v16)
  {
    a2 = *(v16 + 24);
    MEMORY[0x1EEE9AC00](v10);
    *(&v17 - 2) = 0;
    *(&v17 - 1) = 0;
    os_unfair_lock_lock(a2 + 24);
    sub_181E61CA4(&a2[4]);
    if (!v4)
    {
      os_unfair_lock_unlock(a2 + 24);
      nw_connection_set_better_path_available_handler(*(v16 + 16), 0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  os_unfair_lock_unlock(a2 + 24);
  __break(1u);
}

uint64_t sub_18209DCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B150, &unk_182AFE490);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A138, &qword_182AF3A58);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18209DE0C, 0, 0);
}

uint64_t sub_18209DE0C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v6 = *(v0 + 16);
  (*(*(v0 + 48) + 104))(*(v0 + 56), *MEMORY[0x1E69E8790], *(v0 + 40));
  sub_182AD3738();
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v6;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_18209AAE4;

  return MEMORY[0x1EEE6DE40]();
}

void sub_18209DF58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A140, &qword_182AF3A80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock[-1] - v7;
  v9 = *(a2 + 16);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    v12 = (*(v5 + 32))(v11 + v10, v8, v4);
    v13 = *(v9 + 24);
    MEMORY[0x1EEE9AC00](v12);
    *(&v17 - 2) = sub_1820AC690;
    *(&v17 - 1) = v11;
    os_unfair_lock_lock(v13 + 24);
    sub_1820AC69C(&v13[4]);
    os_unfair_lock_unlock(v13 + 24);
    v14 = *(v9 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1820AC690;
    *(v15 + 24) = v11;
    aBlock[4] = sub_181F1B704;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181F1B6B0;
    aBlock[3] = &block_descriptor_283;
    v16 = _Block_copy(aBlock);

    nw_connection_set_better_path_available_handler(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18209E19C(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B170, &qword_182AFE4D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-v4];
  v7[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A140, &qword_182AF3A80);
  sub_182AD36A8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_18209E298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B160, &qword_182AFE4B0);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18209E3B0, 0, 0);
}

uint64_t sub_18209E3B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A138, &qword_182AF3A58);
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_18209E480;
  v2 = *(v0 + 136);

  return MEMORY[0x1EEE6DB90](v0 + 168, 0, 0, v2, v0 + 72);
}

uint64_t sub_18209E480()
{

  if (v0)
  {
    v1 = sub_1820AC6E8;
  }

  else
  {
    v1 = sub_18209E590;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_18209E590()
{
  v1 = *(v0 + 168);
  if (v1 == 2)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900, &unk_182AEE160);
    sub_182AD4248();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v21 = *(v0 + 96);
    v8 = sub_182AD3548();
    v9 = *(v8 - 8);
    (*(v9 + 56))(v5, 1, 1, v8);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = v21;
    *(v10 + 40) = v7;
    *(v10 + 48) = v1 & 1;
    *(v10 + 56) = v6;
    sub_181AB5D28(v5, v4, &unk_1EA839850, &qword_182AF4770);
    LODWORD(v4) = (*(v9 + 48))(v4, 1, v8);

    v11 = *(v0 + 120);
    if (v4 == 1)
    {
      sub_181F49A88(*(v0 + 120), &unk_1EA839850, &qword_182AF4770);
      v12 = 0;
      v13 = 0;
    }

    else
    {
      sub_182AD3538();
      (*(v9 + 8))(v11, v8);
      if (*(v10 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v12 = sub_182AD34A8();
        v13 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }
    }

    v15 = **(v0 + 80);

    if (v13 | v12)
    {
      v16 = v0 + 168;
      v17 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
    }

    else
    {
      v17 = 0;
      v16 = v0 + 168;
    }

    v18 = *(v0 + 128);
    *(v0 + 48) = 1;
    *(v0 + 56) = v17;
    *(v0 + 64) = v15;
    swift_task_create();

    sub_181F49A88(v18, &unk_1EA839850, &qword_182AF4770);
    v19 = swift_task_alloc();
    *(v0 + 160) = v19;
    *v19 = v0;
    v19[1] = sub_18209E480;
    v20 = *(v0 + 136);

    return MEMORY[0x1EEE6DB90](v16, 0, 0, v20, v0 + 72);
  }
}

uint64_t sub_18209E954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  *(v6 + 40) = a5;
  *(v6 + 16) = a3;
  if (*(a4 + 16))
  {
    swift_getObjectType();
    v7 = sub_182AD34A8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1820AC618, v7, v9);
}

uint64_t sub_18209E9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 82) = a7;
  *(v8 + 81) = a6;
  *(v8 + 128) = a5;
  *(v8 + 136) = v7;
  *(v8 + 112) = a3;
  *(v8 + 120) = a4;
  *(v8 + 96) = a1;
  *(v8 + 104) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18209EA1C, 0, 0);
}

void sub_18209EA1C()
{
  v1 = *(v0 + 112);
  v2 = (*(v0 + 120))();
  *(v0 + 88) = v2;
  if (v1)
  {

    MEMORY[0x1865D9F10](v3);
    if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_182AD3408();
    }

    sub_182AD3448();
    v4 = *(v0 + 88);
  }

  else
  {
    v4 = v2;
  }

  v5 = *(v0 + 82);
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  *(v0 + 144) = inited;
  v7 = nw_content_context_create("sendContext");
  *(inited + 16) = v7;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  nw_content_context_set_expiration_milliseconds(v7, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v7, 0.5);
  *(inited + 64) = v5;
  nw_content_context_set_is_final(v7, v5);
  *(inited + 56) = 0;
  if (v4 >> 62)
  {
    v8 = sub_182AD3EB8();
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = MEMORY[0x1865DA790](i, v4);
      nw_content_context_set_metadata_for_protocol(v7, *(v10 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v11 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v7, *(*(v4 + v11) + 16));
      v11 += 8;
      --v8;
    }

    while (v8);
  }

LABEL_15:

  v12 = swift_task_alloc();
  *(v0 + 152) = v12;
  *v12 = v0;
  v12[1] = sub_18209EC6C;
  v13 = *(v0 + 81);
  v15 = *(v0 + 96);
  v14 = *(v0 + 104);

  sub_18209EE70(v15, v14, inited, v13);
}

uint64_t sub_18209EC6C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_18209EDF8;
  }

  else
  {
    v2 = sub_18209ED80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18209ED80()
{
  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18209EDF8()
{
  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18209EE70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18209EE98, 0, 0);
}

uint64_t sub_18209EE98()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v9 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v9;
  *(v4 + 40) = v3;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_18209EFB0;
  v6 = *(v0 + 40);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v5, &unk_182AF39E8, v4, sub_1820AADD4, v6, 0, 0, v7);
}

uint64_t sub_18209EFB0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_181FE3368;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18209F0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_18209F0F8, 0, 0);
}

uint64_t sub_18209F0F8()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v9 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_18209F214;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000021, 0x8000000182BDD080, sub_1820AB73C, v4, v7);
}

uint64_t sub_18209F214()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1820AC694, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_18209F350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_18209F37C, 0, 0);
}

uint64_t sub_18209F37C()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v9 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_18209F214;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000021, 0x8000000182BDD080, sub_1820AB5FC, v4, v7);
}

uint64_t sub_18209F498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_18209F4C4, 0, 0);
}

uint64_t sub_18209F4C4()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v9 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_18209F214;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000021, 0x8000000182BDD080, sub_1820AB338, v4, v7);
}