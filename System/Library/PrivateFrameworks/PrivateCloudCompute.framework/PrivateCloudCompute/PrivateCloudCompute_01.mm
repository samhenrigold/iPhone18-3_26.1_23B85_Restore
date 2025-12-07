char *sub_1CEF480E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9330, &qword_1CEFAB3B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CEF48200(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9308, &qword_1CEFAB390);
  v10 = *(type metadata accessor for TrustedRequestHistory.Request(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TrustedRequestHistory.Request(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1CEF483D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9338, &unk_1CEFAB3C0);
  v33 = v4;
  result = sub_1CEFA86E0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1CEF49BC0(v24, v34);
      }

      else
      {
        sub_1CEF37314(v24, v34);
      }

      sub_1CEFA8A00();
      sub_1CEFA8340();
      result = sub_1CEFA8A40();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1CEF49BC0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1CEF48690(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9070, &unk_1CEFAA490);
  v37 = v4;
  result = sub_1CEFA86E0();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1CEFA8A00();
      sub_1CEFA8340();
      result = sub_1CEFA8A40();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1CEF48950(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for XPCWrapper.Continuation(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9300, &qword_1CEFAB9E0);
  v37 = v4;
  result = sub_1CEFA86E0();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_1CEF4BC48(v25, v7);
      }

      else
      {
        sub_1CEF4BBE4(v25, v7);
      }

      result = sub_1CEFA89F0();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_1CEF4BC48(v7, *(v10 + 56) + v24 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

void *sub_1CEF48D44(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1CEF493A4(v12, v7, v5, a3);
  result = MEMORY[0x1D3867270](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_1CEF48EB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9078, &qword_1CEFAB9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CEF48F1C()
{
  result = qword_1EC4A9080;
  if (!qword_1EC4A9080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4A9080);
  }

  return result;
}

uint64_t sub_1CEF48F68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t *sub_1CEF48FB0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v24 = result;
  v25 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(a3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    if (v14 == sub_1CEFA8300() && v15 == v16)
    {
      goto LABEL_24;
    }

    v18 = sub_1CEFA8950();

    if (v18)
    {
      goto LABEL_24;
    }

    if (v14 == sub_1CEFA8300() && v15 == v19)
    {

LABEL_24:

LABEL_25:
      *(v24 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_1CEF4942C(v24, a2, v25, a3);
      }
    }

    else
    {
      v21 = sub_1CEFA8950();

      if (v21)
      {
        goto LABEL_25;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_1CEF4942C(v24, a2, v25, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1CEF491A4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v25 = result;
  v26 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    if (v15 == sub_1CEFA8300() && v16 == v17)
    {
LABEL_5:
    }

    else
    {
      v19 = sub_1CEFA8950();

      if (v19)
      {
        goto LABEL_4;
      }

      if (v15 == sub_1CEFA8300() && v16 == v20)
      {

LABEL_4:
        v3 = a3;
        goto LABEL_5;
      }

      v22 = sub_1CEFA8950();

      v3 = a3;
      if ((v22 & 1) == 0)
      {
        *(v25 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v26++, 1))
        {
          goto LABEL_29;
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1CEF4942C(v25, a2, v26, v3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void *sub_1CEF493A4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_1CEF4942C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9338, &unk_1CEFAB3C0);
  result = sub_1CEFA86F0();
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
    sub_1CEF37314(v17 + 32 * v16, v33);
    sub_1CEF49BC0(v33, v32);
    sub_1CEFA8A00();

    sub_1CEFA8340();
    result = sub_1CEFA8A40();
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
    result = sub_1CEF49BC0(v32, (*(v9 + 56) + 32 * v24));
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

_OWORD *sub_1CEF4967C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CEF76970(a2, a3);
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
      sub_1CEF9E584();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1CEF483D8(v16, a4 & 1);
    v11 = sub_1CEF76970(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1CEFA89A0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_1CEF49BC0(a1, v22);
  }

  else
  {
    sub_1CEF49AA0(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1CEF497CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1CEF76970(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1CEF48690(v18, a5 & 1);
      v13 = sub_1CEF76970(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1CEFA89A0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1CEF9E728();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_1CEF49954(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1CEF9E1E4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1CEF9E8A0();
      goto LABEL_7;
    }

    sub_1CEF48950(v13, a3 & 1);
    v20 = sub_1CEF9E1E4(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1CEFA89A0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for XPCWrapper.Continuation(0) - 8) + 72) * v10;

    return sub_1CEF4BB80(a1, v18);
  }

LABEL_13:

  return sub_1CEF49B0C(v10, a2, a1, v16);
}

_OWORD *sub_1CEF49AA0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1CEF49BC0(a4, (a5[7] + 32 * a1));
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

uint64_t sub_1CEF49B0C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for XPCWrapper.Continuation(0);
  result = sub_1CEF4BC48(a3, v7 + *(*(v8 - 8) + 72) * a1);
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

void *sub_1CEF49BA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CEF4B2F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_1CEF49BC0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1CEF49C34()
{
  result = qword_1EC4A90C0;
  if (!qword_1EC4A90C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A90C0);
  }

  return result;
}

unint64_t sub_1CEF49C88()
{
  result = qword_1EC4A90C8;
  if (!qword_1EC4A90C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A90C8);
  }

  return result;
}

unint64_t sub_1CEF49CDC()
{
  result = qword_1EC4A90D0;
  if (!qword_1EC4A90D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A90D0);
  }

  return result;
}

unint64_t sub_1CEF49D30()
{
  result = qword_1EC4A90D8;
  if (!qword_1EC4A90D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A90D8);
  }

  return result;
}

unint64_t sub_1CEF49D84()
{
  result = qword_1EC4A90E0;
  if (!qword_1EC4A90E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A90E0);
  }

  return result;
}

unint64_t sub_1CEF49DD8()
{
  result = qword_1EC4A90E8;
  if (!qword_1EC4A90E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A90E8);
  }

  return result;
}

unint64_t sub_1CEF49E2C()
{
  result = qword_1EC4A90F0;
  if (!qword_1EC4A90F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A90F0);
  }

  return result;
}

unint64_t sub_1CEF49E80()
{
  result = qword_1EC4A9118;
  if (!qword_1EC4A9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9118);
  }

  return result;
}

unint64_t sub_1CEF49ED4()
{
  result = qword_1EC4A9120;
  if (!qword_1EC4A9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9120);
  }

  return result;
}

unint64_t sub_1CEF49F28()
{
  result = qword_1EC4A9128;
  if (!qword_1EC4A9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9128);
  }

  return result;
}

unint64_t sub_1CEF49F7C()
{
  result = qword_1EC4A9158;
  if (!qword_1EC4A9158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9158);
  }

  return result;
}

unint64_t sub_1CEF49FD0()
{
  result = qword_1EC4A9160;
  if (!qword_1EC4A9160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9160);
  }

  return result;
}

unint64_t sub_1CEF4A024()
{
  result = qword_1EC4A9168;
  if (!qword_1EC4A9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9168);
  }

  return result;
}

unint64_t sub_1CEF4A078()
{
  result = qword_1EC4A9170;
  if (!qword_1EC4A9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9170);
  }

  return result;
}

unint64_t sub_1CEF4A0CC()
{
  result = qword_1EC4A9178;
  if (!qword_1EC4A9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9178);
  }

  return result;
}

unint64_t sub_1CEF4A120()
{
  result = qword_1EC4A91B0;
  if (!qword_1EC4A91B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A91B0);
  }

  return result;
}

unint64_t sub_1CEF4A174()
{
  result = qword_1EC4A91C0;
  if (!qword_1EC4A91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A91C0);
  }

  return result;
}

unint64_t sub_1CEF4A1C8()
{
  result = qword_1EC4A91E0;
  if (!qword_1EC4A91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A91E0);
  }

  return result;
}

uint64_t sub_1CEF4A21C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A91C8, &unk_1CEFAA550);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CEF4A288(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A91D0, &qword_1CEFAB420);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CEF4A300()
{
  result = qword_1EC4A91F8;
  if (!qword_1EC4A91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A91F8);
  }

  return result;
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

uint64_t sub_1CEF4A374(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1CEF4A3BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ErrorCodableValue.NWErrorCodableValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 5))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ErrorCodableValue.NWErrorCodableValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

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

uint64_t sub_1CEF4A508(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1CEF4A550(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ErrorCodableValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ErrorCodableValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CEF4A79C()
{
  result = qword_1EC4A9200;
  if (!qword_1EC4A9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9200);
  }

  return result;
}

unint64_t sub_1CEF4A7F4()
{
  result = qword_1EC4A9208;
  if (!qword_1EC4A9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9208);
  }

  return result;
}

unint64_t sub_1CEF4A84C()
{
  result = qword_1EC4A9210;
  if (!qword_1EC4A9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9210);
  }

  return result;
}

unint64_t sub_1CEF4A8A4()
{
  result = qword_1EC4A9218;
  if (!qword_1EC4A9218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9218);
  }

  return result;
}

unint64_t sub_1CEF4A8FC()
{
  result = qword_1EC4A9220;
  if (!qword_1EC4A9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9220);
  }

  return result;
}

unint64_t sub_1CEF4A954()
{
  result = qword_1EC4A9228;
  if (!qword_1EC4A9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9228);
  }

  return result;
}

unint64_t sub_1CEF4A9AC()
{
  result = qword_1EC4A9230;
  if (!qword_1EC4A9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9230);
  }

  return result;
}

unint64_t sub_1CEF4AA04()
{
  result = qword_1EC4A9238;
  if (!qword_1EC4A9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9238);
  }

  return result;
}

unint64_t sub_1CEF4AA5C()
{
  result = qword_1EC4A9240;
  if (!qword_1EC4A9240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9240);
  }

  return result;
}

unint64_t sub_1CEF4AAB4()
{
  result = qword_1EC4A9248;
  if (!qword_1EC4A9248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9248);
  }

  return result;
}

unint64_t sub_1CEF4AB0C()
{
  result = qword_1EC4A9250;
  if (!qword_1EC4A9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9250);
  }

  return result;
}

unint64_t sub_1CEF4AB64()
{
  result = qword_1EC4A9258;
  if (!qword_1EC4A9258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9258);
  }

  return result;
}

unint64_t sub_1CEF4ABBC()
{
  result = qword_1EC4A9260;
  if (!qword_1EC4A9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9260);
  }

  return result;
}

unint64_t sub_1CEF4AC14()
{
  result = qword_1EC4A9268;
  if (!qword_1EC4A9268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9268);
  }

  return result;
}

unint64_t sub_1CEF4AC6C()
{
  result = qword_1EC4A9270;
  if (!qword_1EC4A9270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9270);
  }

  return result;
}

unint64_t sub_1CEF4ACC4()
{
  result = qword_1EC4A9278;
  if (!qword_1EC4A9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9278);
  }

  return result;
}

unint64_t sub_1CEF4AD1C()
{
  result = qword_1EC4A9280;
  if (!qword_1EC4A9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9280);
  }

  return result;
}

unint64_t sub_1CEF4AD74()
{
  result = qword_1EC4A9288;
  if (!qword_1EC4A9288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9288);
  }

  return result;
}

unint64_t sub_1CEF4ADCC()
{
  result = qword_1EC4A9290;
  if (!qword_1EC4A9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9290);
  }

  return result;
}

unint64_t sub_1CEF4AE24()
{
  result = qword_1EC4A9298;
  if (!qword_1EC4A9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9298);
  }

  return result;
}

unint64_t sub_1CEF4AE7C()
{
  result = qword_1EC4A92A0;
  if (!qword_1EC4A92A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92A0);
  }

  return result;
}

unint64_t sub_1CEF4AED4()
{
  result = qword_1EC4A92A8;
  if (!qword_1EC4A92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92A8);
  }

  return result;
}

unint64_t sub_1CEF4AF2C()
{
  result = qword_1EC4A92B0;
  if (!qword_1EC4A92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92B0);
  }

  return result;
}

unint64_t sub_1CEF4AF84()
{
  result = qword_1EC4A92B8;
  if (!qword_1EC4A92B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92B8);
  }

  return result;
}

unint64_t sub_1CEF4AFDC()
{
  result = qword_1EC4A92C0;
  if (!qword_1EC4A92C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92C0);
  }

  return result;
}

unint64_t sub_1CEF4B034()
{
  result = qword_1EC4A92C8;
  if (!qword_1EC4A92C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92C8);
  }

  return result;
}

unint64_t sub_1CEF4B08C()
{
  result = qword_1EC4A92D0;
  if (!qword_1EC4A92D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92D0);
  }

  return result;
}

unint64_t sub_1CEF4B0E4()
{
  result = qword_1EC4A92D8;
  if (!qword_1EC4A92D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92D8);
  }

  return result;
}

unint64_t sub_1CEF4B13C()
{
  result = qword_1EC4A92E0;
  if (!qword_1EC4A92E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92E0);
  }

  return result;
}

unint64_t sub_1CEF4B194()
{
  result = qword_1EC4A92E8;
  if (!qword_1EC4A92E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92E8);
  }

  return result;
}

unint64_t sub_1CEF4B1EC()
{
  result = qword_1EC4A92F0;
  if (!qword_1EC4A92F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92F0);
  }

  return result;
}

unint64_t sub_1CEF4B244()
{
  result = qword_1EC4A92F8;
  if (!qword_1EC4A92F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A92F8);
  }

  return result;
}

char *sub_1CEF4B298(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CEF4B42C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CEF4B2B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CEF4B548(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CEF4B2D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CEF4B690(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CEF4B2F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9340, &qword_1CEFB19C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9348, &unk_1CEFAB3D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CEF4B42C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9330, &qword_1CEFAB3B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CEF4B548(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9320, &qword_1CEFAB3A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9328, &qword_1CEFAB3B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CEF4B690(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9310, &qword_1CEFAB398);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1CEF4B79C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F7774656ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C6C65636E6163 && a2 == 0xEC0000006E6F6974 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CEFA8950();

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

uint64_t sub_1CEF4B8B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7869736F70 && a2 == 0xE500000000000000;
  if (v4 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7564900 && a2 == 0xE300000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7564404 && a2 == 0xE300000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261774169666977 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CEFA8950();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1CEF4BA18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CEFB50E0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CEFA8950();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1CEF4BB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCWrapper.Continuation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEF4BBE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCWrapper.Continuation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEF4BC48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCWrapper.Continuation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PrivateCloudComputeError.init(file:line:message:)@<X0>(unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v25 = a4;
  v24[3] = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = sub_1CEFA8030();
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1CEFA8650();

  v27 = a5;
  v28 = a6;
  MEMORY[0x1D38665A0](0x3D656C696620, 0xE600000000000000);
  v15 = sub_1CEFA8660();
  MEMORY[0x1D38665A0](v15);

  MEMORY[0x1D38665A0](0x3D656E696C202CLL, 0xE700000000000000);
  v26 = v25;
  v16 = sub_1CEFA8910();
  MEMORY[0x1D38665A0](v16);

  v17 = v27;
  v18 = v28;
  v19 = type metadata accessor for PrivateCloudComputeError(0);
  v20 = v19[5];
  v14(&a7[v20], 1, 1, v13);
  v21 = &a7[v19[6]];
  v22 = &a7[v19[7]];
  *a7 = 21;
  sub_1CEF3D4EC(v12, &a7[v20]);
  *v21 = 0;
  v21[1] = 0;
  *v22 = v17;
  v22[1] = v18;
  result = sub_1CEF3D55C(v12, &qword_1EC4A8F20, &unk_1CEFAB3E0);
  *&a7[v19[8]] = MEMORY[0x1E69E7CC0];
  return result;
}

char *sub_1CEF4BEE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v63[0] = a1;
  MEMORY[0x1D38670C0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9348, &unk_1CEFAB3D0);
  v4 = sub_1CEFA8920();
  v58 = a1;
  v59 = a2;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = swift_allocError();
    *v6 = a1;
  }

  v7 = sub_1CEFA7EF0();

  v8 = [v7 domain];
  v9 = sub_1CEFA8300();
  v56 = v10;
  v57 = v9;

  v55 = [v7 code];
  v60 = v7;
  v11 = [v7 userInfo];
  v12 = sub_1CEFA82B0();

  v13 = sub_1CEF48C5C(v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9070, &unk_1CEFAA490);
  result = sub_1CEFA86D0();
  v15 = 0;
  v16 = 1 << v13[32];
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v13 + 8);
  v19 = (v16 + 63) >> 6;
  v61 = result + 64;
  v62 = result;
  if (v18)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_13:
      v23 = v20 | (v15 << 6);
      v24 = (*(v13 + 6) + 16 * v23);
      v26 = *v24;
      v25 = v24[1];
      sub_1CEF37314(*(v13 + 7) + 32 * v23, v63);
      sub_1CEF37314(v63, v67);

      if (!swift_dynamicCast())
      {
        v65 = 0;
        v66 = 0xE000000000000000;
        __swift_project_boxed_opaque_existential_1(v63, v64[1]);
        sub_1CEFA8930();
      }

      v27 = v65;
      v28 = v66;
      result = __swift_destroy_boxed_opaque_existential_0(v63);
      *&v61[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v23;
      v29 = (*(v62 + 6) + 16 * v23);
      *v29 = v26;
      v29[1] = v25;
      v30 = (*(v62 + 7) + 16 * v23);
      *v30 = v27;
      v30[1] = v28;
      v31 = *(v62 + 2);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      *(v62 + 2) = v33;
      if (!v18)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v15 >= v19)
      {
        break;
      }

      v22 = *&v13[8 * v15 + 64];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_13;
      }
    }

    v34 = [v7 userInfo];
    v35 = sub_1CEFA82B0();

    v36 = sub_1CEF48CD0(v35);

    v37 = 1 << v36[32];
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v36 + 8);
    v40 = (v37 + 63) >> 6;

    v41 = 0;
    v42 = MEMORY[0x1E69E7CC0];
    while (v39)
    {
LABEL_27:
      v44 = __clz(__rbit64(v39)) | (v41 << 6);
      v45 = (*(v36 + 6) + 16 * v44);
      v46 = *v45;
      v47 = v45[1];
      sub_1CEF37314(*(v36 + 7) + 32 * v44, v64);
      v63[0] = v46;
      v63[1] = v47;

      v48 = sub_1CEF47250(v46, v47, v64);
      result = sub_1CEF3D55C(v63, &qword_1EC4A9078, &qword_1CEFAB9D0);
      v49 = *(v48 + 16);
      v50 = *(v42 + 2);
      v51 = v50 + v49;
      if (__OFADD__(v50, v49))
      {
        goto LABEL_43;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v51 > *(v42 + 3) >> 1)
      {
        if (v50 <= v51)
        {
          v52 = v50 + v49;
        }

        else
        {
          v52 = v50;
        }

        result = sub_1CEF480E4(result, v52, 1, v42);
        v42 = result;
      }

      v39 &= v39 - 1;
      if (*(v48 + 16))
      {
        if ((*(v42 + 3) >> 1) - *(v42 + 2) < v49)
        {
          goto LABEL_45;
        }

        swift_arrayInitWithCopy();

        if (v49)
        {
          v53 = *(v42 + 2);
          v32 = __OFADD__(v53, v49);
          v54 = v53 + v49;
          if (v32)
          {
            goto LABEL_46;
          }

          *(v42 + 2) = v54;
        }
      }

      else
      {

        if (v49)
        {
          goto LABEL_44;
        }
      }
    }

    while (1)
    {
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v43 >= v40)
      {

        *v59 = v57;
        v59[1] = v56;
        v59[2] = v55;
        v59[3] = v62;
        v59[4] = v42;
        return result;
      }

      v39 = *&v36[8 * v43 + 64];
      ++v41;
      if (v39)
      {
        v41 = v43;
        goto LABEL_27;
      }
    }

LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1CEF4C408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1CEF497CC(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1CEF76970(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1CEF9E728();
        v16 = v18;
      }

      result = sub_1CEF9E228(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1CEF4C510(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for XPCWrapper.Continuation(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1CEF3D55C(a1, &qword_1EC4A93D0, &unk_1CEFAB9B8);
    v13 = sub_1CEF9E1E4(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1CEF9E8A0();
        v17 = v21;
      }

      sub_1CEF53BD4(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for XPCWrapper.Continuation);
      sub_1CEF9E3D8(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1CEF3D55C(v8, &qword_1EC4A93D0, &unk_1CEFAB9B8);
  }

  else
  {
    sub_1CEF53BD4(a1, v12, type metadata accessor for XPCWrapper.Continuation);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1CEF49954(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t PrivateCloudComputeError.retryAfterDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PrivateCloudComputeError(0) + 20);

  return sub_1CEF4E644(a1, v3);
}

uint64_t PrivateCloudComputeError.telemetryString.getter()
{
  v1 = (v0 + *(type metadata accessor for PrivateCloudComputeError(0) + 24));
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    MEMORY[0x1D38665A0](0xD000000000000018, 0x80000001CEFAB3D0);
    MEMORY[0x1D38665A0](95, 0xE100000000000000);
    sub_1CEFA86A0();
    MEMORY[0x1D38665A0](95, 0xE100000000000000);
    MEMORY[0x1D38665A0](v3, v2);
  }

  else
  {
    MEMORY[0x1D38665A0](0xD000000000000018, 0x80000001CEFAB3D0);
    MEMORY[0x1D38665A0](95, 0xE100000000000000);
    sub_1CEFA86A0();
  }

  return 0;
}

uint64_t PrivateCloudComputeError.debugMessage.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrivateCloudComputeError(0) + 28));

  return v1;
}

uint64_t PrivateCloudComputeError.debugMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateCloudComputeError(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateCloudComputeError.underlying.getter()
{
  v39 = sub_1CEFA84C0();
  v1 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1CEFA8250();
  v3 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + *(type metadata accessor for PrivateCloudComputeError(0) + 32));
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1CEF49BA0(0, v7, 0);
    v8 = v42;
    v34 = *MEMORY[0x1E6977D70];
    v36 = (v3 + 104);
    v37 = (v1 + 32);
    v33 = *MEMORY[0x1E6977D60];
    v32 = *MEMORY[0x1E6977D58];
    v31 = *MEMORY[0x1E6977D68];
    v35 = (v3 + 32);
    v9 = (v6 + 72);
    do
    {
      v10 = *(v9 - 5);
      if (*v9)
      {
        if (*v9 == 1)
        {
          sub_1CEF53B38(&qword_1EC4A9088, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
          v11 = v39;
          v12 = swift_allocError();
          v14 = v13;
          v15 = v38;
          _sScE19PrivateCloudComputeE12codableValueScEAA012ErrorCodableE0O012CancellationgE0V_tcfC_0();
          (*v37)(v14, v15, v11);
        }

        else
        {
          v22 = *(v9 - 2);
          v21 = *(v9 - 1);
          v24 = *(v9 - 4);
          v23 = *(v9 - 3);
          sub_1CEF48F1C();
          codableValue.domain._countAndFlagsBits = v10;
          codableValue.domain._object = v24;
          codableValue.code = v23;
          codableValue.userInfo._rawValue = v22;
          codableValue.underlyingErrors._rawValue = v21;

          NSError.init(codableValue:)(v25, &codableValue);
          v12 = v26;
        }
      }

      else
      {
        sub_1CEF53B38(&qword_1EC4A9090, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
        v12 = swift_allocError();
        v17 = v16;
        if (BYTE4(v10) > 1u)
        {
          *v5 = v10;
          if (BYTE4(v10) == 2)
          {
            v20 = v33;
          }

          else
          {
            v20 = v34;
          }
        }

        else if (BYTE4(v10))
        {
          *v5 = v10;
          v20 = v32;
        }

        else
        {
          v18 = sub_1CEFA8230();
          if ((v18 & 0x100000000) != 0)
          {
            v19 = 1;
          }

          else
          {
            v19 = v18;
          }

          *v5 = v19;
          v20 = v31;
        }

        v27 = v40;
        (*v36)(v5, v20, v40);
        (*v35)(v17, v5, v27);
      }

      v42 = v8;
      v29 = *(v8 + 16);
      v28 = *(v8 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1CEF49BA0((v28 > 1), v29 + 1, 1);
        v8 = v42;
      }

      v9 += 48;
      *(v8 + 16) = v29 + 1;
      *(v8 + 8 * v29 + 32) = v12;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t PrivateCloudComputeError.underlying.setter(uint64_t a1)
{
  v58 = sub_1CEFA84C0();
  v3 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CEFA8250();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v57 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  v18 = *(a1 + 16);
  if (!v18)
  {

    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v56 = v5;
  v45 = v1;
  v66 = MEMORY[0x1E69E7CC0];
  sub_1CEF4B298(0, v18, 0);
  v19 = v66;
  v49 = (v3 + 8);
  v54 = (v7 + 16);
  v55 = (v7 + 32);
  v53 = (v7 + 88);
  v52 = *MEMORY[0x1E6977D68];
  v48 = *MEMORY[0x1E6977D58];
  v47 = *MEMORY[0x1E6977D60];
  v46 = *MEMORY[0x1E6977D70];
  v50 = (v7 + 96);
  v51 = (v7 + 8);
  v20 = 32;
  v61 = v12;
  v62 = v6;
  v59 = v17;
  v60 = v15;
  v63 = a1;
  do
  {
    v21 = *(a1 + v20);
    v64[0] = v21;
    MEMORY[0x1D38670C0](v21);
    MEMORY[0x1D38670C0](v21);
    MEMORY[0x1D38670C0](v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9348, &unk_1CEFAB3D0);
    if (swift_dynamicCast())
    {
      (*v55)(v15, v17, v6);
      v22 = *v54;
      (*v54)(v12, v15, v6);
      v23 = v57;
      v22(v57, v12, v6);
      v24 = (*v53)(v23, v6);
      if (v24 == v52)
      {
        (*v50)(v23, v6);
        v25 = sub_1CEFA8240();

        v26 = *v51;
        (*v51)(v12, v6);
        v26(v15, v6);
        v27 = 0;
LABEL_12:
        v30 = (v27 | v25);
LABEL_13:

        v31 = 0;
        v32 = 0;
        v34 = 0;
        v33 = 0uLL;
        goto LABEL_18;
      }

      if (v24 == v48)
      {

        v35 = *v51;
        (*v51)(v12, v6);
        v35(v15, v6);
        (*v50)(v23, v6);
        v25 = *v23;
        v27 = 0x100000000;
        goto LABEL_12;
      }

      if (v24 == v47)
      {

        v36 = *v51;
        (*v51)(v12, v6);
        v36(v15, v6);
        (*v50)(v23, v6);
        v25 = *v23;
        v27 = 0x200000000;
        goto LABEL_12;
      }

      if (v24 == v46)
      {

        v37 = *v51;
        (*v51)(v12, v6);
        v37(v15, v6);
        (*v50)(v23, v6);
        v30 = (*v23 | 0x300000000);
        goto LABEL_13;
      }

      v38 = *v51;
      (*v51)(v12, v6);
      v38(v15, v6);
      v38(v23, v6);
    }

    else
    {
      v28 = v56;
      v29 = v58;
      if (swift_dynamicCast())
      {

        (*v49)(v28, v29);
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0uLL;
        v34 = 1;
        goto LABEL_18;
      }
    }

    sub_1CEF4BEE0(v21, v64);
    v30 = v64[0];
    v31 = v64[1];
    v32 = v64[2];
    v34 = 2;
    v33 = v65;
LABEL_18:
    v66 = v19;
    v40 = *(v19 + 16);
    v39 = *(v19 + 24);
    if (v40 >= v39 >> 1)
    {
      v44 = v33;
      sub_1CEF4B298((v39 > 1), v40 + 1, 1);
      v33 = v44;
      v19 = v66;
    }

    *(v19 + 16) = v40 + 1;
    v41 = v19 + 48 * v40;
    *(v41 + 32) = v30;
    *(v41 + 40) = v31;
    *(v41 + 48) = v32;
    *(v41 + 56) = v33;
    *(v41 + 72) = v34;
    v20 += 8;
    --v18;
    v6 = v62;
    a1 = v63;
    v15 = v60;
    v12 = v61;
    v17 = v59;
  }

  while (v18);

  v1 = v45;
LABEL_23:
  v42 = *(type metadata accessor for PrivateCloudComputeError(0) + 32);

  *(v1 + v42) = v19;
  return result;
}

uint64_t (*PrivateCloudComputeError.underlying.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = PrivateCloudComputeError.underlying.getter();
  return sub_1CEF4D5D0;
}

uint64_t sub_1CEF4D5D0(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return PrivateCloudComputeError.underlying.setter(*a1);
  }

  PrivateCloudComputeError.underlying.setter(v2);
}

uint64_t PrivateCloudComputeError.init(code:retryAfterDate:underlying:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = sub_1CEFA84C0();
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1CEFA8250();
  v66 = *(v79 - 8);
  v12 = MEMORY[0x1EEE9AC00](v79);
  v75 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v74 = &v57 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v73 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v57 - v20;
  LOBYTE(a1) = *a1;
  sub_1CEF53C3C(a2, &v57 - v20, &qword_1EC4A8F20, &unk_1CEFAB3E0);
  v22 = type metadata accessor for PrivateCloudComputeError(0);
  v23 = v22[5];
  v24 = sub_1CEFA8030();
  (*(*(v24 - 8) + 56))(&a4[v23], 1, 1, v24);
  v25 = &a4[v22[6]];
  v26 = &a4[v22[7]];
  *a4 = a1;
  sub_1CEF3D4EC(v21, &a4[v23]);
  *v25 = 0;
  v25[1] = 0;
  *v26 = 0;
  v26[1] = 0;
  v27 = *(a3 + 16);
  if (!v27)
  {

    sub_1CEF3D55C(a2, &qword_1EC4A8F20, &unk_1CEFAB3E0);
    result = sub_1CEF3D55C(v21, &qword_1EC4A8F20, &unk_1CEFAB3E0);
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v58 = v21;
  v59 = v22;
  v72 = v11;
  v60 = a2;
  v61 = a4;
  v82 = MEMORY[0x1E69E7CC0];
  sub_1CEF4B298(0, v27, 0);
  v28 = v82;
  v65 = (v77 + 8);
  v29 = v66;
  v70 = (v66 + 2);
  v71 = (v66 + 4);
  v69 = (v66 + 11);
  v68 = *MEMORY[0x1E6977D68];
  v64 = *MEMORY[0x1E6977D58];
  v63 = *MEMORY[0x1E6977D60];
  v62 = *MEMORY[0x1E6977D70];
  v66 += 12;
  v67 = (v29 + 1);
  v30 = 32;
  v77 = a3;
  do
  {
    v31 = *(a3 + v30);
    v80[0] = v31;
    MEMORY[0x1D38670C0](v31);
    MEMORY[0x1D38670C0](v31);
    MEMORY[0x1D38670C0](v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9348, &unk_1CEFAB3D0);
    v32 = v78;
    v33 = v79;
    if (swift_dynamicCast())
    {
      v34 = v73;
      (*v71)(v73, v32, v33);
      v35 = *v70;
      v36 = v74;
      (*v70)(v74, v34, v33);
      v37 = v75;
      v35(v75, v36, v33);
      v38 = (*v69)(v37, v33);
      if (v38 == v68)
      {
        (*v66)(v37, v33);
        v39 = sub_1CEFA8240();

        v40 = *v67;
        (*v67)(v36, v33);
        v40(v34, v33);
        v41 = 0;
LABEL_12:
        v44 = (v41 | v39);
LABEL_13:

        v45 = 0;
        v46 = 0;
        v48 = 0;
        v47 = 0uLL;
        goto LABEL_18;
      }

      if (v38 == v64)
      {

        v49 = *v67;
        (*v67)(v36, v33);
        v49(v34, v33);
        (*v66)(v37, v33);
        v39 = *v37;
        v41 = 0x100000000;
        goto LABEL_12;
      }

      if (v38 == v63)
      {

        v50 = *v67;
        (*v67)(v36, v33);
        v50(v34, v33);
        (*v66)(v37, v33);
        v39 = *v37;
        v41 = 0x200000000;
        goto LABEL_12;
      }

      if (v38 == v62)
      {

        v51 = *v67;
        (*v67)(v36, v33);
        v51(v34, v33);
        (*v66)(v37, v33);
        v44 = (*v37 | 0x300000000);
        goto LABEL_13;
      }

      v52 = *v67;
      (*v67)(v36, v33);
      v52(v34, v33);
      v52(v37, v33);
    }

    else
    {
      v42 = v72;
      v43 = v76;
      if (swift_dynamicCast())
      {

        (*v65)(v42, v43);
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0uLL;
        v48 = 1;
        goto LABEL_18;
      }
    }

    sub_1CEF4BEE0(v31, v80);
    v44 = v80[0];
    v45 = v80[1];
    v46 = v80[2];
    v48 = 2;
    v47 = v81;
LABEL_18:
    v82 = v28;
    v54 = *(v28 + 16);
    v53 = *(v28 + 24);
    if (v54 >= v53 >> 1)
    {
      v57 = v47;
      sub_1CEF4B298((v53 > 1), v54 + 1, 1);
      v47 = v57;
      v28 = v82;
    }

    *(v28 + 16) = v54 + 1;
    v55 = v28 + 48 * v54;
    *(v55 + 32) = v44;
    *(v55 + 40) = v45;
    *(v55 + 48) = v46;
    *(v55 + 56) = v47;
    *(v55 + 72) = v48;
    v30 += 8;
    --v27;
    a3 = v77;
  }

  while (v27);

  sub_1CEF3D55C(v60, &qword_1EC4A8F20, &unk_1CEFAB3E0);
  result = sub_1CEF3D55C(v58, &qword_1EC4A8F20, &unk_1CEFAB3E0);
  a4 = v61;
  v22 = v59;
LABEL_23:
  *&a4[v22[8]] = v28;
  return result;
}

uint64_t PrivateCloudComputeError.init(code:retryAfterDate:telemetrySuffix:debugMessage:underlying:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v79 = a5;
  v80 = a6;
  v78 = a4;
  v77 = sub_1CEFA84C0();
  v73 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CEFA8250();
  v68 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v76 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v75 = &v60 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v74 = &v60 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v60 - v22;
  LOBYTE(a1) = *a1;
  v23 = type metadata accessor for PrivateCloudComputeError(0);
  v24 = v23[5];
  v25 = sub_1CEFA8030();
  (*(*(v25 - 8) + 56))(&a8[v24], 1, 1, v25);
  v63 = v23;
  v26 = v23[7];
  v27 = &a8[v23[6]];
  v28 = &a8[v26];
  *a8 = a1;
  v64 = a8;
  sub_1CEF3D4EC(a2, &a8[v24]);
  v29 = v78;
  v30 = v79;
  *v27 = a3;
  v27[1] = v29;
  v31 = v80;
  *v28 = v30;
  v28[1] = v31;
  v32 = *(a7 + 16);
  if (!v32)
  {

    result = sub_1CEF3D55C(a2, &qword_1EC4A8F20, &unk_1CEFAB3E0);
    v33 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v61 = a2;
  v84 = MEMORY[0x1E69E7CC0];
  sub_1CEF4B298(0, v32, 0);
  v33 = v84;
  v67 = (v73 + 1);
  v34 = v68;
  v72 = (v68 + 2);
  v73 = (v68 + 4);
  v71 = (v68 + 11);
  v70 = *MEMORY[0x1E6977D68];
  v66 = *MEMORY[0x1E6977D58];
  v65 = *MEMORY[0x1E6977D60];
  v62 = *MEMORY[0x1E6977D70];
  v68 += 12;
  v69 = (v34 + 1);
  v35 = 32;
  v79 = v14;
  v80 = a7;
  v78 = v15;
  do
  {
    v36 = *(a7 + v35);
    v82[0] = v36;
    MEMORY[0x1D38670C0](v36);
    MEMORY[0x1D38670C0](v36);
    MEMORY[0x1D38670C0](v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9348, &unk_1CEFAB3D0);
    v37 = v81;
    if (swift_dynamicCast())
    {
      v38 = v74;
      (*v73)(v74, v37, v15);
      v39 = *v72;
      v40 = v75;
      (*v72)(v75, v38, v15);
      v41 = v76;
      v39(v76, v40, v15);
      v42 = (*v71)(v41, v15);
      if (v42 == v70)
      {
        (*v68)(v41, v15);
        v43 = sub_1CEFA8240();

        v44 = *v69;
        (*v69)(v40, v15);
        v44(v38, v15);
        v45 = 0;
LABEL_12:
        v47 = (v45 | v43);
LABEL_13:

        v48 = 0;
        v49 = 0;
        v51 = 0;
        v50 = 0uLL;
        goto LABEL_18;
      }

      if (v42 == v66)
      {

        v52 = *v69;
        (*v69)(v40, v15);
        v52(v38, v15);
        (*v68)(v41, v15);
        v43 = *v41;
        v45 = 0x100000000;
        goto LABEL_12;
      }

      if (v42 == v65)
      {

        v53 = *v69;
        (*v69)(v40, v15);
        v53(v38, v15);
        (*v68)(v41, v15);
        v43 = *v41;
        v45 = 0x200000000;
        goto LABEL_12;
      }

      if (v42 == v62)
      {

        v54 = *v69;
        (*v69)(v40, v15);
        v54(v38, v15);
        (*v68)(v41, v15);
        v47 = (*v41 | 0x300000000);
        goto LABEL_13;
      }

      v55 = *v69;
      (*v69)(v40, v15);
      v55(v38, v15);
      v55(v41, v15);
    }

    else
    {
      v46 = v77;
      if (swift_dynamicCast())
      {

        (*v67)(v14, v46);
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0uLL;
        v51 = 1;
        goto LABEL_18;
      }
    }

    sub_1CEF4BEE0(v36, v82);
    v47 = v82[0];
    v48 = v82[1];
    v49 = v82[2];
    v51 = 2;
    v50 = v83;
LABEL_18:
    v84 = v33;
    v57 = *(v33 + 16);
    v56 = *(v33 + 24);
    if (v57 >= v56 >> 1)
    {
      v60 = v50;
      sub_1CEF4B298((v56 > 1), v57 + 1, 1);
      v50 = v60;
      v33 = v84;
    }

    *(v33 + 16) = v57 + 1;
    v58 = v33 + 48 * v57;
    *(v58 + 32) = v47;
    *(v58 + 40) = v48;
    *(v58 + 48) = v49;
    *(v58 + 56) = v50;
    *(v58 + 72) = v51;
    v35 += 8;
    --v32;
    v14 = v79;
    a7 = v80;
    v15 = v78;
  }

  while (v32);
  sub_1CEF3D55C(v61, &qword_1EC4A8F20, &unk_1CEFAB3E0);

LABEL_23:
  *&v64[v63[8]] = v33;
  return result;
}

uint64_t type metadata accessor for PrivateCloudComputeError(uint64_t a1)
{
  result = qword_1EDE38580;
  if (!qword_1EDE38580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CEF4E644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEF4E6B4()
{
  v1 = *v0;
  v2 = 1701080931;
  v3 = 0x7274656D656C6574;
  v4 = 0x73654D6775626564;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7466417972746572;
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

uint64_t sub_1CEF4E76C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CEF52E08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CEF4E7A0(uint64_t a1)
{
  v2 = sub_1CEF52AD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF4E7DC(uint64_t a1)
{
  v2 = sub_1CEF52AD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF4E818(uint64_t a1)
{
  v2 = sub_1CEF53B38(qword_1EDE38040, type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CEF4E884(uint64_t a1)
{
  v2 = sub_1CEF53B38(qword_1EDE38040, type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

PrivateCloudCompute::PrivateCloudComputeError::Code_optional __swiftcall PrivateCloudComputeError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 40;
  switch(rawValue)
  {
    case 32001:
      goto LABEL_56;
    case 32002:
      v2 = 1;
      goto LABEL_56;
    case 32003:
      v2 = 2;
      goto LABEL_56;
    case 32004:
      v2 = 3;
      goto LABEL_56;
    case 32005:
      v2 = 4;
      goto LABEL_56;
    case 32006:
      v2 = 5;
      goto LABEL_56;
    case 32007:
      v2 = 6;
      goto LABEL_56;
    case 32008:
      v2 = 7;
      goto LABEL_56;
    case 32009:
      v2 = 8;
      goto LABEL_56;
    case 32010:
      v2 = 9;
      goto LABEL_56;
    case 32011:
      v2 = 10;
      goto LABEL_56;
    case 32012:
      v2 = 11;
      goto LABEL_56;
    case 32013:
      v2 = 12;
      goto LABEL_56;
    case 32014:
      v2 = 13;
      goto LABEL_56;
    case 32015:
      v2 = 14;
      goto LABEL_56;
    case 32016:
      v2 = 15;
      goto LABEL_56;
    case 32017:
      v2 = 16;
      goto LABEL_56;
    case 32018:
      v2 = 17;
      goto LABEL_56;
    case 32019:
      v2 = 18;
      goto LABEL_56;
    case 32020:
      v2 = 19;
      goto LABEL_56;
    case 32021:
      v2 = 20;
      goto LABEL_56;
    case 32022:
      v2 = 21;
      goto LABEL_56;
    case 32023:
      v2 = 22;
      goto LABEL_56;
    case 32024:
      v2 = 23;
      goto LABEL_56;
    case 32025:
      v2 = 24;
      goto LABEL_56;
    case 32026:
      v2 = 25;
      goto LABEL_56;
    case 32027:
      v2 = 26;
      goto LABEL_56;
    case 32028:
      v2 = 27;
      goto LABEL_56;
    case 32029:
      v2 = 28;
      goto LABEL_56;
    case 32030:
      v2 = 29;
      goto LABEL_56;
    case 32031:
      v2 = 30;
      goto LABEL_56;
    case 32032:
      v2 = 31;
      goto LABEL_56;
    case 32033:
      v2 = 32;
      goto LABEL_56;
    case 32034:
      v2 = 33;
      goto LABEL_56;
    case 32035:
      v2 = 34;
      goto LABEL_56;
    case 32036:
      v2 = 35;
      goto LABEL_56;
    case 32037:
      v2 = 36;
      goto LABEL_56;
    case 32038:
      v2 = 37;
      goto LABEL_56;
    case 32039:
      v2 = 38;
      goto LABEL_56;
    case 32040:
      v2 = 39;
LABEL_56:
      v3 = v2;
      goto LABEL_57;
    case 32041:
LABEL_57:
      *v1 = v3;
      break;
    case 32043:
      *v1 = 41;
      break;
    case 32044:
      *v1 = 42;
      break;
    case 32045:
      *v1 = 43;
      break;
    case 32046:
      *v1 = 44;
      break;
    case 32047:
      *v1 = 45;
      break;
    case 32048:
      *v1 = 46;
      break;
    case 32049:
      *v1 = 47;
      break;
    case 32050:
      *v1 = 48;
      break;
    case 32051:
      *v1 = 49;
      break;
    case 32052:
      *v1 = 50;
      break;
    case 32053:
      *v1 = 51;
      break;
    case 32054:
      *v1 = 52;
      break;
    case 32055:
      *v1 = 54;
      break;
    case 32056:
      *v1 = 55;
      break;
    case 32057:
      *v1 = 56;
      break;
    case 32058:
      *v1 = 57;
      break;
    case 32059:
      *v1 = 53;
      break;
    default:
      *v1 = 58;
      break;
  }

  return rawValue;
}

uint64_t sub_1CEF4EB80()
{
  v1 = *v0;
  sub_1CEFA8A00();
  MEMORY[0x1D3866C60](qword_1CEFABA28[v1]);
  return sub_1CEFA8A40();
}

uint64_t sub_1CEF4EC08(uint64_t a1)
{
  v2 = *v1;
  sub_1CEFA8A00();
  MEMORY[0x1D3866C60](qword_1CEFABA28[v2]);
  return sub_1CEFA8A40();
}

uint64_t PrivateCloudComputeError.Category.hashValue.getter()
{
  v1 = *v0;
  sub_1CEFA8A00();
  MEMORY[0x1D3866C60](v1);
  return sub_1CEFA8A40();
}

uint64_t PrivateCloudComputeError.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9350, &qword_1CEFAB418);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF52AD0();
  sub_1CEFA8A60();
  v17 = *v3;
  v16 = 0;
  sub_1CEF52B24();
  sub_1CEFA88D0();
  if (!v2)
  {
    v9 = type metadata accessor for PrivateCloudComputeError(0);
    v15 = 1;
    sub_1CEFA8030();
    sub_1CEF53B38(&qword_1EDE380D8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1CEFA8870();
    v14 = 2;
    sub_1CEFA8830();
    v13 = 3;
    sub_1CEFA8830();
    v12 = *&v3[*(v9 + 32)];
    v11[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91D0, &qword_1CEFAB420);
    sub_1CEF4A288(&qword_1EC4A91D8, sub_1CEF4A1C8, MEMORY[0x1E69E6300]);
    sub_1CEFA88D0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PrivateCloudComputeError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9368, &qword_1CEFAB428);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for PrivateCloudComputeError(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 20);
  v14 = sub_1CEFA8030();
  v15 = *(*(v14 - 8) + 56);
  v33 = v13;
  v16 = v12;
  v15(&v12[v13], 1, 1, v14);
  v17 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1CEF52AD0();
  v18 = v32;
  sub_1CEFA8A50();
  if (v18)
  {
    v19 = v33;
    __swift_destroy_boxed_opaque_existential_0(v34);
    sub_1CEF3D55C(&v16[v19], &qword_1EC4A8F20, &unk_1CEFAB3E0);
  }

  else
  {
    v40 = 0;
    sub_1CEF52B78();
    sub_1CEFA87D0();
    *v16 = v41;
    v39 = 1;
    sub_1CEF53B38(&qword_1EC4A8FE8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1CEFA8770();
    sub_1CEF4E644(v5, &v16[v33]);
    v38 = 2;
    v20 = sub_1CEFA8730();
    v21 = v30;
    v22 = &v16[v9[6]];
    *v22 = v20;
    v22[1] = v23;
    v37 = 3;
    v24 = sub_1CEFA8730();
    v25 = &v16[v9[7]];
    *v25 = v24;
    v25[1] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91D0, &qword_1CEFAB420);
    v36 = 4;
    sub_1CEF4A288(&qword_1EC4A91F0, sub_1CEF4A300, MEMORY[0x1E69E6330]);
    sub_1CEFA87D0();
    (*(v21 + 8))(v8, v31);
    *&v16[v9[8]] = v35;
    sub_1CEF52BCC(v16, v29);
    __swift_destroy_boxed_opaque_existential_0(v34);
    return sub_1CEF53294(v16, type metadata accessor for PrivateCloudComputeError);
  }
}

unint64_t PrivateCloudComputeError.errorUserInfo.getter()
{
  v1 = sub_1CEFA8100();
  v72 = *(v1 - 8);
  v73 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v71 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CEFA7FE0();
  v69 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v67 - v7;
  v9 = sub_1CEFA8030();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CEF52FD4(MEMORY[0x1E69E7CC0]);
  v70 = type metadata accessor for PrivateCloudComputeError(0);
  v14 = *(v70 + 20);
  v74 = v0;
  sub_1CEF53C3C(v0 + v14, v8, &qword_1EC4A8F20, &unk_1CEFAB3E0);
  v15 = (*(v10 + 48))(v8, 1, v9);
  v16 = MEMORY[0x1E69E6158];
  if (v15 == 1)
  {
    sub_1CEF3D55C(v8, &qword_1EC4A8F20, &unk_1CEFAB3E0);
    v17 = v16;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v18 = sub_1CEFA8120();
    v20 = v19;
    sub_1CEF4FD10(v5);
    v21 = sub_1CEFA7F80();
    v22 = v3;
    v68 = v3;
    v24 = v23;
    v69 = *(v69 + 8);
    (v69)(v5, v22);
    v80 = MEMORY[0x1E69E6158];
    *&v79 = v21;
    *(&v79 + 1) = v24;
    sub_1CEF49BC0(&v79, v78);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v13;
    sub_1CEF4967C(v78, v18, v20, isUniquelyReferenced_nonNull_native);

    v26 = v77;
    sub_1CEF4FD10(v5);
    v27 = sub_1CEFA7F80();
    v29 = v28;
    (v69)(v5, v68);
    v17 = MEMORY[0x1E69E6158];
    v80 = MEMORY[0x1E69E6158];
    *&v79 = v27;
    *(&v79 + 1) = v29;
    sub_1CEF49BC0(&v79, v78);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v26;
    sub_1CEF4967C(v78, 0xD000000000000026, 0x80000001CEFB5130, v30);
    (*(v10 + 8))(v12, v9);
    v13 = v77;
  }

  v31 = v74;
  v32 = PrivateCloudComputeError.telemetryString.getter();
  v80 = v17;
  *&v79 = v32;
  *(&v79 + 1) = v33;
  sub_1CEF49BC0(&v79, v78);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v77 = v13;
  sub_1CEF4967C(v78, 0xD000000000000027, 0x80000001CEFB5160, v34);
  v35 = v77;
  v36 = (v31 + *(v70 + 28));
  v37 = v36[1];
  if (v37)
  {
    v38 = *v36;
    v80 = v17;
    *&v79 = v38;
    *(&v79 + 1) = v37;
    sub_1CEF49BC0(&v79, v78);

    v39 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v35;
    sub_1CEF4967C(v78, 0xD000000000000024, 0x80000001CEFB5190, v39);
    v35 = v77;
  }

  v40 = sub_1CEFA8110();
  v42 = v41;
  *&v79 = 0;
  *(&v79 + 1) = 0xE000000000000000;
  v43 = v71;
  PrivateCloudComputeError.category.getter(v71);
  v44 = v73;
  sub_1CEFA86A0();
  v45 = *(v72 + 8);
  v45(v43, v44);
  v80 = v17;
  sub_1CEF49BC0(&v79, v78);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v77 = v35;
  sub_1CEF4967C(v78, v40, v42, v46);

  v47 = v77;
  *&v79 = 0;
  *(&v79 + 1) = 0xE000000000000000;
  PrivateCloudComputeError.category.getter(v43);
  sub_1CEFA86A0();
  v45(v43, v44);
  v80 = v17;
  sub_1CEF49BC0(&v79, v78);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v77 = v47;
  sub_1CEF4967C(v78, 0xD000000000000020, 0x80000001CEFB5100, v48);
  v49 = v77;
  v50 = *(PrivateCloudComputeError.underlying.getter() + 16);

  if (v50 == 1)
  {
    v51 = PrivateCloudComputeError.underlying.getter();
    if (*(v51 + 16))
    {
      v52 = *(v51 + 32);
      MEMORY[0x1D38670C0](v52);

      v53 = sub_1CEFA8300();
      v55 = v54;
      swift_getErrorValue();
      v56 = v75;
      v57 = v76;
      v80 = v76;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v79);
      (*(*(v57 - 8) + 16))(boxed_opaque_existential_0, v56, v57);
      sub_1CEF49BC0(&v79, v78);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v77 = v49;
      sub_1CEF4967C(v78, v53, v55, v59);

LABEL_12:

      return v77;
    }
  }

  v60 = *(PrivateCloudComputeError.underlying.getter() + 16);

  if (v60 >= 2)
  {
    v61 = sub_1CEFA8300();
    v63 = v62;
    v64 = PrivateCloudComputeError.underlying.getter();
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9098, &qword_1CEFAA4A0);
    *&v79 = v64;
    sub_1CEF49BC0(&v79, v78);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v49;
    sub_1CEF4967C(v78, v61, v63, v65);
    goto LABEL_12;
  }

  return v49;
}

uint64_t sub_1CEF4FD10@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D8, &unk_1CEFB3600);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v29 = &v24 - v2;
  v28 = sub_1CEFA80A0();
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1CEFA7FD0();
  v5 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CEFA7FB0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CEFA7F90();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CEFA7FA0();
  MEMORY[0x1EEE9AC00](v16);
  (*(v18 + 104))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6969360]);
  v19 = v12;
  v20 = v28;
  (*(v13 + 104))(v15, *MEMORY[0x1E6969358], v19);
  v21 = v7;
  v22 = v29;
  (*(v9 + 104))(v11, *MEMORY[0x1E6969370], v8);
  (*(v5 + 104))(v21, *MEMORY[0x1E6969380], v27);
  sub_1CEFA8080();
  result = (*(v3 + 48))(v22, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v25, v22, v20);
    return sub_1CEFA7FC0();
  }

  return result;
}

uint64_t PrivateCloudComputeError.category.getter@<X0>(uint64_t a1@<X8>)
{
  PrivateCloudComputeError.errorCategory.getter(&v7);
  v2 = v7;
  v3 = sub_1CEFA8100();
  v4 = *(*(v3 - 8) + 104);
  v5 = **(&unk_1E83BC3C8 + v2);

  return v4(a1, v5, v3);
}

uint64_t PrivateCloudComputeError.description.getter()
{
  v0 = PrivateCloudComputeError.underlying.getter();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);
    MEMORY[0x1D38670C0](v1);

    v2 = PrivateCloudComputeError.descriptionWithoutUnderlying.getter();
    MEMORY[0x1D38665A0](v2);

    MEMORY[0x1D38665A0](14906, 0xE200000000000000);
    swift_getErrorValue();
    sub_1CEFA8930();

    return 0;
  }

  else
  {

    return PrivateCloudComputeError.descriptionWithoutUnderlying.getter();
  }
}

uint64_t PrivateCloudComputeError.descriptionWithoutUnderlying.getter()
{
  v1 = type metadata accessor for PrivateCloudComputeError(0);
  v2 = (v0 + *(v1 + 28));
  v3 = v2[1];
  if (v3 || (v2 = (v0 + *(v1 + 24)), (v3 = v2[1]) != 0))
  {
    v4 = *v2;
    MEMORY[0x1D38665A0](0xD000000000000018, 0x80000001CEFAB3D0);
    MEMORY[0x1D38665A0](8250, 0xE200000000000000);
    sub_1CEFA86A0();
    MEMORY[0x1D38665A0](10272, 0xE200000000000000);
    MEMORY[0x1D38665A0](v4, v3);
    MEMORY[0x1D38665A0](41, 0xE100000000000000);
  }

  else
  {
    MEMORY[0x1D38665A0](0xD000000000000018, 0x80000001CEFAB3D0);
    MEMORY[0x1D38665A0](8250, 0xE200000000000000);
    sub_1CEFA86A0();
  }

  return 0;
}

uint64_t PrivateCloudComputeError.underlyingErrors.getter()
{
  v0 = PrivateCloudComputeError.underlying.getter();
  v1 = *(v0 + 16);
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1CEF4B2B8(0, v1, 0);
    v2 = 32;
    v3 = v14;
    do
    {
      v4 = *(v0 + v2);
      v12 = v4;
      MEMORY[0x1D38670C0](v4);
      MEMORY[0x1D38670C0](v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9348, &unk_1CEFAB3D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9328, &qword_1CEFAB3B0);
      if (swift_dynamicCast())
      {

        sub_1CEF53104(&v9, v13);
      }

      else
      {
        v11 = 0;
        v9 = 0u;
        v10 = 0u;
        v5 = sub_1CEFA7EF0();
        sub_1CEFA80F0();

        if (*(&v10 + 1))
        {
          sub_1CEF3D55C(&v9, &qword_1EC4A9378, &unk_1CEFAB430);
        }
      }

      v14 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1CEF4B2B8((v6 > 1), v7 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v7 + 1;
      sub_1CEF53104(v13, v3 + 40 * v7 + 32);
      v2 += 8;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t PrivateCloudComputeError.additionalUserInfo.getter()
{
  v1 = v0;
  v2 = sub_1CEFA8100();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CEFA7FE0();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_1CEFA8030();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CEF5311C(MEMORY[0x1E69E7CC0]);
  v46 = v14;
  v15 = type metadata accessor for PrivateCloudComputeError(0);
  v16 = *(v15 + 20);
  v41 = v1;
  sub_1CEF53C3C(v1 + v16, v9, &qword_1EC4A8F20, &unk_1CEFAB3E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1CEF3D55C(v9, &qword_1EC4A8F20, &unk_1CEFAB3E0);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1CEF4FD10(v6);
    v17 = sub_1CEFA7F80();
    v19 = v18;
    (*(v38 + 8))(v6, v39);
    v20 = v46;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v20;
    sub_1CEF497CC(v17, v19, 0xD000000000000026, 0x80000001CEFB5130, isUniquelyReferenced_nonNull_native);
    v46 = v44;
    (*(v11 + 8))(v13, v10);
    v14 = v46;
  }

  v22 = v41;
  v23 = PrivateCloudComputeError.telemetryString.getter();
  v25 = v24;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v14;
  sub_1CEF497CC(v23, v25, 0xD000000000000027, 0x80000001CEFB5160, v26);
  v46 = v44;
  v27 = (v22 + *(v15 + 28));
  v28 = v27[1];
  if (v28)
  {
    v29 = *v27;

    sub_1CEF4C408(v29, v28, 0xD000000000000024, 0x80000001CEFB5190);
  }

  v44 = 0;
  v45 = 0xE000000000000000;
  v30 = v40;
  PrivateCloudComputeError.category.getter(v40);
  v31 = v43;
  sub_1CEFA86A0();
  (*(v42 + 8))(v30, v31);
  v32 = v44;
  v33 = v45;
  v34 = v46;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v34;
  sub_1CEF497CC(v32, v33, 0xD000000000000020, 0x80000001CEFB5100, v35);
  return v44;
}

void sub_1CEF50A64()
{
  sub_1CEF53B38(&qword_1EC4A93C0, type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);

  JUMPOUT(0x1D3866390);
}

uint64_t PrivateCloudComputeError.init(responseMetadata:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v216 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v194 = &v182 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v193 = &v182 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v192 = &v182 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v191 = &v182 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v199 = &v182 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v182 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v189 = &v182 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v188 = &v182 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v187 = &v182 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v186 = &v182 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v185 = &v182 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v184 = &v182 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v183 = &v182 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v196 = &v182 - v34;
  v213 = sub_1CEFA7FD0();
  v35 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v211 = &v182 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1CEFA7FB0();
  v208 = *(v37 - 8);
  v209 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v210 = &v182 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_1CEFA7F90();
  v205 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v207 = &v182 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_1CEFA7FA0();
  v40 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v204 = &v182 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1CEFA80A0();
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = &v182 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_1CEFA7FE0();
  v202 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v200 = &v182 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1CEFA8030();
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v214 = &v182 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for PrivateCloudComputeError(0);
  MEMORY[0x1EEE9AC00](v49);
  v217 = &v182 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1[16];
  v221 = a1;
  v195 = v6;
  v190 = v19;
  v212 = v35;
  if (v51 == 255)
  {
    v54 = a1[1];
    if (v54 == 17)
    {
      v55 = *a1;
      if (v55 == 47)
      {
        v215 = 0;
        v198 = 0;
LABEL_12:
        v57 = MEMORY[0x1E69E7CC0];
        goto LABEL_16;
      }

      v223[0] = 0;
      v223[1] = 0xE000000000000000;
      MEMORY[0x1D38665A0](0x5F70747468, 0xE500000000000000);
      LOBYTE(v222) = v55;
    }

    else
    {
      v223[0] = 0;
      v223[1] = 0xE000000000000000;
      MEMORY[0x1D38665A0](0x5F63707267, 0xE500000000000000);
      LOBYTE(v222) = v54;
    }
  }

  else
  {
    v52 = *(a1 + 1);
    if (v51)
    {
      v223[0] = *(a1 + 1);
      v198 = sub_1CEFA8910();
      v215 = v53;
      goto LABEL_11;
    }

    v223[0] = 0;
    v223[1] = 0xE000000000000000;
    LOBYTE(v222) = v52;
  }

  sub_1CEFA86A0();
  v198 = v223[0];
  v215 = v223[1];
LABEL_11:
  v56 = *a1;
  if (v56 == 47)
  {
    goto LABEL_12;
  }

  v223[0] = 0;
  v223[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0x65736E6F70736572, 0xEE003D65646F632DLL);
  LOBYTE(v222) = v56;
  sub_1CEFA86A0();
  v58 = v223[0];
  v59 = v223[1];
  v57 = sub_1CEF47FD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v61 = *(v57 + 2);
  v60 = *(v57 + 3);
  if (v61 >= v60 >> 1)
  {
    v57 = sub_1CEF47FD8((v60 > 1), v61 + 1, 1, v57);
  }

  *(v57 + 2) = v61 + 1;
  v62 = &v57[16 * v61];
  *(v62 + 4) = v58;
  *(v62 + 5) = v59;
  a1 = v221;
LABEL_16:
  v63 = a1[1];
  if (v63 != 17)
  {
    v223[0] = 0;
    v223[1] = 0xE000000000000000;
    MEMORY[0x1D38665A0](0x3D737574617473, 0xE700000000000000);
    LOBYTE(v222) = v63;
    sub_1CEFA86A0();
    v64 = v223[0];
    v65 = v223[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_1CEF47FD8(0, *(v57 + 2) + 1, 1, v57);
    }

    v67 = *(v57 + 2);
    v66 = *(v57 + 3);
    if (v67 >= v66 >> 1)
    {
      v57 = sub_1CEF47FD8((v66 > 1), v67 + 1, 1, v57);
    }

    *(v57 + 2) = v67 + 1;
    v68 = &v57[16 * v67];
    *(v68 + 4) = v64;
    *(v68 + 5) = v65;
    a1 = v221;
  }

  v69 = a1[16];
  v218 = v49;
  v220 = v44;
  if (v69 != 255)
  {
    if ((v69 & 1) == 0)
    {
      v197 = v40;
      v219 = v46;
      v70 = *(v221 + 1);
      v223[0] = 0;
      v223[1] = 0xE000000000000000;
      MEMORY[0x1D38665A0](0x6F632D726F727265, 0xEB000000003D6564);
      LOBYTE(v222) = v70;
      sub_1CEFA86A0();
      v72 = v223[0];
      v71 = v223[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_1CEF47FD8(0, *(v57 + 2) + 1, 1, v57);
      }

      v74 = *(v57 + 2);
      v73 = *(v57 + 3);
      if (v74 >= v73 >> 1)
      {
        v57 = sub_1CEF47FD8((v73 > 1), v74 + 1, 1, v57);
      }

      *(v57 + 2) = v74 + 1;
      v75 = &v57[16 * v74];
      *(v75 + 4) = v72;
      *(v75 + 5) = v71;
      v76 = v221[16];
      if (v76 == 255)
      {
        v46 = v219;
        v40 = v197;
        goto LABEL_35;
      }

      v46 = v219;
      v40 = v197;
      if ((v76 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v77 = *(v221 + 1);
    strcpy(v223, "error-code=");
    HIDWORD(v223[1]) = -352321536;
    v222 = v77;
    v78 = sub_1CEFA8910();
    MEMORY[0x1D38665A0](v78);

    v79 = v223[0];
    v80 = v223[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_1CEF47FD8(0, *(v57 + 2) + 1, 1, v57);
    }

    v82 = *(v57 + 2);
    v81 = *(v57 + 3);
    if (v82 >= v81 >> 1)
    {
      v57 = sub_1CEF47FD8((v81 > 1), v82 + 1, 1, v57);
    }

    *(v57 + 2) = v82 + 1;
    v83 = &v57[16 * v82];
    *(v83 + 4) = v79;
    *(v83 + 5) = v80;
  }

LABEL_35:
  v84 = v221;
  if (*(v221 + 4))
  {
    v85 = *(v221 + 3);
    strcpy(v223, "description=");
    BYTE5(v223[1]) = 0;
    HIWORD(v223[1]) = -5120;
    MEMORY[0x1D38665A0](v85);
    v86 = v223[0];
    v87 = v223[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_1CEF47FD8(0, *(v57 + 2) + 1, 1, v57);
    }

    v89 = *(v57 + 2);
    v88 = *(v57 + 3);
    if (v89 >= v88 >> 1)
    {
      v57 = sub_1CEF47FD8((v88 > 1), v89 + 1, 1, v57);
    }

    *(v57 + 2) = v89 + 1;
    v90 = &v57[16 * v89];
    *(v90 + 4) = v86;
    *(v90 + 5) = v87;
  }

  if (*(v84 + 6))
  {
    v91 = *(v84 + 5);
    v223[0] = 0x3D6573756163;
    v223[1] = 0xE600000000000000;
    MEMORY[0x1D38665A0](v91);
    v92 = v223[0];
    v93 = v223[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_1CEF47FD8(0, *(v57 + 2) + 1, 1, v57);
    }

    v95 = *(v57 + 2);
    v94 = *(v57 + 3);
    if (v95 >= v94 >> 1)
    {
      v57 = sub_1CEF47FD8((v94 > 1), v95 + 1, 1, v57);
    }

    *(v57 + 2) = v95 + 1;
    v96 = &v57[16 * v95];
    *(v96 + 4) = v92;
    *(v96 + 5) = v93;
  }

  v97 = *(v84 + 7);
  LODWORD(v219) = v84[64];
  v98 = v214;
  v197 = v97;
  if (v219 != 1 || (v99 = v84[16], v99 != 255) && (v99 & 1) == 0 && (v109 = *(v84 + 1), v109 <= 0x2Cu) && ((1 << v109) & 0x1E181C260000) != 0 || (v100 = v84[1], v100 <= 0xE) && ((1 << v100) & 0x4110) != 0 || (v101 = *v84, v101 <= 0x2C) && ((1 << v101) & 0x108002000000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_1CEF47FD8(0, *(v57 + 2) + 1, 1, v57);
    }

    v111 = *(v57 + 2);
    v110 = *(v57 + 3);
    if (v111 >= v110 >> 1)
    {
      v57 = sub_1CEF47FD8((v110 > 1), v111 + 1, 1, v57);
    }

    *(v57 + 2) = v111 + 1;
    v112 = &v57[16 * v111];
    strcpy(v112 + 32, "retryable=yes");
    *(v112 + 23) = -4864;
    if (v219)
    {
      v113 = type metadata accessor for RopesResponseMetadata(0);
      (*(v47 + 16))(v98, &v84[*(v113 + 60)], v46);
    }

    else
    {
      type metadata accessor for RopesResponseMetadata(0);
      sub_1CEFA7FF0();
    }

    v114 = v212;
    v115 = v213;
    v116 = v98;
    sub_1CEFA8090();
    (*(v40 + 104))(v204, *MEMORY[0x1E6969360], v201);
    (*(v205 + 104))(v207, *MEMORY[0x1E6969358], v206);
    (*(v208 + 104))(v210, *MEMORY[0x1E6969370], v209);
    (*(v114 + 104))(v211, *MEMORY[0x1E6969380], v115);
    v117 = v200;
    sub_1CEFA7FC0();
    v118 = sub_1CEFA7F80();
    v120 = v119;
    (*(v202 + 8))(v117, v203);
    v103 = v47;
    v102 = v46;
    (*(v47 + 8))(v116, v46);
    v223[0] = 0;
    v223[1] = 0xE000000000000000;
    sub_1CEFA8650();

    v223[0] = 0x7466417972746572;
    v223[1] = 0xEF3D657461447265;
    MEMORY[0x1D38665A0](v118, v120);

    v108 = v223[0];
    v104 = v223[1];
    v106 = *(v57 + 2);
    v121 = *(v57 + 3);
    v107 = v106 + 1;
    if (v106 >= v121 >> 1)
    {
      v57 = sub_1CEF47FD8((v121 > 1), v106 + 1, 1, v57);
    }

    v84 = v221;
  }

  else
  {
    v102 = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_1CEF47FD8(0, *(v57 + 2) + 1, 1, v57);
    }

    v103 = v47;
    v104 = 0xEC0000006F6E3D65;
    v106 = *(v57 + 2);
    v105 = *(v57 + 3);
    v107 = v106 + 1;
    if (v106 >= v105 >> 1)
    {
      v57 = sub_1CEF47FD8((v105 > 1), v106 + 1, 1, v57);
    }

    v108 = 0x6C62617972746572;
  }

  v122 = MEMORY[0x1E69E7CC0];
  *(v57 + 2) = v107;
  v123 = &v57[16 * v106];
  *(v123 + 4) = v108;
  *(v123 + 5) = v104;
  v223[0] = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
  sub_1CEF53230();
  v220 = sub_1CEFA82E0();
  v125 = v124;

  v126 = v84[16];
  if (v126 == 255 || (v126 & 1) != 0)
  {
    v127 = v122;
    v128 = v125;
    v129 = *(v103 + 56);
    v130 = v199;
    v131 = v102;
    v129(v199, 1, 1, v102);
    v132 = v218;
LABEL_74:
    v133 = v132[5];
    v134 = v217;
    v129(&v217[v133], 1, 1, v131);
    v135 = &v134[v132[6]];
    v136 = &v134[v132[7]];
    *v134 = 57;
    sub_1CEF3D4EC(v130, &v134[v133]);
    v137 = v215;
    *v135 = v198;
    v135[1] = v137;
  }

  else
  {
    v132 = v218;
    v131 = v102;
    switch(*(v84 + 1))
    {
      case 2u:
        v127 = v122;
        v128 = v125;

        v138 = *(v103 + 56);
        v130 = v199;
        v138(v199, 1, 1, v102);
        v139 = v132[5];
        v134 = v217;
        v138(&v217[v139], 1, 1, v131);
        v140 = &v134[v132[6]];
        v136 = &v134[v132[7]];
        v141 = 15;
        goto LABEL_139;
      case 0x11u:
        v127 = v122;

        v128 = v125;
        if (v219)
        {
          v147 = &v84[*(type metadata accessor for RopesResponseMetadata(0) + 60)];
          v130 = v191;
          (*(v103 + 16))(v191, v147, v102);
        }

        else
        {
          type metadata accessor for RopesResponseMetadata(0);
          v130 = v191;
          sub_1CEFA7FF0();
        }

        v166 = *(v103 + 56);
        v166(v130, 0, 1, v102);
        v139 = v132[5];
        v134 = v217;
        v166(&v217[v139], 1, 1, v131);
        v140 = &v134[v132[6]];
        v136 = &v134[v132[7]];
        v141 = 10;
        goto LABEL_139;
      case 0x12u:
        v127 = v122;

        v128 = v125;
        if (v219)
        {
          v152 = &v84[*(type metadata accessor for RopesResponseMetadata(0) + 60)];
          v130 = v192;
          (*(v103 + 16))(v192, v152, v102);
        }

        else
        {
          type metadata accessor for RopesResponseMetadata(0);
          v130 = v192;
          sub_1CEFA7FF0();
        }

        v172 = *(v103 + 56);
        v172(v130, 0, 1, v102);
        v139 = v132[5];
        v134 = v217;
        v172(&v217[v139], 1, 1, v131);
        v140 = &v134[v132[6]];
        v136 = &v134[v132[7]];
        v141 = 11;
        goto LABEL_139;
      case 0x13u:
        v127 = v122;

        v128 = v125;
        if (v219)
        {
          v151 = &v84[*(type metadata accessor for RopesResponseMetadata(0) + 60)];
          v130 = v193;
          (*(v103 + 16))(v193, v151, v102);
        }

        else
        {
          type metadata accessor for RopesResponseMetadata(0);
          v130 = v193;
          sub_1CEFA7FF0();
        }

        v171 = *(v103 + 56);
        v171(v130, 0, 1, v102);
        v139 = v132[5];
        v134 = v217;
        v171(&v217[v139], 1, 1, v131);
        v140 = &v134[v132[6]];
        v136 = &v134[v132[7]];
        v141 = 12;
        goto LABEL_139;
      case 0x14u:
        v127 = v122;

        v128 = v125;
        if (v219)
        {
          v145 = &v84[*(type metadata accessor for RopesResponseMetadata(0) + 60)];
          v130 = v194;
          (*(v103 + 16))(v194, v145, v102);
        }

        else
        {
          type metadata accessor for RopesResponseMetadata(0);
          v130 = v194;
          sub_1CEFA7FF0();
        }

        v164 = *(v103 + 56);
        v164(v130, 0, 1, v102);
        v139 = v132[5];
        v134 = v217;
        v164(&v217[v139], 1, 1, v131);
        v140 = &v134[v132[6]];
        v136 = &v134[v132[7]];
        v141 = 13;
        goto LABEL_139;
      case 0x15u:
        v127 = v122;

        v128 = v125;
        if (v219)
        {
          v148 = type metadata accessor for RopesResponseMetadata(0);
          v149 = v196;
          (*(v103 + 16))(v196, &v84[*(v148 + 60)], v102);
        }

        else
        {
          type metadata accessor for RopesResponseMetadata(0);
          v149 = v196;
          sub_1CEFA7FF0();
        }

        v167 = *(v103 + 56);
        v167(v149, 0, 1, v102);
        v168 = v132[5];
        v134 = v217;
        v167(&v217[v168], 1, 1, v131);
        v140 = &v134[v132[6]];
        v136 = &v134[v132[7]];
        *v134 = 0;
        v169 = &v134[v168];
        v130 = v196;
        goto LABEL_140;
      case 0x16u:
        v127 = v122;
        v128 = v125;

        v153 = *(v103 + 56);
        v130 = v199;
        v153(v199, 1, 1, v102);
        v139 = v132[5];
        v134 = v217;
        v153(&v217[v139], 1, 1, v131);
        v140 = &v134[v132[6]];
        v136 = &v134[v132[7]];
        v141 = 17;
        goto LABEL_139;
      case 0x17u:
        v127 = v122;
        v128 = v125;

        v154 = *(v103 + 56);
        v130 = v199;
        v154(v199, 1, 1, v102);
        v139 = v132[5];
        v134 = v217;
        v154(&v217[v139], 1, 1, v131);
        v140 = &v134[v132[6]];
        v136 = &v134[v132[7]];
        v141 = 18;
        goto LABEL_139;
      case 0x18u:
        v127 = v122;
        v128 = v125;

        v158 = *(v103 + 56);
        v130 = v199;
        v158(v199, 1, 1, v102);
        v139 = v132[5];
        v134 = v217;
        v158(&v217[v139], 1, 1, v131);
        v140 = &v134[v132[6]];
        v136 = &v134[v132[7]];
        v141 = 19;
        goto LABEL_139;
      case 0x19u:
        v127 = v122;
        v128 = v125;

        v157 = *(v103 + 56);
        v130 = v199;
        v157(v199, 1, 1, v102);
        v139 = v132[5];
        v134 = v217;
        v157(&v217[v139], 1, 1, v131);
        v140 = &v134[v132[6]];
        v136 = &v134[v132[7]];
        v141 = 20;
        goto LABEL_139;
      case 0x1Au:
        v127 = v122;

        v128 = v125;
        if (v219)
        {
          v144 = &v84[*(type metadata accessor for RopesResponseMetadata(0) + 60)];
          v130 = v183;
          (*(v103 + 16))(v183, v144, v102);
        }

        else
        {
          type metadata accessor for RopesResponseMetadata(0);
          v130 = v183;
          sub_1CEFA7FF0();
        }

        v163 = *(v103 + 56);
        v163(v130, 0, 1, v102);
        v139 = v132[5];
        v134 = v217;
        v163(&v217[v139], 1, 1, v131);
        v140 = &v134[v132[6]];
        v136 = &v134[v132[7]];
        v141 = 2;
        goto LABEL_139;
      case 0x1Bu:
        v127 = v122;

        v128 = v125;
        if (v219)
        {
          v150 = &v84[*(type metadata accessor for RopesResponseMetadata(0) + 60)];
          v130 = v184;
          (*(v103 + 16))(v184, v150, v102);
        }

        else
        {
          type metadata accessor for RopesResponseMetadata(0);
          v130 = v184;
          sub_1CEFA7FF0();
        }

        v170 = *(v103 + 56);
        v170(v130, 0, 1, v102);
        v139 = v132[5];
        v134 = v217;
        v170(&v217[v139], 1, 1, v131);
        v140 = &v134[v132[6]];
        v136 = &v134[v132[7]];
        v141 = 3;
        goto LABEL_139;
      case 0x1Cu:
        v127 = v122;

        v128 = v125;
        if (v219)
        {
          v146 = &v84[*(type metadata accessor for RopesResponseMetadata(0) + 60)];
          v130 = v185;
          (*(v103 + 16))(v185, v146, v102);
        }

        else
        {
          type metadata accessor for RopesResponseMetadata(0);
          v130 = v185;
          sub_1CEFA7FF0();
        }

        v165 = *(v103 + 56);
        v165(v130, 0, 1, v102);
        v139 = v132[5];
        v134 = v217;
        v165(&v217[v139], 1, 1, v131);
        v140 = &v134[v132[6]];
        v136 = &v134[v132[7]];
        v141 = 4;
        goto LABEL_139;
      case 0x1Du:
        v127 = v122;

        v128 = v125;
        if (v219)
        {
          v143 = &v84[*(type metadata accessor for RopesResponseMetadata(0) + 60)];
          v130 = v187;
          (*(v103 + 16))(v187, v143, v102);
        }

        else
        {
          type metadata accessor for RopesResponseMetadata(0);
          v130 = v187;
          sub_1CEFA7FF0();
        }

        v162 = *(v103 + 56);
        v162(v130, 0, 1, v102);
        v139 = v132[5];
        v134 = v217;
        v162(&v217[v139], 1, 1, v131);
        v140 = &v134[v132[6]];
        v136 = &v134[v132[7]];
        v141 = 6;
        goto LABEL_139;
      case 0x1Eu:
        v127 = v122;

        v128 = v125;
        if (v219)
        {
          v155 = &v84[*(type metadata accessor for RopesResponseMetadata(0) + 60)];
          v130 = v188;
          (*(v103 + 16))(v188, v155, v102);
        }

        else
        {
          type metadata accessor for RopesResponseMetadata(0);
          v130 = v188;
          sub_1CEFA7FF0();
        }

        v173 = *(v103 + 56);
        v173(v130, 0, 1, v102);
        v139 = v132[5];
        v134 = v217;
        v173(&v217[v139], 1, 1, v131);
        v140 = &v134[v132[6]];
        v136 = &v134[v132[7]];
        v141 = 7;
        goto LABEL_139;
      case 0x1Fu:
        v127 = v122;

        v128 = v125;
        if (v219)
        {
          v156 = &v84[*(type metadata accessor for RopesResponseMetadata(0) + 60)];
          v130 = v189;
          (*(v103 + 16))(v189, v156, v102);
        }

        else
        {
          type metadata accessor for RopesResponseMetadata(0);
          v130 = v189;
          sub_1CEFA7FF0();
        }

        v174 = *(v103 + 56);
        v174(v130, 0, 1, v102);
        v139 = v132[5];
        v134 = v217;
        v174(&v217[v139], 1, 1, v131);
        v140 = &v134[v132[6]];
        v136 = &v134[v132[7]];
        v141 = 8;
        goto LABEL_139;
      case 0x23u:
        v127 = v122;

        v128 = v125;
        if (v219)
        {
          v160 = &v84[*(type metadata accessor for RopesResponseMetadata(0) + 60)];
          v130 = v195;
          (*(v103 + 16))(v195, v160, v102);
        }

        else
        {
          type metadata accessor for RopesResponseMetadata(0);
          v130 = v195;
          sub_1CEFA7FF0();
        }

        v180 = *(v103 + 56);
        v180(v130, 0, 1, v102);
        v139 = v132[5];
        v134 = v217;
        v180(&v217[v139], 1, 1, v131);
        v140 = &v134[v132[6]];
        v136 = &v134[v132[7]];
        v141 = 9;
        goto LABEL_139;
      case 0x24u:
        v127 = v122;

        v128 = v125;
        if (v219)
        {
          v159 = &v84[*(type metadata accessor for RopesResponseMetadata(0) + 60)];
          v130 = v190;
          (*(v103 + 16))(v190, v159, v102);
        }

        else
        {
          type metadata accessor for RopesResponseMetadata(0);
          v130 = v190;
          sub_1CEFA7FF0();
        }

        v175 = *(v103 + 56);
        v175(v130, 0, 1, v102);
        v176 = v102;
        v177 = v132[5];
        v134 = v217;
        v175(&v217[v177], 1, 1, v176);
        v178 = v132[7];
        v179 = &v134[v132[6]];
        v136 = &v134[v178];
        *v134 = 1;
        sub_1CEF3D4EC(v130, &v134[v177]);
        *v179 = 0;
        *(v179 + 1) = 0;
        v132 = v218;
        break;
      case 0x29u:
        v127 = v122;

        v128 = v125;
        if (v219)
        {
          v142 = &v84[*(type metadata accessor for RopesResponseMetadata(0) + 60)];
          v130 = v186;
          (*(v103 + 16))(v186, v142, v102);
        }

        else
        {
          type metadata accessor for RopesResponseMetadata(0);
          v130 = v186;
          sub_1CEFA7FF0();
        }

        v161 = *(v103 + 56);
        v161(v130, 0, 1, v102);
        v139 = v132[5];
        v134 = v217;
        v161(&v217[v139], 1, 1, v131);
        v140 = &v134[v132[6]];
        v136 = &v134[v132[7]];
        v141 = 5;
LABEL_139:
        *v134 = v141;
        v169 = &v134[v139];
LABEL_140:
        sub_1CEF3D4EC(v130, v169);
        *v140 = 0;
        *(v140 + 1) = 0;
        break;
      default:
        v127 = v122;
        v128 = v125;
        v129 = *(v103 + 56);
        v130 = v199;
        v129(v199, 1, 1, v102);
        goto LABEL_74;
    }
  }

  *v136 = v220;
  v136[1] = v128;
  sub_1CEF3D55C(v130, &qword_1EC4A8F20, &unk_1CEFAB3E0);
  *&v134[v132[8]] = v127;
  sub_1CEF53BD4(v134, v216, type metadata accessor for PrivateCloudComputeError);
  return sub_1CEF53294(v221, type metadata accessor for RopesResponseMetadata);
}

unint64_t sub_1CEF52AD0()
{
  result = qword_1EC4A9358;
  if (!qword_1EC4A9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9358);
  }

  return result;
}

unint64_t sub_1CEF52B24()
{
  result = qword_1EC4A9360;
  if (!qword_1EC4A9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9360);
  }

  return result;
}

unint64_t sub_1CEF52B78()
{
  result = qword_1EC4A9370;
  if (!qword_1EC4A9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9370);
  }

  return result;
}

uint64_t sub_1CEF52BCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudComputeError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CEF52C30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93E8, &qword_1CEFAB9D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9300, &qword_1CEFAB9E0);
    v7 = sub_1CEFA86F0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1CEF53C3C(v9, v5, &qword_1EC4A93E8, &qword_1CEFAB9D8);
      v11 = *v5;
      result = sub_1CEF9E1E4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for XPCWrapper.Continuation(0);
      result = sub_1CEF53BD4(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for XPCWrapper.Continuation);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

uint64_t sub_1CEF52E08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7466417972746572 && a2 == 0xEE00657461447265 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7274656D656C6574 && a2 == 0xEF78696666755379 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73654D6775626564 && a2 == 0xEC00000065676173 || (sub_1CEFA8950() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CEFB51C0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1CEFA8950();

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

unint64_t sub_1CEF52FD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9338, &unk_1CEFAB3C0);
    v3 = sub_1CEFA86F0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CEF53C3C(v4, &v13, &qword_1EC4A93E0, &qword_1CEFAB9C8);
      v5 = v13;
      v6 = v14;
      result = sub_1CEF76970(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1CEF49BC0(&v15, (v3[7] + 32 * result));
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

uint64_t sub_1CEF53104(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1CEF5311C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9070, &unk_1CEFAA490);
    v3 = sub_1CEFA86F0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1CEF76970(v5, v6);
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

unint64_t sub_1CEF53230()
{
  result = qword_1EDE379A0;
  if (!qword_1EDE379A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A9380, &qword_1CEFAC540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE379A0);
  }

  return result;
}

uint64_t sub_1CEF53294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1CEF532F8()
{
  result = qword_1EC4A9388;
  if (!qword_1EC4A9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9388);
  }

  return result;
}

unint64_t sub_1CEF53350()
{
  result = qword_1EC4A9390;
  if (!qword_1EC4A9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9390);
  }

  return result;
}

void sub_1CEF534A4(uint64_t a1)
{
  sub_1CEF53598(319);
  if (v1 <= 0x3F)
  {
    sub_1CEF535F0(319, qword_1EDE385E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1CEF535F0(319, qword_1EDE384E8, &type metadata for ErrorCodableValue, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CEF53598(uint64_t a1)
{
  if (!qword_1EDE387F8)
  {
    sub_1CEFA8030();
    v1 = sub_1CEFA85B0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE387F8);
    }
  }
}

void sub_1CEF535F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PrivateCloudComputeError.Code(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC7)
  {
    goto LABEL_17;
  }

  if (a2 + 57 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 57) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 57;
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

      return (*a1 | (v4 << 8)) - 57;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 57;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3A;
  v8 = v6 - 58;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivateCloudComputeError.Code(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 57 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 57) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC7)
  {
    v4 = 0;
  }

  if (a2 > 0xC6)
  {
    v5 = ((a2 - 199) >> 8) + 1;
    *result = a2 + 57;
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
    *result = a2 + 57;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivateCloudComputeError.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivateCloudComputeError.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivateCloudComputeError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PrivateCloudComputeError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CEF53A34()
{
  result = qword_1EC4A93A8;
  if (!qword_1EC4A93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A93A8);
  }

  return result;
}

unint64_t sub_1CEF53A8C()
{
  result = qword_1EC4A93B0;
  if (!qword_1EC4A93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A93B0);
  }

  return result;
}

unint64_t sub_1CEF53AE4()
{
  result = qword_1EC4A93B8;
  if (!qword_1EC4A93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A93B8);
  }

  return result;
}

uint64_t sub_1CEF53B38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CEF53B80()
{
  result = qword_1EC4A93C8;
  if (!qword_1EC4A93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A93C8);
  }

  return result;
}

uint64_t sub_1CEF53BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEF53C3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t RateLimitInfo.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RateLimitInfo.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RateLimitInfo.featureID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RateLimitInfo.featureID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RateLimitInfo.workloadType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RateLimitInfo.workloadType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t RateLimitInfo.workloadTags.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t RateLimitInfo.WorkloadTag.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RateLimitInfo.WorkloadTag.key.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RateLimitInfo.WorkloadTag.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RateLimitInfo.WorkloadTag.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

PrivateCloudCompute::RateLimitInfo::WorkloadTag __swiftcall RateLimitInfo.WorkloadTag.init(key:value:)(Swift::String key, Swift::String value)
{
  *v2 = key;
  v2[1] = value;
  result.value = value;
  result.key = key;
  return result;
}

uint64_t sub_1CEF53FB8()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1CEF53FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_1CEFA8950() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CEFA8950();

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

uint64_t sub_1CEF540C0(uint64_t a1)
{
  v2 = sub_1CEF542CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF540FC(uint64_t a1)
{
  v2 = sub_1CEF542CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RateLimitInfo.WorkloadTag.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93F0, &qword_1CEFABC00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF542CC();
  sub_1CEFA8A60();
  v12 = 0;
  v8 = v10[3];
  sub_1CEFA8880();
  if (!v8)
  {
    v11 = 1;
    sub_1CEFA8880();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1CEF542CC()
{
  result = qword_1EC4A93F8;
  if (!qword_1EC4A93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A93F8);
  }

  return result;
}

uint64_t RateLimitInfo.WorkloadTag.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9400, &qword_1CEFABC08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF542CC();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v9 = sub_1CEFA8780();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1CEFA8780();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t RateLimitInfo.retryAfterDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RateLimitInfo(0) + 40);
  v4 = sub_1CEFA8030();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RateLimitInfo(uint64_t a1)
{
  result = qword_1EDE38028;
  if (!qword_1EDE38028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RateLimitInfo.retryAfterDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RateLimitInfo(0) + 40);
  v4 = sub_1CEFA8030();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RateLimitInfo.init(bundleID:featureID:workloadType:workloadTags:count:duration:retryAfterDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  v12 = *(type metadata accessor for RateLimitInfo(0) + 40);
  v13 = sub_1CEFA8030();
  v14 = *(*(v13 - 8) + 32);

  return v14(a9 + v12, a11, v13);
}

uint64_t RateLimitInfo.init(retryAfter:retryAfterDate:)@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *(a4 + 48) = MEMORY[0x1E69E7CC0];
  *(a4 + 56) = 0;
  if (a2)
  {
    a1 = 0.0;
  }

  *(a4 + 64) = a1;
  v7 = *(type metadata accessor for RateLimitInfo(0) + 40);
  v8 = sub_1CEFA8030();
  v9 = *(*(v8 - 8) + 32);

  return v9(a4 + v7, a3, v8);
}

uint64_t sub_1CEF5487C()
{
  v1 = *v0;
  v2 = 0x4449656C646E7562;
  v3 = 0x6E6F697461727564;
  if (v1 != 5)
  {
    v3 = 0x7466417972746572;
  }

  v4 = 0x64616F6C6B726F77;
  if (v1 != 3)
  {
    v4 = 0x746E756F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x4965727574616566;
  if (v1 != 1)
  {
    v5 = 0x64616F6C6B726F77;
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

uint64_t sub_1CEF54974@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CEF55888(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CEF5499C(uint64_t a1)
{
  v2 = sub_1CEF54D00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF549D8(uint64_t a1)
{
  v2 = sub_1CEF54D00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RateLimitInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9408, &qword_1CEFABC10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF54D00();
  sub_1CEFA8A60();
  v14 = 0;
  sub_1CEFA8830();
  if (!v2)
  {
    v13 = 1;
    sub_1CEFA8830();
    v12 = 2;
    sub_1CEFA8830();
    v11 = *(v3 + 48);
    v10[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9418, &qword_1CEFABC18);
    sub_1CEF55288(&qword_1EC4A9420, sub_1CEF54D54, MEMORY[0x1E69E6300]);
    sub_1CEFA88D0();
    v10[14] = 4;
    sub_1CEFA88C0();
    v10[13] = 5;
    sub_1CEFA88A0();
    type metadata accessor for RateLimitInfo(0);
    v10[12] = 6;
    sub_1CEFA8030();
    sub_1CEF55354(&qword_1EDE380D8, MEMORY[0x1E6969538]);
    sub_1CEFA88D0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1CEF54D00()
{
  result = qword_1EC4A9410;
  if (!qword_1EC4A9410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9410);
  }

  return result;
}

unint64_t sub_1CEF54D54()
{
  result = qword_1EC4A9428;
  if (!qword_1EC4A9428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9428);
  }

  return result;
}

uint64_t RateLimitInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1CEFA8030();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9430, &qword_1CEFABC20);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for RateLimitInfo(0);
  MEMORY[0x1EEE9AC00](v11);
  v29 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF54D00();
  v13 = v10;
  sub_1CEFA8A50();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  else
  {
    v24 = v6;
    v38 = 0;
    v14 = v27;
    v15 = sub_1CEFA8730();
    v16 = v29;
    *v29 = v15;
    v16[1] = v17;
    v37 = 1;
    v16[2] = sub_1CEFA8730();
    v16[3] = v18;
    v36 = 2;
    v16[4] = sub_1CEFA8730();
    v16[5] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9418, &qword_1CEFABC18);
    v35 = 3;
    sub_1CEF55288(&qword_1EC4A9438, sub_1CEF55300, MEMORY[0x1E69E6330]);
    sub_1CEFA87D0();
    v20 = v29;
    v29[6] = v31;
    v34 = 4;
    v20[7] = sub_1CEFA87C0();
    v33 = 5;
    sub_1CEFA87A0();
    v20[8] = v21;
    v32 = 6;
    sub_1CEF55354(&qword_1EC4A8FE8, MEMORY[0x1E6969558]);
    sub_1CEFA87D0();
    (*(v28 + 8))(v13, v14);
    v22 = v29;
    (*(v25 + 32))(v29 + *(v11 + 40), v24, v4);
    sub_1CEF55398(v22, v26);
    __swift_destroy_boxed_opaque_existential_0(v30);
    return sub_1CEF553FC(v22);
  }
}

uint64_t sub_1CEF55288(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A9418, &qword_1CEFABC18);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CEF55300()
{
  result = qword_1EC4A9440;
  if (!qword_1EC4A9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9440);
  }

  return result;
}

uint64_t sub_1CEF55354(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CEFA8030();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CEF55398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RateLimitInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEF553FC(uint64_t a1)
{
  v2 = type metadata accessor for RateLimitInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CEF554B0(uint64_t a1)
{
  sub_1CEF535F0(319, qword_1EDE385E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1CEF535F0(319, &qword_1EDE379B8, &type metadata for RateLimitInfo.WorkloadTag, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1CEFA8030();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CEF555C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1CEF55608(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1CEF5567C()
{
  result = qword_1EC4A9448;
  if (!qword_1EC4A9448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9448);
  }

  return result;
}

unint64_t sub_1CEF556D4()
{
  result = qword_1EC4A9450;
  if (!qword_1EC4A9450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9450);
  }

  return result;
}

unint64_t sub_1CEF5572C()
{
  result = qword_1EC4A9458;
  if (!qword_1EC4A9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9458);
  }

  return result;
}

unint64_t sub_1CEF55784()
{
  result = qword_1EC4A9460;
  if (!qword_1EC4A9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9460);
  }

  return result;
}

unint64_t sub_1CEF557DC()
{
  result = qword_1EC4A9468;
  if (!qword_1EC4A9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9468);
  }

  return result;
}

unint64_t sub_1CEF55834()
{
  result = qword_1EC4A9470;
  if (!qword_1EC4A9470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9470);
  }

  return result;
}

uint64_t sub_1CEF55888(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4965727574616566 && a2 == 0xE900000000000044 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C6B726F77 && a2 == 0xEC00000065707954 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64616F6C6B726F77 && a2 == 0xEC00000073676154 || (sub_1CEFA8950() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7466417972746572 && a2 == 0xEE00657461447265)
  {

    return 6;
  }

  else
  {
    v6 = sub_1CEFA8950();

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

uint64_t sub_1CEF55AE4()
{
  v0 = sub_1CEFA8220();
  __swift_allocate_value_buffer(v0, qword_1EC4A9478);
  __swift_project_value_buffer(v0, qword_1EC4A9478);
  return sub_1CEFA8210();
}

uint64_t TrustedCloudComputeClient.__allocating_init(configuration:)(unsigned int *a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  v4 = *(a1 + 4);
  type metadata accessor for TC2Client();
  v5 = swift_allocObject();
  type metadata accessor for XPCWrapper();
  swift_allocObject();
  *(v5 + 16) = sub_1CEF9360C(v3 | (v4 << 32));
  *(v2 + 16) = v5;
  *(v2 + 24) = v3;
  *(v2 + 28) = v4;
  return v2;
}

uint64_t TrustedCloudComputeClient.init(configuration:)(unsigned int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  type metadata accessor for TC2Client();
  v4 = swift_allocObject();
  type metadata accessor for XPCWrapper();
  swift_allocObject();
  *(v4 + 16) = sub_1CEF9360C(v2 | (v3 << 32));
  *(v1 + 16) = v4;
  *(v1 + 24) = v2;
  *(v1 + 28) = v3;
  return v1;
}

uint64_t TrustedCloudComputeClient.withTrustedRequest<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CEF55CCC, 0, 0);
}

uint64_t sub_1CEF55CCC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  *(v4 + 40) = v5;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *(v6 + 16) = v3;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_1CEF55DE4;
  v8 = *(v0 + 48);
  v9 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v9, &unk_1CEFABF80, v4, sub_1CEF5A084, v6, 0, 0, v8);
}

uint64_t sub_1CEF55DE4()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1CEF55F2C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1CEF55F2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CEF55F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v5[9] = type metadata accessor for TrustedRequest.Response(0);
  v5[10] = swift_task_alloc();
  v5[11] = type metadata accessor for TrustedRequest.Writer(0);
  v5[12] = swift_task_alloc();
  v5[13] = type metadata accessor for TrustedRequest(0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v6 = sub_1CEFA8190();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  v5[19] = swift_task_alloc();
  v7 = sub_1CEFA8180();
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9490, &unk_1CEFB1850);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CEF561D4, 0, 0);
}

uint64_t sub_1CEF561D4()
{
  v45 = v0;
  v1 = *(v0 + 192);
  v2 = sub_1CEFA81E0();
  v3 = *(*(v2 - 8) + 56);
  v3(v1, 1, 1, v2);
  sub_1CEFA81D0();
  sub_1CEFA81C0();
  v4 = *(v0 + 176);
  v43 = *(v0 + 168);
  v5 = *(v0 + 152);
  v42 = v3;
  v6 = *(v0 + 40);
  v7 = sub_1CEFA8070();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v5, v6, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  LOBYTE(v44) = 0;
  trustedRequestEventInfo(with:step:errors:)(v5, MEMORY[0x1E69E7CC0], v4);
  sub_1CEF3D55C(v5, &qword_1EC4A9068, qword_1CEFAC020);
  sub_1CEFA81B0();
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 176);
  v12 = *(v0 + 160);

  (*(v43 + 8))(v11, v12);
  sub_1CEF3D55C(v9, &qword_1EC4A9490, &unk_1CEFB1850);
  v42(v10, 0, 1, v2);
  sub_1CEF5A390(v10, v9);
  if (qword_1EC4A8E78 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 120);
  v14 = *(v0 + 40);
  v15 = sub_1CEFA8220();
  __swift_project_value_buffer(v15, qword_1EC4A9478);
  sub_1CEF5A23C(v14, v13, type metadata accessor for TrustedRequest);
  v16 = sub_1CEFA8200();
  v17 = sub_1CEFA8550();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 120);
  if (v18)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v44 = v21;
    *v20 = 136315138;
    sub_1CEFA8070();
    sub_1CEF5A348(&qword_1EDE380C8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v22 = sub_1CEFA8910();
    v24 = v23;
    sub_1CEF5A2E8(v19, type metadata accessor for TrustedRequest);
    v25 = sub_1CEF36C9C(v22, v24, &v44);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_1CEF32000, v16, v17, "%s withTrustedRequest started", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1D3867270](v21, -1, -1);
    MEMORY[0x1D3867270](v20, -1, -1);
  }

  else
  {

    sub_1CEF5A2E8(v19, type metadata accessor for TrustedRequest);
  }

  v26 = *(v0 + 104);
  v27 = *(v0 + 40);
  *(v0 + 200) = *(*(*(v0 + 48) + 16) + 16);
  v28 = (v27 + v26[5]);
  v30 = *v28;
  v29 = v28[1];
  v31 = *(v27 + v26[6]);

  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = sub_1CEF5311C(MEMORY[0x1E69E7CC0]);
    v26 = *(v0 + 104);
    v27 = *(v0 + 40);
  }

  v33 = sub_1CEFA4E38(v30, v29, v32);
  v35 = v34;

  *(v0 + 208) = v33;
  *(v0 + 216) = v35;
  v36 = (v27 + v26[7]);
  *(v0 + 224) = *v36;
  *(v0 + 232) = v36[1];
  v37 = (v27 + v26[8]);
  *(v0 + 240) = *v37;
  *(v0 + 248) = v37[1];
  v38 = (v27 + v26[9]);
  *(v0 + 256) = *v38;
  *(v0 + 264) = v38[1];
  *(v0 + 352) = v26[10];
  type metadata accessor for XPCWrapper();
  *(v0 + 272) = sub_1CEF5A348(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v40 = sub_1CEFA8480();
  *(v0 + 280) = v40;
  *(v0 + 288) = v39;

  return MEMORY[0x1EEE6DFA0](sub_1CEF569F0, v40, v39);
}

uint64_t sub_1CEF569F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 200);
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v8 + 264);
    v12 = *(v8 + 256);
    v14 = *(v8 + 208);
    v13 = *(v8 + 216);
    v15 = *(v8 + 40);
    v16 = v15 + *(v8 + 352);
    v22 = *(v8 + 272);
    v20 = *(v8 + 224);
    v21 = *(v8 + 240);
    *(v9 + 16) = v10 + 1;
    v17 = swift_task_alloc();
    *(v8 + 296) = v17;
    *(v17 + 16) = v9;
    *(v17 + 24) = v10;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    *(v17 + 48) = v15;
    *(v17 + 56) = v20;
    *(v17 + 72) = v21;
    *(v17 + 88) = v12;
    *(v17 + 96) = v11;
    *(v17 + 104) = v16;
    v18 = swift_task_alloc();
    *(v8 + 304) = v18;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9498, &qword_1CEFAC038);
    *v18 = v8;
    v18[1] = sub_1CEF56B64;
    a6 = sub_1CEF5A2A4;
    a1 = v8 + 16;
    a3 = v22;
    a5 = 0x80000001CEFB5330;
    a2 = v9;
    a4 = 0xD00000000000007ALL;
    a7 = v17;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEF56B64()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_1CEF57070;
  }

  else
  {

    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_1CEF56C80;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CEF56C80()
{
  sub_1CEF41BE0(v0[26], v0[27]);
  v1 = v0[3];
  v0[40] = v0[2];
  v0[41] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEF56CF0, 0, 0);
}

uint64_t sub_1CEF56CF0()
{
  v18 = v0[41];
  v19 = v0[40];
  v1 = v0[24];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v20 = v0[25];
  v22 = v0[7];
  v6 = v0[5];
  v7 = sub_1CEFA8070();
  v8 = *(*(v7 - 8) + 16);
  v8(v3, v6, v7);
  sub_1CEF53C3C(v1, v3 + *(v2 + 24), &qword_1EC4A9490, &unk_1CEFB1850);
  v9 = (v3 + *(v2 + 20));
  v9[3] = &type metadata for XPCRequestProxy;
  v9[4] = &off_1F4BE32F0;
  *v9 = v18;
  v9[1] = v19;
  v9[2] = v20;
  v8(v4, v6, v7);
  sub_1CEF53C3C(v1, v4 + v5[6], &qword_1EC4A9490, &unk_1CEFB1850);
  v10 = (v4 + v5[5]);
  v10[4] = &off_1F4BE32F0;
  *v10 = v18;
  v10[1] = v19;
  v10[2] = v20;
  v10[3] = &type metadata for XPCRequestProxy;
  v11 = v5[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A94A0, &qword_1CEFAC040);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v4 + v11) = v12;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  v21 = (v22 + *v22);
  v13 = swift_task_alloc();
  v0[42] = v13;
  *v13 = v0;
  v13[1] = sub_1CEF56F5C;
  v14 = v0[12];
  v15 = v0[10];
  v16 = v0[4];

  return v21(v16, v14, v15);
}

uint64_t sub_1CEF56F5C()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1CEF573A0;
  }

  else
  {
    v2 = sub_1CEF5721C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CEF57070()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  sub_1CEF41BE0(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1CEF570FC, 0, 0);
}

uint64_t sub_1CEF570FC()
{
  v1 = *(v0 + 192);
  sub_1CEF57894(*(v0 + 40), MEMORY[0x1E69E9450], "%s withTrustedRequest finished", *(v0 + 312));
  sub_1CEF3D55C(v1, &qword_1EC4A9490, &unk_1CEFB1850);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CEF5721C()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[12];
  v6 = v0[5];
  sub_1CEF5A2E8(v0[10], type metadata accessor for TrustedRequest.Response);
  sub_1CEF5A2E8(v5, type metadata accessor for TrustedRequest.Writer);
  sub_1CEF5752C(v6, v1, v2, v3);
  swift_unknownObjectRelease();

  sub_1CEF57894(v6, MEMORY[0x1E69E9450], "%s withTrustedRequest finished", v9);
  sub_1CEF3D55C(v4, &qword_1EC4A9490, &unk_1CEFB1850);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1CEF573A0()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 200);
  v4 = *(v0 + 96);
  v5 = *(v0 + 40);
  sub_1CEF5A2E8(*(v0 + 80), type metadata accessor for TrustedRequest.Response);
  sub_1CEF5A2E8(v4, type metadata accessor for TrustedRequest.Writer);
  sub_1CEF5752C(v5, v2, v1, v3);
  swift_unknownObjectRelease();

  v6 = *(v0 + 192);
  sub_1CEF57894(*(v0 + 40), MEMORY[0x1E69E9450], "%s withTrustedRequest finished", *(v0 + 344));
  sub_1CEF3D55C(v6, &qword_1EC4A9490, &unk_1CEFB1850);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1CEF5752C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F18, &qword_1CEFAC050);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for TrustedRequest(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC4A8E78 != -1)
  {
    swift_once();
  }

  v14 = sub_1CEFA8220();
  __swift_project_value_buffer(v14, qword_1EC4A9478);
  sub_1CEF5A23C(a1, v13, type metadata accessor for TrustedRequest);
  v15 = sub_1CEFA8200();
  v16 = sub_1CEFA8550();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315138;
    sub_1CEFA8070();
    v29 = v10;
    v19 = a3;
    v20 = a4;
    v21 = a2;
    sub_1CEF5A348(&qword_1EDE380C8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v22 = sub_1CEFA8910();
    v24 = v23;
    sub_1CEF5A2E8(v13, type metadata accessor for TrustedRequest);
    v25 = sub_1CEF36C9C(v22, v24, &v30);
    a2 = v21;
    a4 = v20;
    a3 = v19;
    v10 = v29;

    *(v17 + 4) = v25;
    _os_log_impl(&dword_1CEF32000, v15, v16, "%s withTrustedRequest xpc proxy closing", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1D3867270](v18, -1, -1);
    MEMORY[0x1D3867270](v17, -1, -1);
  }

  else
  {

    sub_1CEF5A2E8(v13, type metadata accessor for TrustedRequest);
  }

  v26 = sub_1CEFA84F0();
  (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = a2;
  v27[5] = a3;
  v27[6] = a4;
  swift_unknownObjectRetain();

  sub_1CEF7F370(0, 0, v10, &unk_1CEFAC058, v27);
}

void sub_1CEF57894(uint64_t a1, uint64_t (*a2)(void), const char *a3, ...)
{
  v6 = type metadata accessor for TrustedRequest(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC4A8E78 != -1)
  {
    swift_once();
  }

  v9 = sub_1CEFA8220();
  __swift_project_value_buffer(v9, qword_1EC4A9478);
  sub_1CEF5A23C(a1, v8, type metadata accessor for TrustedRequest);
  v10 = sub_1CEFA8200();
  v11 = a2();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    sub_1CEFA8070();
    sub_1CEF5A348(&qword_1EDE380C8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = sub_1CEFA8910();
    v16 = v15;
    sub_1CEF5A2E8(v8, type metadata accessor for TrustedRequest);
    v17 = sub_1CEF36C9C(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1CEF32000, v10, v11, a3, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1D3867270](v13, -1, -1);
    MEMORY[0x1D3867270](v12, -1, -1);
  }

  else
  {

    sub_1CEF5A2E8(v8, type metadata accessor for TrustedRequest);
  }
}

uint64_t TrustedCloudComputeClient.trustedRequestHistory()(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = type metadata accessor for PrivateCloudComputeError(0);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v2[8] = swift_task_alloc();
  v2[9] = *(type metadata accessor for TC2TrustedRequestMetadata(0) - 8);
  v2[10] = swift_task_alloc();
  v2[11] = *(type metadata accessor for TrustedRequestHistory.Request(0) - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CEF57C60, 0, 0);
}

uint64_t sub_1CEF57C60()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1CEF57D00;

  return TC2Client.requestMetadata()(v0 + 16);
}

uint64_t sub_1CEF57D00()
{

  return MEMORY[0x1EEE6DFA0](sub_1CEF57DFC, 0, 0);
}

uint64_t sub_1CEF57DFC()
{
  v36 = v0;
  result = v0[2];
  if (!result)
  {
    v14 = v0[7];
    v15 = v0[8];
    v16 = v0[6];
    sub_1CEF5A348(&qword_1EDE38038, type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_allocError();
    v31 = v17;
    v18 = sub_1CEFA8030();
    v19 = *(*(v18 - 8) + 56);
    v19(v15, 1, 1, v18);
    sub_1CEFA8650();

    v34 = 0xD000000000000023;
    v35 = 0x80000001CEFB5220;
    v20 = sub_1CEFA8660();
    MEMORY[0x1D38665A0](v20);

    MEMORY[0x1D38665A0](0x3D656E696C202CLL, 0xE700000000000000);
    v0[3] = 85;
    v21 = sub_1CEFA8910();
    MEMORY[0x1D38665A0](v21);

    v22 = v34;
    v23 = v35;
    v24 = v16[5];
    v19(&v14[v24], 1, 1, v18);
    v25 = &v14[v16[6]];
    v26 = &v14[v16[7]];
    *v14 = 21;
    sub_1CEF3D4EC(v15, &v14[v24]);
    *v25 = 0;
    v25[1] = 0;
    *v26 = v22;
    v26[1] = v23;
    sub_1CEF3D55C(v15, &qword_1EC4A8F20, &unk_1CEFAB3E0);
    *&v14[v16[8]] = MEMORY[0x1E69E7CC0];
    sub_1CEF5A1D4(v14, v31, type metadata accessor for PrivateCloudComputeError);
    swift_willThrow();

    v27 = v0[1];
LABEL_17:

    return v27();
  }

  v33 = *(result + 16);
  if (!v33)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v28 = v0[4];

    *v28 = v4;

    v27 = v0[1];
    goto LABEL_17;
  }

  v2 = 0;
  v3 = v0[11];
  v29 = v0[9];
  v32 = result + 32;
  v4 = MEMORY[0x1E69E7CC0];
  v30 = v0[2];
  while (v2 < *(result + 16))
  {
    v5 = *(v32 + 8 * v2);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + ((*(v29 + 80) + 32) & ~*(v29 + 80));

      v8 = *(v29 + 72);
      do
      {
        v9 = v0[12];
        v10 = v0[10];
        sub_1CEF5A23C(v7, v10, type metadata accessor for TC2TrustedRequestMetadata);
        LODWORD(v34) = 0;
        BYTE4(v34) = 1;
        sub_1CEF58260(v10, &v34, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1CEF48200(0, v4[2] + 1, 1, v4);
        }

        v12 = v4[2];
        v11 = v4[3];
        if (v12 >= v11 >> 1)
        {
          v4 = sub_1CEF48200((v11 > 1), v12 + 1, 1, v4);
        }

        v13 = v0[12];
        v4[2] = v12 + 1;
        sub_1CEF5A1D4(v13, v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, type metadata accessor for TrustedRequestHistory.Request);
        v7 += v8;
        --v6;
      }

      while (v6);

      result = v30;
    }

    if (++v2 == v33)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CEF58260@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v105 = a3;
  v108 = sub_1CEFA8030();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v85 - v7;
  v121 = &v85 - v7;
  v9 = type metadata accessor for TrustedRequest(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = *a2;
  v103 = *(a2 + 4);
  v13 = type metadata accessor for TC2TrustedRequestMetadata(0);
  v14 = v13[5];
  *&v120 = sub_1CEFA8070();
  v15 = *(v120 - 8);
  (*(v15 + 16))(v12, a1 + v14, v120);
  v16 = v13[13];
  v17 = (a1 + v13[12]);
  v19 = *v17;
  v18 = v17[1];
  v119 = v19;
  *&v117 = v18;
  *&v118 = *(a1 + v16);
  v20 = (a1 + v13[8]);
  v21 = *v20;
  v22 = v20[1];
  v23 = (a1 + v13[9]);
  v24 = v23[1];
  *&v116 = *v23;
  sub_1CEF53C3C(a1 + v13[10], v8, &qword_1EC4A9068, qword_1CEFAC020);
  v25 = v10[9];
  v114 = v10[8];
  v26 = &v12[v25];
  v27 = &v12[v10[10]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = v10[11];
  v115 = v10[12];
  v29 = &v12[v28];
  (*(v15 + 56))(&v12[v115], 1, 1, v120);
  v30 = &v12[v10[7]];
  v31 = v117;
  *v30 = v119;
  *(v30 + 1) = v31;
  *&v12[v114] = v118;
  v101 = v21;
  *v26 = v21;
  *(v26 + 1) = v22;
  *v29 = v116;
  *(v29 + 1) = v24;

  v100 = v22;
  swift_bridgeObjectRetain_n();

  v102 = v12;
  sub_1CEF5A164(v121, &v12[v115]);
  (*(v107 + 16))(v106, a1 + v13[7], v108);
  v32 = (a1 + v13[11]);
  v33 = *v32;
  v34 = v32[1];
  v35 = v13[15];
  v36 = (a1 + v13[14]);
  v37 = v36[1];
  v99 = *v36;
  v38 = *(a1 + v35);
  v39 = *(a1 + v35 + 8);
  v40 = v13[18];
  v41 = (a1 + v13[17]);
  v42 = v41[1];
  v95 = *v41;
  v98 = *(a1 + v40);
  v97 = *(a1 + v40 + 8);
  v43 = (a1 + v13[6]);
  v44 = v43[1];
  v96 = *v43;
  v45 = v13[19];
  v46 = v13[20];
  v47 = a1;
  v48 = (a1 + v45);
  v94 = *v48;
  v49 = *(a1 + v46);
  v50 = *(v49 + 16);
  v93 = v48[1];
  if (v50)
  {
    v89 = v38;
    v91 = v33;
    v92 = v47;
    v123 = MEMORY[0x1E69E7CC0];
    v90 = v34;

    v87 = v37;

    v88 = v39;

    v85 = v42;

    v86 = v44;

    result = sub_1CEF4B2D8(0, v50, 0);
    v52 = v123;
    v53 = v50 - 1;
    for (i = (v49 + 153); ; i += 152)
    {
      v55 = *(i - 89);
      if ((*(i - 73) | v55) < 0)
      {
        break;
      }

      v120 = *(i - 73);
      v121 = v53;
      v56 = *(i - 121);
      v57 = *(i - 113);
      v113 = *(i - 105);
      v114 = v56;
      v58 = *(i - 97);
      v59 = *(i - 57);
      v60 = *(i - 41);
      v61 = *(i - 25);
      v109 = *(i - 9);
      LODWORD(v119) = *i;
      LODWORD(v115) = *(i - 1);
      v110 = *(i - 81);
      v117 = v60;
      v118 = v59;
      v116 = v61;
      v62 = *(v52 + 16);
      v63 = *(v52 + 24);
      v123 = v52;
      v111 = v57;

      v112 = v58;

      v64 = v109;

      if (v62 >= v63 >> 1)
      {
        result = sub_1CEF4B2D8((v63 > 1), v62 + 1, 1);
        v52 = v123;
      }

      *(v52 + 16) = v62 + 1;
      v65 = v52 + (v62 << 7);
      v66 = v111;
      *(v65 + 32) = v114;
      *(v65 + 40) = v66;
      v67 = v112;
      *(v65 + 48) = v113;
      *(v65 + 56) = v67;
      *(v65 + 64) = v55;
      *(v65 + 72) = v110;
      LODWORD(v67) = *&v122[3];
      *(v65 + 73) = *v122;
      *(v65 + 76) = v67;
      v69 = v117;
      v68 = v118;
      *(v65 + 80) = v120;
      *(v65 + 96) = v68;
      v70 = v116;
      *(v65 + 112) = v69;
      *(v65 + 128) = v70;
      *(v65 + 144) = v64;
      *(v65 + 152) = v115;
      *(v65 + 153) = v119;
      if (!v121)
      {
        v71 = v52;
        sub_1CEF5A2E8(v92, type metadata accessor for TC2TrustedRequestMetadata);
        v33 = v91;
        v34 = v90;
        v38 = v89;
        v39 = v88;
        v37 = v87;
        v44 = v86;
        v42 = v85;
        goto LABEL_10;
      }

      v53 = v121 - 1;
    }

    __break(1u);
  }

  else
  {

    sub_1CEF5A2E8(v47, type metadata accessor for TC2TrustedRequestMetadata);
    v71 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v72 = v105;
    sub_1CEF5A1D4(v102, v105, type metadata accessor for TrustedRequest);
    v73 = type metadata accessor for TrustedRequestHistory.Request(0);
    v74 = v72 + v73[5];
    *v74 = v104;
    *(v74 + 4) = v103;
    result = (*(v107 + 32))(v72 + v73[6], v106, v108);
    v75 = (v72 + v73[7]);
    v76 = v100;
    *v75 = v101;
    v75[1] = v76;
    v77 = (v72 + v73[8]);
    *v77 = v33;
    v77[1] = v34;
    v78 = (v72 + v73[9]);
    *v78 = v99;
    v78[1] = v37;
    v79 = (v72 + v73[10]);
    *v79 = v38;
    v79[1] = v39;
    v80 = (v72 + v73[11]);
    *v80 = v95;
    v80[1] = v42;
    v81 = v72 + v73[12];
    *v81 = v98;
    *(v81 + 8) = v97;
    v82 = (v72 + v73[13]);
    *v82 = v96;
    v82[1] = v44;
    v83 = (v72 + v73[14]);
    v84 = v93;
    *v83 = v94;
    v83[1] = v84;
    *(v72 + v73[15]) = v71;
  }

  return result;
}

uint64_t TrustedCloudComputeClient.prefetchRequest(workloadType:workloadParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CEF58A28, 0, 0);
}

uint64_t sub_1CEF58A28()
{
  v1 = v0[4];
  v0[6] = *(*(v0[5] + 16) + 16);

  swift_bridgeObjectRetain_n();
  if (!v1)
  {
    v1 = sub_1CEF5311C(MEMORY[0x1E69E7CC0]);
  }

  v0[7] = v1;
  type metadata accessor for XPCWrapper();
  v0[8] = sub_1CEF5A348(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v3 = sub_1CEFA8480();
  v0[9] = v3;
  v0[10] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CEF58B1C, v3, v2);
}

uint64_t sub_1CEF58B1C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 48);
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = *(v8 + 56);
    v11 = *(v8 + 64);
    v15 = *(v8 + 16);
    *(v9 + 16) = v10 + 1;
    v13 = swift_task_alloc();
    *(v8 + 88) = v13;
    *(v13 + 16) = v9;
    *(v13 + 24) = v10;
    *(v13 + 32) = v15;
    *(v13 + 48) = v12;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0xD000000000000017;
    *(v13 + 80) = 0x80000001CEFB5250;
    *(v13 + 88) = 1;
    a1 = swift_task_alloc();
    *(v8 + 96) = a1;
    *a1 = v8;
    a1[1] = sub_1CEF58C70;
    a6 = sub_1CEF5A0BC;
    a4 = 0xD000000000000064;
    a5 = 0x80000001CEFB5270;
    a8 = MEMORY[0x1E69E7CA8] + 8;
    a2 = v9;
    a3 = v11;
    a7 = v13;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEF58C70()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1CEF58E50;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1CEF58DE0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CEF58DE0()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t TrustedCloudComputeClient.prewarm(workloadType:workloadParameters:bundleIdentifierOverride:featureIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CEF58E98, 0, 0);
}

uint64_t sub_1CEF58E98()
{
  v1 = v0[4];
  v0[10] = *(*(v0[9] + 16) + 16);

  swift_bridgeObjectRetain_n();
  if (!v1)
  {
    v1 = sub_1CEF5311C(MEMORY[0x1E69E7CC0]);
  }

  v0[11] = v1;
  type metadata accessor for XPCWrapper();
  v0[12] = sub_1CEF5A348(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v3 = sub_1CEFA8480();
  v0[13] = v3;
  v0[14] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CEF58F8C, v3, v2);
}

uint64_t sub_1CEF58F8C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 80);
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = *(v8 + 88);
    v11 = *(v8 + 96);
    v13 = *(v8 + 64);
    v14 = *(v8 + 40);
    v17 = *(v8 + 16);
    v18 = *(v8 + 48);
    *(v9 + 16) = v10 + 1;
    v15 = swift_task_alloc();
    *(v8 + 120) = v15;
    *(v15 + 16) = v9;
    *(v15 + 24) = v10;
    *(v15 + 32) = v17;
    *(v15 + 48) = v12;
    *(v15 + 56) = v14;
    *(v15 + 64) = v18;
    *(v15 + 80) = v13;
    *(v15 + 88) = 1;
    a1 = swift_task_alloc();
    *(v8 + 128) = a1;
    *a1 = v8;
    a1[1] = sub_1CEF590E0;
    a6 = sub_1CEF5A4D8;
    a5 = 0x80000001CEFB5270;
    a8 = MEMORY[0x1E69E7CA8] + 8;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000064;
    a7 = v15;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEF590E0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1CEF59250;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1CEF5A4CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t TrustedCloudComputeClient.completePrewarm(workloadType:workloadParameters:bundleIdentifierOverride:featureIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CEF59298, 0, 0);
}

uint64_t sub_1CEF59298()
{
  v1 = v0[4];
  v0[10] = *(*(v0[9] + 16) + 16);

  swift_bridgeObjectRetain_n();
  if (!v1)
  {
    v1 = sub_1CEF5311C(MEMORY[0x1E69E7CC0]);
  }

  v0[11] = v1;
  type metadata accessor for XPCWrapper();
  v0[12] = sub_1CEF5A348(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v3 = sub_1CEFA8480();
  v0[13] = v3;
  v0[14] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CEF5938C, v3, v2);
}

uint64_t sub_1CEF5938C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 80);
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = *(v8 + 88);
    v11 = *(v8 + 96);
    v13 = *(v8 + 64);
    v14 = *(v8 + 40);
    v17 = *(v8 + 16);
    v18 = *(v8 + 48);
    *(v9 + 16) = v10 + 1;
    v15 = swift_task_alloc();
    *(v8 + 120) = v15;
    *(v15 + 16) = v9;
    *(v15 + 24) = v10;
    *(v15 + 32) = v17;
    *(v15 + 48) = v12;
    *(v15 + 56) = v14;
    *(v15 + 64) = v18;
    *(v15 + 80) = v13;
    *(v15 + 88) = 0;
    a1 = swift_task_alloc();
    *(v8 + 128) = a1;
    *a1 = v8;
    a1[1] = sub_1CEF594DC;
    a6 = sub_1CEF5A4D8;
    a5 = 0x80000001CEFB5270;
    a8 = MEMORY[0x1E69E7CA8] + 8;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000064;
    a7 = v15;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEF594DC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1CEF59250;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1CEF5964C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CEF5964C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TrustedCloudComputeClient.prefetch(request:)(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1CEF596E4, 0, 0);
}

uint64_t sub_1CEF596E4()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1CEF59794;

  return sub_1CEF9739C(v0 + 16, v3);
}

uint64_t sub_1CEF59794(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1CEF598D0, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1CEF59908()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1CEF5A4D0;

  return TC2Client.prefetchParametersCache()();
}

uint64_t sub_1CEF599C0()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1CEF5A4D0;

  return TC2Client.prefetchParametersCacheSavedState()();
}

uint64_t sub_1CEF59A78()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1CEF59B10;

  return TC2Client.prefetchCacheReset()();
}

uint64_t sub_1CEF59B10(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1CEF59C2C()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1CEF59B10;

  return TC2Client.prefetchCache()();
}

uint64_t TrustedCloudComputeClient.knownRateLimits(bundleIdentifier:featureIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CEF59CEC, 0, 0);
}

uint64_t sub_1CEF59CEC()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1CEF5A4D4;
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  return TC2Client.knownRateLimits(bundleIdentifier:featureIdentifier:skipFetch:)(v5, v4, v2, v3, 0);
}

uint64_t TrustedCloudComputeClient.knownRateLimits(bundleIdentifier:featureIdentifier:skipFetch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 64) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CEF59DC0, 0, 0);
}

uint64_t sub_1CEF59DC0()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1CEF59E68;
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  return TC2Client.knownRateLimits(bundleIdentifier:featureIdentifier:skipFetch:)(v6, v5, v3, v4, v2);
}

uint64_t sub_1CEF59E68(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t TrustedCloudComputeClient.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 29, 7);
}

uint64_t sub_1CEF59FBC(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CEF3C17C;

  return sub_1CEF55F98(a1, v4, v5, v6, v7);
}

uint64_t sub_1CEF5A164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEF5A1D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEF5A23C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEF5A2E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CEF5A348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CEF5A390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9490, &unk_1CEFB1850);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEF5A400(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CEF3C17C;

  return sub_1CEF923A4(a1, v4, v5, v6, v7, v8);
}

uint64_t TrustedCloudComputeClient.Configuration.userID.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t _s13ConfigurationVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13ConfigurationVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.featureID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.featureID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.workloadType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.workloadType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.workloadTags.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.WorkloadTag.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.WorkloadTag.key.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.WorkloadTag.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.WorkloadTag.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

PrivateCloudCompute::TrustedCloudComputeError::RateLimitInfo::WorkloadTag __swiftcall TrustedCloudComputeError.RateLimitInfo.WorkloadTag.init(key:value:)(Swift::String key, Swift::String value)
{
  *v2 = key;
  v2[1] = value;
  result.value = value;
  result.key = key;
  return result;
}

uint64_t sub_1CEF5A8A0(uint64_t a1)
{
  v2 = sub_1CEF5AAAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5A8DC(uint64_t a1)
{
  v2 = sub_1CEF5AAAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.RateLimitInfo.WorkloadTag.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A94B8, &qword_1CEFAC090);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5AAAC();
  sub_1CEFA8A60();
  v12 = 0;
  v8 = v10[3];
  sub_1CEFA8880();
  if (!v8)
  {
    v11 = 1;
    sub_1CEFA8880();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1CEF5AAAC()
{
  result = qword_1EC4A94C0;
  if (!qword_1EC4A94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A94C0);
  }

  return result;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.WorkloadTag.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A94C8, &qword_1CEFAC098);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5AAAC();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v9 = sub_1CEFA8780();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1CEFA8780();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t TrustedCloudComputeError.RateLimitInfo.retryAfterDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0) + 40);
  v4 = sub_1CEFA8030();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TrustedCloudComputeError.RateLimitInfo.retryAfterDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0) + 40);
  v4 = sub_1CEFA8030();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TrustedCloudComputeError.RateLimitInfo.init(bundleID:featureID:workloadType:workloadTags:count:duration:retryAfterDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  v12 = *(type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0) + 40);
  v13 = sub_1CEFA8030();
  v14 = *(*(v13 - 8) + 32);

  return v14(a9 + v12, a11, v13);
}

uint64_t TrustedCloudComputeError.RateLimitInfo.init(retryAfter:retryAfterDate:)@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *(a4 + 48) = MEMORY[0x1E69E7CC0];
  *(a4 + 56) = 0;
  if (a2)
  {
    a1 = 0.0;
  }

  *(a4 + 64) = a1;
  v7 = *(type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0) + 40);
  v8 = sub_1CEFA8030();
  v9 = *(*(v8 - 8) + 32);

  return v9(a4 + v7, a3, v8);
}

uint64_t sub_1CEF5B030(uint64_t a1)
{
  v2 = sub_1CEF5B3A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5B06C(uint64_t a1)
{
  v2 = sub_1CEF5B3A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.RateLimitInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A94D0, &qword_1CEFAC0A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5B3A8();
  sub_1CEFA8A60();
  v14 = 0;
  sub_1CEFA8830();
  if (!v2)
  {
    v13 = 1;
    sub_1CEFA8830();
    v12 = 2;
    sub_1CEFA8830();
    v11 = *(v3 + 48);
    v10[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A94E0, &qword_1CEFAC0A8);
    sub_1CEF5B960(&qword_1EC4A94E8, sub_1CEF5B3FC, MEMORY[0x1E69E6300]);
    sub_1CEFA88D0();
    v10[14] = 4;
    sub_1CEFA88C0();
    v10[13] = 5;
    sub_1CEFA88A0();
    type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0);
    v10[12] = 6;
    sub_1CEFA8030();
    sub_1CEF5BA2C(&qword_1EDE380D8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1CEFA88D0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1CEF5B3A8()
{
  result = qword_1EC4A94D8;
  if (!qword_1EC4A94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A94D8);
  }

  return result;
}

unint64_t sub_1CEF5B3FC()
{
  result = qword_1EC4A94F0;
  if (!qword_1EC4A94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A94F0);
  }

  return result;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1CEFA8030();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A94F8, &qword_1CEFAC0B0);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0);
  MEMORY[0x1EEE9AC00](v11);
  v29 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5B3A8();
  v13 = v10;
  sub_1CEFA8A50();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  else
  {
    v24 = v6;
    v38 = 0;
    v14 = v27;
    v15 = sub_1CEFA8730();
    v16 = v29;
    *v29 = v15;
    v16[1] = v17;
    v37 = 1;
    v16[2] = sub_1CEFA8730();
    v16[3] = v18;
    v36 = 2;
    v16[4] = sub_1CEFA8730();
    v16[5] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A94E0, &qword_1CEFAC0A8);
    v35 = 3;
    sub_1CEF5B960(&qword_1EC4A9500, sub_1CEF5B9D8, MEMORY[0x1E69E6330]);
    sub_1CEFA87D0();
    v20 = v29;
    v29[6] = v31;
    v34 = 4;
    v20[7] = sub_1CEFA87C0();
    v33 = 5;
    sub_1CEFA87A0();
    v20[8] = v21;
    v32 = 6;
    sub_1CEF5BA2C(&qword_1EC4A8FE8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1CEFA87D0();
    (*(v28 + 8))(v13, v14);
    v22 = v29;
    (*(v25 + 32))(v29 + *(v11 + 40), v24, v4);
    sub_1CEF5D9E0(v22, v26, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
    __swift_destroy_boxed_opaque_existential_0(v30);
    return sub_1CEF5DA48(v22, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
  }
}

uint64_t sub_1CEF5B960(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A94E0, &qword_1CEFAC0A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CEF5B9D8()
{
  result = qword_1EC4A9508;
  if (!qword_1EC4A9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9508);
  }

  return result;
}

uint64_t sub_1CEF5BA2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CEF5BB74(uint64_t a1)
{
  v2 = sub_1CEF5C7A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5BBB0(uint64_t a1)
{
  v2 = sub_1CEF5C7A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5BBEC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000010;
    if (v1 != 1)
    {
      v5 = 0x7375427365646F6ELL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x576E776F6E6B6E75;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (v1 == 5)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0xD000000000000011;
    if (v1 == 3)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1CEF5BCE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CEF76AA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CEF5BD08(uint64_t a1)
{
  v2 = sub_1CEF5C74C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5BD44(uint64_t a1)
{
  v2 = sub_1CEF5C74C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5BD80(uint64_t a1)
{
  v2 = sub_1CEF5C944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5BDBC(uint64_t a1)
{
  v2 = sub_1CEF5C944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5BDF8(uint64_t a1)
{
  v2 = sub_1CEF5C89C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5BE34(uint64_t a1)
{
  v2 = sub_1CEF5C89C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5BE70(uint64_t a1)
{
  v2 = sub_1CEF5C8F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5BEAC(uint64_t a1)
{
  v2 = sub_1CEF5C8F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5BEE8(uint64_t a1)
{
  v2 = sub_1CEF5C848();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5BF24(uint64_t a1)
{
  v2 = sub_1CEF5C848();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5BF60(uint64_t a1)
{
  v2 = sub_1CEF5C998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5BF9C(uint64_t a1)
{
  v2 = sub_1CEF5C998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5BFD8(uint64_t a1)
{
  v2 = sub_1CEF5C7F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5C014(uint64_t a1)
{
  v2 = sub_1CEF5C7F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.AvailabilityInfo.Reason.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9510, &qword_1CEFAC0B8);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9518, &qword_1CEFAC0C0);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9520, &qword_1CEFAC0C8);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9528, &qword_1CEFAC0D0);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v38 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9530, &qword_1CEFAC0D8);
  v55 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v54 = &v38 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9538, &qword_1CEFAC0E0);
  v53 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9540, &qword_1CEFAC0E8);
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9548, &qword_1CEFAC0F0);
  v18 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v20 = &v38 - v19;
  v21 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5C74C();
  v56 = v20;
  sub_1CEFA8A60();
  v22 = (v18 + 8);
  if (v21 <= 2)
  {
    v28 = v52;
    v29 = v53;
    v30 = v54;
    v31 = v55;
    if (v21)
    {
      if (v21 == 1)
      {
        v59 = 1;
        sub_1CEF5C944();
        v33 = v56;
        v32 = v57;
        sub_1CEFA8820();
        (*(v29 + 8))(v14, v38);
      }

      else
      {
        v60 = 2;
        sub_1CEF5C8F0();
        v37 = v30;
        v33 = v56;
        v32 = v57;
        sub_1CEFA8820();
        (*(v31 + 8))(v37, v39);
      }

      return (*v22)(v33, v32);
    }

    else
    {
      v58 = 0;
      sub_1CEF5C998();
      v34 = v56;
      v35 = v57;
      sub_1CEFA8820();
      (*(v28 + 8))(v17, v15);
      return (*v22)(v34, v35);
    }
  }

  else
  {
    if (v21 > 4)
    {
      if (v21 == 5)
      {
        v63 = 5;
        sub_1CEF5C7F4();
        v23 = v46;
        v24 = v56;
        v25 = v57;
        sub_1CEFA8820();
        v27 = v47;
        v26 = v48;
      }

      else
      {
        v64 = 6;
        sub_1CEF5C7A0();
        v23 = v49;
        v24 = v56;
        v25 = v57;
        sub_1CEFA8820();
        v27 = v50;
        v26 = v51;
      }
    }

    else if (v21 == 3)
    {
      v61 = 3;
      sub_1CEF5C89C();
      v23 = v40;
      v24 = v56;
      v25 = v57;
      sub_1CEFA8820();
      v27 = v41;
      v26 = v42;
    }

    else
    {
      v62 = 4;
      sub_1CEF5C848();
      v23 = v43;
      v24 = v56;
      v25 = v57;
      sub_1CEFA8820();
      v27 = v44;
      v26 = v45;
    }

    (*(v27 + 8))(v23, v26);
    return (*v22)(v24, v25);
  }
}

unint64_t sub_1CEF5C74C()
{
  result = qword_1EC4A9550;
  if (!qword_1EC4A9550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9550);
  }

  return result;
}

unint64_t sub_1CEF5C7A0()
{
  result = qword_1EC4A9558;
  if (!qword_1EC4A9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9558);
  }

  return result;
}

unint64_t sub_1CEF5C7F4()
{
  result = qword_1EC4A9560;
  if (!qword_1EC4A9560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9560);
  }

  return result;
}

unint64_t sub_1CEF5C848()
{
  result = qword_1EC4A9568;
  if (!qword_1EC4A9568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9568);
  }

  return result;
}

unint64_t sub_1CEF5C89C()
{
  result = qword_1EC4A9570;
  if (!qword_1EC4A9570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9570);
  }

  return result;
}

unint64_t sub_1CEF5C8F0()
{
  result = qword_1EC4A9578;
  if (!qword_1EC4A9578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9578);
  }

  return result;
}

unint64_t sub_1CEF5C944()
{
  result = qword_1EC4A9580;
  if (!qword_1EC4A9580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9580);
  }

  return result;
}

unint64_t sub_1CEF5C998()
{
  result = qword_1EC4A9588;
  if (!qword_1EC4A9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9588);
  }

  return result;
}

uint64_t TrustedCloudComputeError.AvailabilityInfo.Reason.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9590, &qword_1CEFAC0F8);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9598, &qword_1CEFAC100);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A95A0, &qword_1CEFAC108);
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A95A8, &qword_1CEFAC110);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v47 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A95B0, &qword_1CEFAC118);
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v63 = &v47 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A95B8, &qword_1CEFAC120);
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A95C0, &qword_1CEFAC128);
  v49 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A95C8, &unk_1CEFAC130);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  v21 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1CEF5C74C();
  v22 = v69;
  sub_1CEFA8A50();
  if (!v22)
  {
    v23 = v16;
    v47 = v14;
    v48 = v13;
    v24 = v65;
    v25 = v66;
    v26 = v67;
    v69 = v18;
    v27 = sub_1CEFA8800();
    v28 = (2 * *(v27 + 16)) | 1;
    v70 = v27;
    v71 = v27 + 32;
    v72 = 0;
    v73 = v28;
    v29 = sub_1CEF3F4B8();
    v30 = v20;
    if (v29 != 7 && v72 == v73 >> 1)
    {
      v74 = v29;
      if (v29 > 2u)
      {
        if (v29 > 4u)
        {
          v33 = v64;
          v43 = v69;
          if (v29 == 5)
          {
            v75 = 5;
            sub_1CEF5C7F4();
            v44 = v62;
            sub_1CEFA8710();
            (*(v58 + 8))(v44, v59);
          }

          else
          {
            v75 = 6;
            sub_1CEF5C7A0();
            sub_1CEFA8710();
            (*(v60 + 8))(v26, v61);
          }

          (*(v43 + 8))(v30, v17);
          swift_unknownObjectRelease();
          v37 = v68;
        }

        else
        {
          v31 = v68;
          v32 = v69;
          v33 = v64;
          if (v29 == 3)
          {
            v75 = 3;
            sub_1CEF5C89C();
            sub_1CEFA8710();
            (*(v54 + 8))(v24, v55);
          }

          else
          {
            v75 = 4;
            sub_1CEF5C848();
            sub_1CEFA8710();
            (*(v56 + 8))(v25, v57);
          }

          (*(v32 + 8))(v30, v17);
          swift_unknownObjectRelease();
          v37 = v31;
        }

        goto LABEL_24;
      }

      if (v29)
      {
        if (v29 != 1)
        {
          v75 = 2;
          sub_1CEF5C8F0();
          v46 = v63;
          sub_1CEFA8710();
          v40 = *(v52 + 8);
          v41 = v46;
          v45 = v53;
          goto LABEL_19;
        }

        v75 = 1;
        sub_1CEF5C944();
        v39 = v48;
        sub_1CEFA8710();
        v40 = *(v50 + 8);
        v41 = v39;
        v42 = &v77;
      }

      else
      {
        v75 = 0;
        sub_1CEF5C998();
        sub_1CEFA8710();
        v40 = *(v49 + 8);
        v41 = v23;
        v42 = &v76;
      }

      v45 = *(v42 - 32);
LABEL_19:
      v40(v41, v45);
      (*(v69 + 8))(v30, v17);
      swift_unknownObjectRelease();
      v37 = v68;
      v33 = v64;
LABEL_24:
      *v33 = v74;
      return __swift_destroy_boxed_opaque_existential_0(v37);
    }

    v34 = sub_1CEFA8680();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD8, &qword_1CEFB1B20);
    *v36 = &type metadata for TrustedCloudComputeError.AvailabilityInfo.Reason;
    sub_1CEFA8720();
    sub_1CEFA8670();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v69 + 8))(v30, v17);
    swift_unknownObjectRelease();
  }

  v37 = v68;
  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t sub_1CEF5D364(uint64_t a1)
{
  v2 = sub_1CEF5D5AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5D3A0(uint64_t a1)
{
  v2 = sub_1CEF5D5AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.AvailabilityInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A95D0, &qword_1CEFAC140);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5D5AC();
  sub_1CEFA8A60();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1CEF5D600();
  sub_1CEFA8870();
  if (!v2)
  {
    type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
    v10[13] = 1;
    sub_1CEFA8030();
    sub_1CEF5BA2C(&qword_1EDE380D8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1CEFA88D0();
  }

  return (*(v6 + 8))(v8, v5);
}