unint64_t *sub_1BB00F144(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1BB00F428(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1BB00F1E0(uint64_t a1)
{
  v2 = sub_1BB0147A8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1BB00FC4C(&qword_1EBC3B970, MEMORY[0x1E6986158]);
  result = MEMORY[0x1BFB06E60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1BB00C2F0(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1BB00F368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PolicyTerritoryKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB00F3CC(uint64_t a1)
{
  v2 = type metadata accessor for PolicyTerritoryKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BB00F428(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v34 = a2;
  v35 = a1;
  v5 = sub_1BAFD86D0(&qword_1EBC3B428, &qword_1BB019EC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v34 - v6;
  v7 = sub_1BB0147A8();
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v12 = 0;
  v44 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v40 = v9 + 16;
  v41 = v9;
  v39 = (v9 + 8);
  v20 = v42;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_12:
    v24 = v21 | (v12 << 6);
    v25 = *(v44 + 48);
    v26 = *(v41 + 72);
    v38 = v24;
    (*(v41 + 16))(v11, v25 + v26 * v24, v7);
    sub_1BB014778();
    v27 = sub_1BB014648();
    v28 = (*(*(v27 - 8) + 48))(v20, 1, v27);
    v29 = sub_1BAFE2D64(v20, &qword_1EBC3B428, &qword_1BB019EC0);
    if (v28 == 1)
    {
      MEMORY[0x1EEE9AC00](v29);
      *(&v34 - 2) = v11;
      v30 = v43;
      v31 = sub_1BB00BC94(sub_1BB00FD20, (&v34 - 4), v37);
      v43 = v30;
      result = (*v39)(v11, v7);
      if (v31)
      {
        *(v35 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_17:
          v33 = v44;

          return sub_1BB00EB38(v35, v34, v36, v33);
        }
      }
    }

    else
    {
      result = (*v39)(v11, v7);
    }
  }

  v22 = v12;
  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_17;
    }

    v23 = *(v14 + 8 * v12);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v18 = (v23 - 1) & v23;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB00F774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = *MEMORY[0x1E69E9840];
  v6 = sub_1BAFD86D0(&qword_1EBC3B428, &qword_1BB019EC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = v38 - v7;
  v8 = sub_1BB0147A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a1 + 32);
  v12 = v10 & 0x3F;
  v13 = ((1 << v10) + 63) >> 6;
  v14 = 8 * v13;
  v42 = a2;

  if (v12 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v46 = v11;
    v49 = v3;
    v38[1] = v38;
    v39 = v13;
    MEMORY[0x1EEE9AC00](v15);
    v40 = v38 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v14);
    v41 = 0;
    v16 = 0;
    v3 = a1 + 56;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v13 = v18 & *(a1 + 56);
    v19 = (v17 + 63) >> 6;
    v44 = (v9 + 8);
    v45 = v9 + 16;
    v47 = v9;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_13:
      v23 = v20 | (v16 << 6);
      v24 = *(a1 + 48);
      v25 = *(v9 + 72);
      v43 = v23;
      v26 = v24 + v25 * v23;
      v27 = *(v9 + 16);
      v11 = v46;
      v28 = v8;
      v27(v46, v26, v8);
      v29 = v48;
      sub_1BB014778();
      v30 = sub_1BB014648();
      v14 = (*(*(v30 - 8) + 48))(v29, 1, v30);
      v31 = sub_1BAFE2D64(v29, &qword_1EBC3B428, &qword_1BB019EC0);
      if (v14 == 1)
      {
        MEMORY[0x1EEE9AC00](v31);
        v38[-2] = v11;
        v32 = v49;
        v14 = sub_1BB00BC94(sub_1BB00FC90, &v38[-4], v42);
        v49 = v32;
        (*v44)(v11, v28);
        v8 = v28;
        v9 = v47;
        if (v14)
        {
          *&v40[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
          if (__OFADD__(v41++, 1))
          {
            __break(1u);
LABEL_18:
            v34 = sub_1BB00EB38(v40, v39, v41, a1);

            return v34;
          }
        }
      }

      else
      {
        (*v44)(v11, v28);
        v8 = v28;
        v9 = v47;
      }
    }

    v21 = v16;
    while (1)
    {
      v16 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v16 >= v19)
      {
        goto LABEL_18;
      }

      v22 = *(v3 + 8 * v16);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v36 = swift_slowAlloc();
  v37 = v42;

  v34 = sub_1BB00F144(v36, v13, a1, v37);

  MEMORY[0x1BFB07C70](v36, -1, -1);

  return v34;
}

uint64_t sub_1BB00FC4C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BB0147A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BB00FCB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PolicyTerritoryKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB00FD14(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1BB00FD8C()
{
  sub_1BB0151B8();
  sub_1BB0151E8();
  return sub_1BB0151F8();
}

uint64_t sub_1BB00FE00(uint64_t a1)
{
  sub_1BB0151B8();
  sub_1BB0151E8();
  return sub_1BB0151F8();
}

unint64_t sub_1BB00FE44@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BB00FE94(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1BB00FE94(int a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v1 = 0;
        v2 = 3;
        return v2 | (v1 << 32);
      case 4:
        v1 = 0;
        v2 = 4;
        return v2 | (v1 << 32);
      case 5:
        v1 = 0;
        v2 = 5;
        return v2 | (v1 << 32);
    }

LABEL_12:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (!a1)
  {
    v2 = 0;
    v1 = 0;
    return v2 | (v1 << 32);
  }

  if (a1 == 1)
  {
    v1 = 0;
    v2 = 1;
    return v2 | (v1 << 32);
  }

  if (a1 != 2)
  {
    goto LABEL_12;
  }

  v1 = 0;
  v2 = 2;
  return v2 | (v1 << 32);
}

unint64_t sub_1BB00FF34()
{
  result = qword_1EBC3B9A0;
  if (!qword_1EBC3B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B9A0);
  }

  return result;
}

unint64_t sub_1BB00FF8C()
{
  result = qword_1EBC3B9A8;
  if (!qword_1EBC3B9A8)
  {
    sub_1BAFD9DF0(qword_1EBC3B9B0, &qword_1BB01D210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B9A8);
  }

  return result;
}

uint64_t Handle.primary.getter()
{
  v1 = *v0;

  return v1;
}

AdPlatformsCommon::Handle __swiftcall Handle.init(_:)(AdPlatformsCommon::Handle result)
{
  *v1 = result.primary;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  return result;
}

AdPlatformsCommon::Handle __swiftcall Handle.init(primary:secondary:)(AdPlatformsCommon::Handle primary, Swift::Int_optional secondary)
{
  *v2 = primary.primary;
  *(v2 + 16) = secondary.value;
  *(v2 + 24) = secondary.is_nil;
  primary.secondary = secondary;
  return primary;
}

uint64_t static Handle.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_1BB015118(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
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

  return result;
}

uint64_t sub_1BB0100E8(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_1BB015118(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

__n128 sub_1BB01016C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1BB010180(uint64_t a1, int a2)
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

uint64_t sub_1BB0101C8(uint64_t result, int a2, int a3)
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

uint64_t TracingEventPipe.__allocating_init(source:connecting:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1BAFC6D0C(a3, v6 + 32);
  return v6;
}

uint64_t TracingEventPipe.init(source:connecting:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_1BAFC6D0C(a3, v3 + 32);
  return v3;
}

uint64_t sub_1BB01029C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for EventCapsule(0, *(*v4 + 80), a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v34 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v13 = sub_1BB0149A8();
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB014978();
  v16 = *(v8 + 16);
  v16(v12, a1, v7);

  v17 = sub_1BB014988();
  v18 = sub_1BB014DA8();

  v33 = v18;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = a1;
    v20 = v19;
    v31 = swift_slowAlloc();
    v37 = v31;
    *v20 = 136446466;
    *(v20 + 4) = sub_1BB01313C(v5[2], v5[3], &v37);
    *(v20 + 12) = 2082;
    v16(v34, v12, v7);
    v21 = sub_1BB014B98();
    v23 = v22;
    (*(v8 + 8))(v12, v7);
    v24 = sub_1BB01313C(v21, v23, &v37);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_1BAFC4000, v17, v33, "%{public}s: delivering event %{public}s", v20, 0x16u);
    v25 = v31;
    swift_arrayDestroy();
    MEMORY[0x1BFB07C70](v25, -1, -1);
    v26 = v20;
    a1 = v32;
    MEMORY[0x1BFB07C70](v26, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  (*(v35 + 8))(v15, v36);
  v27 = v5[7];
  v28 = v5[8];
  sub_1BAFC6AB4(v5 + 4, v27);
  return (*(v28 + 16))(a1, v27, v28);
}

uint64_t TracingEventPipe.deinit()
{

  sub_1BAFC6A68((v0 + 32));
  return v0;
}

uint64_t TracingEventPipe.__deallocating_deinit()
{

  sub_1BAFC6A68((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t ClientEvent.handle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t ClientEvent.init(kind:handle:order:trace:branch:environment:relay:properties:internalProperties:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = *a2;
  v17 = *(a2 + 2);
  v18 = *(a2 + 24);
  *a9 = a1;
  *(a9 + 8) = v16;
  *(a9 + 24) = v17;
  *(a9 + 32) = v18;
  *(a9 + 40) = a3;
  v19 = type metadata accessor for ClientEvent(0);
  sub_1BB010A4C(a4, a9 + v19[7], &qword_1EBC3BA40, &qword_1BB01D3A0);
  sub_1BB010A4C(a5, a9 + v19[8], &qword_1EBC3BA48, &qword_1BB01D3A8);
  sub_1BB010A4C(a6, a9 + v19[9], &qword_1EBC3BA48, &qword_1BB01D3A8);
  sub_1BB010A4C(a7, a9 + v19[10], &qword_1EBC3BA50, &unk_1BB01D3B0);
  sub_1BB010A4C(a8, a9 + v19[11], &qword_1EBC3BA50, &unk_1BB01D3B0);
  return sub_1BB010A4C(a10, a9 + v19[12], &unk_1EBC3BA58, &qword_1BB01D3C0);
}

uint64_t sub_1BB010A4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1BAFD86D0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _s17AdPlatformsCommon11ClientEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAFD86D0(&unk_1EBC3BA68, &qword_1BB01D450);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v74 - v6;
  v8 = sub_1BAFD86D0(&qword_1EBC3BA48, &qword_1BB01D3A8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v80 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v74 - v11;
  v83 = sub_1BAFD86D0(&qword_1EBC3BA98, &qword_1BB01D468);
  v12 = MEMORY[0x1EEE9AC00](v83);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v74 - v15;
  v16 = sub_1BB0145F8();
  v84 = *(v16 - 8);
  v85 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BAFD86D0(&qword_1EBC3BA40, &qword_1BB01D3A0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v74 - v20;
  v22 = sub_1BAFD86D0(&qword_1EBC3BAA0, &unk_1BB01D470);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v74 - v23;
  if (*a1 != *a2)
  {
    goto LABEL_34;
  }

  v76 = v7;
  v77 = v14;
  v78 = v4;
  v79 = v5;
  v25 = *(a1 + 8);
  v26 = *(a1 + 16);
  v27 = *(a1 + 24);
  v28 = a1;
  v29 = *(a1 + 32);
  v30 = *(a2 + 8);
  v31 = *(a2 + 16);
  v32 = *(a2 + 24);
  v33 = a2;
  v34 = *(a2 + 32);
  if ((v25 != v30 || v26 != v31) && (sub_1BB015118() & 1) == 0)
  {
    goto LABEL_34;
  }

  if (v29)
  {
    if (!v34)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v27 == v32)
    {
      v35 = v34;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      goto LABEL_34;
    }
  }

  if (*(v28 + 40) == *(v33 + 40))
  {
    v36 = v28;
    v37 = v33;
    v75 = type metadata accessor for ClientEvent(0);
    v38 = v75[7];
    v39 = *(v22 + 48);
    sub_1BB0008F8(v28 + v38, v24, &qword_1EBC3BA40, &qword_1BB01D3A0);
    sub_1BB0008F8(v33 + v38, &v24[v39], &qword_1EBC3BA40, &qword_1BB01D3A0);
    v41 = v84;
    v40 = v85;
    v42 = *(v84 + 48);
    if (v42(v24, 1, v85) == 1)
    {
      v43 = v42(&v24[v39], 1, v40);
      v44 = v79;
      if (v43 == 1)
      {
        sub_1BAFE2D64(v24, &qword_1EBC3BA40, &qword_1BB01D3A0);
        goto LABEL_20;
      }
    }

    else
    {
      sub_1BB0008F8(v24, v21, &qword_1EBC3BA40, &qword_1BB01D3A0);
      v45 = v42(&v24[v39], 1, v40);
      v46 = v79;
      if (v45 != 1)
      {
        (*(v41 + 32))(v18, &v24[v39], v40);
        sub_1BB011424();
        v50 = v41;
        v51 = v40;
        v52 = sub_1BB014B18();
        v53 = *(v50 + 8);
        v53(v18, v51);
        v53(v21, v51);
        v44 = v46;
        sub_1BAFE2D64(v24, &qword_1EBC3BA40, &qword_1BB01D3A0);
        if ((v52 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_20:
        v54 = v75[8];
        v55 = v82;
        v56 = *(v83 + 48);
        sub_1BB0008F8(v36 + v54, v82, &qword_1EBC3BA48, &qword_1BB01D3A8);
        sub_1BB0008F8(v37 + v54, v55 + v56, &qword_1EBC3BA48, &qword_1BB01D3A8);
        v57 = *(v44 + 48);
        v58 = v78;
        if (v57(v55, 1, v78) == 1)
        {
          if (v57(v55 + v56, 1, v58) == 1)
          {
            sub_1BAFE2D64(v55, &qword_1EBC3BA48, &qword_1BB01D3A8);
LABEL_27:
            v64 = v75[9];
            v65 = *(v83 + 48);
            v66 = v77;
            sub_1BB0008F8(v36 + v64, v77, &qword_1EBC3BA48, &qword_1BB01D3A8);
            v85 = v65;
            sub_1BB0008F8(v37 + v64, v66 + v65, &qword_1EBC3BA48, &qword_1BB01D3A8);
            if (v57(v66, 1, v58) == 1)
            {
              if (v57(v66 + v85, 1, v58) == 1)
              {
                sub_1BAFE2D64(v66, &qword_1EBC3BA48, &qword_1BB01D3A8);
LABEL_37:
                if (sub_1BB014E88() & 1) != 0 && (sub_1BB014E88())
                {
                  v69 = sub_1BB014E78();
                  return v69 & 1;
                }

                goto LABEL_34;
              }
            }

            else
            {
              v67 = v80;
              sub_1BB0008F8(v66, v80, &qword_1EBC3BA48, &qword_1BB01D3A8);
              v68 = v85;
              if (v57(v66 + v85, 1, v58) != 1)
              {
                v71 = v76;
                (*(v44 + 32))(v76, v66 + v68, v58);
                sub_1BB0113C0();
                v72 = sub_1BB014B18();
                v73 = *(v44 + 8);
                v73(v71, v58);
                v73(v67, v58);
                sub_1BAFE2D64(v66, &qword_1EBC3BA48, &qword_1BB01D3A8);
                if ((v72 & 1) == 0)
                {
                  goto LABEL_34;
                }

                goto LABEL_37;
              }

              (*(v44 + 8))(v67, v58);
            }

            v47 = &qword_1EBC3BA98;
            v48 = &qword_1BB01D468;
            v49 = v66;
LABEL_33:
            sub_1BAFE2D64(v49, v47, v48);
            goto LABEL_34;
          }
        }

        else
        {
          v59 = v81;
          sub_1BB0008F8(v55, v81, &qword_1EBC3BA48, &qword_1BB01D3A8);
          if (v57(v55 + v56, 1, v58) != 1)
          {
            v60 = v55 + v56;
            v61 = v76;
            (*(v44 + 32))(v76, v60, v58);
            sub_1BB0113C0();
            LODWORD(v85) = sub_1BB014B18();
            v62 = v59;
            v63 = *(v44 + 8);
            v63(v61, v58);
            v63(v62, v58);
            sub_1BAFE2D64(v82, &qword_1EBC3BA48, &qword_1BB01D3A8);
            if ((v85 & 1) == 0)
            {
              goto LABEL_34;
            }

            goto LABEL_27;
          }

          (*(v44 + 8))(v59, v58);
        }

        v47 = &qword_1EBC3BA98;
        v48 = &qword_1BB01D468;
        v49 = v55;
        goto LABEL_33;
      }

      (*(v41 + 8))(v21, v40);
    }

    v47 = &qword_1EBC3BAA0;
    v48 = &unk_1BB01D470;
    v49 = v24;
    goto LABEL_33;
  }

LABEL_34:
  v69 = 0;
  return v69 & 1;
}

unint64_t sub_1BB0113C0()
{
  result = qword_1EBC3BAA8;
  if (!qword_1EBC3BAA8)
  {
    sub_1BAFD9DF0(&unk_1EBC3BA68, &qword_1BB01D450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3BAA8);
  }

  return result;
}

unint64_t sub_1BB011424()
{
  result = qword_1EBC3BAB0;
  if (!qword_1EBC3BAB0)
  {
    sub_1BB0145F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3BAB0);
  }

  return result;
}

uint64_t EventSource.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_1BB014758();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EventSource(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BB011974(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v13 = 0;
    v14 = 0xE000000000000000;
    MEMORY[0x1BFB06D20](0x286E776F6E6B6E75, 0xE800000000000000);
    sub_1BB014FF8();
    MEMORY[0x1BFB06D20](41, 0xE100000000000000);
    v9 = v13;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v10 = *v8;
    v13 = 0;
    v14 = 0xE000000000000000;
    MEMORY[0x1BFB06D20](0x286E776F6E6BLL, 0xE600000000000000);
    v12[1] = v10;
    sub_1BB014FF8();
    MEMORY[0x1BFB06D20](41, 0xE100000000000000);
    return v13;
  }

  return v9;
}

uint64_t _s17AdPlatformsCommon11EventSourceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BB014758();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EventSource(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v22 - v12);
  v14 = sub_1BAFD86D0(&qword_1EBC3BAD0, &unk_1BB01D4F0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v22 - v16;
  v18 = *(v15 + 56);
  sub_1BB011974(a1, &v22 - v16);
  sub_1BB011974(a2, &v17[v18]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1BB011974(v17, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v19 = *v13 == *&v17[v18];
      goto LABEL_6;
    }

LABEL_8:
    sub_1BB011A44(v17);
    v19 = 0;
    return v19 & 1;
  }

  sub_1BB011974(v17, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_8;
  }

  (*(v5 + 32))(v7, &v17[v18], v4);
  v19 = sub_1BB014718();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v11, v4);
LABEL_6:
  sub_1BB011AAC(v17);
  return v19 & 1;
}

uint64_t type metadata accessor for EventSource(uint64_t a1)
{
  result = qword_1EBC3BAC0;
  if (!qword_1EBC3BAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB011974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB0119D8(uint64_t a1)
{
  result = sub_1BB014758();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BB011A44(uint64_t a1)
{
  v2 = sub_1BAFD86D0(&qword_1EBC3BAD0, &unk_1BB01D4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BB011AAC(uint64_t a1)
{
  v2 = type metadata accessor for EventSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for EventSourceID(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for EventSourceID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1BB011C1C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_1BB011C7C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1BB011CC8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_1BB011D28()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1BB011D74()
{
  v1 = v0[9];
  v2 = v0[10];
  sub_1BAFC6AB4(v0 + 6, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1BB011DC8()
{
  v1 = v0[9];
  v2 = v0[10];
  sub_1BAFC6AB4(v0 + 6, v1);
  return (*(v2 + 8))(v1, v2);
}

void *UserInformationSource.__allocating_init(idProvider:storeFront:storeFrontLocale:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_1BAFC6D0C(a1, (v10 + 6));
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  return v10;
}

void *UserInformationSource.init(idProvider:storeFront:storeFrontLocale:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BAFC6D0C(a1, (v5 + 6));
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a5;
  return v5;
}

uint64_t sub_1BB011ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v4[2] = a1;
  v4[3] = a2;

  swift_beginAccess();
  v4[4] = a3;
  v4[5] = a4;
}

void *UserInformationSource.deinit()
{

  sub_1BAFC6A68((v0 + 48));
  return v0;
}

uint64_t UserInformationSource.__deallocating_deinit()
{

  sub_1BAFC6A68((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1BB011FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  swift_beginAccess();
  v9[2] = a1;
  v9[3] = a2;

  swift_beginAccess();
  v9[4] = a3;
  v9[5] = a4;
}

uint64_t CoalescingSensitiveCategoryFilter.__allocating_init(categoryFilter:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BAFC6D0C(a1, v2 + 16);
  return v2;
}

uint64_t CoalescingSensitiveCategoryFilter.eligibilityFor(categories:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1BAFC6DB4(v2 + 16, v20);
  v4 = *(a1 + 16);

  v5 = (a1 + 40);
  v6 = v4 + 1;
  while (--v6)
  {
    v7 = v5 + 2;
    v8 = *(v5 - 1);
    v9 = *v5;
    v10 = v21;
    v11 = v22;
    sub_1BAFC6AB4(v20, v21);
    v12 = *(v11 + 8);

    v12(v19, v8, v9, v10, v11);

    v5 = v7;
    if (*(&v19[0] + 1))
    {
      v16 = v19[0];
      v17 = v19[1];

      result = sub_1BAFC6A68(v20);
      v14 = a2;
      v15 = v16;
      a2[1] = v17;
      goto LABEL_6;
    }
  }

  result = sub_1BAFC6A68(v20);
  v15 = 0uLL;
  v14 = a2;
  a2[1] = 0u;
LABEL_6:
  *v14 = v15;
  return result;
}

uint64_t CoalescingSensitiveCategoryFilter.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall idmanagerError(errorType:description:)(AdPlatformsCommon::IDManagerErrorType errorType, Swift::String_optional description)
{
  object = description.value._object;
  countAndFlagsBits = description.value._countAndFlagsBits;
  v4 = *errorType;
  v5 = sub_1BB014DB8();
  sub_1BAFC5BB4(0, &qword_1EDD4FFC0, 0x1E69E9BF8);
  v6 = sub_1BB014E68();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315394;
    v9 = IDManagerErrorType.description.getter();
    v11 = sub_1BB01313C(v9, v10, &v26);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    if (object)
    {
      v12 = countAndFlagsBits;
    }

    else
    {
      v12 = 0;
    }

    if (object)
    {
      v13 = object;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    v14 = sub_1BB01313C(v12, v13, &v26);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1BAFC4000, v6, v5, "Error: %s, Description: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB07C70](v8, -1, -1);
    MEMORY[0x1BFB07C70](v7, -1, -1);
  }

  v15 = [objc_opt_self() processInfo];
  v16 = [v15 isRunningTests];

  if ((v16 & 1) == 0)
  {
    if (object)
    {
      sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BB0187E0;
      *(inited + 32) = 0x7470697263736544;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xEB000000006E6F69;
      *(inited + 48) = countAndFlagsBits;
      *(inited + 56) = object;

      v18 = sub_1BB0136E4(inited);
      swift_setDeallocating();
      sub_1BAFE2D64(inited + 32, &qword_1EBC3B180, &qword_1BB01ACD0);
    }

    else
    {
      v18 = 0;
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1BB014F58();

    v26 = 0xD00000000000001ALL;
    v27 = 0x80000001BB021BF0;
    v19 = sub_1BB0150F8();
    MEMORY[0x1BFB06D20](v19);

    v20 = sub_1BB014B38();

    if (v18)
    {
      sub_1BB0128D8(v18);

      v18 = sub_1BB014A78();
    }

    v21 = sub_1BB014B38();
    CreateDiagnosticReport();

    v22 = objc_opt_self();
    v23 = sub_1BB014B38();
    sub_1BAFD86D0(&qword_1EBC3B558, &qword_1BB01A7F0);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_1BB0187E0;
    *(v24 + 32) = 0x707954726F727245;
    *(v24 + 40) = 0xE900000000000065;
    *(v24 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1BB013814(v24);
    swift_setDeallocating();
    sub_1BAFE2D64(v24 + 32, &unk_1EBC3B560, &qword_1BB01A7F8);
    sub_1BAFC5BB4(0, &qword_1EDD4FFC8, 0x1E69E58C0);
    v25 = sub_1BB014A78();

    [v22 sendEvent:v23 customPayload:v25];
  }
}

uint64_t sub_1BB0128D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BAFD86D0(&qword_1EBC3BAE8, &qword_1BB01D810);
    v2 = sub_1BB015038();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1BAFDB9B0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1BAFDC53C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1BAFDC53C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1BAFDC53C(v31, v32);
    result = sub_1BB014F08();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1BAFDC53C(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BB012BA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BAFD86D0(&qword_1EBC3BAE8, &qword_1BB01D810);
    v2 = sub_1BB015038();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1BAFDC53C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1BAFDC53C(v29, v30);
    result = sub_1BB014F08();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1BAFDC53C(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t IDManagerErrorType.description.getter()
{
  result = 0xD00000000000001ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
      result = 0xD00000000000003FLL;
      break;
    case 4:
      result = 0xD000000000000038;
      break;
    case 5:
      result = 0xD000000000000032;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000023;
      break;
    case 8:
      result = 0xD00000000000003CLL;
      break;
    case 9:
      result = 0xD00000000000003DLL;
      break;
    case 0xA:
      result = 0xD000000000000025;
      break;
    case 0xB:
      result = 0xD000000000000011;
      break;
    case 0xC:
      result = 0xD000000000000016;
      break;
    case 0xD:
      result = 0xD000000000000018;
      break;
    case 0xE:
      result = 0xD00000000000002BLL;
      break;
    case 0xF:
      result = 0xD000000000000028;
      break;
    case 0x10:
      result = 0xD000000000000033;
      break;
    case 0x11:
      result = 0xD000000000000036;
      break;
    default:
      return result;
  }

  return result;
}

AdPlatformsCommon::IDManagerErrorType_optional __swiftcall IDManagerErrorType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 0x12)
  {
    v2 = 18;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1BB013064()
{
  v1 = *v0;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v1 + 1);
  return sub_1BB0151F8();
}

uint64_t sub_1BB0130DC(uint64_t a1)
{
  v2 = *v1;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v2 + 1);
  return sub_1BB0151F8();
}

unint64_t sub_1BB01313C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BB013208(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1BAFDB9B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1BAFC6A68(v11);
  return v7;
}

unint64_t sub_1BB013208(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BB013314(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1BB014FA8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1BB013314(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BB013360(a1, a2);
  sub_1BB013490(&unk_1F390A730);
  return v3;
}

void *sub_1BB013360(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BB01357C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1BB014FA8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1BB014C08();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BB01357C(v10, 0);
        result = sub_1BB014F48();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BB013490(uint64_t result)
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

  result = sub_1BB0135F0(result, v11, 1, v3);
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

void *sub_1BB01357C(uint64_t a1, uint64_t a2)
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

  sub_1BAFD86D0(&qword_1EBC3BB00, &unk_1BB01D830);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1BB0135F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAFD86D0(&qword_1EBC3BB00, &unk_1BB01D830);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1BB0136E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAFD86D0(&qword_1EBC3B0F0, &unk_1BB0188F0);
    v3 = sub_1BB015038();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BB0008F8(v4, &v13, &qword_1EBC3B180, &qword_1BB01ACD0);
      v5 = v13;
      v6 = v14;
      result = sub_1BAFDCCAC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BAFDC53C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1BB013814(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAFD86D0(&qword_1EBC3BB08, &unk_1BB01D840);
    v3 = sub_1BB015038();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1BAFDCCAC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1BB01391C()
{
  result = qword_1EBC3BAD8;
  if (!qword_1EBC3BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3BAD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IDManagerErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDManagerErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BB013AC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAFD86D0(&qword_1EBC3BAF8, &qword_1BB01D828);
    v3 = sub_1BB015038();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1BAFDCCAC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1BB013BD4(uint64_t a1)
{
  v2 = sub_1BAFD86D0(&qword_1EBC3BAF0, &qword_1BB01D818);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v21 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1BAFD86D0(&qword_1EBC3B0E8, &qword_1BB01D820);
    v7 = sub_1BB015038();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1BB0008F8(v9, v5, &qword_1EBC3BAF0, &qword_1BB01D818);
      result = sub_1BAFDCCAC(*v5, v5[1]);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 16 * result);
      v15 = v5[1];
      *v14 = *v5;
      v14[1] = v15;
      v16 = v7[7];
      v17 = sub_1BB0144A8();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, v5 + v8, v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
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

unint64_t sub_1BB013DC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAFD86D0(&qword_1EBC3BAE0, &unk_1BB01D800);
    v3 = sub_1BB015038();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1BAFDCCAC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_1BB013EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAFD86D0(&qword_1EBC3B0D8, &qword_1BB0188D8);
    v3 = sub_1BB015038();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1BAFDCCAC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

uint64_t AssessingPolicyRuleEvaluator.__allocating_init(ageSource:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BAFC6D0C(a1, v2 + 16);
  return v2;
}

uint64_t AssessingPolicyRuleEvaluator.assess(rule:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(result + 9))
  {
    v3 = 0x80;
  }

  else if (*(result + 8))
  {
    v3 = -2;
  }

  else
  {
    v4 = a2;
    v5 = *result;
    v6 = v2[5];
    v7 = v2[6];
    sub_1BAFC6AB4(v2 + 2, v6);
    result = (*(v7 + 8))(v6, v7);
    if (v8)
    {
      v3 = 0;
    }

    else if (result >= v5)
    {
      v3 = -2;
    }

    else
    {
      v3 = -127;
    }

    a2 = v4;
  }

  *a2 = v3;
  return result;
}

uint64_t AssessingPolicyRuleEvaluator.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));

  return swift_deallocClassInstance();
}