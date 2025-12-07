__n128 sub_1822C5868@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1822C587C()
{
  v1 = v0[1];
  v6[0] = *v0;
  v6[1] = v1;
  v2 = v0[3];
  v6[2] = v0[2];
  v6[3] = v2;
  sub_18208AD64(v6);
  v4 = v3;
  sub_18206AE94(v6);
  return v4;
}

unint64_t sub_1822C590C()
{
  result = qword_1EA83BFC0;
  if (!qword_1EA83BFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BFC0);
  }

  return result;
}

double sub_1822C5960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1822C59A4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != 6)
  {
    sub_181E4926C(result, a2);

    return sub_181E49280(a3, a4);
  }

  return result;
}

void sub_1822C59F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 a5)
{
  v7 = a5;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v9 = a2;
      v10 = 1;
      while (1)
      {
        if (v7 == 0xFFFF)
        {
          LOWORD(v7) = -1;
          goto LABEL_14;
        }

        if (*(a4 + 16) <= v7)
        {
          break;
        }

        v11 = a4 + 32 + (v7 << 6);
        v12 = *(v11 + 8);
        v13 = *(v11 + 16);
        v14 = *(v11 + 24);
        v15 = *(v11 + 32);
        v16 = *(v11 + 40);
        v17 = *(v11 + 48);
        v7 = *(v11 + 56);
        *v9 = *v11;
        *(v9 + 8) = v12;
        *(v9 + 16) = v13;
        *(v9 + 24) = v14;
        *(v9 + 32) = v15;
        *(v9 + 40) = v16;
        *(v9 + 48) = v17;
        if (a3 == v10)
        {

          goto LABEL_14;
        }

        v9 += 56;
        if (__OFADD__(v10++, 1))
        {
          __break(1u);
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    *a1 = a4;
    *(a1 + 8) = v7;
  }
}

void sub_1822C5B04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *a1 = a4;
    a1[1] = v6;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    swift_beginAccess();
    v8 = *(a4 + 16);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = (v8 + 80);
      v11 = 1;
      while (v11 - 1 < v9)
      {
        v12 = *(v10 - 1);
        v13 = *v10;
        v14 = *(v10 - 16);
        v15 = *(v10 - 4);
        v16 = *(v10 - 3);
        v17 = *(v10 - 5);
        *v7 = *(v10 - 6);
        *(v7 + 8) = v17;
        *(v7 + 16) = v15;
        *(v7 + 24) = v16;
        *(v7 + 32) = v14;
        *(v7 + 40) = v12;
        *(v7 + 48) = v13;
        if (v6 == v11)
        {

          goto LABEL_12;
        }

        v18 = v11 + 1;
        v9 = *(v8 + 16);
        v10 += 8;
        v7 += 56;
        if (v11++ == v9)
        {
          v6 = v18 - 1;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1822C5C24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a4;
  v10 = a4 + 64;

  swift_unknownObjectRetain();
  v32 = v10;
  v11 = sub_182AD3AD8();
  v34 = *(v6 + 36);
  swift_unknownObjectRelease();

  if (!a2)
  {
LABEL_22:
    a3 = 0;
    goto LABEL_25;
  }

  if (!a3)
  {
LABEL_25:
    *a1 = v6;
    *(a1 + 8) = a5;
    *(a1 + 16) = v11;
    *(a1 + 24) = v34;
    *(a1 + 32) = 0;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v27 = a5;
    v28 = a1;
    result = 0;
    v29 = v6 + 72;
    v30 = v6;
    v13 = 1;
    v31 = a3;
    while (v34 == *(v6 + 36))
    {
      v14 = 1 << *(v6 + 32);
      if (v11 == v14)
      {
        a3 = result;
LABEL_24:
        a5 = v27;
        a1 = v28;
        goto LABEL_25;
      }

      if ((v11 & 0x8000000000000000) != 0 || v11 >= v14)
      {
        goto LABEL_27;
      }

      v15 = v11 >> 6;
      v16 = *(v32 + 8 * (v11 >> 6));
      if (((v16 >> v11) & 1) == 0)
      {
        goto LABEL_28;
      }

      v17 = (*(v6 + 48) + 16 * v11);
      v18 = v17[1];
      v33 = *v17;
      v19 = *(v6 + 56) + 24 * v11;
      v20 = *v19;
      a1 = *(v19 + 8);
      v21 = *(v19 + 16);
      a5 = v16 & (-2 << (v11 & 0x3F));
      if (a5)
      {

        sub_1820F5148(v20, a1, v21);
        sub_18225BB58(v11, v34, 0);
        v11 = __clz(__rbit64(a5)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v15 << 6;
        v23 = v15 + 1;
        v24 = (v29 + 8 * v15);
        while (v23 < (v14 + 63) >> 6)
        {
          v25 = *v24++;
          a5 = v25;
          v22 += 64;
          ++v23;
          if (v25)
          {

            sub_1820F5148(v20, a1, v21);
            sub_18225BB58(v11, v34, 0);
            v11 = __clz(__rbit64(a5)) + v22;
            goto LABEL_17;
          }
        }

        sub_1820F5148(v20, a1, v21);
        sub_18225BB58(v11, v34, 0);
        v11 = v14;
LABEL_17:
        v6 = v30;
      }

      *a2 = v33;
      *(a2 + 8) = v18;
      *(a2 + 16) = v20;
      *(a2 + 24) = a1;
      *(a2 + 32) = v21;
      a3 = v31;
      if (v13 == v31)
      {
        goto LABEL_24;
      }

      a2 += 40;
      result = v13;
      if (__OFADD__(v13++, 1))
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1822C5E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = v3[7];
  if (!a2 || !a3)
  {
    goto LABEL_10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = *v3;
    if (*(*v3 + 16))
    {
      v8 = 0;
      v9 = v6 + 32 * v18;
      for (i = 1; ; ++i)
      {
        v11 = v18 + i - 1;
        v12 = *(v6 + 16);
        if (v11 == v12)
        {
          v18 = 0;
          goto LABEL_10;
        }

        if (v11 >= v12)
        {
          break;
        }

        v13 = a2 + v8;
        v14 = *(v9 + v8 + 40);
        v15 = *(v9 + v8 + 48);
        v16 = *(v9 + v8 + 56);
        *v13 = *(v9 + v8 + 32);
        *(v13 + 8) = v14;
        *(v13 + 16) = v15;
        *(v13 + 24) = v16;
        if (a3 == i)
        {

          v18 += i;
          goto LABEL_10;
        }

        v8 += 32;
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_10:
    v17 = *(v3 + 1);
    *a1 = *v3;
    *(a1 + 16) = v17;
    *(a1 + 32) = *(v3 + 2);
    *(a1 + 48) = v3[6];
    *(a1 + 56) = v18;
    return;
  }

LABEL_14:
  __break(1u);
}

void *sub_1822C5FCC(void *result, uint64_t *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + 56 * (__clz(__rbit64(v9)) | (v12 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v9 &= v9 - 1;
      v20 = v17[2];
      v21 = v17[3];
      v22 = v17[4];
      v23 = v17[5];
      v24 = v17[6];
      *v11 = *v17;
      v11[1] = v19;
      v11[2] = v20;
      v11[3] = v21;
      v11[4] = v22;
      v11[5] = v23;
      v11[6] = v24;
      if (v14 == v10)
      {
        sub_18206A3C4(v18, v19, v20, v21, v22, v23, v24);
        goto LABEL_24;
      }

      v11 += 7;
      sub_18206A3C4(v18, v19, v20, v21, v22, v23, v24);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1822C613C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1822C6290(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1822C62B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BFC8, &qword_182B079F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1822C631C(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  return result;
}

void sub_1822C6360(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
  }
}

uint64_t sub_1822C63C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1822C640C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1822C6484()
{
  result = qword_1EA83BFD0;
  if (!qword_1EA83BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BFD0);
  }

  return result;
}

unint64_t sub_1822C64DC()
{
  result = qword_1EA83BFD8;
  if (!qword_1EA83BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BFD8);
  }

  return result;
}

unint64_t sub_1822C6534()
{
  result = qword_1EA83BFE0;
  if (!qword_1EA83BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BFE0);
  }

  return result;
}

unint64_t sub_1822C658C()
{
  result = qword_1EA83BFE8;
  if (!qword_1EA83BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BFE8);
  }

  return result;
}

unint64_t sub_1822C65E4()
{
  result = qword_1EA83BFF0;
  if (!qword_1EA83BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BFF0);
  }

  return result;
}

uint64_t NWActorSystemInvocationDecoder.decodeGenericSubstitutions()()
{
  v1 = v0 + *(type metadata accessor for NWActorSystemInvocationDecoder(0) + 20);
  result = type metadata accessor for RemoteCallEnvelope(0);
  v3 = 0;
  v4 = *(v1 + *(result + 28));
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = v4 + 40 + 16 * v3;
  while (1)
  {
    if (v5 == v3)
    {
      return v6;
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    ++v3;
    v8 = v7 + 16;

    v9 = sub_182AD3BC8();

    v7 = v8;
    if (v9)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_181F5B3C0(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_181F5B3C0((v10 > 1), v11 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v11 + 1;
      *(v6 + 8 * v11 + 32) = v9;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for NWActorSystemInvocationDecoder(uint64_t a1)
{
  result = qword_1EA83BFF8;
  if (!qword_1EA83BFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NWActorSystemInvocationDecoder.decodeNextArgument<A>()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v5 = sub_182AD39B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - v7;
  v9 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for NWActorSystemInvocationDecoder(0);
  v14 = (v2 + *(result + 24));
  v16 = *v14;
  v15 = v14[1];
  v17 = *(*v14 + 16);
  if (v15 == v17)
  {
    sub_181FCD1A0();
    swift_allocError();
    *v18 = a1;
    *(v18 + 8) = xmmword_182B07D00;
    return swift_willThrow();
  }

  if (v15 < v17)
  {
    v35 = v6;
    v36 = v5;
    v37 = v9;
    v19 = v16 + 16 * v15;
    v20 = *(v19 + 32);
    v21 = *(v19 + 40);
    v14[1] = v15 + 1;
    v22 = swift_conformsToProtocol2();
    if (v22)
    {
      v23 = v22;
      v34 = a2;
      v24 = *(v22 + 24);
      v41 = a1;
      v42 = v22;
      __swift_allocate_boxed_opaque_existential_0Tm(v40);
      sub_181F49B58(v20, v21);
      v25 = sub_181F49B58(v20, v21);
      v38 = v21;
      v26 = v43;
      v24(v20, v21, a1, v23, v25);
      if (v26)
      {
        __swift_deallocate_boxed_opaque_existential_1Tm(v40);
      }

      else
      {
        sub_181F75240(v40, v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB60, &unk_182B07D10);
        if (swift_dynamicCast())
        {
          sub_181C1F2E4(v20, v38);
          v28 = v37;
          (*(v37 + 56))(v8, 0, 1, a1);
          v29 = *(v28 + 32);
          v29(v12, v8, a1);
          v29(v34, v12, a1);
          return __swift_destroy_boxed_opaque_existential_1(v40);
        }

        (*(v37 + 56))(v8, 1, 1, a1);
        (*(v35 + 8))(v8, v36);
        v30 = sub_182AD3C98();
        swift_allocError();
        v32 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A40, &qword_182AEE9A0);
        __swift_project_boxed_opaque_existential_1(v40, v41);
        *v32 = swift_getDynamicType();
        sub_182AD3C88();
        (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(v40);
      }

      v21 = v38;
    }

    else
    {
      sub_181F49B58(v20, v21);
      v27 = v43;
      sub_182AD1C18();
      if (!v27)
      {
        return sub_181C1F2E4(v20, v21);
      }
    }

    swift_willThrow();
    return sub_181C1F2E4(v20, v21);
  }

  __break(1u);
  return result;
}

uint64_t sub_1822C6C6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return NWActorSystemInvocationDecoder.decodeNextArgument<A>()(a1, a2);
}

void sub_1822C6CF0(uint64_t a1)
{
  sub_182AD1C48();
  if (v1 <= 0x3F)
  {
    type metadata accessor for RemoteCallEnvelope(319);
    if (v2 <= 0x3F)
    {
      sub_1822C6D8C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1822C6D8C(uint64_t a1)
{
  if (!qword_1EA83C008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83BC50, &qword_182B07D90);
    sub_1822C6DFC();
    v1 = sub_182AD3E38();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA83C008);
    }
  }
}

unint64_t sub_1822C6DFC()
{
  result = qword_1EA83C010;
  if (!qword_1EA83C010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83BC50, &qword_182B07D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C010);
  }

  return result;
}

double HTTPRequest.method.getter@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 64);
  *a1 = *(*v1 + 56);
  a1[1] = v2;

  return result;
}

unint64_t HTTPRequest.extendedConnectProtocol.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  if (!v2)
  {
    return 0;
  }

  v3 = v1[30];
  v4 = v1[32];
  v5 = v1[33];
  v7 = v1[34];
  v6 = v1[35];
  v8 = v1[36];
  if (sub_181CA4798(v6, v8))
  {
  }

  else
  {
    sub_181F887D0(v3, v2, v4, v5, v7, v6, v8);
    v9 = sub_182287700(v6, v8);
    sub_181D04D28(v3, v2, v4, v5, v7, v6, v8);
    return v9;
  }

  return v6;
}

unint64_t HTTPRequest.path.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  if (!v2)
  {
    return 0;
  }

  v3 = v1[23];
  v4 = v1[25];
  v5 = v1[26];
  v7 = v1[27];
  v6 = v1[28];
  v8 = v1[29];
  if (sub_181CA4798(v6, v8))
  {
  }

  else
  {
    sub_181F887D0(v3, v2, v4, v5, v7, v6, v8);
    v9 = sub_182287700(v6, v8);
    sub_181D04D28(v3, v2, v4, v5, v7, v6, v8);
    return v9;
  }

  return v6;
}

double HTTPRequest.PseudoHeaderFields.scheme.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 112);
  v8 = *(*v1 + 120);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_181F887D0(v2, v3, v4, v5, v6, v7, v8);
}

double HTTPRequest.PseudoHeaderFields.authority.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 160);
  v7 = *(*v1 + 168);
  v8 = *(*v1 + 176);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_181F887D0(v2, v3, v4, v5, v6, v7, v8);
}

double HTTPRequest.PseudoHeaderFields.path.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 208);
  v6 = *(*v1 + 216);
  v7 = *(*v1 + 224);
  v8 = *(*v1 + 232);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_181F887D0(v2, v3, v4, v5, v6, v7, v8);
}

void HTTPRequest.scheme.setter(unint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    v5 = *v2;
    v6 = *(*v2 + 80);
    if (v6)
    {
      v27 = v5[9];
      v7 = v5[11];
      v8 = v5[12];
      v10 = v5[13];
      v9 = v5[14];
      v11 = v5[15];
      if (sub_181CA4798(a1, a2))
      {
        sub_181F887D0(v27, v6, v7, v8, v10, v9, v11);
      }

      else
      {
        *&v28 = v4;
        *(&v28 + 1) = v3;
        *&v29 = sub_1822876F4;
        *(&v29 + 1) = 0;
        v33 = 0;
        v34 = 0xE000000000000000;
        sub_181F887D0(v27, v6, v7, v8, v10, v9, v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8, &qword_182AEF830);
        sub_181F88C5C();
        sub_182AD30A8();

        v4 = 0;
        v3 = 0xE000000000000000;
      }

      v24 = sub_181CA1930(v4, v3);
      v26 = v25;

      *&v28 = v27;
      *(&v28 + 1) = v6;
      *&v29 = v7;
      *(&v29 + 1) = v8;
      v30 = v10;
      v31 = v24;
      v32 = v26;
    }

    else
    {
      if ((sub_181CA4798(a1, a2) & 1) == 0)
      {
        *&v28 = v4;
        *(&v28 + 1) = v3;
        *&v29 = sub_1822876F4;
        *(&v29 + 1) = 0;
        v33 = 0;
        v34 = 0xE000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8, &qword_182AEF830);
        sub_181F88C5C();
        sub_182AD30A8();

        v4 = 0;
        v3 = 0xE000000000000000;
      }

      v21 = sub_181CA1930(v4, v3);
      v23 = v22;

      v28 = xmmword_182AE94B0;
      v29 = xmmword_182AE94B0;
      v30 = 0;
      v31 = v21;
      v32 = v23;
    }

    HTTPRequest.PseudoHeaderFields.scheme.setter(&v28);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1822C9498();

      *v2 = v13;
    }

    v14 = v13[9];
    v15 = v13[10];
    v16 = v13[11];
    v17 = v13[12];
    v18 = v13[13];
    v19 = v13[14];
    v20 = v13[15];
    *(v13 + 9) = 0u;
    *(v13 + 11) = 0u;
    *(v13 + 13) = 0u;
    v13[15] = 0;

    sub_181D04D28(v14, v15, v16, v17, v18, v19, v20);
  }
}

void HTTPRequest.authority.setter(unint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    v5 = *v2;
    v6 = *(*v2 + 136);
    if (v6)
    {
      v27 = v5[16];
      v7 = v5[18];
      v8 = v5[19];
      v10 = v5[20];
      v9 = v5[21];
      v11 = v5[22];
      if (sub_181CA4798(a1, a2))
      {
        sub_181F887D0(v27, v6, v7, v8, v10, v9, v11);
      }

      else
      {
        *&v28 = v4;
        *(&v28 + 1) = v3;
        *&v29 = sub_1822876F4;
        *(&v29 + 1) = 0;
        v33 = 0;
        v34 = 0xE000000000000000;
        sub_181F887D0(v27, v6, v7, v8, v10, v9, v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8, &qword_182AEF830);
        sub_181F88C5C();
        sub_182AD30A8();

        v4 = 0;
        v3 = 0xE000000000000000;
      }

      v24 = sub_181CA1930(v4, v3);
      v26 = v25;

      *&v28 = v27;
      *(&v28 + 1) = v6;
      *&v29 = v7;
      *(&v29 + 1) = v8;
      v30 = v10;
      v31 = v24;
      v32 = v26;
    }

    else
    {
      if ((sub_181CA4798(a1, a2) & 1) == 0)
      {
        *&v28 = v4;
        *(&v28 + 1) = v3;
        *&v29 = sub_1822876F4;
        *(&v29 + 1) = 0;
        v33 = 0;
        v34 = 0xE000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8, &qword_182AEF830);
        sub_181F88C5C();
        sub_182AD30A8();

        v4 = 0;
        v3 = 0xE000000000000000;
      }

      v21 = sub_181CA1930(v4, v3);
      v23 = v22;

      v28 = xmmword_182AE94A0;
      v29 = xmmword_182AE94A0;
      v30 = 0;
      v31 = v21;
      v32 = v23;
    }

    HTTPRequest.PseudoHeaderFields.authority.setter(&v28);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1822C9498();

      *v2 = v13;
    }

    v14 = v13[16];
    v15 = v13[17];
    v16 = v13[18];
    v17 = v13[19];
    v18 = v13[20];
    v19 = v13[21];
    v20 = v13[22];
    *(v13 + 8) = 0u;
    *(v13 + 9) = 0u;
    *(v13 + 10) = 0u;
    v13[22] = 0;

    sub_181D04D28(v14, v15, v16, v17, v18, v19, v20);
  }
}

void HTTPRequest.path.setter(unint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    v5 = *v2;
    v6 = *(*v2 + 192);
    if (v6)
    {
      v27 = v5[23];
      v7 = v5[25];
      v8 = v5[26];
      v10 = v5[27];
      v9 = v5[28];
      v11 = v5[29];
      if (sub_181CA4798(a1, a2))
      {
        sub_181F887D0(v27, v6, v7, v8, v10, v9, v11);
      }

      else
      {
        *&v28 = v4;
        *(&v28 + 1) = v3;
        *&v29 = sub_1822876F4;
        *(&v29 + 1) = 0;
        v33 = 0;
        v34 = 0xE000000000000000;
        sub_181F887D0(v27, v6, v7, v8, v10, v9, v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8, &qword_182AEF830);
        sub_181F88C5C();
        sub_182AD30A8();

        v4 = 0;
        v3 = 0xE000000000000000;
      }

      v24 = sub_181CA1930(v4, v3);
      v26 = v25;

      *&v28 = v27;
      *(&v28 + 1) = v6;
      *&v29 = v7;
      *(&v29 + 1) = v8;
      v30 = v10;
      v31 = v24;
      v32 = v26;
    }

    else
    {
      if ((sub_181CA4798(a1, a2) & 1) == 0)
      {
        *&v28 = v4;
        *(&v28 + 1) = v3;
        *&v29 = sub_1822876F4;
        *(&v29 + 1) = 0;
        v33 = 0;
        v34 = 0xE000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8, &qword_182AEF830);
        sub_181F88C5C();
        sub_182AD30A8();

        v4 = 0;
        v3 = 0xE000000000000000;
      }

      v21 = sub_181CA1930(v4, v3);
      v23 = v22;

      v28 = xmmword_182AE94C0;
      v29 = xmmword_182AE94C0;
      v30 = 0;
      v31 = v21;
      v32 = v23;
    }

    HTTPRequest.PseudoHeaderFields.path.setter(&v28);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1822C9498();

      *v2 = v13;
    }

    v14 = v13[23];
    v15 = v13[24];
    v16 = v13[25];
    v17 = v13[26];
    v18 = v13[27];
    v19 = v13[28];
    v20 = v13[29];
    *(v13 + 23) = 0u;
    *(v13 + 25) = 0u;
    *(v13 + 27) = 0u;
    v13[29] = 0;

    sub_181D04D28(v14, v15, v16, v17, v18, v19, v20);
  }
}

void HTTPRequest.PseudoHeaderFields.scheme.setter(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v17 = *(a1 + 5);
  v18 = *(a1 + 3);
  if (v3)
  {
    if (v5 != 0x656D656863733ALL || v18 != 0xE700000000000000)
    {
      v7 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      if (v7)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    swift_bridgeObjectRelease_n();
  }

LABEL_9:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1822C9498();

    *v2 = v9;
  }

  v10 = v9[9];
  v11 = v9[10];
  v12 = v9[11];
  v13 = v9[12];
  v14 = v9[13];
  v15 = v9[14];
  v16 = v9[15];
  v9[9] = v4;
  v9[10] = v3;
  v9[11] = v5;
  *(v9 + 6) = v18;
  *(v9 + 7) = v17;

  sub_181D04D28(v10, v11, v12, v13, v14, v15, v16);
}

void HTTPRequest.PseudoHeaderFields.authority.setter(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v17 = *(a1 + 5);
  v18 = *(a1 + 3);
  if (v3)
  {
    if (v5 != 0x69726F687475613ALL || v18 != 0xEA00000000007974)
    {
      v7 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      if (v7)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    swift_bridgeObjectRelease_n();
  }

LABEL_9:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1822C9498();

    *v2 = v9;
  }

  v10 = v9[16];
  v11 = v9[17];
  v12 = v9[18];
  v13 = v9[19];
  v14 = v9[20];
  v15 = v9[21];
  v16 = v9[22];
  v9[16] = v4;
  v9[17] = v3;
  v9[18] = v5;
  *(v9 + 19) = v18;
  *(v9 + 21) = v17;

  sub_181D04D28(v10, v11, v12, v13, v14, v15, v16);
}

void HTTPRequest.PseudoHeaderFields.path.setter(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v17 = *(a1 + 5);
  v18 = *(a1 + 3);
  if (v3)
  {
    if (v5 != 0x687461703ALL || v18 != 0xE500000000000000)
    {
      v7 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      if (v7)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    swift_bridgeObjectRelease_n();
  }

LABEL_9:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1822C9498();

    *v2 = v9;
  }

  v10 = v9[23];
  v11 = v9[24];
  v12 = v9[25];
  v13 = v9[26];
  v14 = v9[27];
  v15 = v9[28];
  v16 = v9[29];
  v9[23] = v4;
  v9[24] = v3;
  v9[25] = v5;
  *(v9 + 13) = v18;
  *(v9 + 14) = v17;

  sub_181D04D28(v10, v11, v12, v13, v14, v15, v16);
}

void HTTPRequest.init(method:scheme:authority:path:headerFields:)(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t *a9@<X8>)
{
  v52 = a1[1];
  v53 = *a1;
  v54 = *a8;
  v56 = 0u;
  if (a3)
  {
    v14 = a2;
    if (sub_181CA4798(a2, a3))
    {

      v15 = a3;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8, &qword_182AEF830);
      sub_181F88C5C();
      sub_182AD30A8();
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    v16 = sub_181CA1930(v14, v15);
    v17 = v23;

    v51 = xmmword_182AE94B0;
    if (a5)
    {
LABEL_9:
      if (sub_181CA4798(a4, a5))
      {

        v24 = a5;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8, &qword_182AEF830);
        sub_181F88C5C();
        sub_182AD30A8();
        a4 = 0;
        v24 = 0xE000000000000000;
      }

      v18 = sub_181CA1930(a4, v24);
      v19 = v25;

      v56 = xmmword_182AE94A0;
      if (a7)
      {
        goto LABEL_13;
      }

LABEL_6:
      v20 = 0;
      v21 = 0;
      v22 = 0uLL;
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v51 = 0uLL;
    if (a5)
    {
      goto LABEL_9;
    }
  }

  v18 = 0;
  v19 = 0;
  if (!a7)
  {
    goto LABEL_6;
  }

LABEL_13:
  if (sub_181CA4798(a6, a7))
  {

    v26 = a7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8, &qword_182AEF830);
    sub_181F88C5C();
    sub_182AD30A8();
    a6 = 0;
    v26 = 0xE000000000000000;
  }

  v20 = sub_181CA1930(a6, v26);
  v21 = v27;

  v22 = xmmword_182AE94C0;
LABEL_17:
  v50 = v22;
  type metadata accessor for HTTPRequest.PseudoHeaderFields._Storage();
  v28 = swift_allocObject();
  *(v28 + 128) = 0u;
  *(v28 + 144) = 0u;
  *(v28 + 160) = 0u;
  *(v28 + 176) = 0u;
  *(v28 + 192) = 0u;
  *(v28 + 208) = 0u;
  *(v28 + 224) = 0u;
  *(v28 + 240) = 0u;
  *(v28 + 256) = 0u;
  *(v28 + 272) = 0u;
  *(v28 + 288) = 0;
  *(v28 + 16) = 0x646F6874656D3ALL;
  *(v28 + 24) = 0xE700000000000000;
  *(v28 + 32) = 0x646F6874656D3ALL;
  *(v28 + 40) = 0xE700000000000000;
  *(v28 + 48) = 0;
  *(v28 + 56) = v53;
  *(v28 + 64) = v52;
  *(v28 + 88) = v51;
  *(v28 + 72) = v51;
  *(v28 + 104) = 0;
  *(v28 + 112) = v16;
  *(v28 + 120) = v17;
  sub_181D04D28(0, 0, 0, 0, 0, 0, 0);
  v29 = *(v28 + 128);
  v30 = *(v28 + 136);
  v31 = *(v28 + 144);
  v32 = *(v28 + 152);
  v33 = *(v28 + 160);
  v34 = *(v28 + 168);
  v35 = *(v28 + 176);
  *(v28 + 128) = v56;
  *(v28 + 144) = v56;
  *(v28 + 160) = 0;
  *(v28 + 168) = v18;
  *(v28 + 176) = v19;
  sub_181D04D28(v29, v30, v31, v32, v33, v34, v35);
  v36 = *(v28 + 184);
  v37 = *(v28 + 192);
  v38 = *(v28 + 200);
  v39 = *(v28 + 208);
  v40 = *(v28 + 216);
  v41 = *(v28 + 224);
  v42 = *(v28 + 232);
  *(v28 + 184) = v50;
  *(v28 + 200) = v50;
  *(v28 + 216) = 0;
  *(v28 + 224) = v20;
  *(v28 + 232) = v21;
  sub_181D04D28(v36, v37, v38, v39, v40, v41, v42);
  v43 = *(v28 + 240);
  v44 = *(v28 + 248);
  v45 = *(v28 + 256);
  v46 = *(v28 + 264);
  v47 = *(v28 + 272);
  v48 = *(v28 + 280);
  v49 = *(v28 + 288);
  *(v28 + 240) = 0u;
  *(v28 + 256) = 0u;
  *(v28 + 272) = 0u;
  *(v28 + 288) = 0;
  sub_181D04D28(v43, v44, v45, v46, v47, v48, v49);
  *a9 = v28;
  a9[1] = v54;
}

double HTTPRequest.PseudoHeaderFields.method.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v2 = *(*v1 + 24);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 56);
  v8 = *(*v1 + 64);
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;

  return result;
}

double HTTPRequest.PseudoHeaderFields.extendedConnectProtocol.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 256);
  v5 = *(*v1 + 264);
  v6 = *(*v1 + 272);
  v7 = *(*v1 + 280);
  v8 = *(*v1 + 288);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_181F887D0(v2, v3, v4, v5, v6, v7, v8);
}

void HTTPRequest.PseudoHeaderFields.extendedConnectProtocol.setter(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v17 = *(a1 + 5);
  v18 = *(a1 + 3);
  if (v3)
  {
    if (v5 != 0x6F636F746F72703ALL || v18 != 0xE90000000000006CLL)
    {
      v7 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      if (v7)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    swift_bridgeObjectRelease_n();
  }

LABEL_9:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1822C9498();

    *v2 = v9;
  }

  v10 = v9[30];
  v11 = v9[31];
  v12 = v9[32];
  v13 = v9[33];
  v14 = v9[34];
  v15 = v9[35];
  v16 = v9[36];
  v9[30] = v4;
  v9[31] = v3;
  v9[32] = v5;
  *(v9 + 33) = v18;
  *(v9 + 35) = v17;

  sub_181D04D28(v10, v11, v12, v13, v14, v15, v16);
}

unint64_t HTTPRequest.scheme.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  if (!v2)
  {
    return 0;
  }

  v3 = v1[9];
  v4 = v1[11];
  v5 = v1[12];
  v7 = v1[13];
  v6 = v1[14];
  v8 = v1[15];
  if (sub_181CA4798(v6, v8))
  {
  }

  else
  {
    sub_181F887D0(v3, v2, v4, v5, v7, v6, v8);
    v9 = sub_182287700(v6, v8);
    sub_181D04D28(v3, v2, v4, v5, v7, v6, v8);
    return v9;
  }

  return v6;
}

uint64_t HTTPRequest.method.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *(*v1 + 16);
  v4 = *(*v1 + 24);
  v7 = *(*v1 + 32);
  v6 = *(*v1 + 40);
  v8 = *(*v1 + 48);

  v10[0] = v5;
  v10[1] = v4;
  v10[2] = v7;
  v10[3] = v6;
  v11 = v8;
  v12 = v2;
  v13 = v3;
  return HTTPRequest.PseudoHeaderFields.method.setter(v10);
}

void HTTPRequest.extendedConnectProtocol.setter(unint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    v5 = *v2;
    v6 = *(*v2 + 248);
    if (v6)
    {
      v27 = v5[30];
      v7 = v5[32];
      v8 = v5[33];
      v10 = v5[34];
      v9 = v5[35];
      v11 = v5[36];
      if (sub_181CA4798(a1, a2))
      {
        sub_181F887D0(v27, v6, v7, v8, v10, v9, v11);
      }

      else
      {
        *&v28 = v4;
        *(&v28 + 1) = v3;
        *&v29 = sub_1822876F4;
        *(&v29 + 1) = 0;
        v33 = 0;
        v34 = 0xE000000000000000;
        sub_181F887D0(v27, v6, v7, v8, v10, v9, v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8, &qword_182AEF830);
        sub_181F88C5C();
        sub_182AD30A8();

        v4 = 0;
        v3 = 0xE000000000000000;
      }

      v24 = sub_181CA1930(v4, v3);
      v26 = v25;

      *&v28 = v27;
      *(&v28 + 1) = v6;
      *&v29 = v7;
      *(&v29 + 1) = v8;
      v30 = v10;
      v31 = v24;
      v32 = v26;
    }

    else
    {
      if ((sub_181CA4798(a1, a2) & 1) == 0)
      {
        *&v28 = v4;
        *(&v28 + 1) = v3;
        *&v29 = sub_1822876F4;
        *(&v29 + 1) = 0;
        v33 = 0;
        v34 = 0xE000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8, &qword_182AEF830);
        sub_181F88C5C();
        sub_182AD30A8();

        v4 = 0;
        v3 = 0xE000000000000000;
      }

      v21 = sub_181CA1930(v4, v3);
      v23 = v22;

      v28 = xmmword_182AF58C0;
      v29 = xmmword_182AF58C0;
      v30 = 0;
      v31 = v21;
      v32 = v23;
    }

    HTTPRequest.PseudoHeaderFields.extendedConnectProtocol.setter(&v28);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1822C9498();

      *v2 = v13;
    }

    v14 = v13[30];
    v15 = v13[31];
    v16 = v13[32];
    v17 = v13[33];
    v18 = v13[34];
    v19 = v13[35];
    v20 = v13[36];
    *(v13 + 15) = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 17) = 0u;
    v13[36] = 0;

    sub_181D04D28(v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t HTTPRequest.PseudoHeaderFields.method.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = a1[5];
  v9 = a1[6];
  if (v5 != 0x646F6874656D3ALL || v6 != 0xE700000000000000)
  {
    v11 = sub_182AD4268();
    result = swift_bridgeObjectRelease_n();
    if (v11)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  result = swift_bridgeObjectRelease_n();
LABEL_8:
  v13 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v13 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    __break(1u);
    goto LABEL_18;
  }

  result = sub_181CA3274(v8, v9);
  if ((result & 1) == 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1822C9498();

    *v2 = v15;
  }

  *(v15 + 16) = v3;
  *(v15 + 24) = v4;
  *(v15 + 32) = v5;
  *(v15 + 40) = v6;
  *(v15 + 48) = v7;
  *(v15 + 56) = v8;
  *(v15 + 64) = v9;
}

uint64_t sub_1822C8708()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v1 == 5522759 && v2 == 0xE300000000000000;
  if (v3 || (sub_182AD4268() & 1) != 0)
  {
    return 1;
  }

  v4 = v1 == 1145128264 && v2 == 0xE400000000000000;
  if (v4 || (sub_182AD4268() & 1) != 0 || v1 == 0x534E4F4954504FLL && v2 == 0xE700000000000000 || (sub_182AD4268() & 1) != 0 || v1 == 0x5952455551 && v2 == 0xE500000000000000)
  {
    return 1;
  }

  return sub_182AD4268();
}

Network::HTTPRequest::Method_optional __swiftcall HTTPRequest.Method.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3 = v1;
  v4 = HIBYTE(rawValue._object) & 0xF;
  if ((rawValue._object & 0x2000000000000000) == 0)
  {
    v4 = rawValue._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v4 && (countAndFlagsBits = rawValue._countAndFlagsBits, v6 = sub_181CA3274(rawValue._countAndFlagsBits, rawValue._object), (v6 & 1) != 0))
  {
    *v3 = countAndFlagsBits;
    v3[1] = object;
  }

  else
  {

    *v3 = 0;
    v3[1] = 0;
  }

  result.value.rawValue._object = v7;
  result.value.rawValue._countAndFlagsBits = v6;
  result.is_nil = v8;
  return result;
}

uint64_t HTTPRequest.Method.description.getter()
{
  v1 = *v0;

  return v1;
}

double sub_1822C88C4@<D0>(Swift::String *a1@<X0>, _OWORD *a2@<X8>)
{
  HTTPRequest.Method.init(rawValue:)(*a1);
  result = *&v4;
  *a2 = v4;
  return result;
}

double sub_1822C8904@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t sub_1822C8914(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *(*a2 + 16);
  v4 = *(*a2 + 24);
  v7 = *(*a2 + 32);
  v6 = *(*a2 + 40);
  v8 = *(*a2 + 48);

  v10[0] = v5;
  v10[1] = v4;
  v10[2] = v7;
  v10[3] = v6;
  v11 = v8;
  v12 = v3;
  v13 = v2;
  return HTTPRequest.PseudoHeaderFields.method.setter(v10);
}

uint64_t (*HTTPRequest.method.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[2] = v1;
  a1[3] = v3;
  v4 = *(v3 + 64);
  *a1 = *(v3 + 56);
  a1[1] = v4;

  return sub_1822C89EC;
}

uint64_t sub_1822C89EC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v8 = *(v4 + 32);
  v7 = *(v4 + 40);
  v9 = *(v4 + 48);
  if (a2)
  {

    v11 = v6;
    v12 = v5;
    v13 = v8;
    v14 = v7;
    v15 = v9;
    v16 = v3;
    v17 = v2;
    HTTPRequest.PseudoHeaderFields.method.setter(&v11);
  }

  else
  {

    v11 = v6;
    v12 = v5;
    v13 = v8;
    v14 = v7;
    v15 = v9;
    v16 = v3;
    v17 = v2;
    return HTTPRequest.PseudoHeaderFields.method.setter(&v11);
  }
}

void sub_1822C8AC8(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  if (v4)
  {
    v5 = v3[9];
    v6 = v3[11];
    v7 = v3[12];
    v9 = v3[13];
    v8 = v3[14];
    v10 = v3[15];
    if (sub_181CA4798(v8, v10))
    {
    }

    else
    {
      sub_181F887D0(v5, v4, v6, v7, v9, v8, v10);
      v11 = sub_182287700(v8, v10);
      v13 = v12;
      sub_181D04D28(v5, v4, v6, v7, v9, v8, v10);
      v8 = v11;
      v10 = v13;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a2 = v8;
  a2[1] = v10;
}

uint64_t (*HTTPRequest.scheme.modify(unint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  if (v4)
  {
    v5 = v3[9];
    v6 = v3[11];
    v7 = v3[12];
    v9 = v3[13];
    v8 = v3[14];
    v10 = v3[15];
    if (sub_181CA4798(v8, v10))
    {
    }

    else
    {
      sub_181F887D0(v5, v4, v6, v7, v9, v8, v10);
      v11 = sub_182287700(v8, v10);
      v13 = v12;
      sub_181D04D28(v5, v4, v6, v7, v9, v8, v10);
      v8 = v11;
      v10 = v13;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a1 = v8;
  a1[1] = v10;
  return sub_1822C8CC8;
}

unint64_t HTTPRequest.authority.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  if (!v2)
  {
    return 0;
  }

  v3 = v1[16];
  v4 = v1[18];
  v5 = v1[19];
  v7 = v1[20];
  v6 = v1[21];
  v8 = v1[22];
  if (sub_181CA4798(v6, v8))
  {
  }

  else
  {
    sub_181F887D0(v3, v2, v4, v5, v7, v6, v8);
    v9 = sub_182287700(v6, v8);
    sub_181D04D28(v3, v2, v4, v5, v7, v6, v8);
    return v9;
  }

  return v6;
}

void sub_1822C8DD0(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 136);
  if (v4)
  {
    v5 = v3[16];
    v6 = v3[18];
    v7 = v3[19];
    v9 = v3[20];
    v8 = v3[21];
    v10 = v3[22];
    if (sub_181CA4798(v8, v10))
    {
    }

    else
    {
      sub_181F887D0(v5, v4, v6, v7, v9, v8, v10);
      v11 = sub_182287700(v8, v10);
      v13 = v12;
      sub_181D04D28(v5, v4, v6, v7, v9, v8, v10);
      v8 = v11;
      v10 = v13;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a2 = v8;
  a2[1] = v10;
}

uint64_t (*HTTPRequest.authority.modify(unint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = *v1;
  v4 = *(*v1 + 136);
  if (v4)
  {
    v5 = v3[16];
    v6 = v3[18];
    v7 = v3[19];
    v9 = v3[20];
    v8 = v3[21];
    v10 = v3[22];
    if (sub_181CA4798(v8, v10))
    {
    }

    else
    {
      sub_181F887D0(v5, v4, v6, v7, v9, v8, v10);
      v11 = sub_182287700(v8, v10);
      v13 = v12;
      sub_181D04D28(v5, v4, v6, v7, v9, v8, v10);
      v8 = v11;
      v10 = v13;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a1 = v8;
  a1[1] = v10;
  return sub_1822C8FD0;
}

void sub_1822C8FE8(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4)
  {
    v5 = v3[23];
    v6 = v3[25];
    v7 = v3[26];
    v9 = v3[27];
    v8 = v3[28];
    v10 = v3[29];
    if (sub_181CA4798(v8, v10))
    {
    }

    else
    {
      sub_181F887D0(v5, v4, v6, v7, v9, v8, v10);
      v11 = sub_182287700(v8, v10);
      v13 = v12;
      sub_181D04D28(v5, v4, v6, v7, v9, v8, v10);
      v8 = v11;
      v10 = v13;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a2 = v8;
  a2[1] = v10;
}

uint64_t (*HTTPRequest.path.modify(unint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = *v1;
  v4 = *(*v1 + 192);
  if (v4)
  {
    v5 = v3[23];
    v6 = v3[25];
    v7 = v3[26];
    v9 = v3[27];
    v8 = v3[28];
    v10 = v3[29];
    if (sub_181CA4798(v8, v10))
    {
    }

    else
    {
      sub_181F887D0(v5, v4, v6, v7, v9, v8, v10);
      v11 = sub_182287700(v8, v10);
      v13 = v12;
      sub_181D04D28(v5, v4, v6, v7, v9, v8, v10);
      v8 = v11;
      v10 = v13;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a1 = v8;
  a1[1] = v10;
  return sub_1822C91E8;
}

void sub_1822C9200(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 248);
  if (v4)
  {
    v5 = v3[30];
    v6 = v3[32];
    v7 = v3[33];
    v9 = v3[34];
    v8 = v3[35];
    v10 = v3[36];
    if (sub_181CA4798(v8, v10))
    {
    }

    else
    {
      sub_181F887D0(v5, v4, v6, v7, v9, v8, v10);
      v11 = sub_182287700(v8, v10);
      v13 = v12;
      sub_181D04D28(v5, v4, v6, v7, v9, v8, v10);
      v8 = v11;
      v10 = v13;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a2 = v8;
  a2[1] = v10;
}

uint64_t (*HTTPRequest.extendedConnectProtocol.modify(unint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = *v1;
  v4 = *(*v1 + 248);
  if (v4)
  {
    v5 = v3[30];
    v6 = v3[32];
    v7 = v3[33];
    v9 = v3[34];
    v8 = v3[35];
    v10 = v3[36];
    if (sub_181CA4798(v8, v10))
    {
    }

    else
    {
      sub_181F887D0(v5, v4, v6, v7, v9, v8, v10);
      v11 = sub_182287700(v8, v10);
      v13 = v12;
      sub_181D04D28(v5, v4, v6, v7, v9, v8, v10);
      v8 = v11;
      v10 = v13;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a1 = v8;
  a1[1] = v10;
  return sub_1822C9400;
}

uint64_t sub_1822C9418(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

uint64_t sub_1822C9498()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v35 = *(v1 + 48);
  v5 = *(v1 + 64);
  v6 = *(v1 + 80);
  v38 = *(v1 + 72);
  v34 = *(v1 + 56);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);
  v9 = *(v1 + 104);
  v10 = *(v1 + 112);
  v36 = *(v1 + 32);
  v37 = *(v1 + 120);
  v44 = *(v1 + 128);
  v42 = *(v1 + 152);
  v43 = *(v1 + 136);
  v40 = *(v1 + 168);
  v41 = *(v1 + 160);
  v39 = *(v1 + 176);
  v47 = *(v1 + 184);
  v45 = *(v1 + 144);
  v46 = *(v1 + 192);
  v48 = *(v1 + 200);
  v56 = *(v1 + 208);
  v54 = *(v1 + 216);
  v52 = *(v1 + 224);
  v49 = *(v1 + 240);
  v50 = *(v1 + 232);
  v57 = *(v1 + 248);
  v55 = *(v1 + 256);
  v53 = *(v1 + 264);
  v51 = *(v1 + 272);
  v58 = *(v1 + 288);
  v59 = *(v1 + 280);
  v11 = swift_allocObject();
  *(v11 + 128) = 0u;
  *(v11 + 144) = 0u;
  *(v11 + 160) = 0u;
  *(v11 + 176) = 0u;
  *(v11 + 192) = 0u;
  *(v11 + 208) = 0u;
  *(v11 + 224) = 0u;
  *(v11 + 240) = 0u;
  *(v11 + 256) = 0u;
  *(v11 + 272) = 0u;
  *(v11 + 288) = 0;
  *(v11 + 16) = v2;
  *(v11 + 24) = v3;
  *(v11 + 32) = v36;
  *(v11 + 40) = v4;
  *(v11 + 48) = v35;
  *(v11 + 56) = v34;
  *(v11 + 64) = v5;

  sub_181F887D0(v38, v6, v7, v8, v9, v10, v37);
  sub_181F887D0(v44, v43, v45, v42, v41, v40, v39);
  sub_181F887D0(v47, v46, v48, v56, v54, v52, v50);
  sub_181F887D0(v49, v57, v55, v53, v51, v59, v58);
  *(v11 + 72) = v38;
  *(v11 + 80) = v6;
  *(v11 + 88) = v7;
  *(v11 + 96) = v8;
  *(v11 + 104) = v9;
  *(v11 + 112) = v10;
  *(v11 + 120) = v37;
  sub_181D04D28(0, 0, 0, 0, 0, 0, 0);
  v12 = *(v11 + 128);
  v13 = *(v11 + 136);
  v14 = *(v11 + 144);
  v15 = *(v11 + 152);
  v16 = *(v11 + 160);
  v17 = *(v11 + 168);
  v18 = *(v11 + 176);
  *(v11 + 128) = v44;
  *(v11 + 136) = v43;
  *(v11 + 144) = v45;
  *(v11 + 152) = v42;
  *(v11 + 160) = v41;
  *(v11 + 168) = v40;
  *(v11 + 176) = v39;
  sub_181D04D28(v12, v13, v14, v15, v16, v17, v18);
  v19 = *(v11 + 184);
  v20 = *(v11 + 192);
  v21 = *(v11 + 200);
  v22 = *(v11 + 208);
  v23 = *(v11 + 216);
  v24 = *(v11 + 224);
  v25 = *(v11 + 232);
  *(v11 + 184) = v47;
  *(v11 + 192) = v46;
  *(v11 + 200) = v48;
  *(v11 + 208) = v56;
  *(v11 + 216) = v54;
  *(v11 + 224) = v52;
  *(v11 + 232) = v50;
  sub_181D04D28(v19, v20, v21, v22, v23, v24, v25);
  v26 = *(v11 + 240);
  v27 = *(v11 + 248);
  v28 = *(v11 + 256);
  v29 = *(v11 + 264);
  v30 = *(v11 + 272);
  v31 = *(v11 + 280);
  v32 = *(v11 + 288);
  *(v11 + 240) = v49;
  *(v11 + 248) = v57;
  *(v11 + 256) = v55;
  *(v11 + 264) = v53;
  *(v11 + 272) = v51;
  *(v11 + 280) = v59;
  *(v11 + 288) = v58;
  sub_181D04D28(v26, v27, v28, v29, v30, v31, v32);
  return v11;
}

void sub_1822C9774(uint64_t a1)
{

  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();

  v2 = v1[10];
  if (v2)
  {
    v4 = v1[14];
    v3 = v1[15];
    v6 = v1[12];
    v5 = v1[13];
    v7 = v1[11];
    v8 = v1[9];
    sub_182AD4518();

    sub_182AD30E8();
    sub_182AD4518();
    sub_182AD30E8();
    sub_181D04D28(v8, v2, v7, v6, v5, v4, v3);
    v9 = v1[17];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_182AD4518();
    v9 = v1[17];
    if (v9)
    {
LABEL_3:
      v11 = v1[21];
      v10 = v1[22];
      v13 = v1[19];
      v12 = v1[20];
      v14 = v1[18];
      v15 = v1[16];
      sub_182AD4518();

      sub_182AD30E8();
      sub_182AD4518();
      sub_182AD30E8();
      sub_181D04D28(v15, v9, v14, v13, v12, v11, v10);
      v16 = v1[24];
      if (v16)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_182AD4518();
      v23 = v1[31];
      if (v23)
      {
        goto LABEL_5;
      }

LABEL_11:
      sub_182AD4518();
      return;
    }
  }

  sub_182AD4518();
  v16 = v1[24];
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_4:
  v18 = v1[28];
  v17 = v1[29];
  v20 = v1[26];
  v19 = v1[27];
  v21 = v1[25];
  v22 = v1[23];
  sub_182AD4518();

  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();
  sub_181D04D28(v22, v16, v21, v20, v19, v18, v17);
  v23 = v1[31];
  if (!v23)
  {
    goto LABEL_11;
  }

LABEL_5:
  v25 = v1[35];
  v24 = v1[36];
  v27 = v1[33];
  v26 = v1[34];
  v28 = v1[32];
  v29 = v1[30];
  sub_182AD4518();

  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();

  sub_181D04D28(v29, v23, v28, v27, v26, v25, v24);
}

uint64_t sub_1822C9A80(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = *a1;
  v8[1] = v1;
  v8[2] = v2;
  v8[3] = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;

  return HTTPRequest.PseudoHeaderFields.method.setter(v8);
}

void (*HTTPRequest.PseudoHeaderFields.method.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *v1;
  v7 = *(*v1 + 16);
  v6 = *(*v1 + 24);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 40);
  v10 = *(v5 + 48);
  v11 = *(v5 + 56);
  v12 = *(v5 + 64);
  *v4 = v7;
  *(v4 + 8) = v6;
  *(v4 + 16) = v8;
  *(v4 + 24) = v9;
  *(v4 + 32) = v10;
  *(v4 + 40) = v11;
  *(v4 + 48) = v12;

  return sub_1822C9B9C;
}

void sub_1822C9B9C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(v2 + 32);
  v8 = v2[5];
  v9 = v2[6];
  v10[0] = v4;
  v10[1] = v3;
  v10[2] = v5;
  v10[3] = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  if (a2)
  {

    HTTPRequest.PseudoHeaderFields.method.setter(v10);
  }

  else
  {
    HTTPRequest.PseudoHeaderFields.method.setter(v10);
  }

  free(v2);
}

double sub_1822C9C60@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = v2[10];
  v5 = v2[11];
  v6 = v2[12];
  v7 = v2[13];
  v8 = v2[14];
  v9 = v2[15];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  return sub_181F887D0(v3, v4, v5, v6, v7, v8, v9);
}

void (*HTTPRequest.PseudoHeaderFields.scheme.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[7] = v1;
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 88);
  v8 = *(*v1 + 96);
  v9 = *(*v1 + 104);
  v10 = *(*v1 + 112);
  v11 = *(*v1 + 120);
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  v4[6] = v11;
  sub_181F887D0(v5, v6, v7, v8, v9, v10, v11);
  return sub_1822C9D20;
}

double sub_1822C9D38@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  v4 = v2[17];
  v5 = v2[18];
  v6 = v2[19];
  v7 = v2[20];
  v8 = v2[21];
  v9 = v2[22];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  return sub_181F887D0(v3, v4, v5, v6, v7, v8, v9);
}

void (*HTTPRequest.PseudoHeaderFields.authority.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[7] = v1;
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 136);
  v7 = *(*v1 + 144);
  v8 = *(*v1 + 152);
  v9 = *(*v1 + 160);
  v10 = *(*v1 + 168);
  v11 = *(*v1 + 176);
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  v4[6] = v11;
  sub_181F887D0(v5, v6, v7, v8, v9, v10, v11);
  return sub_1822C9DF8;
}

double sub_1822C9E10@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 184);
  v4 = v2[24];
  v5 = v2[25];
  v6 = v2[26];
  v7 = v2[27];
  v8 = v2[28];
  v9 = v2[29];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  return sub_181F887D0(v3, v4, v5, v6, v7, v8, v9);
}

void (*HTTPRequest.PseudoHeaderFields.path.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[7] = v1;
  v5 = *(*v1 + 184);
  v6 = *(*v1 + 192);
  v7 = *(*v1 + 200);
  v8 = *(*v1 + 208);
  v9 = *(*v1 + 216);
  v10 = *(*v1 + 224);
  v11 = *(*v1 + 232);
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  v4[6] = v11;
  sub_181F887D0(v5, v6, v7, v8, v9, v10, v11);
  return sub_1822C9ED0;
}

double sub_1822C9EE8@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 240);
  v4 = v2[31];
  v5 = v2[32];
  v6 = v2[33];
  v7 = v2[34];
  v8 = v2[35];
  v9 = v2[36];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  return sub_181F887D0(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1822C9F10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, double))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v14[0] = *a1;
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v14[6] = v11;
  v12 = sub_181F887D0(v14[0], v6, v7, v8, v9, v10, v11);
  return a5(v14, v12);
}

void (*HTTPRequest.PseudoHeaderFields.extendedConnectProtocol.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[7] = v1;
  v5 = *(*v1 + 240);
  v6 = *(*v1 + 248);
  v7 = *(*v1 + 256);
  v8 = *(*v1 + 264);
  v9 = *(*v1 + 272);
  v10 = *(*v1 + 280);
  v11 = *(*v1 + 288);
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  v4[6] = v11;
  sub_181F887D0(v5, v6, v7, v8, v9, v10, v11);
  return sub_1822CA008;
}

void sub_1822CA020(uint64_t **a1, char a2, void (*a3)(void *, double))
{
  v5 = *a1;
  v6 = **a1;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  v11 = v5[5];
  v12 = v5[6];
  v14[0] = v6;
  v14[1] = v7;
  v14[2] = v8;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v11;
  v14[6] = v12;
  if (a2)
  {
    v13 = sub_181F887D0(v6, v7, v8, v9, v10, v11, v12);
    a3(v14, v13);
    sub_181D04D28(*v5, v5[1], v5[2], v5[3], v5[4], v5[5], v5[6]);
  }

  else
  {
    (a3)(v14);
  }

  free(v5);
}

uint64_t HTTPRequest.PseudoHeaderFields.hashValue.getter()
{
  sub_182AD44E8();
  sub_1822C9774(v1);
  return sub_182AD4558();
}

uint64_t sub_1822CA148()
{
  sub_182AD44E8();
  sub_1822C9774(v1);
  return sub_182AD4558();
}

uint64_t sub_1822CA18C(uint64_t a1)
{
  sub_182AD44E8();
  sub_1822C9774(v2);
  return sub_182AD4558();
}

double HTTPRequest.pseudoHeaderFields.getter@<D0>(void *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t HTTPRequest.pseudoHeaderFields.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

double HTTPRequest.headerFields.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

uint64_t HTTPRequest.headerFields.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t HTTPRequest.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1822C9774(a1);
  result = swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = v4 + 80;
    do
    {

      sub_182AD30E8();
      sub_182AD4518();
      sub_182AD30E8();

      v6 += 64;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t HTTPRequest.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_182AD44E8();
  sub_1822C9774(v6);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = v2 + 80;
    do
    {

      sub_182AD30E8();
      sub_182AD4518();
      sub_182AD30E8();

      v4 += 64;
      --v3;
    }

    while (v3);
  }

  return sub_182AD4558();
}

uint64_t sub_1822CA4D4(uint64_t a1)
{
  sub_182AD44E8();
  sub_1822C9774(v2);
  sub_182084F0C(v2);
  return sub_182AD4558();
}

uint64_t HTTPRequest.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 64);

  MEMORY[0x1865D9CA0](v2, v3);

  MEMORY[0x1865D9CA0](8233, 0xE200000000000000);
  v4 = v1[10];
  if (v4)
  {
    v5 = v1[9];
    v6 = v1[11];
    v7 = v1[12];
    v9 = v1[13];
    v8 = v1[14];
    v10 = v1[15];
    if (sub_181CA4798(v8, v10))
    {
    }

    else
    {
      sub_181F887D0(v5, v4, v6, v7, v9, v8, v10);
      v34 = sub_182287700(v8, v10);
      v13 = v12;
      sub_181D04D28(v5, v4, v6, v7, v9, v8, v10);
      v8 = v34;
      v10 = v13;
    }

    MEMORY[0x1865D9CA0](3092282, 0xE300000000000000);

    v11 = v8;
  }

  else
  {
    v11 = 0;
    v10 = 0xE000000000000000;
  }

  MEMORY[0x1865D9CA0](v11, v10);

  v14 = v1[17];
  if (v14)
  {
    v15 = v1[16];
    v16 = v1[18];
    v17 = v1[19];
    v19 = v1[20];
    v18 = v1[21];
    v20 = v1[22];
    if (sub_181CA4798(v18, v20))
    {
    }

    else
    {
      sub_181F887D0(v15, v14, v16, v17, v19, v18, v20);
      v35 = sub_182287700(v18, v20);
      v22 = v21;
      sub_181D04D28(v15, v14, v16, v17, v19, v18, v20);
      v18 = v35;
      v20 = v22;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  MEMORY[0x1865D9CA0](v18, v20);

  v23 = v1[24];
  if (v23)
  {
    v24 = v1[23];
    v25 = v1[25];
    v26 = v1[26];
    v28 = v1[27];
    v27 = v1[28];
    v29 = v1[29];
    if (sub_181CA4798(v27, v29))
    {
    }

    else
    {
      sub_181F887D0(v24, v23, v25, v26, v28, v27, v29);
      v30 = sub_182287700(v27, v29);
      v32 = v31;
      sub_181D04D28(v24, v23, v25, v26, v28, v27, v29);
      v27 = v30;
      v29 = v32;
    }
  }

  else
  {
    v27 = 0;
    v29 = 0xE000000000000000;
  }

  MEMORY[0x1865D9CA0](v27, v29);

  return 40;
}

uint64_t HTTPRequest.PseudoHeaderFields.encode(to:)(void *a1)
{
  v3 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD4608();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  sub_18208C37C();

  sub_182AD4208();

  if (!v2)
  {
    if (v3[10])
    {
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      sub_182AD4208();
    }

    if (v3[17])
    {
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      sub_182AD4208();
    }

    if (v3[24])
    {
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      sub_182AD4208();
    }

    if (v3[31])
    {
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      sub_182AD4208();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t HTTPRequest.PseudoHeaderFields.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD45B8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  __swift_project_boxed_opaque_existential_1(v110, v111);
  if (sub_182AD41E8())
  {
    v89 = 0;
    v90 = 0;
    v87 = 0;
    v88 = 0;
    v86 = 0;
    v94 = 0;
    v95 = 0;
    v91 = 0;
    v98 = 0;
    v100 = 0;
    v96 = 0;
    v92 = 0;
    v93 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_4:
    sub_181D04D28(v19, v18, v17, v16, v15, v14, v13);
    sub_181D04D28(v12, v11, v10, v9, v8, v7, v6);
    sub_181D04D28(v5, v92, v93, v96, v98, v100, v91);
    sub_181D04D28(v94, v95, v86, v87, v88, v89, v90);
    sub_182AD3C98();
    swift_allocError();
    sub_182AD3C68();
    goto LABEL_5;
  }

  v63 = v3;
  v70 = 0;
  v71 = 0;
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v85 = 0;
  v86 = 0;
  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v94 = 0;
  v95 = 0;
  v91 = 0;
  v92 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v93 = 0;
  v83 = 0;
  v84 = 0;
  v81 = 0;
  v82 = 0;
  v79 = 0;
  v80 = 0;
  v77 = 0;
  v78 = 0;
  v68 = 0;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  v76 = 0;
LABEL_8:
  while (2)
  {
    v97 = v22;
    v99 = v21;
    v101 = v20;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          __swift_mutable_project_boxed_opaque_existential_1(v110, v111);
          sub_18208C3D0();
          sub_182AD41D8();
          v112 = v104;
          v23 = v108;
          if (v105 != 0x646F6874656D3ALL || v106 != 0xE700000000000000)
          {
            break;
          }

          swift_bridgeObjectRelease_n();
LABEL_30:
          if (v85)
          {
            sub_181D04D28(v72, v85, v73, v74, v75, v70, v71);
            sub_181D04D28(v64, v76, v65, v66, v67, v68, v69);
            sub_181D04D28(v77, v78, v79, v80, v81, v82, v83);
            sub_181D04D28(v84, v92, v93, v97, v99, v101, v91);
            sub_181D04D28(v94, v95, v86, v87, v88, v89, v90);
LABEL_55:
            sub_182AD3C98();
            swift_allocError();
            goto LABEL_70;
          }

          __swift_project_boxed_opaque_existential_1(v110, v111);
          v31 = sub_182AD41E8();
          v70 = v108;
          v71 = v109;
          v74 = v106;
          v75 = v107;
          v73 = v105;
          v85 = v112;
          v72 = v103;
          if (v31)
          {
            v72 = v103;
            v73 = v105;
            v85 = v112;
            v74 = v106;
            v75 = v107;
            v70 = v108;
            v71 = v109;
LABEL_56:
            v21 = v99;
            v20 = v101;
            v22 = v97;
            goto LABEL_57;
          }
        }

        v25 = sub_182AD4268();
        swift_bridgeObjectRelease_n();
        if (v25)
        {
          goto LABEL_30;
        }

        if (v105 != 0x656D656863733ALL || v106 != 0xE700000000000000)
        {
          break;
        }

        swift_bridgeObjectRelease_n();
LABEL_34:
        if (v95)
        {
          sub_181D04D28(v94, v95, v86, v87, v88, v89, v90);
          sub_181D04D28(v64, v76, v65, v66, v67, v68, v69);
          sub_181D04D28(v77, v78, v79, v80, v81, v82, v83);
          sub_181D04D28(v84, v92, v93, v97, v99, v101, v91);
          sub_181D04D28(v72, v85, v73, v74, v75, v70, v71);
          goto LABEL_55;
        }

        __swift_project_boxed_opaque_existential_1(v110, v111);
        v32 = sub_182AD41E8();
        v89 = v108;
        v90 = v109;
        v87 = v106;
        v88 = v107;
        v86 = v105;
        v94 = v103;
        v95 = v112;
        if (v32)
        {
          v94 = v103;
          v95 = v112;
          v86 = v105;
          v87 = v106;
          v88 = v107;
          v89 = v108;
          v90 = v109;
          goto LABEL_56;
        }
      }

      v26 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      if (v26)
      {
        goto LABEL_34;
      }

      if (v105 == 0x69726F687475613ALL && v106 == 0xEA00000000007974)
      {
        swift_bridgeObjectRelease_n();
LABEL_38:
        if (!v92)
        {
          __swift_project_boxed_opaque_existential_1(v110, v111);
          v33 = sub_182AD41E8();
          v91 = v109;
          v20 = v108;
          v21 = v107;
          v22 = v106;
          v93 = v105;
          v92 = v112;
          v84 = v103;
          if ((v33 & 1) == 0)
          {
            goto LABEL_8;
          }

          v84 = v103;
          v92 = v112;
          v93 = v105;
          v22 = v106;
          v21 = v107;
          v20 = v108;
          v91 = v109;
          goto LABEL_57;
        }

        sub_181D04D28(v84, v92, v93, v97, v99, v101, v91);
        sub_181D04D28(v64, v76, v65, v66, v67, v68, v69);
        sub_181D04D28(v77, v78, v79, v80, v81, v82, v83);
        sub_181D04D28(v94, v95, v86, v87, v88, v89, v90);
        sub_181D04D28(v72, v85, v73, v74, v75, v70, v71);
        sub_182AD3C98();
        swift_allocError();
        goto LABEL_70;
      }

      v27 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      if (v27)
      {
        goto LABEL_38;
      }

      if (v105 == 0x687461703ALL && v106 == 0xE500000000000000)
      {
        swift_bridgeObjectRelease_n();
LABEL_42:
        if (!v78)
        {
          __swift_project_boxed_opaque_existential_1(v110, v111);
          v34 = sub_182AD41E8();
          v82 = v108;
          v83 = v109;
          v80 = v106;
          v81 = v107;
          v79 = v105;
          v77 = v103;
          v78 = v112;
          v21 = v99;
          v20 = v101;
          v22 = v97;
          if ((v34 & 1) == 0)
          {
            goto LABEL_8;
          }

          v77 = v103;
          v78 = v112;
          v79 = v105;
          v80 = v106;
          v81 = v107;
          v82 = v108;
          v83 = v109;
          goto LABEL_57;
        }

        sub_181D04D28(v77, v78, v79, v80, v81, v82, v83);
        sub_181D04D28(v64, v76, v65, v66, v67, v68, v69);
        sub_181D04D28(v84, v92, v93, v97, v99, v101, v91);
        sub_181D04D28(v94, v95, v86, v87, v88, v89, v90);
        sub_181D04D28(v72, v85, v73, v74, v75, v70, v71);
        sub_182AD3C98();
        swift_allocError();
LABEL_70:
        sub_182AD3C68();
LABEL_71:
        swift_willThrow();

        __swift_destroy_boxed_opaque_existential_1(v110);
        v3 = v63;
        return __swift_destroy_boxed_opaque_existential_1(v3);
      }

      v28 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      if (v28)
      {
        goto LABEL_42;
      }

      if (v105 == 0x6F636F746F72703ALL && v106 == 0xE90000000000006CLL)
      {
        break;
      }

      v29 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      if (v29)
      {
        goto LABEL_46;
      }

      v30 = v112;
      if ((sub_181CBD984(v103, v112) & 0x1FF) != 0x3A)
      {
        sub_181D04D28(v64, v76, v65, v66, v67, v68, v69);
        sub_181D04D28(v77, v78, v79, v80, v81, v82, v83);
        sub_181D04D28(v84, v92, v93, v97, v99, v101, v91);
        sub_181D04D28(v94, v95, v86, v87, v88, v89, v90);
        sub_181D04D28(v72, v85, v73, v74, v75, v70, v71);
        sub_182AD3BA8();

        v102 = v30;

        MEMORY[0x1865D9CA0](8250, 0xE200000000000000);
        if (sub_181CA4798(v108, v109))
        {

          v36 = v109;
        }

        else
        {
          v23 = sub_182287700(v108, v109);
          v36 = v37;
        }

        MEMORY[0x1865D9CA0](v23, v36);

        MEMORY[0x1865D9CA0](v103, v102);

        MEMORY[0x1865D9CA0](0xD00000000000001ELL, 0x8000000182BE0C90);
        sub_182AD3C98();
        swift_allocError();
        sub_182AD3C68();

        goto LABEL_71;
      }

      __swift_project_boxed_opaque_existential_1(v110, v111);
      if (sub_182AD41E8())
      {
        goto LABEL_56;
      }
    }

    swift_bridgeObjectRelease_n();
LABEL_46:
    if (v76)
    {
      sub_181D04D28(v64, v76, v65, v66, v67, v68, v69);
      sub_181D04D28(v77, v78, v79, v80, v81, v82, v83);
      sub_181D04D28(v84, v92, v93, v97, v99, v101, v91);
      sub_181D04D28(v94, v95, v86, v87, v88, v89, v90);
      sub_181D04D28(v72, v85, v73, v74, v75, v70, v71);
      sub_182AD3C98();
      swift_allocError();
      goto LABEL_70;
    }

    __swift_project_boxed_opaque_existential_1(v110, v111);
    v35 = sub_182AD41E8();
    v68 = v108;
    v69 = v109;
    v66 = v106;
    v67 = v107;
    v65 = v105;
    v76 = v112;
    v64 = v103;
    v21 = v99;
    v20 = v101;
    v22 = v97;
    if ((v35 & 1) == 0)
    {
      continue;
    }

    break;
  }

LABEL_57:
  v100 = v20;
  if (!v85)
  {
    v3 = v63;
    v96 = v22;
    v98 = v21;
    v6 = v83;
    v5 = v84;
    v8 = v81;
    v7 = v82;
    v10 = v79;
    v9 = v80;
    v14 = v68;
    v13 = v69;
    v12 = v77;
    v11 = v78;
    v16 = v66;
    v15 = v67;
    v19 = v64;
    v17 = v65;
    v18 = v76;
    goto LABEL_4;
  }

  v38 = v22;
  v39 = HIBYTE(v71) & 0xF;
  if ((v71 & 0x2000000000000000) == 0)
  {
    v39 = v70 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v63;
  if (v39)
  {
    if (sub_181CA3274(v70, v71))
    {
      type metadata accessor for HTTPRequest.PseudoHeaderFields._Storage();
      v40 = swift_allocObject();
      *(v40 + 128) = 0u;
      *(v40 + 144) = 0u;
      *(v40 + 160) = 0u;
      *(v40 + 176) = 0u;
      *(v40 + 192) = 0u;
      *(v40 + 208) = 0u;
      *(v40 + 224) = 0u;
      *(v40 + 240) = 0u;
      *(v40 + 256) = 0u;
      *(v40 + 272) = 0u;
      *(v40 + 288) = 0;
      *(v40 + 16) = v72;
      *(v40 + 24) = v85;
      *(v40 + 32) = v73;
      *(v40 + 40) = v74;
      *(v40 + 48) = v75;
      *(v40 + 56) = v70;
      *(v40 + 64) = v71;
      *(v40 + 72) = v94;
      *(v40 + 80) = v95;
      *(v40 + 88) = v86;
      *(v40 + 96) = v87;
      *(v40 + 104) = v88;
      *(v40 + 112) = v89;
      *(v40 + 120) = v90;
      sub_181D04D28(0, 0, 0, 0, 0, 0, 0);
      v41 = *(v40 + 128);
      v42 = *(v40 + 136);
      v43 = *(v40 + 144);
      v44 = *(v40 + 152);
      v45 = *(v40 + 160);
      v46 = *(v40 + 168);
      v47 = *(v40 + 176);
      *(v40 + 128) = v84;
      *(v40 + 136) = v92;
      *(v40 + 144) = v93;
      *(v40 + 152) = v38;
      *(v40 + 160) = v21;
      *(v40 + 168) = v100;
      *(v40 + 176) = v91;
      sub_181D04D28(v41, v42, v43, v44, v45, v46, v47);
      v48 = *(v40 + 184);
      v49 = *(v40 + 192);
      v50 = *(v40 + 200);
      v51 = *(v40 + 208);
      v52 = *(v40 + 216);
      v53 = *(v40 + 224);
      v54 = *(v40 + 232);
      *(v40 + 184) = v77;
      *(v40 + 192) = v78;
      *(v40 + 200) = v79;
      *(v40 + 208) = v80;
      *(v40 + 216) = v81;
      *(v40 + 224) = v82;
      *(v40 + 232) = v83;
      sub_181D04D28(v48, v49, v50, v51, v52, v53, v54);
      v55 = *(v40 + 240);
      v56 = *(v40 + 248);
      v57 = *(v40 + 256);
      v58 = *(v40 + 264);
      v59 = *(v40 + 272);
      v60 = *(v40 + 280);
      v61 = *(v40 + 288);
      *(v40 + 240) = v64;
      *(v40 + 248) = v76;
      *(v40 + 256) = v65;
      *(v40 + 264) = v66;
      *(v40 + 272) = v67;
      *(v40 + 280) = v68;
      *(v40 + 288) = v69;
      sub_181D04D28(v55, v56, v57, v58, v59, v60, v61);
      *a2 = v40;
      goto LABEL_6;
    }

    sub_181D04D28(v64, v76, v65, v66, v67, v68, v69);
    sub_181D04D28(v77, v78, v79, v80, v81, v82, v83);
    sub_181D04D28(v84, v92, v93, v38, v21, v20, v91);
    sub_181D04D28(v94, v95, v86, v87, v88, v89, v90);
  }

  else
  {

    sub_181D04D28(v64, v76, v65, v66, v67, v68, v69);
    sub_181D04D28(v77, v78, v79, v80, v81, v82, v83);
    sub_181D04D28(v84, v92, v93, v38, v21, v20, v91);
    sub_181D04D28(v94, v95, v86, v87, v88, v89, v90);
  }

  sub_182AD3BA8();

  MEMORY[0x1865D9CA0](v70, v71);
  sub_181D04D28(v72, v85, v73, v74, v75, v70, v71);

  MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BE4CB0);
  sub_182AD3C98();
  swift_allocError();
  sub_182AD3C68();

LABEL_5:
  swift_willThrow();
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1(v110);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_1822CBA1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6946726564616568;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = 0x8000000182BD45A0;
  }

  else
  {
    v4 = 0xEC00000073646C65;
  }

  if (*a2)
  {
    v5 = 0x6946726564616568;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*a2)
  {
    v6 = 0xEC00000073646C65;
  }

  else
  {
    v6 = 0x8000000182BD45A0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_182AD4268();
  }

  return v8 & 1;
}

uint64_t sub_1822CBAD0()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_1822CBB60(uint64_t a1, __n128 a2)
{
  sub_182AD30E8();
}

uint64_t sub_1822CBBDC(uint64_t a1)
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_1822CBC68@<X0>(char *a2@<X8>)
{
  v3 = sub_182AD3F48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1822CBCC8(unint64_t *a1@<X8>)
{
  v2 = 0x8000000182BD45A0;
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0x6946726564616568;
    v2 = 0xEC00000073646C65;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1822CBD14()
{
  if (*v0)
  {
    return 0x6946726564616568;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1822CBD5C@<X0>(char *a3@<X8>)
{
  v4 = sub_182AD3F48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1822CBDC0(uint64_t a1)
{
  v2 = sub_1822CD568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1822CBDFC(uint64_t a1)
{
  v2 = sub_1822CD568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HTTPRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83C018, &qword_182B07D98);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1822CD568();

  sub_182AD4638();
  v12 = v8;
  v11 = 0;
  sub_1822CD5BC();
  sub_182AD4118();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_182228FF8();

    sub_182AD4118();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HTTPRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83C030, &qword_182B07DA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1822CD568();
  sub_182AD45E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = 0;
  sub_1822CD610();
  sub_182AD3FF8();
  v9 = v14;
  v13 = 1;
  sub_1822290F4();
  sub_182AD3FF8();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1822CC234(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    if (v4 != v7)
    {
LABEL_43:
      v11 = 0;
      return v11 & 1;
    }

LABEL_9:
    v12 = v5 == v8 && v6 == v9;
    if (!v12 && (sub_182AD4268() & 1) == 0)
    {
      goto LABEL_43;
    }

    v13 = *(a1 + 72);
    v14 = *(a1 + 80);
    v15 = *(a1 + 88);
    v198 = *(a1 + 96);
    v17 = *(a1 + 104);
    v16 = *(a1 + 112);
    v18 = *(a1 + 120);
    v19 = *(a2 + 72);
    v20 = *(a2 + 96);
    v195 = *(a2 + 104);
    v21 = *(a2 + 120);
    v192 = *(a2 + 112);
    if (v14)
    {
      v166 = *(a2 + 96);
      v189 = *(a2 + 80);
      v172 = *(a2 + 88);
      if (!v189)
      {
LABEL_35:
        v41 = v19;
        v42 = v20;
        v43 = v16;
        v44 = v18;
        v45 = v13;
        sub_181F887D0(v13, v14, v15, v198, v17, v16, v18);
        v164 = v41;
        v46 = v41;
        v47 = v42;
        v30 = v21;
        v48 = v195;
        v49 = v15;
        v50 = v192;
        sub_181F887D0(v46, 0, v172, v47, v195, v192, v30);
        sub_181F887D0(v45, v14, v49, v198, v17, v43, v44);

        v51 = v166;

        v52 = v172;
LABEL_40:
        v201 = v45;
        v202 = v14;
        v203 = v49;
        v204 = v198;
        v205 = v17;
        v206 = v43;
        v207 = v44;
        v208 = v164;
        v209 = v189;
        v210 = v52;
        v211 = v51;
        v212 = v48;
        v213 = v50;
        goto LABEL_41;
      }

      v180 = *(a1 + 80);
      v185 = *(a1 + 112);
      v163 = *(a1 + 104);
      v168 = *(a1 + 88);
      v176 = *(a1 + 72);
      if (v15 != *(a2 + 88) || v198 != v20)
      {
        v22 = *(a1 + 72);
        v23 = *(a1 + 120);
        v24 = sub_182AD4268();
        v18 = v23;
        v13 = v22;
        if ((v24 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      if (v163 != v195)
      {
        goto LABEL_36;
      }

      v25 = v185;
      if (v185 != v192 || v18 != v21)
      {
        v64 = v14;
        v65 = v13;
        v66 = v18;
        v160 = v18;
        v155 = sub_182AD4268();
        sub_181F887D0(v65, v64, v168, v198, v163, v185, v66);
        sub_181F887D0(v19, v189, v172, v166, v195, v192, v21);
        sub_181F887D0(v176, v180, v168, v198, v163, v185, v160);
        sub_181D04D28(v19, v189, v172, v166, v195, v192, v21);

        sub_181D04D28(v176, v180, v168, v198, v163, v185, v160);
        if ((v155 & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_26;
      }

      v17 = v163;
      v26 = v18;
      v27 = v13;
      sub_181F887D0(v13, v180, v168, v198, v163, v185, v18);
      sub_181F887D0(v19, v189, v172, v166, v195, v185, v26);
      sub_181F887D0(v27, v180, v168, v198, v163, v185, v26);
      v15 = v168;
      sub_181D04D28(v19, v189, v172, v166, v195, v185, v26);

      v28 = v176;
      v29 = v180;
    }

    else
    {
      v30 = *(a2 + 120);
      v177 = *(a1 + 72);
      v31 = *(a2 + 88);
      v32 = *(a2 + 80);
      v186 = *(a1 + 112);
      v159 = *(a1 + 120);
      sub_181F887D0(v13, 0, v15, v198, v17, v16, v18);
      if (v32)
      {
        goto LABEL_39;
      }

      sub_181F887D0(v19, 0, v31, v20, v195, v192, v30);
      v29 = 0;
      v28 = v177;
      v26 = v159;
      v25 = v186;
    }

    sub_181D04D28(v28, v29, v15, v198, v17, v25, v26);
LABEL_26:
    v13 = *(a1 + 128);
    v14 = *(a1 + 136);
    v15 = *(a1 + 144);
    v198 = *(a1 + 152);
    v17 = *(a1 + 160);
    v16 = *(a1 + 168);
    v18 = *(a1 + 176);
    v19 = *(a2 + 128);
    v20 = *(a2 + 152);
    v195 = *(a2 + 160);
    v21 = *(a2 + 176);
    v192 = *(a2 + 168);
    if (v14)
    {
      v166 = *(a2 + 152);
      v189 = *(a2 + 136);
      v172 = *(a2 + 144);
      if (v189)
      {
        v180 = *(a1 + 136);
        v185 = *(a1 + 168);
        v163 = *(a1 + 160);
        v168 = *(a1 + 144);
        v176 = *(a1 + 128);
        if (v15 == *(a2 + 144) && v198 == v20 || (v33 = *(a1 + 128), v34 = *(a1 + 176), v35 = sub_182AD4268(), v18 = v34, v13 = v33, (v35 & 1) != 0))
        {
          if (v163 == v195)
          {
            v36 = v185;
            if (v185 != v192 || v18 != v21)
            {
              v96 = v14;
              v97 = v13;
              v98 = v18;
              v162 = v18;
              v156 = sub_182AD4268();
              sub_181F887D0(v97, v96, v168, v198, v163, v185, v98);
              sub_181F887D0(v19, v189, v172, v166, v195, v192, v21);
              sub_181F887D0(v176, v180, v168, v198, v163, v185, v162);
              sub_181D04D28(v19, v189, v172, v166, v195, v192, v21);

              sub_181D04D28(v176, v180, v168, v198, v163, v185, v162);
              if ((v156 & 1) == 0)
              {
                goto LABEL_43;
              }

              goto LABEL_49;
            }

            v17 = v163;
            v37 = v18;
            v38 = v13;
            sub_181F887D0(v13, v180, v168, v198, v163, v185, v18);
            sub_181F887D0(v19, v189, v172, v166, v195, v185, v37);
            sub_181F887D0(v38, v180, v168, v198, v163, v185, v37);
            v15 = v168;
            sub_181D04D28(v19, v189, v172, v166, v195, v185, v37);

            v39 = v176;
            v40 = v180;
LABEL_48:
            sub_181D04D28(v39, v40, v15, v198, v17, v36, v37);
LABEL_49:
            v67 = *(a1 + 184);
            v68 = *(a1 + 192);
            v69 = *(a1 + 200);
            v199 = *(a1 + 208);
            v71 = *(a1 + 216);
            v70 = *(a1 + 224);
            v72 = *(a1 + 232);
            v73 = *(a2 + 184);
            v74 = *(a2 + 208);
            v196 = *(a2 + 216);
            v75 = *(a2 + 232);
            if (v68)
            {
              v190 = *(a2 + 192);
              v193 = *(a2 + 224);
              v178 = *(a2 + 200);
              if (v190)
              {
                v181 = *(a1 + 224);
                v187 = *(a1 + 192);
                v167 = *(a1 + 216);
                v169 = *(a1 + 184);
                v173 = *(a1 + 200);
                v161 = *(a2 + 208);
                if (v69 == *(a2 + 200) && v199 == v74 || (v76 = *(a1 + 184), v77 = *(a1 + 232), v78 = sub_182AD4268(), v72 = v77, v67 = v76, (v78 & 1) != 0))
                {
                  if (v167 == v196)
                  {
                    v79 = v181;
                    if (v181 != v193 || v72 != v75)
                    {
                      v133 = v67;
                      v134 = v72;
                      v157 = v72;
                      v158 = sub_182AD4268();
                      sub_181F887D0(v133, v68, v173, v199, v167, v181, v134);
                      sub_181F887D0(v73, v190, v178, v161, v196, v193, v75);
                      sub_181F887D0(v133, v68, v173, v199, v167, v181, v157);
                      sub_181D04D28(v73, v190, v178, v161, v196, v193, v75);

                      sub_181D04D28(v169, v68, v173, v199, v167, v181, v157);
                      if ((v158 & 1) == 0)
                      {
                        goto LABEL_43;
                      }

                      goto LABEL_67;
                    }

                    v69 = v173;
                    v71 = v167;
                    v80 = v72;
                    v81 = v67;
                    sub_181F887D0(v67, v68, v173, v199, v167, v181, v72);
                    sub_181F887D0(v73, v190, v178, v161, v196, v181, v80);
                    sub_181F887D0(v81, v68, v173, v199, v167, v181, v80);
                    sub_181D04D28(v73, v190, v178, v161, v196, v181, v80);

                    v82 = v169;
                    v83 = v68;
LABEL_66:
                    sub_181D04D28(v82, v83, v69, v199, v71, v79, v80);
LABEL_67:
                    v106 = *(a1 + 240);
                    v107 = *(a1 + 248);
                    v109 = *(a1 + 256);
                    v108 = *(a1 + 264);
                    v111 = *(a1 + 272);
                    v110 = *(a1 + 280);
                    v200 = *(a1 + 288);
                    v112 = *(a2 + 248);
                    v114 = *(a2 + 256);
                    v113 = *(a2 + 264);
                    v115 = *(a2 + 272);
                    v116 = *(a2 + 280);
                    v194 = v106;
                    v197 = *(a2 + 288);
                    if (v107)
                    {
                      v188 = *(a2 + 240);
                      v191 = *(a2 + 280);
                      v179 = *(a2 + 248);
                      if (v112)
                      {
                        if (v109 == v114 && v108 == v113 || (v117 = v106, v118 = v110, v119 = sub_182AD4268(), v110 = v118, v106 = v117, (v119 & 1) != 0))
                        {
                          if (v111 == v115)
                          {
                            v183 = v115;
                            if (v110 == v116 && v200 == v197)
                            {
                              v120 = v110;
                              v121 = v106;
                              sub_181F887D0(v106, v107, v109, v108, v111, v110, v200);
                              sub_181F887D0(v188, v179, v114, v113, v183, v120, v200);
                              sub_181F887D0(v121, v107, v109, v108, v111, v120, v200);
                              sub_181D04D28(v188, v179, v114, v113, v183, v120, v200);
                              v122 = v111;
                              v11 = 1;
                            }

                            else
                            {
                              v152 = v106;
                              v153 = v110;
                              v171 = v110;
                              v122 = v111;
                              v11 = sub_182AD4268();
                              sub_181F887D0(v152, v107, v109, v108, v122, v153, v200);
                              sub_181F887D0(v188, v179, v114, v113, v183, v116, v197);
                              v154 = v152;
                              v120 = v171;
                              sub_181F887D0(v154, v107, v109, v108, v122, v171, v200);
                              sub_181D04D28(v188, v179, v114, v113, v183, v116, v197);
                            }

                            goto LABEL_87;
                          }

                          v120 = v110;
                          v142 = v106;
                          sub_181F887D0(v106, v107, v109, v108, v111, v110, v200);
                          v143 = v116;
                          v144 = v179;
                          sub_181F887D0(v188, v179, v114, v113, v115, v143, v197);
                          v145 = v142;
                          v146 = v107;
                          v147 = v109;
                          v148 = v108;
                          v149 = v111;
                          v150 = v120;
                          v151 = v200;
                        }

                        else
                        {
                          sub_181F887D0(v117, v107, v109, v108, v111, v118, v200);
                          v144 = v179;
                          sub_181F887D0(v188, v179, v114, v113, v115, v191, v197);
                          v145 = v117;
                          v146 = v107;
                          v147 = v109;
                          v148 = v108;
                          v149 = v111;
                          v120 = v118;
                          v150 = v118;
                          v151 = v200;
                        }

                        sub_181F887D0(v145, v146, v147, v148, v149, v150, v151);
                        sub_181D04D28(v188, v144, v114, v113, v115, v191, v197);
                        v122 = v111;
                        v11 = 0;
LABEL_87:

                        sub_181D04D28(v194, v107, v109, v108, v122, v120, v200);
                        return v11 & 1;
                      }

                      v135 = v109;
                      v136 = v108;
                      v175 = v108;
                      v137 = v109;
                      v138 = *(a2 + 264);
                      v127 = v110;
                      v139 = v106;
                      sub_181F887D0(v106, v107, v135, v136, v111, v110, v200);
                      v123 = v188;
                      v184 = v138;
                      v140 = v138;
                      v124 = v114;
                      v141 = v116;
                      v131 = v197;
                      sub_181F887D0(v188, 0, v114, v140, v115, v141, v197);
                      v125 = v137;
                      sub_181F887D0(v139, v107, v137, v175, v111, v127, v200);

                      v108 = v175;
                      v132 = v107;
                      v128 = v200;
                      v129 = 0;
                    }

                    else
                    {
                      v123 = *(a2 + 240);
                      v184 = v113;
                      v124 = v114;
                      v125 = v109;
                      v126 = v109;
                      v127 = v110;
                      v128 = v200;
                      v129 = v112;
                      sub_181F887D0(v106, 0, v126, v108, v111, v110, v200);
                      if (!v129)
                      {
                        sub_181F887D0(v123, 0, v124, v184, v115, v116, v197);
                        sub_181D04D28(v194, 0, v125, v108, v111, v127, v200);
                        v11 = 1;
                        return v11 & 1;
                      }

                      v130 = v116;
                      v191 = v116;
                      v131 = v197;
                      sub_181F887D0(v123, v129, v124, v184, v115, v130, v197);
                      v132 = 0;
                    }

                    v201 = v194;
                    v202 = v132;
                    v203 = v125;
                    v204 = v108;
                    v205 = v111;
                    v206 = v127;
                    v207 = v128;
                    v208 = v123;
                    v209 = v129;
                    v210 = v124;
                    v211 = v184;
                    v212 = v115;
                    v213 = v191;
                    v214 = v131;
                    goto LABEL_42;
                  }
                }

                v104 = v68;
                v54 = v181;
                v55 = v72;
                v105 = v67;
                sub_181F887D0(v67, v104, v173, v199, v167, v181, v72);
                sub_181F887D0(v73, v190, v178, v161, v196, v193, v75);
                sub_181F887D0(v105, v187, v173, v199, v167, v181, v55);
                sub_181D04D28(v73, v190, v178, v161, v196, v193, v75);

                v57 = v169;
                v59 = v173;
                v58 = v187;
                v60 = v199;
                v61 = v167;
                goto LABEL_37;
              }

              v99 = *(a2 + 184);
              v100 = *(a1 + 200);
              v101 = *(a2 + 224);
              v89 = *(a2 + 208);
              v95 = v70;
              v93 = v72;
              v92 = v67;
              sub_181F887D0(v67, v68, v100, v199, v71, v70, v72);
              v174 = v99;
              v102 = v99;
              v30 = v75;
              v90 = v196;
              v103 = v101;
              v69 = v100;
              sub_181F887D0(v102, 0, v178, v89, v196, v103, v30);
              sub_181F887D0(v92, v68, v100, v199, v71, v95, v93);

              v94 = v178;
            }

            else
            {
              v84 = *(a2 + 224);
              v165 = *(a2 + 232);
              v182 = *(a1 + 224);
              v85 = *(a2 + 200);
              v170 = *(a1 + 184);
              v86 = *(a2 + 192);
              v87 = *(a1 + 232);
              sub_181F887D0(v67, 0, v69, v199, v71, v70, v72);
              if (!v86)
              {
                sub_181F887D0(v73, 0, v85, v74, v196, v84, v165);
                v83 = 0;
                v82 = v170;
                v80 = v87;
                v79 = v182;
                goto LABEL_66;
              }

              v174 = v73;
              v190 = v86;
              v193 = v84;
              v88 = v86;
              v89 = v74;
              v90 = v196;
              v91 = v84;
              v30 = v165;
              sub_181F887D0(v73, v88, v85, v74, v196, v91, v165);
              v92 = v170;
              v93 = v87;
              v94 = v85;
              v95 = v182;
              v68 = 0;
            }

            v201 = v92;
            v202 = v68;
            v203 = v69;
            v204 = v199;
            v205 = v71;
            v206 = v95;
            v207 = v93;
            v208 = v174;
            v209 = v190;
            v210 = v94;
            v211 = v89;
            v212 = v90;
            v213 = v193;
LABEL_41:
            v214 = v30;
LABEL_42:
            sub_1822CD9B0(&v201);
            goto LABEL_43;
          }
        }

LABEL_36:
        v53 = v14;
        v54 = v185;
        v55 = v18;
        v56 = v13;
        sub_181F887D0(v13, v53, v168, v198, v163, v185, v18);
        sub_181F887D0(v19, v189, v172, v166, v195, v192, v21);
        sub_181F887D0(v56, v180, v168, v198, v163, v185, v55);
        sub_181D04D28(v19, v189, v172, v166, v195, v192, v21);

        v57 = v176;
        v58 = v180;
        v59 = v168;
        v60 = v198;
        v61 = v163;
LABEL_37:
        sub_181D04D28(v57, v58, v59, v60, v61, v54, v55);
        goto LABEL_43;
      }

      goto LABEL_35;
    }

    v30 = *(a2 + 176);
    v177 = *(a1 + 128);
    v31 = *(a2 + 144);
    v32 = *(a2 + 136);
    v186 = *(a1 + 168);
    v159 = *(a1 + 176);
    sub_181F887D0(v13, 0, v15, v198, v17, v16, v18);
    if (!v32)
    {
      sub_181F887D0(v19, 0, v31, v20, v195, v192, v30);
      v40 = 0;
      v39 = v177;
      v37 = v159;
      v36 = v186;
      goto LABEL_48;
    }

LABEL_39:
    v164 = v19;
    v189 = v32;
    v62 = v32;
    v51 = v20;
    v48 = v195;
    v49 = v15;
    v50 = v192;
    sub_181F887D0(v19, v62, v31, v20, v195, v192, v30);
    v44 = v159;
    v52 = v31;
    v45 = v177;
    v14 = 0;
    v43 = v186;
    goto LABEL_40;
  }

  v11 = 0;
  if ((sub_182AD4268() & 1) != 0 && v4 == v7)
  {
    goto LABEL_9;
  }

  return v11 & 1;
}

uint64_t _s7Network11HTTPRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];

  v6 = sub_1822CC234(v3, v5);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = sub_18208BC10(v2, v4);

  return v7 & 1;
}

unint64_t sub_1822CD568()
{
  result = qword_1EA83C020;
  if (!qword_1EA83C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C020);
  }

  return result;
}

unint64_t sub_1822CD5BC()
{
  result = qword_1EA83C028;
  if (!qword_1EA83C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C028);
  }

  return result;
}

unint64_t sub_1822CD610()
{
  result = qword_1EA83C038;
  if (!qword_1EA83C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C038);
  }

  return result;
}

unint64_t sub_1822CD668()
{
  result = qword_1EA83C040;
  if (!qword_1EA83C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C040);
  }

  return result;
}

unint64_t sub_1822CD6C0()
{
  result = qword_1EA83C048;
  if (!qword_1EA83C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C048);
  }

  return result;
}

unint64_t sub_1822CD718()
{
  result = qword_1EA83C050;
  if (!qword_1EA83C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C050);
  }

  return result;
}

unint64_t sub_1822CD770()
{
  result = qword_1EA83C058;
  if (!qword_1EA83C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C058);
  }

  return result;
}

uint64_t keypath_set_8Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

unint64_t sub_1822CD850()
{
  result = qword_1EA83C060;
  if (!qword_1EA83C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C060);
  }

  return result;
}

unint64_t sub_1822CD8A8()
{
  result = qword_1EA83C068;
  if (!qword_1EA83C068)
  {
    type metadata accessor for HTTPRequest.PseudoHeaderFields._Storage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C068);
  }

  return result;
}

unint64_t sub_1822CD904()
{
  result = qword_1EA83C070;
  if (!qword_1EA83C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C070);
  }

  return result;
}

unint64_t sub_1822CD95C()
{
  result = qword_1EA83C078;
  if (!qword_1EA83C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C078);
  }

  return result;
}

uint64_t sub_1822CD9B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83C080, &unk_182B082D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void NWActorDiscoveryMechanism.init(browseDescriptor:browseParameters:connectionParameters:target:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1822CDB60(a4, a5, type metadata accessor for NWActorDiscoveryMechanism.Target);
  v9 = type metadata accessor for NWActorDiscoveryMechanism(0);
  v10 = v9[5];
  sub_1822CDB60(a1, a5 + v10, type metadata accessor for NWBrowser.Descriptor);
  v11 = type metadata accessor for NWBrowser.Descriptor(0);
  (*(*(v11 - 8) + 56))(a5 + v10, 0, 1, v11);
  *(a5 + v9[6]) = a2;
  if (a3)
  {
    a2 = a3;
  }

  else
  {
  }

  *(a5 + v9[7]) = a2;
}

uint64_t sub_1822CDB60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1822CDBF0(uint64_t a1)
{
  type metadata accessor for NWActorDiscoveryMechanism.Target(319);
  if (v1 <= 0x3F)
  {
    sub_1822CDCDC(319, &qword_1EA83C0A0, type metadata accessor for NWBrowser.Descriptor);
    if (v2 <= 0x3F)
    {
      sub_1822CDCDC(319, &qword_1EA83C0A8, type metadata accessor for NWParameters);
      if (v3 <= 0x3F)
      {
        type metadata accessor for NWParameters();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1822CDCDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_182AD39B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1822CDD30(uint64_t a1)
{
  result = sub_1822CDDA4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NWEndpoint(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1822CDDA4()
{
  result = qword_1EA83C0C0;
  if (!qword_1EA83C0C0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EA83C0C0);
  }

  return result;
}

uint64_t sub_1822CDE04()
{
  result = *(v0 + 8);
  if (((1 << (*(v0 + 32) >> 59)) & 0x1E4FFA) != 0)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_1822CDE98(char a1, uint64_t a2)
{
  v2 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2;
    v2 = sub_181F85288(*(a2 + 16), 0);
    v5 = sub_1822C5FCC(&v35, v2 + 4, v3, v4);

    sub_1820AD298();
    if (v5 != v3)
    {
      __break(1u);
      goto LABEL_26;
    }
  }

  v35 = v2;
  sub_1822D0A94();
  v6 = v35;
  v31 = v35[2];
  if (v31)
  {
    v7 = 0;
    v8 = v35 + 5;
    v30 = v35;
    while (v7 < *(v6 + 16))
    {
      v11 = *(v8 - 1);
      v10 = *v8;
      v12 = v8[1];
      v13 = v8[2];
      v14 = v8[3];
      v15 = v8[4];
      v16 = v8[5];
      if ((a1 & 1) == 0 || ((v14 >> 59) <= 0x10 ? (v9 = ((1 << (v14 >> 59)) & 0x1AC05) == 0) : (v9 = 1), v9))
      {
        v35 = *(v8 - 1);
        v36 = v10;
        v37 = v12;
        v38 = v13;
        v39 = v14;
        v40 = v15;
        v41 = v16;
        v33 = v14;
        sub_18206A3C4(v11, v10, v12, v13, v14, v15, v16);
        v17 = sub_1822CEE40(&v42);
        if (v34)
        {
          v28 = v17;

          sub_18206A46C(v11, v10, v12, v13, v33, v15, v16);

          return v28;
        }

        v34 = 0;
        sub_18206A46C(v11, v10, v12, v13, v33, v15, v16);
        v6 = v30;
      }

      ++v7;
      v8 += 7;
      if (v31 == v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    if (qword_1EA837250 == -1)
    {
      goto LABEL_15;
    }
  }

  swift_once();
LABEL_15:
  if (byte_1EA843430 == 1)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_182AD3BA8();

    v35 = 0xD000000000000011;
    v36 = 0x8000000182BE4FC0;
    v18 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v18);

    v5 = v35;
    v4 = v36;
    if (qword_1EA837248 == -1)
    {
LABEL_17:
      v19 = sub_182AD2698();
      __swift_project_value_buffer(v19, qword_1EA843418);

      v20 = sub_182AD2678();
      v21 = sub_182AD38A8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v35 = v23;
        *v22 = 136315650;
        v24 = sub_182AD3BF8();
        v26 = sub_181C64FFC(v24, v25, &v35);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2080;
        *(v22 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v35);
        *(v22 + 22) = 2080;
        v27 = sub_181C64FFC(v5, v4, &v35);

        *(v22 + 24) = v27;
        _os_log_impl(&dword_181A37000, v20, v21, "%s %s %s", v22, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v23, -1, -1);
        MEMORY[0x1865DF520](v22, -1, -1);
      }

      else
      {
      }

      return v42;
    }

LABEL_26:
    swift_once();
    goto LABEL_17;
  }

  return v42;
}

uint64_t sub_1822CE2F0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_31;
  }

  v7 = a4;
  v8 = result;
  if (a4 < result)
  {
    goto LABEL_29;
  }

  v9 = a5;
  v10 = a2;
  if (a5 != a2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  if (result != a4)
  {
    v11 = 0;
    v13 = a7 + 64;
    v14 = a5;
    v28 = a7 + 72;
    v29 = a5;
    while (!__OFADD__(v11++, 1))
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      v16 = 1 << *(a7 + 32);
      if (v8 >= v16)
      {
        goto LABEL_25;
      }

      v17 = v8 >> 6;
      v18 = *(v13 + 8 * (v8 >> 6));
      if (((v18 >> v8) & 1) == 0)
      {
        goto LABEL_26;
      }

      if (*(a7 + 36) != v10)
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        result = sub_18225BB58(v8, v10, 0);
        v8 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
        if (v10 != v9)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v20 = v7;
        v21 = v13;
        v22 = v9;
        v23 = v17 << 6;
        v24 = v17 + 1;
        v25 = (v28 + 8 * v17);
        while (v24 < (v16 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_18225BB58(v8, v10, 0);
            v8 = __clz(__rbit64(v26)) + v23;
            goto LABEL_21;
          }
        }

        result = sub_18225BB58(v8, v10, 0);
        v8 = v16;
LABEL_21:
        v9 = v22;
        v13 = v21;
        v7 = v20;
        v14 = v29;
        if (v10 != v9)
        {
          goto LABEL_28;
        }
      }

      v10 = v14;
      if (v8 == v7)
      {
        return v11;
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
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_18225BB58(a4, a2, 0);
  return 0;
}

uint64_t sub_1822CE4EC()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB0B0](qword_182B08878[v1]);
  return sub_182AD4558();
}

uint64_t sub_1822CE574(uint64_t a1)
{
  v2 = *v1;
  sub_182AD44E8();
  MEMORY[0x1865DB0B0](qword_182B08878[v2]);
  return sub_182AD4558();
}

uint64_t sub_1822CE5C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1822D10E0(*a1);
  *a2 = result;
  return result;
}

unint64_t *sub_1822CE614@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1822CE62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1822D2D44();
  v5 = sub_181F7DB4C();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t sub_1822CE684(uint64_t a1, uint64_t a2)
{
  v4 = sub_1822D2CF0();
  v5 = sub_181F7DB4C();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t sub_1822CE6DC()
{
  v1 = *(v0 + 4) >> 59;
  if (v1 == 12)
  {
    return 0;
  }

  result = 0;
  v3 = *(v0 + 1);
  v4 = *v0;
  if (v4 > 9)
  {
    if (v4 <= 0x14)
    {
      if (((1 << v4) & 0x1B000) != 0)
      {
        return result;
      }

      if (((1 << v4) & 0x1E0000) != 0)
      {
        goto LABEL_13;
      }

      if (v4 == 14)
      {
        v5 = 2;
        goto LABEL_14;
      }
    }

    if (v4 != 10)
    {
      if (qword_1EA837278 != -1)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    v5 = 3;
LABEL_14:
    while (1)
    {
      v1 = (1 << v1);
      if ((v1 & 0x1E4FFA) == 0)
      {
        break;
      }

      if ((v3 & 0x8000000000000000) == 0)
      {
        return v3 == v5;
      }

      while (1)
      {
        __break(1u);
LABEL_24:
        v7 = v3;
        v6 = v1;
        swift_once();
        v1 = v6;
        v3 = v7;
LABEL_21:
        v5 = qword_1EA843448;
        if ((qword_1EA843448 & 0x8000000000000000) == 0)
        {
          break;
        }

        __break(1u);
      }
    }

    result = sub_182AD3EA8();
    __break(1u);
  }

  else
  {
    if (*v0 > 2u)
    {
      if (v4 - 4 >= 6)
      {
        v5 = 65527;
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (v4 == 1)
    {
LABEL_13:
      v5 = 0;
      goto LABEL_14;
    }
  }

  return result;
}

void sub_1822CE864()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = v6 >> 59;
  if ((v6 >> 59) > 2)
  {
    if ((v8 - 3) < 9)
    {
      goto LABEL_11;
    }

    if (v8 <= 0x14)
    {
      if (((1 << v8) & 0x1E4000) != 0)
      {
        goto LABEL_11;
      }

      if (((1 << v8) & 0x18000) != 0)
      {
LABEL_17:
        sub_18206A3C4(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
        if (qword_1EA837250 != -1)
        {
          swift_once();
        }

        if (byte_1EA843430 == 1)
        {
          v24 = 0;
          v25 = 0xE000000000000000;
          sub_182AD3E18();
          MEMORY[0x1865D9CA0](61, 0xE100000000000000);
          v30 = v1;
          v10 = ConnectionID.description.getter();
          v12 = v11;
          sub_18206A46C(v2, v1, v4, v3, v6, v5, v7);
          MEMORY[0x1865D9CA0](v10, v12);
          goto LABEL_21;
        }

        sub_18206A46C(v2, v1, v4, v3, v6, v5, v7);
        return;
      }

      if (v8 == 13)
      {
        if (qword_1EA837250 != -1)
        {
          swift_once();
        }

        if (byte_1EA843430 == 1)
        {
          v30 = 0;
          v31 = 0xE000000000000000;
          sub_182AD3E18();
          MEMORY[0x1865D9CA0](61, 0xE100000000000000);
          v24 = v1;
          v25 = v4;
          v26 = v3;
          v27 = v6;
          v28 = v5;
          v29 = v7;
          sub_182AD3E18();
          v14 = 0;
          v13 = 0xE000000000000000;
          goto LABEL_23;
        }

        return;
      }
    }

    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      v24 = 0;
      v25 = 0xE000000000000000;
      LOBYTE(v30) = v2;
      sub_182AD3E18();
      goto LABEL_22;
    }

    return;
  }

  if (!v8)
  {
    goto LABEL_17;
  }

  if (v8 != 1)
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](61, 0xE100000000000000);
      v30 = v1;
      v9 = StatelessResetToken.description.getter();
LABEL_15:
      MEMORY[0x1865D9CA0](v9);
LABEL_21:

LABEL_22:
      v14 = v24;
      v13 = v25;
LABEL_23:
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v15 = sub_182AD2698();
      __swift_project_value_buffer(v15, qword_1EA843418);

      v16 = sub_182AD2678();
      v17 = sub_182AD38A8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v24 = v19;
        *v18 = 136315650;
        v20 = sub_182AD3BF8();
        v22 = sub_181C64FFC(v20, v21, &v24);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2080;
        *(v18 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v24);
        *(v18 + 22) = 2080;
        v23 = sub_181C64FFC(v14, v13, &v24);

        *(v18 + 24) = v23;
        _os_log_impl(&dword_181A37000, v16, v17, "%s %s %s", v18, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v19, -1, -1);
        MEMORY[0x1865DF520](v18, -1, -1);
      }

      else
      {
      }

      return;
    }

    return;
  }

LABEL_11:
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](61, 0xE100000000000000);
    v30 = v1;
    v9 = sub_182AD41B8();
    goto LABEL_15;
  }
}

uint64_t sub_1822CEE40(uint64_t a1)
{
  v19 = a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = sub_1822CE6DC();
  if ((v9 & 1) == 0)
  {
    v10 = v6 >> 59;
    if ((v6 >> 59) <= 2)
    {
      if (v10)
      {
        if (v10 != 1)
        {
          if (*(v3 + 16) == 16)
          {
            v11 = sub_1822CF0EC(v9, v2, v3);
LABEL_13:
            sub_1820D46D8(v11);
            sub_1822CE864();
            return 1;
          }

LABEL_19:
          sub_181F5F494();
          swift_willThrowTypedImpl();
          return 1;
        }

LABEL_10:
        v11 = sub_1822CF558(v9, v2, v3);
        goto LABEL_13;
      }

LABEL_12:
      sub_18206A3C4(v2, v3, v4, v5, v6, v7, v8);
      v13 = sub_1822CF464(v12, v2, v3);
      sub_18206A46C(v2, v3, v4, v5, v6, v7, v8);
      v11 = v13;
      goto LABEL_13;
    }

    if ((v10 - 3) < 9)
    {
      goto LABEL_10;
    }

    if (v10 <= 0x14)
    {
      if (((1 << v10) & 0x1E4000) != 0)
      {
        goto LABEL_10;
      }

      if (((1 << v10) & 0x18000) != 0)
      {
        goto LABEL_12;
      }

      if (v10 == 13)
      {
        v15[0] = v3;
        v15[1] = v4;
        v15[2] = v5;
        v16 = v6;
        v17 = v7;
        v18 = v8;
        if (*(v8 + 16) == 16 && *(v4 + 16) == 16)
        {
          v11 = sub_1822CF1E0(v9, v2, v15);
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

    v11 = sub_1822CF034(v9, v2);
    goto LABEL_13;
  }

  return 1;
}

uint64_t sub_1822CF034(uint64_t a1, char a2)
{
  v8[0] = qword_182B08878[a2];
  v9 = 8;
  v6[0] = 0;
  v7 = 8;
  sub_181F80BF8(v8, &v4);
  sub_181F80BF8(v6, &v5);
  v3 = MEMORY[0x1E69E7CC0];
  sub_1822A69B4(&v3);
  sub_1822A69B4(&v3);
  swift_arrayDestroy();
  sub_181F80C54(v6);
  sub_181F80C54(v8);
  return v3;
}

uint64_t sub_1822CF0EC(uint64_t a1, char a2, uint64_t a3)
{
  v12[0] = qword_182B08878[a2];
  v13 = 8;
  v10[0] = 16;
  v11 = 8;
  v8[0] = a3;
  v9 = 11;
  sub_181F80BF8(v12, &v5);
  sub_181F80BF8(v10, &v6);
  sub_181F80BF8(v8, &v7);
  v4 = MEMORY[0x1E69E7CC0];

  sub_1822A69B4(&v4);
  sub_1822A69B4(&v4);
  sub_1822A69B4(&v4);
  swift_arrayDestroy();
  sub_181F80C54(v8);
  sub_181F80C54(v10);
  sub_181F80C54(v12);
  return v4;
}

uint64_t sub_1822CF1E0(uint64_t a1, char a2, uint64_t *a3)
{
  v33[0] = qword_182B08878[a2];
  v34 = 8;
  v37 = *a3;
  v3 = *(v37 + 16);
  if (__OFADD__(v3, 25))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(v3 + 25, 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (((v3 + 41) & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v31[0] = v3 + 41;
  v32 = 8;
  v29[0] = *(a3 + 6);
  v30 = 6;
  v4 = a3[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 >> 16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27[0] = a3[2];
  v28 = 5;
  v5 = a3[4];
  v36 = a3[5];
  v25[0] = v36;
  v26 = 11;
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 >> 16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23[0] = v5;
  v24 = 5;
  if (v3 <= 0xFF)
  {
    v22[0] = v3;
    v22[40] = 0;
    v20[0] = v37;
    v21 = 11;
    v35 = a3[1];
    v18[0] = v35;
    v19 = 11;
    sub_181F80BF8(v33, &v9);
    sub_181F80BF8(v31, &v10);
    sub_181F80BF8(v29, &v11);
    sub_181F80BF8(v27, &v12);
    sub_181F80BF8(v25, &v13);
    sub_181F80BF8(v23, &v14);
    sub_181F80BF8(v22, &v15);
    sub_181F80BF8(v20, &v16);
    sub_181F80BF8(v18, &v17);
    v8 = MEMORY[0x1E69E7CC0];
    sub_1822D2850(&v36, v7);
    sub_182123280(&v37, v7);
    sub_1822D28C0(&v35, v7);
    sub_1822A69B4(&v8);
    sub_1822A69B4(&v8);
    sub_1822A69B4(&v8);
    sub_1822A69B4(&v8);
    sub_1822A69B4(&v8);
    sub_1822A69B4(&v8);
    sub_1822A69B4(&v8);
    sub_1822A69B4(&v8);
    sub_1822A69B4(&v8);
    swift_arrayDestroy();
    sub_181F80C54(v18);
    sub_181F80C54(v20);
    sub_181F80C54(v22);
    sub_181F80C54(v23);
    sub_181F80C54(v25);
    sub_181F80C54(v27);
    sub_181F80C54(v29);
    sub_181F80C54(v31);
    sub_181F80C54(v33);
    return v8;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1822CF464(uint64_t a1, char a2, uint64_t a3)
{
  v12[0] = qword_182B08878[a2];
  v13 = 8;
  v10[0] = *(a3 + 16);
  v11 = 8;
  v8[0] = a3;
  v9 = 11;
  sub_181F80BF8(v12, &v5);
  sub_181F80BF8(v10, &v6);
  sub_181F80BF8(v8, &v7);
  v4 = MEMORY[0x1E69E7CC0];

  sub_1822A69B4(&v4);
  sub_1822A69B4(&v4);
  sub_1822A69B4(&v4);
  swift_arrayDestroy();
  sub_181F80C54(v8);
  sub_181F80C54(v10);
  sub_181F80C54(v12);
  return v4;
}

uint64_t sub_1822CF558(uint64_t a1, char a2, unint64_t a3)
{
  v13[0] = qword_182B08878[a2];
  v14 = 8;
  if (a3 < 0x40)
  {
    v3 = 1;
    goto LABEL_9;
  }

  if (a3 < 0x4000)
  {
    v3 = 2;
    goto LABEL_9;
  }

  if (!(a3 >> 30))
  {
    v3 = 4;
    goto LABEL_9;
  }

  if (!(a3 >> 62))
  {
    v3 = 8;
LABEL_9:
    v11[0] = v3;
    v12 = 8;
    v9[0] = a3;
    v10 = 8;
    sub_181F80BF8(v13, &v6);
    sub_181F80BF8(v11, &v7);
    sub_181F80BF8(v9, &v8);
    v5 = MEMORY[0x1E69E7CC0];
    sub_1822A69B4(&v5);
    sub_1822A69B4(&v5);
    sub_1822A69B4(&v5);
    swift_arrayDestroy();
    sub_181F80C54(v9);
    sub_181F80C54(v11);
    sub_181F80C54(v13);
    return v5;
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_1822CF6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 <= 0x14)
  {

    return sub_1822C3A50(v16, a3);
  }

  else
  {
    sub_182AD3BA8();

    v18 = 0xD000000000000012;
    v19 = 0x8000000182BE4F30;
    v21 = v3;
    v5 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v5);

    MEMORY[0x1865D9CA0](0x61766E6920736920, 0xEB0000000064696CLL);
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843418);

    v7 = sub_182AD2678();
    v8 = sub_182AD38B8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315650;
      v11 = sub_182AD3BF8();
      v13 = sub_181C64FFC(v11, v12, &v18);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v18);
      *(v9 + 22) = 2080;
      v14 = sub_181C64FFC(0xD000000000000012, 0x8000000182BE4F30, &v18);

      *(v9 + 24) = v14;
      _os_log_impl(&dword_181A37000, v7, v8, "%s %s %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v10, -1, -1);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    else
    {
    }

    v18 = 0;
    v19 = 0;
    v20 = 112;
    sub_181F5F494();
    result = swift_willThrowTypedImpl();
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 112;
  }

  return result;
}

void sub_1822CF978(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 == 16)
  {

    StatelessResetToken.init(_:)(v5, a3);
  }

  else
  {
    sub_182AD3BA8();

    v17 = 0xD000000000000019;
    v18 = 0x8000000182BE4EB0;
    v20 = v3;
    v7 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v7);

    MEMORY[0x1865D9CA0](0x61766E6920736920, 0xEB0000000064696CLL);
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843418);

    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315650;
      v13 = sub_182AD3BF8();
      v15 = sub_181C64FFC(v13, v14, &v17);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v17);
      *(v11 + 22) = 2080;
      v16 = sub_181C64FFC(0xD000000000000019, 0x8000000182BE4EB0, &v17);

      *(v11 + 24) = v16;
      _os_log_impl(&dword_181A37000, v9, v10, "%s %s %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v12, -1, -1);
      MEMORY[0x1865DF520](v11, -1, -1);
    }

    else
    {
    }

    v17 = 0;
    v18 = 0;
    v19 = 112;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 112;
  }
}

uint64_t sub_1822CFC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if ((v4 - 62) <= 0xFFFFFFFFFFFFFFEALL)
  {
    sub_182AD3BA8();

    v35 = 0xD000000000000016;
    v36 = 0x8000000182BE4EF0;
    v34[0] = v4;
    v5 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v5);

    MEMORY[0x1865D9CA0](0x61766E6920736920, 0xEB0000000064696CLL);
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843418);

    v7 = sub_182AD2678();
    v8 = sub_182AD38B8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136315650;
      v11 = sub_182AD3BF8();
      v13 = sub_181C64FFC(v11, v12, &v35);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v35);
      *(v9 + 22) = 2080;
      v14 = sub_181C64FFC(0xD000000000000016, 0x8000000182BE4EF0, &v35);

      *(v9 + 24) = v14;
      _os_log_impl(&dword_181A37000, v7, v8, "%s %s %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v10, -1, -1);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    else
    {
    }

    v35 = 0;
    v36 = 0;
    LOBYTE(v37) = 112;
    sub_181F5F494();
    result = swift_willThrowTypedImpl();
    goto LABEL_18;
  }

  v46 = 0;
  v45 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  v44 = 0;
  v42 = 0;
  v40 = MEMORY[0x1E69E7CC0];
  v41 = MEMORY[0x1E69E7CC0];
  v35 = a1 + 32;
  v36 = a1 + 32 + v4;
  v37 = 0;
  v38 = 0;
  v39 = 1;
  Deserializer.uint32NetworkByteOrder(_:)(&v46, v34);
  Deserializer.uint16NetworkByteOrder(_:)(&v45, v33);
  Deserializer.buffer(_:length:)(16, v32);
  Deserializer.uint16NetworkByteOrder(_:)(&v44, v31);
  Deserializer.uint8(_:)(&v42, v30);
  Deserializer.buffer(_:length:)(v42, v29);
  result = Deserializer.buffer(_:length:)(16, v28);
  if (v39 != 1 || v38)
  {
LABEL_17:
    v35 = 0;
    v36 = 0;
    LOBYTE(v37) = 112;
    sub_181F5F494();
    swift_willThrowTypedImpl();

LABEL_18:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 112;
    return result;
  }

  if (v35)
  {
    v17 = v36 - v35;
  }

  else
  {
    v17 = 0;
  }

  v18 = __OFSUB__(v17, v37);
  v19 = v17 - v37;
  if (v18)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v19 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (v19)
  {
    goto LABEL_17;
  }

  sub_1822C3A50(v20, &v35);
  v27 = v35;

  StatelessResetToken.init(_:)(v21, v34);
  v22 = v34[0];
  v23 = v45;
  v24 = v46;
  v25 = v44;
  v26 = v43;

  *a3 = v27;
  *(a3 + 8) = v22;
  *(a3 + 16) = v23;
  *(a3 + 24) = v24;
  *(a3 + 32) = v25;
  *(a3 + 40) = v26;
  return result;
}

void sub_1822D0088(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_1822D10E0(a1);
  v7 = 0x6000000000000000;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  switch(v6)
  {
    case 1:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x800000000000000;
      v6 = 1;
      goto LABEL_45;
    case 2:
      v18 = v29;
      sub_1822CF978(a2, v21, &v23);
      if (v18)
      {
        goto LABEL_32;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v8 = v23;
      v7 = 0x1000000000000000;
      v6 = 2;
      goto LABEL_45;
    case 3:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x1800000000000000;
      v6 = 3;
      goto LABEL_45;
    case 4:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x2000000000000000;
      v6 = 4;
      goto LABEL_45;
    case 5:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x2800000000000000;
      v6 = 5;
      goto LABEL_45;
    case 6:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x3000000000000000;
      v6 = 6;
      goto LABEL_45;
    case 7:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x3800000000000000;
      v6 = 7;
      goto LABEL_45;
    case 8:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x4000000000000000;
      v6 = 8;
      goto LABEL_45;
    case 9:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x4800000000000000;
      v6 = 9;
      goto LABEL_45;
    case 10:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x5000000000000000;
      v6 = 10;
      goto LABEL_45;
    case 11:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x5800000000000000;
      v6 = 11;
      goto LABEL_45;
    case 12:
      goto LABEL_45;
    case 13:
      v19 = v29;
      sub_1822CFC30(a2, v21, &v23);
      if (v19)
      {
        goto LABEL_32;
      }

      v29 = 0;
      v9 = *(&v23 + 1);
      v8 = v23;
      v10 = v24;
      v11 = v26;
      v12 = v27;
      v7 = v25 | 0x6800000000000000;
      v6 = 13;
      goto LABEL_45;
    case 14:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x7000000000000000;
      v6 = 14;
      goto LABEL_45;
    case 15:
      v17 = v29;
      sub_1822CF6C0(a2, v21, &v23);
      if (v17)
      {
        goto LABEL_32;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v8 = v23;
      v7 = 0x7800000000000000;
      v6 = 15;
      goto LABEL_45;
    case 16:
      v14 = v29;
      sub_1822CF6C0(a2, v21, &v23);
      if (v14)
      {
        goto LABEL_32;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v8 = v23;
      v7 = 0x8000000000000000;
      v6 = 16;
      goto LABEL_45;
    case 17:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x8800000000000000;
      v6 = 17;
      goto LABEL_45;
    case 18:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x9000000000000000;
      v6 = 18;
      goto LABEL_45;
    case 19:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0x9800000000000000;
      v6 = 19;
      goto LABEL_45;
    case 20:
      v8 = sub_1822D11F0(a2);
      if (v29)
      {
        goto LABEL_33;
      }

      v29 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = 0xA000000000000000;
      v6 = 20;
      goto LABEL_45;
    case 21:
      v23 = xmmword_182AED510;
      LOBYTE(v24) = 112;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      v16 = 112;
      v15 = 0;
      v8 = 2;
      goto LABEL_33;
    default:
      v13 = v29;
      sub_1822CF6C0(a2, v21, &v23);
      if (v13)
      {
LABEL_32:
        v8 = v21[0];
        v15 = v21[1];
        v16 = v22;
LABEL_33:
        *a3 = v8;
        *(a3 + 8) = v15;
        *(a3 + 16) = v16;
      }

      else
      {
        v29 = 0;
        v6 = 0;
        v9 = 0;
        v10 = 0;
        v7 = 0;
        v11 = 0;
        v12 = 0;
        v8 = v23;
LABEL_45:
        *&v23 = v6;
        *(&v23 + 1) = v8;
        v24 = v9;
        v25 = v10;
        v26 = v7;
        v27 = v11;
        v28 = v12;
        sub_18206A3C4(v6, v8, v9, v10, v7, v11, v12);
        sub_1822CE864();
        sub_18206A46C(v6, v8, v9, v10, v7, v11, v12);
        *a4 = v6;
        a4[1] = v8;
        a4[2] = v9;
        a4[3] = v10;
        a4[4] = v7;
        a4[5] = v11;
        a4[6] = v12;
      }

      return;
  }
}

void sub_1822D061C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_181F85154(*(v2 + 16), 0);
    v5 = *(v2 + 16);
    if (v5)
    {
      v6 = v4;
      v7 = 0;
      v8 = (v2 + 80);
      v9 = v3 - 1;
      v10 = 4;
      while (v7 < v5)
      {
        v11 = &v6[v10];
        v12 = *(v8 - 5);
        v13 = *(v8 - 4);
        v14 = *(v8 - 3);
        v15 = *(v8 - 16);
        v16 = *(v8 - 1);
        v17 = *v8;
        *v11 = *(v8 - 6);
        v11[1] = v12;
        v11[2] = v13;
        v11[3] = v14;
        *(v11 + 32) = v15;
        v11[5] = v16;
        v11[6] = v17;
        if (v9 == v7)
        {
          goto LABEL_8;
        }

        v5 = *(v2 + 16);
        ++v7;
        v8 += 8;
        v10 += 7;
        if (v7 == v5)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:
      __break(1u);
LABEL_8:
    }
  }
}

void *sub_1822D0730(uint64_t a1, unint64_t a2)
{
  v4 = sub_182AD3AD8();
  v5 = sub_1822CE2F0(v4, *(a1 + 36), 0, 1 << *(a1 + 32), *(a1 + 36), 0, a1);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  v7 = sub_181F85168(v5, 0);

  swift_unknownObjectRetain();
  v8 = sub_1822C5C24(v13, (v7 + 4), v6, a1, a2);
  v9 = v13[2];
  v10 = v13[3];
  v11 = v14;
  swift_unknownObjectRelease();

  sub_18225BB58(v9, v10, v11);
  if (v8 != v6)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t sub_1822D0834(uint64_t result, unsigned int a2)
{
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = result;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838E50, &unk_182AE5F20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = v5 - 32;
  v6 = v5 < 32;
  v8 = v5 - 29;
  if (!v6)
  {
    v8 = v7;
  }

  v4[1].i64[0] = v2;
  v4[1].i64[1] = 2 * (v8 >> 2);
  v9 = v4 + 2;
  if (v2 < 8)
  {
    v10 = 0;
LABEL_11:
    v14 = v2 - v10;
    do
    {
      v9->i32[0] = a2;
      v9 = (v9 + 4);
      --v14;
    }

    while (v14);
    return result;
  }

  v10 = v2 & 0x7FFFFFFFFFFFFFF8;
  v9 = (v9 + 4 * (v2 & 0x7FFFFFFFFFFFFFF8));
  v11 = vdupq_n_s32(a2);
  v12 = v4 + 3;
  v13 = v2 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v12[-1] = v11;
    *v12 = v11;
    v12 += 2;
    v13 -= 8;
  }

  while (v13);
  if (v10 != v2)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_1822D0918(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730, &qword_182AEDF30);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_1822D09F0(unint64_t a1, char *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v4, 0);

    MEMORY[0x1865DA770](a2 + 32, v4, v3);
    v3 = v5;

    if (v3 == v4)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v4 = sub_182AD3EB8();
    if (!v4)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

void sub_1822D0A94()
{
  v42 = *v0;
  v1 = *(*v0 + 2);
  v41 = v1 - 2;
  if (v1 >= 2)
  {
    v2 = 0;
    while (1)
    {
      __buf = 0;
      arc4random_buf(&__buf, 8uLL);
      v4 = (__buf * v1) >> 64;
      if (v1 > __buf * v1)
      {
        v5 = -v1 % v1;
        if (v5 > __buf * v1)
        {
          do
          {
            __buf = 0;
            arc4random_buf(&__buf, 8uLL);
          }

          while (v5 > __buf * v1);
          v4 = (__buf * v1) >> 64;
        }
      }

      v6 = v2 + v4;
      if (__OFADD__(v2, v4))
      {
        break;
      }

      if (v2 != v6)
      {
        v7 = *(v42 + 2);
        if (v2 >= v7)
        {
          goto LABEL_19;
        }

        if (v6 >= v7)
        {
          goto LABEL_20;
        }

        v8 = &v42[56 * v2 + 32];
        v9 = &v42[56 * v6 + 32];
        v11 = *v9;
        v10 = v9[1];
        v12 = v9[2];
        v13 = v9[3];
        v14 = v9[4];
        v15 = v9[5];
        v16 = v9[6];
        v39 = v8[1];
        v40 = *v8;
        v37 = v8[3];
        v38 = v8[2];
        v35 = v8[5];
        v36 = v8[4];
        v34 = v8[6];
        sub_18206A3C4(*v8, v39, v38, v37, v36, v35, v34);
        sub_18206A3C4(v11, v10, v12, v13, v14, v15, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_18214D488(v42);
        }

        if (v2 >= *(v42 + 2))
        {
          goto LABEL_21;
        }

        v17 = &v42[56 * v2 + 32];
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = v17[3];
        v22 = v17[4];
        v23 = v17[5];
        v24 = v17[6];
        *v17 = v11;
        v17[1] = v10;
        v17[2] = v12;
        v17[3] = v13;
        v17[4] = v14;
        v17[5] = v15;
        v17[6] = v16;
        sub_18206A46C(v18, v19, v20, v21, v22, v23, v24);
        if (v6 >= *(v42 + 2))
        {
          goto LABEL_22;
        }

        v25 = &v42[56 * v6 + 32];
        v26 = *v25;
        v27 = v25[1];
        v28 = v25[2];
        v29 = v25[3];
        v30 = v25[4];
        v31 = v25[5];
        v32 = v25[6];
        *v25 = v40;
        v25[1] = v39;
        v25[2] = v38;
        v25[3] = v37;
        v25[4] = v36;
        v25[5] = v35;
        v25[6] = v34;
        sub_18206A46C(v26, v27, v28, v29, v30, v31, v32);
        *v33 = v42;
      }

      --v1;
      if (v2++ == v41)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_1822D0CE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  sub_182AD42E8();
  swift_unknownObjectRetain_n();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(v7 + 16);

  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 != (a4 >> 1) - a3)
  {
LABEL_11:
    swift_unknownObjectRelease();
    return 0;
  }

  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1822D0DA8(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v6 = *a2;
  v7 = *(a1 + 32) >> 59;
  v8 = *(a2 + 4) >> 59;
  if (v7 == 12)
  {
    if (v8 == 12)
    {
      return 1;
    }

    v12 = *a2;
LABEL_8:
    v10 = 12;
LABEL_9:
    v11 = 0;
    result = 0;
    if (v10 != qword_182B08878[v12])
    {
      return result;
    }

    goto LABEL_10;
  }

  v10 = *a1;
  if (v8 != 12)
  {
    v12 = v6;
    switch(*a1)
    {
      case 1u:
        v10 = 1;
        break;
      case 2u:
        v10 = 2;
        break;
      case 3u:
        v10 = 3;
        break;
      case 4u:
        v10 = 4;
        break;
      case 5u:
        v10 = 5;
        break;
      case 6u:
        v10 = 6;
        break;
      case 7u:
        v10 = 7;
        break;
      case 8u:
        v10 = 8;
        break;
      case 9u:
        v10 = 9;
        break;
      case 0xAu:
        v10 = 10;
        break;
      case 0xBu:
        v10 = 11;
        break;
      case 0xCu:
        goto LABEL_8;
      case 0xDu:
        v10 = 13;
        break;
      case 0xEu:
        v10 = 14;
        break;
      case 0xFu:
        v10 = 15;
        break;
      case 0x10u:
        v10 = 16;
        break;
      case 0x11u:
        v10 = 32;
        break;
      case 0x12u:
        v10 = 47807;
        break;
      case 0x13u:
        v10 = 4278443546;
        break;
      case 0x14u:
        v10 = 4278716424;
        break;
      default:
        goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (v10 != 12)
  {
    return 0;
  }

  v8 = 12;
  v11 = 1;
LABEL_10:
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        if (v8 != 2)
        {
LABEL_56:
          result = sub_182AD3EA8();
          __break(1u);
          return result;
        }

        goto LABEL_24;
      }

LABEL_20:
      v13 = sub_1822CDE04();
      return v13 == sub_1822CDE04();
    }

LABEL_22:
    if ((v8 - 15) >= 2 && v8)
    {
      goto LABEL_56;
    }

LABEL_24:

    return sub_1822C3DC0(*(&v6 + 1), v3);
  }

  if ((v7 - 3) < 9)
  {
    goto LABEL_20;
  }

  if (v7 > 0x14)
  {
    return (v11 & 1) != 0 || v6 == 12;
  }

  if (((1 << v7) & 0x1E4000) != 0)
  {
    goto LABEL_20;
  }

  if (((1 << v7) & 0x18000) != 0)
  {
    goto LABEL_22;
  }

  if (v7 != 13)
  {
    return (v11 & 1) != 0 || v6 == 12;
  }

  v14 = v4;
  if ((sub_1822C3DC0(v3, v3) & 1) == 0 || (sub_1822C3DC0(v14, v14) & 1) == 0)
  {
    return 0;
  }

  return sub_18208108C(v5, v5);
}

uint64_t sub_1822D10E0(uint64_t a1)
{
  if (a1 > 47806)
  {
    switch(a1)
    {
      case 47807:
        return 18;
      case 4278443546:
        return 19;
      case 4278716424:
        return 20;
      default:
        return 21;
    }
  }

  else
  {
    result = 1;
    switch(a1)
    {
      case 0:
        result = 0;
        break;
      case 1:
        return result;
      case 2:
        result = 2;
        break;
      case 3:
        result = 3;
        break;
      case 4:
        result = 4;
        break;
      case 5:
        result = 5;
        break;
      case 6:
        result = 6;
        break;
      case 7:
        result = 7;
        break;
      case 8:
        result = 8;
        break;
      case 9:
        result = 9;
        break;
      case 10:
        result = 10;
        break;
      case 11:
        result = 11;
        break;
      case 12:
        result = 12;
        break;
      case 13:
        result = 13;
        break;
      case 14:
        result = 14;
        break;
      case 15:
        result = 15;
        break;
      case 16:
        result = 16;
        break;
      case 32:
        result = 17;
        break;
      default:
        return 21;
    }
  }

  return result;
}

unint64_t sub_1822D11F0(uint64_t a1)
{
  v3 = v1;
  v5 = a1 + 32 + *(a1 + 16);
  v22 = a1 + 32;
  v23 = v5;
  v24 = 0;
  v25 = 0;
  v26 = 1;
  result = sub_1820E2CC0();
  if (v22)
  {
    v8 = v23 - v22;
  }

  else
  {
    v8 = 0;
  }

  v9 = __OFSUB__(v8, v24);
  v10 = v8 - v24;
  if (v9)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v10 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
LABEL_9:
    v13 = sub_182AD2698();
    __swift_project_value_buffer(v13, qword_1EA843418);

    v14 = sub_182AD2678();
    v15 = sub_182AD38B8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315650;
      v18 = sub_182AD3BF8();
      v20 = sub_181C64FFC(v18, v19, &v22);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v22);
      *(v16 + 22) = 2080;
      v21 = sub_181C64FFC(v2, v3, &v22);

      *(v16 + 24) = v21;
      _os_log_impl(&dword_181A37000, v14, v15, "%s %s %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v17, -1, -1);
      MEMORY[0x1865DF520](v16, -1, -1);
    }

    else
    {
    }

    goto LABEL_13;
  }

  if (!v10)
  {
    if (v7 == *(a1 + 16))
    {
      return result;
    }

    sub_182AD3BA8();

    v22 = 0x657A697320454C56;
    v23 = 0xE900000000000020;
    v11 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v11);

    MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BE4F80);
    v12 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v12);

    v2 = 0x657A697320454C56;
    v3 = 0xE900000000000020;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_13:
  v22 = 0;
  v23 = 0;
  LOBYTE(v24) = 112;
  sub_181F5F494();
  swift_willThrowTypedImpl();
  return 0;
}

uint64_t sub_1822D1530(char **a1)
{
  v2 = v1;
  v4 = sub_18225ACB8(MEMORY[0x1E69E7CC0]);
  v5 = *a1;
  v6 = *a1 + 16;
  if (*v6 > 0xFFFEuLL)
  {

    sub_182AD3BA8();

    *&v128 = 0xD000000000000010;
    *(&v128 + 1) = 0x8000000182BE4D80;
    v134 = *v6;
    v17 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v17);

    v18 = 0x8000000182BE4D80;
    v19 = 0xD000000000000010;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v20 = sub_182AD2698();
    __swift_project_value_buffer(v20, qword_1EA843418);

    v21 = sub_182AD2678();
    v22 = sub_182AD38B8();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_104;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v128 = v24;
LABEL_13:
    *v23 = 136315650;
    v25 = sub_182AD3BF8();
    v27 = sub_181C64FFC(v25, v26, &v128);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v128);
    *(v23 + 22) = 2080;
    v28 = sub_181C64FFC(v19, v18, &v128);

    *(v23 + 24) = v28;
    _os_log_impl(&dword_181A37000, v21, v22, "%s %s %s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v24, -1, -1);
    MEMORY[0x1865DF520](v23, -1, -1);
LABEL_105:

LABEL_106:
    v128 = 0uLL;
    LOBYTE(v129) = 112;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 0;
  }

  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  v124 = byte_1EA843430;
  v125 = a1;
  if (byte_1EA843430 == 1)
  {
    sub_182AD3BA8();

    *&v128 = 0xD000000000000029;
    *(&v128 + 1) = 0x8000000182BE4E50;
    v134 = *v6;
    v7 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v7);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    v8 = v128;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843418);

    v10 = sub_182AD2678();
    v11 = sub_182AD38A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *&v128 = v122;
      *v12 = 136315650;
      v13 = sub_182AD3BF8();
      v15 = sub_181C64FFC(v13, v14, &v128);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v128);
      *(v12 + 22) = 2080;
      v16 = sub_181C64FFC(v8, *(&v8 + 1), &v128);

      *(v12 + 24) = v16;
      a1 = v125;
      _os_log_impl(&dword_181A37000, v10, v11, "%s %s %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v122, -1, -1);
      MEMORY[0x1865DF520](v12, -1, -1);
    }

    else
    {
    }
  }

  v29 = *v6;
  if (!*v6)
  {
    return v4;
  }

  v118 = 0;
  v119 = 0;
  v120 = 1;
  v121 = 1;
  while (2)
  {
    v123 = v4;
    while (1)
    {
      *&v128 = v5 + 32;
      *(&v128 + 1) = &v5[v29 + 32];
      v129 = 0;
      v130 = 0;
      LOBYTE(v131) = 1;
      v37 = sub_1820E2CC0();
      v38 = sub_1820E2CC0();
      if ((v38 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:

        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v100 = sub_182AD2698();
        __swift_project_value_buffer(v100, qword_1EA843418);
        v90 = sub_182AD2678();
        v91 = sub_182AD38B8();
        if (!os_log_type_enabled(v90, v91))
        {
          goto LABEL_118;
        }

        v92 = "nt is greater than ";
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *&v128 = v94;
        *v93 = 136315650;
        v101 = sub_182AD3BF8();
        v103 = sub_181C64FFC(v101, v102, &v128);

        *(v93 + 4) = v103;
        *(v93 + 12) = 2080;
        *(v93 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v128);
        *(v93 + 22) = 2080;
        v98 = 0xD000000000000025;
LABEL_116:
        *(v93 + 24) = sub_181C64FFC(v98, v92 | 0x8000000000000000, &v128);
        _os_log_impl(&dword_181A37000, v90, v91, "%s %s %s", v93, 0x20u);
        swift_arrayDestroy();
        v99 = v94;
LABEL_117:
        MEMORY[0x1865DF520](v99, -1, -1);
        MEMORY[0x1865DF520](v93, -1, -1);
        goto LABEL_118;
      }

      v39 = v38;
      v40 = v130;
      if (v131 != 1)
      {
        goto LABEL_31;
      }

      if (v130)
      {

        goto LABEL_106;
      }

      if (v128)
      {
        v41 = *(&v128 + 1) - v128;
      }

      else
      {
        v41 = 0;
      }

      v42 = __OFSUB__(v41, v129);
      v40 = v41 - v129;
      if (v42)
      {
        goto LABEL_125;
      }

      if (v40 < 0)
      {
        goto LABEL_126;
      }

      if (!v40)
      {

        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
LABEL_31:
        v43 = *v6;
        v44 = *v6 - v40;
        if (__OFSUB__(*v6, v40))
        {
          goto LABEL_122;
        }

        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_123;
        }

        v45 = v43 - v44;
        if (v43 < v44)
        {
          goto LABEL_124;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v45 <= *(v5 + 3) >> 1)
        {
          a1 = v125;
          if (v44)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v43 <= v45)
          {
            v47 = v43 - v44;
          }

          else
          {
            v47 = v43;
          }

          v5 = sub_181ADBA10(isUniquelyReferenced_nonNull_native, v47, 1, v5);
          a1 = v125;
          if (v44)
          {
LABEL_42:
            v48 = *(v5 + 2) - v44;
            memmove(v5 + 32, &v5[v44 + 32], v48);
            *(v5 + 2) = v48;
          }
        }
      }

      *a1 = v5;
      v4 = *(v5 + 2);
      if (v4 < v39 || v39 > 0xFFFE)
      {

        *&v128 = 0;
        *(&v128 + 1) = 0xE000000000000000;
        sub_182AD3BA8();

        *&v128 = 0x2064696C61766E69;
        *(&v128 + 1) = 0xEF206874676E656CLL;
        v134 = v39;
        v87 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v87);

        v18 = *(&v128 + 1);
        v19 = v128;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v88 = sub_182AD2698();
        __swift_project_value_buffer(v88, qword_1EA843418);

        v21 = sub_182AD2678();
        v22 = sub_182AD38B8();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *&v128 = v24;
          goto LABEL_13;
        }

LABEL_104:

        goto LABEL_105;
      }

      if (v4 == v39)
      {

        v50 = v5;
        v4 = v39;
      }

      else if (v39)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730, &qword_182AEDF30);
        v50 = swift_allocObject();
        v51 = _swift_stdlib_malloc_size(v50);
        v50[2] = v39;
        v50[3] = 2 * v51 - 64;
        memcpy(v50 + 4, v5 + 32, v39);
        v4 = *(v5 + 2);
        if (v4 < v39)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v50 = MEMORY[0x1E69E7CC0];
      }

      v52 = v4 - v39;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      if (v53 && v52 <= *(v5 + 3) >> 1)
      {
        if (!v39)
        {
          goto LABEL_58;
        }

LABEL_57:
        v4 = *(v5 + 2) - v39;
        memmove(v5 + 32, &v5[v39 + 32], v4);
        *(v5 + 2) = v4;
        goto LABEL_58;
      }

      if (v4 <= v52)
      {
        v62 = v4 - v39;
      }

      else
      {
        v62 = v4;
      }

      v5 = sub_181ADBA10(v53, v62, 1, v5);
      if (v39)
      {
        goto LABEL_57;
      }

LABEL_58:
      v54 = v5;
      *a1 = v5;
      sub_1822D0088(v37, v50, &v126, &v128);
      if (!v2)
      {
        break;
      }

      v4 = v126;
      v55 = v127;

      if ((v55 & 0xF0) != 0x70 || v4 != 2)
      {

        return v4;
      }

      if (v124)
      {
        *&v128 = 0;
        *(&v128 + 1) = 0xE000000000000000;
        sub_182AD3BA8();

        strcpy(&v128, "<unknown type ");
        HIBYTE(v128) = -18;
        v134 = v37;
        v56 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v56);

        MEMORY[0x1865D9CA0](0x206E656C3C203ELL, 0xE700000000000000);
        v134 = v39;
        v57 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v57);

        MEMORY[0x1865D9CA0](62, 0xE100000000000000);
        v58 = v128;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v59 = sub_182AD2698();
        __swift_project_value_buffer(v59, qword_1EA843418);

        v60 = sub_182AD2678();
        v61 = sub_182AD38A8();

        if (os_log_type_enabled(v60, v61))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *&v128 = v31;
          *v30 = 136315650;
          v32 = sub_182AD3BF8();
          v34 = sub_181C64FFC(v32, v33, &v128);

          *(v30 + 4) = v34;
          *(v30 + 12) = 2080;
          *(v30 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v128);
          *(v30 + 22) = 2080;
          v35 = sub_181C64FFC(v58, *(&v58 + 1), &v128);

          *(v30 + 24) = v35;
          a1 = v125;
          _os_log_impl(&dword_181A37000, v60, v61, "%s %s %s", v30, 0x20u);
          swift_arrayDestroy();
          v36 = v31;
          v5 = v54;
          MEMORY[0x1865DF520](v36, -1, -1);
          MEMORY[0x1865DF520](v30, -1, -1);
        }

        else
        {
        }
      }

      v2 = 0;
      v6 = v5 + 16;
      v29 = *(v5 + 2);
      if (!v29)
      {
        v4 = v123;
        goto LABEL_108;
      }
    }

    v2 = 0;

    v63 = v128;
    v64 = v131;
    v65 = v131 >> 59;
    v116 = v132;
    v117 = v133;
    v114 = v129;
    v115 = v130;
    if (v131 >> 59 > 0xA)
    {
      if (v65 == 11)
      {
        if (qword_1EA837280 != -1)
        {
          swift_once();
        }

        v4 = qword_1EA843450;
        if (qword_1EA843450 >= *(&v63 + 1))
        {
          v120 = 0;
          v118 = *(&v63 + 1);
          v65 = v63;
          goto LABEL_86;
        }

        *&v128 = 0;
        *(&v128 + 1) = 0xE000000000000000;
        sub_182AD3BA8();

        *&v128 = 0xD00000000000001ELL;
        *(&v128 + 1) = 0x8000000182BE4DA0;
        v134 = v4;
LABEL_132:
        v104 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v104);

        v105 = v128;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v106 = sub_182AD2698();
        __swift_project_value_buffer(v106, qword_1EA843418);

        v90 = sub_182AD2678();
        v107 = sub_182AD38B8();

        if (!os_log_type_enabled(v90, v107))
        {

          goto LABEL_118;
        }

        v93 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        *&v128 = v108;
        *v93 = 136315650;
        v109 = sub_182AD3BF8();
        v111 = sub_181C64FFC(v109, v110, &v128);

        *(v93 + 4) = v111;
        *(v93 + 12) = 2080;
        *(v93 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v128);
        *(v93 + 22) = 2080;
        v112 = sub_181C64FFC(v105, *(&v105 + 1), &v128);

        *(v93 + 24) = v112;
        _os_log_impl(&dword_181A37000, v90, v107, "%s %s %s", v93, 0x20u);
        swift_arrayDestroy();
        v99 = v108;
        goto LABEL_117;
      }

      if (v65 == 19)
      {
        v121 = 0;
        v119 = *(&v128 + 1);
        v65 = v128;
        goto LABEL_86;
      }

LABEL_79:
      switch(v65)
      {
        case 12:
          goto LABEL_86;
        default:
          goto LABEL_81;
      }

      goto LABEL_86;
    }

    if (v65 == 3)
    {
      if ((*(&v128 + 1) - 65528) >= 0xFFFFFFFFFFFF04B8)
      {
        goto LABEL_81;
      }

      goto LABEL_127;
    }

    if (v65 != 10)
    {
      goto LABEL_79;
    }

    if (*(&v128 + 1) >= 0x15uLL)
    {

      *&v128 = 0;
      *(&v128 + 1) = 0xE000000000000000;
      sub_182AD3BA8();

      *&v128 = 0xD000000000000023;
      *(&v128 + 1) = 0x8000000182BE4DC0;
      v134 = 20;
      goto LABEL_132;
    }

LABEL_81:
    v65 = v128;
LABEL_86:
    v66 = swift_isUniquelyReferenced_nonNull_native();
    *&v128 = v123;
    v67 = sub_18224F168(v65);
    v69 = *(v123 + 16);
    v70 = (v68 & 1) == 0;
    v42 = __OFADD__(v69, v70);
    v71 = v69 + v70;
    if (v42)
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      swift_once();
LABEL_111:
      if (is_mul_ok(v118, qword_1EA843200))
      {
        if (v118 * qword_1EA843200 >= v119)
        {
          return v4;
        }

        if (qword_1EA837248 == -1)
        {
          goto LABEL_114;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
LABEL_114:
      v89 = sub_182AD2698();
      __swift_project_value_buffer(v89, qword_1EA843418);
      v90 = sub_182AD2678();
      v91 = sub_182AD38B8();
      if (!os_log_type_enabled(v90, v91))
      {
LABEL_118:

        v128 = xmmword_182AE69F0;
        LOBYTE(v129) = 112;
        sub_181F5F494();
        swift_willThrowTypedImpl();
        return 1;
      }

      v92 = "size is out of bounds";
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *&v128 = v94;
      *v93 = 136315650;
      v95 = sub_182AD3BF8();
      v97 = sub_181C64FFC(v95, v96, &v128);

      *(v93 + 4) = v97;
      *(v93 + 12) = 2080;
      *(v93 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v128);
      *(v93 + 22) = 2080;
      v98 = 0xD00000000000002BLL;
      goto LABEL_116;
    }

    v4 = v68;
    if (*(v123 + 24) >= v71)
    {
      if ((v66 & 1) == 0)
      {
        v86 = v67;
        sub_182255788();
        v67 = v86;
      }
    }

    else
    {
      sub_18225133C(v71, v66);
      v67 = sub_18224F168(v65);
      if ((v4 & 1) != (v72 & 1))
      {
        result = sub_182AD4408();
        __break(1u);
        return result;
      }
    }

    v73 = v128;
    if (v4)
    {
      v74 = (*(v128 + 56) + 56 * v67);
      v75 = *v74;
      v76 = v74[1];
      v77 = v74[2];
      v78 = v74[3];
      v79 = v74[4];
      v80 = v74[5];
      v81 = v74[6];
      *v74 = v63;
      v74[2] = v114;
      v74[3] = v115;
      v74[4] = v64;
      v74[5] = v116;
      v74[6] = v117;
      sub_18206A46C(v75, v76, v77, v78, v79, v80, v81);
      v4 = v73;
      goto LABEL_96;
    }

    *(v128 + 8 * (v67 >> 6) + 64) |= 1 << v67;
    *(v73[6] + v67) = v65;
    v82 = v73[7] + 56 * v67;
    *v82 = v63;
    *(v82 + 16) = v114;
    *(v82 + 24) = v115;
    *(v82 + 32) = v64;
    *(v82 + 40) = v116;
    *(v82 + 48) = v117;
    v83 = v73[2];
    v42 = __OFADD__(v83, 1);
    v84 = v83 + 1;
    if (v42)
    {
      goto LABEL_138;
    }

    v4 = v73;
    v73[2] = v84;
LABEL_96:
    a1 = v125;
    v5 = v54;
    v85 = *(v54 + 2);
    v6 = v54 + 16;
    v29 = v85;
    if (v85)
    {
      continue;
    }

    break;
  }

LABEL_108:
  if ((v121 & 1) == 0 && (v120 & 1) == 0)
  {
    if (qword_1EA837020 == -1)
    {
      goto LABEL_111;
    }

    goto LABEL_139;
  }

  return v4;
}

uint64_t sub_1822D2850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80, &qword_182AE6070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1822D2928(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 5;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1822D2978(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      *a1 = 32 * -a2;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1822D29E8(uint64_t result, int a2)
{
  *result &= 0x1FuLL;
  *(result + 36) = a2 << 27;
  return result;
}

uint64_t getEnumTagSinglePayload for TransportParameterTypes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransportParameterTypes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1822D2B64()
{
  result = qword_1EA83C0C8;
  if (!qword_1EA83C0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83C0D0, qword_182B08568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C0C8);
  }

  return result;
}

unint64_t sub_1822D2BCC()
{
  result = qword_1EA83C0D8;
  if (!qword_1EA83C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C0D8);
  }

  return result;
}

unint64_t sub_1822D2C44()
{
  result = qword_1EA83C0E0;
  if (!qword_1EA83C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C0E0);
  }

  return result;
}

unint64_t sub_1822D2C9C()
{
  result = qword_1EA83C0E8;
  if (!qword_1EA83C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C0E8);
  }

  return result;
}

unint64_t sub_1822D2CF0()
{
  result = qword_1EA83C0F0;
  if (!qword_1EA83C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C0F0);
  }

  return result;
}

unint64_t sub_1822D2D44()
{
  result = qword_1EA83C0F8;
  if (!qword_1EA83C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83C0F8);
  }

  return result;
}

void nw_aop2_offload_options_set_control_client_name(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ((nw_protocol_options_is_aop2_offload(v3) & 1) == 0)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_aop2_offload_options_set_control_client_name";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_aop2_offload(options)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_control_client_name";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_aop2_offload(options)", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v22 = "nw_aop2_offload_options_set_control_client_name";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v5)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v5);
        goto LABEL_4;
      }

      if (v12)
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_control_client_name";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_control_client_name";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __nw_aop2_offload_options_set_control_client_name_block_invoke;
    v18[3] = &__block_descriptor_40_e9_B16__0_v8l;
    v18[4] = a2;
    nw_protocol_options_access_handle(v3, v18);
    goto LABEL_4;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_aop2_offload_options_set_control_client_name";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null name", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v5, &type, &v19))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_control_client_name";
      _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null name", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19 != 1)
  {
    v6 = __nwlog_obj();
    v17 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_control_client_name";
      _os_log_impl(&dword_181A37000, v6, v17, "%{public}s called with null name, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v13 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v14 = type;
  v15 = os_log_type_enabled(v6, type);
  if (!v13)
  {
    if (v15)
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_control_client_name";
      _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null name, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v15)
  {
    *buf = 136446466;
    v22 = "nw_aop2_offload_options_set_control_client_name";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null name, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v5)
  {
    goto LABEL_39;
  }

LABEL_4:
}

uint64_t nw_protocol_options_is_aop2_offload(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (nw_protocol_setup_aop2_offload_definition(void)::onceToken != -1)
    {
      dispatch_once(&nw_protocol_setup_aop2_offload_definition(void)::onceToken, &__block_literal_global);
    }

    v2 = nw_protocol_options_matches_definition(v1, g_aop2_offload_definition);
    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_options_is_aop2_offload";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null options", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_options_is_aop2_offload";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_protocol_options_is_aop2_offload";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_options_is_aop2_offload";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_options_is_aop2_offload";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_5:

  return v2;
}

uint64_t __nw_aop2_offload_options_set_control_client_name_block_invoke(uint64_t a1, _BYTE *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (a2)
  {
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v15 = 136446210;
    v16 = "_strict_strlcpy";
    v14 = 12;
    v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s strict_strlcpy called with NULL dst", &v15, v14);

    result = __nwlog_should_abort(v8);
    if (result)
    {
      goto LABEL_18;
    }

    free(v8);
    a2 = 0;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v9 = a2;
  v10 = __nwlog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v15 = 136446210;
  v16 = "_strict_strlcpy";
  LODWORD(v13) = 12;
  v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s strict_strlcpy called with NULL src", &v15, v13);

  result = __nwlog_should_abort(v12);
  if (result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  free(v12);
  a2 = v9;
LABEL_3:
  v3 = 128;
  while (1)
  {
    v4 = *v2;
    *a2 = v4;
    if (!v4)
    {
      break;
    }

    ++a2;
    ++v2;
    if (--v3 <= 1)
    {
      *a2 = 0;
      return 1;
    }
  }

  return 1;
}

uint64_t ___ZL41nw_protocol_setup_aop2_offload_definitionv_block_invoke()
{
  if (nw_protocol_aop2_offload_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_aop2_offload_identifier::onceToken, &__block_literal_global_25);
  }

  v0 = nw_protocol_definition_create_with_identifier(&nw_protocol_aop2_offload_identifier::identifier);
  v1 = g_aop2_offload_definition;
  g_aop2_offload_definition = v0;

  nw_protocol_definition_set_options_allocator(g_aop2_offload_definition, nw_aop2_offload_allocate_options, nw_aop2_offload_copy_options, nw_aop2_offload_deallocate_options);
  nw_protocol_definition_set_options_equality_check(g_aop2_offload_definition, nw_aop2_offload_option_is_equal);
  nw_protocol_definition_set_options_serializer(g_aop2_offload_definition, 0, nw_aop2_offload_serialize_options, nw_aop2_offload_deserialize_options);
  nw_protocol_definition_set_has_global_definition(g_aop2_offload_definition);
  v2 = g_aop2_offload_definition;

  return nw_protocol_register_handle(&nw_protocol_aop2_offload_identifier::identifier, v2, nw_protocol_aop2_offload_create, 0);
}

void *nw_aop2_offload_deserialize_options(void *a1, const void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v5;
  if (v6)
  {
    if (a3 == 516)
    {
      v8 = nw_aop2_offload_copy_options(v5, v6);
      goto LABEL_4;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_aop2_offload_deserialize_options";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null (serialized_length == sizeof(struct nw_protocol_aop2_offload_options))", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v11, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_aop2_offload_deserialize_options";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null (serialized_length == sizeof(struct nw_protocol_aop2_offload_options))", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v23 != 1)
      {
        v12 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_aop2_offload_deserialize_options";
          _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null (serialized_length == sizeof(struct nw_protocol_aop2_offload_options)), backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          v26 = "nw_aop2_offload_deserialize_options";
          _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null (serialized_length == sizeof(struct nw_protocol_aop2_offload_options)), no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v20)
      {
        *buf = 136446466;
        v26 = "nw_aop2_offload_deserialize_options";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null (serialized_length == sizeof(struct nw_protocol_aop2_offload_options)), dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_aop2_offload_deserialize_options";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null serialized_bytes", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v11, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_aop2_offload_deserialize_options";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null serialized_bytes", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v23 != 1)
      {
        v12 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_aop2_offload_deserialize_options";
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null serialized_bytes, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v26 = "nw_aop2_offload_deserialize_options";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null serialized_bytes, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v26 = "nw_aop2_offload_deserialize_options";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null serialized_bytes, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_4:

  return v8;
}

void *nw_aop2_offload_copy_options(void *a1, const void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_aop2_offload_copy_options";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null existing_handle", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v14, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v25 = "nw_aop2_offload_copy_options";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null existing_handle", buf, 0xCu);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v18 = type;
        v19 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            v25 = "nw_aop2_offload_copy_options";
            v26 = 2082;
            v27 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_31;
        }

        if (v19)
        {
          *buf = 136446210;
          v25 = "nw_aop2_offload_copy_options";
          _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null existing_handle, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v15 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v25 = "nw_aop2_offload_copy_options";
          _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null existing_handle, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_31:
    if (v14)
    {
      free(v14);
    }

    v5 = 0;
    goto LABEL_14;
  }

  v4 = malloc_type_calloc(1uLL, 0x204uLL, 0xD8FFE611uLL);
  v5 = v4;
  if (v4)
  {
    bzero(v4, 0x204uLL);
LABEL_13:
    memcpy(v5, a2, 0x204uLL);
LABEL_14:

    return v5;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  *buf = 136446722;
  v25 = "nw_aop2_offload_copy_options";
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v26 = 2048;
  v27 = 1;
  v28 = 2048;
  v29 = 516;
  v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  result = __nwlog_should_abort(v8);
  if (!result)
  {
    free(v8);
    bzero(0, 0x204uLL);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR) ? 3 : 2;
    *buf = 136446210;
    v25 = "nw_aop2_offload_copy_options";
    LODWORD(v21) = 12;
    v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s strict_placement_new(nw_protocol_aop2_offload_options, strict_calloc(1, sizeof(nw_protocol_aop2_offload_options)),) failed", buf, v21);

    result = __nwlog_should_abort(v12);
    if (!result)
    {
      free(v12);
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *nw_aop2_offload_serialize_options(void *a1, const void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v5;
  if (v6)
  {
    v8 = nw_aop2_offload_copy_options(v5, v6);
    *a3 = 516;
    goto LABEL_3;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_aop2_offload_serialize_options";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null existing_handle", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v11, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_aop2_offload_serialize_options";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null existing_handle", buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v21 = "nw_aop2_offload_serialize_options";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v16)
      {
        *buf = 136446210;
        v21 = "nw_aop2_offload_serialize_options";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null existing_handle, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_aop2_offload_serialize_options";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null existing_handle, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_3:

  return v8;
}

void nw_aop2_offload_deallocate_options(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void *nw_aop2_offload_allocate_options(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x204uLL, 0x14C7C89CuLL);
  if (v2)
  {
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v7 = 136446722;
  v8 = "nw_aop2_offload_allocate_options";
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v9 = 2048;
  v10 = 1;
  v11 = 2048;
  v12 = 516;
  v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v7, 32);

  result = __nwlog_should_abort(v5);
  if (!result)
  {
    free(v5);
LABEL_7:

    return v2;
  }

  __break(1u);
  return result;
}

void nw_aop2_offload_options_set_control_server_name(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ((nw_protocol_options_is_aop2_offload(v3) & 1) == 0)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_aop2_offload_options_set_control_server_name";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_aop2_offload(options)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_control_server_name";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_aop2_offload(options)", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v22 = "nw_aop2_offload_options_set_control_server_name";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v5)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v5);
        goto LABEL_4;
      }

      if (v12)
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_control_server_name";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_control_server_name";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __nw_aop2_offload_options_set_control_server_name_block_invoke;
    v18[3] = &__block_descriptor_40_e9_B16__0_v8l;
    v18[4] = a2;
    nw_protocol_options_access_handle(v3, v18);
    goto LABEL_4;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_aop2_offload_options_set_control_server_name";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null name", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v5, &type, &v19))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_control_server_name";
      _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null name", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19 != 1)
  {
    v6 = __nwlog_obj();
    v17 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_control_server_name";
      _os_log_impl(&dword_181A37000, v6, v17, "%{public}s called with null name, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v13 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v14 = type;
  v15 = os_log_type_enabled(v6, type);
  if (!v13)
  {
    if (v15)
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_control_server_name";
      _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null name, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v15)
  {
    *buf = 136446466;
    v22 = "nw_aop2_offload_options_set_control_server_name";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null name, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v5)
  {
    goto LABEL_39;
  }

LABEL_4:
}

uint64_t __nw_aop2_offload_options_set_control_server_name_block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v7 = a2;
    v8 = __nwlog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 136446210;
    v12 = "_strict_strlcpy";
    v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s strict_strlcpy called with NULL src", &v11, 12);

    result = __nwlog_should_abort(v10);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v10);
    a2 = v7;
  }

  v3 = (a2 + 128);
  v4 = 128;
  while (1)
  {
    v5 = *v2;
    *v3 = v5;
    if (!v5)
    {
      break;
    }

    ++v3;
    ++v2;
    if (--v4 <= 1)
    {
      *v3 = 0;
      return 1;
    }
  }

  return 1;
}

void nw_aop2_offload_options_set_data_tx_name(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ((nw_protocol_options_is_aop2_offload(v3) & 1) == 0)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_aop2_offload_options_set_data_tx_name";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_aop2_offload(options)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_data_tx_name";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_aop2_offload(options)", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v22 = "nw_aop2_offload_options_set_data_tx_name";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v5)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v5);
        goto LABEL_4;
      }

      if (v12)
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_data_tx_name";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_aop2_offload_options_set_data_tx_name";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null nw_protocol_options_is_aop2_offload(options), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __nw_aop2_offload_options_set_data_tx_name_block_invoke;
    v18[3] = &__block_descriptor_40_e9_B16__0_v8l;
    v18[4] = a2;
    nw_protocol_options_access_handle(v3, v18);
    goto LABEL_4;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_aop2_offload_options_set_data_tx_name";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null name", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v5, &type, &v19))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_data_tx_name";
      _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null name", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19 != 1)
  {
    v6 = __nwlog_obj();
    v17 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_data_tx_name";
      _os_log_impl(&dword_181A37000, v6, v17, "%{public}s called with null name, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v13 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v14 = type;
  v15 = os_log_type_enabled(v6, type);
  if (!v13)
  {
    if (v15)
    {
      *buf = 136446210;
      v22 = "nw_aop2_offload_options_set_data_tx_name";
      _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null name, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v15)
  {
    *buf = 136446466;
    v22 = "nw_aop2_offload_options_set_data_tx_name";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null name, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v5)
  {
    goto LABEL_39;
  }

LABEL_4:
}

uint64_t __nw_aop2_offload_options_set_data_tx_name_block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v7 = a2;
    v8 = __nwlog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 136446210;
    v12 = "_strict_strlcpy";
    v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s strict_strlcpy called with NULL src", &v11, 12);

    result = __nwlog_should_abort(v10);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v10);
    a2 = v7;
  }

  v3 = (a2 + 256);
  v4 = 128;
  while (1)
  {
    v5 = *v2;
    *v3 = v5;
    if (!v5)
    {
      break;
    }

    ++v3;
    ++v2;
    if (--v4 <= 1)
    {
      *v3 = 0;
      return 1;
    }
  }

  return 1;
}