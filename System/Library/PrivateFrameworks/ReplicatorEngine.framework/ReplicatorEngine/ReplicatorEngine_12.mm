uint64_t sub_1DEF2D660(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1DEF8D7E8();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v8, v9);
  sub_1DEE1B9F8(qword_1ED785FC0, MEMORY[0x1E69663E0], MEMORY[0x1E69663F0]);
  sub_1DEF8DA18();
  v12 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370) + 36));
  result = sub_1DEE171B4(v4, &qword_1ECDE4108, &unk_1DEF95370);
  v14 = v22[0];
  v15 = v22[1];
  if (!a2)
  {
    v18 = v12;
    v12 = 0;
    goto LABEL_17;
  }

  if (!a3)
  {
    v18 = v12;
    v12 = 0;
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v12)
    {
      v16 = 0;
      v17 = v12 - a3;
      v18 = v12 - 1;
      while (1)
      {
        v19 = v16;
        v20 = v15 + v16;
        v21 = *(v14 + 16);
        if (v20 == v21)
        {
          v15 = v20;
          v12 = v19;
          goto LABEL_17;
        }

        if (v20 >= v21)
        {
          break;
        }

        *(a2 + v19) = *(v15 + v14 + 32 + v19);
        if (a3 - 1 == v19)
        {
          v12 = a3;
          goto LABEL_16;
        }

        v16 = v19 + 1;
        --v18;
        if (v12 == v19 + 1)
        {
          v17 = 0;
LABEL_16:
          v15 += v19 + 1;
          v18 = v17;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

    v18 = 0;
LABEL_17:
    *a1 = v14;
    a1[1] = v15;
    a1[2] = v18;
    return v12;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1DEF2D874(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v38 = (&v33 - v11);
  v40 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_18:
    v24 = 0;
LABEL_25:
    *a1 = v40;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v24;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(v13 - 32);
    v35 = a1;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    v36 = a3;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v18;
      v25 = v23 | (v18 << 6);
      v26 = v40;
      v27 = *(v40 + 48);
      v28 = sub_1DEF8D3F8();
      (*(*(v28 - 8) + 16))(v9, v27 + *(*(v28 - 8) + 72) * v25, v28);
      v29 = *(v26 + 56);
      v30 = type metadata accessor for PairingRelationship(0);
      sub_1DEE15068(v29 + *(*(v30 - 8) + 72) * v25, &v9[*(v39 + 48)], type metadata accessor for PairingRelationship);
      a1 = v38;
      sub_1DEE1BA88(v9, v38, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEE1BA88(a1, a2, &unk_1ECDE4350, &qword_1DEF93400);
      if (v20 == v36)
      {
        goto LABEL_23;
      }

      a2 += *(v37 + 72);
      v31 = __OFADD__(v20++, 1);
      v18 = v24;
      if (v31)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v32 = v18 + 1;
    }

    else
    {
      v32 = v19;
    }

    v24 = v32 - 1;
LABEL_23:
    v15 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

uint64_t *sub_1DEF2DBDC(uint64_t *result, uint64_t **a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8, __n128 a9)
{
  v10 = a4;
  v12 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_20:
    v18 = 0;
    v26 = -1 << *(v10 + 32);
    v16 = v10 + 56;
    v17 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v19 = v28 & *(v10 + 56);
    v20 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    a5 = 0;
    goto LABEL_31;
  }

  sub_1DEF8DE58();
  a5(0);
  sub_1DEE1B9F8(a6, a7, a8);
  result = sub_1DEF8DC18();
  v10 = v34;
  v16 = v35;
  v17 = v36;
  v18 = v37;
  v19 = v38;
  v20 = a3;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!v20)
  {
    a5 = 0;
    goto LABEL_31;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v30 = v17;
  v31 = a5;
  a5 = 0;
  v21 = (v17 + 64) >> 6;
  v22 = 1;
  while (v10 < 0)
  {
    if (!sub_1DEF8DE88())
    {
      goto LABEL_29;
    }

    v31(0);
    swift_dynamicCast();
    result = v33;
    v20 = a3;
    if (!v33)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = result;
    if (v22 == v20)
    {
      a5 = v20;
      goto LABEL_29;
    }

    ++a2;
    a5 = v22;
    if (__OFADD__(v22++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v23 = v18;
  if (v19)
  {
LABEL_12:
    v19 &= v19 - 1;

    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v24 >= v21)
    {
      break;
    }

    v19 = *(v16 + 8 * v24);
    ++v23;
    if (v19)
    {
      v18 = v24;
      goto LABEL_12;
    }
  }

  v19 = 0;
  if (v21 <= v18 + 1)
  {
    v29 = v18 + 1;
  }

  else
  {
    v29 = v21;
  }

  v18 = v29 - 1;
LABEL_29:
  v17 = v30;
LABEL_31:
  *v12 = v10;
  v12[1] = v16;
  v12[2] = v17;
  v12[3] = v18;
  v12[4] = v19;
  return a5;
}

void *sub_1DEF2DE0C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1DEF2DF64(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void sub_1DEF2E0B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PairingRelationship(0);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v27 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_1DEE15068(*(a4 + 48) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for PairingRelationship);
      v23 = v22;
      v24 = v30;
      sub_1DEE1C4F0(v23, v30, type metadata accessor for PairingRelationship);
      sub_1DEE1C4F0(v24, a2, type metadata accessor for PairingRelationship);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1DEF2E31C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1DEF2E474(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E50, &qword_1DEF95B38);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF301A8();
  sub_1DEF8E848();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E60, &qword_1DEF95B40);
    sub_1DEF30468(&unk_1ECDE4E68, sub_1DEE1E77C, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1DEF8E1F8();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_1DEF2E630(void *a1, char a2)
{
  v5 = *(sub_1DEF8D3F8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_1DEF1B838(a1, a2 & 1, v7, v2 + v6, v9, v10);
}

uint64_t objectdestroy_32Tm()
{
  v1 = sub_1DEF8D3F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1DEF2E7C0()
{
  v1 = *(sub_1DEF8D3F8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1DEF1BEB0(v3, v0 + v2, v5, v6);
}

unint64_t sub_1DEF2E884()
{
  result = qword_1ECDE4D50;
  if (!qword_1ECDE4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4D50);
  }

  return result;
}

uint64_t sub_1DEF2E8D8(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1DEF1CEBC(a1, a2 & 1, v2 + v6, v8, v10, v11);
}

uint64_t sub_1DEF2E9E0(int *a1, int a2, uint64_t a3)
{
  v7 = *(sub_1DEF8D1E8() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = *(v7 + 64);
  v11 = *(sub_1DEF8D3F8() - 8);
  v12 = *(v11 + 80);
  v13 = (v9 + v10 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = (v14 + v12 + v13) & ~v12;
  v16 = v15 + v14;
  v17 = ((v16 & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v18 = (v17 + 11) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1DEF21530(a1, a2, a3, *(v3 + 16), *(v3 + 24), (v3 + v9), v3 + v13, (v3 + v15), *(v3 + v16), *(v3 + (v16 & 0xFFFFFFFFFFFFFFFCLL) + 4), *(v3 + v17), *(v3 + v18), *(v3 + v19), *(v3 + v19 + 8), *(v3 + v20), v3 + ((v8 + v20 + 8) & ~v8), *(v3 + ((v8 + v20 + 8) & ~v8) + v10)) & 1;
}

unint64_t sub_1DEF2EB78()
{
  result = qword_1ECDE4D78;
  if (!qword_1ECDE4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4D78);
  }

  return result;
}

unint64_t sub_1DEF2EC1C()
{
  result = qword_1ECDE4D88;
  if (!qword_1ECDE4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4D88);
  }

  return result;
}

uint64_t objectdestroy_170Tm_0()
{

  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t sub_1DEF2ED44()
{
  result = qword_1ECDE4D90;
  if (!qword_1ECDE4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4D90);
  }

  return result;
}

NSObject *sub_1DEF2ED98(unsigned __int8 *a1)
{
  v1 = *a1;
  application_service_quic = nw_parameters_create_application_service_quic();
  if (application_service_quic)
  {
    v3 = application_service_quic;
    nw_parameters_set_prohibit_expensive(application_service_quic, 1);
    nw_parameters_set_prohibit_constrained(v3, 1);
    nw_parameters_set_include_peer_to_peer(v3, 1);
    swift_unknownObjectRetain();
    nw_parameters_set_attach_protocol_listener();
    if (v1)
    {
      empty = xpc_array_create_empty();
      v5 = sub_1DEF8D518();
      xpc_array_set_string(empty, v5, "com.apple.networkrelay");
      v6 = xpc_array_create_empty();
      v7 = sub_1DEF8D518();
      xpc_array_set_string(v6, v7, "ASListener");
      nw_parameters_set_required_netagent_classes();
      nw_parameters_set_local_only(v3, 0);
      nw_parameters_set_traffic_class();
      nw_parameters_set_multipath_service(v3, nw_multipath_service_disabled);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    result = sub_1DEF8E0F8();
    __break(1u);
  }

  return result;
}

void sub_1DEF2EEE4(void *a1)
{
  if (xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E40]) && xpc_dictionary_get_BOOL(a1, "replyRequired"))
  {
    if (xpc_dictionary_create_reply(a1))
    {
      xpc_dictionary_send_reply();

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v2 = sub_1DEF8D508();
      __swift_project_value_buffer(v2, qword_1ECDF6010);
      oslog = sub_1DEF8D4D8();
      v3 = sub_1DEF8DCB8();
      if (os_log_type_enabled(oslog, v3))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v10 = v5;
        *v4 = 136446210;
        v6 = sub_1DEF8D9E8();
        v8 = sub_1DEE12A5C(v6, v7, &v10);

        *(v4 + 4) = v8;
        _os_log_impl(&dword_1DEE0F000, oslog, v3, "Failed to reply to wake event [rapport]: %{public}s", v4, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v5);
        MEMORY[0x1E12CCD70](v5, -1, -1);
        MEMORY[0x1E12CCD70](v4, -1, -1);
      }

      else
      {
      }
    }
  }
}

NSObject *sub_1DEF2F0C4(char *a1)
{
  v1 = *a1;
  application_service_quic = nw_parameters_create_application_service_quic();
  if (application_service_quic)
  {
    v3 = application_service_quic;
    nw_parameters_set_prohibit_expensive(application_service_quic, 1);
    nw_parameters_set_prohibit_constrained(v3, 1);
    nw_parameters_set_include_peer_to_peer(v3, 1);
    if (v1)
    {
      empty = xpc_array_create_empty();
      v5 = sub_1DEF8D518();
      xpc_array_set_string(empty, v5, "com.apple.networkrelay");
      v6 = xpc_array_create_empty();
      v7 = sub_1DEF8D518();
      xpc_array_set_string(v6, v7, "ASResolver");
      swift_unknownObjectRetain();
      nw_parameters_set_preferred_netagent_classes();
      nw_parameters_set_traffic_class();
      swift_unknownObjectRelease();
      nw_parameters_set_multipath_service(v3, nw_multipath_service_disabled);
    }

    else
    {
      v8 = xpc_array_create(0, 0);
      v9 = sub_1DEF8D518();
      v10 = sub_1DEF8D998();
      xpc_array_set_string(v8, v9, (v10 + 32));

      v11 = xpc_array_create(0, 0);
      v12 = sub_1DEF8D518();
      v13 = sub_1DEF8D998();
      xpc_array_set_string(v11, v12, (v13 + 32));

      nw_parameters_set_preferred_netagent_classes();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    result = sub_1DEF8E0F8();
    __break(1u);
  }

  return result;
}

double sub_1DEF2F2C0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1DEF8D918();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1DEE171B4(v7, &qword_1ECDE4DB8, qword_1DEF9AD50);
  }

  return 30.0;
}

double sub_1DEF2F3D8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1DEF8D918();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1DEE171B4(v7, &qword_1ECDE4DB8, qword_1DEF9AD50);
  }

  return 30.0;
}

uint64_t sub_1DEF2F4F0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, __n128), uint64_t a3)
{
  v34 = a3;
  v36 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA8, &qword_1DEF95AA8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v29 - v6;
  v7 = a1 + 64;
  result = sub_1DEF8DE18();
  v9 = 1 << *(a1 + 32);
  if (result == v9)
  {
    return 0;
  }

  else
  {
    v10 = result;
    v30 = a1 + 72;
    v31 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < v9)
    {
      if ((*(v7 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_21;
      }

      v37 = 1 << v10;
      v38 = v10 >> 6;
      v39 = *(a1 + 36);
      v12 = v35;
      v13 = *(v35 + 48);
      v14 = *(a1 + 56);
      v15 = (*(a1 + 48) + 16 * v10);
      v17 = *v15;
      v16 = v15[1];
      v18 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
      v19 = v32;
      sub_1DEE15068(v14 + *(*(v18 - 8) + 72) * v10, &v32[v13], type metadata accessor for NetworkMessenger.ExpiringConnection);
      v20 = v33;
      *v33 = v17;
      *(v20 + 8) = v16;
      v21 = *(v12 + 48);
      sub_1DEE1C4F0(&v19[v13], v20 + v21, type metadata accessor for NetworkMessenger.ExpiringConnection);

      LOBYTE(v12) = (v36)(v17, v16, v20 + v21);
      result = sub_1DEE171B4(v20, &qword_1ECDE4DA8, &qword_1DEF95AA8);
      if (v12)
      {
        return v10;
      }

      v11 = 1 << *(a1 + 32);
      if (v10 >= v11)
      {
        goto LABEL_22;
      }

      v7 = v31;
      v22 = *(v31 + 8 * v38);
      if ((v22 & v37) == 0)
      {
        goto LABEL_23;
      }

      if (v39 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v11 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v38 << 6;
        v25 = v38 + 1;
        v26 = (v30 + 8 * v38);
        while (v25 < (v11 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1DEE2F804(v10, v39, 0);
            v11 = __clz(__rbit64(v27)) + v24;
            goto LABEL_5;
          }
        }

        result = sub_1DEE2F804(v10, v39, 0);
      }

LABEL_5:
      v9 = 1 << *(a1 + 32);
      v10 = v11;
      if (v11 == v9)
      {
        return 0;
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
  }

  return result;
}

void sub_1DEF2F7F8()
{
  sub_1DEF2A288();

  sub_1DEE165E0();
}

uint64_t sub_1DEF2F83C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1DEE2F804(result, a2, a3 & 1);
  }

  return result;
}

double sub_1DEF2F854(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t objectdestroy_62Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_29Tm()
{
  v1 = type metadata accessor for Message(0);
  v19 = *(*(v1 - 8) + 80);
  v2 = (v19 + 24) & ~v19;
  v3 = v2 + *(*(v1 - 8) + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v5 = *(v4 + 80);
  v16 = (v3 + v5) & ~v5;
  v18 = *(v4 + 64);
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v17 = *(v7 + 64);

  v9 = v0 + v2;
  v10 = *(v7 + 8);
  v10(v9, v6);
  v11 = *(v1 + 20);
  if (!(*(v7 + 48))(v9 + v11, 1, v6))
  {
    v10(v9 + v11, v6);
  }

  sub_1DEE1BFA0(*(v9 + *(v1 + 36)), *(v9 + *(v1 + 36) + 8));
  v12 = sub_1DEF8D1E8();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v16, 1, v12))
  {
    (*(v13 + 8))(v0 + v16, v12);
  }

  v14 = (((v16 + v18) & 0xFFFFFFFFFFFFFFF8) + v8 + 17) & ~v8;
  swift_unknownObjectRelease();
  v10(v0 + v14, v6);

  return MEMORY[0x1EEE6BDD0](v0, ((v17 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v19 | v5 | v8 | 7);
}

uint64_t sub_1DEF2FBF4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Message(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  v11 = *(sub_1DEF8D3F8() - 8);
  v12 = ((v10 & 0xFFFFFFFFFFFFFFF8) + *(v11 + 80) + 17) & ~*(v11 + 80);
  return sub_1DEF1B108(a1, a2, *(v2 + 16), (v2 + v6), v2 + v9, *(v2 + v10), *(v2 + (v10 & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + (v10 & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), v2 + v12);
}

uint64_t sub_1DEF2FD98(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Message(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  return sub_1DEF17844(a1, a2, v2[2], v2[3], v2[4], v2 + v6, v2 + v9, *(v2 + v9 + *(v8 + 64)), *(v2 + ((v9 + *(v8 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v9 + *(v8 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_1DEF2FEC8(void *a1)
{
  v3 = *(type metadata accessor for Message(0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  sub_1DEF17EB4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), (v1 + v4), v1 + v7, *(v1 + v7 + *(v6 + 64)), *(v1 + ((v7 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v7 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t objectdestroy_250Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEF3003C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  if (v3)
  {
    a1 = v3(a1, a2 & 1);
  }

  return v4(a1, a2);
}

uint64_t sub_1DEF300D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DEF16638(*(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

uint64_t sub_1DEF30138()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E30, &qword_1DEF96220) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1DEF29614(v2, v3, v4);
}

unint64_t sub_1DEF301A8()
{
  result = qword_1ECDE4E58;
  if (!qword_1ECDE4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4E58);
  }

  return result;
}

uint64_t sub_1DEF301FC(void *a1, NSObject *a2, int a3, NSObject *a4)
{
  v9 = *(type metadata accessor for NetworkSyncHeader(0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  return sub_1DEF27C24(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + v10, *(v4 + v11), *(v4 + ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL)));
}

uint64_t objectdestroy_257Tm(uint64_t a1)
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_267Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_23Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1DEF30468(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE4E60, &qword_1DEF95B40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DEF30528()
{
  result = qword_1ECDE4ED0;
  if (!qword_1ECDE4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4ED0);
  }

  return result;
}

unint64_t sub_1DEF30580()
{
  result = qword_1ECDE4ED8;
  if (!qword_1ECDE4ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4ED8);
  }

  return result;
}

unint64_t sub_1DEF305D8()
{
  result = qword_1ECDE4EE0;
  if (!qword_1ECDE4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4EE0);
  }

  return result;
}

unint64_t sub_1DEF30630()
{
  result = qword_1ECDE4EE8;
  if (!qword_1ECDE4EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4EE8);
  }

  return result;
}

uint64_t sub_1DEF30818(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4F58, &unk_1DEF95DB0);
    sub_1DEE1B548(&qword_1ECDE2D00, &qword_1ECDE4F58, &unk_1DEF95DB0, MEMORY[0x1E695BF88]);
    v4 = sub_1DEF8D5B8();
    *(v1 + v2) = v4;
  }

  return v4;
}

void sub_1DEF308EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v30 = a3;
  v40 = a2;
  v41 = a1;
  ObjectType = swift_getObjectType();
  v39 = sub_1DEF8DD08();
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency__accountsChanged;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4F58, &unk_1DEF95DB0);
  swift_allocObject();
  *&v3[v9] = sub_1DEF8D598();
  *&v3[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency____lazy_storage___accountsChanged] = 0;
  v10 = OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency__devicesChanged;
  swift_allocObject();
  *&v3[v10] = sub_1DEF8D598();
  *&v3[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency____lazy_storage___devicesChanged] = 0;
  v11 = OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&v3[v11] = v12;
  *&v3[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_identityBlob] = xmmword_1DEF90FE0;
  v37 = OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_calloutQueue;
  v13 = sub_1DEE1EA18(0, &qword_1ECDE2C00, 0x1E69E9610);
  v35 = "eteIDSDependency.fetch";
  v36 = v13;
  sub_1DEF8D6C8();
  v43 = MEMORY[0x1E69E7CC0];
  v33 = sub_1DEE1BA40(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  v34 = sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  v14 = *MEMORY[0x1E69E8098];
  v15 = *(v5 + 104);
  v31 = v5 + 104;
  v16 = v38;
  v17 = v39;
  v15(v38, v14, v39);
  *&v4[v37] = sub_1DEF8DD38();
  v37 = OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_identityFetchQueue;
  v35 = ".ConcreteIDSDependency";
  sub_1DEF8D6C8();
  v43 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DE08();
  v15(v16, v14, v17);
  v18 = v40;
  *&v4[v37] = sub_1DEF8DD38();
  v19 = &v4[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_localDeviceID];
  *v19 = 0;
  v19[1] = 0;
  v4[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_fetchingLocalDeviceID] = 0;
  v20 = &v4[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_serviceName];
  *v20 = v41;
  v20[1] = v18;
  v21 = objc_allocWithZone(MEMORY[0x1E69A48A8]);

  v22 = sub_1DEF8D918();
  v23 = [v21 initWithService_];

  if (v23)
  {

    *&v4[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_service] = v23;
    v42.receiver = v4;
    v42.super_class = ObjectType;
    v24 = objc_msgSendSuper2(&v42, sel_init);
    v25 = *&v24[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_service];
    v26 = v24;
    v27 = v25;
    v28 = v30;
    [v27 addDelegate:v26 queue:v30];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DEF30DE8(uint64_t a1)
{
  v1 = a1;
  if (qword_1ECDE33F0 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
  v2 = sub_1DEF8DD18();
  v3 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE3DEF0(v5);
  os_unfair_lock_unlock(v3 + 4);
}

char *sub_1DEF30F5C()
{
  v40 = sub_1DEF8D3F8();
  v1 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36 - v5;
  v7 = [*(v0 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_service) devices];
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v9 = v7;
  sub_1DEE1EA18(0, &qword_1ECDE2B70, 0x1E69A4848);
  v10 = sub_1DEF8DAD8();

  v41 = v8;
  if (v10 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DEF8DE68())
  {
    v12 = 0;
    v38 = v10 & 0xFFFFFFFFFFFFFF8;
    v39 = v10 & 0xC000000000000001;
    v13 = (v1 + 32);
    v14 = (v1 + 56);
    while (1)
    {
      if (v39)
      {
        v15 = MEMORY[0x1E12CB6E0](v12, v10);
      }

      else
      {
        if (v12 >= *(v38 + 16))
        {
          goto LABEL_16;
        }

        v15 = *(v10 + 8 * v12 + 32);
      }

      v1 = v15;
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v17 = [v15 nsuuid];
      if (v17)
      {
        v18 = v10;
        v19 = v37;
        v20 = v17;
        sub_1DEF8D3B8();

        v21 = v40;
        (*v13)(v6, v19, v40);
        (*v14)(v6, 0, 1, v21);
        sub_1DEF32324(v6);
        v8 = &v41;
        sub_1DEF8DFB8();
        sub_1DEF8DFE8();
        v10 = v18;
        sub_1DEF8DFF8();
        sub_1DEF8DFC8();
      }

      else
      {

        (*v14)(v6, 1, 1, v40);
        sub_1DEF32324(v6);
      }

      ++v12;
      if (v16 == i)
      {
        v22 = v41;
        v8 = MEMORY[0x1E69E7CC0];
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v22 = v8;
LABEL_19:

  if ((v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
  {
    goto LABEL_36;
  }

  v23 = *(v22 + 16);
  if (!v23)
  {
LABEL_37:

    return v8;
  }

  while (1)
  {
    v41 = v8;
    result = sub_1DEEC7EEC(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      break;
    }

    v25 = 0;
    v8 = v41;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1E12CB6E0](v25, v22);
      }

      else
      {
        if (v25 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v27 = *(v22 + 8 * v25 + 32);
      }

      v28 = v27;
      result = [v27 uniqueIDOverride];
      if (!result)
      {
        goto LABEL_40;
      }

      v29 = result;
      v30 = sub_1DEF8D948();
      v32 = v31;

      v41 = v8;
      v34 = v8[2];
      v33 = v8[3];
      if (v34 >= v33 >> 1)
      {
        sub_1DEEC7EEC((v33 > 1), v34 + 1, 1);
        v8 = v41;
      }

      v8[2] = v34 + 1;
      v35 = &v8[2 * v34];
      v35[4] = v30;
      v35[5] = v32;
      ++v25;
      if (v26 == v23)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v23 = sub_1DEF8DE68();
    if (!v23)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void sub_1DEF31374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = a1;
  v5 = sub_1DEF8D698();
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DEF8D6D8();
  v8 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock);
  v28 = v2;
  v25 = sub_1DEF3225C;
  v26 = &v27;
  os_unfair_lock_lock(v11 + 4);
  sub_1DEE27868(&aBlock);
  os_unfair_lock_unlock(v11 + 4);
  v13 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    v14 = aBlock;
    v15 = swift_allocObject();
    v15[2] = v24;
    v15[3] = a2;
    v15[4] = v14;
    v15[5] = v13;
    v33 = sub_1DEF322AC;
    v34 = v15;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v31 = sub_1DEE3F0C0;
    v32 = &block_descriptor_15;
    v16 = _Block_copy(&aBlock);

    sub_1DEF8D6B8();
    v29 = MEMORY[0x1E69E7CC0];
    sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v10, v7, v16);
    _Block_release(v16);
    (*(v23 + 8))(v7, v5);
    (*(v8 + 8))(v10, v22);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v12);
    v17 = v24;
    *(&v21 - 4) = v3;
    *(&v21 - 3) = v17;
    *(&v21 - 2) = a2;
    MEMORY[0x1EEE9AC00](v18);
    *(&v21 - 2) = sub_1DEF3228C;
    *(&v21 - 1) = v19;
    os_unfair_lock_lock(v11 + 4);
    sub_1DEE15434(v20);
    os_unfair_lock_unlock(v11 + 4);
  }
}

uint64_t sub_1DEF31730(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D698();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DEF8D6D8();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_fetchingLocalDeviceID] = 1;
  v16 = *&a1[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_identityFetchQueue];
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  aBlock[4] = sub_1DEF322DC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_7_0;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  sub_1DEF8D6B8();
  aBlock[7] = MEMORY[0x1E69E7CC0];
  sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v11, v8, v13);
  _Block_release(v13);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_1DEF31A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v4 = sub_1DEF8D698();
  v27 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8D6D8();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECDE33F0 != -1)
  {
    v8 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v8);
  *(&v22 - 4) = 0;
  *(&v22 - 3) = 0;
  *(&v22 - 2) = sub_1DEF3262C;
  *(&v22 - 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
  v11 = sub_1DEF8DD18();
  v13 = aBlock;
  v12 = v30;
  v14 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock);
  MEMORY[0x1EEE9AC00](v11);
  *(&v22 - 4) = a1;
  *(&v22 - 3) = v13;
  *(&v22 - 2) = v12;
  MEMORY[0x1EEE9AC00](v15);
  *(&v22 - 2) = sub_1DEF32650;
  *(&v22 - 1) = v16;
  os_unfair_lock_lock(v14 + 4);
  sub_1DEE3DEF0(v17);
  os_unfair_lock_unlock(v14 + 4);
  v18 = swift_allocObject();
  v19 = v24;
  v18[2] = v23;
  v18[3] = v19;
  v18[4] = v13;
  v18[5] = v12;
  v33 = sub_1DEF322AC;
  v34 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1DEE3F0C0;
  v32 = &block_descriptor_14_1;
  v20 = _Block_copy(&aBlock);

  sub_1DEF8D6B8();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v10, v6, v20);
  _Block_release(v20);
  (*(v27 + 8))(v6, v4);
  (*(v25 + 8))(v10, v26);
}

id sub_1DEF31E80()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DEF32050()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12170(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void sub_1DEF320F0(uint64_t *a1@<X8>)
{
  v2 = IDSCopyLocalDeviceUniqueID();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1DEF8D948();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
}

double sub_1DEF3225C@<D0>(void *a1@<X8>)
{
  v2 = (*(v1 + 16) + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_localDeviceID);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;

  return result;
}

uint64_t sub_1DEF32324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEF323AC(uint64_t a1)
{
  if (qword_1ECDE33F0 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
  v2 = sub_1DEF8DD18();
  v3 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE3DEF0(v5);
  os_unfair_lock_unlock(v3 + 4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4F58, &unk_1DEF95DB0);
  sub_1DEE1B548(&qword_1ECDE2D08, &qword_1ECDE4F58, &unk_1DEF95DB0, MEMORY[0x1E695BF80]);
  sub_1DEF8D5A8();
}

void sub_1DEF32598(void *a1@<X8>)
{
  sub_1DEEF59BC(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = v4;
    a1[1] = v5;
  }
}

uint64_t sub_1DEF325CC()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = (v1 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_localDeviceID);
  *v3 = v0[3];
  v3[1] = v2;

  *(v1 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_fetchingLocalDeviceID) = 0;
  return result;
}

uint64_t sub_1DEF32668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for ZoneVersionAdvertisement(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1DEE171B4(a1, &qword_1ECDE3A78, &qword_1DEF90820);
    sub_1DEF74FC0(a2, a3, v9);

    return sub_1DEE171B4(v9, &qword_1ECDE3A78, &qword_1DEF90820);
  }

  else
  {
    sub_1DEE139C0(a1, v13, type metadata accessor for ZoneVersionAdvertisement);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1DEF3DF30(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_1DEF32880(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for PairingRelationship(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_1DEE171B4(a1, &qword_1ECDE3C18, &unk_1DEF94D20);
    sub_1DEF75068(a2, v7);
    v13 = sub_1DEF8D3F8();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1DEE171B4(v7, &qword_1ECDE3C18, &unk_1DEF94D20);
  }

  else
  {
    sub_1DEE139C0(a1, v11, type metadata accessor for PairingRelationship);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1DEF3E198(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_1DEF8D3F8();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1DEF32AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1DEF3F9A4(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_1DEEB7E30, sub_1DEEB20AC);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1DEE13224(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1DEEB7E30();
        v14 = v16;
      }

      result = sub_1DEF76218(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1DEF32BC0(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1DEE171B4(a1, &unk_1ECDE3E80, &unk_1DEF90970);
    sub_1DEF7529C(a2, v7);

    return sub_1DEE171B4(v7, &unk_1ECDE3E80, &unk_1DEF90970);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1DEF3E700(v12, a2, isUniquelyReferenced_nonNull_native, sub_1DEEAF3E8, sub_1DEEB8164, sub_1DEEB28C8, type metadata accessor for Record.ID);

    *v2 = v16;
  }

  return result;
}

uint64_t sub_1DEF32E20(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void), void (*a5)(uint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;
    sub_1DEF3E8DC(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);
    v13 = sub_1DEF8D3F8();
    result = (*(*(v13 - 8) + 8))(a2, v13);
    *v6 = v28;
  }

  else
  {
    v17 = sub_1DEEAF350(a2);
    if (v18)
    {
      v19 = v17;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v6;
      v29 = *v7;
      if (!v20)
      {
        a6();
        v21 = v29;
      }

      v22 = *(v21 + 48);
      v23 = sub_1DEF8D3F8();
      v24 = *(v23 - 8);
      v25 = *(v24 + 8);
      v25(v22 + *(v24 + 72) * v19, v23);

      a5(v19, v21);
      result = (v25)(a2, v23);
      *v7 = v21;
    }

    else
    {
      v26 = sub_1DEF8D3F8();
      v27 = *(*(v26 - 8) + 8);

      return v27(a2, v26);
    }
  }

  return result;
}

uint64_t sub_1DEF3300C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D98, &qword_1DEF916B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for ZoneVersion(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1DEE171B4(a1, &qword_1ECDE3D98, &qword_1DEF916B0);
    sub_1DEF75408(a2, a3, v9);

    return sub_1DEE171B4(v9, &qword_1ECDE3D98, &qword_1DEF916B0);
  }

  else
  {
    sub_1DEE139C0(a1, v13, type metadata accessor for ZoneVersion);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1DEF3EAC0(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_1DEF331E0(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D98, &qword_1DEF916B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for ZoneVersion(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_1DEE171B4(a1, &qword_1ECDE3D98, &qword_1DEF916B0);
    sub_1DEF755E0(a2, v7);

    return sub_1DEE171B4(v7, &qword_1ECDE3D98, &qword_1DEF916B0);
  }

  else
  {
    sub_1DEE139C0(a1, v11, type metadata accessor for ZoneVersion);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1DEF3EC54(v11, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v16;
  }

  return result;
}

uint64_t sub_1DEF333A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1DEF3EDB0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1DEEAF684(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1DEEB8DF0();
        v14 = v16;
      }

      swift_unknownObjectRelease();
      result = sub_1DEF76E5C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1DEF33498(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4200, &unk_1DEF91DB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for NetworkBrowser.Monitor(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_1DEE171B4(a1, &unk_1ECDE4200, &unk_1DEF91DB0);
    sub_1DEF75748(a2, v7);
    v13 = sub_1DEF8D3F8();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1DEE171B4(v7, &unk_1ECDE4200, &unk_1DEF91DB0);
  }

  else
  {
    sub_1DEE139C0(a1, v11, type metadata accessor for NetworkBrowser.Monitor);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1DEF3EF2C(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_1DEF8D3F8();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1DEF336B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;
    ObjectType = swift_getObjectType();
    sub_1DEF41AB8(a1, a2, isUniquelyReferenced_nonNull_native, &v22, ObjectType);
    v7 = sub_1DEF8D3F8();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v22;
  }

  else
  {
    v9 = v2;
    v10 = sub_1DEEAF350(a2);
    if (v11)
    {
      v12 = v10;
      v13 = v2;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v2;
      v22 = *v9;
      if (!v14)
      {
        sub_1DEEB9288();
        v13 = v9;
        v15 = v22;
      }

      v16 = *(v15 + 48);
      v17 = sub_1DEF8D3F8();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v12, v17);
      swift_unknownObjectRelease();
      sub_1DEF7695C(v12, v15);
      result = (v19)(a2, v17);
      *v13 = v15;
    }

    else
    {
      v20 = sub_1DEF8D3F8();
      v21 = *(*(v20 - 8) + 8);

      return v21(a2, v20);
    }
  }

  return result;
}

uint64_t sub_1DEF33890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = *(a1 + 16);
    v17[0] = *a1;
    v17[1] = v7;
    v17[2] = v8;
    v18 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_1DEF3F128(v17, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v16;
  }

  else
  {
    v11 = sub_1DEE13224(a2, a3);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v17[0] = *v4;
      if (!v14)
      {
        sub_1DEEB9508();
        v15 = v17[0];
      }

      swift_unknownObjectRelease();

      result = sub_1DEF7737C(v11, v15);
      *v4 = v15;
    }
  }

  return result;
}

uint64_t sub_1DEF339BC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for SessionManager.Session(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_1DEE171B4(a1, &qword_1ECDE3D08, &unk_1DEF95E50);
    sub_1DEF7579C(a2, v7);
    v13 = sub_1DEF8D3F8();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1DEE171B4(v7, &qword_1ECDE3D08, &unk_1DEF95E50);
  }

  else
  {
    sub_1DEE139C0(a1, v11, type metadata accessor for SessionManager.Session);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1DEF3F5A0(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_1DEF8D3F8();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1DEF33BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1DEF3F79C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = sub_1DEF8D3F8();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v22;
  }

  else
  {
    v11 = sub_1DEEAF350(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        sub_1DEEBA2FC();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = sub_1DEF8D3F8();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);

      sub_1DEF77908(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = sub_1DEF8D3F8();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

uint64_t sub_1DEF33DA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E38, &qword_1DEF95B20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1DEE171B4(a1, &qword_1ECDE4E38, &qword_1DEF95B20);
    v14 = sub_1DEEAF7AC(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1DEEBA6F0();
        v18 = v22;
      }

      sub_1DEE139C0(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
      sub_1DEF77C10(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1DEE171B4(v8, &qword_1ECDE4E38, &qword_1DEF95B20);
  }

  else
  {
    sub_1DEE139C0(a1, v13, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1DEF3FB3C(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1DEF33FFC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1DEE2F1AC(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1DEF3FDDC(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1DEEA8CAC(a2);
    *v2 = v6;
  }

  else
  {
    sub_1DEE171B4(a1, &qword_1ECDE4FA8, &unk_1DEF95E60);
    sub_1DEF75A04(a2, v7);
    sub_1DEEA8CAC(a2);
    return sub_1DEE171B4(v7, &qword_1ECDE4FA8, &unk_1DEF95E60);
  }

  return result;
}

void *sub_1DEF340B8(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E69E7CC8];
    v18 = MEMORY[0x1E69E7CC8];
    v6 = sub_1DEF8E038();
    v7 = sub_1DEF8E0D8();
    if (v7)
    {
      v8 = v7;
      type metadata accessor for Record.ID(0);
      v9 = v8;
      v5 = MEMORY[0x1E69E7CC8];
      do
      {
        v16 = v9;
        swift_dynamicCast();
        type metadata accessor for RecordMetadata(0);
        swift_dynamicCast();
        v10 = v17;
        if (!v17)
        {
          break;
        }

        v11 = v16;

        v12 = a1(&v17, &v16);
        if (v3)
        {

          sub_1DEE2774C(v6 | 0x8000000000000000);

          return v5;
        }

        v13 = v12;

        if (v13)
        {
          v14 = v5[2];
          if (v5[3] <= v14)
          {
            sub_1DEEB1864(v14 + 1, 1);
          }

          v5 = v18;
          sub_1DEF40350(v10, v11, v18);
        }

        else
        {
        }

        v9 = sub_1DEF8E0D8();
      }

      while (v9);
    }

    sub_1DEE2774C(v6 | 0x8000000000000000);
  }

  else
  {
    v5 = sub_1DEF2BC3C(a1, a2, a3);
  }

  return v5;
}

uint64_t sub_1DEF342E4(uint64_t a1)
{
  v1 = a1;
  v19 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DEF8DE68();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v24 = MEMORY[0x1E69E7CC0];
    sub_1DEF8DFD8();
    result = sub_1DEF8E028();
    v21 = result;
    v22 = v4;
    v23 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DFD8();
  result = sub_1DEF8DE18();
  v5 = *(v1 + 36);
  v21 = result;
  v22 = v5;
  v23 = 0;
LABEL_7:
  v6 = 0;
  v18 = v2;
  while (v6 < v2)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v13 = v21;
    v14 = v22;
    v15 = v23;
    sub_1DEF4167C(v20, v21, v22, v23, v1, type metadata accessor for Record.ID, sub_1DEEAF3E8, type metadata accessor for RecordMetadata);
    v16 = v1;

    sub_1DEF8DFB8();
    sub_1DEF8DFE8();
    sub_1DEF8DFF8();
    result = sub_1DEF8DFC8();
    if (v19)
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      if (sub_1DEF8E058())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DE0, &unk_1DEF91700);
      v17 = sub_1DEF8D878();
      sub_1DEF8E0E8();
      result = v17(v20, 0);
    }

    else
    {
      v7 = sub_1DEF41454(v13, v14, v15, v1, type metadata accessor for Record.ID, sub_1DEEAF3E8);
      v9 = v8;
      v11 = v10;
      result = sub_1DEE2F804(v13, v14, v15);
      v21 = v7;
      v22 = v9;
      v23 = v11 & 1;
      v1 = v16;
      v2 = v18;
    }

    ++v6;
    if (v12 == v2)
    {
      sub_1DEE2F804(v21, v22, v23);
      return v24;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t MetadataStoring.pairingRelationship(relationshipID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = (*(*(a3 + 8) + 32))(a2);
  if (*(v6 + 16) && (v7 = sub_1DEEAF350(a1), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for PairingRelationship(0);
    v18 = *(v11 - 8);
    sub_1DEE28090(v10 + *(v18 + 72) * v9, a4, type metadata accessor for PairingRelationship);

    v12 = *(v18 + 56);
    v13 = a4;
    v14 = 0;
    v15 = v11;
  }

  else
  {

    v16 = type metadata accessor for PairingRelationship(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a4;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

void MetadataStoring.zones()(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a2 + 8) + 24))(a1);
  v18 = MEMORY[0x1E69E7CD0];
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_1DEF8E038() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v4 = ~v7;
    v3 = v2 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(v2 + 64);
    v6 = v2;
  }

  v10 = 0;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v10;
    v12 = v5;
    v13 = v10;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v6 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_1DEE2774C(v6);

      sub_1DEF41368(v18, sub_1DEF30800, sub_1DEF2DB4C);

      return;
    }

    while (1)
    {
      v16 = *(v15 + 32);

      sub_1DEF389B8(&v17, v16);

      v10 = v13;
      v5 = v14;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1DEF8E0D8())
      {
        type metadata accessor for Record.ID(0);
        swift_dynamicCast();
        v15 = v17;
        type metadata accessor for RecordMetadata(0);
        swift_dynamicCast();
        v13 = v10;
        v14 = v5;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1DEF3498C(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = sub_1DEF8E038() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v6 = ~v9;
    v5 = a3 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(a3 + 64);
    v8 = a3;
  }

  v12 = 0;
  v25 = v8;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v12;
  v14 = v7;
  v15 = v12;
  if (v7)
  {
LABEL_12:
    v7 = (v14 - 1) & v14;
    v16 = (v15 << 9) | (8 * __clz(__rbit64(v14)));
    v17 = *(v8 + 56);
    v18 = *(*(v8 + 48) + v16);
    v19 = *(v17 + v16);

    if (v18)
    {
      while (1)
      {
        v26[0] = v18;
        v26[1] = v19;
        v23 = a1(v26);

        if (v4)
        {
          break;
        }

        v8 = v25;
        if (v23)
        {
          break;
        }

        v12 = v15;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v20 = sub_1DEF8E0D8();
        if (!v20)
        {
          goto LABEL_20;
        }

        v22 = v21;
        v27 = v20;
        type metadata accessor for Record.ID(0);
        swift_dynamicCast();
        v18 = v26[0];
        v27 = v22;
        type metadata accessor for RecordMetadata(0);
        swift_dynamicCast();
        v19 = v26[0];
        v15 = v12;
        if (!v18)
        {
          goto LABEL_21;
        }
      }

      sub_1DEE2774C(v25);
    }

    else
    {
LABEL_21:
      v8 = v25;
LABEL_20:
      sub_1DEE2774C(v8);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v6 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v5 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DEF34BEC(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

      v9 = (a1)(v12);

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

void sub_1DEF34C98(uint64_t a1@<X0>, void (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v28 = a2;
  v30 = a1;
  v26 = a4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v25 - v7;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v29 = a3;

  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v31 = v5;
      v15 = v14;
LABEL_9:
      v16 = __clz(__rbit64(v12)) | (v15 << 6);
      v17 = v29;
      v18 = *(v29 + 48);
      v19 = sub_1DEF8D3F8();
      (*(*(v19 - 8) + 16))(v8, v18 + *(*(v19 - 8) + 72) * v16, v19);
      v20 = *(v17 + 56);
      v21 = type metadata accessor for PairingRelationship(0);
      sub_1DEE28090(v20 + *(*(v21 - 8) + 72) * v16, &v8[*(v27 + 48)], type metadata accessor for PairingRelationship);
      v22 = v31;
      v28(v30, v8);
      v5 = v22;
      if (v22)
      {
        break;
      }

      v12 &= v12 - 1;
      sub_1DEE171B4(v8, &unk_1ECDE4350, &qword_1DEF93400);
      v14 = v15;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    sub_1DEE171B4(v8, &unk_1ECDE4350, &qword_1DEF93400);

    v24 = sub_1DEF8D378();
    (*(*(v24 - 8) + 8))(v30, v24);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        v23 = sub_1DEF8D378();
        (*(*(v23 - 8) + 32))(v26, v30, v23);
        return;
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        v31 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DEF34F48(uint64_t result, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, unint64_t a4)
{
  v13 = result;
  if (a4 >> 62)
  {
LABEL_16:
    v10 = result;
    v6 = sub_1DEF8DE68();
    result = v10;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1E12CB6E0](i, a4, a3);
          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_12:
            __break(1u);
          }
        }

        else
        {
          if (i >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(a4 + 8 * i + 32);

          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_12;
          }
        }

        v12 = v8;
        a2(&v13, &v12);

        if (v4)
        {
        }

        if (v9 == v6)
        {
          return v13;
        }
      }
    }
  }

  return result;
}

void sub_1DEF350A4(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, unint64_t a4)
{
  v24 = a1;
  v5 = v4;
  if ((a4 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = sub_1DEF8E038() | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(a4 + 32);
    v7 = ~v10;
    v6 = a4 + 64;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(a4 + 64);
    v9 = a4;
  }

  v13 = 0;
  v22 = v9;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v13;
  v15 = v8;
  v16 = v13;
  if (v8)
  {
LABEL_12:
    v8 = (v15 - 1) & v15;
    v17 = (v16 << 9) | (8 * __clz(__rbit64(v15)));
    v18 = *(v9 + 56);
    v19 = *(*(v9 + 48) + v17);
    v20 = *(v18 + v17);

    if (v19)
    {
      while (1)
      {
        v23[0] = v19;
        v23[1] = v20;
        a2(&v24, v23);
        if (v5)
        {
          break;
        }

        v13 = v16;
        v9 = v22;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_1DEF8E0D8())
        {
          goto LABEL_19;
        }

        type metadata accessor for Record.ID(0);
        swift_dynamicCast();
        v19 = v23[0];
        type metadata accessor for RecordMetadata(0);
        swift_dynamicCast();
        v20 = v23[0];
        v16 = v13;
        if (!v19)
        {
          goto LABEL_20;
        }
      }

      sub_1DEE2774C(v22);
    }

    else
    {
LABEL_20:
      v9 = v22;
LABEL_19:
      sub_1DEE2774C(v9);
    }
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v15 = *(v6 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DEF352F8(uint64_t result, void (*a2)(uint64_t *, char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v9 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; ++i)
    {
      v8 = *i;
      a2(&v9, &v8, a3);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v9;
      }
    }
  }

  return result;
}

void *MetadataStoring.mismatchedZoneVersions(for:remoteZoneVersions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v123 = sub_1DEF8D3F8();
  v8 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v105 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4708, &qword_1DEF95DC0);
  MEMORY[0x1EEE9AC00](v112);
  v127 = &v101 - v10;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4F60, &qword_1DEF95DC8);
  MEMORY[0x1EEE9AC00](v121);
  v12 = &v101 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D98, &qword_1DEF916B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v116 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v130 = &v101 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v132 = &v101 - v18;
  v118 = type metadata accessor for ZoneVersion(0);
  v115 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v102 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v101 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v114 = &v101 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v108 = &v101 - v26;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v126 = &v101 - v29;
  (*(a4 + 24))(a1, a3, a4, v28);

  v30 = sub_1DEE4FCFC(v125);

  v32 = sub_1DEE4FCFC(v31);
  v34 = sub_1DEF37604(v30, v32, v33);
  v35 = v34;
  if ((v34 & 0xC000000000000001) != 0)
  {
    sub_1DEF8DE58();
    type metadata accessor for Zone.ID();
    sub_1DEF41E4C(&qword_1ECDE2EA0, type metadata accessor for Zone.ID, &protocol conformance descriptor for Zone.ID);
    sub_1DEF8DC18();
    v35 = v135;
    v36 = v136;
    v37 = v137;
    v38 = v138;
    v39 = v139;
  }

  else
  {
    v38 = 0;
    v40 = -1 << *(v34 + 32);
    v36 = v34 + 56;
    v37 = ~v40;
    v41 = -v40;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v39 = v42 & *(v34 + 56);
  }

  v122 = a2;
  v103 = v37;
  v43 = (v37 + 64) >> 6;
  v113 = (v8 + 56);
  v131 = (v115 + 56);
  v119 = (v115 + 48);
  v110 = (v8 + 48);
  v104 = (v8 + 32);
  v106 = (v8 + 8);
  v109 = MEMORY[0x1E69E7CC8];
  v44 = v126;
  v124 = v36;
  v117 = v43;
  v111 = v12;
  v120 = v35;
  v107 = v22;
  while (2)
  {
    v45 = v38;
    v46 = v39;
    while (1)
    {
      if (v35 < 0)
      {
        v52 = sub_1DEF8DE88();
        if (!v52 || (v133 = v52, type metadata accessor for Zone.ID(), swift_dynamicCast(), v51 = v134, v38 = v45, v50 = v46, !v134))
        {
LABEL_52:
          sub_1DEE2774C(v35);

          return v109;
        }
      }

      else
      {
        v48 = v45;
        v49 = v46;
        v38 = v45;
        if (!v46)
        {
          while (1)
          {
            v38 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              break;
            }

            if (v38 >= v43)
            {
              goto LABEL_52;
            }

            v49 = *(v36 + 8 * v38);
            ++v48;
            if (v49)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

LABEL_16:
        v50 = (v49 - 1) & v49;
        v51 = *(*(v35 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v49)))));

        if (!v51)
        {
          goto LABEL_52;
        }
      }

      v128 = v50;
      v53 = v125;
      if (*(v125 + 16) && (v54 = sub_1DEEAF20C(v51), (v55 & 1) != 0))
      {
        v56 = v108;
        sub_1DEE28090(*(v53 + 56) + *(v115 + 72) * v54, v108, type metadata accessor for ZoneVersion);
        v57 = v56;
        v44 = v126;
        sub_1DEE139C0(v57, v126, type metadata accessor for ZoneVersion);
      }

      else
      {
        (*v113)(v44, 1, 1, v123);
      }

      v58 = v122;
      v59 = v132;
      sub_1DEE28090(v44, v132, type metadata accessor for ZoneVersion);
      v60 = *v131;
      v61 = v59;
      v62 = v118;
      (*v131)(v61, 0, 1, v118);
      v63 = *(v58 + 16);
      v129 = v51;
      if (v63)
      {
        v64 = sub_1DEEAF20C(v51);
        if (v65)
        {
          sub_1DEE28090(*(v58 + 56) + *(v115 + 72) * v64, v130, type metadata accessor for ZoneVersion);
        }
      }

      v66 = v130;
      v60();
      v67 = *(v121 + 48);
      v68 = v132;
      sub_1DEE17214(v132, v12, &qword_1ECDE3D98, &qword_1DEF916B0);
      sub_1DEE17214(v66, &v12[v67], &qword_1ECDE3D98, &qword_1DEF916B0);
      v69 = *v119;
      if ((*v119)(v12, 1, v62) != 1)
      {
        break;
      }

      sub_1DEE171B4(v66, &qword_1ECDE3D98, &qword_1DEF916B0);
      sub_1DEE171B4(v68, &qword_1ECDE3D98, &qword_1DEF916B0);
      v47 = v69(&v12[v67], 1, v62);
      v44 = v126;
      v35 = v120;
      if (v47 != 1)
      {
        goto LABEL_36;
      }

LABEL_10:
      sub_1DEE171B4(v12, &qword_1ECDE3D98, &qword_1DEF916B0);
      sub_1DEE27460(v44, type metadata accessor for ZoneVersion);

      v45 = v38;
      v46 = v128;
      v36 = v124;
      v43 = v117;
    }

    v70 = v116;
    sub_1DEE17214(v12, v116, &qword_1ECDE3D98, &qword_1DEF916B0);
    if (v69(&v12[v67], 1, v62) == 1)
    {
      sub_1DEE171B4(v130, &qword_1ECDE3D98, &qword_1DEF916B0);
      sub_1DEE171B4(v132, &qword_1ECDE3D98, &qword_1DEF916B0);
      sub_1DEE27460(v70, type metadata accessor for ZoneVersion);
      v44 = v126;
      v35 = v120;
LABEL_36:
      v83 = v12;
      v84 = &qword_1ECDE4F60;
      v85 = &qword_1DEF95DC8;
      goto LABEL_41;
    }

    v71 = &v12[v67];
    v72 = v114;
    sub_1DEE139C0(v71, v114, type metadata accessor for ZoneVersion);
    v73 = *(v112 + 48);
    v74 = v127;
    sub_1DEE28090(v70, v127, type metadata accessor for ZoneVersion);
    sub_1DEE28090(v72, v74 + v73, type metadata accessor for ZoneVersion);
    v75 = *v110;
    v76 = v123;
    if ((*v110)(v74, 1, v123) == 1)
    {
      sub_1DEE27460(v72, type metadata accessor for ZoneVersion);
      sub_1DEE171B4(v130, &qword_1ECDE3D98, &qword_1DEF916B0);
      sub_1DEE171B4(v132, &qword_1ECDE3D98, &qword_1DEF916B0);
      v77 = v75(v127 + v73, 1, v76);
      v12 = v111;
      v44 = v126;
      if (v77 != 1)
      {
        goto LABEL_38;
      }

LABEL_34:
      sub_1DEE27460(v127, type metadata accessor for ZoneVersion);
      sub_1DEE27460(v116, type metadata accessor for ZoneVersion);
      v35 = v120;
      goto LABEL_10;
    }

    v78 = v127;
    v79 = v107;
    sub_1DEE28090(v127, v107, type metadata accessor for ZoneVersion);
    if (v75(v78 + v73, 1, v76) != 1)
    {
      v80 = v105;
      (*v104)(v105, v127 + v73, v76);
      v81 = sub_1DEF8D3A8();
      v82 = *v106;
      (*v106)(v80, v76);
      sub_1DEE27460(v114, type metadata accessor for ZoneVersion);
      sub_1DEE171B4(v130, &qword_1ECDE3D98, &qword_1DEF916B0);
      sub_1DEE171B4(v132, &qword_1ECDE3D98, &qword_1DEF916B0);
      v82(v79, v76);
      v12 = v111;
      v44 = v126;
      if ((v81 & 1) == 0)
      {
        sub_1DEE27460(v127, type metadata accessor for ZoneVersion);
        goto LABEL_40;
      }

      goto LABEL_34;
    }

    sub_1DEE27460(v114, type metadata accessor for ZoneVersion);
    sub_1DEE171B4(v130, &qword_1ECDE3D98, &qword_1DEF916B0);
    sub_1DEE171B4(v132, &qword_1ECDE3D98, &qword_1DEF916B0);
    (*v106)(v79, v76);
    v12 = v111;
    v44 = v126;
LABEL_38:
    sub_1DEE171B4(v127, &qword_1ECDE4708, &qword_1DEF95DC0);
LABEL_40:
    v35 = v120;
    sub_1DEE27460(v116, type metadata accessor for ZoneVersion);
    v83 = v12;
    v84 = &qword_1ECDE3D98;
    v85 = &qword_1DEF916B0;
LABEL_41:
    sub_1DEE171B4(v83, v84, v85);
    sub_1DEE28090(v44, v102, type metadata accessor for ZoneVersion);
    v86 = v109;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v134 = v86;
    v88 = v129;
    v89 = sub_1DEEAF20C(v129);
    v91 = v86[2];
    v92 = (v90 & 1) == 0;
    v93 = __OFADD__(v91, v92);
    v94 = v91 + v92;
    if (v93)
    {
      goto LABEL_54;
    }

    v95 = v90;
    if (v86[3] >= v94)
    {
      v39 = v128;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v99 = v89;
        sub_1DEEB8A3C();
        v39 = v128;
        v89 = v99;
      }

LABEL_47:
      v109 = v134;
      if (v95)
      {
        sub_1DEE1B4DC(v102, v134[7] + *(v115 + 72) * v89, type metadata accessor for ZoneVersion);

        sub_1DEE27460(v44, type metadata accessor for ZoneVersion);
      }

      else
      {
        v134[(v89 >> 6) + 8] |= 1 << v89;
        *(v109[6] + 8 * v89) = v88;
        sub_1DEE139C0(v102, v109[7] + *(v115 + 72) * v89, type metadata accessor for ZoneVersion);
        sub_1DEE27460(v44, type metadata accessor for ZoneVersion);
        v97 = v109[2];
        v93 = __OFADD__(v97, 1);
        v98 = v97 + 1;
        if (v93)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v109[2] = v98;
      }

      v36 = v124;
      v43 = v117;
      continue;
    }

    break;
  }

  sub_1DEEB3A30(v94, isUniquelyReferenced_nonNull_native);
  v89 = sub_1DEEAF20C(v88);
  if ((v95 & 1) == (v96 & 1))
  {
    v39 = v128;
    goto LABEL_47;
  }

LABEL_56:
  type metadata accessor for Zone.ID();
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

unint64_t MetadataStoring.recordVersionsWithProtocolAppropriateIDs(for:zoneIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8D3F8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v80 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v89 = v75 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v88 = v75 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D50, &qword_1DEF91668);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = (v75 - v24);
  v91 = a3;
  v92 = a4;
  v93 = v4;
  v26 = MetadataStoring.recordVersions(for:zoneIDs:)(a1, a2, a3, a4, v23);
  if (*(a1 + *(type metadata accessor for PairingRelationship(0) + 20) + 32) > 0xDuLL)
  {
    return v26;
  }

  v78 = v11;
  v81 = sub_1DEEA34BC(MEMORY[0x1E69E7CC0]);
  v27 = 0;
  v87 = v26;
  v30 = *(v26 + 64);
  v29 = v26 + 64;
  v28 = v30;
  v31 = 1 << *(v29 - 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v28;
  v34 = v31 + 63;
  v35 = v13;
  v36 = v34 >> 6;
  v85 = v35;
  v86 = (v35 + 16);
  v94 = (v35 + 32);
  v90 = (v35 + 8);
  v75[1] = v35 + 40;
  v37 = v89;
  v83 = v21;
  v84 = v12;
  v82 = v25;
  while (1)
  {
    v38 = v27;
    if (!v33)
    {
      break;
    }

    while (1)
    {
      v39 = v38;
LABEL_14:
      v42 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v43 = v42 | (v39 << 6);
      v44 = v88;
      v45 = *(*(v87 + 48) + 8 * v43);
      v12 = v84;
      v46 = v85;
      (*(v85 + 16))(v88, *(v87 + 56) + *(v85 + 72) * v43, v84);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      v48 = *(v47 + 48);
      v49 = v83;
      *v83 = v45;
      v50 = v44;
      v21 = v49;
      (*(v46 + 32))(&v49[v48], v50, v12);
      (*(*(v47 - 8) + 56))(v21, 0, 1, v47);

      v95 = v39;
      v37 = v89;
      v25 = v82;
LABEL_15:
      sub_1DEE1BA88(v21, v25, &qword_1ECDE3D50, &qword_1DEF91668);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      if ((*(*(v51 - 8) + 48))(v25, 1, v51) == 1)
      {

        return v81;
      }

      v52 = *v25;
      v53 = *v94;
      (*v94)(v37, v25 + *(v51 + 48), v12);
      v54 = (*(*(v92 + 8) + 56))(v52, v91);
      if (v55)
      {
        break;
      }

      (*v90)(v37, v12);

      v38 = v95;
      if (!v33)
      {
        goto LABEL_7;
      }
    }

    v57 = *(v52 + 32);
    v76 = v55;
    v77 = v54;
    sub_1DEE28090(v52 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v78, type metadata accessor for Record.ID.Ownership);
    v75[0] = type metadata accessor for Record.ID(0);
    v58 = swift_allocObject();
    v59 = v76;
    v58[2] = v77;
    v58[3] = v59;
    v58[4] = v57;
    v79 = v58;
    sub_1DEE139C0(v78, v58 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, type metadata accessor for Record.ID.Ownership);
    (*v86)(v80, v37, v12);

    v60 = v81;
    LODWORD(v77) = swift_isUniquelyReferenced_nonNull_native();
    v96 = v60;
    v62 = sub_1DEEAF3E8(v79);
    v63 = *(v60 + 16);
    v64 = (v61 & 1) == 0;
    v65 = v63 + v64;
    if (__OFADD__(v63, v64))
    {
      goto LABEL_34;
    }

    if (*(v60 + 24) >= v65)
    {
      if ((v77 & 1) == 0)
      {
        v77 = v62;
        LODWORD(v81) = v61;
        sub_1DEEB8164();
        LOBYTE(v61) = v81;
        v62 = v77;
      }
    }

    else
    {
      LODWORD(v81) = v61;
      sub_1DEEB28C8(v65, v77);
      v66 = sub_1DEEAF3E8(v79);
      v67 = v61 & 1;
      LOBYTE(v61) = v81;
      if ((v81 & 1) != v67)
      {
        goto LABEL_36;
      }

      v62 = v66;
    }

    v81 = v96;
    if (v61)
    {
      v68 = v85;
      (*(v85 + 40))(*(v96 + 56) + *(v85 + 72) * v62, v80, v12);

      (*(v68 + 8))(v37, v12);
    }

    else
    {
      *(v96 + 8 * (v62 >> 6) + 64) |= 1 << v62;
      v69 = v80;
      *(*(v81 + 48) + 8 * v62) = v79;
      v70 = v85;
      v53((*(v81 + 56) + *(v85 + 72) * v62), v69, v12);

      (*(v70 + 8))(v37, v12);
      v71 = *(v81 + 16);
      v72 = __OFADD__(v71, 1);
      v73 = v71 + 1;
      if (v72)
      {
        goto LABEL_35;
      }

      *(v81 + 16) = v73;
    }

    v27 = v95;
  }

LABEL_7:
  if (v36 <= v38 + 1)
  {
    v40 = v38 + 1;
  }

  else
  {
    v40 = v36;
  }

  v41 = v40 - 1;
  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v36)
    {
      v95 = v41;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      (*(*(v56 - 8) + 56))(v21, 1, 1, v56);
      v33 = 0;
      goto LABEL_15;
    }

    v33 = *(v29 + 8 * v39);
    ++v38;
    if (v33)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t MetadataStoring.hasRecords(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(a3 + 8) + 24))(a2);
  v7[2] = a1;
  sub_1DEF3498C(sub_1DEF41850, v7, v4);
  LOBYTE(a1) = v5;

  return a1 & 1;
}

uint64_t MetadataStoring.recordVersions(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(a3 + 8) + 24))(a2);
  v8[2] = a1;
  sub_1DEF350A4(MEMORY[0x1E69E7CC8], sub_1DEF41870, v8, v4);
  v6 = v5;

  return v6;
}

void MutableMetadataStoring.removeIncompatiblePairingRelationships(protocolVersion:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v79 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v74 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v91);
  v73 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v78 = v72 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v85 = v72 - v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v81 = v72 - v19;
  v20 = a1[1];
  v76 = *a1;
  v77 = v20;
  v75 = a3;
  v21 = (*(*(*(a3 + 8) + 8) + 32))(a2, v18);
  v22 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 64);
  v93 = (v23 + 63) >> 6;
  v89 = v10;
  v90 = v10 + 16;
  v26 = (v10 + 8);
  v72[1] = v10 + 32;
  v92 = v21;

  v27 = 0;
  v80 = MEMORY[0x1E69E7CC0];
  v87 = a2;
  v88 = (v10 + 8);
  v83 = v9;
  v84 = v22;
  v86 = v3;
LABEL_4:
  v28 = v27;
  v29 = v81;
LABEL_15:
  v55 = v93;
  while (v25)
  {
    v27 = v28;
LABEL_10:
    v30 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v31 = v30 | (v27 << 6);
    v32 = v92;
    v33 = *(v92 + 48);
    v82 = *(v89 + 72);
    (*(v89 + 16))(v29, v33 + v82 * v31, v9);
    v34 = *(v32 + 56);
    v35 = type metadata accessor for PairingRelationship(0);
    v36 = v91;
    sub_1DEE28090(v34 + *(*(v35 - 8) + 72) * v31, v29 + *(v91 + 48), type metadata accessor for PairingRelationship);
    v37 = v85;
    sub_1DEE17214(v29, v85, &unk_1ECDE4350, &qword_1DEF93400);
    v38 = v37 + *(v36 + 48);
    v39 = (v38 + *(v35 + 32));
    v41 = *v39;
    v40 = v39[1];
    sub_1DEE4F8C0(*v39, v40);
    sub_1DEE27460(v38, type metadata accessor for PairingRelationship);
    if (v40)
    {
      sub_1DEE4F8D4(v41, v40);
      sub_1DEE171B4(v29, &unk_1ECDE4350, &qword_1DEF93400);
      v26 = v88;
      v56 = v37;
      v9 = v83;
      (*v88)(v56, v83);
      v28 = v27;
      a2 = v87;
      v22 = v84;
      goto LABEL_15;
    }

    v42 = v88;
    v43 = v37;
    v44 = v83;
    v45 = *v88;
    (*v88)(v43, v83);
    v46 = v78;
    sub_1DEE17214(v29, v78, &unk_1ECDE4350, &qword_1DEF93400);
    v47 = *(v36 + 48);
    v48 = v46;
    v49 = v46 + v47;
    v50 = v49 + *(v35 + 20);
    v51 = v79;
    sub_1DEE28090(v50, v79, type metadata accessor for DeviceDescriptor);
    sub_1DEE27460(v49, type metadata accessor for PairingRelationship);
    v53 = *(v51 + 32);
    v52 = *(v51 + 40);
    sub_1DEE27460(v51, type metadata accessor for DeviceDescriptor);
    if (v53 < v77)
    {
      v54 = v44;
      v45(v48, v44);
      a2 = v87;
LABEL_17:
      sub_1DEE17214(v81, v73, &unk_1ECDE4350, &qword_1DEF93400);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v91;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v80 = sub_1DEF38254(0, v80[2] + 1, 1, v80, &qword_1ECDE3DF8, &unk_1DEF91710, MEMORY[0x1E69695A8]);
      }

      v9 = v54;
      v60 = v80[2];
      v59 = v80[3];
      if (v60 >= v59 >> 1)
      {
        v80 = sub_1DEF38254((v59 > 1), v60 + 1, 1, v80, &qword_1ECDE3DF8, &unk_1DEF91710, MEMORY[0x1E69695A8]);
      }

      v61 = *(v58 + 48);
      sub_1DEE171B4(v81, &unk_1ECDE4350, &qword_1DEF93400);
      v62 = v80;
      v80[2] = v60 + 1;
      v63 = v62 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + v60 * v82;
      v64 = v73;
      (*(v89 + 32))(v63, v73, v9);
      sub_1DEE27460(v64 + v61, type metadata accessor for PairingRelationship);
      v26 = v88;
      v22 = v84;
      goto LABEL_4;
    }

    v54 = v44;
    v45(v48, v44);
    a2 = v87;
    if (v76 < v52)
    {
      goto LABEL_17;
    }

    v26 = v42;
    v29 = v81;
    sub_1DEE171B4(v81, &unk_1ECDE4350, &qword_1DEF93400);
    v28 = v27;
    v9 = v54;
    v22 = v84;
    v55 = v93;
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      return;
    }

    if (v27 >= v55)
    {
      break;
    }

    v25 = *(v22 + 8 * v27);
    ++v28;
    if (v25)
    {
      goto LABEL_10;
    }
  }

  v65 = v80[2];
  if (v65)
  {
    v66 = v74;
    v93 = *(v75 + 16);
    v91 = *(v93 + 120);
    v92 = v93 + 120;
    v67 = v26;
    v68 = v80 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
    v69 = v9;
    v70 = *(v89 + 72);
    v71 = *(v89 + 16);
    do
    {
      v71(v66, v68, v69);
      (v91)(v66, a2, v93);
      (*v67)(v66, v69);
      v68 += v70;
      --v65;
    }

    while (v65);
  }
}

uint64_t MetadataStoring.orphanedRecordIDs()(uint64_t a1, uint64_t a2)
{
  v5 = (*(*(a2 + 8) + 24))();
  v9[2] = a1;
  v9[3] = a2;
  v10 = v2;
  v6 = sub_1DEF340B8(sub_1DEF4188C, v9, v5);
  v7 = sub_1DEF342E4(v6);

  return v7;
}

uint64_t MetadataStoring.expiredRecordIDs()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v33 - v5;
  v7 = sub_1DEF8D378();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v36 = v33 - v12;
  v13 = (*(*(a2 + 8) + 24))(a1, v11);
  if ((v13 & 0xC000000000000001) != 0)
  {
    v33[1] = 0;
    v14 = MEMORY[0x1E69E7CC8];
    v44 = MEMORY[0x1E69E7CC8];
    v40 = sub_1DEF8E038();
    v15 = sub_1DEF8E0D8();
    if (v15)
    {
      v17 = v16;
      v18 = v15;
      v39 = type metadata accessor for Record.ID(0);
      v19 = v18;
      v20 = (v8 + 48);
      v34 = (v8 + 8);
      v35 = (v8 + 32);
      v38 = MEMORY[0x1E69E7CC8];
      do
      {
        v42 = v19;
        swift_dynamicCast();
        v41 = v17;
        type metadata accessor for RecordMetadata(0);
        swift_dynamicCast();
        v22 = v43;
        if (!v43)
        {
          break;
        }

        v23 = v42;
        sub_1DEE17214(v42 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v6, &qword_1ECDE4DC0, &qword_1DEF91640);
        if ((*v20)(v6, 1, v7) == 1)
        {
          sub_1DEE171B4(v6, &qword_1ECDE4DC0, &qword_1DEF91640);
        }

        else
        {
          v24 = v36;
          (*v35)(v36, v6, v7);

          v25 = v37;
          sub_1DEF8D348();
          v26 = sub_1DEF8D308();
          v27 = *v34;
          (*v34)(v25, v7);
          v27(v24, v7);

          if (v26)
          {
            v28 = v38[2];
            if (v38[3] <= v28)
            {
              sub_1DEEB1864(v28 + 1, 1);
            }

            v38 = v44;
            sub_1DEF40350(v22, v23, v44);
          }

          else
          {
          }
        }

        v19 = sub_1DEF8E0D8();
        v17 = v21;
      }

      while (v19);
    }

    else
    {
      v38 = v14;
    }

    sub_1DEE2774C(v40 | 0x8000000000000000);
    v30 = v38;
  }

  else
  {
    sub_1DEF40C34(v13);
    v30 = v29;
  }

  v31 = sub_1DEF342E4(v30);

  return v31;
}

uint64_t sub_1DEF37604(uint64_t result, uint64_t a2, __n128 a3)
{
  v3 = result;
  v17 = a2;
  if ((result & 0xC000000000000001) != 0)
  {
    sub_1DEF8DE58();
    type metadata accessor for Zone.ID();
    sub_1DEF41E4C(&qword_1ECDE2EA0, type metadata accessor for Zone.ID, &protocol conformance descriptor for Zone.ID);
    result = sub_1DEF8DC18();
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
    v7 = v22;
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(result + 32);
    v4 = result + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(result + 56);
  }

  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_1DEE2774C(v3);
      return v17;
    }

    while (1)
    {
      sub_1DEF389B8(&v16, v15);

      v6 = v13;
      v7 = v14;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1DEF8DE88())
      {
        type metadata accessor for Zone.ID();
        swift_dynamicCast();
        v15 = v16;
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t MetadataStoring.recordVersions(for:zoneIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = type metadata accessor for MetadataRecordPredicate(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEE28090(a1, &v11[*(v12 + 40)], type metadata accessor for PairingRelationship);
  *v11 = 258;
  v11[2] = 2;
  *(v11 + 1) = a2;

  v13 = MetadataStoring.recordVersions(matching:)(v11, a3, a4);
  sub_1DEE27460(v11, type metadata accessor for MetadataRecordPredicate);
  return v13;
}

uint64_t sub_1DEF378F4(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v9 = *a2;
  v8 = a2[1];
  result = RecordMetadata.matches(predicate:)(a3);
  if (result)
  {
    v11 = OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version;
    v12 = sub_1DEF8D3F8();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v7, v8 + v11, v12);
    (*(v13 + 56))(v7, 0, 1, v12);

    return sub_1DEF32BC0(v7, v9);
  }

  return result;
}

uint64_t sub_1DEF37A4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEE28090(*(*(a1 + 8) + 16) + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v9, type metadata accessor for Record.ID.Ownership);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v10 = 0;
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    v10 = sub_1DEF8D3A8();
    (*(v4 + 8))(v6, v3);
  }

  return v10 & 1;
}

BOOL sub_1DEF37C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v29 - v8;
  v10 = sub_1DEF8D3F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Record.ID.Ownership(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[0] = a3;
  v18 = (*(*(a3 + 8) + 24))(a2, v15);
  v19 = sub_1DEF718D0(a1, v18);

  if (v19)
  {
    sub_1DEE28090(a1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v17, type metadata accessor for Record.ID.Ownership);
    v20 = (*(v11 + 48))(v17, 1, v10);
    if (v20 != 1)
    {
      (*(v11 + 32))(v13, v17, v10);
      MetadataStoring.pairingRelationship(relationshipID:)(v13, a2, v29[0], v9);

      (*(v11 + 8))(v13, v10);
      v27 = type metadata accessor for PairingRelationship(0);
      v28 = (*(*(v27 - 8) + 48))(v9, 1, v27) == 1;
      sub_1DEE171B4(v9, &qword_1ECDE3C18, &unk_1DEF94D20);
      return v28;
    }

    v21 = *(v19 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
    if (v21)
    {
      MEMORY[0x1EEE9AC00](v20);
      v22 = v29[0];
      v29[-4] = a2;
      v29[-3] = v22;
      v29[-2] = v3;

      sub_1DEF004F8(sub_1DEF41E94, &v29[-6], v21);
      v24 = v23;

      v25 = *(v24 + 16);

      return v25 == 0;
    }
  }

  return 0;
}

BOOL sub_1DEF37F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  MetadataStoring.pairingRelationship(relationshipID:)(a1, a3, a4, &v13 - v8);
  v10 = type metadata accessor for PairingRelationship(0);
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10) != 1;
  sub_1DEE171B4(v9, &qword_1ECDE3C18, &unk_1DEF94D20);
  return v11;
}

char *sub_1DEF3805C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE42A0, &unk_1DEF95E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DEF38254(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1DEF38454(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1DEF38588(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  v8 = sub_1DEF8E7F8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1DEF8E4E8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1DEF3B530(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DEF386D8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = sub_1DEF8D8B8();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1DEF41E4C(&qword_1ECDE40E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1DEF8D908();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1DEF3B6B0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1DEF389B8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1DEF8DE78();

    if (v8)
    {

      type metadata accessor for Zone.ID();
      swift_dynamicCast();
      result = 0;
      *a1 = v26;
      return result;
    }

    result = sub_1DEF8DE68();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_1DEF39EB8(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_1DEF3A794(v21 + 1);
    }

    sub_1DEEC4F08(v22, v20);

    *v3 = v20;
    *a1 = a2;
    return 1;
  }

  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  v10 = sub_1DEF8E7F8();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_25:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;

    sub_1DEF3B954(v24, v12, isUniquelyReferenced_nonNull_native);
    *v3 = v27;
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  v14 = *(v6 + 48);
  v15 = a2[2];
  v16 = a2[3];
  while (1)
  {
    v17 = *(v14 + 8 * v12);
    v18 = v15 == v17[2] && v16 == v17[3];
    if (v18 || (sub_1DEF8E4E8() & 1) != 0)
    {
      v19 = a2[4] == v17[4] && a2[5] == v17[5];
      if (v19 || (sub_1DEF8E4E8() & 1) != 0)
      {
        break;
      }
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1DEF38C28(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](a2);
  v6 = sub_1DEF8E7F8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1DEF3BB0C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1DEF38D20(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40F0, &unk_1DEF91C20);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - v7;
  v9 = sub_1DEF8D3F8();
  v55 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v47 - v18;
  v20 = *v3;
  if ((*v3 & 0xC000000000000001) == 0)
  {
    v58 = v6;
    v53 = v17;
    v50 = v11;
    v47 = v3;
    v48 = a1;
    sub_1DEF8E7A8();
    sub_1DEF8D9B8();
    sub_1DEF8D9B8();

    sub_1DEF8D9B8();

    v57 = OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;
    sub_1DEE28090(a2 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v19, type metadata accessor for Record.ID.Ownership);
    v24 = v55;
    v26 = v55 + 48;
    v25 = *(v55 + 48);
    if (v25(v19, 1, v9) == 1)
    {
      MEMORY[0x1E12CBF60](0);
    }

    else
    {
      (*(v24 + 32))(v14, v19, v9);
      MEMORY[0x1E12CBF60](1);
      sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1DEF8D8C8();
      (*(v24 + 8))(v14, v9);
    }

    v30 = sub_1DEF8E7F8();
    v31 = -1 << *(v20 + 32);
    v32 = v30 & ~v31;
    if (((*(v20 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
    {
LABEL_40:
      v44 = v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = *v44;

      sub_1DEF3BC58(v46, v32, isUniquelyReferenced_nonNull_native);
      *v44 = v60;
      *v48 = a2;
      return 1;
    }

    v55 = v9;
    v56 = v25;
    v59 = ~v31;
    v49 = (v24 + 32);
    v52 = (v24 + 8);
    v54 = v26;
    while (1)
    {
      v33 = *(*(v20 + 48) + 8 * v32);
      v34 = v33[2] == a2[2] && v33[3] == a2[3];
      if (!v34 && (sub_1DEF8E4E8() & 1) == 0)
      {
        goto LABEL_19;
      }

      v35 = v33[4];
      v36 = a2[4];
      v37 = v36[2] == v35[2] && v36[3] == v35[3];
      if (!v37 && (sub_1DEF8E4E8() & 1) == 0)
      {
        goto LABEL_19;
      }

      v38 = v36[4] == v35[4] && v36[5] == v35[5];
      if (!v38 && (sub_1DEF8E4E8() & 1) == 0)
      {
        goto LABEL_19;
      }

      v39 = *(v58 + 48);
      sub_1DEE28090(v33 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v8, type metadata accessor for Record.ID.Ownership);
      sub_1DEE28090(a2 + v57, &v8[v39], type metadata accessor for Record.ID.Ownership);
      v40 = v56;
      if (v56(v8, 1, v9) == 1)
      {
        if (v40(&v8[v39], 1, v9) == 1)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v41 = v53;
        sub_1DEE28090(v8, v53, type metadata accessor for Record.ID.Ownership);
        if (v40(&v8[v39], 1, v9) != 1)
        {
          v42 = v50;
          (*v49)(v50, &v8[v39], v9);
          v51 = sub_1DEF8D3A8();
          v43 = *v52;
          (*v52)(v42, v9);
          v43(v41, v9);
          if (v51)
          {
LABEL_43:
            sub_1DEE27460(v8, type metadata accessor for Record.ID.Ownership);

            *v48 = *(*(v20 + 48) + 8 * v32);

            return 0;
          }

          sub_1DEE27460(v8, type metadata accessor for Record.ID.Ownership);
          goto LABEL_18;
        }

        (*v52)(v41, v9);
      }

      sub_1DEE171B4(v8, &unk_1ECDE40F0, &unk_1DEF91C20);
LABEL_18:
      v9 = v55;
LABEL_19:
      v32 = (v32 + 1) & v59;
      if (((*(v20 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        goto LABEL_40;
      }
    }
  }

  if (v20 < 0)
  {
    v21 = *v3;
  }

  else
  {
    v21 = v20 & 0xFFFFFFFFFFFFFF8;
  }

  v22 = sub_1DEF8DE78();

  if (v22)
  {

    v61 = v22;
    type metadata accessor for Record.ID(0);
    swift_dynamicCast();
    result = 0;
    *a1 = v60;
    return result;
  }

  result = sub_1DEF8DE68();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v27 = sub_1DEF3A0C4(v21, result + 1);
  v60 = v27;
  v28 = *(v27 + 16);
  if (*(v27 + 24) <= v28)
  {
    sub_1DEF3AC40(v28 + 1);
    v27 = v60;
  }

  sub_1DEEC4FB8(v29, v27);

  *v3 = v27;
  *a1 = a2;
  return 1;
}

uint64_t sub_1DEF39434(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1DEF8E7A8();
  if (a3)
  {
    MEMORY[0x1E12CBF60](1);
    sub_1DEF8D9B8();
  }

  else
  {
    MEMORY[0x1E12CBF60](0);
  }

  v8 = sub_1DEF8E7F8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1DEF3C29C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_7:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (sub_1DEF8E4E8() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_1DEF395BC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PairingRelationship(0);
  v41 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v32[-v9];
  v10 = *v2;
  sub_1DEF8E7A8();
  sub_1DEF8D3F8();
  sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1DEF8D8C8();
  v44 = v5[5];
  DeviceDescriptor.hash(into:)(v45);
  v11 = v5[6];
  sub_1DEF8D378();
  sub_1DEF41E4C(&qword_1ECDE42F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  v43 = v11;
  sub_1DEF8D8C8();
  v42 = v5[7];
  sub_1DEF8D8C8();
  v12 = (a2 + v5[8]);
  v39 = a1;
  v40 = v12;
  v13 = v12[1];
  v38 = v2;
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = 2;
      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v14 = 4;
      goto LABEL_11;
    }

LABEL_8:
    MEMORY[0x1E12CBF60](3);
    sub_1DEF8D9B8();
    goto LABEL_12;
  }

  if (!v13)
  {
    v14 = 0;
    goto LABEL_11;
  }

  if (v13 != 1)
  {
    goto LABEL_8;
  }

  v14 = 1;
LABEL_11:
  MEMORY[0x1E12CBF60](v14);
LABEL_12:
  v35 = v5[9];
  sub_1DEF8D8C8();
  v15 = sub_1DEF8E7F8();
  v16 = -1 << *(v10 + 32);
  v17 = v15 & ~v16;
  if ((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v41 + 72);
    do
    {
      sub_1DEE28090(*(v10 + 48) + v19 * v17, v7, type metadata accessor for PairingRelationship);
      if ((sub_1DEF8D3A8() & 1) == 0 || !_s16ReplicatorEngine16DeviceDescriptorV2eeoiySbAC_ACtFZ_0(&v7[v5[5]], a2 + v44) || (sub_1DEF8D338() & 1) == 0 || (sub_1DEF8D338() & 1) == 0)
      {
        goto LABEL_40;
      }

      v20 = &v7[v5[8]];
      v21 = *v20;
      v22 = v20[1];
      v23 = v40[1];
      v41 = *v40;
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          if (v23 != 2)
          {
            v36 = v21;
            v26 = v23;
            sub_1DEE4F8C0(v41, v23);
            v22 = 2;
            goto LABEL_39;
          }

          sub_1DEE4F8D4(v21, 2uLL);
          v24 = v41;
          v25 = 2;
          goto LABEL_44;
        }

        if (v22 == 3)
        {
          if (v23 != 3)
          {
            v36 = v21;
            v26 = v23;
            sub_1DEE4F8C0(v41, v23);
            v22 = 3;
            goto LABEL_39;
          }

          sub_1DEE4F8D4(v21, 3uLL);
          v24 = v41;
          v25 = 3;
          goto LABEL_44;
        }
      }

      else
      {
        if (!v22)
        {
          if (v23)
          {
            v36 = v21;
            v26 = v23;
            sub_1DEE4F8C0(v41, v23);
            v22 = 0;
            goto LABEL_39;
          }

          sub_1DEE4F8D4(v21, 0);
          v24 = v41;
          v25 = 0;
          goto LABEL_44;
        }

        if (v22 == 1)
        {
          if (v23 != 1)
          {
            v36 = v21;
            v26 = v23;
            sub_1DEE4F8C0(v41, v23);
            v22 = 1;
            goto LABEL_39;
          }

          sub_1DEE4F8D4(v21, 1uLL);
          v24 = v41;
          v25 = 1;
          goto LABEL_44;
        }
      }

      v36 = v21;
      if (v23 < 4)
      {
        v26 = v23;
        sub_1DEE4F8C0(v41, v23);
        sub_1DEE4F8C0(v36, v22);
LABEL_39:
        sub_1DEE4F8D4(v36, v22);
        sub_1DEE4F8D4(v41, v26);
LABEL_40:
        sub_1DEE27460(v7, type metadata accessor for PairingRelationship);
        goto LABEL_41;
      }

      if (v21 == v41 && v22 == v23)
      {
        sub_1DEE4F8C0(v21, v22);
        sub_1DEE4F8C0(v36, v22);
        sub_1DEE4F8D4(v36, v22);
        v24 = v36;
        v25 = v22;
LABEL_44:
        sub_1DEE4F8D4(v24, v25);
        goto LABEL_45;
      }

      v34 = v23;
      v33 = sub_1DEF8E4E8();
      sub_1DEE4F8C0(v41, v34);
      sub_1DEE4F8C0(v36, v22);
      sub_1DEE4F8D4(v36, v22);
      sub_1DEE4F8D4(v41, v34);
      if ((v33 & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_45:
      v27 = sub_1DEF8D338();
      sub_1DEE27460(v7, type metadata accessor for PairingRelationship);
      if (v27)
      {
        sub_1DEE27460(a2, type metadata accessor for PairingRelationship);
        sub_1DEE28090(*(v10 + 48) + v19 * v17, v39, type metadata accessor for PairingRelationship);
        return 0;
      }

LABEL_41:
      v17 = (v17 + 1) & v18;
    }

    while (((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  v28 = v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v37;
  sub_1DEE28090(a2, v37, type metadata accessor for PairingRelationship);
  *&v45[0] = *v28;
  sub_1DEF3C44C(v30, v17, isUniquelyReferenced_nonNull_native);
  *v28 = *&v45[0];
  sub_1DEE139C0(a2, v39, type metadata accessor for PairingRelationship);
  return 1;
}

uint64_t sub_1DEF39C30(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  sub_1DEF8E7A8();
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v47 = *a2;
  sub_1DEF8D9B8();
  v42 = v6;
  v46 = v7;
  sub_1DEF8E7C8();
  if (v7)
  {
    sub_1DEF8D9B8();
  }

  v8 = a2[5];
  v9 = a2[6];
  v40 = a2;
  v43 = *(a2 + 32);
  MEMORY[0x1E12CBF90]();
  v45 = v8;
  MEMORY[0x1E12CBF90](v8);
  v44 = v9;
  MEMORY[0x1E12CBF90](v9);
  v10 = sub_1DEF8E7F8();
  v11 = v4 + 56;
  v12 = -1 << *(v4 + 32);
  v13 = v10 & ~v12;
  if (((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_27:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *v39;
    sub_1DEEA8BAC(v40, v49);
    sub_1DEF3CAB0(v40, v13, isUniquelyReferenced_nonNull_native);
    *v39 = v48;
    v31 = *(v40 + 16);
    *a1 = *v40;
    *(a1 + 16) = v31;
    *(a1 + 32) = *(v40 + 32);
    *(a1 + 48) = *(v40 + 48);
    return 1;
  }

  v14 = ~v12;
  v38 = v4;
  v15 = *(v4 + 48);
  v17 = v46;
  v16 = v47;
  while (1)
  {
    v20 = v15 + 56 * v13;
    v22 = *(v20 + 16);
    v21 = *(v20 + 24);
    v23 = *(v20 + 32);
    v25 = *(v20 + 40);
    v24 = *(v20 + 48);
    if (*v20 != v16 || *(v20 + 8) != v5)
    {
      v27 = sub_1DEF8E4E8();
      v17 = v46;
      v16 = v47;
      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if (v21)
    {
      break;
    }

    if (!v17)
    {
      goto LABEL_6;
    }

LABEL_13:
    v13 = (v13 + 1) & v14;
    if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (!v17)
  {
    goto LABEL_13;
  }

  if (v22 != v42 || v21 != v17)
  {
    v29 = sub_1DEF8E4E8();
    v17 = v46;
    v16 = v47;
    if ((v29 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_6:
  if (v23 != v43 || v25 != v45 || v24 != v44)
  {
    goto LABEL_13;
  }

  sub_1DEEA8CAC(v40);
  v33 = *(v38 + 48) + 56 * v13;
  v34 = *(v33 + 8);
  v36 = *(v33 + 16);
  v35 = *(v33 + 24);
  v37 = *(v33 + 32);
  *a1 = *v33;
  *(a1 + 8) = v34;
  *(a1 + 16) = v36;
  *(a1 + 24) = v35;
  *(a1 + 32) = v37;
  *(a1 + 40) = *(v33 + 40);

  return 0;
}

uint64_t sub_1DEF39EB8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4368, &unk_1DEF91EB0);
    v2 = sub_1DEF8DEF8();
    v15 = v2;
    sub_1DEF8DE58();
    if (sub_1DEF8DE88())
    {
      type metadata accessor for Zone.ID();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1DEF3A794(v9 + 1);
        }

        v2 = v15;
        sub_1DEF8E7A8();
        sub_1DEF8D9B8();
        sub_1DEF8D9B8();
        result = sub_1DEF8E7F8();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1DEF8DE88());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1DEF3A0C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4330, &qword_1DEF91E98);
    v2 = sub_1DEF8DEF8();
    v6 = v2;
    sub_1DEF8DE58();
    if (sub_1DEF8DE88())
    {
      type metadata accessor for Record.ID(0);
      do
      {
        swift_dynamicCast();
        v3 = *(v2 + 16);
        if (*(v2 + 24) <= v3)
        {
          sub_1DEF3AC40(v3 + 1);
        }

        v2 = v6;
        sub_1DEEC4FB8(v5, v6);
      }

      while (sub_1DEF8DE88());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1DEF3A1D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4298, &qword_1DEF91E10);
  result = sub_1DEF8DEE8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DEF3A438(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1DEF8D3F8();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42D0, &qword_1DEF91E48);
  result = sub_1DEF8DEE8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1DEF8D8B8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1DEF3A794(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4368, &unk_1DEF91EB0);
  result = sub_1DEF8DEE8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DEF3A9F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4318, &qword_1DEF95E70);
  result = sub_1DEF8DEE8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1DEF8E7A8();
      MEMORY[0x1E12CBF90](v17);
      result = sub_1DEF8E7F8();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DEF3AC40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4330, &qword_1DEF91E98);
  result = sub_1DEF8DEE8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_1DEEC4FB8(*(*(v3 + 48) + 8 * (v12 | (v6 << 6))), v5))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_11:
      ;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    v15 = 1 << *(v3 + 32);
    if (v15 >= 64)
    {
      bzero((v3 + 56), ((v15 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v15;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DEF3ADA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4250, &qword_1DEF91DE0);
  result = sub_1DEF8DEE8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      sub_1DEF8E7A8();
      if (v19)
      {
        MEMORY[0x1E12CBF60](1);
        sub_1DEF8D9B8();
      }

      else
      {
        MEMORY[0x1E12CBF60](0);
      }

      result = sub_1DEF8E7F8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DEF3B020(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PairingRelationship(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4300, &qword_1DEF91E70);
  result = sub_1DEF8DEE8();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v7 + 56);
    for (i = (v12 + 63) >> 6; v14; result = sub_1DEEC524C(v6, v9))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_11:
      sub_1DEE139C0(*(v7 + 48) + *(v4 + 72) * (v16 | (v10 << 6)), v6, type metadata accessor for PairingRelationship);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= i)
      {
        break;
      }

      v18 = v11[v10];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_11;
      }
    }

    v19 = 1 << *(v7 + 32);
    if (v19 >= 64)
    {
      bzero((v7 + 56), ((v19 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v19;
    }

    *(v7 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

uint64_t sub_1DEF3B228(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE42E8, &unk_1DEF91E60);
  result = sub_1DEF8DEE8();
  v5 = result;
  if (*(v3 + 16))
  {
    v35 = v1;
    v36 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v37 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 56 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      v23 = *(v18 + 32);
      v24 = *(v18 + 40);
      v39 = *(v18 + 48);
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      sub_1DEF8E7C8();
      if (v21)
      {
        sub_1DEF8D9B8();
      }

      MEMORY[0x1E12CBF90](v23);
      MEMORY[0x1E12CBF90](v24);
      MEMORY[0x1E12CBF90](v39);
      result = sub_1DEF8E7F8();
      v5 = v37;
      v25 = -1 << *(v37 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v37 + 48) + 56 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      v10 = v38;
      *(v14 + 16) = v22;
      *(v14 + 24) = v21;
      *(v14 + 32) = v23;
      *(v14 + 40) = v24;
      *(v14 + 48) = v39;
      ++*(v37 + 16);
      v3 = v36;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      v33 = v5;
      bzero(v7, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v5 = v33;
    }

    else
    {
      *v7 = -1 << v32;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  v34 = v5;

  *v2 = v34;
  return result;
}

void sub_1DEF3B530(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DEF3A1D8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1DEEC54A4();
      goto LABEL_16;
    }

    sub_1DEF3CD38(v8 + 1);
  }

  v10 = *v4;
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  v11 = sub_1DEF8E7F8();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (sub_1DEF8E4E8() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1DEF8E6D8();
  __break(1u);
}

uint64_t sub_1DEF3B6B0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DEF3A438(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1DEEC5600();
      goto LABEL_12;
    }

    sub_1DEF3CF70(v11 + 1);
  }

  v13 = *v3;
  sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v14 = sub_1DEF8D8B8();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1DEF41E4C(&qword_1ECDE40E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v22 = sub_1DEF8D908();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DEF8E6D8();
  __break(1u);
  return result;
}

uint64_t sub_1DEF3B954(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a3)
  {
    sub_1DEF3A794(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1DEEC5838();
      goto LABEL_22;
    }

    sub_1DEF3D28C(v6 + 1);
  }

  v8 = *v3;
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  result = sub_1DEF8E7F8();
  v9 = v8 + 56;
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for Zone.ID();
    v12 = *(v8 + 48);
    v13 = v5[2];
    v14 = v5[3];
    while (1)
    {
      v15 = *(v12 + 8 * a2);
      v16 = v13 == v15[2] && v14 == v15[3];
      if (v16 || (result = sub_1DEF8E4E8(), (result & 1) != 0))
      {
        if (v5[4] == v15[4] && v5[5] == v15[5])
        {
          break;
        }

        result = sub_1DEF8E4E8();
        if (result)
        {
          break;
        }
      }

      a2 = (a2 + 1) & v11;
      if (((*(v9 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_1DEF8E6D8();
    __break(1u);
  }

LABEL_22:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }

  return result;
}

uint64_t sub_1DEF3BB0C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DEF3A9F0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1DEEC584C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1DEF3D4CC(v5 + 1);
  }

  v8 = *v3;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v4);
  result = sub_1DEF8E7F8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DEF8E6D8();
  __break(1u);
  return result;
}

void sub_1DEF3BC58(void *a1, unint64_t a2, char a3)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40F0, &unk_1DEF91C20);
  MEMORY[0x1EEE9AC00](v58);
  v8 = &v47 - v7;
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v53 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v20 = *(*v3 + 16);
  v21 = *(*v3 + 24);
  v52 = v3;
  if (v21 <= v20 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DEF3AC40(v20 + 1);
    }

    else
    {
      if (v21 > v20)
      {
        sub_1DEEC598C();
        goto LABEL_37;
      }

      sub_1DEF3D6EC(v20 + 1);
    }

    v57 = *v3;
    sub_1DEF8E7A8();
    sub_1DEF8D9B8();
    sub_1DEF8D9B8();

    sub_1DEF8D9B8();

    v56 = OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;
    sub_1DEE28090(a1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v19, type metadata accessor for Record.ID.Ownership);
    v22 = v10;
    v25 = *(v10 + 48);
    v23 = v10 + 48;
    v24 = v25;
    v26 = v25(v19, 1, v9);
    v51 = v22;
    if (v26 == 1)
    {
      MEMORY[0x1E12CBF60](0);
    }

    else
    {
      (*(v22 + 32))(v14, v19, v9);
      MEMORY[0x1E12CBF60](1);
      sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1DEF8D8C8();
      (*(v22 + 8))(v14, v9);
    }

    v27 = sub_1DEF8E7F8();
    v28 = v57;
    v29 = v57 + 56;
    v30 = -1 << *(v57 + 32);
    a2 = v27 & ~v30;
    if ((*(v57 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v54 = v24;
      v55 = v23;
      v31 = ~v30;
      v47 = type metadata accessor for Record.ID(0);
      v48 = (v51 + 4);
      ++v51;
      do
      {
        v32 = *(*(v28 + 48) + 8 * a2);
        v33 = v32[2] == a1[2] && v32[3] == a1[3];
        if (!v33 && (sub_1DEF8E4E8() & 1) == 0)
        {
          goto LABEL_16;
        }

        v34 = v32[4];
        v35 = a1[4];
        v36 = v35[2] == v34[2] && v35[3] == v34[3];
        if (!v36 && (sub_1DEF8E4E8() & 1) == 0)
        {
          goto LABEL_16;
        }

        v37 = v35[4] == v34[4] && v35[5] == v34[5];
        if (!v37 && (sub_1DEF8E4E8() & 1) == 0)
        {
          goto LABEL_16;
        }

        v38 = *(v58 + 48);
        sub_1DEE28090(v32 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v8, type metadata accessor for Record.ID.Ownership);
        sub_1DEE28090(a1 + v56, &v8[v38], type metadata accessor for Record.ID.Ownership);
        v39 = v54;
        if (v54(v8, 1, v9) == 1)
        {
          if (v39(&v8[v38], 1, v9) == 1)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v40 = v53;
          sub_1DEE28090(v8, v53, type metadata accessor for Record.ID.Ownership);
          if (v39(&v8[v38], 1, v9) != 1)
          {
            v41 = v50;
            (*v48)(v50, &v8[v38], v9);
            v49 = sub_1DEF8D3A8();
            v42 = *v51;
            (*v51)(v41, v9);
            v42(v40, v9);
            if (v49)
            {
              goto LABEL_40;
            }

            sub_1DEE27460(v8, type metadata accessor for Record.ID.Ownership);
            goto LABEL_15;
          }

          (*v51)(v40, v9);
        }

        sub_1DEE171B4(v8, &unk_1ECDE40F0, &unk_1DEF91C20);
LABEL_15:
        v28 = v57;
LABEL_16:
        a2 = (a2 + 1) & v31;
      }

      while (((*(v29 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_37:
  v43 = *v52;
  *(v43 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v43 + 48) + 8 * a2) = a1;
  v44 = *(v43 + 16);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (v45)
  {
    __break(1u);
LABEL_40:
    sub_1DEE27460(v8, type metadata accessor for Record.ID.Ownership);
    sub_1DEF8E6D8();
    __break(1u);
  }

  else
  {
    *(v43 + 16) = v46;
  }
}

void sub_1DEF3C29C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    sub_1DEF3ADA4(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1DEEC5AE0();
      goto LABEL_23;
    }

    sub_1DEF3D818(v9 + 1);
  }

  v11 = *v4;
  sub_1DEF8E7A8();
  if (a2)
  {
    MEMORY[0x1E12CBF60](1);
    sub_1DEF8D9B8();
  }

  else
  {
    MEMORY[0x1E12CBF60](0);
  }

  v12 = sub_1DEF8E7F8();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = v12 & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == a1 && v18 == a2;
          if (v19 || (sub_1DEF8E4E8() & 1) != 0)
          {
LABEL_22:
            sub_1DEF8E6D8();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_22;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_23:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = a1;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

uint64_t sub_1DEF3C44C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for PairingRelationship(0);
  v46 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v4 + 16);
  v12 = *(*v4 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_56;
  }

  if (a3)
  {
    sub_1DEF3B020(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1DEEC5C38();
      goto LABEL_56;
    }

    sub_1DEF3DA6C(v11 + 1);
  }

  v13 = *v4;
  sub_1DEF8E7A8();
  sub_1DEF8D3F8();
  sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1DEF8D8C8();
  v48 = v8[5];
  DeviceDescriptor.hash(into:)(v49);
  v14 = v8[6];
  sub_1DEF8D378();
  sub_1DEF41E4C(&qword_1ECDE42F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  v47 = v14;
  sub_1DEF8D8C8();
  v45 = v8[7];
  sub_1DEF8D8C8();
  v44 = (a1 + v8[8]);
  v15 = v44[1];
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = 2;
      goto LABEL_18;
    }

    if (v15 == 3)
    {
      v16 = 4;
      goto LABEL_18;
    }

LABEL_15:
    MEMORY[0x1E12CBF60](3);
    sub_1DEF8D9B8();
    goto LABEL_19;
  }

  if (!v15)
  {
    v16 = 0;
    goto LABEL_18;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = 1;
LABEL_18:
  MEMORY[0x1E12CBF60](v16);
LABEL_19:
  v41 = v8[9];
  sub_1DEF8D8C8();
  v17 = sub_1DEF8E7F8();
  v18 = -1 << *(v13 + 32);
  a2 = v17 & ~v18;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v46 + 72);
    v43 = v4;
    do
    {
      sub_1DEE28090(*(v13 + 48) + v20 * a2, v10, type metadata accessor for PairingRelationship);
      if ((sub_1DEF8D3A8() & 1) == 0 || !_s16ReplicatorEngine16DeviceDescriptorV2eeoiySbAC_ACtFZ_0(&v10[v8[5]], a1 + v48) || (sub_1DEF8D338() & 1) == 0 || (sub_1DEF8D338() & 1) == 0)
      {
        goto LABEL_47;
      }

      v21 = &v10[v8[8]];
      v22 = *v21;
      v23 = v21[1];
      v24 = *v44;
      v25 = v44[1];
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          if (v25 != 2)
          {
            v42 = *v21;
            v40 = v24;
            sub_1DEE4F8C0(v24, v25);
            v23 = 2;
            goto LABEL_46;
          }

          v30 = *v44;
          sub_1DEE4F8D4(v22, 2uLL);
          v27 = v30;
          v28 = 2;
          goto LABEL_51;
        }

        if (v23 == 3)
        {
          if (v25 != 3)
          {
            v42 = *v21;
            v40 = v24;
            sub_1DEE4F8C0(v24, v25);
            v23 = 3;
            goto LABEL_46;
          }

          v29 = *v44;
          sub_1DEE4F8D4(v22, 3uLL);
          v27 = v29;
          v28 = 3;
          goto LABEL_51;
        }
      }

      else
      {
        if (!v23)
        {
          if (v25)
          {
            v42 = *v21;
            v40 = v24;
            sub_1DEE4F8C0(v24, v25);
            v23 = 0;
            goto LABEL_46;
          }

          v32 = *v44;
          sub_1DEE4F8D4(v22, 0);
          v27 = v32;
          v28 = 0;
          goto LABEL_51;
        }

        if (v23 == 1)
        {
          if (v25 != 1)
          {
            v42 = *v21;
            v40 = v24;
            sub_1DEE4F8C0(v24, v25);
            v23 = 1;
            goto LABEL_46;
          }

          v26 = *v44;
          sub_1DEE4F8D4(v22, 1uLL);
          v27 = v26;
          v28 = 1;
          goto LABEL_51;
        }
      }

      if (v25 < 4)
      {
        v42 = *v21;
        v40 = v24;
        sub_1DEE4F8C0(v24, v25);
        sub_1DEE4F8C0(v42, v23);
LABEL_46:
        sub_1DEE4F8D4(v42, v23);
        sub_1DEE4F8D4(v40, v25);
        v4 = v43;
LABEL_47:
        sub_1DEE27460(v10, type metadata accessor for PairingRelationship);
        goto LABEL_48;
      }

      if (v22 == v24 && v23 == v25)
      {
        v31 = *v21;
        sub_1DEE4F8C0(v22, v23);
        sub_1DEE4F8C0(v31, v23);
        sub_1DEE4F8D4(v31, v23);
        v27 = v31;
        v28 = v23;
LABEL_51:
        sub_1DEE4F8D4(v27, v28);
        v4 = v43;
        goto LABEL_52;
      }

      v42 = *v21;
      v40 = v24;
      HIDWORD(v39) = sub_1DEF8E4E8();
      sub_1DEE4F8C0(v40, v25);
      sub_1DEE4F8C0(v42, v23);
      sub_1DEE4F8D4(v42, v23);
      sub_1DEE4F8D4(v40, v25);
      v4 = v43;
      if ((v39 & 0x100000000) == 0)
      {
        goto LABEL_47;
      }

LABEL_52:
      v33 = sub_1DEF8D338();
      sub_1DEE27460(v10, type metadata accessor for PairingRelationship);
      if (v33)
      {
        goto LABEL_59;
      }

LABEL_48:
      a2 = (a2 + 1) & v19;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_56:
  v34 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1DEE139C0(a1, *(v34 + 48) + *(v46 + 72) * a2, type metadata accessor for PairingRelationship);
  v36 = *(v34 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
LABEL_59:
    result = sub_1DEF8E6D8();
    __break(1u);
  }

  else
  {
    *(v34 + 16) = v38;
  }

  return result;
}

void sub_1DEF3CAB0(uint64_t *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DEF3B228(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1DEEC5E44();
        goto LABEL_34;
      }

      sub_1DEF3DC38(v6 + 1);
    }

    v8 = *v3;
    sub_1DEF8E7A8();
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    v46 = *a1;
    sub_1DEF8D9B8();
    v41 = v10;
    v45 = v11;
    sub_1DEF8E7C8();
    if (v11)
    {
      sub_1DEF8D9B8();
    }

    v12 = a1[5];
    v13 = a1[6];
    v42 = *(a1 + 32);
    MEMORY[0x1E12CBF90]();
    v44 = v12;
    MEMORY[0x1E12CBF90](v12);
    v43 = v13;
    MEMORY[0x1E12CBF90](v13);
    v14 = sub_1DEF8E7F8();
    v15 = v8 + 56;
    v16 = -1 << *(v8 + 32);
    a2 = v14 & ~v16;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v18 = *(v8 + 48);
      v20 = v11;
      v19 = v46;
      do
      {
        v23 = v18 + 56 * a2;
        v25 = *(v23 + 16);
        v24 = *(v23 + 24);
        v26 = *(v23 + 32);
        v28 = *(v23 + 40);
        v27 = *(v23 + 48);
        if (*v23 != v19 || *(v23 + 8) != v9)
        {
          v30 = sub_1DEF8E4E8();
          v20 = v45;
          v19 = v46;
          if ((v30 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        if (v24)
        {
          if (!v20)
          {
            goto LABEL_20;
          }

          if (v25 != v41 || v24 != v20)
          {
            v32 = sub_1DEF8E4E8();
            v20 = v45;
            v19 = v46;
            if ((v32 & 1) == 0)
            {
              goto LABEL_20;
            }
          }
        }

        else if (v20)
        {
          goto LABEL_20;
        }

        if (v26 == v42 && v28 == v44 && v27 == v43)
        {
          goto LABEL_37;
        }

LABEL_20:
        a2 = (a2 + 1) & v17;
      }

      while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_34:
  v33 = *v39;
  *(*v39 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v34 = *(v33 + 48) + 56 * a2;
  v35 = *(a1 + 1);
  *v34 = *a1;
  *(v34 + 16) = v35;
  *(v34 + 32) = *(a1 + 2);
  *(v34 + 48) = a1[6];
  v36 = *(v33 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
LABEL_37:
    sub_1DEF8E6D8();
    __break(1u);
  }

  else
  {
    *(v33 + 16) = v38;
  }
}

uint64_t sub_1DEF3CD38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4298, &qword_1DEF91E10);
  result = sub_1DEF8DEE8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DEF3CF70(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1DEF8D3F8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42D0, &qword_1DEF91E48);
  v7 = sub_1DEF8DEE8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1DEF41E4C(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1DEF8D8B8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1DEF3D28C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4368, &unk_1DEF91EB0);
  result = sub_1DEF8DEE8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DEF3D4CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4318, &qword_1DEF95E70);
  result = sub_1DEF8DEE8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1DEF8E7A8();
      MEMORY[0x1E12CBF90](v16);
      result = sub_1DEF8E7F8();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DEF3D6EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4330, &qword_1DEF91E98);
  result = sub_1DEF8DEE8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_1DEEC4FB8(v13, v5))
    {
      v9 &= v9 - 1;
LABEL_11:
    }

    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_13;
      }

      v12 = *(v3 + 56 + 8 * v6);
      ++v11;
      if (v12)
      {
        v9 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DEF3D818(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4250, &qword_1DEF91DE0);
  result = sub_1DEF8DEE8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_1DEF8E7A8();
      if (v18)
      {
        MEMORY[0x1E12CBF60](1);

        sub_1DEF8D9B8();
      }

      else
      {
        MEMORY[0x1E12CBF60](0);
      }

      result = sub_1DEF8E7F8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DEF3DA6C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PairingRelationship(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4300, &qword_1DEF91E70);
  result = sub_1DEF8DEE8();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 56);
    for (i = (v11 + 63) >> 6; v13; result = sub_1DEEC524C(v6, v9))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_11:
      sub_1DEE28090(*(v7 + 48) + *(v4 + 72) * (v15 | (v10 << 6)), v6, type metadata accessor for PairingRelationship);
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_13;
      }

      v17 = *(v7 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v9;
  }

  return result;
}

uint64_t sub_1DEF3DC38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE42E8, &unk_1DEF91E60);
  result = sub_1DEF8DEE8();
  v5 = result;
  if (*(v3 + 16))
  {
    v34 = v1;
    v35 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v36 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 56 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      v23 = *(v18 + 32);
      v24 = *(v18 + 40);
      v39 = *(v18 + 48);
      sub_1DEF8E7A8();

      v37 = v20;
      sub_1DEF8D9B8();
      if (v21)
      {
        sub_1DEF8E7C8();
        v25 = v22;
        sub_1DEF8D9B8();
      }

      else
      {
        v25 = v22;
        sub_1DEF8E7C8();
      }

      MEMORY[0x1E12CBF90](v23);
      MEMORY[0x1E12CBF90](v24);
      MEMORY[0x1E12CBF90](v39);
      result = sub_1DEF8E7F8();
      v5 = v36;
      v26 = -1 << *(v36 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v36 + 48) + 56 * v13;
      v10 = v38;
      *v14 = v19;
      *(v14 + 8) = v37;
      *(v14 + 16) = v25;
      *(v14 + 24) = v21;
      *(v14 + 32) = v23;
      *(v14 + 40) = v24;
      *(v14 + 48) = v39;
      ++*(v36 + 16);
      v3 = v35;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        v33 = v5;

        v2 = v34;
        goto LABEL_29;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v33 = result;

LABEL_29:
    *v2 = v33;
  }

  return result;
}

void sub_1DEF3DF30(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DEE13224(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for ZoneVersionAdvertisement(0);
      sub_1DEE1B4DC(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for ZoneVersionAdvertisement);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DEEB7700();
    goto LABEL_7;
  }

  sub_1DEEB1028(v15, a4 & 1);
  v21 = sub_1DEE13224(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_1DEF8E6E8();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DEF40754(v12, a2, a3, a1, v18, type metadata accessor for ZoneVersionAdvertisement, type metadata accessor for ZoneVersionAdvertisement);
}

uint64_t sub_1DEF3E198(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1DEEAF350(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for PairingRelationship(0);
      return sub_1DEE1B4DC(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for PairingRelationship);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1DEEB7B04();
    goto LABEL_7;
  }

  sub_1DEEB1C0C(v17, a3 & 1);
  v24 = sub_1DEEAF350(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1DEF408D4(v14, v11, a1, v20, type metadata accessor for PairingRelationship, type metadata accessor for PairingRelationship);
}

uint64_t sub_1DEF3E414(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, void), uint64_t (*a7)(void))
{
  v12 = v7;
  v16 = *v7;
  v17 = a4(a2);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a3 & 1) == 0)
  {
    if (v24 < v22 || (a3 & 1) != 0)
    {
      a6(v22, a3 & 1);
      v17 = a4(a2);
      if ((v23 & 1) != (v25 & 1))
      {
LABEL_18:
        a7(0);
        result = sub_1DEF8E6E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      a7 = v17;
      a5();
      v17 = a7;
    }
  }

  v26 = *v12;
  if (v23)
  {
    *(v26[7] + 8 * v17) = a1;
  }

  v26[(v17 >> 6) + 8] |= 1 << v17;
  *(v26[6] + 8 * v17) = a2;
  *(v26[7] + 8 * v17) = a1;
  v28 = v26[2];
  v21 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v29;
}

void sub_1DEF3E5B0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DEE13224(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1DEEB7E58();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1DEEB2370(v16, a4 & 1);
    v11 = sub_1DEE13224(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1DEF8E6E8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    sub_1DEE117C0(a1, v22);
  }

  else
  {
    sub_1DEF405F8(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1DEF3E700(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(void), uint64_t (*a7)(void))
{
  v11 = v7;
  v15 = *v7;
  v17 = a4(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v31 = a4(a2);
    if ((v21 & 1) == (v32 & 1))
    {
      v17 = v31;
      v23 = *v11;
      if (v21)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    a7(0);
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v11;
  if (v21)
  {
LABEL_8:
    v24 = v23[7];
    v25 = sub_1DEF8D3F8();
    v26 = *(v25 - 8);
    v27 = *(v26 + 40);
    v28 = v25;
    v29 = v24 + *(v26 + 72) * v17;

    return v27(v29, a1, v28);
  }

LABEL_13:
  sub_1DEF40664(v17, a2, a1, v23);
}

uint64_t sub_1DEF3E8DC(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v26 = a4;
  v27 = a5;
  v6 = v5;
  v10 = sub_1DEF8D3F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_1DEEAF350(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v26();
      goto LABEL_7;
    }

    v27();
    v24 = sub_1DEEAF350(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      return sub_1DEECEADC(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

void sub_1DEF3EAC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DEE13224(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for ZoneVersion(0);
      sub_1DEE1B4DC(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for ZoneVersion);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DEEB87E4();
    goto LABEL_7;
  }

  sub_1DEEB36B8(v15, a4 & 1);
  v21 = sub_1DEE13224(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_1DEF8E6E8();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DEF40754(v12, a2, a3, a1, v18, type metadata accessor for ZoneVersion, type metadata accessor for ZoneVersion);
}

uint64_t sub_1DEF3EC54(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1DEEAF20C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for ZoneVersion(0);
      return sub_1DEE1B4DC(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for ZoneVersion);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1DEEB8A3C();
    goto LABEL_7;
  }

  sub_1DEEB3A30(v13, a3 & 1);
  v20 = sub_1DEEAF20C(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    type metadata accessor for Zone.ID();
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DEF40800(v10, a2, a1, v16);
}

void sub_1DEF3EDB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DEEAF684(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DEEB4064(v16, a4 & 1);
      v11 = sub_1DEEAF684(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1DEF8E6E8();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1DEEB8DF0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    swift_unknownObjectRelease();
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_1DEF3EF2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1DEEAF350(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for NetworkBrowser.Monitor(0);
      return sub_1DEE1B4DC(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for NetworkBrowser.Monitor);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1DEEB8F5C();
    goto LABEL_7;
  }

  sub_1DEEB432C(v17, a3 & 1);
  v24 = sub_1DEEAF350(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1DEF408D4(v14, v11, a1, v20, type metadata accessor for NetworkBrowser.Monitor, type metadata accessor for NetworkBrowser.Monitor);
}

void sub_1DEF3F128(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DEE13224(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DEEB4BA8(v16, a4 & 1);
      v11 = sub_1DEE13224(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1DEF8E6E8();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1DEEB9508();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;
    v23 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v23;
    *(v22 + 32) = *(a1 + 32);
    swift_unknownObjectRelease();

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *(a1 + 16);
  *v25 = *a1;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a1 + 32);
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v28;
}

void sub_1DEF3F2DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DEE13224(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DEEB51E8(v16, a4 & 1);
      v11 = sub_1DEE13224(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1DEF8E6E8();
        __break(1u);
_objc_release_x1:
        MEMORY[0x1EEE66BB8]();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1DEEB98E4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

_OWORD *sub_1DEF3F454(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1DEEAF640(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1DEEB9A50();
      goto LABEL_7;
    }

    sub_1DEEB548C(v13, a3 & 1);
    v19 = sub_1DEEAF640(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1DEEBC5D0(a2, v21);
      return sub_1DEF409C8(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_1DEE117C0(a1, v17);
}

uint64_t sub_1DEF3F5A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1DEEAF350(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for SessionManager.Session(0);
      return sub_1DEE1B4DC(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for SessionManager.Session);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1DEEB9BF4();
    goto LABEL_7;
  }

  sub_1DEEB5744(v17, a3 & 1);
  v24 = sub_1DEEAF350(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1DEF408D4(v14, v11, a1, v20, type metadata accessor for SessionManager.Session, type metadata accessor for SessionManager.Session);
}

uint64_t sub_1DEF3F79C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1DEEAF350(a3);
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
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_1DEEBA2FC();
      goto LABEL_9;
    }

    sub_1DEEB6218(v18, a4 & 1);
    v21 = sub_1DEEAF350(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_1DEF40A44(v15, v12, v23, a2, v24);
  }
}

void sub_1DEF3F9A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1DEE13224(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_1DEE13224(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1DEF8E6E8();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

uint64_t sub_1DEF3FB3C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1DEEAF7AC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
      return sub_1DEE1B4DC(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1DEEBA6F0();
    goto LABEL_7;
  }

  sub_1DEEB68A4(v13, a3 & 1);
  v20 = sub_1DEEAF7AC(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1DEF40B04(v10, a2, a1, v16);
}

unint64_t sub_1DEF3FC90(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_1DEEAF814(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1DEEB6C00(v14, a3 & 1);
      result = sub_1DEEAF814(v8);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1DEF8E6E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1DEEBA924();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v8;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}