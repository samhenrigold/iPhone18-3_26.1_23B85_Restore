uint64_t sub_1DEF3FDDC(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DEEAF880(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1DEEBAA80();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1DEEB6E90(v14, a3 & 1);
    v9 = sub_1DEEAF880(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_1DEF8E6E8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_1DEE2F1AC(a1, v20);
  }

  else
  {
    sub_1DEF40BAC(v9, a2, a1, v19);
    return sub_1DEEA8BAC(a2, v22);
  }
}

unint64_t sub_1DEF3FF18(uint64_t a1, char a2, __int128 *a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1DEEAF880(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DEEB71E8(v16, a4 & 1);
      result = sub_1DEEAF880(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_15:
        result = sub_1DEF8E6E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1DEEBAC70();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * result;
    *v22 = a1;
    *(v22 + 8) = a2;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v23 = v21[6] + 56 * result;
  v24 = *a3;
  v25 = a3[1];
  v26 = a3[2];
  *(v23 + 48) = *(a3 + 6);
  *(v23 + 16) = v25;
  *(v23 + 32) = v26;
  *v23 = v24;
  v27 = v21[7] + 16 * result;
  *v27 = a1;
  *(v27 + 8) = a2;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21[2] = v29;
  return sub_1DEEA8BAC(a3, v30);
}

uint64_t sub_1DEF40088(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();

  sub_1DEF8D9B8();

  sub_1DEE28090(a1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v12, type metadata accessor for Record.ID.Ownership);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    MEMORY[0x1E12CBF60](0);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    MEMORY[0x1E12CBF60](1);
    sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1DEF8D8C8();
    (*(v7 + 8))(v9, v6);
  }

  sub_1DEF8E7F8();
  v13 = sub_1DEF8DE48();
  *(a3 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
  *(a3[6] + 8 * v13) = a1;
  result = (*(v7 + 32))(a3[7] + *(v7 + 72) * v13, a2, v6);
  ++a3[2];
  return result;
}

unint64_t sub_1DEF40350(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();

  sub_1DEF8D9B8();

  sub_1DEE28090(a1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v12, type metadata accessor for Record.ID.Ownership);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    MEMORY[0x1E12CBF60](0);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    MEMORY[0x1E12CBF60](1);
    sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1DEF8D8C8();
    (*(v7 + 8))(v9, v6);
  }

  sub_1DEF8E7F8();
  result = sub_1DEF8DE48();
  *(a3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  *(a3[6] + 8 * result) = a1;
  *(a3[7] + 8 * result) = a2;
  ++a3[2];
  return result;
}

_OWORD *sub_1DEF405F8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DEE117C0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1DEF40664(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_1DEF8D3F8();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1DEF40710(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1DEF40754(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_1DEE139C0(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_1DEF40800(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ZoneVersion(0);
  result = sub_1DEE139C0(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for ZoneVersion);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1DEF408D4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_1DEF8D3F8();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_1DEE139C0(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

_OWORD *sub_1DEF409C8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1DEE117C0(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1DEF40A44(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1DEF8D3F8();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1DEF40B04(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  result = sub_1DEE139C0(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1DEF40BAC(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 56 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = *(a2 + 48);
  result = sub_1DEE2F1AC(a3, a4[7] + 40 * a1);
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

void sub_1DEF40C34(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_1DEF410F8(v7, v4, v2);
      MEMORY[0x1E12CCD70](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_1DEF40D94(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_1DEF40D94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v46 = sub_1DEF8D378();
  MEMORY[0x1EEE9AC00](v46);
  v40 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v32 - v10;
  v11 = 0;
  v45 = a3;
  v14 = *(a3 + 64);
  v13 = a3 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v19 = (v9 + 48);
  v37 = (v9 + 32);
  v35 = 0;
  v36 = (v9 + 8);
  v41 = v6;
  v38 = (v9 + 48);
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v47 = (v17 - 1) & v17;
LABEL_12:
    v23 = v20 | (v11 << 6);
    v24 = *(v45 + 56);
    v25 = *(*(v45 + 48) + 8 * v23);
    v44 = v23;
    sub_1DEE17214(*(v24 + 8 * v23) + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v6, &qword_1ECDE4DC0, &qword_1DEF91640);
    if ((*v19)(v6, 1, v46) == 1)
    {
      sub_1DEE171B4(v6, &qword_1ECDE4DC0, &qword_1DEF91640);
      v17 = v47;
    }

    else
    {
      v26 = v39;
      v27 = v46;
      (*v37)(v39, v6, v46);
      v43 = v25;

      v28 = v40;
      sub_1DEF8D348();
      v42 = sub_1DEF8D308();
      v29 = *v36;
      (*v36)(v28, v27);
      v30 = v26;
      v19 = v38;
      v29(v30, v27);
      v6 = v41;

      v17 = v47;
      if (v42)
      {
        *(v34 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_17:
          sub_1DEEC64F8(v34, v33, v35, v45);
          return;
        }
      }
    }
  }

  v21 = v11;
  while (1)
  {
    v11 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_17;
    }

    v22 = *(v13 + 8 * v11);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v47 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_1DEF410F8(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_1DEF40D94(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_1DEF41170(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4290, &qword_1DEF95B60);
      v7 = *(type metadata accessor for PairingRelationship(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for PairingRelationship(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

char *sub_1DEF41368(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t (*)(uint64_t *, char *, uint64_t, uint64_t, __n128), uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1DEF8DE68();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_1DEE2774C(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

uint64_t sub_1DEF41454(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)())
{
  if (a3)
  {
    result = sub_1DEF8E068();
    if (result == *(a4 + 36))
    {
      sub_1DEF8E078();
      a5(0);
      swift_dynamicCast();
      a6();
      v10 = v9;

      if (v10)
      {
        sub_1DEF8E048();
        v11 = sub_1DEF8E098();
        swift_unknownObjectRelease();
        return v11;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  return sub_1DEF8DE38();
}

void *sub_1DEF4167C(void *result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(), uint64_t (*a8)(void))
{
  v11 = result;
  if ((a5 & 0xC000000000000001) == 0)
  {
    if (a4)
    {
      result = sub_1DEF8E068();
      if (result != *(a5 + 36))
      {
        __break(1u);
        goto LABEL_15;
      }

      sub_1DEF8E078();
      a6(0);
      swift_dynamicCast();
      a2 = a7();
      v16 = v15;

      if (v16)
      {
LABEL_12:
        v17 = *(a5 + 56);
        v13 = *(*(a5 + 48) + 8 * a2);
        *v11 = *(v17 + 8 * a2);

        return v13;
      }

      __break(1u);
    }

    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DEF8E0A8();
    a6(0);
    swift_dynamicCast();
    v13 = v18;
    a8(0);
    swift_dynamicCast();
    *v11 = v18;
    return v13;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for MetadataRecordPredicate(uint64_t a1)
{
  result = qword_1ECDE4F68;
  if (!qword_1ECDE4F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DEF41938(uint64_t a1)
{
  sub_1DEF419DC();
  if (v1 <= 0x3F)
  {
    sub_1DEF41A2C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PairingRelationship(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DEF419DC()
{
  if (!qword_1ECDE4F78)
  {
    v0 = sub_1DEF8DDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE4F78);
    }
  }
}

void sub_1DEF41A2C(uint64_t a1)
{
  if (!qword_1ECDE4F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE4F88, &qword_1DEF95DE8);
    v1 = sub_1DEF8DDC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECDE4F80);
    }
  }
}

uint64_t sub_1DEF41AB8(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v25[1] = a5;
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v15 = sub_1DEEAF350(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1DEEB9288();
      goto LABEL_7;
    }

    sub_1DEEB47CC(v18, a3 & 1);
    v23 = sub_1DEEAF350(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *a4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v10 + 16))(v12, a2, v9);
      return sub_1DEECEADC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *a4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF41C90(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1DEF38C28(&v6, v4);
      --v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

uint64_t sub_1DEF41CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v20 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v4, v9);
      sub_1DEF386D8(v11, v7);
      (*(v13 - 8))(v11, v4);
      v16 += v17;
      --v12;
    }

    while (v12);
    return v20;
  }

  return a2;
}

uint64_t sub_1DEF41E4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

ReplicatorEngine::MessagePriority_optional __swiftcall MessagePriority.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1DEF41EF0()
{
  result = qword_1ECDE4FD0;
  if (!qword_1ECDE4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4FD0);
  }

  return result;
}

unint64_t sub_1DEF42000()
{
  result = qword_1ECDE4FD8;
  if (!qword_1ECDE4FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE4FE0, &qword_1DEF95F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4FD8);
  }

  return result;
}

unint64_t sub_1DEF42074()
{
  result = qword_1ECDE4FE8;
  if (!qword_1ECDE4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4FE8);
  }

  return result;
}

uint64_t IDSDependencyDevice.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IDSDependencyDevice.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1DEF42158(uint64_t a1, int a2)
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

uint64_t sub_1DEF421A0(uint64_t result, int a2, int a3)
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

uint64_t sub_1DEF422C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_1DEF4231C()
{
  v1 = v0;
  v2 = sub_1DEF8DD08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = *(v0 + 96);
  if (v8)
  {
    v9 = *(v0 + 96);
  }

  else
  {
    v10 = sub_1DEE3C630();
    v15[1] = "v16@?0@NSNotification8";
    v15[2] = v10;
    sub_1DEF8D6C8();
    v15[3] = MEMORY[0x1E69E7CC0];
    v15[0] = sub_1DEE1BA40(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
    sub_1DEE1B590(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
    sub_1DEF8DE08();
    (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v2);
    v11 = sub_1DEF8DD38();
    v12 = *(v0 + 96);
    *(v1 + 96) = v11;
    v9 = v11;

    v8 = 0;
  }

  v13 = v8;
  return v9;
}

void sub_1DEF42598(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);
  v6 = *(v5 + 16);
  if (v6)
  {
    v27 = objc_opt_self();
    v7 = (v5 + 32);
    do
    {
      v8 = *v7++;
      v9 = v8;
      v10 = [v27 defaultCenter];
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = a1;
      v12[4] = a2;
      v32 = sub_1DEF465C4;
      v33 = v12;
      aBlock = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v30 = sub_1DEF43010;
      v31 = &block_descriptor_81_0;
      v13 = _Block_copy(&aBlock);
      v14 = v9;

      v15 = [v10 addObserverForName:v14 object:0 queue:0 usingBlock:v13];
      _Block_release(v13);
      swift_unknownObjectRelease();

      --v6;
    }

    while (v6);
  }

  sub_1DEF8D948();
  v16 = sub_1DEF4231C();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  v32 = sub_1DEF465D0;
  v33 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1DEF422C8;
  v31 = &block_descriptor_88;
  v19 = _Block_copy(&aBlock);

  v20 = sub_1DEF8D998();

  swift_beginAccess();
  notify_register_dispatch((v20 + 32), (v2 + 104), v16, v19);
  swift_endAccess();

  _Block_release(v19);

  sub_1DEF8D948();
  v21 = *(v2 + 96);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a1;
  v23[4] = a2;
  v32 = sub_1DEF465DC;
  v33 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1DEF422C8;
  v31 = &block_descriptor_95;
  v24 = _Block_copy(&aBlock);
  v25 = v21;

  v26 = sub_1DEF8D998();

  swift_beginAccess();
  notify_register_dispatch((v26 + 32), (v2 + 108), v25, v24);
  swift_endAccess();

  _Block_release(v24);
}

uint64_t sub_1DEF429BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1DEF8D698();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8D6D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = sub_1DEF8CFD8();
    v17 = sub_1DEF8D948();
    v26 = v11;
    v27 = v10;
    v18 = v17;
    v20 = v19;

    v25 = sub_1DEF4231C();
    v21 = swift_allocObject();
    v21[2] = v18;
    v21[3] = v20;
    v21[4] = a3;
    v21[5] = a4;
    v21[6] = v15;
    aBlock[4] = sub_1DEF465E8;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_117_0;
    v22 = _Block_copy(aBlock);

    sub_1DEF8D6B8();
    v28 = MEMORY[0x1E69E7CC0];
    sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEF8DE08();
    v23 = v25;
    MEMORY[0x1E12CB4D0](0, v13, v9, v22);
    _Block_release(v22);

    (*(v7 + 8))(v9, v6);
    (*(v26 + 8))(v13, v27);
  }

  return result;
}

uint64_t sub_1DEF42CE4(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, void *a5)
{
  v31 = a3;
  v9 = sub_1DEF8D788();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v13 = sub_1DEF8D508();
  __swift_project_value_buffer(v13, qword_1ECDF6028);

  v14 = sub_1DEF8D4D8();
  v15 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = a1;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30[1] = a4;
    v19 = v18;
    v32 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1DEE12A5C(v16, a2, &v32);
    _os_log_impl(&dword_1DEE0F000, v14, v15, "Paired watch state changed: %{public}s, will check for pairing change", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1E12CCD70](v19, -1, -1);
    MEMORY[0x1E12CCD70](v17, -1, -1);
  }

  v20 = v31();
  *v12 = sub_1DEF4231C();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v21 = sub_1DEF8D7B8();
  result = (*(v10 + 8))(v12, v9);
  if (v21)
  {
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = a5;
    v24 = a5[10];
    v25 = a5[11];
    __swift_project_boxed_opaque_existential_1(a5 + 7, v24);
    v26 = a5[12];
    v27 = swift_allocObject();
    v27[2] = a5;
    v27[3] = v20;
    v27[4] = sub_1DEF466B0;
    v27[5] = v23;
    v28 = *(v25 + 8);
    swift_retain_n();
    v29 = v26;

    v28(v29, sub_1DEF46670, v27, v24, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF43010(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DEF8CFE8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1DEF8CFC8();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void *sub_1DEF43104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v10 = sub_1DEF8D508();
    __swift_project_value_buffer(v10, qword_1ECDF6028);
    v11 = sub_1DEF8D4D8();
    v12 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DEE0F000, v11, v12, "Paired watch did become active, will check for pairing change", v13, 2u);
      MEMORY[0x1E12CCD70](v13, -1, -1);
    }

    v14 = a3();
    *v7 = sub_1DEF4231C();
    (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
    v15 = sub_1DEF8D7B8();
    result = (*(v5 + 8))(v7, v4);
    if (v15)
    {
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v9;
      v17 = v9[10];
      v18 = v9[11];
      __swift_project_boxed_opaque_existential_1(v9 + 7, v17);
      v19 = v9[12];
      v20 = swift_allocObject();
      v20[2] = v9;
      v20[3] = v14;
      v20[4] = sub_1DEF466B0;
      v20[5] = v16;
      v21 = *(v18 + 8);
      swift_retain_n();
      v22 = v19;

      v21(v22, sub_1DEF46670, v20, v17, v18);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_1DEF433EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v10 = sub_1DEF8D508();
    __swift_project_value_buffer(v10, qword_1ECDF6028);
    v11 = sub_1DEF8D4D8();
    v12 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DEE0F000, v11, v12, "Paired watch version changed, will check for pairing change", v13, 2u);
      MEMORY[0x1E12CCD70](v13, -1, -1);
    }

    v14 = a3();
    *v7 = sub_1DEF4231C();
    (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
    v15 = sub_1DEF8D7B8();
    result = (*(v5 + 8))(v7, v4);
    if (v15)
    {
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v9;
      v17 = v9[10];
      v18 = v9[11];
      __swift_project_boxed_opaque_existential_1(v9 + 7, v17);
      v19 = v9[12];
      v20 = swift_allocObject();
      v20[2] = v9;
      v20[3] = v14;
      v20[4] = sub_1DEF466B0;
      v20[5] = v16;
      v21 = *(v18 + 8);
      swift_retain_n();
      v22 = v19;

      v21(v22, sub_1DEF46670, v20, v17, v18);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DEF436D4()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      v7 = [v3 defaultCenter];
      [v7 removeObserver:v0 name:v6 object:0];

      --v2;
    }

    while (v2);
  }

  swift_beginAccess();
  notify_cancel(*(v0 + 104));
  swift_beginAccess();
  return notify_cancel(*(v0 + 108));
}

uint64_t sub_1DEF437B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DEF8D698();
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DEF8D6D8();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF4231C();
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_1DEF4659C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_66_0;
  v15 = _Block_copy(aBlock);

  sub_1DEE2CB00(a2, a3);
  sub_1DEF8D6B8();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v12, v9, v15);
  _Block_release(v15);

  (*(v19 + 8))(v9, v7);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_1DEF43A9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DEF8D788();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = sub_1DEF4231C();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v12 = sub_1DEF8D7B8();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v14 = swift_allocObject();
    v14[2] = a3;
    v14[3] = a4;
    v14[4] = a1;
    v15 = a4;
    v17 = a1[10];
    v16 = a1[11];
    v21[1] = __swift_project_boxed_opaque_existential_1(a1 + 7, v17);
    v18 = a1[12];
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = sub_1DEF465A8;
    v19[5] = v14;
    v21[0] = *(v16 + 8);
    swift_retain_n();
    sub_1DEE2CB00(a3, v15);
    v20 = v18;

    (v21[0])(v20, sub_1DEF465B8, v19, v17, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DEF43CB4(void *a1, char a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v10 = type metadata accessor for PairingRelationship(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v108 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v91 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v91 - v16;
  MEMORY[0x1EEE9AC00](v18);
  if (a2)
  {
    if (qword_1ECDE2E58 == -1)
    {
LABEL_3:
      v20 = sub_1DEF8D508();
      __swift_project_value_buffer(v20, qword_1ECDF6028);
      v21 = a1;
      v22 = sub_1DEF8D4D8();
      v23 = sub_1DEF8DCB8();
      sub_1DEEE43C8(a1, 1);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = a1;
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = v24;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_1DEE0F000, v22, v23, "failed to get active watch pairing relationship. will try again later: %@", v25, 0xCu);
        sub_1DEEE2A84(v26);
        MEMORY[0x1E12CCD70](v26, -1, -1);
        MEMORY[0x1E12CCD70](v25, -1, -1);
      }

      if (a3)
      {
        a3();
      }

      return;
    }

LABEL_32:
    swift_once();
    goto LABEL_3;
  }

  v104 = &v91 - v19;
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v29 = sub_1DEF8D508();
  v30 = __swift_project_value_buffer(v29, qword_1ECDF6028);

  v105 = v30;
  v31 = sub_1DEF8D4D8();
  v32 = sub_1DEF8DCB8();
  sub_1DEEE43C8(a1, 0);
  v33 = os_log_type_enabled(v31, v32);
  v106 = v10;
  v98 = a4;
  v99 = a3;
  v102 = v17;
  v103 = a5;
  if (v33)
  {
    v96 = v32;
    v97 = v31;
    v34 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v110[0] = v94;
    v95 = v34;
    *v34 = 136315138;
    v35 = a1[2];
    v36 = MEMORY[0x1E69E7CC0];
    if (v35)
    {
      v109 = MEMORY[0x1E69E7CC0];
      sub_1DEEC7F0C(0, v35, 0);
      v36 = v109;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4148, &qword_1DEF96190);
      v38 = *(v11 + 80);
      v92 = v11;
      v93 = a1;
      v39 = a1 + ((v38 + 32) & ~v38);
      v100 = *(v11 + 72);
      *&v101 = v37;
      v40 = v104;
      while (1)
      {
        sub_1DEEE42FC(v39, v40);
        v41 = (v40 + *(v10 + 20));
        a3 = v41[2];
        v42 = v41[3];
        v44 = *v41;
        v43 = v41[1];
        v45 = sub_1DEF8E148();

        v46 = sub_1DEE13224(a3, v42);
        a1 = v47;

        if (a1)
        {
          break;
        }

        v45[(v46 >> 6) + 8] |= 1 << v46;
        v48 = (v45[6] + 16 * v46);
        *v48 = a3;
        v48[1] = v42;
        v49 = (v45[7] + 16 * v46);
        *v49 = v44;
        v49[1] = v43;
        v50 = v45[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_31;
        }

        v45[2] = v52;
        v40 = v104;
        sub_1DEEE4360(v104);
        v109 = v36;
        v54 = *(v36 + 16);
        v53 = *(v36 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_1DEEC7F0C((v53 > 1), v54 + 1, 1);
          v40 = v104;
          v36 = v109;
        }

        *(v36 + 16) = v54 + 1;
        *(v36 + 8 * v54 + 32) = v45;
        v39 += v100;
        --v35;
        v10 = v106;
        if (!v35)
        {
          v17 = v102;
          a5 = v103;
          v11 = v92;
          a1 = v93;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_18:
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42B8, &qword_1DEF91E20);
    v56 = MEMORY[0x1E12CB290](v36, v55);
    v58 = v57;

    v59 = sub_1DEE12A5C(v56, v58, v110);

    v60 = v95;
    *(v95 + 1) = v59;
    v31 = v97;
    _os_log_impl(&dword_1DEE0F000, v97, v96, "nonActiveWatchPairingRelationships:%s", v60, 0xCu);
    v61 = v94;
    __swift_destroy_boxed_opaque_existential_1(v94);
    MEMORY[0x1E12CCD70](v61, -1, -1);
    MEMORY[0x1E12CCD70](v60, -1, -1);
  }

  v64 = a1[2];
  if (!v64)
  {
    v90 = v99;
    if (!v99)
    {
      return;
    }

    goto LABEL_28;
  }

  v65 = v11;
  v66 = a5;
  v67 = v10;
  v68 = a1 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
  v104 = *(v65 + 72);
  *&v63 = 136315394;
  v101 = v63;
  do
  {
    sub_1DEEE42FC(v68, v17);
    v73 = v107;
    sub_1DEEE42FC(v17, v107);
    v74 = v108;
    sub_1DEEE42FC(v17, v108);
    v75 = sub_1DEF8D4D8();
    v76 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v110[0] = v78;
      *v77 = v101;
      v79 = v107 + *(v67 + 20);
      v80 = *(v79 + 16);
      v81 = *(v79 + 24);

      sub_1DEEE4360(v107);
      v82 = sub_1DEE12A5C(v80, v81, v110);

      *(v77 + 4) = v82;
      *(v77 + 12) = 2080;
      v83 = (v108 + *(v106 + 20));
      v84 = *v83;
      v85 = v83[1];

      sub_1DEEE4360(v108);
      v86 = sub_1DEE12A5C(v84, v85, v110);
      v70 = v103;
      v69 = v106;

      *(v77 + 14) = v86;
      _os_log_impl(&dword_1DEE0F000, v75, v76, "Deactivating non-active watch relationship %s %s", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v78, -1, -1);
      v87 = v77;
      v17 = v102;
      MEMORY[0x1E12CCD70](v87, -1, -1);
    }

    else
    {

      sub_1DEEE4360(v74);
      sub_1DEEE4360(v73);
      v69 = v67;
      v70 = v66;
    }

    v71 = v70[5];
    v72 = v70[6];
    v66 = v70;
    __swift_project_boxed_opaque_existential_1(v70 + 2, v71);
    v67 = v69;
    (*(v72 + 40))(*&v17[*(v69 + 20)], *&v17[*(v69 + 20) + 8], v71, v72);
    sub_1DEEE4360(v17);
    v68 += v104;
    --v64;
  }

  while (v64);
  v88 = v66[5];
  v89 = v66[6];
  __swift_project_boxed_opaque_existential_1(v66 + 2, v88);
  v62 = (*(v89 + 48))(v88, v89);
  v90 = v99;
  if (v99)
  {
LABEL_28:
    (v90)(v62);
  }
}

void sub_1DEF44494(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v46 = a5;
  v47 = a4;
  v45 = a3;
  v6 = type metadata accessor for PairingRelationship(0);
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = sub_1DEF8D788();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(a1 + 8);
  v49 = *a1;
  v22 = *(a1 + 16);
  *v20 = sub_1DEF4231C();
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8020], v17);
  v23 = sub_1DEF8D7B8();
  (*(v18 + 8))(v20, v17);
  if (v23)
  {
    if (v22)
    {
      sub_1DEEAA8E8();
      v24 = swift_allocError();
      *v25 = v49;
      v47(v24, 1);

      return;
    }

    v26 = v49;
    if (v21)
    {
      v27 = *(v45 + 16);
      if (v27)
      {
        v28 = *(v44 + 72);
        v44 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v29 = v45 + v44;
        v30 = MEMORY[0x1E69E7CC0];
        v48 = v8;
        do
        {
          sub_1DEEE42FC(v29, v11);
          v31 = &v11[*(v6 + 20)];
          if (v31[48] != 4 || (v26 == *v31 ? (v32 = v21 == *(v31 + 1)) : (v32 = 0), v32 || (sub_1DEF8E4E8() & 1) != 0))
          {
            sub_1DEEE4360(v11);
          }

          else
          {
            sub_1DEF0A360(v11, v8);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v50 = v30;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1DEEC7DA4(0, v30[2] + 1, 1);
              v26 = v49;
              v30 = v50;
            }

            v35 = v30[2];
            v34 = v30[3];
            if (v35 >= v34 >> 1)
            {
              sub_1DEEC7DA4((v34 > 1), v35 + 1, 1);
              v26 = v49;
              v30 = v50;
            }

            v30[2] = v35 + 1;
            v8 = v48;
            sub_1DEF0A360(v48, v30 + v44 + v35 * v28);
          }

          v29 += v28;
          --v27;
        }

        while (v27);
        goto LABEL_31;
      }
    }

    else
    {
      v36 = *(v45 + 16);
      if (v36)
      {
        v37 = *(v44 + 72);
        v49 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v38 = v45 + v49;
        v30 = MEMORY[0x1E69E7CC0];
        v39 = v48;
        do
        {
          sub_1DEEE42FC(v38, v16);
          if (v16[*(v6 + 20) + 48] == 4)
          {
            sub_1DEF0A360(v16, v39);
            v40 = swift_isUniquelyReferenced_nonNull_native();
            v50 = v30;
            if ((v40 & 1) == 0)
            {
              sub_1DEEC7DA4(0, v30[2] + 1, 1);
              v39 = v48;
              v30 = v50;
            }

            v42 = v30[2];
            v41 = v30[3];
            if (v42 >= v41 >> 1)
            {
              sub_1DEEC7DA4((v41 > 1), v42 + 1, 1);
              v39 = v48;
              v30 = v50;
            }

            v30[2] = v42 + 1;
            sub_1DEF0A360(v39, v30 + v49 + v42 * v37);
          }

          else
          {
            sub_1DEEE4360(v16);
          }

          v38 += v37;
          --v36;
        }

        while (v36);
        goto LABEL_31;
      }
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_31:
    v47(v30, 0);

    return;
  }

  __break(1u);
}

uint64_t sub_1DEF44924()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1DEF44998@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_1DEF46258(v12, a2, v3, v7, v8);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a3 = v14;
  return result;
}

id sub_1DEF44B04()
{
  v1 = v0;
  v2 = sub_1DEF8DD08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = *(v0 + 16);
  if (v8)
  {
    v9 = *(v0 + 16);
  }

  else
  {
    v10 = sub_1DEE3C630();
    v15[1] = "e.alloy.replicator";
    v15[2] = v10;
    sub_1DEF8D6C8();
    v15[3] = MEMORY[0x1E69E7CC0];
    v15[0] = sub_1DEE1BA40(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
    sub_1DEE1B590(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
    sub_1DEF8DE08();
    (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v2);
    v11 = sub_1DEF8DD38();
    v12 = *(v0 + 16);
    *(v1 + 16) = v11;
    v9 = v11;

    v8 = 0;
  }

  v13 = v8;
  return v9;
}

uint64_t sub_1DEF44D80(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DEF8D698();
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DEF8D6D8();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF44B04();
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_1DEF46570;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_60_0;
  v15 = _Block_copy(aBlock);

  v16 = a1;

  sub_1DEF8D6B8();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v12, v9, v15);
  _Block_release(v15);

  (*(v20 + 8))(v9, v7);
  (*(v10 + 8))(v12, v19);
}

uint64_t sub_1DEF4505C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v5 = sub_1DEF8D698();
  v76 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1DEF8D6D8();
  v8 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DEF8D788();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = sub_1DEF44B04();
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v15 = sub_1DEF8D7B8();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v16 = [objc_opt_self() sharedInstance];
  if (!v16)
  {
    if (qword_1ECDE2E58 == -1)
    {
LABEL_10:
      v35 = sub_1DEF8D508();
      __swift_project_value_buffer(v35, qword_1ECDF6028);
      v36 = sub_1DEF8D4D8();
      v37 = sub_1DEF8DC98();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1DEE0F000, v36, v37, "No NanoRegistry singleton", v38, 2u);
        MEMORY[0x1E12CCD70](v38, -1, -1);
      }

      v39 = swift_allocObject();
      *(v39 + 16) = a2;
      *(v39 + 24) = a3;
      v83 = sub_1DEF4667C;
      v84 = v39;
      aBlock = MEMORY[0x1E69E9820];
      v80 = 1107296256;
      v81 = sub_1DEE3F0C0;
      v82 = &block_descriptor_16;
      v40 = _Block_copy(&aBlock);

      sub_1DEF8D6B8();
      v78 = MEMORY[0x1E69E7CC0];
      sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEF8DE08();
      MEMORY[0x1E12CB4D0](0, v10, v7, v40);
      goto LABEL_18;
    }

LABEL_45:
    swift_once();
    goto LABEL_10;
  }

  v17 = v16;
  v18 = [v16 getActivePairedDeviceExcludingAltAccount];
  if (v18)
  {
    v19 = v18;
    v74 = v8;
    v20 = objc_allocWithZone(MEMORY[0x1E69A48A8]);
    v21 = sub_1DEF8D918();
    v22 = [v20 initWithService_];

    if (v22)
    {
      v23 = [v22 devices];
      if (v23)
      {
        v24 = v23;
        v25 = v19;
        v26 = [v17 deviceForNRDevice:v25 fromIDSDevices:v24];
        v73 = v25;

        if (v26)
        {
          v27 = [v26 uniqueIDOverride];
          v72 = v26;
          if (v27)
          {
            v28 = v27;
            v29 = sub_1DEF8D948();
            v31 = v30;

            v32 = swift_allocObject();
            v32[2] = a2;
            v32[3] = a3;
            v32[4] = v29;
            v32[5] = v31;
            v83 = sub_1DEF46554;
            v84 = v32;
            aBlock = MEMORY[0x1E69E9820];
            v80 = 1107296256;
            v81 = sub_1DEE3F0C0;
            v82 = &block_descriptor_54_0;
            v33 = _Block_copy(&aBlock);

            sub_1DEF8D6B8();
            v78 = MEMORY[0x1E69E7CC0];
            sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
            sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
            sub_1DEF8DE08();
            MEMORY[0x1E12CB4D0](0, v10, v7, v33);
            _Block_release(v33);

            v34 = v72;
LABEL_41:

            goto LABEL_42;
          }

          if (qword_1ECDE2E58 != -1)
          {
            swift_once();
          }

          v64 = sub_1DEF8D508();
          __swift_project_value_buffer(v64, qword_1ECDF6028);
          v65 = sub_1DEF8D4D8();
          v66 = sub_1DEF8DC98();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            _os_log_impl(&dword_1DEE0F000, v65, v66, "Could not fetch IDS ID from activePairedDevice", v67, 2u);
            MEMORY[0x1E12CCD70](v67, -1, -1);
          }

          v68 = swift_allocObject();
          *(v68 + 16) = a2;
          *(v68 + 24) = a3;
          v83 = sub_1DEF46678;
          v84 = v68;
          aBlock = MEMORY[0x1E69E9820];
          v80 = 1107296256;
          v81 = sub_1DEE3F0C0;
          v82 = &block_descriptor_48_0;
          v69 = _Block_copy(&aBlock);

          sub_1DEF8D6B8();
          v78 = MEMORY[0x1E69E7CC0];
          sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
          sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
          sub_1DEF8DE08();
          MEMORY[0x1E12CB4D0](0, v10, v7, v69);

          v63 = v69;
        }

        else
        {
          if (qword_1ECDE2E58 != -1)
          {
            swift_once();
          }

          v57 = sub_1DEF8D508();
          __swift_project_value_buffer(v57, qword_1ECDF6028);
          v58 = sub_1DEF8D4D8();
          v59 = sub_1DEF8DC98();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            _os_log_impl(&dword_1DEE0F000, v58, v59, "Could not fetch device from activePairedDevice", v60, 2u);
            MEMORY[0x1E12CCD70](v60, -1, -1);
          }

          v61 = swift_allocObject();
          *(v61 + 16) = a2;
          *(v61 + 24) = a3;
          v83 = sub_1DEF46508;
          v84 = v61;
          aBlock = MEMORY[0x1E69E9820];
          v80 = 1107296256;
          v81 = sub_1DEE3F0C0;
          v82 = &block_descriptor_42;
          v62 = _Block_copy(&aBlock);

          sub_1DEF8D6B8();
          v78 = MEMORY[0x1E69E7CC0];
          sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
          sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
          sub_1DEF8DE08();
          MEMORY[0x1E12CB4D0](0, v10, v7, v62);

          v63 = v62;
        }

        _Block_release(v63);
        v34 = v73;
        goto LABEL_41;
      }

      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v73 = v22;
      v52 = sub_1DEF8D508();
      __swift_project_value_buffer(v52, qword_1ECDF6028);
      v53 = sub_1DEF8D4D8();
      v54 = sub_1DEF8DC98();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_1DEE0F000, v53, v54, "IDSService has no devices", v55, 2u);
        MEMORY[0x1E12CCD70](v55, -1, -1);
      }

      v56 = swift_allocObject();
      *(v56 + 16) = a2;
      *(v56 + 24) = a3;
      v83 = sub_1DEF46674;
      v84 = v56;
      aBlock = MEMORY[0x1E69E9820];
      v80 = 1107296256;
      v81 = sub_1DEE3F0C0;
      v82 = &block_descriptor_36_0;
      v51 = _Block_copy(&aBlock);

      sub_1DEF8D6B8();
      v78 = MEMORY[0x1E69E7CC0];
      sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEF8DE08();
      MEMORY[0x1E12CB4D0](0, v10, v7, v51);
    }

    else
    {
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v46 = sub_1DEF8D508();
      __swift_project_value_buffer(v46, qword_1ECDF6028);
      v47 = sub_1DEF8D4D8();
      v48 = sub_1DEF8DC98();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1DEE0F000, v47, v48, "Could not create IDSService", v49, 2u);
        MEMORY[0x1E12CCD70](v49, -1, -1);
      }

      v50 = swift_allocObject();
      *(v50 + 16) = a2;
      *(v50 + 24) = a3;
      v83 = sub_1DEF464FC;
      v84 = v50;
      aBlock = MEMORY[0x1E69E9820];
      v80 = 1107296256;
      v81 = sub_1DEE3F0C0;
      v82 = &block_descriptor_30;
      v51 = _Block_copy(&aBlock);

      sub_1DEF8D6B8();
      v78 = MEMORY[0x1E69E7CC0];
      sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEF8DE08();
      MEMORY[0x1E12CB4D0](0, v10, v7, v51);
    }

    _Block_release(v51);

LABEL_42:
    (*(v76 + 8))(v7, v5);
    (*(v74 + 8))(v10, v77);
  }

  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v41 = sub_1DEF8D508();
  __swift_project_value_buffer(v41, qword_1ECDF6028);
  v42 = sub_1DEF8D4D8();
  v43 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1DEE0F000, v42, v43, "No paired device from activePairedDevice", v44, 2u);
    MEMORY[0x1E12CCD70](v44, -1, -1);
  }

  v45 = swift_allocObject();
  *(v45 + 16) = a2;
  *(v45 + 24) = a3;
  v83 = sub_1DEF464C0;
  v84 = v45;
  aBlock = MEMORY[0x1E69E9820];
  v80 = 1107296256;
  v81 = sub_1DEE3F0C0;
  v82 = &block_descriptor_24_1;
  v40 = _Block_copy(&aBlock);

  sub_1DEF8D6B8();
  v78 = MEMORY[0x1E69E7CC0];
  sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v10, v7, v40);

LABEL_18:
  _Block_release(v40);
  (*(v76 + 8))(v7, v5);
  (*(v8 + 8))(v10, v77);
}

uint64_t sub_1DEF46178(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v10 = a4;
  v11 = 0;

  a1(&v9);
  v5 = v9;
  v6 = v10;
  v7 = v11;

  return sub_1DEF46560(v5, v6, v7);
}

uint64_t sub_1DEF461D8()
{

  return swift_deallocClassInstance();
}

void *sub_1DEF46258(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v8 + 32))(&v18 - v13, v12);
  type metadata accessor for ActiveWatchPairingEnforcer();
  v15 = swift_allocObject();
  (*(v8 + 16))(v10, v14, a4);
  v16 = sub_1DEF463B4(v10, a2, v15, a4, a5);
  (*(v8 + 8))(v14, a4);
  return v16;
}

void *sub_1DEF463B4(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3[5] = a4;
  a3[6] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 2);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  a3[12] = 0;
  a3[13] = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E00, &unk_1DEF91720);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DEF91030;
  v11 = *MEMORY[0x1E69B3678];
  v12 = *MEMORY[0x1E69B3688];
  *(v10 + 32) = *MEMORY[0x1E69B3678];
  *(v10 + 40) = v12;
  v13 = *MEMORY[0x1E69B3660];
  v14 = *MEMORY[0x1E69B3668];
  *(v10 + 48) = *MEMORY[0x1E69B3660];
  *(v10 + 56) = v14;
  a3[14] = v10;
  sub_1DEEACF0C(a2, (a3 + 7));
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  return a3;
}

uint64_t sub_1DEF464C0()
{
  v1 = *(v0 + 16);
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  return v1(v3);
}

uint64_t sub_1DEF46514(__n128 a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  v5 = 1;
  return v2(&v4);
}

uint64_t sub_1DEF46560(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroy_68Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t SyncServiceConfiguration.init(networkServiceNames:idsServiceNames:deviceType:pairingRelationshipPublisher:temporaryFileURL:allowListStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a3;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v11;
  v12 = type metadata accessor for SyncServiceConfiguration(0);
  *(a7 + v12[8]) = a4;
  v13 = v12[7];
  v14 = sub_1DEF8D1E8();
  (*(*(v14 - 8) + 32))(a7 + v13, a5, v14);
  v15 = a7 + v12[9];

  return sub_1DEE2F1AC(a6, v15);
}

uint64_t type metadata accessor for SyncServiceConfiguration(uint64_t a1)
{
  result = qword_1ECDE2F80;
  if (!qword_1ECDE2F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *static SyncServiceFactory.makeSyncService(configuration:)(uint64_t a1)
{
  v16 = a1;
  v15 = sub_1DEF8DD08();
  v1 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v14[1] = sub_1DEE3C630();
  sub_1DEF8D6C8();
  v20[0] = MEMORY[0x1E69E7CC0];
  sub_1DEE2BC18(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v15);
  v6 = sub_1DEF8DD38();
  v7 = v16;
  v18 = v16;
  v19 = v6;
  v8 = sub_1DEF352F8(MEMORY[0x1E69E7CC8], sub_1DEF46D28, v17, &unk_1F5A19580);
  v9 = v7;
  v10 = sub_1DEF48378(v7, v6);
  v11 = type metadata accessor for SyncServiceConfiguration(0);
  sub_1DEE29594(&v9[*(v11 + 36)], v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5000, &qword_1DEF96198);
  swift_allocObject();
  v12 = sub_1DEF48C0C(v8, v10, v20);

  return v12;
}

void sub_1DEF46AD0(uint64_t *a1, unsigned __int8 *a2, char *a3, void *a4)
{
  v8 = sub_1DEF8D1E8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 1);
  if (!*(v12 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  LODWORD(a2) = *a2;
  v13 = sub_1DEEAF814(a2);
  if ((v14 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v31 = a1;
  v15 = (*(v12 + 56) + 16 * v13);
  v16 = *v15;
  v17 = v15[1];
  v18 = objc_allocWithZone(type metadata accessor for ConcreteIDSDependency());

  sub_1DEF308EC(v16, v17, a4);
  v12 = *a3;
  if (!*(*a3 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v20 = v19;
  v21 = sub_1DEEAF814(a2);
  if ((v22 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = (*(v12 + 56) + 16 * v21);
  v12 = *v23;
  a4 = v23[1];
  v24 = type metadata accessor for SyncServiceConfiguration(0);
  (*(v9 + 16))(v11, &a3[*(v24 + 28)], v8);
  v25 = qword_1ECDE2EF0;

  a3 = v20;
  if (v25 != -1)
  {
LABEL_11:
    swift_once();
  }

  v26 = qword_1ECDF6040;
  type metadata accessor for NetworkMessenger(0);
  v27 = swift_allocObject();

  v28 = sub_1DEF47D44(v12, a4, v11, a3, a2, v26, v27);

  v29 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v29;
  sub_1DEF3FC90(v28, a2, isUniquelyReferenced_nonNull_native);

  *v29 = v32;
}

uint64_t sub_1DEF46D44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DEF46DA4(a1);
  }

  return result;
}

void sub_1DEF46DA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DEF8D698();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1DEF8D6D8();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E30, &qword_1DEF96220);
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v29 = &v28 - v8;
  swift_beginAccess();
  v9 = v1[5];
  v10 = v1[9];
  v11 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v10);
  v12 = *(type metadata accessor for Message(0) + 28);
  v30 = a1;
  v13 = (a1 + v12);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v11 + 8);

  if (v16(v14, v15, v10, v11))
  {

    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v17 = sub_1DEF8D508();
    __swift_project_value_buffer(v17, qword_1ECDF6010);
    v18 = sub_1DEF8D4D8();
    v19 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DEE0F000, v18, v19, "Cannot receive messages from remote device ID not in allow list", v20, 2u);
      MEMORY[0x1E12CCD70](v20, -1, -1);
    }
  }

  else
  {
    v21 = v29;
    sub_1DEE17214(v30, v29, &qword_1ECDE4E30, &qword_1DEF96220);
    v22 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v9;
    *(v23 + 24) = v2;
    sub_1DEF49744(v21, v23 + v22);
    aBlock[4] = sub_1DEF497B4;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_31_0;
    v24 = _Block_copy(aBlock);

    v25 = v31;
    sub_1DEF8D6B8();
    v37 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BC18(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
    v26 = v33;
    v27 = v36;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v25, v26, v24);
    _Block_release(v24);
    (*(v35 + 8))(v26, v27);
    (*(v32 + 8))(v25, v34);
  }
}

uint64_t sub_1DEF4727C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v4 = sub_1DEF8D508();
    __swift_project_value_buffer(v4, qword_1ECDF6010);
    swift_retain_n();
    v5 = sub_1DEF8D4D8();
    v6 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v7 = 136446466;
      v8 = OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency;
      sub_1DEE29594(a2 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency, v36);
      v9 = v37;
      v10 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      v11 = (*(v10 + 24))(v9, v10);
      if (v12)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0x6F2D64656E676973;
      }

      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0xEA00000000007475;
      }

      __swift_destroy_boxed_opaque_existential_1(v36);
      v15 = sub_1DEE12A5C(v13, v14, &v39);

      *(v7 + 4) = v15;
      *(v7 + 12) = 2082;
      sub_1DEE29594(a2 + v8, v36);
      v16 = v37;
      v17 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      v18 = (*(v17 + 32))(v16, v17);
      v19 = *(v18 + 16);
      if (v19)
      {
        v31 = v6;
        v32 = v7;
        v33 = v5;
        v35 = MEMORY[0x1E69E7CC0];
        sub_1DEEC7E08(0, v19, 0);
        v20 = v35;
        v21 = (v18 + 40);
        do
        {
          v22 = *(v21 - 1);
          v23 = *v21;
          v25 = *(v35 + 16);
          v24 = *(v35 + 24);

          if (v25 >= v24 >> 1)
          {
            sub_1DEEC7E08((v24 > 1), v25 + 1, 1);
          }

          *(v35 + 16) = v25 + 1;
          v26 = v35 + 16 * v25;
          *(v26 + 32) = v22;
          *(v26 + 40) = v23;
          v21 += 2;
          --v19;
        }

        while (v19);

        v5 = v33;
        v7 = v32;
        v6 = v31;
      }

      else
      {

        v20 = MEMORY[0x1E69E7CC0];
      }

      __swift_destroy_boxed_opaque_existential_1(v36);

      v27 = MEMORY[0x1E12CB290](v20, MEMORY[0x1E69E6158]);
      v29 = v28;

      v30 = sub_1DEE12A5C(v27, v29, &v39);

      *(v7 + 14) = v30;
      _os_log_impl(&dword_1DEE0F000, v5, v6, "[%{public}s] Account associated devices changed: %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v34, -1, -1);
      MEMORY[0x1E12CCD70](v7, -1, -1);
    }

    else
    {
    }

    sub_1DEF47610(a2);
  }

  return result;
}

void sub_1DEF47610(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DEF8D698();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8D6D8();
  v49 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D788();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v2[2];
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  v16 = sub_1DEF8D7B8();
  (*(v10 + 8))(v13, v9);
  if (v16)
  {
    v46 = v7;
    v47 = v5;
    sub_1DEE29594(a1 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency, aBlock);
    v17 = v53;
    v18 = v54;
    __swift_project_boxed_opaque_existential_1(aBlock, v53);
    v19 = (*(v18 + 4))(v17, v18);
    v20 = *(v19 + 16);
    if (v20)
    {
      v45 = v4;
      v56[0] = MEMORY[0x1E69E7CC0];
      sub_1DEEC7E08(0, v20, 0);
      v21 = v56[0];
      v22 = (v19 + 40);
      do
      {
        v23 = *(v22 - 1);
        v24 = *v22;
        v56[0] = v21;
        v26 = *(v21 + 16);
        v25 = *(v21 + 24);

        if (v26 >= v25 >> 1)
        {
          sub_1DEEC7E08((v25 > 1), v26 + 1, 1);
          v21 = v56[0];
        }

        *(v21 + 16) = v26 + 1;
        v27 = v21 + 16 * v26;
        *(v27 + 32) = v23;
        *(v27 + 40) = v24;
        v22 += 2;
        --v20;
      }

      while (v20);

      v4 = v45;
    }

    else
    {

      v21 = MEMORY[0x1E69E7CC0];
    }

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v28 = sub_1DEEA3AD8(v21);

    v29 = v2[11];
    v32 = *(v29 + 64);
    v31 = v29 + 64;
    v30 = v32;
    v33 = 1 << *(v2[11] + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & v30;
    v36 = (v33 + 63) >> 6;

    v37 = 0;
    if (v35)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v36)
      {

        swift_beginAccess();
        v40 = v2[5];
        v41 = swift_allocObject();
        v41[2] = v40;
        v41[3] = v2;
        v41[4] = v28;
        v54 = sub_1DEF496E0;
        v55 = v41;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1DEE3F0C0;
        v53 = &block_descriptor_17;
        v42 = _Block_copy(aBlock);

        v43 = v48;
        sub_1DEF8D6B8();
        v51 = MEMORY[0x1E69E7CC0];
        sub_1DEE2BC18(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
        sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
        v44 = v50;
        sub_1DEF8DE08();
        MEMORY[0x1E12CB4D0](0, v43, v44, v42);
        _Block_release(v42);
        (*(v47 + 8))(v44, v4);
        (*(v49 + 8))(v43, v46);

        return;
      }

      v35 = *(v31 + 8 * v38);
      ++v37;
      if (v35)
      {
        v37 = v38;
        do
        {
LABEL_17:
          v35 &= v35 - 1;

          sub_1DEF49268(v39, v28);
        }

        while (v35);
        continue;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DEF47BC8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 40);
    do
    {
      v8 = *v5;
      v9 = *(a3 + 16);
      if (v9)
      {
        v15 = *v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE42A0, &unk_1DEF95E40);
        v6 = swift_allocObject();
        v10 = _swift_stdlib_malloc_size(v6);
        v11 = v10 - 32;
        if (v10 < 32)
        {
          v11 = v10 - 17;
        }

        v6[2] = v9;
        v6[3] = 2 * (v11 >> 4);
        v12 = sub_1DEF2DE0C(&v17, v6 + 4, v9, a3);
        v13 = v17;
        v16 = v12;
        swift_unknownObjectRetain();

        result = sub_1DEEACDB8(v13);
        if (v16 != v9)
        {
          __break(1u);
          return result;
        }

        v8 = v15;
      }

      else
      {
        swift_unknownObjectRetain();
        v6 = MEMORY[0x1E69E7CC0];
      }

      ObjectType = swift_getObjectType();
      (*(v8 + 32))(a2, &off_1F5A21098, v6, ObjectType, v8);
      swift_unknownObjectRelease();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DEF47D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v38 = a5;
  v35 = a3;
  v36 = a1;
  v37 = a2;
  v34 = sub_1DEF8DD08();
  v39 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v42[3] = type metadata accessor for NearbyCompanionSubscriber();
  v42[4] = &off_1F5A21658;
  v42[0] = a6;
  v41[3] = type metadata accessor for ConcreteIDSDependency();
  v41[4] = &off_1F5A20038;
  v41[0] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E88, &qword_1DEF95B50);
  swift_allocObject();
  *(a7 + 16) = sub_1DEF8D598();
  v33 = sub_1DEE3C630();
  v32 = "rkSyncService.callout";
  sub_1DEF8D6C8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v31[2] = sub_1DEE2BC18(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  v14 = *MEMORY[0x1E69E8098];
  v15 = *(v39 + 104);
  v39 += 104;
  v31[0] = v11;
  v16 = v11;
  v17 = v34;
  v15(v16, v14, v34);
  *(a7 + 24) = sub_1DEF8DD38();
  v32 = "rkMessenger.internal";
  sub_1DEF8D6C8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v18 = v35;
  sub_1DEF8DE08();
  v15(v31[0], v14, v17);
  *(a7 + 32) = sub_1DEF8DD38();
  *(a7 + 40) = 0;
  v19 = MEMORY[0x1E69E7CC8];
  *(a7 + 48) = 0;
  *(a7 + 56) = v19;
  *(a7 + 64) = v19;
  *(a7 + 72) = v19;
  type metadata accessor for BasicTimer();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v20 + 24) = v21;
  *(a7 + 80) = v20;
  *(a7 + 88) = -1;
  *(a7 + 96) = 0;
  *(a7 + 104) = 0;
  v22 = OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_terminusRemoteDeviceIDLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECDE5060, &qword_1DEF96228);
  v23 = swift_allocObject();
  *(v23 + 32) = 0;
  *(v23 + 16) = 0xD000000000000023;
  *(v23 + 24) = 0x80000001DEF9DD90;
  *(a7 + v22) = v23;
  *(a7 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_subscriptions) = MEMORY[0x1E69E7CD0];
  v24 = v37;
  *(a7 + 120) = v36;
  *(a7 + 128) = v24;
  v25 = OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_temporaryFileURL;
  v26 = sub_1DEF8D1E8();
  v27 = *(v26 - 8);
  (*(v27 + 16))(a7 + v25, v18, v26);
  sub_1DEE29594(v41, a7 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency);
  LOBYTE(v15) = v38;
  *(a7 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType) = v38 & 1;
  type metadata accessor for ConnectionDurationMonitor();
  swift_allocObject();
  *(a7 + 112) = sub_1DEEE48B8();
  sub_1DEE29594(v42, a7 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber);
  v28 = *(a7 + 24);
  aBlock[4] = sub_1DEF49824;
  aBlock[5] = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE11B94;
  aBlock[3] = &block_descriptor_35;
  v29 = _Block_copy(aBlock);

  xpc_set_event_stream_handler("com.apple.rapport.matching", v28, v29);
  _Block_release(v29);
  if (v15)
  {
    sub_1DEF1458C(*(a7 + 24));
  }

  (*(v27 + 8))(v18, v26);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return a7;
}

uint64_t sub_1DEF48378(_BYTE *a1, void *a2)
{
  result = sub_1DEF7BF38(0, &unk_1F5A19558);
  if ((result & 1) == 0)
  {
    return 0;
  }

  v5 = *a1;
  if (*(*a1 + 16))
  {
    result = sub_1DEEAF814(0);
    if (v6)
    {
      v7 = (*(v5 + 56) + 16 * result);
      v8 = *v7;
      v9 = v7[1];
      v12 = a1[16];
      type metadata accessor for NetworkBrowser();
      swift_allocObject();
      v10 = sub_1DEEBCC7C(v8, v9, a2, &v12);

      v11 = a2;
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEF48440(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5018, &qword_1DEF961F0);
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE5020, &qword_1DEF961F8);
  v8 = *(v7 - 8);
  v50 = v7;
  v51 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5030, &qword_1DEF96200);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - v15;
  v60 = a1;
  v17 = off_1EED168F8[0];
  type metadata accessor for NetworkMessenger(0);
  v57[0] = v17();
  v53[0] = *(a2 + 16);
  v18 = v53[0];
  v43 = sub_1DEF8DCF8();
  v19 = *(v43 - 8);
  v44 = *(v19 + 56);
  v45 = v19 + 56;
  v44(v12, 1, 1, v43);
  v42 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE5038, &qword_1DEF96208);
  v40 = sub_1DEE3C630();
  v37 = MEMORY[0x1E695BED8];
  sub_1DEE1B548(&qword_1ECDE2DB0, &unk_1ECDE5038, &qword_1DEF96208, MEMORY[0x1E695BED8]);
  v39 = sub_1DEE2BC18(&qword_1ECDE2C08, sub_1DEE3C630, MEMORY[0x1E69E8028]);
  sub_1DEF8D5D8();
  sub_1DEE171B4(v12, &qword_1ECDE3A60, &unk_1DEF90810);

  swift_allocObject();
  swift_weakInit();
  v20 = MEMORY[0x1E695BE98];
  sub_1DEE1B548(&qword_1ECDE2E10, &qword_1ECDE5030, &qword_1DEF96200, MEMORY[0x1E695BE98]);
  sub_1DEF8D5E8();

  (*(v14 + 8))(v16, v13);
  swift_beginAccess();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE5048, &qword_1DEF96210);
  sub_1DEE1B548(&qword_1ECDE2C60, &unk_1ECDE5048, &qword_1DEF96210, MEMORY[0x1E69E6348]);
  sub_1DEF8D578();
  swift_endAccess();

  v21 = OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency;
  v22 = v38;
  sub_1DEE29594(v38 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency, v57);
  v23 = v58;
  v24 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v56 = (*(v24 + 8))(v23, v24);
  sub_1DEE29594(v22 + v21, v53);
  v25 = v54;
  v26 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v52 = (*(v26 + 16))(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5058, &qword_1DEF96218);
  sub_1DEE1B548(&qword_1ECDE2D60, &qword_1ECDE5058, &qword_1DEF96218, v37);
  v27 = v46;
  sub_1DEF8D5C8();

  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v28 = v42;
  v57[0] = v42;
  v44(v12, 1, 1, v43);
  sub_1DEE1B548(&qword_1ECDE2E28, &qword_1ECDE5018, &qword_1DEF961F0, MEMORY[0x1E695BE80]);
  v30 = v47;
  v29 = v48;
  sub_1DEF8D5D8();
  sub_1DEE171B4(v12, &qword_1ECDE3A60, &unk_1DEF90810);

  (*(v49 + 8))(v27, v29);
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v22;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1DEF49260;
  *(v33 + 24) = v32;
  sub_1DEE1B548(&qword_1ECDE2DD0, &unk_1ECDE5020, &qword_1DEF961F8, v20);

  v34 = v50;
  sub_1DEF8D5E8();

  (*(v51 + 8))(v30, v34);
  swift_beginAccess();
  sub_1DEF8D578();
  swift_endAccess();
}

void *sub_1DEF48C0C(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = a3;
  v26 = a1;
  v27 = a2;
  v4 = sub_1DEF8DD08();
  v5 = *(v4 - 8);
  v28 = v4;
  v29 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v24[0] = sub_1DEE3C630();
  v24[3] = "hPairingEnforcer";
  sub_1DEF8D6C8();
  v30 = MEMORY[0x1E69E7CC0];
  v24[2] = sub_1DEE2BC18(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  v10 = *MEMORY[0x1E69E8098];
  v11 = *(v29 + 104);
  v29 += 104;
  v11(v7, v10, v28);
  v3[2] = sub_1DEF8DD38();
  sub_1DEF8D6C8();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DE08();
  v11(v7, v10, v28);
  v12 = v25;
  v13 = v26;
  v3[3] = sub_1DEF8DD38();
  v3[4] = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v3[5] = MEMORY[0x1E69E7CC0];
  v3[12] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v3[13] = v15;
  v3[14] = 0;
  v3[11] = v13;
  v3[4] = v27;
  sub_1DEE29594(v12, (v3 + 6));
  v16 = 1 << *(v13 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v13 + 64);
  v19 = (v16 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v21 = 0;
  if (v18)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      __swift_destroy_boxed_opaque_existential_1(v12);
      return v3;
    }

    v18 = *(v13 + 64 + 8 * v22);
    ++v21;
    if (v18)
    {
      v21 = v22;
      do
      {
LABEL_9:
        v18 &= v18 - 1;

        sub_1DEF48440(v23, v3);
      }

      while (v18);
      continue;
    }
  }

  __break(1u);
  return result;
}

void sub_1DEF49058(uint64_t a1)
{
  sub_1DEF4911C(319);
  if (v1 <= 0x3F)
  {
    sub_1DEF8D1E8();
    if (v2 <= 0x3F)
    {
      sub_1DEF49180(319);
      if (v3 <= 0x3F)
      {
        sub_1DEF491E4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DEF4911C(uint64_t a1)
{
  if (!qword_1ECDE2CC0)
  {
    sub_1DEE276F8();
    v1 = sub_1DEF8D888();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECDE2CC0);
    }
  }
}

void sub_1DEF49180(uint64_t a1)
{
  if (!qword_1ECDE2D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECDE5008, &unk_1DEF961C0);
    v1 = sub_1DEF8DDC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECDE2D80);
    }
  }
}

unint64_t sub_1DEF491E4()
{
  result = qword_1ECDE3450;
  if (!qword_1ECDE3450)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECDE3450);
  }

  return result;
}

uint64_t sub_1DEF49268(uint64_t a1, uint64_t a2)
{
  aBlock[6] = a1;
  v3 = off_1EED16900;
  type metadata accessor for NetworkMessenger(0);
  v4 = v3();
  v5 = sub_1DEEA3AD8(v4);

  if (sub_1DEF4DB74(v5, a2))
  {
  }

  if (*(a2 + 16) <= *(v5 + 16) >> 3)
  {
    aBlock[0] = v5;
    sub_1DEEC8D64(a2);
    v6 = v5;
    if (*(v5 + 16))
    {
      goto LABEL_4;
    }
  }

  v6 = sub_1DEEC9A18(a2, v5);
  if (!*(v6 + 16))
  {
  }

LABEL_4:
  if (qword_1ECDE2E50 != -1)
  {
LABEL_24:
    swift_once();
  }

  v7 = sub_1DEF8D508();
  __swift_project_value_buffer(v7, qword_1ECDF6010);

  v8 = sub_1DEF8D4D8();
  v9 = sub_1DEF8DCB8();
  v30 = v6;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 134349314;
    *(v10 + 4) = *(v6 + 16);

    *(v10 + 12) = 2082;
    v12 = sub_1DEF8DBF8();
    v14 = sub_1DEE12A5C(v12, v13, aBlock);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_1DEE0F000, v8, v9, "Disconnecting %{public}ld connected deviceID(s) no longer associated with the signed-in account: %{public}s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12CCD70](v11, -1, -1);
    MEMORY[0x1E12CCD70](v10, -1, -1);
  }

  else
  {
  }

  v16 = 0;
  v17 = v6 + 56;
  v18 = 1 << *(v6 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v6 + 56);
  v21 = (v18 + 63) >> 6;
  do
  {
    while (1)
    {
      if (!v20)
      {
        while (1)
        {
          v22 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
          }

          v20 = *(v17 + 8 * v22);
          ++v16;
          if (v20)
          {
            v16 = v22;
            goto LABEL_19;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

LABEL_19:
      v20 &= v20 - 1;
      v23 = off_1EED16958[0];

      (v23)(aBlock);

      v24 = aBlock[0];
      if (aBlock[0])
      {
        break;
      }

      v6 = v30;
    }

    queue = *(a1 + 24);
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    *(v25 + 24) = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1DEF4973C;
    *(v26 + 24) = v25;
    aBlock[4] = sub_1DEE13B20;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE134F4;
    aBlock[3] = &block_descriptor_25_0;
    v27 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    dispatch_sync(queue, v27);
    swift_unknownObjectRelease();
    _Block_release(v27);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    v6 = v30;
  }

  while ((isEscapingClosureAtFileLocation & 1) == 0);
  __break(1u);
}

uint64_t objectdestroy_9Tm_0(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t sub_1DEF49744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E30, &qword_1DEF96220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DEF497B4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E30, &qword_1DEF96220) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1DEE2D2C4(v2, v3, v4);
}

uint64_t NetworkBrowsingEvent.EventType.hashValue.getter()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF498DC(uint64_t a1)
{
  sub_1DEF8E7A8();
  NetworkBrowsingEvent.EventType.hash(into:)();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF4993C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  result = type metadata accessor for NetworkBrowsingEvent.EventType(319, v4, a3, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for NetworkDevice(319, v4, v6, v7);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DEF499CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = v6 | 7;
  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = *(*(*(a3 + 16) - 8) + 64) - ((-33 - v6) | v6) - ((-2 - v8) | v8) - 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = a1 + v8 + 1;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v6 + (((v16 & ~v8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6);
      }

      v17 = *((v16 & ~v8) + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void sub_1DEF49B84(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = v9 | 7;
  v11 = *(*(*(a4 + 16) - 8) + 64) - ((-33 - v9) | v9) - ((-2 - (v9 | 7)) | v9 | 7) - 2;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) - ((-33 - v9) | v9) - ((-2 - (v9 | 7)) | v9 | 7) != 2)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_46:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
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

  else if (v14)
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
  v20 = (&a1[v10 + 1] & ~v10);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v9 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *v20 = a2 & 0x7FFFFFFF;
    *((&a1[v10 + 1] & ~v10) + 8) = 0;
  }

  else
  {
    *((&a1[v10 + 1] & ~v10) + 8) = a2 - 1;
  }
}

uint64_t sub_1DEF49E60(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DEF49EE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1DEF4A06C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
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
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t static Zone.ID.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = v4 == a1[2] && v5 == a1[3];
  if (v6 || (v7 = sub_1DEF8E4E8(), result = 0, (v7 & 1) != 0))
  {
    if (a2[4] == a1[4] && a2[5] == a1[5])
    {
      return 1;
    }

    else
    {

      return sub_1DEF8E4E8();
    }
  }

  return result;
}

__n128 Zone.__allocating_init(id:protocolVersion:)(uint64_t a1, __n128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  result = *a2;
  *(v4 + 24) = *a2;
  return result;
}

uint64_t Zone.ID.hash(into:)(uint64_t a1)
{
  sub_1DEF8D9B8();

  return sub_1DEF8D9B8();
}

uint64_t sub_1DEF4A44C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1ECDE36D0 = result;
  return result;
}

uint64_t sub_1DEF4A4A0(uint64_t a1)
{
  if (qword_1ECDE36C8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1ECDE36D0;
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v2);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2DFE4(&v5);
  os_unfair_lock_unlock(v1 + 4);
  return v5;
}

uint64_t sub_1DEF4A5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (qword_1ECDE36E0 != -1)
  {
LABEL_33:
    swift_once();
  }

  swift_beginAccess();
  v23 = a5;
  if ((off_1ECDE36E8 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1DEF8DE58();
    type metadata accessor for Zone.ID();
    sub_1DEE244C8(&qword_1ECDE2EA0, type metadata accessor for Zone.ID, &protocol conformance descriptor for Zone.ID);
    sub_1DEF8DC18();
    v7 = v28;
    v8 = v29;
    a5 = v30;
    v9 = v31;
    v10 = v32;
  }

  else
  {
    v11 = -1 << *(off_1ECDE36E8 + 32);
    v8 = off_1ECDE36E8 + 56;
    a5 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(off_1ECDE36E8 + 7);
    v7 = off_1ECDE36E8;
    swift_bridgeObjectRetain_n();
    v9 = 0;
  }

  v14 = (a5 + 64) >> 6;
  while ((v7 & 0x8000000000000000) == 0)
  {
    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (!v10)
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v14)
        {
          goto LABEL_30;
        }

        v16 = *&v8[8 * v17];
        ++v15;
        if (v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_15:
    a5 = (v16 - 1) & v16;
    v18 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v18)
    {
      goto LABEL_30;
    }

LABEL_19:
    v20 = v18[2] == a1 && v18[3] == a2;
    if (v20 || (sub_1DEF8E4E8() & 1) != 0)
    {
      v21 = v18[4] == a3 && v18[5] == a4;
      if (v21 || (sub_1DEF8E4E8() & 1) != 0)
      {
        sub_1DEEACDB8(v7);

        goto LABEL_31;
      }
    }

    v9 = v17;
    v10 = a5;
  }

  v19 = sub_1DEF8DE88();
  if (v19)
  {
    v33 = v19;
    type metadata accessor for Zone.ID();
    swift_dynamicCast();
    v18 = v27;
    v17 = v9;
    a5 = v10;
    if (v27)
    {
      goto LABEL_19;
    }
  }

LABEL_30:
  sub_1DEEACDB8(v7);

  type metadata accessor for Zone.ID();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  swift_beginAccess();

  sub_1DEF389B8(&v33, v18);
  swift_endAccess();

LABEL_31:
  *v23 = v18;
  return result;
}

void *Zone.ID.__allocating_init(id:clientID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t Zone.ID.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Zone.ID.clientID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *Zone.ID.init(id:clientID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t Zone.ID.description.getter()
{
  v2 = v0[4];

  MEMORY[0x1E12CB180](14906, 0xE200000000000000);
  MEMORY[0x1E12CB180](v0[2], v0[3]);
  return v2;
}

uint64_t sub_1DEF4AA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

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

uint64_t sub_1DEF4AAE4(uint64_t a1)
{
  v2 = sub_1DEE24084();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF4AB20(uint64_t a1)
{
  v2 = sub_1DEE24084();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Zone.ID.deinit()
{

  return v0;
}

uint64_t Zone.ID.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t Zone.ID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE51F0, &qword_1DEF963C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE24084();
  sub_1DEF8E858();
  v8[15] = 0;
  sub_1DEF8E278();
  if (!v1)
  {
    v8[14] = 1;
    sub_1DEF8E278();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Zone.ID.hashValue.getter()
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

uint64_t Zone.ID.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Zone.ID.init(from:)(a1);
  return v2;
}

double sub_1DEF4ADE4@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t sub_1DEF4ADF4()
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF4AE48(uint64_t a1)
{
  sub_1DEF8D9B8();

  return sub_1DEF8D9B8();
}

__n128 Zone.protocolVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t Zone.init(id:protocolVersion:)(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return v2;
}

uint64_t Zone.hash(into:)(uint64_t a1)
{
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  v2 = *(v1 + 32);
  MEMORY[0x1E12CBF90](*(v1 + 24));
  return MEMORY[0x1E12CBF90](v2);
}

uint64_t sub_1DEF4AF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

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

uint64_t sub_1DEF4B00C(uint64_t a1)
{
  v2 = sub_1DEE24180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF4B048(uint64_t a1)
{
  v2 = sub_1DEE24180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Zone.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t Zone.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5200, &qword_1DEF963D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE24180();
  sub_1DEF8E858();
  *&v10 = *(v3 + 16);
  v11 = 0;
  type metadata accessor for Zone.ID();
  sub_1DEE244C8(&qword_1ECDE2EA8, type metadata accessor for Zone.ID, &protocol conformance descriptor for Zone.ID);
  sub_1DEF8E298();
  if (!v2)
  {
    v10 = *(v3 + 24);
    v11 = 1;
    sub_1DEEBBB54();
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Zone.hashValue.getter()
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  v1 = *(v0 + 32);
  MEMORY[0x1E12CBF90](*(v0 + 24));
  MEMORY[0x1E12CBF90](v1);
  return sub_1DEF8E7F8();
}

uint64_t Zone.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Zone.init(from:)(a1);
  return v2;
}

uint64_t sub_1DEF4B390()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  MEMORY[0x1E12CBF90](v2);
  MEMORY[0x1E12CBF90](v3);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF4B400(uint64_t a1)
{
  v2 = *v1;
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  v3 = *(v2 + 32);
  MEMORY[0x1E12CBF90](*(v2 + 24));
  return MEMORY[0x1E12CBF90](v3);
}

uint64_t sub_1DEF4B458(uint64_t a1)
{
  v2 = *v1;
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  MEMORY[0x1E12CBF90](v3);
  MEMORY[0x1E12CBF90](v4);
  return sub_1DEF8E7F8();
}

BOOL _s16ReplicatorEngine4ZoneC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  v6 = v5[2] == v4[2] && v5[3] == v4[3];
  if (v6 || (sub_1DEF8E4E8()) && (v5[4] == v4[4] ? (v7 = v5[5] == v4[5]) : (v7 = 0), (v7 || (sub_1DEF8E4E8()) && a1[3] == a2[3]))
  {
    return a1[4] == a2[4];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DEF4B704()
{
  result = qword_1ECDE5218;
  if (!qword_1ECDE5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5218);
  }

  return result;
}

unint64_t sub_1DEF4B75C()
{
  result = qword_1ECDE5220;
  if (!qword_1ECDE5220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5220);
  }

  return result;
}

unint64_t sub_1DEF4B7B4()
{
  result = qword_1ECDE2EC8;
  if (!qword_1ECDE2EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2EC8);
  }

  return result;
}

unint64_t sub_1DEF4B80C()
{
  result = qword_1ECDE2ED0;
  if (!qword_1ECDE2ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2ED0);
  }

  return result;
}

unint64_t sub_1DEF4B864()
{
  result = qword_1ECDE2EB0;
  if (!qword_1ECDE2EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2EB0);
  }

  return result;
}

unint64_t sub_1DEF4B8BC()
{
  result = qword_1ECDE2EB8;
  if (!qword_1ECDE2EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2EB8);
  }

  return result;
}

uint64_t PairedRelationshipReconciler.__allocating_init(syncService:queryCount:queryDelay:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1DEF4CF14(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t PairedRelationshipReconciler.init(syncService:queryCount:queryDelay:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1DEF4CF14(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

void *sub_1DEF4B9DC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1DEF8DE68();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1DEEC7F2C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1E12CB6E0](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1DEEC7F2C((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for ReliableKnownPairingRelationshipFilter();
        v15 = &off_1F5A1D228;
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1DEE2F1AC(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_1DEEC7F2C((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for ReliableKnownPairingRelationshipFilter();
        v15 = &off_1F5A1D228;
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_1DEE2F1AC(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t PairedRelationshipReconciler.deinit()
{

  return v0;
}

uint64_t PairedRelationshipReconciler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PairedRelationshipReconciler.filter(pairingRelationships:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;

  UnifyingPairingRelationshipFilter.filterKnownPairingRelationships(from:completion:)(a1, sub_1DEF4D32C, v7);
}

uint64_t sub_1DEF4BCB8(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1DEF8D698();
  v30 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DEF8D6D8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v29 = v17;
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = a5;
    v20[4] = a6;
    v36 = sub_1DEF4D438;
    v37 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1DEE3F0C0;
    v35 = &block_descriptor_18;
    v21 = _Block_copy(&aBlock);
    sub_1DEEE43BC(a1, 1);

    sub_1DEF8D6B8();
    v31 = MEMORY[0x1E69E7CC0];
    sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v19, v14, v21);
    _Block_release(v21);
    (*(v30 + 8))(v14, v12);
    (*(v16 + 8))(v19, v29);
  }

  else
  {
    v23 = *(a3 + 24);
    v24 = swift_allocObject();
    v24[2] = a4;
    v24[3] = a1;
    v24[4] = a3;
    v24[5] = a5;
    v24[6] = a6;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1DEF4D444;
    *(v25 + 24) = v24;
    v36 = sub_1DEE13B20;
    v37 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1DEE134F4;
    v35 = &block_descriptor_18;
    v26 = _Block_copy(&aBlock);
    sub_1DEEE43BC(a1, 0);

    dispatch_sync(v23, v26);
    _Block_release(v26);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DEF4C0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = a4;
  v82 = a5;
  v80 = a3;
  v6 = sub_1DEF8D698();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D6D8();
  v84 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PairingRelationship(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1DEF8D3F8();
  v15 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v77 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v74 - v18;

  v20 = sub_1DEEA3F9C(v19);

  v21 = sub_1DEECA55C(a2, v20);
  v22 = *(v21 + 16);
  v86 = v9;
  v87 = v7;
  if (v22)
  {
    v23 = v6;
    v24 = sub_1DEF2B350(v22, 0);
    v25 = v12;
    v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v89 = v24;
    sub_1DEF2E0B8(aBlock, v24 + v26, v22, v21);
    v91 = v27;
    v28 = a2;
    v29 = aBlock[0];
    v90 = v94;
    v30 = v28;

    result = sub_1DEE2774C(v29);
    if (v91 != v22)
    {
      __break(1u);
      return result;
    }

    a2 = v30;
    v12 = v25;
    v6 = v23;
  }

  else
  {

    v89 = MEMORY[0x1E69E7CC0];
  }

  v79 = v6;
  v32 = *(a2 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  v78 = a2;
  if (v32)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1DEEC7D60(0, v32, 0);
    v33 = aBlock[0];
    v34 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v75 = v12;
    v35 = *(v12 + 72);
    v90 = (v15 + 32);
    v91 = v35;
    v36 = v88;
    v37 = v76;
    do
    {
      sub_1DEEE42FC(v34, v14);
      (*(v15 + 16))(v37, v14, v36);
      sub_1DEEE4360(v14);
      aBlock[0] = v33;
      v39 = *(v33 + 16);
      v38 = *(v33 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1DEEC7D60((v38 > 1), v39 + 1, 1);
        v36 = v88;
        v33 = aBlock[0];
      }

      *(v33 + 16) = v39 + 1;
      (*(v15 + 32))(v33 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v39, v37, v36);
      v34 += v91;
      --v32;
    }

    while (v32);
    v12 = v75;
  }

  v40 = v89;
  v41 = v89[2];
  v42 = MEMORY[0x1E69E7CC0];
  if (v41)
  {
    v76 = v33;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1DEEC7D60(0, v41, 0);
    v42 = aBlock[0];
    v43 = v40 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v44 = *(v12 + 72);
    v90 = (v15 + 32);
    v91 = v44;
    v45 = v88;
    v46 = v77;
    do
    {
      sub_1DEEE42FC(v43, v14);
      (*(v15 + 16))(v46, v14, v45);
      sub_1DEEE4360(v14);
      aBlock[0] = v42;
      v48 = *(v42 + 16);
      v47 = *(v42 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1DEEC7D60((v47 > 1), v48 + 1, 1);
        v45 = v88;
        v42 = aBlock[0];
      }

      *(v42 + 16) = v48 + 1;
      (*(v15 + 32))(v42 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v48, v46, v45);
      v43 += v91;
      --v41;
    }

    while (v41);
    v33 = v76;
  }

  v49 = v87;
  if (qword_1ECDE2E48 != -1)
  {
    swift_once();
  }

  v50 = sub_1DEF8D508();
  __swift_project_value_buffer(v50, qword_1ECDF5FF8);

  v51 = sub_1DEF8D4D8();
  v52 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v53 = 136446466;
    v55 = v88;
    v56 = MEMORY[0x1E12CB290](v33, v88);
    v58 = v57;

    v59 = sub_1DEE12A5C(v56, v58, aBlock);

    *(v53 + 4) = v59;
    *(v53 + 12) = 2082;
    v60 = MEMORY[0x1E12CB290](v42, v55);
    v62 = v61;

    v63 = sub_1DEE12A5C(v60, v62, aBlock);

    *(v53 + 14) = v63;
    _os_log_impl(&dword_1DEE0F000, v51, v52, "Reconciled relationships.  Known: %{public}s; unknown: %{public}s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v54, -1, -1);
    MEMORY[0x1E12CCD70](v53, -1, -1);
  }

  else
  {
  }

  v65 = v84;
  v64 = v85;
  v67 = v81;
  v66 = v82;
  v68 = v78;
  v69 = swift_allocObject();
  v69[2] = v67;
  v69[3] = v66;
  v70 = v89;
  v69[4] = v68;
  v69[5] = v70;
  v94 = sub_1DEF4D454;
  v95 = v69;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_24_2;
  v71 = _Block_copy(aBlock);

  v72 = v83;
  sub_1DEF8D6B8();
  v92 = MEMORY[0x1E69E7CC0];
  sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  v73 = v79;
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v72, v64, v71);
  _Block_release(v71);
  (*(v49 + 8))(v64, v73);
  (*(v65 + 8))(v72, v86);
}

void sub_1DEF4C9C0(void (*a1)(void **), uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  v9 = a4;
  v10 = 0;

  a1(&v8);
  v5 = v8;
  v6 = v9;
  v7 = v10;

  sub_1DEEA8A18(v5, v6, v7);
}

void sub_1DEF4CA34(void *a1, void (*a2)(void **))
{
  if (qword_1ECDE2E48 != -1)
  {
    swift_once();
  }

  v4 = sub_1DEF8D508();
  __swift_project_value_buffer(v4, qword_1ECDF5FF8);
  v5 = a1;
  v6 = sub_1DEF8D4D8();
  v7 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1DEE0F000, v6, v7, "Failed to reconcile relationships: %{public}@", v8, 0xCu);
    sub_1DEEE2A84(v9);
    MEMORY[0x1E12CCD70](v9, -1, -1);
    MEMORY[0x1E12CCD70](v8, -1, -1);
  }

  v16 = a1;
  v17 = 0;
  v18 = 1;
  v12 = a1;
  a2(&v16);
  v13 = v16;
  v14 = v17;
  v15 = v18;

  sub_1DEEA8A18(v13, v14, v15);
}

uint64_t sub_1DEF4CBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;

  UnifyingPairingRelationshipFilter.filterKnownPairingRelationships(from:completion:)(a1, sub_1DEF4D470, v8);
}

void *sub_1DEF4CC70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = a3;
  v16 = a2;
  v17 = sub_1DEF8DD08();
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v21 = type metadata accessor for SyncServiceKnownPairingRelationshipFilter();
  v22 = &off_1F5A21CE8;
  *&v20 = a1;
  v11 = sub_1DEE3C630();
  v15[1] = "lationshipReconciler";
  v15[2] = v11;
  sub_1DEF8D6C8();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1DEE1BA40(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  v12 = v16;
  sub_1DEE1B590(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8090], v17);
  result = sub_1DEF8DD38();
  v14 = v18;
  a4[2] = result;
  if (v12 < 1 || v14 < 1)
  {
    __break(1u);
  }

  else
  {
    sub_1DEE2F1AC(&v20, (a4 + 5));
    a4[3] = v12;
    a4[4] = v14;
    return a4;
  }

  return result;
}

uint64_t sub_1DEF4CF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v4 = sub_1DEF8DD08();
  v25 = v4;
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v24[1] = sub_1DEE3C630();
  v28 = "RapportBrowseAgent";
  sub_1DEF8D6C8();
  v35 = MEMORY[0x1E69E7CC0];
  v27 = sub_1DEE1BA40(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B590(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  v9 = *MEMORY[0x1E69E8090];
  v10 = *(v34 + 104);
  v34 += 104;
  v10(v6, v9, v4);
  v11 = v6;
  v12 = sub_1DEF8DD38();
  v13 = v29;
  *(v29 + 24) = v12;
  sub_1DEF8D6C8();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DE08();
  v10(v11, v9, v25);
  *(v13 + 32) = sub_1DEF8DD38();
  v14 = type metadata accessor for SyncServiceKnownPairingRelationshipFilter();
  v15 = v30;
  ObjectType = swift_getObjectType();
  v35 = v15;
  v17 = *(v31 + 8);
  swift_unknownObjectRetain();
  sub_1DEF64D24(&v35, v14, ObjectType, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D90, &qword_1DEF916A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DEF91010;
  type metadata accessor for ReliableKnownPairingRelationshipFilter();
  v19 = swift_allocObject();

  *(inited + 32) = sub_1DEF4CC70(v20, v32, v33, v19);
  v21 = sub_1DEF4B9DC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for UnifyingPairingRelationshipFilter();
  swift_allocObject();
  v22 = UnifyingPairingRelationshipFilter.init(filters:)(v21);

  *(v13 + 16) = v22;
  return v13;
}

uint64_t sub_1DEF4D330(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DEF4D378(uint64_t result, int a2, int a3)
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

uint64_t sub_1DEF4D4D8()
{
  v0 = sub_1DEF8D508();
  __swift_allocate_value_buffer(v0, qword_1ECDF5FE0);
  __swift_project_value_buffer(v0, qword_1ECDF5FE0);
  return sub_1DEF8D4E8();
}

uint64_t sub_1DEF4D5F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DEF8D508();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1DEF8D4E8();
}

uint64_t sub_1DEF4D66C()
{
  v0 = sub_1DEF8D508();
  __swift_allocate_value_buffer(v0, qword_1ECDF6118);
  __swift_project_value_buffer(v0, qword_1ECDF6118);
  return sub_1DEF8D4E8();
}

uint64_t sub_1DEF4D6EC(uint64_t a1)
{
  result = sub_1DEF8DDC8();
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

void sub_1DEF4D7C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v33 - v9;
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_1DEF5D72C(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v26 = sub_1DEF8D8B8();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_1DEF5D72C(&qword_1ECDE40E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v31 = sub_1DEF8D908();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1DEF4DB74(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1DEF8E7A8();

    sub_1DEF8D9B8();
    v16 = sub_1DEF8E7F8();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1DEF8E4E8() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEF4DD2C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 88);
  v6 = sub_1DEF8DDC8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - v8;
  v10 = *a1;
  LOBYTE(v14[0]) = v10;
  sub_1DEE276F8();
  sub_1DEF8D898();
  v11 = *(v5 - 8);
  if ((*(v11 + 48))(v9, 1, v5) != 1)
  {
    return (*(v11 + 32))(a2, v9, v5);
  }

  (*(v7 + 8))(v9, v6);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1DEF8DF28();
  MEMORY[0x1E12CB180](0xD000000000000038, 0x80000001DEF9E010);
  if (v10)
  {
    v13 = 0x73756E696D726574;
  }

  else
  {
    v13 = 0x647261646E617473;
  }

  MEMORY[0x1E12CB180](v13, 0xE800000000000000);

  result = sub_1DEF8E0F8();
  __break(1u);
  return result;
}

uint64_t sub_1DEF4DF7C()
{
  v1 = *(v0 + *(*v0 + 168));
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2DFE4(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEF4DFF8(uint64_t *a1, uint64_t a2)
{
  v24 = *a1;
  v4 = v24;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5228, &qword_1DEF96A80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = *(v4 + 176);
  *(a1 + v12) = a2;

  result = sub_1DEF7BF38(1, &unk_1F5A195D0);
  if (result)
  {
    v14 = *(a1 + v12);
    if (v14)
    {
      v25 = *(a1 + v12);
      v26 = a1[2];
      v15 = v26;
      v23 = v14;
      v16 = sub_1DEF8DCF8();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);

      v21 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5230, &unk_1DEF96A88);
      v22 = v9;
      sub_1DEE3C630();
      sub_1DEE1B548(&qword_1ECDE2D88, &qword_1ECDE5230, &unk_1DEF96A88, MEMORY[0x1E695BED8]);
      sub_1DEF5D72C(&qword_1ECDE2C08, sub_1DEE3C630, MEMORY[0x1E69E8028]);
      sub_1DEF8D5D8();
      sub_1DEE171B4(v7, &qword_1ECDE3A60, &unk_1DEF90810);

      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      v19 = v24;
      *(v18 + 16) = *(v24 + 80);
      *(v18 + 24) = *(v19 + 88);
      *(v18 + 40) = *(v19 + 104);
      *(v18 + 48) = v17;
      sub_1DEE1B548(&qword_1ECDE2DE8, &qword_1ECDE5228, &qword_1DEF96A80, MEMORY[0x1E695BE98]);
      sub_1DEF8D5E8();

      (*(v22 + 8))(v11, v8);
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE5048, &qword_1DEF96210);
      sub_1DEE1B548(&qword_1ECDE2C60, &unk_1ECDE5048, &qword_1DEF96210, MEMORY[0x1E69E6348]);
      sub_1DEF8D578();
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1DEF4E438(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5238, &qword_1DEF96A98);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v101 - v13;
  v113 = type metadata accessor for DeviceDescriptor(0);
  v109 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v105 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v107 = &v101 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v108 = (&v101 - v19);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v123);
  v112 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v121 = &v101 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v120 = &v101 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v122 = &v101 - v26;
  v114 = type metadata accessor for PairingRelationship(0);
  v27 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v119 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v106 = result;
  v101 = v11;
  v102 = a6;
  v103 = v9;
  v104 = a4;
  v31 = *(v29 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  v111 = v14;
  if (v31)
  {
    v129 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7DA4(0, v31, 0);
    v32 = v129;
    v33 = v29 + 64;
    v34 = sub_1DEF8DE18();
    v35 = 0;
    v115 = v29 + 72;
    v116 = v31;
    v117 = v29 + 64;
    v118 = v29;
    while ((v34 & 0x8000000000000000) == 0 && v34 < 1 << *(v29 + 32))
    {
      v38 = v34 >> 6;
      if ((*(v33 + 8 * (v34 >> 6)) & (1 << v34)) == 0)
      {
        goto LABEL_44;
      }

      v124 = v35;
      v125 = *(v29 + 36);
      v126 = 1 << v34;
      v128 = v32;
      v39 = v123;
      v40 = *(v123 + 48);
      v41 = *(v29 + 48);
      v42 = sub_1DEF8D3F8();
      v43 = *(v42 - 8);
      v44 = v29;
      v45 = v122;
      (*(v43 + 16))(v122, v41 + *(v43 + 72) * v34, v42);
      v46 = *(v44 + 56);
      v127 = *(v27 + 72);
      sub_1DEE280F8(v46 + v127 * v34, v45 + v40, type metadata accessor for PairingRelationship);
      v47 = v120;
      (*(v43 + 32))(v120, v45, v42);
      sub_1DEE13A28(v45 + v40, v47 + *(v39 + 48), type metadata accessor for PairingRelationship);
      v48 = v121;
      sub_1DEE1BA88(v47, v121, &unk_1ECDE4350, &qword_1DEF93400);
      v49 = *(v39 + 48);
      v32 = v128;
      v50 = v119;
      sub_1DEE13A28(v48 + v49, v119, type metadata accessor for PairingRelationship);
      (*(v43 + 8))(v48, v42);
      v129 = v32;
      v52 = *(v32 + 16);
      v51 = *(v32 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1DEEC7DA4((v51 > 1), v52 + 1, 1);
        v32 = v129;
      }

      *(v32 + 16) = v52 + 1;
      sub_1DEE13A28(v50, v32 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + v52 * v127, type metadata accessor for PairingRelationship);
      v29 = v118;
      v36 = 1 << *(v118 + 32);
      if (v34 >= v36)
      {
        goto LABEL_45;
      }

      v33 = v117;
      v53 = *(v117 + 8 * v38);
      if ((v53 & v126) == 0)
      {
        goto LABEL_46;
      }

      if (v125 != *(v118 + 36))
      {
        goto LABEL_47;
      }

      v54 = v53 & (-2 << (v34 & 0x3F));
      if (v54)
      {
        v36 = __clz(__rbit64(v54)) | v34 & 0x7FFFFFFFFFFFFFC0;
        v37 = v116;
      }

      else
      {
        v55 = v38 << 6;
        v56 = v38 + 1;
        v57 = (v115 + 8 * v38);
        v37 = v116;
        while (v56 < (v36 + 63) >> 6)
        {
          v59 = *v57++;
          v58 = v59;
          v55 += 64;
          ++v56;
          if (v59)
          {
            sub_1DEE2F804(v34, v125, 0);
            v36 = __clz(__rbit64(v58)) + v55;
            goto LABEL_5;
          }
        }

        sub_1DEE2F804(v34, v125, 0);
      }

LABEL_5:
      v35 = v124 + 1;
      v34 = v36;
      if (v124 + 1 == v37)
      {
        goto LABEL_20;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_20:
  if (qword_1ECDE2E50 != -1)
  {
LABEL_48:
    swift_once();
  }

  v60 = sub_1DEF8D508();
  __swift_project_value_buffer(v60, qword_1ECDF6010);

  v61 = sub_1DEF8D4D8();
  v62 = sub_1DEF8DCB8();

  v63 = os_log_type_enabled(v61, v62);
  v110 = v27;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v129 = v65;
    *v64 = 136446210;
    v66 = MEMORY[0x1E12CB290](v32, v114);
    v68 = v67;

    v69 = sub_1DEE12A5C(v66, v68, &v129);

    *(v64 + 4) = v69;
    _os_log_impl(&dword_1DEE0F000, v61, v62, "pairingRelationships updated:%{public}s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x1E12CCD70](v65, -1, -1);
    MEMORY[0x1E12CCD70](v64, -1, -1);
  }

  else
  {
  }

  sub_1DEF5B3BC(v29);
  v27 = v70 + 64;
  v71 = 1 << *(v70 + 32);
  v72 = -1;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  v73 = v72 & *(v70 + 64);
  v32 = (v71 + 63) >> 6;
  v126 = v109 + 48;
  v127 = (v109 + 56);
  v128 = v70;

  v74 = 0;
  v125 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v75 = v74;
    if (!v73)
    {
      break;
    }

LABEL_31:
    v76 = __clz(__rbit64(v73));
    v73 &= v73 - 1;
    v77 = v76 | (v74 << 6);
    v78 = v128;
    v79 = *(v128 + 48);
    v80 = sub_1DEF8D3F8();
    v81 = *(v80 - 8);
    v82 = v81;
    v83 = v79 + *(v81 + 72) * v77;
    v84 = v112;
    (*(v81 + 16))(v112, v83, v80);
    v85 = v123;
    sub_1DEE280F8(*(v78 + 56) + *(v110 + 72) * v77, v84 + *(v123 + 48), type metadata accessor for PairingRelationship);
    v86 = v122;
    sub_1DEE1BA88(v84, v122, &unk_1ECDE4350, &qword_1DEF93400);
    v87 = v86 + *(v85 + 48);
    v29 = v111;
    sub_1DEE280F8(v87 + *(v114 + 20), v111, type metadata accessor for DeviceDescriptor);
    sub_1DEE274C0(v87, type metadata accessor for PairingRelationship);
    v88 = v113;
    (*v127)(v29, 0, 1, v113);
    (*(v82 + 8))(v86, v80);
    if ((*v126)(v29, 1, v88) == 1)
    {
      sub_1DEE171B4(v29, &qword_1ECDE5238, &qword_1DEF96A98);
    }

    else
    {
      sub_1DEE13A28(v29, v105, type metadata accessor for DeviceDescriptor);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v125 = sub_1DEF3822C(0, v125[2] + 1, 1, v125);
      }

      v90 = v125[2];
      v89 = v125[3];
      if (v90 >= v89 >> 1)
      {
        v125 = sub_1DEF3822C((v89 > 1), v90 + 1, 1, v125);
      }

      v91 = v125;
      v125[2] = v90 + 1;
      sub_1DEE13A28(v105, v91 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v90, type metadata accessor for DeviceDescriptor);
    }
  }

  while (1)
  {
    v74 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v74 >= v32)
    {
      break;
    }

    v73 = *(v27 + 8 * v74);
    ++v75;
    if (v73)
    {
      goto LABEL_31;
    }
  }

  if (v125[2])
  {
    v92 = v107;
    sub_1DEE280F8(v125 + ((*(v109 + 80) + 32) & ~*(v109 + 80)), v107, type metadata accessor for DeviceDescriptor);

    v93 = v108;
    sub_1DEE13A28(v92, v108, type metadata accessor for DeviceDescriptor);
    LOBYTE(v129) = 1;
    v94 = v101;
    sub_1DEF4DD2C(&v129, v101);
    v95 = *v93;
    v96 = v93[1];
    v97 = v102;
    v98 = *(v102 + 48);

    v99 = v96;
    v100 = v104;
    v98(v95, v99, v104, v97);

    (*(v103 + 8))(v94, v100);
    return sub_1DEE274C0(v93, type metadata accessor for DeviceDescriptor);
  }

  else
  {
  }
}

uint64_t sub_1DEF4F0B0()
{
  v1 = v0;
  v2 = *v0;
  v51 = sub_1DEF8D698();
  v3 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DEF8D6D8();
  v50 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8D788();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v0[2];
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1DEF8D7B8();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v46 = v5;
    v47 = v6;
    v16 = v2[13];
    v17 = v2[11];
    (*(v16 + 72))(aBlock, v17, v16);
    v18 = v54;
    v19 = v55;
    __swift_project_boxed_opaque_existential_1(aBlock, v54);
    v20 = (*(v19 + 4))(v18, v19);
    v21 = *(v20 + 16);
    v48 = v3;
    if (v21)
    {
      v43 = v16;
      v44 = v17;
      v45 = v2;
      v57[0] = MEMORY[0x1E69E7CC0];
      sub_1DEEC7E08(0, v21, 0);
      v22 = v57[0];
      v23 = (v20 + 40);
      do
      {
        v25 = *(v23 - 1);
        v24 = *v23;
        v57[0] = v22;
        v26 = *(v22 + 16);
        v27 = *(v22 + 24);

        if (v26 >= v27 >> 1)
        {
          sub_1DEEC7E08((v27 > 1), v26 + 1, 1);
          v22 = v57[0];
        }

        *(v22 + 16) = v26 + 1;
        v28 = v22 + 16 * v26;
        *(v28 + 32) = v25;
        *(v28 + 40) = v24;
        v23 += 2;
        --v21;
      }

      while (v21);

      v29 = v51;
      v17 = v44;
      v2 = v45;
      v16 = v43;
    }

    else
    {

      v22 = MEMORY[0x1E69E7CC0];
      v29 = v51;
    }

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v30 = sub_1DEEA3AD8(v22);

    aBlock[0] = *(v1 + *(*v1 + 152));
    MEMORY[0x1EEE9AC00](v31);
    *(&v42 - 6) = v2[10];
    *(&v42 - 5) = v17;
    *(&v42 - 4) = v2[12];
    *(&v42 - 3) = v16;
    *(&v42 - 2) = v30;
    MEMORY[0x1EEE9AC00](v32);
    *(&v42 - 6) = v33;
    *(&v42 - 5) = v17;
    *(&v42 - 4) = v34;
    *(&v42 - 3) = v16;
    *(&v42 - 2) = sub_1DEF5CDC4;
    *(&v42 - 1) = v35;
    sub_1DEE276F8();
    sub_1DEF8D888();

    swift_getWitnessTable();
    sub_1DEF8DA48();

    v36 = *(*v1 + 136);
    swift_beginAccess();
    v37 = *(v1 + v36);
    v38 = swift_allocObject();
    v38[2] = v37;
    v38[3] = v1;
    v38[4] = v30;
    v55 = sub_1DEF5CDEC;
    v56 = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    v54 = &block_descriptor_51_0;
    v39 = _Block_copy(aBlock);

    v40 = v49;
    sub_1DEF8D6B8();
    v52 = MEMORY[0x1E69E7CC0];
    sub_1DEF5D72C(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
    v41 = v46;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v40, v41, v39);
    _Block_release(v39);
    (*(v48 + 8))(v41, v29);
    (*(v50 + 8))(v40, v47);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id *sub_1DEF4F718()
{
  v1 = *(*v0 + 16);
  v2 = sub_1DEF8DDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 18)));

  return v0;
}

uint64_t sub_1DEF4F85C()
{
  sub_1DEF4F718();

  return swift_deallocClassInstance();
}

uint64_t sub_1DEF4F910()
{
  sub_1DEE276F8();
  sub_1DEF8D888();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
  swift_getWitnessTable();
  sub_1DEE1B548(&qword_1ECDE2C38, &qword_1ECDE3C90, &unk_1DEF91590, MEMORY[0x1E69E6328]);
  v0 = sub_1DEF8DA38();

  return v0;
}

uint64_t sub_1DEF4FAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 72))(v19, a4, a6, a3);
  v6 = v20;
  v7 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v8 = (*(v7 + 32))(v6, v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7E08(0, v9, 0);
    v10 = v18;
    v11 = (v8 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v14 = *(v18 + 16);
      v15 = *(v18 + 24);

      if (v14 >= v15 >> 1)
      {
        sub_1DEEC7E08((v15 > 1), v14 + 1, 1);
      }

      *(v18 + 16) = v14 + 1;
      v16 = v18 + 16 * v14;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v11 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v10;
}

uint64_t sub_1DEF4FC08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1DEF5D620;
  *(v8 + 24) = v7;
  v11[4] = sub_1DEE46D40;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DEE134F4;
  v11[3] = &block_descriptor_96;
  v9 = _Block_copy(v11);

  swift_unknownObjectRetain();

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF4FD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + 96);
  v15[0] = *(*a1 + 80);
  v15[1] = v6;
  type metadata accessor for NetworkSyncService.WeakDelegate(0, v15);
  v7 = sub_1DEF5D62C(a2, a3);
  v8 = *(*a1 + 136);
  swift_beginAccess();
  v9 = *(a1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1DEF38430(0, v9[2] + 1, 1, v9);
    *(a1 + v8) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1DEF38430((v11 > 1), v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  v13 = &v9[2 * v12];
  v13[4] = v7;
  v13[5] = &off_1F5A21060;
  *(a1 + v8) = v9;
  return swift_endAccess();
}

uint64_t sub_1DEF4FEB8()
{
  v1 = sub_1DEF8D698();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DEF8D6D8();
  v5 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 16);
  aBlock[4] = sub_1DEF5D570;
  v14 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_85;
  v8 = _Block_copy(aBlock);

  sub_1DEF8D6B8();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1DEF5D72C(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_1DEF5016C(uint64_t a1)
{
  sub_1DEE276F8();
  sub_1DEF8D888();

  swift_getWitnessTable();
  sub_1DEF8DA48();
}

uint64_t sub_1DEF502B0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = sub_1DEF8DDC8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-1] - v8;
  LOBYTE(v15[0]) = 0;
  sub_1DEE276F8();
  sub_1DEF8D898();
  v10 = *(v6 - 8);
  result = (*(v10 + 48))(v9, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v5 + 104) + 72))(v15, v6);
    (*(v10 + 8))(v9, v6);
    v12 = v16;
    v13 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v13 + 48))(a1, a2, v12, v13);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return result;
}

uint64_t sub_1DEF5048C(uint64_t a1, uint64_t (*a2)(uint64_t a1), unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v55 = a7;
  v56 = a8;
  v50 = a4;
  v47 = a2;
  v44 = a1;
  v12 = *v8;
  v52 = a5;
  v53 = v12;
  v54 = v12;
  v13 = type metadata accessor for DeviceDescriptor(0);
  v49 = *(v13 - 8);
  v48 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v42 = *(v16 - 8);
  v17 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v38 - v18;
  v41 = &v38 - v18;
  v20 = type metadata accessor for Message(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v39 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *a3;
  v45 = *v52;
  v23 = *a6;
  v46 = a6[1];
  v24 = v9[2];
  v51 = "/NetworkSyncService.swift";
  v52 = v24;
  v38 = type metadata accessor for Message;
  sub_1DEE280F8(v44, v39, type metadata accessor for Message);
  sub_1DEE17214(v47, v19, &qword_1ECDE4890, &qword_1DEF90990);
  v47 = type metadata accessor for DeviceDescriptor;
  sub_1DEE280F8(v50, v15, type metadata accessor for DeviceDescriptor);
  v25 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v26 = (v22 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v42 + 80) + v26 + 8) & ~*(v42 + 80);
  v28 = v27 + v17;
  v29 = (*(v49 + 80) + v27 + v17 + 1) & ~*(v49 + 80);
  v30 = v29 + v48;
  v31 = (v29 + v48) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v53;
  *(v32 + 16) = *(v53 + 80);
  *(v32 + 24) = *(v54 + 88);
  *(v32 + 40) = *(v33 + 104);
  sub_1DEE13A28(v39, v32 + v25, v38);
  *(v32 + v26) = v9;
  sub_1DEE1BA88(v41, v32 + v27, &qword_1ECDE4890, &qword_1DEF90990);
  *(v32 + v28) = v43;
  sub_1DEE13A28(v40, v32 + v29, v47);
  *(v32 + v30) = v45;
  v34 = v32 + v31;
  *(v34 + 8) = v23;
  *(v34 + 16) = v46;
  v35 = (v32 + ((v31 + 31) & 0xFFFFFFFFFFFFFFF8));
  v36 = v56;
  *v35 = v55;
  v35[1] = v36;

  sub_1DEE2C448(0xD000000000000022, v51 | 0x8000000000000000, v52, sub_1DEF5BCA4, v32, 0.0);
}

uint64_t sub_1DEF5088C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t *a7, int a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v13) = a8;
  v65 = a7;
  v66 = a3;
  v62 = a2;
  v63 = a5;
  v64 = a4;
  v60 = *a4;
  v61 = a1;
  v15 = type metadata accessor for DeviceDescriptor(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v59 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Message(0);
  v55 = *(v18 - 8);
  v19 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v58 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - v21;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v56 = a11;
  v57 = a12;
  v23 = a10;
  v24 = sub_1DEF8D508();
  __swift_project_value_buffer(v24, qword_1ECDF6010);
  sub_1DEE280F8(v66, v22, type metadata accessor for Message);
  v25 = sub_1DEF8D4D8();
  v26 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v54 = v13;
    v13 = v27;
    v28 = swift_slowAlloc();
    v53 = v17;
    v29 = v28;
    v67[0] = v28;
    *v13 = 136446210;
    v30 = Message.description.getter();
    v52 = v19;
    v31 = a6;
    v32 = v16;
    v34 = v33;
    sub_1DEE274C0(v22, type metadata accessor for Message);
    v35 = sub_1DEE12A5C(v30, v34, v67);
    v16 = v32;
    a6 = v31;
    v23 = a10;
    v19 = v52;

    *(v13 + 4) = v35;
    _os_log_impl(&dword_1DEE0F000, v25, v26, "Sending message with expected response: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v36 = v29;
    v17 = v53;
    MEMORY[0x1E12CCD70](v36, -1, -1);
    v37 = v13;
    LOBYTE(v13) = v54;
    MEMORY[0x1E12CCD70](v37, -1, -1);
  }

  else
  {

    sub_1DEE274C0(v22, type metadata accessor for Message);
  }

  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v69[0] = a6 & 1;
  v68 = v13;
  *v67 = a9;
  v67[1] = v23;
  v39 = v58;
  sub_1DEE280F8(v66, v58, type metadata accessor for Message);
  v40 = v59;
  sub_1DEE280F8(v65, v59, type metadata accessor for DeviceDescriptor);
  v41 = (*(v55 + 80) + 56) & ~*(v55 + 80);
  v42 = (v19 + *(v16 + 80) + v41) & ~*(v16 + 80);
  v43 = (v17 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v45 = v60;
  *(v44 + 16) = *(v60 + 80);
  *(v44 + 24) = *(v45 + 88);
  *(v44 + 40) = *(v45 + 104);
  *(v44 + 48) = v38;
  sub_1DEE13A28(v39, v44 + v41, type metadata accessor for Message);
  sub_1DEE13A28(v40, v44 + v42, type metadata accessor for DeviceDescriptor);
  v46 = (v44 + v43);
  v47 = v57;
  *v46 = v56;
  v46[1] = v47;
  v48 = (v44 + ((v43 + 23) & 0xFFFFFFFFFFFFFFF8));
  v49 = v62;
  *v48 = v61;
  v48[1] = v49;

  sub_1DEF51494(v66, v63, v69, v65, &v68, v67, sub_1DEF5BE58, v44);
}

void sub_1DEF50D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = type metadata accessor for Message(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D20, &unk_1DEF91630);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v40 - v23;
  swift_beginAccess();
  if (*(a2 + 16))
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v25 = sub_1DEF8D508();
    __swift_project_value_buffer(v25, qword_1ECDF6010);
    sub_1DEE280F8(a3, v21, type metadata accessor for Message);
    v26 = sub_1DEF8D4D8();
    v27 = sub_1DEF8DC98();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43[0] = v29;
      *v28 = 136446210;
      v30 = Message.description.getter();
      v32 = v31;
      sub_1DEE274C0(v21, type metadata accessor for Message);
      v33 = sub_1DEE12A5C(v30, v32, v43);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1DEE0F000, v26, v27, "Completion handler already called for message with URL: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E12CCD70](v29, -1, -1);
      MEMORY[0x1E12CCD70](v28, -1, -1);
    }

    else
    {

      sub_1DEE274C0(v21, type metadata accessor for Message);
    }
  }

  else
  {
    v41 = a5;
    v42 = a8;
    v40[1] = a6;
    v34 = swift_beginAccess();
    v40[0] = a7;
    *(a2 + 16) = 1;
    MEMORY[0x1EEE9AC00](v34);
    v40[-6] = a9;
    v40[-5] = a10;
    v40[-4] = a11;
    v40[-3] = a12;
    v40[-2] = a4;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for IncomingNetworkMessage(255, AssociatedTypeWitness, v36, v37);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
    v38 = sub_1DEF8E808();
    type metadata accessor for IncomingSyncServiceMessage(0);
    sub_1DEF51280(sub_1DEF5CDF8, v38, v24);
    v39 = v41(v24);
    (v40[0])(v39);
    sub_1DEE171B4(v24, &qword_1ECDE3D20, &unk_1DEF91630);
  }
}

uint64_t sub_1DEF51108@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a5@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  sub_1DEE280F8(a1, a5, type metadata accessor for Message);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for IncomingNetworkMessage(0, AssociatedTypeWitness, v12, v13);
  sub_1DEE17214(a1 + *(v14 + 28), v10, &qword_1ECDE4890, &qword_1DEF90990);
  v16 = *a2;
  v15 = a2[1];
  v17 = type metadata accessor for IncomingSyncServiceMessage(0);
  v18 = *(v17 + 20);
  v19 = sub_1DEF8D1E8();
  (*(*(v19 - 8) + 56))(a5 + v18, 1, 1, v19);

  result = sub_1DEED4690(v10, a5 + v18);
  v21 = (a5 + *(v17 + 24));
  *v21 = v16;
  v21[1] = v15;
  return result;
}

uint64_t sub_1DEF51280@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a4, v14, a2[3]);
  }

  else
  {
    (*(v8 + 32))(v10, v14, v7);
    a1(v10);
    (*(v8 + 8))(v10, v7);
  }

  sub_1DEF8E808();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DEF51494(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t *a4, unsigned __int8 *a5, double *a6, char *a7, uint64_t (*a8)(uint64_t *a1, unint64_t a2, unint64_t a3))
{
  v9 = v8;
  v300 = a7;
  v301 = a8;
  v288 = a2;
  v293 = a1;
  v276 = *v9;
  v14 = v276;
  v15 = *(v276 + 80);
  v257 = sub_1DEF8DDC8();
  v254 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v255 = v242 - v16;
  v298 = v15;
  v267 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v266 = v242 - v18;
  v270 = sub_1DEF8D378();
  v265 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v270);
  v263 = v242 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v264 = v242 - v21;
  v22 = *(v14 + 88);
  v302 = *(v14 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v259 = sub_1DEF8DDC8();
  v258 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v275 = v242 - v24;
  v289 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v25);
  v252 = v242 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v262 = v242 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v277 = v242 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v253 = v242 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v260 = v242 - v34;
  v269 = v35;
  MEMORY[0x1EEE9AC00](v36);
  v282 = v242 - v37;
  v38 = type metadata accessor for DeviceDescriptor(0);
  v273 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v274 = v39;
  v287 = v242 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v272 = *(v40 - 8);
  v281 = *(v272 + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v292 = v242 - v41;
  v42 = type metadata accessor for Message(0);
  v271 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v261 = v242 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = v43;
  MEMORY[0x1EEE9AC00](v44);
  v291 = v242 - v45;
  v303 = v22;
  v46 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v290 = v242 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = v242 - v50;
  v285 = AssociatedTypeWitness;
  type metadata accessor for IncomingNetworkMessage(255, AssociatedTypeWitness, v52, v53);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v54 = sub_1DEF8E808();
  v296 = *(v54 - 8);
  v297 = v54;
  MEMORY[0x1EEE9AC00](v54);
  v295 = (v242 - v55);
  v56 = sub_1DEF8D788();
  v57 = *(v56 - 8);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v60 = (v242 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v294) = *a3;
  v61 = *a5;
  v62 = *a6;
  v284 = *(a6 + 1);
  v63 = *(v9 + 2);
  *v60 = v63;
  (*(v57 + 104))(v60, *MEMORY[0x1E69E8020], v56, v58);
  v64 = v63;
  LOBYTE(v63) = sub_1DEF8D7B8();
  (*(v57 + 8))(v60, v56);
  if ((v63 & 1) == 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v268 = v64;
  v65 = (v9 + *(*v9 + 144));
  v66 = v65[3];
  v67 = v65[4];
  __swift_project_boxed_opaque_existential_1(v65, v66);
  v68 = *a4;
  v69 = a4[1];
  v299 = a4;
  if ((*(v67 + 8))(v68, v69, v66, v67))
  {
    v64 = v300;
    if (qword_1ECDE2E50 == -1)
    {
LABEL_4:
      v70 = sub_1DEF8D508();
      __swift_project_value_buffer(v70, qword_1ECDF6010);
      v71 = sub_1DEF8D4D8();
      v72 = sub_1DEF8DCB8();
      v73 = os_log_type_enabled(v71, v72);
      v75 = v295;
      v74 = v296;
      if (v73)
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_1DEE0F000, v71, v72, "Cannot send messages to remote device ID not in allow list", v76, 2u);
        MEMORY[0x1E12CCD70](v76, -1, -1);
      }

      sub_1DEF5BF8C();
      v77 = swift_allocError();
      *v78 = 2;
      *v75 = v77;
      v79 = v297;
      swift_storeEnumTagMultiPayload();
      (v64)(v75);
      return (*(v74 + 1))(v75, v79);
    }

LABEL_40:
    swift_once();
    goto LABEL_4;
  }

  v250 = v61;
  if (v294)
  {
    v81 = v299;
    v249 = v299[4] > 0xF;
  }

  else
  {
    v249 = 0;
    v81 = v299;
  }

  v82 = v46;
  LOBYTE(v305) = *(v81 + 48) == 4;

  sub_1DEF4DD2C(&v305, v51);
  v83 = v303;
  (*(v302 + 72))(&v305, v303);
  v84 = v307;
  v85 = v308;
  __swift_project_boxed_opaque_existential_1(&v305, v307);
  v86 = (*(v85 + 32))(v84, v85);
  v87 = *(v86 + 16);
  v278 = v51;
  v251 = v82;
  v286 = v69;
  v283 = v68;
  if (v87)
  {
    v304 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7E08(0, v87, 0);
    v88 = v304;
    v89 = (v86 + 40);
    do
    {
      v90 = *(v89 - 1);
      v91 = *v89;
      v304 = v88;
      v93 = *(v88 + 16);
      v92 = *(v88 + 24);

      if (v93 >= v92 >> 1)
      {
        sub_1DEEC7E08((v92 > 1), v93 + 1, 1);
        v88 = v304;
      }

      *(v88 + 16) = v93 + 1;
      v94 = v88 + 16 * v93;
      *(v94 + 32) = v90;
      *(v94 + 40) = v91;
      v89 += 2;
      --v87;
    }

    while (v87);

    v83 = v303;
    v51 = v278;
    v82 = v251;
    v69 = v286;
    v68 = v283;
  }

  else
  {

    v88 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(&v305);
  v95 = sub_1DEEA3AD8(v88);

  v96 = sub_1DEF01E3C(v68, v69, v95);

  if (v96)
  {
    v97 = *(v82 + 16);
    v247 = v82 + 16;
    v246 = v97;
    v97(v290, v51, v83);
    v295 = type metadata accessor for Message;
    sub_1DEE280F8(v293, v291, type metadata accessor for Message);
    sub_1DEE17214(v288, v292, &qword_1ECDE4890, &qword_1DEF90990);
    v296 = type metadata accessor for DeviceDescriptor;
    sub_1DEE280F8(v299, v287, type metadata accessor for DeviceDescriptor);
    v98 = *(v82 + 80);
    v99 = (v98 + 72) & ~v98;
    v100 = *(v271 + 80);
    v271 = ~v100;
    v101 = (v279 + v100 + v99) & ~v100;
    v248 = v280 + 7;
    v102 = (v280 + 7 + v101) & 0xFFFFFFFFFFFFFFF8;
    v103 = *(v272 + 80);
    v104 = (v103 + v102 + 16) & ~v103;
    v272 = v104 + v281;
    v105 = (*(v273 + 80) + v104 + v281 + 1) & ~*(v273 + 80);
    v274 += v105;
    v273 = v100;
    v245 = v98;
    v243 = v103;
    v242[1] = v100 | v98 | v103;
    v106 = v9;
    v107 = swift_allocObject();
    *(v107 + 2) = v298;
    *(v107 + 3) = v83;
    v297 = *(v276 + 96);
    v109 = v301;
    v108 = v302;
    *(v107 + 4) = v297;
    *(v107 + 5) = v108;
    v110 = v300;
    *(v107 + 6) = v106;
    *(v107 + 7) = v110;
    *(v107 + 8) = v109;
    v111 = v82;
    v112 = v108;
    v113 = *(v111 + 32);
    v276 = v111 + 32;
    v244 = v113;
    v113(&v107[v99], v290, v83);
    sub_1DEE13A28(v291, &v107[v101], v295);
    v114 = &v107[v102];
    v115 = v283;
    v116 = v286;
    *v114 = v283;
    *(v114 + 1) = v116;
    v117 = &v107[v104];
    v118 = v286;
    sub_1DEE1BA88(v292, v117, &qword_1ECDE4890, &qword_1DEF90990);
    v107[v272] = v294;
    sub_1DEE13A28(v287, &v107[v105], v296);
    v300 = v107;
    v107[v274] = v250;
    v119 = v106;
    v120 = v278;
    v121 = *(v112 + 120);

    v122 = v83;

    v123 = v275;
    v121(v115, v118, v83, v112);
    v124 = v289;
    v125 = v285;
    if ((*(v289 + 48))(v123, 1, v285) == 1)
    {
      (*(v258 + 8))(v123, v259);
      v126 = *(v112 + 64);
      (v126)(&v305, v122, v112);
      if (v305 == 1)
      {
        v127 = v262;
        (*(v112 + 104))(v283, v118, v122, v112);

        v128 = v252;
        (*(v124 + 16))(v252, v127, v125);
        v129 = (*(v124 + 80) + 80) & ~*(v124 + 80);
        v130 = swift_allocObject();
        v131 = v297;
        *(v130 + 2) = v298;
        *(v130 + 3) = v122;
        *(v130 + 4) = v131;
        *(v130 + 5) = v112;
        v132 = v124;
        v301 = sub_1DEF5BFE0;
        v133 = v300;
        *(v130 + 6) = sub_1DEF5BFE0;
        *(v130 + 7) = v133;
        v130[8] = v62;
        *(v130 + 9) = v284;
        (*(v132 + 32))(v130 + v129, v128, v125);
        type metadata accessor for Watchdog();
        v134 = swift_allocObject();
        *(v134 + 16) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
        v135 = swift_allocObject();
        v136 = v122;
        *(v135 + 16) = 0;
        v137 = (v135 + 16);
        *(v134 + 24) = v135;
        *(v134 + 32) = 0;
        MEMORY[0x1EEE9AC00](v135);
        MEMORY[0x1EEE9AC00](v138);

        os_unfair_lock_lock(v137);
        sub_1DEE3DEF0(v139);
        os_unfair_lock_unlock(v137);

        v140 = v262;
        sub_1DEF587E0(v134, v120, v293, v288, v249, v262, v250, v284, v62, v301, v133, v298, v136, v297, v302, &unk_1F5A21290, sub_1DEF5D7FC);

        (*(v289 + 8))(v140, v285);
        return (*(v251 + 8))(v120, v136);
      }

      else
      {
        v296 = v126;
        if (qword_1ECDE2E50 != -1)
        {
          swift_once();
        }

        v170 = sub_1DEF8D508();
        __swift_project_value_buffer(v170, qword_1ECDF6010);

        v171 = sub_1DEF8D4D8();
        v172 = sub_1DEF8DCB8();

        v173 = os_log_type_enabled(v171, v172);
        v174 = v267;
        v175 = v257;
        v176 = v254;
        if (v173)
        {
          v177 = v254;
          v178 = v172;
          v179 = swift_slowAlloc();
          v305 = swift_slowAlloc();
          v180 = v305;
          *v179 = 136446210;

          v181 = sub_1DEE12A5C(v283, v118, &v305);

          *(v179 + 4) = v181;
          v120 = v278;
          v182 = v178;
          v176 = v177;
          v175 = v257;
          _os_log_impl(&dword_1DEE0F000, v171, v182, "Using browser to find %{public}s", v179, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v180);
          v183 = v180;
          v174 = v267;
          MEMORY[0x1E12CCD70](v183, -1, -1);
          MEMORY[0x1E12CCD70](v179, -1, -1);
        }

        v184 = v255;
        v185 = v264;
        sub_1DEF8D348();
        (*(v176 + 16))(v184, v119 + *(*v119 + 128), v175);
        v186 = v298;
        v187 = (*(v174 + 48))(v184, 1, v298);
        v301 = v119;
        if (v187 == 1)
        {
          (*(v176 + 8))(v184, v175);
          v305 = 0;
          v306 = 0xE000000000000000;
          sub_1DEF8DF28();

          v305 = 0xD000000000000028;
          v306 = 0x80000001DEF9E0B0;
          (v296)(&v304, v122, v302);
          if (v304)
          {
            v241 = 0x73756E696D726574;
          }

          else
          {
            v241 = 0x647261646E617473;
          }

          MEMORY[0x1E12CB180](v241, 0xE800000000000000);

          result = sub_1DEF8E0F8();
          __break(1u);
        }

        else
        {
          v188 = v245;
          v189 = ~v245;
          v190 = v243;
          v294 = ~v243;
          (*(v174 + 32))(v266, v184, v186);
          v191 = v299[21];
          v296 = v299[20];
          v299 = v191;
          v192 = v265;
          (*(v265 + 16))(v263, v185, v270);
          v246(v290, v120, v122);
          v295 = type metadata accessor for Message;
          sub_1DEE280F8(v293, v291, type metadata accessor for Message);
          sub_1DEE17214(v288, v292, &qword_1ECDE4890, &qword_1DEF90990);
          v193 = (*(v192 + 80) + 48) & ~*(v192 + 80);
          v194 = (v256 + v193 + 7) & 0xFFFFFFFFFFFFFFF8;
          v195 = v122;
          v196 = (v194 + 23) & 0xFFFFFFFFFFFFFFF8;
          v197 = v188 + v196 + 16;
          v198 = v195;
          v199 = v197 & v189;
          v200 = (v279 + v199 + 7) & 0xFFFFFFFFFFFFFFF8;
          v201 = (v200 + 23) & 0xFFFFFFFFFFFFFFF8;
          v289 = (v273 + v201 + 8) & v271;
          v293 = (v280 + v190 + v289) & v294;
          v294 = v293 + v281;
          v202 = swift_allocObject();
          *(v202 + 2) = v186;
          *(v202 + 3) = v198;
          v203 = v297;
          *(v202 + 4) = v297;
          v204 = v203;
          *(v202 + 5) = v302;
          (*(v192 + 32))(&v202[v193], v263, v270);
          v205 = &v202[v194];
          *v205 = v62;
          *(v205 + 1) = v284;
          v206 = &v202[v196];
          v207 = v283;
          v208 = v286;
          *v206 = v283;
          *(v206 + 1) = v208;
          v244(&v202[v199], v290, v198);
          v209 = &v202[v200];
          v210 = v300;
          v211 = v301;
          *v209 = sub_1DEF5BFE0;
          v209[1] = v210;
          *&v202[v201] = v211;
          sub_1DEE13A28(v291, &v202[v289], v295);
          sub_1DEE1BA88(v292, &v202[v293], &qword_1ECDE4890, &qword_1DEF90990);
          v212 = &v202[v294];
          *v212 = v249;
          v212[1] = v250;
          v213 = v204;
          v214 = *(v204 + 16);

          v215 = v207;
          v216 = v298;
          v217 = v266;
          v214(v215, v208, v296, v299, sub_1DEF5C1F0, v202, v298, v213, v62);

          (*(v267 + 8))(v217, v216);
          (*(v265 + 8))(v264, v270);
          return (*(v251 + 8))(v278, v198);
        }
      }
    }

    else
    {
      v148 = *(v124 + 32);
      v149 = v282;
      v299 = (v124 + 32);
      v296 = v148;
      (v148)();
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v150 = sub_1DEF8D508();
      __swift_project_value_buffer(v150, qword_1ECDF6010);
      v151 = *(v124 + 16);
      v152 = v260;
      v151(v260, v149, v125);

      v153 = v125;
      v154 = sub_1DEF8D4D8();
      v155 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        LODWORD(v294) = v155;
        v157 = v156;
        v295 = swift_slowAlloc();
        v305 = v295;
        *v157 = 136446466;
        *(v157 + 4) = sub_1DEE12A5C(v283, v118, &v305);
        *(v157 + 12) = 2082;
        v151(v253, v152, v153);
        v158 = sub_1DEF8D988();
        v160 = v159;
        v301 = *(v124 + 8);
        (v301)(v152, v153);
        v161 = sub_1DEE12A5C(v158, v160, &v305);

        *(v157 + 14) = v161;
        _os_log_impl(&dword_1DEE0F000, v154, v294, "Connection for %{public}s already exists; sending message immediately: %{public}s", v157, 0x16u);
        v162 = v295;
        swift_arrayDestroy();
        v163 = v162;
        v149 = v282;
        MEMORY[0x1E12CCD70](v163, -1, -1);
        MEMORY[0x1E12CCD70](v157, -1, -1);
      }

      else
      {

        v301 = *(v124 + 8);
        (v301)(v152, v153);
      }

      v218 = v153;
      v219 = v261;
      sub_1DEE280F8(v293, v261, type metadata accessor for Message);
      v151(v277, v149, v218);
      v220 = (v273 + 48) & v271;
      v221 = (v248 + v220) & 0xFFFFFFFFFFFFFFF8;
      v222 = (v221 + 23) & 0xFFFFFFFFFFFFFFF8;
      v223 = (v222 + 23) & 0xFFFFFFFFFFFFFFF8;
      v224 = (v223 + *(v289 + 80) + 16) & ~*(v289 + 80);
      v225 = swift_allocObject();
      v227 = v302;
      v226 = v303;
      v225[2] = v298;
      v225[3] = v226;
      v225[4] = v297;
      v225[5] = v227;
      sub_1DEE13A28(v219, v225 + v220, type metadata accessor for Message);
      v228 = (v225 + v221);
      v229 = v286;
      *v228 = v283;
      v228[1] = v229;
      v230 = (v225 + v222);
      v295 = sub_1DEF5BFE0;
      v231 = v300;
      *v230 = sub_1DEF5BFE0;
      v230[1] = v231;
      v232 = (v225 + v223);
      *v232 = v62;
      *(v232 + 1) = v284;
      (v296)(v225 + v224, v277, v218);
      type metadata accessor for Watchdog();
      v233 = swift_allocObject();
      *(v233 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
      v234 = swift_allocObject();
      v235 = v282;
      *(v234 + 16) = 0;
      v236 = (v234 + 16);
      *(v233 + 24) = v234;
      *(v233 + 32) = 0;
      MEMORY[0x1EEE9AC00](v234);
      MEMORY[0x1EEE9AC00](v237);

      os_unfair_lock_lock(v236);
      sub_1DEE3DEF0(v238);
      os_unfair_lock_unlock(v236);

      v239 = v303;
      v240 = v278;
      sub_1DEF587E0(v233, v278, v293, v288, v249, v235, v250, v284, v62, v295, v231, v298, v303, v297, v227, &unk_1F5A21268, sub_1DEF5C580);

      (v301)(v235, v285);
      return (*(v251 + 8))(v240, v239);
    }
  }

  else
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v141 = sub_1DEF8D508();
    __swift_project_value_buffer(v141, qword_1ECDF6010);

    v142 = sub_1DEF8D4D8();
    v143 = sub_1DEF8DC98();

    if (os_log_type_enabled(v142, v143))
    {
      v144 = v68;
      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v305 = v146;
      *v145 = 136446210;
      v147 = sub_1DEE12A5C(v144, v69, &v305);

      *(v145 + 4) = v147;
      _os_log_impl(&dword_1DEE0F000, v142, v143, "Unable to send message to device: %{public}s; no longer associated with account", v145, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v146);
      MEMORY[0x1E12CCD70](v146, -1, -1);
      MEMORY[0x1E12CCD70](v145, -1, -1);
    }

    else
    {
    }

    v164 = v300;
    v166 = v296;
    v165 = v297;
    v167 = v295;
    sub_1DEF4F0B0();
    sub_1DEF5BF8C();
    v168 = swift_allocError();
    *v169 = 1;
    *v167 = v168;
    swift_storeEnumTagMultiPayload();
    (v164)(v167);
    (*(v166 + 1))(v167, v165);
    return (*(v82 + 8))(v51, v83);
  }

  return result;
}

uint64_t sub_1DEF53474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned __int8 **a7, char a8, uint64_t a9, uint64_t a10)
{
  v50 = a5;
  v51 = a7;
  LODWORD(v11) = a6;
  v53 = a4;
  v54 = a1;
  v55 = a2;
  v13 = type metadata accessor for Message(0);
  v49 = *(v13 - 8);
  v14 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v18 = a10;
  v48 = a9;
  v19 = sub_1DEF8D508();
  __swift_project_value_buffer(v19, qword_1ECDF6010);
  sub_1DEE280F8(a3, v17, type metadata accessor for Message);
  v20 = sub_1DEF8D4D8();
  v21 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v46 = v11;
    v11 = v22;
    v23 = swift_slowAlloc();
    v45 = a10;
    v24 = v14;
    v25 = a8;
    v26 = v23;
    v56 = v23;
    *v11 = 136446210;
    v27 = Message.description.getter();
    v47 = a3;
    v29 = v28;
    sub_1DEE274C0(v17, type metadata accessor for Message);
    v30 = sub_1DEE12A5C(v27, v29, &v56);
    a3 = v47;

    *(v11 + 4) = v30;
    _os_log_impl(&dword_1DEE0F000, v20, v21, "Sending message with URL: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v31 = v26;
    a8 = v25;
    v14 = v24;
    v18 = v45;
    MEMORY[0x1E12CCD70](v31, -1, -1);
    v32 = v11;
    LOBYTE(v11) = v46;
    MEMORY[0x1E12CCD70](v32, -1, -1);
  }

  else
  {

    sub_1DEE274C0(v17, type metadata accessor for Message);
  }

  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v58 = v11 & 1;
  v57 = a8;
  v34 = v52;
  sub_1DEE280F8(a3, v52, type metadata accessor for Message);
  v35 = (*(v49 + 80) + 24) & ~*(v49 + 80);
  v36 = (v14 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = a3;
  v38 = swift_allocObject();
  *(v38 + 16) = v33;
  sub_1DEE13A28(v34, v38 + v35, type metadata accessor for Message);
  v39 = (v38 + v36);
  v40 = v48;
  *v39 = v48;
  v39[1] = v18;
  v41 = (v38 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8));
  v42 = v55;
  *v41 = v54;
  v41[1] = v42;

  sub_1DEE2CB00(v40, v18);

  sub_1DEF53ABC(v37, v50, &v58, v51, &v57, sub_1DEF5CFA4, v38);
}

void sub_1DEF53824(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(uint64_t))
{
  v13 = type metadata accessor for Message(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a3 + 16))
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v16 = sub_1DEF8D508();
    __swift_project_value_buffer(v16, qword_1ECDF6010);
    sub_1DEE280F8(a4, v15, type metadata accessor for Message);
    v17 = sub_1DEF8D4D8();
    v18 = sub_1DEF8DC98();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26[0] = v20;
      *v19 = 136446210;
      v21 = Message.description.getter();
      v23 = v22;
      sub_1DEE274C0(v15, type metadata accessor for Message);
      v24 = sub_1DEE12A5C(v21, v23, v26);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1DEE0F000, v17, v18, "Completion handler already called for message with URL: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1E12CCD70](v20, -1, -1);
      MEMORY[0x1E12CCD70](v19, -1, -1);
    }

    else
    {

      sub_1DEE274C0(v15, type metadata accessor for Message);
    }
  }

  else
  {
    v25 = swift_beginAccess();
    *(a3 + 16) = 1;
    if (a5)
    {

      a5(a1, a2 & 1);
      v25 = sub_1DEE3DBD0(a5);
    }

    a7(v25);
  }
}

void sub_1DEF53ABC(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 **a4, unsigned __int8 *a5, unsigned __int8 **a6, void (*a7)(char *, char *, unsigned __int8 *))
{
  v222 = a7;
  v225 = a5;
  v226 = a6;
  v214 = a1;
  v215 = a2;
  v210 = *v7;
  v10 = v210;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v197 = *(v11 - 8);
  v198 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v205 = v181 - v12;
  v13 = type metadata accessor for Message(0);
  v195 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v196 = v14;
  v203 = v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v10 + 10);
  v194 = sub_1DEF8DDC8();
  v192 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v193 = v181 - v16;
  v220 = v15;
  v206 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v204 = v181 - v18;
  v19 = *(v10 + 13);
  v20 = *(v10 + 11);
  v223 = v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v201 = sub_1DEF8DDC8();
  v200 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v209 = v181 - v22;
  v218 = AssociatedTypeWitness;
  v217 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v191 = v181 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v212 = v181 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v202 = v181 - v28;
  v207 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v211 = v181 - v31;
  v224 = v20;
  v32 = *(v20 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v221 = v181 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v181 - v36;
  v38 = sub_1DEF8D788();
  v39 = *(v38 - 8);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = (v181 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = *a3;
  v44 = v7;
  v213 = *v225;
  v45 = v7[2];
  *v42 = v45;
  (*(v39 + 104))(v42, *MEMORY[0x1E69E8020], v38, v40);
  v46 = v45;
  LOBYTE(v45) = sub_1DEF8D7B8();
  (*(v39 + 8))(v42, v38);
  if ((v45 & 1) == 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  v47 = (v44 + *(*v44 + 144));
  v48 = v47[4];
  __swift_project_boxed_opaque_existential_1(v47, v47[3]);
  v49 = *a4;
  v50 = a4[1];
  v219 = a4;
  v51 = *(v48 + 8);
  v225 = v49;
  if (v51())
  {
    a4 = v226;
    if (qword_1ECDE2E50 == -1)
    {
LABEL_4:
      v52 = sub_1DEF8D508();
      __swift_project_value_buffer(v52, qword_1ECDF6010);
      v53 = sub_1DEF8D4D8();
      v54 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_1DEE0F000, v53, v54, "Cannot send messages to remote device ID not in allow list", v55, 2u);
        MEMORY[0x1E12CCD70](v55, -1, -1);
      }

      if (a4)
      {
        sub_1DEF5BF8C();
        v56 = swift_allocError();
        *v57 = 2;
        (a4)(v56, 1);
      }

      return;
    }

LABEL_44:
    swift_once();
    goto LABEL_4;
  }

  v208 = v32;
  if (v43)
  {
    v58 = v219;
    v189 = v219[4] > 0xF;
    v59 = v224;
  }

  else
  {
    v189 = 0;
    v59 = v224;
    v58 = v219;
  }

  v60 = v37;
  LOBYTE(v228) = *(v58 + 48) == 4;
  sub_1DEF4DD2C(&v228, v37);
  (*(v223 + 72))(&v228, v59);
  v61 = v230;
  v62 = v231;
  __swift_project_boxed_opaque_existential_1(&v228, v230);
  v63 = (*(v62 + 32))(v61, v62);
  v64 = *(v63 + 16);
  v216 = v37;
  v190 = v44;
  v199 = v50;
  if (v64)
  {
    v227 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7E08(0, v64, 0);
    v65 = v227;
    v66 = (v63 + 40);
    do
    {
      v67 = *(v66 - 1);
      v68 = *v66;
      v227 = v65;
      v69 = *(v65 + 16);
      v70 = *(v65 + 24);

      if (v69 >= v70 >> 1)
      {
        sub_1DEEC7E08((v70 > 1), v69 + 1, 1);
        v65 = v227;
      }

      *(v65 + 16) = v69 + 1;
      v71 = v65 + 16 * v69;
      *(v71 + 32) = v67;
      *(v71 + 40) = v68;
      v66 += 2;
      --v64;
    }

    while (v64);

    v72 = v224;
    v60 = v216;
    v44 = v190;
    v50 = v199;
  }

  else
  {
    v72 = v59;

    v65 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(&v228);
  v73 = sub_1DEEA3AD8(v65);

  v74 = v225;
  v75 = sub_1DEF01E3C(v225, v50, v73);

  v76 = v208;
  v77 = v226;
  if (v75)
  {
    v78 = *(v208 + 16);
    v183 = v208 + 16;
    v182 = v78;
    v78(v221, v60, v72);
    v79 = *(v76 + 80);
    v80 = (v79 + 72) & ~v79;
    v185 = v79;
    v184 = v33 + 7;
    v186 = v79 | 7;
    v81 = swift_allocObject();
    *(v81 + 2) = v220;
    *(v81 + 3) = v72;
    v188 = *(v210 + 12);
    v82 = v223;
    *(v81 + 4) = v188;
    *(v81 + 5) = v82;
    *(v81 + 6) = v44;
    *(v81 + 7) = v77;
    v83 = v221;
    v84 = v222;
    *(v81 + 8) = v222;
    v187 = *(v76 + 32);
    v181[1] = v76 + 32;
    v187(&v81[v80], v83, v72);
    v210 = v81;
    v85 = &v81[(v33 + 7 + v80) & 0xFFFFFFFFFFFFFFF8];
    v86 = v216;
    v87 = v225;
    *v85 = v225;
    v85[1] = v50;
    v88 = v50;
    v89 = *(v82 + 120);

    sub_1DEE2CB00(v77, v84);
    v90 = v209;
    v89(v87, v88, v72, v82);
    v91 = v217;
    v92 = v218;
    if ((*(v217 + 6))(v90, 1, v218) == 1)
    {
      (*(v200 + 8))(v90, v201);
      v93 = *(v82 + 64);
      (v93)(&v228, v72, v82);
      v94 = v212;
      if (v228 == 1)
      {
        (*(v82 + 104))(v225, v199, v72, v82);
        LOBYTE(v228) = v213;
        v95 = v191;
        (*(v91 + 2))(v191, v94, v92);
        v96 = (*(v91 + 80) + 64) & ~*(v91 + 80);
        v97 = v91;
        v98 = swift_allocObject();
        *(v98 + 2) = v220;
        *(v98 + 3) = v72;
        *(v98 + 4) = v188;
        *(v98 + 5) = v82;
        v99 = v210;
        *(v98 + 6) = sub_1DEF5D068;
        *(v98 + 7) = v99;
        (*(v97 + 4))(&v98[v96], v95, v92);
        v100 = v86;
        v101 = *(v82 + 128);

        v101(v214, v215, v189, v94, &v228, sub_1DEF5D820, v98, v72, v82);

        (*(v97 + 1))(v94, v92);
        (*(v208 + 8))(v100, v72);
      }

      else
      {
        v218 = v93;
        v134 = v199;
        if (qword_1ECDE2E50 != -1)
        {
          swift_once();
        }

        v135 = sub_1DEF8D508();
        __swift_project_value_buffer(v135, qword_1ECDF6010);

        v136 = sub_1DEF8D4D8();
        v137 = sub_1DEF8DCB8();

        v138 = os_log_type_enabled(v136, v137);
        v139 = v225;
        if (v138)
        {
          v140 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v228 = v141;
          *v140 = 136446210;
          *(v140 + 4) = sub_1DEE12A5C(v139, v134, &v228);
          _os_log_impl(&dword_1DEE0F000, v136, v137, "Using browser to find %{public}s", v140, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v141);
          MEMORY[0x1E12CCD70](v141, -1, -1);
          MEMORY[0x1E12CCD70](v140, -1, -1);
        }

        v142 = v193;
        v143 = v192;
        v144 = v194;
        (*(v192 + 16))(v193, v190 + *(*v190 + 128), v194);
        v145 = v206;
        v146 = v220;
        if ((*(v206 + 48))(v142, 1, v220) == 1)
        {
          (*(v143 + 8))(v142, v144);
          v228 = 0;
          v229 = 0xE000000000000000;
          sub_1DEF8DF28();

          v228 = 0xD000000000000028;
          v229 = 0x80000001DEF9E0B0;
          (v218)(&v227, v72, v223);
          if (v227)
          {
            v180 = 0x73756E696D726574;
          }

          else
          {
            v180 = 0x647261646E617473;
          }

          MEMORY[0x1E12CB180](v180, 0xE800000000000000);

          sub_1DEF8E0F8();
          __break(1u);
        }

        else
        {
          v147 = v185;
          (*(v145 + 32))(v204, v142, v146);
          v148 = v219[21];
          v218 = v219[20];
          v219 = v148;
          v182(v221, v216, v72);
          v217 = type metadata accessor for Message;
          sub_1DEE280F8(v214, v203, type metadata accessor for Message);
          sub_1DEE17214(v215, v205, &qword_1ECDE4890, &qword_1DEF90990);
          v149 = (v147 + 64) & ~v147;
          v150 = (v184 + v149) & 0xFFFFFFFFFFFFFFF8;
          v151 = (v150 + *(v195 + 80) + 16) & ~*(v195 + 80);
          v152 = (v196 + *(v197 + 80) + v151) & ~*(v197 + 80);
          v153 = v152 + v198;
          v154 = v146;
          v155 = (v152 + v198 + 9) & 0xFFFFFFFFFFFFFFF8;
          v156 = swift_allocObject();
          *(v156 + 2) = v154;
          *(v156 + 3) = v72;
          v157 = v72;
          v158 = v188;
          v159 = v223;
          *(v156 + 4) = v188;
          *(v156 + 5) = v159;
          v160 = v199;
          *(v156 + 6) = v225;
          *(v156 + 7) = v160;
          v187(&v156[v149], v221, v157);
          v161 = &v156[v150];
          v162 = v226;
          v163 = v222;
          *v161 = v226;
          v161[1] = v163;
          sub_1DEE13A28(v203, &v156[v151], v217);
          sub_1DEE1BA88(v205, &v156[v152], &qword_1ECDE4890, &qword_1DEF90990);
          v164 = &v156[v153];
          *v164 = v189;
          v164[1] = v213;
          v165 = &v156[v155];
          v166 = v210;
          *v165 = sub_1DEF5D068;
          v165[1] = v166;
          v167 = *(v158 + 16);

          sub_1DEE2CB00(v162, v163);

          v168 = v160;
          v169 = v204;
          v170 = v220;
          v167(v225, v168, v218, v219, sub_1DEF5D100, v156, v220, v158, 30.0);

          (*(v206 + 8))(v169, v170);
          (*(v208 + 8))(v216, v224);
        }
      }
    }

    else
    {
      v112 = *(v91 + 4);
      v113 = v211;
      v226 = (v91 + 32);
      v222 = v112;
      v112(v211, v90, v92);
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v114 = sub_1DEF8D508();
      __swift_project_value_buffer(v114, qword_1ECDF6010);
      v115 = *(v91 + 2);
      v116 = v202;
      v115(v202, v113, v92);
      v117 = v199;

      v118 = v91;
      v119 = sub_1DEF8D4D8();
      v120 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v119, v120))
      {
        v121 = v118;
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v221 = v115;
        v124 = v123;
        v228 = v123;
        *v122 = 136446466;
        *(v122 + 4) = sub_1DEE12A5C(v225, v117, &v228);
        *(v122 + 12) = 2082;
        v125 = v212;
        (v221)(v212, v116, v92);
        v126 = sub_1DEF8D988();
        v128 = v127;
        v225 = *(v121 + 1);
        (v225)(v116, v218);
        v129 = sub_1DEE12A5C(v126, v128, &v228);

        *(v122 + 14) = v129;
        v92 = v218;
        _os_log_impl(&dword_1DEE0F000, v119, v120, "Connection for %{public}s already exists; sending message immediately: %{public}s", v122, 0x16u);
        swift_arrayDestroy();
        v130 = v124;
        v115 = v221;
        MEMORY[0x1E12CCD70](v130, -1, -1);
        MEMORY[0x1E12CCD70](v122, -1, -1);

        v131 = v217;
      }

      else
      {

        v225 = *(v118 + 1);
        (v225)(v116, v92);
        v125 = v212;
        v131 = v118;
      }

      LOBYTE(v228) = v213;
      v171 = v211;
      v115(v125, v211, v92);
      v172 = (*(v131 + 80) + 64) & ~*(v131 + 80);
      v173 = swift_allocObject();
      v174 = v92;
      v176 = v223;
      v175 = v224;
      *(v173 + 2) = v220;
      *(v173 + 3) = v175;
      *(v173 + 4) = v188;
      *(v173 + 5) = v176;
      v177 = v210;
      *(v173 + 6) = sub_1DEF5D068;
      *(v173 + 7) = v177;
      v222(&v173[v172], v125, v174);
      v178 = *(v176 + 128);

      v179 = v216;
      v178(v214, v215, v189, v171, &v228, sub_1DEF5D820, v173, v175, v176);

      (v225)(v171, v174);
      (*(v208 + 8))(v179, v175);
    }
  }

  else
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v102 = sub_1DEF8D508();
    __swift_project_value_buffer(v102, qword_1ECDF6010);

    v103 = sub_1DEF8D4D8();
    v104 = sub_1DEF8DC98();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = v74;
      v106 = v50;
      v107 = swift_slowAlloc();
      v108 = v60;
      v109 = swift_slowAlloc();
      v228 = v109;
      *v107 = 136446210;
      v110 = sub_1DEE12A5C(v105, v106, &v228);

      *(v107 + 4) = v110;
      _os_log_impl(&dword_1DEE0F000, v103, v104, "Unable to send message to device: %{public}s; no longer associated with account", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v109);
      v111 = v109;
      v60 = v108;
      MEMORY[0x1E12CCD70](v111, -1, -1);
      MEMORY[0x1E12CCD70](v107, -1, -1);
    }

    else
    {
    }

    sub_1DEF4F0B0();
    if (v77)
    {
      sub_1DEF5BF8C();
      v132 = swift_allocError();
      *v133 = 1;
      (v77)(v132, 1);
    }

    (*(v76 + 8))(v60, v72);
  }
}

uint64_t sub_1DEF551AC()
{
  sub_1DEF5BBC8();
}

uint64_t (*sub_1DEF551E4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1DEF4DF7C();
  return sub_1DEF5522C;
}

uint64_t sub_1DEF5522C(uint64_t *a1, char a2)
{
  if (a2)
  {

    sub_1DEF5BBC8();
  }

  else
  {
    sub_1DEF5BBC8();
  }
}

uint64_t sub_1DEF552A8(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a7;
  v36 = a1;
  v43 = a5;
  v44 = a6;
  v9 = a4;
  v38 = a3;
  v42 = a2;
  v39 = a9;
  v40 = a8;
  v10 = *a4;
  v37 = *(*a4 + 104);
  v11 = v10[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v33 - v15;
  v34 = &v33 - v15;
  v17 = *(v11 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - v21;
  v41 = *(v9 + 16);
  (*(v17 + 16))(&v33 - v21, v35, v11, v20);
  (*(v13 + 16))(v16, v36, AssociatedTypeWitness);
  v23 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v24 = (v18 + *(v13 + 80) + v23) & ~*(v13 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v10[10];
  *(v25 + 24) = v11;
  *(v25 + 32) = v10[12];
  v26 = v42;
  *(v25 + 40) = v37;
  *(v25 + 48) = v26;
  LOBYTE(v9) = v38 & 1;
  *(v25 + 56) = v38 & 1;
  v27 = v44;
  *(v25 + 64) = v43;
  *(v25 + 72) = v27;
  (*(v17 + 32))(v25 + v23, v22, v11);
  (*(v13 + 32))(v25 + v24, v34, v33);
  v28 = (v25 + ((v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v29 = v39;
  *v28 = v40;
  v28[1] = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1DEF5D43C;
  *(v30 + 24) = v25;
  aBlock[4] = sub_1DEE13B20;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_82;
  v31 = _Block_copy(aBlock);
  sub_1DEE39150(v42, v9);
  sub_1DEE2CB00(v43, v44);

  dispatch_sync(v41, v31);
  _Block_release(v31);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }

  return result;
}

void sub_1DEF55664(void *a1, char a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a2 & 1) == 0)
  {
    if (!a3)
    {
      return;
    }

    v27 = 1;
    v28 = 0;
    goto LABEL_16;
  }

  v32 = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  if (swift_dynamicCast())
  {
    (*(a12 + 112))(a6, a10);
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v18 = sub_1DEF8D508();
    __swift_project_value_buffer(v18, qword_1ECDF6010);
    sub_1DEE39150(a1, 1);

    v19 = sub_1DEF8D4D8();
    v20 = sub_1DEF8DC98();

    sub_1DEE39214(a1, 1);
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_14;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v21 = 136446466;
    *(v21 + 4) = sub_1DEE12A5C(a7, a8, &v32);
    *(v21 + 12) = 2112;
    v24 = a1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v25;
    *v22 = v25;
    v26 = "Could not send message to %{public}s with error %@; discarding connection and giving up";
  }

  else
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v29 = sub_1DEF8D508();
    __swift_project_value_buffer(v29, qword_1ECDF6010);
    sub_1DEE39150(a1, 1);

    v19 = sub_1DEF8D4D8();
    v20 = sub_1DEF8DC98();

    sub_1DEE39214(a1, 1);
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_14;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v21 = 136446466;
    *(v21 + 4) = sub_1DEE12A5C(a7, a8, &v32);
    *(v21 + 12) = 2112;
    v30 = a1;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v31;
    *v22 = v31;
    v26 = "Could not send message to %{public}s with error %@; abandoning send attempts";
  }

  _os_log_impl(&dword_1DEE0F000, v19, v20, v26, v21, 0x16u);
  sub_1DEE171B4(v22, &unk_1ECDE4880, &qword_1DEF93420);
  MEMORY[0x1E12CCD70](v22, -1, -1);
  __swift_destroy_boxed_opaque_existential_1(v23);
  MEMORY[0x1E12CCD70](v23, -1, -1);
  MEMORY[0x1E12CCD70](v21, -1, -1);
LABEL_14:

  if (!a3)
  {
    return;
  }

  v27 = a1;
  v28 = 1;
LABEL_16:
  a3(v27, v28);
}

void sub_1DEF559E0(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, void (*a6)(void *, uint64_t), uint64_t a7, uint64_t a8, void *a9, unsigned __int8 a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v135 = a8;
  v147 = a5;
  v148 = a7;
  v151 = a6;
  v152 = a2;
  v138 = a4;
  v144 = a3;
  v145 = a17;
  v146 = a15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v142 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v131 = v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v134 = v123 - v21;
  v130 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v137 = v123 - v24;
  v140 = v25;
  v143 = sub_1DEF8DDC8();
  v141 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v139 = v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v129 = v123 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v123 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v150 = v123 - v33;
  v133 = a16;
  v132 = a14;
  v34 = swift_getAssociatedTypeWitness();
  v136 = type metadata accessor for NetworkDevice(0, v34, v35, v36);
  v128 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v38 = v123 - v37;
  v41 = type metadata accessor for NetworkBrowsingEvent(0, v34, v39, v40);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = v123 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = v123 - v46;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v48 = sub_1DEF8E808();
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = (v123 - v50);
  (*(v52 + 16))(v123 - v50, a1, v48, v49);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = *v51;
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v54 = sub_1DEF8D508();
    __swift_project_value_buffer(v54, qword_1ECDF6010);
    v55 = v53;
    v56 = sub_1DEF8D4D8();
    v57 = sub_1DEF8DC98();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v153 = v53;
      v154 = v59;
      *v58 = 136446210;
      v60 = v53;
      v61 = sub_1DEF8D988();
      v63 = sub_1DEE12A5C(v61, v62, &v154);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_1DEE0F000, v56, v57, "Failed to discover endpoint: %{public}s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x1E12CCD70](v59, -1, -1);
      MEMORY[0x1E12CCD70](v58, -1, -1);
    }

    v64 = v151;
    if (v152)
    {
      [v152 invalidate];
    }

    if (v64)
    {
      v65 = v53;
      v64(v53, 1);
    }
  }

  else
  {
    (*(v42 + 32))(v47, v51, v41);
    v66 = *v47;
    v149 = v41;
    if (v66)
    {
      if (v152)
      {
        [v152 invalidate];
      }

      v67 = v151;
      if (v151)
      {
        sub_1DEF5BF8C();
        v68 = swift_allocError();
        *v69 = 0;
        v67(v68, 1);
      }

      (*(v42 + 8))(v47, v149);
    }

    else
    {
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v70 = sub_1DEF8D508();
      v71 = __swift_project_value_buffer(v70, qword_1ECDF6010);
      (*(v42 + 16))(v44, v47, v149);
      v72 = v138;

      v123[1] = v71;
      v73 = sub_1DEF8D4D8();
      v74 = sub_1DEF8DCB8();

      v75 = os_log_type_enabled(v73, v74);
      v76 = v144;
      v126 = v42;
      v127 = v47;
      if (v75)
      {
        v77 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v154 = v125;
        *v77 = 136446466;
        *(v77 + 4) = sub_1DEE12A5C(v76, v72, &v154);
        *(v77 + 12) = 2082;
        v78 = v149;
        v79 = *(v128 + 16);
        v80 = &v44[*(v149 + 28)];
        LODWORD(v124) = v74;
        v79(v38, v80, v136);
        v81 = sub_1DEF8D988();
        v83 = v82;
        v84 = v78;
        v76 = v144;
        v128 = *(v42 + 8);
        (v128)(v44, v84);
        v85 = sub_1DEE12A5C(v81, v83, &v154);

        *(v77 + 14) = v85;
        _os_log_impl(&dword_1DEE0F000, v73, v124, "Device for %{public}s discovered; sending message to %{public}s", v77, 0x16u);
        v86 = v125;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v86, -1, -1);
        MEMORY[0x1E12CCD70](v77, -1, -1);
      }

      else
      {

        v128 = *(v42 + 8);
        (v128)(v44, v149);
      }

      v87 = v141;
      v88 = v142;
      v89 = v150;
      v90 = v140;
      v124 = *(v142 + 56);
      v124(v150, 1, 1, v140);
      (*(v145 + 120))(v76, v72, v146);
      v125 = *(v88 + 48);
      if ((v125)(v31, 1, v90) == 1)
      {
        v91 = v31;
        v92 = v143;
        v138 = *(v87 + 8);
        v138(v91, v143);

        v93 = sub_1DEF8D4D8();
        v94 = sub_1DEF8DCB8();

        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v154 = v96;
          *v95 = 136446210;
          *(v95 + 4) = sub_1DEE12A5C(v144, v72, &v154);
          _os_log_impl(&dword_1DEE0F000, v93, v94, "Connection for %{public}s does not exist; creating new connection...", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v96);
          v97 = v96;
          v92 = v143;
          MEMORY[0x1E12CCD70](v97, -1, -1);
          v98 = v95;
          v89 = v150;
          MEMORY[0x1E12CCD70](v98, -1, -1);
        }

        v99 = v129;
        (*(v145 + 96))(&v127[*(v149 + 28) + *(v136 + 32)], v146);
        v100 = v138;
        v138(v89, v92);
        v124(v99, 0, 1, v90);
        (*(v87 + 32))(v89, v99, v92);
      }

      else
      {
        v138 = *(v88 + 32);
        (v138)(v137, v31, v90);

        v101 = sub_1DEF8D4D8();
        v102 = sub_1DEF8DCB8();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v154 = v104;
          *v103 = 136446210;
          *(v103 + 4) = sub_1DEE12A5C(v144, v72, &v154);
          _os_log_impl(&dword_1DEE0F000, v101, v102, "Connection for %{public}s already exists; using existing connection...", v103, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v104);
          MEMORY[0x1E12CCD70](v104, -1, -1);
          v105 = v103;
          v89 = v150;
          MEMORY[0x1E12CCD70](v105, -1, -1);
        }

        v100 = *(v87 + 8);
        v92 = v143;
        v100(v89, v143);
        (v138)(v89, v137, v90);
        v124(v89, 0, 1, v90);
      }

      v106 = v139;
      if (v152)
      {
        [v152 invalidate];
      }

      (*(v87 + 16))(v106, v89, v92);
      if ((v125)(v106, 1, v90) == 1)
      {
        v100(v106, v92);
        v107 = v151;
        if (v151)
        {
          sub_1DEF2ED44();
          v108 = swift_allocError();
          *v109 = 0;
          v107(v108, 1);
        }

        v100(v150, v92);
      }

      else
      {
        v152 = a9;
        v148 = a12;
        LODWORD(v151) = a10;
        v110 = v142;
        v111 = *(v142 + 32);
        v112 = v134;
        v111(v134, v106, v90);
        LOBYTE(v154) = a11;
        v113 = *(v110 + 16);
        v138 = v100;
        v114 = v131;
        v113(v131, v112, v90);
        v115 = (*(v110 + 80) + 64) & ~*(v110 + 80);
        v116 = swift_allocObject();
        v117 = v90;
        v118 = v145;
        v119 = v146;
        v116[2] = v132;
        v116[3] = v119;
        v116[4] = v133;
        v116[5] = v118;
        v116[6] = v148;
        v116[7] = a13;
        v120 = v114;
        v121 = v117;
        (v111)(v116 + v115, v120);
        v122 = *(v118 + 128);

        v122(v135, v152, v151 & 1, v112, &v154, sub_1DEF5D3A0, v116, v119, v118);

        (*(v110 + 8))(v112, v121);
        v138(v150, v143);
      }

      (v128)(v127, v149);
    }
  }
}

uint64_t sub_1DEF56868(uint64_t *a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t a1), unint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t a1), unsigned __int8 a12, uint64_t a13, unsigned __int8 a14)
{
  v80 = a8;
  v86 = a7;
  v90 = a6;
  v89 = a5;
  v81 = a3;
  v82 = a2;
  v94 = a12;
  v95 = a14;
  v92 = a10;
  v91 = a9;
  v84 = a13;
  v87 = a11;
  v16 = *a4;
  v98 = sub_1DEF8D698();
  v100 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1DEF8D6D8();
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v93 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DeviceDescriptor(0);
  v85 = *(v19 - 8);
  v83 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v104 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v79 = *(v21 - 8);
  v78 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v103 = &v64 - v22;
  v23 = type metadata accessor for Message(0);
  v75 = *(v23 - 8);
  v74 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v102 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v16;
  v25 = *(v16 + 88);
  v101 = *(v25 - 8);
  v73 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v64 - v27;
  v71 = &v64 - v27;
  v77 = *(v29 + 104);
  v66 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = sub_1DEF8DDC8();
  v69 = v31;
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v64 - v34;
  v70 = &v64 - v34;
  type metadata accessor for IncomingNetworkMessage(255, AssociatedTypeWitness, v36, v37);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v67 = sub_1DEF8E808();
  v38 = *(v67 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x1EEE9AC00](v67);
  v68 = &v64 - v41;
  v42 = *a1;
  v72 = a1[1];
  v88 = a4[2];
  (*(v38 + 16))(v40);
  v43 = v32;
  v65 = v32;
  (*(v32 + 16))(v35, v82, v31);
  v44 = v101;
  (*(v101 + 16))(v28, v86, v25);
  v86 = type metadata accessor for Message;
  sub_1DEE280F8(v80, v102, type metadata accessor for Message);
  sub_1DEE17214(v87, v103, &qword_1ECDE4890, &qword_1DEF90990);
  v87 = type metadata accessor for DeviceDescriptor;
  sub_1DEE280F8(v84, v104, type metadata accessor for DeviceDescriptor);
  v45 = (*(v38 + 80) + 48) & ~*(v38 + 80);
  v46 = (v39 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (*(v43 + 80) + v46 + 16) & ~*(v43 + 80);
  v48 = (v33 + *(v44 + 80) + v47) & ~*(v44 + 80);
  v49 = (v73 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (*(v75 + 80) + v49 + 16) & ~*(v75 + 80);
  v82 = (v74 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v82 + 23) & 0xFFFFFFFFFFFFFFF8;
  v80 = (*(v79 + 80) + v81 + 8) & ~*(v79 + 80);
  v84 = v80 + v78;
  v85 = (*(v85 + 80) + v80 + v78 + 1) & ~*(v85 + 80);
  v83 += v85;
  v51 = swift_allocObject();
  v52 = v66;
  v53 = v76;
  *(v51 + 2) = *(v76 + 80);
  *(v51 + 3) = v25;
  *(v51 + 4) = *(v53 + 96);
  *(v51 + 5) = v77;
  (*(v38 + 32))(&v51[v45], v68, v67);
  v54 = &v51[v46];
  v55 = v90;
  *v54 = v89;
  v54[1] = v55;
  (*(v65 + 32))(&v51[v47], v70, v69);
  (*(v101 + 32))(&v51[v48], v71, v25);
  v56 = &v51[v49];
  *v56 = v42;
  *(v56 + 1) = v72;
  sub_1DEE13A28(v102, &v51[v50], v86);
  v57 = &v51[v82];
  v58 = v92;
  *v57 = v91;
  v57[1] = v58;
  *&v51[v81] = v52;
  sub_1DEE1BA88(v103, &v51[v80], &qword_1ECDE4890, &qword_1DEF90990);
  v51[v84] = v94 & 1;
  sub_1DEE13A28(v104, &v51[v85], v87);
  v51[v83] = v95;
  aBlock[4] = sub_1DEF5CA84;
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_19;
  v59 = _Block_copy(aBlock);

  v60 = v93;
  sub_1DEF8D6B8();
  v105 = MEMORY[0x1E69E7CC0];
  sub_1DEF5D72C(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  v61 = v96;
  v62 = v98;
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v60, v61, v59);
  _Block_release(v59);
  (*(v100 + 8))(v61, v62);
  (*(v97 + 8))(v60, v99);
}

void sub_1DEF57320(uint64_t a1, char *a2, uint64_t (*a3)(), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, unint64_t a10, void *a11, uint64_t a12, unsigned __int8 a13, uint64_t *a14, unsigned __int8 a15)
{
  v146 = a8;
  v148 = a6;
  v149 = a7;
  v139 = a5;
  v144 = a4;
  v150 = a2;
  v18 = *a11;
  v19 = type metadata accessor for Message(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v135 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v140 = &v128 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v136 = &v128 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v145 = &v128 - v26;
  v27 = *(v18 + 104);
  v147 = a11;
  v137 = *(v18 + 88);
  v138 = v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = sub_1DEF8DDC8();
  v142 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v128 - v30;
  v143 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v128 - v33;
  type metadata accessor for IncomingNetworkMessage(255, AssociatedTypeWitness, v35, v36);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v37 = sub_1DEF8E808();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v141 = (&v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = (&v128 - v42);
  (*(v38 + 16))(&v128 - v42, a1, v37, v41);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v150)(a1);
    (*(v38 + 8))(v43, v37);
    return;
  }

  v129 = v38;
  v130 = v37;
  v134 = a3;
  v133 = a15;
  v132 = a13;
  v151 = *v43;
  v44 = v151;
  v45 = v151;
  if (!swift_dynamicCast())
  {
    v49 = v148 - 1;
    if (v148 >= 1)
    {
      v135 = a12;
      v131 = a14;
      v50 = v149;
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v51 = sub_1DEF8D508();
      __swift_project_value_buffer(v51, qword_1ECDF6010);
      v52 = v140;
      sub_1DEE280F8(v50, v140, type metadata accessor for Message);
      v53 = v44;

      v54 = sub_1DEF8D4D8();
      v55 = sub_1DEF8DC98();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v148 = v49;
        v58 = v57;
        v59 = swift_slowAlloc();
        v151 = v59;
        *v56 = 136446722;
        sub_1DEF8D3F8();
        sub_1DEF5D72C(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v60 = sub_1DEF8E2E8();
        v62 = v61;
        sub_1DEE274C0(v52, type metadata accessor for Message);
        v63 = sub_1DEE12A5C(v60, v62, &v151);

        *(v56 + 4) = v63;
        *(v56 + 12) = 2082;
        *(v56 + 14) = sub_1DEE12A5C(v146, a10, &v151);
        *(v56 + 22) = 2112;
        v64 = v44;
        v65 = _swift_stdlib_bridgeErrorToNSError();
        *(v56 + 24) = v65;
        *v58 = v65;
        _os_log_impl(&dword_1DEE0F000, v54, v55, "Could not send message %{public}s to %{public}s with error %@; retrying", v56, 0x20u);
        sub_1DEE171B4(v58, &unk_1ECDE4880, &qword_1DEF93420);
        v66 = v58;
        v49 = v148;
        MEMORY[0x1E12CCD70](v66, -1, -1);
        swift_arrayDestroy();
        v67 = v59;
        v50 = v149;
        MEMORY[0x1E12CCD70](v67, -1, -1);
        MEMORY[0x1E12CCD70](v56, -1, -1);
      }

      else
      {

        sub_1DEE274C0(v52, type metadata accessor for Message);
      }

      v123 = v134;
      v124 = v131;
      v154[0] = v132 & 1;
      v153 = v133;
      v151 = *&a9;
      v152 = v49;
      v125 = v50;
      v126 = v135;
      v127 = v150;
      goto LABEL_32;
    }

    v87 = v149;
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v88 = sub_1DEF8D508();
    __swift_project_value_buffer(v88, qword_1ECDF6010);
    v89 = v135;
    sub_1DEE280F8(v87, v135, type metadata accessor for Message);
    v90 = v44;

    v91 = sub_1DEF8D4D8();
    v92 = sub_1DEF8DC98();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v95 = v44;
      v96 = swift_slowAlloc();
      v151 = v96;
      *v93 = 136446722;
      sub_1DEF8D3F8();
      sub_1DEF5D72C(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v97 = sub_1DEF8E2E8();
      v99 = v98;
      sub_1DEE274C0(v89, type metadata accessor for Message);
      v100 = sub_1DEE12A5C(v97, v99, &v151);

      *(v93 + 4) = v100;
      *(v93 + 12) = 2082;
      *(v93 + 14) = sub_1DEE12A5C(v146, a10, &v151);
      *(v93 + 22) = 2112;
      v101 = v95;
      v102 = _swift_stdlib_bridgeErrorToNSError();
      *(v93 + 24) = v102;
      *v94 = v102;
      _os_log_impl(&dword_1DEE0F000, v91, v92, "Could not send message %{public}s to %{public}s with error %@; abandoning send attempt", v93, 0x20u);
      sub_1DEE171B4(v94, &unk_1ECDE4880, &qword_1DEF93420);
      MEMORY[0x1E12CCD70](v94, -1, -1);
      swift_arrayDestroy();
      v103 = v96;
      v44 = v95;
      MEMORY[0x1E12CCD70](v103, -1, -1);
      v104 = v93;
LABEL_25:
      MEMORY[0x1E12CCD70](v104, -1, -1);

LABEL_27:
      v119 = v130;
      v120 = v129;
      v121 = v141;
      *v141 = v44;
      swift_storeEnumTagMultiPayload();
      v122 = v44;
      (v150)(v121);

      (*(v120 + 8))(v121, v119);
      return;
    }

LABEL_26:

    sub_1DEE274C0(v89, type metadata accessor for Message);
    goto LABEL_27;
  }

  v135 = a12;
  v46 = v142;
  (*(v142 + 16))(v31, v144, v29);
  v47 = v143;
  v48 = (*(v143 + 48))(v31, 1, AssociatedTypeWitness);
  v131 = a14;
  if (v48 == 1)
  {
    (*(v46 + 8))(v31, v29);
  }

  else
  {
    (*(v47 + 32))(v34, v31, AssociatedTypeWitness);
    (*(v138 + 112))(v34, v137);
    (*(v47 + 8))(v34, AssociatedTypeWitness);
  }

  v68 = v149;
  v69 = v145;
  v70 = v148 - 1;
  if (v148 < 1)
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v105 = sub_1DEF8D508();
    __swift_project_value_buffer(v105, qword_1ECDF6010);
    v89 = v136;
    sub_1DEE280F8(v68, v136, type metadata accessor for Message);
    v106 = v44;

    v91 = sub_1DEF8D4D8();
    v107 = sub_1DEF8DC98();

    if (os_log_type_enabled(v91, v107))
    {
      v108 = swift_slowAlloc();
      v109 = v44;
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v151 = v111;
      *v108 = 136446722;
      sub_1DEF8D3F8();
      sub_1DEF5D72C(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v112 = sub_1DEF8E2E8();
      v114 = v113;
      sub_1DEE274C0(v89, type metadata accessor for Message);
      v115 = sub_1DEE12A5C(v112, v114, &v151);

      *(v108 + 4) = v115;
      *(v108 + 12) = 2082;
      *(v108 + 14) = sub_1DEE12A5C(v146, a10, &v151);
      *(v108 + 22) = 2112;
      v116 = v109;
      v117 = _swift_stdlib_bridgeErrorToNSError();
      *(v108 + 24) = v117;
      *v110 = v117;
      _os_log_impl(&dword_1DEE0F000, v91, v107, "Could not send message %{public}s to %{public}s with error %@; discarding connection and giving up", v108, 0x20u);
      sub_1DEE171B4(v110, &unk_1ECDE4880, &qword_1DEF93420);
      v118 = v110;
      v44 = v109;
      MEMORY[0x1E12CCD70](v118, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v111, -1, -1);
      v104 = v108;
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v71 = sub_1DEF8D508();
  __swift_project_value_buffer(v71, qword_1ECDF6010);
  sub_1DEE280F8(v68, v69, type metadata accessor for Message);
  v72 = v44;

  v73 = sub_1DEF8D4D8();
  v74 = sub_1DEF8DC98();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = v44;
    v77 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v151 = v148;
    *v75 = 136446722;
    sub_1DEF8D3F8();
    v78 = v70;
    sub_1DEF5D72C(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v79 = sub_1DEF8E2E8();
    v81 = v80;
    sub_1DEE274C0(v69, type metadata accessor for Message);
    v82 = sub_1DEE12A5C(v79, v81, &v151);
    v70 = v78;

    *(v75 + 4) = v82;
    *(v75 + 12) = 2082;
    *(v75 + 14) = sub_1DEE12A5C(v146, a10, &v151);
    *(v75 + 22) = 2112;
    v83 = v76;
    v84 = _swift_stdlib_bridgeErrorToNSError();
    *(v75 + 24) = v84;
    *v77 = v84;
    _os_log_impl(&dword_1DEE0F000, v73, v74, "Could not send message %{public}s to %{public}s with error %@; discarding connection and retrying", v75, 0x20u);
    sub_1DEE171B4(v77, &unk_1ECDE4880, &qword_1DEF93420);
    v85 = v77;
    v44 = v76;
    MEMORY[0x1E12CCD70](v85, -1, -1);
    v86 = v148;
    swift_arrayDestroy();
    v68 = v149;
    MEMORY[0x1E12CCD70](v86, -1, -1);
    MEMORY[0x1E12CCD70](v75, -1, -1);
  }

  else
  {

    sub_1DEE274C0(v69, type metadata accessor for Message);
  }

  v127 = v150;
  v123 = v134;
  v124 = v131;
  v154[0] = v132 & 1;
  v153 = v133;
  v151 = *&a9;
  v152 = v70;
  v125 = v68;
  v126 = v135;
LABEL_32:
  sub_1DEF51494(v125, v126, v154, v124, &v153, &v151, v127, v123);
}

uint64_t sub_1DEF582CC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t *, char *, uint64_t *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v51 = a9;
  v53 = a6;
  v47 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IncomingNetworkMessage(255, AssociatedTypeWitness, v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v52 = sub_1DEF8E808();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v22 = (&v44 - v21);
  v23 = sub_1DEF8DDC8();
  v48 = *(v23 - 8);
  v49 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - v24;
  v26 = type metadata accessor for Message(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v29 = sub_1DEF8D508();
  __swift_project_value_buffer(v29, qword_1ECDF6010);
  sub_1DEE280F8(a3, v28, type metadata accessor for Message);

  v30 = sub_1DEF8D4D8();
  v31 = sub_1DEF8DC98();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v46 = a7;
    v33 = v32;
    v44 = swift_slowAlloc();
    v54[0] = v44;
    *v33 = 136446466;
    sub_1DEF8D3F8();
    v45 = a8;
    sub_1DEF5D72C(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v34 = sub_1DEF8E2E8();
    v36 = v35;
    sub_1DEE274C0(v28, type metadata accessor for Message);
    v37 = sub_1DEE12A5C(v34, v36, v54);

    *(v33 + 4) = v37;
    a8 = v45;
    *(v33 + 12) = 2082;
    *(v33 + 14) = sub_1DEE12A5C(v47, a5, v54);
    _os_log_impl(&dword_1DEE0F000, v30, v31, "Timeout when sending message %{public}s to %{public}s", v33, 0x16u);
    v38 = v44;
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v38, -1, -1);
    MEMORY[0x1E12CCD70](v33, -1, -1);
  }

  else
  {

    sub_1DEE274C0(v28, type metadata accessor for Message);
  }

  *v54 = a1;
  v54[1] = a8;
  v39 = *(AssociatedTypeWitness - 8);
  (*(v39 + 16))(v25, v51, AssociatedTypeWitness);
  (*(v39 + 56))(v25, 0, 1, AssociatedTypeWitness);
  sub_1DEF2ED44();
  v40 = swift_allocError();
  *v41 = 0;
  *v22 = v40;
  v42 = v52;
  swift_storeEnumTagMultiPayload();
  v53(v54, v25, v22);
  (*(v50 + 8))(v22, v42);
  return (*(v48 + 8))(v25, v49);
}

uint64_t sub_1DEF587E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v38 = a8;
  v40 = a7;
  v51 = a5;
  v49 = a2;
  v50 = a4;
  v52 = a3;
  v46 = a10;
  v47 = a1;
  v48 = a17;
  v41 = a6;
  v42 = a16;
  v44 = a14;
  v45 = a11;
  v43 = a12;
  v20 = type metadata accessor for Message(0);
  v39 = *(v20 - 8);
  v21 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v37 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27 = &v35 - v26;
  v54[0] = v40;
  *v53 = a9;
  v53[1] = a8;
  (*(v23 + 16))(&v35 - v26, a6, AssociatedTypeWitness, v25);
  sub_1DEE280F8(v52, &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Message);
  v28 = (*(v23 + 80) + 88) & ~*(v23 + 80);
  v29 = (v24 + *(v39 + 80) + v28) & ~*(v39 + 80);
  v30 = swift_allocObject();
  v31 = v44;
  *(v30 + 16) = v43;
  *(v30 + 24) = a13;
  *(v30 + 32) = v31;
  *(v30 + 40) = a15;
  v32 = v46;
  *(v30 + 48) = v47;
  *(v30 + 56) = v32;
  *(v30 + 64) = v45;
  *(v30 + 72) = a9;
  *(v30 + 80) = v38;
  (*(v23 + 32))(v30 + v28, v27, AssociatedTypeWitness);
  sub_1DEE13A28(v37, v30 + v29, type metadata accessor for Message);
  v33 = *(a15 + 136);

  v33(v52, v50, v51, v41, v54, v53, v48, v30, v36, a15);
}

void sub_1DEF58AC0(char a1, void (*a2)(uint64_t *, char *, uint64_t), double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v36 = a2;
  v37 = a7;
  v17 = type metadata accessor for Message(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_1DEF8DDC8();
  v22 = *(v21 - 8);
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v25 = &v36 - v24;
  if (a1)
  {
    *v38 = a3;
    v38[1] = a5;
    v26 = *(AssociatedTypeWitness - 8);
    (*(v26 + 16))(v25, a6, AssociatedTypeWitness, v23);
    (*(v26 + 56))(v25, 0, 1, AssociatedTypeWitness);
    v36(v38, v25, v37);
    (*(v22 + 8))(v25, v21);
  }

  else
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v27 = sub_1DEF8D508();
    __swift_project_value_buffer(v27, qword_1ECDF6010);
    sub_1DEE280F8(a8, v19, type metadata accessor for Message);
    v28 = sub_1DEF8D4D8();
    v29 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38[0] = v31;
      *v30 = 136446210;
      sub_1DEF8D3F8();
      sub_1DEF5D72C(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v32 = sub_1DEF8E2E8();
      v34 = v33;
      sub_1DEE274C0(v19, type metadata accessor for Message);
      v35 = sub_1DEE12A5C(v32, v34, v38);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1DEE0F000, v28, v29, "Received response for %{public}s but watchdog has already fired; ignoring response", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1E12CCD70](v31, -1, -1);
      MEMORY[0x1E12CCD70](v30, -1, -1);
    }

    else
    {

      sub_1DEE274C0(v19, type metadata accessor for Message);
    }
  }
}

uint64_t sub_1DEF58E94(char *a1, void (*a2)(char *, uint64_t), char *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void (*a8)(double *, char *, uint64_t *), double a9, uint64_t a10, uint64_t *a11, uint64_t *a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15)
{
  v213 = a8;
  v197 = a7;
  v198 = a6;
  v196 = a5;
  v208 = a3;
  v209 = a4;
  v206 = a1;
  v207 = a2;
  v212 = a10;
  v16 = *a11;
  v17 = *(*a11 + 88);
  v199 = *(*a11 + 104);
  v200 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IncomingNetworkMessage(255, AssociatedTypeWitness, v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v21 = sub_1DEF8E808();
  v204 = *(v21 - 8);
  v205 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v203 = (&v179 - v22);
  v214 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v186 = &v179 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v192 = &v179 - v26;
  v185 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v195 = &v179 - v29;
  v217 = AssociatedTypeWitness;
  v30 = sub_1DEF8DDC8();
  v31 = *(v30 - 8);
  v215 = v30;
  v216 = v31;
  MEMORY[0x1EEE9AC00](v30);
  v189 = &v179 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v202 = &v179 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v193 = &v179 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v201 = &v179 - v38;
  v39 = *(v16 + 96);
  v187 = a11;
  v40 = *(v16 + 80);
  v191 = v39;
  v190 = v40;
  v41 = swift_getAssociatedTypeWitness();
  v194 = type metadata accessor for NetworkDevice(0, v41, v42, v43);
  v188 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v45 = &v179 - v44;
  v48 = type metadata accessor for NetworkBrowsingEvent(0, v41, v46, v47);
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v179 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v179 - v53;
  v55 = sub_1DEF8E808();
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v58 = (&v179 - v57);
  v59 = sub_1DEF8D378();
  v210 = *(v59 - 8);
  v211 = v59;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v179 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF8D348();
  v208 = v61;
  sub_1DEF8D2D8();
  v63 = v62;
  (*(v56 + 16))(v58, v206, v55);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v64 = *v58;
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v65 = sub_1DEF8D508();
    __swift_project_value_buffer(v65, qword_1ECDF6010);
    v66 = v64;
    v67 = sub_1DEF8D4D8();
    v68 = sub_1DEF8DC98();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v214;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v218 = v64;
      v219 = *&v72;
      *v71 = 136446210;
      v73 = v64;
      v74 = sub_1DEF8D988();
      v76 = sub_1DEE12A5C(v74, v75, &v219);

      *(v71 + 4) = v76;
      _os_log_impl(&dword_1DEE0F000, v67, v68, "Failed to discover endpoint: %{public}s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x1E12CCD70](v72, -1, -1);
      MEMORY[0x1E12CCD70](v71, -1, -1);
    }

    v77 = v215;
    v78 = v216;
    if (v207)
    {
      [v207 invalidate];
    }

    v219 = a9;
    v220 = v209;
    v79 = v202;
    (*(v70 + 56))(v202, 1, 1, v217);
    v80 = v203;
    *v203 = v64;
    v81 = v205;
    swift_storeEnumTagMultiPayload();
    v82 = v64;
    v213(&v219, v79, v80);

    (*(v204 + 8))(v80, v81);
    (*(v78 + 8))(v79, v77);
  }

  else
  {
    (*(v49 + 32))(v54, v58, v48);
    v83 = v48;
    v84 = v49;
    if (*v54)
    {
      v85 = v54;
      v86 = v216;
      v87 = v214;
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v88 = sub_1DEF8D508();
      __swift_project_value_buffer(v88, qword_1ECDF6010);
      v89 = sub_1DEF8D4D8();
      v90 = sub_1DEF8DC98();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_1DEE0F000, v89, v90, "Device was removed", v91, 2u);
        MEMORY[0x1E12CCD70](v91, -1, -1);
      }

      v92 = v215;
      if (v207)
      {
        [v207 invalidate];
      }

      v219 = a9;
      v220 = v209;
      v93 = v202;
      (*(v87 + 56))(v202, 1, 1, v217);
      sub_1DEF5BF8C();
      v94 = swift_allocError();
      *v95 = 0;
      v96 = v203;
      *v203 = v94;
      v97 = v205;
      swift_storeEnumTagMultiPayload();
      v213(&v219, v93, v96);
      (*(v204 + 8))(v96, v97);
      (*(v86 + 8))(v93, v92);
      (*(v84 + 8))(v85, v83);
    }

    else
    {
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v98 = sub_1DEF8D508();
      v99 = __swift_project_value_buffer(v98, qword_1ECDF6010);
      v100 = *(v49 + 16);
      v206 = v54;
      v100(v51, v54, v48);
      v101 = v198;

      v183 = v99;
      v102 = sub_1DEF8D4D8();
      v103 = v84;
      v104 = sub_1DEF8DCB8();

      v105 = os_log_type_enabled(v102, v104);
      v184 = v83;
      v182 = v84;
      if (v105)
      {
        v106 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        v219 = *&v180;
        *v106 = 136446466;
        v107 = v196;
        *(v106 + 4) = sub_1DEE12A5C(v196, v101, &v219);
        *(v106 + 12) = 2082;
        (*(v188 + 16))(v45, &v51[*(v83 + 28)], v194);
        v108 = sub_1DEF8D988();
        v109 = v83;
        v111 = v110;
        v181 = *(v103 + 8);
        v181(v51, v109);
        v112 = sub_1DEE12A5C(v108, v111, &v219);

        *(v106 + 14) = v112;
        _os_log_impl(&dword_1DEE0F000, v102, v104, "Device for %{public}s discovered; sending message to %{public}s", v106, 0x16u);
        v113 = v180;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v113, -1, -1);
        MEMORY[0x1E12CCD70](v106, -1, -1);

        v114 = v214;
        v115 = v201;
      }

      else
      {

        v181 = *(v84 + 8);
        v181(v51, v83);
        v114 = v214;
        v115 = v201;
        v107 = v196;
      }

      v117 = v216;
      v116 = v217;
      v188 = *(v114 + 56);
      (v188)(v115, 1, 1, v217);
      v118 = v193;
      (*(v199 + 120))(v107, v101, v200);
      v180 = *(v114 + 48);
      v119 = v101;
      if (v180(v118, 1, v116) == 1)
      {
        v120 = v118;
        v121 = v215;
        v122 = *(v117 + 8);
        v122(v120, v215);

        v123 = sub_1DEF8D4D8();
        v124 = sub_1DEF8DCB8();

        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v219 = *&v126;
          *v125 = 136446210;
          *(v125 + 4) = sub_1DEE12A5C(v107, v198, &v219);
          _os_log_impl(&dword_1DEE0F000, v123, v124, "Connection for %{public}s does not exist; creating new connection...", v125, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v126);
          v127 = v126;
          v119 = v198;
          MEMORY[0x1E12CCD70](v127, -1, -1);
          v128 = v125;
          v121 = v215;
          MEMORY[0x1E12CCD70](v128, -1, -1);
        }

        v129 = v202;
        (*(v199 + 96))(&v206[*(v184 + 28) + *(v194 + 32)], v200);
        v130 = v201;
        v122(v201, v121);
        v131 = v122;
        (v188)(v129, 0, 1, v217);
        v117 = v216;
        (*(v216 + 32))(v130, v129, v121);
      }

      else
      {
        v132 = *(v114 + 32);
        v132(v195, v118, v116);

        v133 = sub_1DEF8D4D8();
        v134 = sub_1DEF8DCB8();

        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          v219 = *&v136;
          *v135 = 136446210;
          *(v135 + 4) = sub_1DEE12A5C(v196, v119, &v219);
          _os_log_impl(&dword_1DEE0F000, v133, v134, "Connection for %{public}s already exists; using existing connection...", v135, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v136);
          v117 = v216;
          MEMORY[0x1E12CCD70](v136, -1, -1);
          MEMORY[0x1E12CCD70](v135, -1, -1);
        }

        v131 = *(v117 + 8);
        v130 = v201;
        v121 = v215;
        v131(v201, v215);
        v137 = v217;
        v132(v130, v195, v217);
        (v188)(v130, 0, 1, v137);
        v114 = v214;
        v119 = v198;
        v107 = v196;
      }

      v138 = a9 - v63;
      if (v207)
      {
        [v207 invalidate];
      }

      if (v138 <= 0.0)
      {

        v149 = sub_1DEF8D4D8();
        v150 = sub_1DEF8DC98();

        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v219 = *&v152;
          *v151 = 136446210;
          *(v151 + 4) = sub_1DEE12A5C(v107, v119, &v219);
          _os_log_impl(&dword_1DEE0F000, v149, v150, "Found device %{public}s but have no time to send the message", v151, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v152);
          MEMORY[0x1E12CCD70](v152, -1, -1);
          v153 = v151;
          v121 = v215;
          MEMORY[0x1E12CCD70](v153, -1, -1);
        }

        v154 = v184;
        v219 = a9;
        v220 = v209;
        sub_1DEF2ED44();
        v155 = swift_allocError();
        *v156 = 0;
        v157 = v203;
        *v203 = v155;
        v158 = v205;
        swift_storeEnumTagMultiPayload();
        v159 = v201;
        v213(&v219, v201, v157);
        (*(v204 + 8))(v157, v158);
        v131(v159, v121);
        v160 = v206;
        v161 = v154;
      }

      else
      {
        v207 = v131;
        v139 = *(v117 + 16);
        v140 = v189;
        v139(v189, v130, v121);
        v141 = v217;
        if (v180(v140, 1, v217) == 1)
        {
          v142 = v130;
          v143 = v207;
          v207(v140, v121);
          v219 = a9;
          v220 = v209;
          v144 = v202;
          (v188)(v202, 1, 1, v141);
          sub_1DEF2ED44();
          v145 = swift_allocError();
          *v146 = 0;
          v147 = v203;
          *v203 = v145;
          v148 = v205;
          swift_storeEnumTagMultiPayload();
          v213(&v219, v144, v147);
          (*(v204 + 8))(v147, v148);
          v143(v144, v121);
          v143(v142, v121);
        }

        else
        {
          LODWORD(v205) = a15;
          v203 = a12;
          v204 = a13;
          LODWORD(v202) = a14;
          v162 = *(v114 + 32);
          v163 = v192;
          v162(v192, v140, v141);
          v164 = v186;
          (*(v114 + 16))(v186, v163, v141);
          v165 = v141;
          v166 = (*(v114 + 80) + 80) & ~*(v114 + 80);
          v167 = swift_allocObject();
          *&v168 = v190;
          *(&v168 + 1) = v200;
          *&v169 = v191;
          *(&v169 + 1) = v199;
          *(v167 + 16) = v168;
          *(v167 + 32) = v169;
          v170 = v212;
          *(v167 + 48) = v213;
          *(v167 + 56) = v170;
          *(v167 + 64) = a9;
          v171 = v209;
          *(v167 + 72) = v209;
          v162(v167 + v166, v164, v165);
          type metadata accessor for Watchdog();
          v172 = swift_allocObject();
          *(v172 + 16) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
          v173 = swift_allocObject();
          *(v173 + 16) = 0;
          v174 = (v173 + 16);
          *(v172 + 24) = v173;
          *(v172 + 32) = 0;
          MEMORY[0x1EEE9AC00](v173);
          MEMORY[0x1EEE9AC00](v175);

          os_unfair_lock_lock(v174);
          sub_1DEE3DEF0(v176);
          os_unfair_lock_unlock(v174);

          v177 = v192;
          sub_1DEF5A4A8(v172, v197, v203, v204, v202 & 1, v192, v205, v171, v138, a9, v213, v170, v171, v190, v200, v191, v199);

          (*(v214 + 8))(v177, v217);
          v207(v201, v215);
        }

        v160 = v206;
        v161 = v184;
      }

      v181(v160, v161);
    }
  }

  return (*(v210 + 8))(v208, v211);
}