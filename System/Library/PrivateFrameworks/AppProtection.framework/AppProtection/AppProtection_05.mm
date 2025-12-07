uint64_t sub_185B3E24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_185AF6E20(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_185B513BC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_185B67AFC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for AuthAssertion(0);
    v20 = *(v13 - 8);
    sub_185B40E60(v12 + *(v20 + 72) * v7, a2, type metadata accessor for AuthAssertion);
    sub_185B3D9CC(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for AuthAssertion(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void *sub_185B3E3E8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_185B3E844(v8, v6, v4, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_185B3EF98(v10, v6, v4, v3);
  result = MEMORY[0x1865FE2F0](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

void *sub_185B3E554(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
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
  v13 = sub_185B3F020(v12, v7, v5, a3);
  result = MEMORY[0x1865FE2F0](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

unint64_t *sub_185B3E6C4(uint64_t (*a1)(void *, _BYTE *, __n128), uint64_t a2, uint64_t a3)
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
    result = sub_185B3EE08(v9, v7, a3, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = sub_185B3F0A8(v11, v7, a3, v5);
  result = MEMORY[0x1865FE2F0](v11, -1, -1);
  if (!v3)
  {
    return v12;
  }

  return result;
}

uint64_t sub_185B3E844(unint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v39 = a2;
  v55 = a4;
  v40 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD480, &qword_185B6E810);
  v5 = MEMORY[0x1EEE9AC00](v54);
  v53 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v38 - v7;
  v8 = type metadata accessor for AuthAssertion(0);
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_185B67AFC();
  result = MEMORY[0x1EEE9AC00](v49);
  v47 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v11;
  v13 = 0;
  v56 = a3;
  v14 = *(a3 + 64);
  v43 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v41 = 0;
  v42 = (v15 + 63) >> 6;
  v45 = v11 + 8;
  v46 = v11 + 16;
  while (v17)
  {
    v18 = __clz(__rbit64(v17));
    v57 = (v17 - 1) & v17;
LABEL_11:
    v21 = v18 | (v13 << 6);
    v22 = v56;
    v23 = v47;
    v24 = v48;
    v25 = *(v48 + 16);
    v26 = v49;
    v25(v47, v56[6] + *(v48 + 72) * v21, v49);
    v27 = v22[7];
    v28 = *(v51 + 72);
    v44 = v21;
    v29 = v27 + v28 * v21;
    v30 = v50;
    sub_185B40B18(v29, v50, type metadata accessor for AuthAssertion);
    v31 = v52;
    v25(v52, v23, v26);
    v32 = v54;
    sub_185B40B18(v30, &v31[*(v54 + 48)], type metadata accessor for AuthAssertion);
    v33 = v31;
    v34 = v53;
    sub_185B40C1C(v33, v53, &qword_1EA8CD480, &qword_185B6E810);
    v35 = v34 + *(v32 + 48);
    LODWORD(v32) = *(v35 + 16);
    sub_185B40AB8(v35, type metadata accessor for AuthAssertion);
    v36 = *(v24 + 8);
    v36(v34, v26);
    sub_185B40AB8(v30, type metadata accessor for AuthAssertion);
    result = (v36)(v23, v26);
    v17 = v57;
    if (v32 != v55)
    {
      *(v40 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
        return sub_185B3F138(v40, v39, v41, v56);
      }
    }
  }

  v19 = v13;
  while (1)
  {
    v13 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v13 >= v42)
    {
      return sub_185B3F138(v40, v39, v41, v56);
    }

    v20 = *(v43 + 8 * v13);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v57 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_185B3EC18(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
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
    v11 = v10 | (v5 << 6);
LABEL_11:
    v14 = (*(a3 + 56) + 3 * v11);
    if (*v14 == 1 && (v14[1] & 1) == 0)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_185B3F7FC(result, a2, v4, a3);
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

    if (v5 >= v9)
    {
      return sub_185B3F7FC(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_185B3ED14(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
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
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 3 * v11 + 1) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_185B3F7FC(result, a2, v4, a3);
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

    if (v5 >= v9)
    {
      return sub_185B3F7FC(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_185B3EE08(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, _BYTE *, __n128))
{
  v24 = 0;
  v23 = result;
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
    v27[0] = *v16;
    v27[1] = v17;
    v18 = (v15 + 3 * v14);
    LOBYTE(v15) = *v18;
    v19 = v18[1];
    LOBYTE(v18) = v18[2];
    v28[0] = v15;
    v28[1] = v19;
    v28[2] = v18;

    v20 = (a4)(v27, v28);

    if (v4)
    {
      return result;
    }

    if (v20)
    {
      *(v23 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_185B3F7FC(v23, a2, v24, a3);
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
      return sub_185B3F7FC(v23, a2, v24, a3);
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

void *sub_185B3EF98(void *result, uint64_t a2, uint64_t a3, int a4)
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

    v8 = sub_185B3E844(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_185B3F020(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
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

unint64_t *sub_185B3F0A8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, _BYTE *, __n128))
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

    v8 = sub_185B3EE08(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_185B3F138(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for AuthAssertion(0);
  v48 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v47 = v43 - v11;
  v54 = sub_185B67AFC();
  v52 = *(v54 - 8);
  v12 = MEMORY[0x1EEE9AC00](v54);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = v43 - v15;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD488, &qword_185B6E818);
  result = sub_185B6847C();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43[1] = v52 + 16;
  v44 = a2;
  v53 = v52 + 32;
  v20 = result + 64;
  v45 = a1;
  v43[0] = a4;
  v21 = v54;
  while (v18)
  {
    v22 = v14;
    v23 = __clz(__rbit64(v18));
    v49 = (v18 - 1) & v18;
LABEL_16:
    v26 = v23 | (v19 << 6);
    v27 = a4[6];
    v28 = v52;
    v51 = *(v52 + 72);
    v29 = v46;
    (*(v52 + 16))(v46, v27 + v51 * v26, v21);
    v30 = a4[7];
    v50 = *(v48 + 72);
    v31 = v30 + v50 * v26;
    v32 = v47;
    sub_185B40B18(v31, v47, type metadata accessor for AuthAssertion);
    v33 = *(v28 + 32);
    v14 = v22;
    v33(v22, v29, v21);
    sub_185B40E60(v32, v55, type metadata accessor for AuthAssertion);
    sub_185B41234(&qword_1EA8CD490, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    result = sub_185B67DAC();
    v34 = -1 << *(v17 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v34) >> 6;
      a2 = v44;
      a1 = v45;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v20 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    a2 = v44;
    a1 = v45;
LABEL_26:
    *(v20 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v33((*(v17 + 48) + v37 * v51), v14, v54);
    result = sub_185B40E60(v55, *(v17 + 56) + v37 * v50, type metadata accessor for AuthAssertion);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v43[0];
    v18 = v49;
    if (!a3)
    {
      return v17;
    }
  }

  v24 = v19;
  while (1)
  {
    v19 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v25 = a1[v19];
    ++v24;
    if (v25)
    {
      v22 = v14;
      v23 = __clz(__rbit64(v25));
      v49 = (v25 - 1) & v25;
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

uint64_t sub_185B3F5C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD4E8, &qword_185B6EED0);
  result = sub_185B6847C();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    sub_185ADF8F0(*(v4 + 56) + 40 * v16, v29);
    sub_185AC66F8(v29, v28);
    v18 = v17;
    result = sub_185B6827C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v18;
    result = sub_185AC66F8(v28, *(v9 + 56) + 40 * v22);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

uint64_t sub_185B3F7FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD460, &unk_185B6E7F0);
  result = sub_185B6847C();
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
  v33 = v4;
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
    v21 = (v17 + 3 * v16);
    v35 = v21[1];
    v36 = *v21;
    v34 = v21[2];
    sub_185B6866C();

    sub_185B67EEC();
    result = sub_185B686AC();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    v31 = (*(v9 + 56) + 3 * v25);
    *v31 = v36;
    v31[1] = v35;
    v31[2] = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
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

uint64_t sub_185B3FA60(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_185B6866C();

    sub_185B67EEC();
    v23 = sub_185B686AC();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_185B6859C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_185B40208(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_185B6866C();

            sub_185B67EEC();
            v41 = sub_185B686AC();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_185B6859C() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_185B3FFD0(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x1865FE2F0](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_185AF36FC(v13);
    return v5;
  }

  result = MEMORY[0x1865FE2F0](v50, -1, -1);
  __break(1u);
  return result;
}

unint64_t *sub_185B3FFD0(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_185B40208(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_185B6866C();

        sub_185B67EEC();
        v19 = sub_185B686AC();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_185B6859C() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_185B40208(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD380, &qword_185B6E0F0);
  result = sub_185B6834C();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_185B6866C();

    sub_185B67EEC();
    result = sub_185B686AC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_185B4042C(uint64_t result)
{
  v2 = 0;
  v21 = result;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v21 + 48) + ((v2 << 10) | (16 * v9)));
      v12 = *v10;
      v11 = v10[1];
      v13 = *v1;
      if (*(*v1 + 16))
      {
        break;
      }

LABEL_7:
      v1 = v20;
      sub_185AC407C(&v22, v12, v11);

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    sub_185B6866C();

    sub_185B67EEC();
    v14 = sub_185B686AC();
    v15 = -1 << *(v13 + 32);
    v16 = v14 & ~v15;
    if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_7;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = (*(v13 + 48) + 16 * v16);
      v19 = *v18 == v12 && v18[1] == v11;
      if (v19 || (sub_185B6859C() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v1 = v20;
    sub_185B3D2A4(v12, v11);
  }

  while (v6);
  while (1)
  {
LABEL_8:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_12;
    }
  }
}

uint64_t sub_185B40614@<X0>(uint64_t *a1@<X8>)
{
  result = sub_185B3C500(MEMORY[0x1E69E6530]);
  *a1 = result;
  return result;
}

uint64_t sub_185B406B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_185B67C9C();
  MEMORY[0x1EEE9AC00](v8);
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  v9 = *(*v4 + 112);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2D8, &qword_185B6D8C0);
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  *(v4 + 24) = a2;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a3;
  v12[4] = a4;
  aBlock[4] = sub_185B40A38;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185ACA0E8;
  aBlock[3] = &block_descriptor_55_1;
  _Block_copy(aBlock);
  sub_185B41234(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v13 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC7370(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580, MEMORY[0x1E69E6328]);
  sub_185B682CC();
  sub_185B67D2C();
  swift_allocObject();
  v14 = sub_185B67D1C();

  *(v4 + 16) = v14;

  sub_185B6812C();

  return v4;
}

uint64_t sub_185B40A44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD478, &qword_185B6E808);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_185B40AB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_185B40B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_185B40B80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD478, &qword_185B6E808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_185B40C1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_185B40C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[3] = a8;
  sub_185ADF590(0, &qword_1EA8CD3B0, 0x1E6963620);
  v16 = sub_185B2EC58(a1, a2, a3, a4);
  if (v11)
  {
  }

  else if (v16)
  {
    v18[2] = v18;
    v18[1] = a11;
    v17 = MEMORY[0x1EEE9AC00](v16);
    sub_185B325B0(sub_185B40F30);
  }
}

uint64_t sub_185B40E08()
{
  v1 = *(*v0 + 360);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_185B40E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_185B40FE4@<D0>(double *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = v5;
    *a1 = v5;
  }

  return result;
}

uint64_t objectdestroy_51Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 32));

  return swift_deallocObject();
}

void *sub_185B411CC@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_185B41234(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_185B4127C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7542746567726174 && a2 == 0xEE004449656C646ELL;
  if (v4 || (sub_185B6859C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000185B77C50 == a2 || (sub_185B6859C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    return 2;
  }

  else
  {
    v6 = sub_185B6859C();

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

uint64_t sub_185B413A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = MEMORY[0x1E69E7CD0];
  *&v73[0] = MEMORY[0x1E69E7CD0];
  v10 = sub_185ADB840(a1);
  v11 = sub_185ADB68C();
  v67 = sub_185ACB848(v11, v10);
  v68 = v73;

  sub_185B4C96C(sub_185B42D7C, v66);

  v12 = *&v73[0];
  *&v73[0] = v9;
  v13 = sub_185ADB840(a1);
  v14 = sub_185ADB68C();
  v64 = sub_185ACB848(v14, v13);
  v65 = v73;

  sub_185B4C96C(sub_185B42D80, v63);

  v15 = *&v73[0];
  sub_185B34D08(a2, a3, a4);
  if (v4)
  {
  }

  v59 = 0;
  v17 = MEMORY[0x1E69E7CD0];
  *&v73[0] = MEMORY[0x1E69E7CD0];
  v18 = sub_185ADB840(a1);
  v19 = sub_185ADB68C();
  v20 = sub_185ACB848(v19, v18);
  v57 = MEMORY[0x1EEE9AC00](v20);
  v58 = v73;

  sub_185B4C96C(sub_185B42D7C, v56);

  v21 = *&v73[0];
  *&v73[0] = v17;
  v22 = sub_185ADB840(a1);
  v23 = sub_185ADB68C();
  v24 = sub_185ACB848(v23, v22);
  v74 = a1;
  v57 = MEMORY[0x1EEE9AC00](v24);
  v58 = v73;

  sub_185B4C96C(sub_185B42D80, v56);

  v25 = *&v73[0];
  *&v73[0] = v12;

  sub_185B4042C(v26);
  v27 = *&v73[0];
  if ((sub_185B3C6B8(v12, v21) & 1) == 0)
  {

    goto LABEL_7;
  }

  v28 = sub_185B3C6B8(v15, v25);

  if ((v28 & 1) == 0)
  {
LABEL_7:
    *&v73[0] = MEMORY[0x1E69E7CD0];
    v29 = sub_185ADB840(v74);
    v30 = sub_185ADB68C();
    v31 = sub_185ACB848(v30, v29);
    v57 = MEMORY[0x1EEE9AC00](v31);
    v58 = v73;

    sub_185B4C96C(sub_185B42D80, v56);

    LODWORD(v69) = 4;
    *(&v69 + 1) = v27;
    v70 = 0u;
    v71 = 0u;
    v72 = *&v73[0];
    sub_185B67C2C();
    v73[0] = v69;
    v73[1] = v70;
    v73[2] = v71;
    v73[3] = v72;
    sub_185ADF798(v73);
    goto LABEL_8;
  }

LABEL_8:
  if (*(v21 + 16) <= *(v12 + 16) >> 3)
  {
    *&v73[0] = v12;
    sub_185ACC0B0(v21);

    result = *&v73[0];
  }

  else
  {
    v32 = sub_185B3FA60(v21, v12);

    result = v32;
  }

  v34 = 0;
  v35 = result + 56;
  v36 = 1 << *(result + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(result + 56);
  v39 = (v36 + 63) >> 6;
  *&v33 = 136315138;
  v60 = v33;
  v61 = v39;
  v62 = result;
  while (v38)
  {
LABEL_20:
    v47 = (*(result + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v38)))));
    v49 = *v47;
    v48 = v47[1];
    v50 = qword_1ED6F4CB0;

    if (v50 != -1)
    {
      swift_once();
    }

    v51 = sub_185B67B8C();
    __swift_project_value_buffer(v51, qword_1ED6F5130);

    v52 = sub_185B67B6C();
    v53 = sub_185B680AC();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v73[0] = v55;
      *v54 = v60;
      *(v54 + 4) = sub_185ACB2C4(v49, v48, v73);
      _os_log_impl(&dword_185AC1000, v52, v53, "trying to unshield %s as it is no longer effectively locked", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x1865FE2F0](v55, -1, -1);
      MEMORY[0x1865FE2F0](v54, -1, -1);
    }

    v38 &= v38 - 1;
    v40 = swift_allocObject();
    *(v40 + 16) = v49;
    *(v40 + 24) = v48;

    empty = xpc_dictionary_create_empty();
    v42 = sub_185B67ECC();
    xpc_dictionary_set_int64(empty, (v42 + 32), 2);

    v43 = sub_185B67ECC();
    v44 = sub_185B67ECC();
    xpc_dictionary_set_string(empty, (v43 + 32), (v44 + 32));

    v45 = sub_185B67ECC();
    xpc_dictionary_set_BOOL(empty, (v45 + 32), 0);

    sub_185B13EA8(empty, sub_185B42D84, v40);

    swift_unknownObjectRelease();
    result = v62;
    v39 = v61;
  }

  while (1)
  {
    v46 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v46 >= v39)
    {
    }

    v38 = *(v35 + 8 * v46);
    ++v34;
    if (v38)
    {
      v34 = v46;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_185B41AE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = MEMORY[0x1E69E7CD0];
  *&v73[0] = MEMORY[0x1E69E7CD0];
  v10 = sub_185ADB840(a1);
  v11 = sub_185ADB68C();
  v67 = sub_185ACB848(v11, v10);
  v68 = v73;

  sub_185B4C96C(sub_185B42D7C, v66);

  v12 = *&v73[0];
  *&v73[0] = v9;
  v13 = sub_185ADB840(a1);
  v14 = sub_185ADB68C();
  v64 = sub_185ACB848(v14, v13);
  v65 = v73;

  sub_185B4C96C(sub_185B42D80, v63);

  v15 = *&v73[0];
  sub_185B3518C(a2, a3, a4);
  if (v4)
  {
  }

  v59 = 0;
  v17 = MEMORY[0x1E69E7CD0];
  *&v73[0] = MEMORY[0x1E69E7CD0];
  v18 = sub_185ADB840(a1);
  v19 = sub_185ADB68C();
  v20 = sub_185ACB848(v19, v18);
  v57 = MEMORY[0x1EEE9AC00](v20);
  v58 = v73;

  sub_185B4C96C(sub_185B42D7C, v56);

  v21 = *&v73[0];
  *&v73[0] = v17;
  v22 = sub_185ADB840(a1);
  v23 = sub_185ADB68C();
  v24 = sub_185ACB848(v23, v22);
  v74 = a1;
  v57 = MEMORY[0x1EEE9AC00](v24);
  v58 = v73;

  sub_185B4C96C(sub_185B42D80, v56);

  v25 = *&v73[0];
  *&v73[0] = v12;

  sub_185B4042C(v26);
  v27 = *&v73[0];
  if ((sub_185B3C6B8(v12, v21) & 1) == 0)
  {

    goto LABEL_7;
  }

  v28 = sub_185B3C6B8(v15, v25);

  if ((v28 & 1) == 0)
  {
LABEL_7:
    *&v73[0] = MEMORY[0x1E69E7CD0];
    v29 = sub_185ADB840(v74);
    v30 = sub_185ADB68C();
    v31 = sub_185ACB848(v30, v29);
    v57 = MEMORY[0x1EEE9AC00](v31);
    v58 = v73;

    sub_185B4C96C(sub_185B42D80, v56);

    LODWORD(v69) = 4;
    *(&v69 + 1) = v27;
    v70 = 0u;
    v71 = 0u;
    v72 = *&v73[0];
    sub_185B67C2C();
    v73[0] = v69;
    v73[1] = v70;
    v73[2] = v71;
    v73[3] = v72;
    sub_185ADF798(v73);
    goto LABEL_8;
  }

LABEL_8:
  if (*(v21 + 16) <= *(v12 + 16) >> 3)
  {
    *&v73[0] = v12;
    sub_185ACC0B0(v21);

    result = *&v73[0];
  }

  else
  {
    v32 = sub_185B3FA60(v21, v12);

    result = v32;
  }

  v34 = 0;
  v35 = result + 56;
  v36 = 1 << *(result + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(result + 56);
  v39 = (v36 + 63) >> 6;
  *&v33 = 136315138;
  v60 = v33;
  v61 = v39;
  v62 = result;
  while (v38)
  {
LABEL_20:
    v47 = (*(result + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v38)))));
    v49 = *v47;
    v48 = v47[1];
    v50 = qword_1ED6F4CB0;

    if (v50 != -1)
    {
      swift_once();
    }

    v51 = sub_185B67B8C();
    __swift_project_value_buffer(v51, qword_1ED6F5130);

    v52 = sub_185B67B6C();
    v53 = sub_185B680AC();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v73[0] = v55;
      *v54 = v60;
      *(v54 + 4) = sub_185ACB2C4(v49, v48, v73);
      _os_log_impl(&dword_185AC1000, v52, v53, "trying to unshield %s as it is no longer effectively locked", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x1865FE2F0](v55, -1, -1);
      MEMORY[0x1865FE2F0](v54, -1, -1);
    }

    v38 &= v38 - 1;
    v40 = swift_allocObject();
    *(v40 + 16) = v49;
    *(v40 + 24) = v48;

    empty = xpc_dictionary_create_empty();
    v42 = sub_185B67ECC();
    xpc_dictionary_set_int64(empty, (v42 + 32), 2);

    v43 = sub_185B67ECC();
    v44 = sub_185B67ECC();
    xpc_dictionary_set_string(empty, (v43 + 32), (v44 + 32));

    v45 = sub_185B67ECC();
    xpc_dictionary_set_BOOL(empty, (v45 + 32), 0);

    sub_185B13EA8(empty, sub_185B42D84, v40);

    swift_unknownObjectRelease();
    result = v62;
    v39 = v61;
  }

  while (1)
  {
    v46 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v46 >= v39)
    {
    }

    v38 = *(v35 + 8 * v46);
    ++v34;
    if (v38)
    {
      v34 = v46;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_185B42208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x1E69E7CD0];
  *&v72[0] = MEMORY[0x1E69E7CD0];
  v8 = sub_185ADB840(a1);
  v9 = sub_185ADB68C();
  v66 = sub_185ACB848(v9, v8);
  v67 = v72;

  sub_185B4C96C(sub_185B42D7C, v65);

  v10 = *&v72[0];
  *&v72[0] = v7;
  v11 = sub_185ADB840(a1);
  v12 = sub_185ADB68C();
  v63 = sub_185ACB848(v12, v11);
  v64 = v72;

  sub_185B4C96C(sub_185B42D80, v62);

  v13 = *&v72[0];
  sub_185B355C0(a2, a3);
  if (v3)
  {
  }

  v58 = 0;
  *&v72[0] = v7;
  v15 = sub_185ADB840(a1);
  v16 = sub_185ADB68C();
  v17 = sub_185ACB848(v16, v15);
  v56 = MEMORY[0x1EEE9AC00](v17);
  v57 = v72;

  sub_185B4C96C(sub_185B42D7C, v55);

  v18 = *&v72[0];
  *&v72[0] = v7;
  v19 = sub_185ADB840(a1);
  v20 = sub_185ADB68C();
  v21 = sub_185ACB848(v20, v19);
  v56 = MEMORY[0x1EEE9AC00](v21);
  v57 = v72;

  sub_185B4C96C(sub_185B42D80, v55);

  v22 = *&v72[0];
  *&v72[0] = v10;

  sub_185B4042C(v23);
  v24 = *&v72[0];
  if ((sub_185B3C6B8(v10, v18) & 1) == 0)
  {

    goto LABEL_7;
  }

  v25 = sub_185B3C6B8(v13, v22);

  if ((v25 & 1) == 0)
  {
LABEL_7:
    *&v72[0] = v7;
    v26 = sub_185ADB840(a1);
    v27 = sub_185ADB68C();
    v28 = sub_185ACB848(v27, v26);
    v56 = MEMORY[0x1EEE9AC00](v28);
    v57 = v72;

    sub_185B4C96C(sub_185B42D80, v55);

    LODWORD(v68) = 4;
    *(&v68 + 1) = v24;
    v69 = 0u;
    v70 = 0u;
    v71 = *&v72[0];
    sub_185B67C2C();
    v72[0] = v68;
    v72[1] = v69;
    v72[2] = v70;
    v72[3] = v71;
    sub_185ADF798(v72);
    goto LABEL_8;
  }

LABEL_8:
  v29 = *(v18 + 16);
  v30 = *(v10 + 16);
  v73 = a1;
  if (v29 <= v30 >> 3)
  {
    *&v72[0] = v10;
    sub_185ACC0B0(v18);

    result = *&v72[0];
  }

  else
  {
    v31 = sub_185B3FA60(v18, v10);

    result = v31;
  }

  v33 = 0;
  v34 = result + 56;
  v35 = 1 << *(result + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(result + 56);
  v38 = (v35 + 63) >> 6;
  *&v32 = 136315138;
  v59 = v32;
  v60 = v38;
  v61 = result;
  while (v37)
  {
LABEL_20:
    v46 = (*(result + 48) + ((v33 << 10) | (16 * __clz(__rbit64(v37)))));
    v48 = *v46;
    v47 = v46[1];
    v49 = qword_1ED6F4CB0;

    if (v49 != -1)
    {
      swift_once();
    }

    v50 = sub_185B67B8C();
    __swift_project_value_buffer(v50, qword_1ED6F5130);

    v51 = sub_185B67B6C();
    v52 = sub_185B680AC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v72[0] = v54;
      *v53 = v59;
      *(v53 + 4) = sub_185ACB2C4(v48, v47, v72);
      _os_log_impl(&dword_185AC1000, v51, v52, "trying to unshield %s as it is no longer effectively locked", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x1865FE2F0](v54, -1, -1);
      MEMORY[0x1865FE2F0](v53, -1, -1);
    }

    v37 &= v37 - 1;
    v39 = swift_allocObject();
    *(v39 + 16) = v48;
    *(v39 + 24) = v47;

    empty = xpc_dictionary_create_empty();
    v41 = sub_185B67ECC();
    xpc_dictionary_set_int64(empty, (v41 + 32), 2);

    v42 = sub_185B67ECC();
    v43 = sub_185B67ECC();
    xpc_dictionary_set_string(empty, (v42 + 32), (v43 + 32));

    v44 = sub_185B67ECC();
    xpc_dictionary_set_BOOL(empty, (v44 + 32), 0);

    sub_185B13EA8(empty, sub_185B42D84, v39);

    swift_unknownObjectRelease();
    result = v61;
    v38 = v60;
  }

  while (1)
  {
    v45 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v45 >= v38)
    {
    }

    v37 = *(v34 + 8 * v45);
    ++v33;
    if (v37)
    {
      v33 = v45;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_13AppProtection19AuthUIBindingTargetOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1 & 0x7E) != 0)
  {
    return 128 - (v1 & 0x7E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_185B42978(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_185B429D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessorType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AccessorType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_185B42BA0()
{
  result = qword_1EA8CD5A8;
  if (!qword_1EA8CD5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD5A8);
  }

  return result;
}

unint64_t sub_185B42BF8()
{
  result = qword_1EA8CD5B0;
  if (!qword_1EA8CD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD5B0);
  }

  return result;
}

unint64_t sub_185B42C50()
{
  result = qword_1EA8CD5B8;
  if (!qword_1EA8CD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD5B8);
  }

  return result;
}

uint64_t sub_185B42DA0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_185B42E2C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_185B43008(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

double sub_185B43314(void *a1)
{
  (*(a1[5] + 16))(a1[3]);
  if (v1)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v4 = sub_185B67B8C();
    __swift_project_value_buffer(v4, qword_1EA8D2278);
    v5 = v1;
    v6 = sub_185B67B6C();
    v7 = sub_185B6808C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v8 = 136315394;
      v10 = sub_185B6872C();
      v12 = sub_185ACB2C4(v10, v11, &v19);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2112;
      v13 = v1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v14;
      *v9 = v14;
      _os_log_impl(&dword_185AC1000, v6, v7, "No authentication age for underlying provider %s: %@", v8, 0x16u);
      sub_185AC3F6C(v9);
      MEMORY[0x1865FE2F0](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x1865FE2F0](v18, -1, -1);
      MEMORY[0x1865FE2F0](v8, -1, -1);
    }

    v15 = (*(a1[4] + 8))(a1[2]);
  }

  else
  {
    v15 = v3;
    (*(a1[4] + 8))(a1[2]);
    if (v17 < v15)
    {
      return v17;
    }
  }

  return v15;
}

double sub_185B436A8(void *a1)
{
  (*(a1[5] + 24))(a1[3]);
  if (v1)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v4 = sub_185B67B8C();
    __swift_project_value_buffer(v4, qword_1EA8D2278);
    v5 = v1;
    v6 = sub_185B67B6C();
    v7 = sub_185B6806C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v8 = 136315394;
      v10 = sub_185B6872C();
      v12 = sub_185ACB2C4(v10, v11, &v19);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2112;
      v13 = v1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v14;
      *v9 = v14;
      _os_log_impl(&dword_185AC1000, v6, v7, "No fence age for underlying provider %s: %@", v8, 0x16u);
      sub_185AC3F6C(v9);
      MEMORY[0x1865FE2F0](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x1865FE2F0](v18, -1, -1);
      MEMORY[0x1865FE2F0](v8, -1, -1);
    }

    v15 = (*(a1[4] + 24))(a1[2]);
  }

  else
  {
    v15 = v3;
    (*(a1[4] + 24))(a1[2]);
    if (v17 < v15)
    {
      return v17;
    }
  }

  return v15;
}

uint64_t sub_185B43A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v20 = a1;
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v4, v10);
  v11 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = *(a4 + 16);
  v18 = *(a4 + 24);
  *(v13 + 24) = v18;
  v14 = *(a4 + 40);
  *(v13 + 40) = v14;
  (*(v7 + 32))(v13 + v11, v9, a4);
  v15 = (v13 + v12);
  *v15 = v19;
  v15[1] = a3;
  v16 = *(v14 + 40);

  v16(v20, sub_185B4456C, v13, v18, v14);
}

uint64_t sub_185B43CBC(uint64_t a1)
{
  if (qword_1EA8CBFD0 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_1EA8D2330;
  v2 = *(*(qword_1EA8D2330 + 24) + 104);
  v3 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v3);

  os_unfair_lock_lock(v2 + 4);
  sub_185B44694(v4);
  os_unfair_lock_unlock(v2 + 4);

  v6 = *(*(v1 + 32) + 104);
  v7 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_185B44694(v8);
  os_unfair_lock_unlock(v6 + 4);
}

void sub_185B43E78(uint64_t a1)
{
  if (qword_1EA8CBFD0 != -1)
  {
    a1 = swift_once();
  }

  v2 = *(*(qword_1EA8D2330 + 24) + 104);
  MEMORY[0x1EEE9AC00](a1);

  os_unfair_lock_lock(v2 + 4);
  sub_185B42CD4(&v9);
  if (v1)
  {
    os_unfair_lock_unlock(v2 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v2 + 4);

    v3 = v9;

    if (!v3)
    {
      v5 = 0xD000000000000036;
      v6 = 0x8000000185B77CE0;
      v7 = 2;
      v8 = 22;
      goto LABEL_10;
    }

    v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    if (!v4)
    {
      v5 = 0xD000000000000034;
      v6 = 0x8000000185B77CA0;
      v7 = 2;
      v8 = 26;
      goto LABEL_10;
    }

    if (v4 < v3)
    {
      v5 = 0xD000000000000022;
      v6 = 0x8000000185B77C70;
      v7 = 22;
      v8 = 30;
LABEL_10:
      sub_185B21B1C(v7, v5, v6, v8, 0xD000000000000013, 0x8000000185B77370);
      swift_willThrow();
    }
  }
}

void sub_185B4406C(uint64_t a1)
{
  if (qword_1EA8CBFD0 != -1)
  {
    a1 = swift_once();
  }

  v2 = *(*(qword_1EA8D2330 + 32) + 104);
  MEMORY[0x1EEE9AC00](a1);

  os_unfair_lock_lock(v2 + 4);
  sub_185B4064C(&v9);
  if (v1)
  {
    os_unfair_lock_unlock(v2 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v2 + 4);

    v3 = v9;

    v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    if (!v4)
    {
      v7 = 0xD000000000000034;
      v5 = 0x8000000185B77CA0;
      v6 = 2;
      v8 = 54;
      goto LABEL_8;
    }

    if (v4 < v3)
    {
      v5 = 0x8000000185B77C70;
      v6 = 22;
      v7 = 0xD000000000000022;
      v8 = 58;
LABEL_8:
      sub_185B21B1C(v6, v7, v5, v8, 0x65674165636E6566, 0xEA00000000002928);
      swift_willThrow();
    }
  }
}

uint64_t sub_185B44220()
{
  if (qword_1EA8CBFD0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D2330;
  v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v1 = *(*(v0 + 32) + 104);
  v2 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v2);

  os_unfair_lock_lock(v1 + 4);
  sub_185B4435C(v3);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_185B44378@<X0>(uint64_t *a1@<X8>)
{
  result = sub_185B3C3C0();
  *a1 = result;
  return result;
}

uint64_t sub_185B443A8()
{
  if (qword_1EA8CBFD0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D2330;
  v1 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v2 = *(*(v0 + 24) + 104);
  v3 = MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v3);

  os_unfair_lock_lock(v2 + 4);
  sub_185B44694(v4);
  os_unfair_lock_unlock(v2 + 4);

  v6 = *(*(v0 + 32) + 104);
  v7 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_185B44694(v8);
  os_unfair_lock_unlock(v6 + 4);
}

uint64_t sub_185B4456C(char a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v10 = *(v2 + 16);
  v11[0] = v10;
  v9 = v5;
  v11[1] = v5;
  v6 = *(type metadata accessor for SelfCachingAuthProvider(0, v11) - 8);
  v7 = *(v2 + ((*(v6 + 64) + ((*(v6 + 80) + 48) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  if (a1)
  {
    (*(v9 + 16))(v10);
  }

  return v7(a1 & 1, a2);
}

uint64_t sub_185B446AC(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_185B6859C() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_185B6859C() & 1) == 0)
  {
    return 0;
  }

  return sub_185B67ACC();
}

uint64_t sub_185B44750()
{
  sub_185B6866C();
  sub_185B67EEC();
  sub_185B67EEC();
  sub_185B67AFC();
  sub_185B468C8(&qword_1EA8CD490, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_185B67DBC();
  return sub_185B686AC();
}

uint64_t sub_185B44808(uint64_t a1)
{
  sub_185B67EEC();
  sub_185B67EEC();
  sub_185B67AFC();
  sub_185B468C8(&qword_1EA8CD490, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_185B67DBC();
}

uint64_t sub_185B448A4(uint64_t a1)
{
  sub_185B6866C();
  sub_185B67EEC();
  sub_185B67EEC();
  sub_185B67AFC();
  sub_185B468C8(&qword_1EA8CD490, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_185B67DBC();
  return sub_185B686AC();
}

id sub_185B44958(uint64_t a1)
{
  result = APGetExtensionMonitorServiceInterface(a1);
  qword_1EA8D22E8 = result;
  return result;
}

void sub_185B44980(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v81 = type metadata accessor for ExtensionMonitorPair(0);
  v83 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v4 = &v77[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_185B67AFC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v77[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v89 = &v77[-v11];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v77[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v77[-v15];
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v17 = sub_185B67B8C();
  v18 = __swift_project_value_buffer(v17, qword_1EA8D2278);
  v20 = v6 + 16;
  v19 = *(v6 + 16);
  v88 = a1;
  v19(v16, a1, v5);
  v90 = v19;
  v19(v14, v91, v5);
  v87 = v18;
  v21 = sub_185B67B6C();
  v22 = sub_185B680AC();
  v23 = os_log_type_enabled(v21, v22);
  v82 = v4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v85 = v6;
    v25 = v24;
    v79 = swift_slowAlloc();
    v92[0] = v79;
    *v25 = 136446466;
    sub_185B468C8(&qword_1ED6F4640, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v86 = v20;
    v78 = v22;
    v26 = sub_185B6856C();
    v28 = v27;
    v80 = v9;
    v29 = *(v85 + 8);
    v29(v16, v5);
    v30 = sub_185ACB2C4(v26, v28, v92);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2082;
    v20 = v86;
    v31 = sub_185B6856C();
    v33 = v32;
    v29(v14, v5);
    v9 = v80;
    v34 = sub_185ACB2C4(v31, v33, v92);

    *(v25 + 14) = v34;
    _os_log_impl(&dword_185AC1000, v21, v78, "server begin monitoring extension %{public}s monitor %{public}s", v25, 0x16u);
    v35 = v79;
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v35, -1, -1);
    MEMORY[0x1865FE2F0](v25, -1, -1);
  }

  else
  {

    v29 = *(v6 + 8);
    v29(v14, v5);
    v29(v16, v5);
  }

  v36 = v88;
  v37 = sub_185AE948C(v88);
  v39 = v89;
  if (!v38)
  {
    goto LABEL_11;
  }

  v40 = v37;
  v41 = v38;
  v85 = sub_185AE8F94(v36);
  if (!v42)
  {

LABEL_11:
    v90(v9, v36, v5);
    v55 = sub_185B67B6C();
    v56 = sub_185B680AC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v92[0] = v58;
      *v57 = 136446210;
      sub_185B468C8(&qword_1ED6F4640, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v59 = sub_185B6856C();
      v61 = v60;
      v29(v9, v5);
      v62 = sub_185ACB2C4(v59, v61, v92);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_185AC1000, v55, v56, "could not find container bundleID for extension %{public}s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      MEMORY[0x1865FE2F0](v58, -1, -1);
      MEMORY[0x1865FE2F0](v57, -1, -1);
    }

    else
    {

      v29(v9, v5);
    }

    return;
  }

  v43 = v42;
  v88 = v40;
  v86 = v20;
  v90(v39, v91, v5);

  v44 = sub_185B67B6C();
  v45 = sub_185B680AC();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = v39;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v87 = v29;
    v49 = v48;
    v92[0] = v48;
    *v47 = 136315394;
    sub_185B468C8(&qword_1ED6F4640, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v50 = sub_185B6856C();
    v52 = v51;
    v87(v46, v5);
    v53 = sub_185ACB2C4(v50, v52, v92);

    *(v47 + 4) = v53;
    *(v47 + 12) = 2080;
    v54 = v85;
    *(v47 + 14) = sub_185ACB2C4(v85, v43, v92);
    _os_log_impl(&dword_185AC1000, v44, v45, "monitor %s is a monitor for %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v49, -1, -1);
    MEMORY[0x1865FE2F0](v47, -1, -1);
  }

  else
  {

    v29(v39, v5);
    v54 = v85;
  }

  v63 = v82;
  v90(v82 + *(v81 + 24), v91, v5);
  *v63 = v54;
  v63[1] = v43;
  v63[2] = v88;
  v63[3] = v41;
  v64 = OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_monitorAssociations;
  v65 = v84;
  swift_beginAccess();
  v66 = *(v65 + v64);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v65 + v64) = v66;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v66 = sub_185B3D054(0, v66[2] + 1, 1, v66);
    *(v65 + v64) = v66;
  }

  v69 = v66[2];
  v68 = v66[3];
  if (v69 >= v68 >> 1)
  {
    v66 = sub_185B3D054((v68 > 1), v69 + 1, 1, v66);
  }

  v66[2] = v69 + 1;
  sub_185B46910(v63, v66 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v69);
  *(v65 + v64) = v66;
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection25APExtensionMonitorService_policy, v92);
    swift_unknownObjectRelease();
    v71 = v93;
    v72 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v73 = (*(v72 + 24))(v71, v72);
    sub_185AC3A7C(v54, v43, v73);

    v74 = __swift_destroy_boxed_opaque_existential_0Tm(v92);
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v74);
  v75 = v91;
  *&v77[-16] = v65;
  *&v77[-8] = v75;
  sub_185B54710(sub_185B46974, &v77[-32], v76);
}

uint64_t sub_185B4542C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v8 = sub_185B67B8C();
  __swift_project_value_buffer(v8, qword_1EA8D2278);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_185B67B6C();
  v10 = sub_185B680AC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v25[0] = v13;
    *v12 = 136315138;
    sub_185B468C8(&qword_1ED6F4640, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = sub_185B6856C();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_185ACB2C4(v14, v16, v25);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_185AC1000, v9, v10, "server end monitoring %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1865FE2F0](v13, -1, -1);
    v18 = v12;
    a1 = v24;
    MEMORY[0x1865FE2F0](v18, -1, -1);
  }

  else
  {

    v19 = (*(v5 + 8))(v7, v4);
  }

  MEMORY[0x1EEE9AC00](v19);
  *(&v23 - 2) = a1;
  v20 = OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_monitorAssociations;
  swift_beginAccess();
  result = sub_185B5632C(sub_185B46878, (&v23 - 4));
  v22 = *(*(v2 + v20) + 16);
  if (v22 < result)
  {
    __break(1u);
  }

  else
  {
    sub_185B570E0(result, v22);
    return swift_endAccess();
  }

  return result;
}

void sub_185B45820(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for ExtensionMonitorPair(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v75 - v10;
  if ((*a1 & 6) != 0)
  {
    v91 = *(a1 + 8);
    v86 = *(a1 + 48);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v79 = v11;
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        sub_185ADF8F0(v14 + OBJC_IVAR____TtC13AppProtection25APExtensionMonitorService_policy, v92);
        swift_unknownObjectRelease();
        v15 = v93;
        v16 = v94;
        __swift_project_boxed_opaque_existential_1(v92, v93);
        v90 = (*(v16 + 32))(v15, v16);
        __swift_destroy_boxed_opaque_existential_0Tm(v92);
      }

      else
      {
        v90 = MEMORY[0x1E69E7CD0];
      }

      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17)
      {
        sub_185ADF8F0(v17 + OBJC_IVAR____TtC13AppProtection25APExtensionMonitorService_policy, v92);
        swift_unknownObjectRelease();
        v18 = v93;
        v19 = v94;
        __swift_project_boxed_opaque_existential_1(v92, v93);
        v87 = (*(v19 + 40))(v18, v19);
        __swift_destroy_boxed_opaque_existential_0Tm(v92);
      }

      else
      {
        v87 = MEMORY[0x1E69E7CD0];
      }

      v20 = v79;
      v21 = OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_monitorAssociations;
      swift_beginAccess();
      v22 = *&v13[v21];
      v83 = *(v22 + 16);
      if (v83)
      {
        v76 = v13;
        v81 = v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v89 = v91 + 56;
        v84 = v86 + 56;
        v88 = v90 + 56;
        v85 = v87 + 56;

        v24 = 0;
        *&v25 = 136315394;
        v77 = v25;
        v78 = v6;
        v82 = v23;
        while (1)
        {
          if (v24 >= *(v23 + 16))
          {
            __break(1u);
            return;
          }

          sub_185B467B8(v81 + *(v6 + 72) * v24, v20);
          if (!v91)
          {
            goto LABEL_36;
          }

          if (*(v91 + 16))
          {
            v28 = *v20;
            v27 = v20[1];
            v29 = v91;
            sub_185B6866C();
            sub_185B67EEC();
            v30 = sub_185B686AC();
            v31 = -1 << *(v29 + 32);
            v32 = v30 & ~v31;
            if ((*(v89 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
            {
              break;
            }
          }

LABEL_25:
          if (v86)
          {
            if (*(v86 + 16))
            {
              v37 = v20[2];
              v36 = v20[3];
              v38 = v86;
              sub_185B6866C();
              sub_185B67EEC();
              v39 = sub_185B686AC();
              v40 = -1 << *(v38 + 32);
              v41 = v39 & ~v40;
              if ((*(v84 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
              {
                v42 = ~v40;
                do
                {
                  v43 = (*(v86 + 48) + 16 * v41);
                  v44 = *v43 == v37 && v43[1] == v36;
                  if (v44 || (sub_185B6859C() & 1) != 0)
                  {
                    goto LABEL_36;
                  }

                  v41 = (v41 + 1) & v42;
                }

                while (((*(v84 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) != 0);
              }
            }
          }

LABEL_13:
          ++v24;
          sub_185B4681C(v20);
          v23 = v82;
          if (v24 == v83)
          {

            v13 = v76;
            goto LABEL_61;
          }
        }

        v33 = ~v31;
        while (1)
        {
          v34 = (*(v91 + 48) + 16 * v32);
          v35 = *v34 == v28 && v34[1] == v27;
          if (v35 || (sub_185B6859C() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v89 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

LABEL_36:
        if (*(v90 + 16) && (v45 = *v20, v46 = v20[1], v47 = v90, sub_185B6866C(), sub_185B67EEC(), v48 = sub_185B686AC(), v49 = -1 << *(v47 + 32), v50 = v48 & ~v49, ((*(v88 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) != 0))
        {
          v51 = ~v49;
          while (1)
          {
            v52 = (*(v90 + 48) + 16 * v50);
            v53 = *v52 == v45 && v52[1] == v46;
            if (v53 || (sub_185B6859C() & 1) != 0)
            {
              break;
            }

            v50 = (v50 + 1) & v51;
            if (((*(v88 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
            {
              goto LABEL_45;
            }
          }
        }

        else
        {
LABEL_45:
          if (!*(v87 + 16) || (v54 = v20[2], v55 = v20[3], v56 = v87, sub_185B6866C(), sub_185B67EEC(), v57 = sub_185B686AC(), v58 = -1 << *(v56 + 32), v59 = v57 & ~v58, ((*(v85 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0))
          {
LABEL_54:
            v63 = 0;
LABEL_56:
            if (qword_1EA8CB718 != -1)
            {
              swift_once();
            }

            v64 = sub_185B67B8C();
            __swift_project_value_buffer(v64, qword_1EA8D2278);
            sub_185B467B8(v20, v9);
            v65 = sub_185B67B6C();
            v66 = sub_185B680AC();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              v68 = swift_slowAlloc();
              v92[0] = v68;
              *v67 = v77;
              v80 = v63;
              v69 = v5;
              v70 = a3;
              v72 = *v9;
              v71 = v9[1];

              sub_185B4681C(v9);
              v73 = sub_185ACB2C4(v72, v71, v92);
              a3 = v70;
              v5 = v69;
              v63 = v80;

              *(v67 + 4) = v73;
              v6 = v78;
              *(v67 + 12) = 1024;
              *(v67 + 14) = v63;
              _os_log_impl(&dword_185AC1000, v65, v66, "monitor for %s is potentially affected, locked: %{BOOL}d", v67, 0x12u);
              __swift_destroy_boxed_opaque_existential_0Tm(v68);
              v74 = v68;
              v20 = v79;
              MEMORY[0x1865FE2F0](v74, -1, -1);
              MEMORY[0x1865FE2F0](v67, -1, -1);
            }

            else
            {

              sub_185B4681C(v9);
            }

            v26 = sub_185B67ABC();
            [a3 extensionMonitorWithUUID:v26 lockedStatusUpdate:v63];

            goto LABEL_13;
          }

          v60 = ~v58;
          while (1)
          {
            v61 = (*(v87 + 48) + 16 * v59);
            v62 = *v61 == v54 && v61[1] == v55;
            if (v62 || (sub_185B6859C() & 1) != 0)
            {
              break;
            }

            v59 = (v59 + 1) & v60;
            if (((*(v85 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
            {
              goto LABEL_54;
            }
          }
        }

        v63 = 1;
        goto LABEL_56;
      }

LABEL_61:
    }
  }
}

id sub_185B460E4()
{
  if (qword_1EA8CB9C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D22E8;

  return v0;
}

id sub_185B46188(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for ExtensionMonitorPair(uint64_t a1)
{
  result = qword_1EA8CBB38;
  if (!qword_1EA8CBB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_185B4627C(uint64_t a1)
{
  result = sub_185B67AFC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_185B46394(void *a1)
{
  v1 = [a1 _xpcConnection];
  xpc_connection_set_non_launching();

  return swift_unknownObjectRelease();
}

void sub_185B463E4(void *a1)
{
  v2 = APGetClientExtensionMonitorInterface(a1);
  [a1 setRemoteObjectInterface_];
}

uint64_t sub_185B46444@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for APExtensionMonitorService();
  v5 = objc_allocWithZone(v4);
  sub_185ADF8F0(a1, v5 + OBJC_IVAR____TtC13AppProtection25APExtensionMonitorService_policy);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  return result;
}

char *sub_185B464C0(void *a1)
{
  v2 = *v1;
  v3 = [a1 remoteObjectProxy];
  sub_185B682AC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD5F0, &qword_185B6ECA8);
  swift_dynamicCast();
  v4 = objc_allocWithZone(type metadata accessor for APExtensionMonitorClient());
  return sub_185B465C4(v2, v6, v4);
}

uint64_t sub_185B4656C(uint64_t a1, uint64_t a2)
{
  result = sub_185B468C8(&qword_1EA8CB9B0, a2, type metadata accessor for APExtensionMonitorClient, MEMORY[0x1E69E81B8]);
  *(a1 + 8) = result;
  return result;
}

char *sub_185B465C4(void *a1, uint64_t a2, char *a3)
{
  *&a3[OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_changeEventsSubscription] = 0;
  *&a3[OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_delegate + 8] = 0;
  v6 = swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_monitorAssociations] = MEMORY[0x1E69E7CC0];
  *(v6 + 8) = &off_1EF46B7C8;
  swift_unknownObjectWeakAssign();
  *&a3[OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_remoteMonitor] = a2;
  v20.receiver = a3;
  v20.super_class = type metadata accessor for APExtensionMonitorClient();
  swift_unknownObjectRetain();
  v7 = objc_msgSendSuper2(&v20, sel_init);
  sub_185ADF8F0(a1 + OBJC_IVAR____TtC13AppProtection25APExtensionMonitorService_policy, v17);
  v8 = v18;
  v9 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v10 = *(v9 + 8);
  v11 = v7;
  v10(v16, v8, v9);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a2;
  swift_unknownObjectRetain();
  v14 = sub_185B67C7C();

  swift_unknownObjectRelease();
  *&v11[OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_changeEventsSubscription] = v14;

  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  return v11;
}

uint64_t sub_185B467B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionMonitorPair(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_185B4681C(uint64_t a1)
{
  v2 = type metadata accessor for ExtensionMonitorPair(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_185B468C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_185B46910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionMonitorPair(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_185B46974(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC13AppProtection24APExtensionMonitorClient_remoteMonitor);
  v4 = sub_185B67ABC();
  [v3 extensionMonitorWithUUID:v4 lockedStatusUpdate:v2];
}

void sub_185B469D8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_185B6791C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_185B46A64()
{
  type metadata accessor for ManagedProtectabilityCache();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD610, &unk_185B6ED28);
  v1 = swift_allocObject();
  *(v1 + 40) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = -1;
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  sub_185B478F8();
  qword_1EA8D22C8 = v0;
}

uint64_t sub_185B46AE0()
{
  v7 = sub_185B680EC();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_185B680DC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_185B67CDC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  sub_185B67CBC();
  v8 = MEMORY[0x1E69E7CC0];
  sub_185AE216C(&qword_1ED6F48C0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC73B8(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185B682CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_185B6813C();
  qword_1EA8D22D8 = result;
  return result;
}

uint64_t sub_185B46D40()
{
  v7 = sub_185B680EC();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_185B680DC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_185B67CDC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  sub_185B67CBC();
  v8 = MEMORY[0x1E69E7CC0];
  sub_185AE216C(&qword_1ED6F48C0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC73B8(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185B682CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_185B6813C();
  qword_1EA8D22D0 = result;
  return result;
}

uint64_t sub_185B46FA0()
{
  v1 = *v0;
  v11 = sub_185B47124;
  v12 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_185B6657C;
  v10 = &block_descriptor_82_0;
  v2 = _Block_copy(&v7);
  v3 = APGetAsyncReadProxy(v2);
  _Block_release(v2);
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v1;
  v11 = sub_185B4A2B4;
  v12 = v4;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_185B0E6C8;
  v10 = &block_descriptor_88_0;
  v5 = _Block_copy(&v7);

  [v3 getPerAppManagedProtectability_];
  _Block_release(v5);
  return swift_unknownObjectRelease();
}

void sub_185B47124(void *a1)
{
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v2 = sub_185B67B8C();
  __swift_project_value_buffer(v2, qword_1ED6F5130);
  v3 = a1;
  oslog = sub_185B67B6C();
  v4 = sub_185B6808C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_185AC1000, oslog, v4, "Could not get protectability: %{public}@", v5, 0xCu);
    sub_185ACF5CC(v6, &unk_1EA8CC820, &unk_185B6B2A0);
    MEMORY[0x1865FE2F0](v6, -1, -1);
    MEMORY[0x1865FE2F0](v5, -1, -1);
  }
}

void sub_185B47280(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_185B67C9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_185B67CDC();
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  v45 = a1;
  os_unfair_lock_lock(v13 + 10);
  sub_185B4A2BC(&v13[4], aBlock);
  os_unfair_lock_unlock(v13 + 10);
  v14 = aBlock[0];
  v44 = v10;
  if (a1)
  {
    v15 = qword_1ED6F4CB0;
    v16 = a1;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = sub_185B67B8C();
    __swift_project_value_buffer(v17, qword_1ED6F5130);
    v18 = v16;
    v19 = sub_185B67B6C();
    v20 = sub_185B680AC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v42 = v7;
      v22 = v21;
      v23 = swift_slowAlloc();
      v41 = v6;
      v24 = v14;
      v25 = v23;
      *v22 = 138543362;
      *(v22 + 4) = v18;
      *v23 = a1;
      v26 = v18;
      _os_log_impl(&dword_185AC1000, v19, v20, "got per-app managed protectability %{public}@", v22, 0xCu);
      sub_185ACF5CC(v25, &unk_1EA8CC820, &unk_185B6B2A0);
      v27 = v25;
      v14 = v24;
      v6 = v41;
      MEMORY[0x1865FE2F0](v27, -1, -1);
      v28 = v22;
      v7 = v42;
      MEMORY[0x1865FE2F0](v28, -1, -1);

      v19 = v26;
    }

    else
    {
    }
  }

  else
  {
    if (!a2)
    {
      __break(1u);
      return;
    }

    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v29 = sub_185B67B8C();
    __swift_project_value_buffer(v29, qword_1ED6F5130);
    v30 = a2;
    v19 = sub_185B67B6C();
    v31 = sub_185B6808C();

    if (os_log_type_enabled(v19, v31))
    {
      v32 = v14;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138543362;
      v35 = a2;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_185AC1000, v19, v31, "Could not get protectability: %{public}@", v33, 0xCu);
      sub_185ACF5CC(v34, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v34, -1, -1);
      v37 = v33;
      v14 = v32;
      MEMORY[0x1865FE2F0](v37, -1, -1);
    }
  }

  if (qword_1EA8CB980 != -1)
  {
    swift_once();
  }

  v38 = swift_allocObject();
  *(v38 + 16) = v14;
  *(v38 + 24) = a2;
  aBlock[4] = sub_185B4A2D8;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185ACA0E8;
  aBlock[3] = &block_descriptor_94;
  v39 = _Block_copy(aBlock);
  v40 = a2;
  sub_185B67CBC();
  v46 = MEMORY[0x1E69E7CC0];
  sub_185AE216C(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
  sub_185B682CC();
  MEMORY[0x1865FD170](0, v12, v9, v39);
  _Block_release(v39);
  (*(v7 + 8))(v9, v6);
  (*(v43 + 8))(v12, v44);
}

void sub_185B4781C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    v5 = *a1;
    v7 = a2;

    *a1 = a2;
  }

  v8 = *(a1 + 16);
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *a3 = v8;
}

uint64_t sub_185B47884(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = result + 40;
    do
    {
      v5 = *(v4 - 8);
      v6 = a2;

      v5(&v6);

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_185B478F8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 10);
  sub_185B4A290(&v1[4]);
  os_unfair_lock_unlock(v1 + 10);
}

uint64_t sub_185B47970(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  if (*(a1 + 8) == -1)
  {
    if (qword_1EA8CB978 != -1)
    {
      swift_once();
    }

    v3 = qword_1EA8D22D0;
    v4 = swift_allocObject();
    swift_weakInit();
    v17[4] = sub_185B4A2AC;
    v17[5] = v4;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_185ACEA8C;
    v17[3] = &block_descriptor_79;
    v5 = _Block_copy(v17);

    v6 = sub_185B67ECC();
    v7 = notify_register_dispatch((v6 + 32), v2, v3, v5);

    _Block_release(v5);
    if (v7)
    {
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v8 = sub_185B67B8C();
      __swift_project_value_buffer(v8, qword_1ED6F5130);
      v9 = sub_185B67B6C();
      v10 = sub_185B6808C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v17[0] = v12;
        *v11 = 136315394;
        v13 = sub_185B67E4C();
        v15 = sub_185ACB2C4(v13, v14, v17);

        *(v11 + 4) = v15;
        *(v11 + 12) = 1024;
        *(v11 + 14) = v7;
        _os_log_impl(&dword_185AC1000, v9, v10, "couldn't register for %s: %u", v11, 0x12u);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x1865FE2F0](v12, -1, -1);
        MEMORY[0x1865FE2F0](v11, -1, -1);
      }
    }
  }

  return sub_185B46FA0();
}

uint64_t sub_185B47C0C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v2 = sub_185B67B8C();
  __swift_project_value_buffer(v2, qword_1ED6F5130);
  v3 = sub_185B67B6C();
  v4 = sub_185B680AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_185ACB2C4(0xD00000000000002FLL, 0x8000000185B76C70, v8);
    _os_log_impl(&dword_185AC1000, v3, v4, "got %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x1865FE2F0](v6, -1, -1);
    MEMORY[0x1865FE2F0](v5, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_185B46FA0();
  }

  return result;
}

void sub_185B47D80(uint64_t a1, uint64_t a2)
{
  v5 = sub_185B67C9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_185B67CDC();
  v9 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 16);
  v17 = a1;
  v18 = a2;
  os_unfair_lock_lock(v12 + 10);
  sub_185B4A21C(&v12[4], aBlock);
  os_unfair_lock_unlock(v12 + 10);
  if (LOBYTE(aBlock[0]) == 1)
  {
    v15 = v6;
    if (qword_1EA8CB980 != -1)
    {
      swift_once();
    }

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    aBlock[4] = sub_185B4A238;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_185ACA0E8;
    aBlock[3] = &block_descriptor_70;
    v14 = _Block_copy(aBlock);

    sub_185B67CBC();
    v19 = MEMORY[0x1E69E7CC0];
    sub_185AE216C(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v11, v8, v14);
    _Block_release(v14);
    (*(v15 + 8))(v8, v5);
    (*(v9 + 8))(v11, v16);
  }
}

uint64_t sub_185B480B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (*result)
  {
    v5 = 1;
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    v10 = *(v8 + 16);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_185B3D07C(0, v10[2] + 1, 1, v10);
      v10 = result;
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      result = sub_185B3D07C((v11 > 1), v12 + 1, 1, v10);
      v10 = result;
    }

    v5 = 0;
    v10[2] = v12 + 1;
    v13 = &v10[2 * v12];
    v13[4] = sub_185B4A264;
    v13[5] = v9;
    *(v8 + 16) = v10;
  }

  *a4 = v5;
  return result;
}

id sub_185B481BC()
{
  result = [objc_allocWithZone(APSettingsManager) init];
  qword_1EA8D2270 = result;
  return result;
}

APSettingsManager __swiftcall APSettingsManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id static APSettingsManager.shared()()
{
  if (qword_1EA8CB968 != -1)
  {
    swift_once();
  }

  if (qword_1EA8CB670 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D2270;

  return v0;
}

void sub_185B482CC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v5 = sub_185B67B8C();
    __swift_project_value_buffer(v5, qword_1ED6F5130);
    v6 = a1;
    v7 = sub_185B67B6C();
    v8 = sub_185B6808C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_185AC1000, v7, v8, "error on connection: %@", v9, 0xCu);
      sub_185ACF5CC(v10, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v10, -1, -1);
      MEMORY[0x1865FE2F0](v9, -1, -1);
    }

    swift_beginAccess();
    v13 = *(a2 + 16);
    *(a2 + 16) = a1;
  }
}

uint64_t sub_185B48468(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t))
{
  v9 = a3;
  v10 = a1;
  a6(v9, a4);

  return 1;
}

uint64_t sub_185B48510(id a1, uint64_t (*a2)(id))
{
  if (a1)
  {
    v4 = a1;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v5 = sub_185B67B8C();
    __swift_project_value_buffer(v5, qword_1ED6F5130);
    v6 = a1;
    v7 = sub_185B67B6C();
    v8 = sub_185B6808C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_185AC1000, v7, v8, "error on write connection: %@", v9, 0xCu);
      sub_185ACF5CC(v10, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v10, -1, -1);
      MEMORY[0x1865FE2F0](v9, -1, -1);
    }

    else
    {
    }
  }

  return a2(a1);
}

void sub_185B486D0(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, void (*a6)(id, uint64_t, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a1;
  a6(v11, a4, v10);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t sub_185B48970(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_185B489B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_185B48A08()
{
  v0 = objc_opt_self();
  result = [v0 sharedConnection];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = result;
  v3 = [result isLockingAppsAllowed];

  if (!v3)
  {
    return 0;
  }

  result = [v0 sharedConnection];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [result isHidingAppsAllowed];

  if (!v5)
  {
    return 0;
  }

  if (qword_1EA8CB968 != -1)
  {
    v6 = swift_once();
  }

  v7 = *(qword_1EA8D22C8 + 16);
  MEMORY[0x1EEE9AC00](v6);
  os_unfair_lock_lock((v7 + 40));
  sub_185B4A1D4((v7 + 16), &v8);
  os_unfair_lock_unlock((v7 + 40));
  return v8;
}

id sub_185B48B58(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = &type metadata for AppRecordProtectabilityInfo;
  v20 = &off_1EF466208;
  v18[0] = a1;
  v18[1] = a2;
  sub_185B4A164(a3, v16);
  if (v17)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD608, &unk_185B6ED18);
    type metadata accessor for APPersistentStore();
    if (swift_dynamicCast())
    {
      if ((*(*(v15 + 16) + OBJC_IVAR____TtC13AppProtection27APDaemonPersistentContainer_isAvailable) & 1) == 0)
      {
        v7 = sub_185AD0148(0x12uLL, 0xD000000000000051, 0x8000000185B77FF0, 28, 0xD00000000000005ELL, 0x8000000185B77F60);

        goto LABEL_23;
      }
    }
  }

  else
  {
    v5 = a1;
    swift_unknownObjectRetain();
    sub_185ACF5CC(v16, &qword_1EA8CD600, &qword_185B6ED10);
  }

  if (qword_1EA8CB9A0 != -1)
  {
    swift_once();
  }

  if (byte_1EA8CB9A8 != 1)
  {
    v11 = 0xD000000000000020;
    v12 = 0x8000000185B77F30;
    v13 = 17;
    v14 = 32;
LABEL_22:
    v7 = sub_185AD0148(v13, v11, v12, v14, 0xD00000000000005ELL, 0x8000000185B77F60);
    goto LABEL_23;
  }

  v16[0] = 0;
  if ((AppProtectionFeatures.enabled.getter() & 1) == 0)
  {
    v13 = 2;
    v11 = 0;
    v12 = 0;
    v14 = 36;
    goto LABEL_22;
  }

  if (!sub_185AD06D8())
  {
    v13 = 12;
    v11 = 0;
    v12 = 0;
    v14 = 40;
    goto LABEL_22;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v18, v19);
  v7 = sub_185AD0A7C(*v6, v6[1]);
  if (v7)
  {
LABEL_23:
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    return v7;
  }

  result = [*__swift_project_boxed_opaque_existential_1(v18 v19)];
  if (result)
  {
    v9 = result;
    sub_185B67E4C();

    LOBYTE(v9) = sub_185AD0CB0();

    if ((v9 & 1) == 0)
    {
LABEL_21:
      v11 = 0xD000000000000023;
      v12 = 0x8000000185B77FC0;
      v13 = 9;
      v14 = 48;
      goto LABEL_22;
    }

    result = [*__swift_project_boxed_opaque_existential_1(v18 v19)];
    if (result)
    {
      v10 = result;
      sub_185B67E4C();

      LOBYTE(v10) = sub_185B48A08();

      if (v10)
      {
        v7 = 0;
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_185B48EA4(NSObject *a1, char a2)
{
  v5 = sub_185ACFB68(a1);
  if (v2)
  {
    return swift_willThrow();
  }

  v6 = v5;
  v7 = APGetPrivacyDisclosureInterface(v6);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = sub_185B48B58(v8, v7, &v19);
  swift_unknownObjectRelease();

  sub_185ACF5CC(&v19, &qword_1EA8CD600, &qword_185B6ED10);
  if (v9)
  {
    return swift_willThrow();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_185B4A200;
  *(v12 + 24) = v11;
  v21 = sub_185B4A340;
  v22 = v12;
  *&v19 = MEMORY[0x1E69E9820];
  *(&v19 + 1) = 1107296256;
  *&v20 = sub_185B6657C;
  *(&v20 + 1) = &block_descriptor_61;
  v13 = _Block_copy(&v19);
  swift_retain_n();

  v14 = APGetSyncWriteProxy(v13);
  _Block_release(v13);
  v15 = [a1 effectiveBundleIdentifier];
  if (!v15)
  {
    sub_185B67E4C();
    v15 = sub_185B67E1C();
  }

  v21 = sub_185B4A200;
  v22 = v11;
  *&v19 = MEMORY[0x1E69E9820];
  *(&v19 + 1) = 1107296256;
  *&v20 = sub_185B2AF84;
  *(&v20 + 1) = &block_descriptor_64_0;
  v16 = _Block_copy(&v19);

  [v14 setBundleIdentifier:v15 hidden:a2 & 1 completion:v16];
  _Block_release(v16);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v17 = *(v11 + 16);
  if (v17)
  {
    swift_willThrow();
    v18 = v17;
  }
}

id sub_185B49188(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v20 = &type metadata for AppRecordProtectabilityInfo;
  v21 = &off_1EF466208;
  v19[0] = a1;
  v19[1] = a2;
  sub_185B4A164(a4, v17);
  if (v18)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD608, &unk_185B6ED18);
    type metadata accessor for APPersistentStore();
    if (swift_dynamicCast())
    {
      if ((*(*(v16 + 16) + OBJC_IVAR____TtC13AppProtection27APDaemonPersistentContainer_isAvailable) & 1) == 0)
      {
        v12 = sub_185AD0148(0x12uLL, 0xD000000000000051, 0x8000000185B77FF0, 62, 0xD000000000000072, 0x8000000185B78080);

LABEL_18:
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        return v12;
      }
    }
  }

  else
  {
    v7 = a1;
    swift_unknownObjectRetain();
    sub_185ACF5CC(v17, &qword_1EA8CD600, &qword_185B6ED10);
  }

  if (qword_1EA8CB9A0 != -1)
  {
    swift_once();
  }

  if (byte_1EA8CB9A8 != 1)
  {
    v8 = 0xD000000000000020;
    v9 = 0x8000000185B77F30;
    v10 = 17;
    v11 = 66;
    goto LABEL_17;
  }

  v17[0] = 0;
  if ((AppProtectionFeatures.enabled.getter() & 1) == 0)
  {
    v10 = 2;
    v8 = 0;
    v9 = 0;
    v11 = 70;
    goto LABEL_17;
  }

  if (!sub_185AD06D8())
  {
    v10 = 12;
    v8 = 0;
    v9 = 0;
    v11 = 74;
    goto LABEL_17;
  }

  if (a3)
  {
    v8 = 0xD000000000000026;
    v9 = 0x8000000185B77BF0;
    v10 = 3;
    v11 = 78;
LABEL_17:
    v12 = sub_185AD0148(v10, v8, v9, v11, 0xD000000000000072, 0x8000000185B78080);
    goto LABEL_18;
  }

  v14 = __swift_project_boxed_opaque_existential_1(v19, v20);
  v12 = sub_185ACF880(*v14, v14[1]);
  if (v12)
  {
    goto LABEL_18;
  }

  result = [*__swift_project_boxed_opaque_existential_1(v19 v20)];
  if (result)
  {
    v15 = result;
    sub_185B67E4C();

    LOBYTE(v15) = sub_185AD0CB0();

    if (v15)
    {
      v12 = 0;
      goto LABEL_18;
    }

    v8 = 0xD000000000000023;
    v9 = 0x8000000185B78100;
    v10 = 9;
    v11 = 86;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_185B494BC(NSObject *a1, char a2)
{
  v5 = sub_185ACFB68(a1);
  if (v2)
  {
    return swift_willThrow();
  }

  v6 = v5;
  v7 = [a1 isHidden];
  v8 = v7;
  v9 = APGetPrivacyDisclosureInterface(v7);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v10 = v6;
  v11 = sub_185B49188(v10, v9, v8, &v21);
  swift_unknownObjectRelease();

  sub_185ACF5CC(&v21, &qword_1EA8CD600, &qword_185B6ED10);
  if (v11)
  {
    return swift_willThrow();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_185B4A344;
  *(v14 + 24) = v13;
  v23 = sub_185B4A340;
  v24 = v14;
  *&v21 = MEMORY[0x1E69E9820];
  *(&v21 + 1) = 1107296256;
  *&v22 = sub_185B6657C;
  *(&v22 + 1) = &block_descriptor_50_1;
  v15 = _Block_copy(&v21);
  swift_retain_n();

  v16 = APGetSyncWriteProxy(v15);
  _Block_release(v15);
  v17 = [a1 effectiveBundleIdentifier];
  if (!v17)
  {
    sub_185B67E4C();
    v17 = sub_185B67E1C();
  }

  v23 = sub_185B4A344;
  v24 = v13;
  *&v21 = MEMORY[0x1E69E9820];
  *(&v21 + 1) = 1107296256;
  *&v22 = sub_185B2AF84;
  *(&v22 + 1) = &block_descriptor_53;
  v18 = _Block_copy(&v21);

  [v16 setBundleIdentifier:v17 locked:a2 & 1 completion:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v19 = *(v13 + 16);
  if (v19)
  {
    swift_willThrow();
    v20 = v19;
  }
}

void sub_185B497B8(NSObject *a1, char a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = sub_185ACFB68(a1);
  v8 = APGetPrivacyDisclosureInterface(v7);
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = sub_185B48B58(v9, v8, &v20);
  swift_unknownObjectRelease();

  sub_185ACF5CC(&v20, &qword_1EA8CD600, &qword_185B6ED10);
  if (v10)
  {
    v11 = v10;
    v12 = sub_185B6791C();
    (a3)[2](a3, 0, v12);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_185ACA0F0;
    *(v13 + 24) = v6;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_185B12514;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_185B4A348;
    *(v15 + 24) = v14;
    v22 = sub_185B4A340;
    v23 = v15;
    *&v20 = MEMORY[0x1E69E9820];
    *(&v20 + 1) = 1107296256;
    *&v21 = sub_185B6657C;
    *(&v21 + 1) = &block_descriptor_37_3;
    v16 = _Block_copy(&v20);

    v17 = APGetAsyncWriteProxy(v16);
    _Block_release(v16);
    v18 = [a1 effectiveBundleIdentifier];
    if (!v18)
    {
      sub_185B67E4C();
      v18 = sub_185B67E1C();
    }

    v22 = sub_185B4A348;
    v23 = v14;
    *&v20 = MEMORY[0x1E69E9820];
    *(&v20 + 1) = 1107296256;
    *&v21 = sub_185B2AF84;
    *(&v21 + 1) = &block_descriptor_40_1;
    v19 = _Block_copy(&v20);

    [v17 setBundleIdentifier:v18 hidden:a2 & 1 completion:v19];
    _Block_release(v19);

    swift_unknownObjectRelease();
  }
}

void sub_185B49AF8(NSObject *a1, char a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = sub_185ACFB68(a1);
  v8 = [a1 isHidden];
  v9 = v8;
  v10 = APGetPrivacyDisclosureInterface(v8);
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v11 = v7;
  v12 = sub_185B49188(v11, v10, v9, &v22);
  swift_unknownObjectRelease();

  sub_185ACF5CC(&v22, &qword_1EA8CD600, &qword_185B6ED10);
  if (v12)
  {
    v13 = v12;
    v14 = sub_185B6791C();
    (a3)[2](a3, 0, v14);
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_185ACA0F4;
    *(v15 + 24) = v6;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_185B12714;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_185B4A1F8;
    *(v17 + 24) = v16;
    v24 = sub_185B0FA08;
    v25 = v17;
    *&v22 = MEMORY[0x1E69E9820];
    *(&v22 + 1) = 1107296256;
    *&v23 = sub_185B6657C;
    *(&v23 + 1) = &block_descriptor_21;
    v18 = _Block_copy(&v22);

    v19 = APGetAsyncWriteProxy(v18);
    _Block_release(v18);
    v20 = [a1 effectiveBundleIdentifier];
    if (!v20)
    {
      sub_185B67E4C();
      v20 = sub_185B67E1C();
    }

    v24 = sub_185B4A1F8;
    v25 = v16;
    *&v22 = MEMORY[0x1E69E9820];
    *(&v22 + 1) = 1107296256;
    *&v23 = sub_185B2AF84;
    *(&v23 + 1) = &block_descriptor_19_0;
    v21 = _Block_copy(&v22);

    [v19 setBundleIdentifier:v20 locked:a2 & 1 completion:v21];
    _Block_release(v21);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_185B49E58(NSObject *a1)
{
  v1 = a1;
  v2 = sub_185ACFB68(a1);
  v3 = [v1 isHidden];
  LOBYTE(v1) = v3;
  v4 = APGetPrivacyDisclosureInterface(v3);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v5 = v2;
  v6 = sub_185B49188(v5, v4, v1, v8);
  swift_unknownObjectRelease();

  sub_185ACF5CC(v8, &qword_1EA8CD600, &qword_185B6ED10);
  if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_185B49F34(NSObject *a1)
{
  v1 = sub_185ACFB68(a1);
  v2 = APGetPrivacyDisclosureInterface(v1);
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v3 = v1;
  v4 = sub_185B48B58(v3, v2, v6);
  swift_unknownObjectRelease();

  sub_185ACF5CC(v6, &qword_1EA8CD600, &qword_185B6ED10);
  if (!v4)
  {
    return 1;
  }

  return 0;
}

id sub_185B49FEC()
{
  v0 = *MEMORY[0x1E696A768];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185B6BB60;
  *(inited + 32) = 0x656E694C5041;
  v2 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 278;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 72) = v2;
  *(inited + 80) = 0x636E75465041;
  *(inited + 120) = v3;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0xD00000000000002FLL;
  *(inited + 104) = 0x8000000185B77F00;
  v4 = v0;
  sub_185AD038C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
  swift_arrayDestroy();
  v5 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v6 = sub_185B67D7C();

  v7 = [v5 initWithDomain:v4 code:-4 userInfo:v6];

  return v7;
}

uint64_t sub_185B4A164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD600, &qword_185B6ED10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_185B4A34C(uint64_t a1@<X8>)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = [v1 raw_audit_token];
  if (!v3)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v15 = sub_185B67B8C();
    __swift_project_value_buffer(v15, qword_1EA8D2278);
    v16 = sub_185B67B6C();
    v17 = sub_185B6809C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_185AC1000, v16, v17, "data access record had no audit token data!", v18, 2u);
      MEMORY[0x1865FE2F0](v18, -1, -1);
    }

    goto LABEL_13;
  }

  v4 = v3;
  v5 = sub_185B67A5C();
  v7 = v6;

  v30 = 0u;
  v31 = 0u;
  v8 = sub_185B67A4C();
  v33[0] = 0;
  v9 = APAuditTokenFromData(v8, &v30, v33);

  v10 = v33[0];
  if (!v9)
  {
    v19 = qword_1EA8CB718;
    v20 = v33[0];
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_185B67B8C();
    __swift_project_value_buffer(v21, qword_1EA8D2278);
    v16 = sub_185B67B6C();
    v22 = sub_185B6809C();
    if (os_log_type_enabled(v16, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v10;
      v33[0] = v24;
      *v23 = 136315138;
      v20 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD628, &qword_185B6EE40);
      v25 = sub_185B67EBC();
      v27 = sub_185ACB2C4(v25, v26, v33);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_185AC1000, v16, v22, "cannot convert data to audit token: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x1865FE2F0](v24, -1, -1);
      MEMORY[0x1865FE2F0](v23, -1, -1);
    }

    sub_185AE2FC8(v5, v7);

LABEL_13:
    v12 = 0uLL;
    v14 = 1;
    v13 = 0uLL;
    goto LABEL_14;
  }

  v11 = v33[0];
  sub_185AE2FC8(v5, v7);
  v28 = v31;
  v29 = v30;

  v13 = v28;
  v12 = v29;
  v14 = 0;
LABEL_14:
  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
}

unint64_t sub_185B4A660()
{
  sub_185B4A34C(&v7);
  if (v8)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v0 = sub_185B67B8C();
    __swift_project_value_buffer(v0, qword_1EA8D2278);
    v1 = sub_185B67B6C();
    v2 = sub_185B6809C();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_185AC1000, v1, v2, "data access record had no audit token!", v3, 2u);
      MEMORY[0x1865FE2F0](v3, -1, -1);
    }

    return 0;
  }

  else
  {
    v6 = v7;
    v5 = audit_token_to_pid(&v6);
    v6 = v7;
    return v5 | (audit_token_to_pidversion(&v6) << 32);
  }
}

uint64_t sub_185B4A790(uint64_t a1, uint64_t a2)
{
  v5[2] = &v6;
  v6 = MEMORY[0x1E69E7CC8];
  (*(a2 + 56))(sub_185B5444C, v5, a1, a2);
  v3 = v6;
  if (v2)
  {
  }

  return v3;
}

uint64_t sub_185B4A814(uint64_t a1)
{
  result = MEMORY[0x1865FD050](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_185AC407C(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_185B4A930()
{
  sub_185B6866C();
  sub_185B6868C();
  return sub_185B686AC();
}

uint64_t sub_185B4A9A4(uint64_t a1)
{
  sub_185B6866C();
  sub_185B6868C();
  return sub_185B686AC();
}

unsigned __int16 *sub_185B4A9E8@<X0>(unsigned __int16 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void sub_185B4AA0C(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  *&v19 = 0;
  v3 = [a1 executeRequest:a2 error:&v19];
  v4 = v19;
  if (!v3)
  {
    v8 = v19;
    sub_185B6792C();

    swift_willThrow();
    return;
  }

  v5 = v3;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  v7 = v4;
  if (!v6)
  {

    v19 = 0u;
    v20 = 0u;
LABEL_13:
    sub_185ACF5CC(&v19, &qword_1EA8CC830, &unk_185B6BEB0);
    return;
  }

  if ([v6 result])
  {
    sub_185B682AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {

    goto LABEL_13;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD648, &qword_185B6EE60);
  if (swift_dynamicCast())
  {
    v10 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD650, &qword_185B6EE68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_185B6BB70;
    *&v19 = sub_185B67E4C();
    *(&v19 + 1) = v12;
    sub_185B6831C();
    *(inited + 96) = v9;
    *(inited + 72) = v17;
    sub_185B532B4(inited);
    swift_setDeallocating();
    sub_185ACF5CC(inited + 32, &qword_1EA8CD658, &unk_185B6EE70);
    v13 = sub_185B67D7C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCE78, &qword_185B6C5B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_185B6C470;
    *(v14 + 32) = a1;
    sub_185ADF590(0, &qword_1EA8CB638, 0x1E695D628);
    v15 = a1;
    v16 = sub_185B67F5C();

    [v10 mergeChangesFromRemoteContextSave:v13 intoContexts:v16];
  }
}

void sub_185B4AD14(void *a1, uint64_t a2)
{
  type metadata accessor for PreferenceSetting();
  v4 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_185ADF590(0, &qword_1EA8CB680, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD3A0, &unk_185B6EE50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_185B6BB70;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD648, &qword_185B6EE60);
  *(v5 + 64) = sub_185B54098();
  *(v5 + 32) = a2;

  v6 = sub_185B6804C();
  [v4 setPredicate_];

  v7 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  [v7 setResultType_];
  sub_185B4AA0C(a1, v7);
}

uint64_t sub_185B4AE78(int a1)
{
  sub_185B6836C();
  MEMORY[0x1865FCF60](0xD000000000000019, 0x8000000185B78310);
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1865FCF60](v2, v3);

  MEMORY[0x1865FCF60](0x6E6564646968202CLL, 0xEA0000000000203ALL);
  if ((a1 & 0x100) != 0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1865FCF60](v4, v5);

  MEMORY[0x1865FCF60](0x7369766F7270202CLL, 0xEF203A6C616E6F69);
  if ((a1 & 0x10000) != 0)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1865FCF60](v6, v7);

  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_185B4B004()
{
  if (v0[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_185B4AE78(v2 | *v0 | v1);
}

uint64_t sub_185B4B034(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  *a4 = 0x8000000000000000;
  sub_185B529EC(a3 & 0x10101, a1, a2, isUniquelyReferenced_nonNull_native);
  *a4 = v10;

  return a3 & 0x10101;
}

void sub_185B4B0C4(uint64_t a1, uint64_t a2)
{
  v5 = sub_185B67D3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 24);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = sub_185B67D5C();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v11 = *(v2 + 16);
  if (*(v11 + OBJC_IVAR____TtC13AppProtection27APDaemonPersistentContainer_isAvailable) == 1)
  {
    v12 = [v11 newBackgroundContext];
    v13 = MEMORY[0x1EEE9AC00](v12);
    v30[-4] = a1;
    v30[-3] = a2;
    v30[-2] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD678, &unk_185B6EE88);
    sub_185B6821C();

    return;
  }

  if (qword_1EA8CB718 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v14 = sub_185B67B8C();
  __swift_project_value_buffer(v14, qword_1EA8D2278);
  v15 = sub_185B67B6C();
  v16 = sub_185B6809C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_185AC1000, v15, v16, "Persistent container is unavailable, cannot execute context operation", v17, 2u);
    MEMORY[0x1865FE2F0](v17, -1, -1);
  }

  v18 = *MEMORY[0x1E696A250];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185B6BB60;
  *(inited + 32) = 0x656E694C5041;
  v20 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 220;
  v21 = MEMORY[0x1E69E6158];
  *(inited + 72) = v20;
  *(inited + 80) = 0x636E75465041;
  *(inited + 120) = v21;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0xD000000000000016;
  *(inited + 104) = 0x8000000185B78260;
  v22 = v18;
  v23 = sub_185AD038C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
  swift_arrayDestroy();
  v24 = sub_185B67E4C();
  v26 = v25;
  v33 = v21;
  *&v32 = 0xD00000000000001FLL;
  *(&v32 + 1) = 0x8000000185B78240;
  sub_185AD093C(&v32, v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[1] = v23;
  sub_185ACFF1C(v31, v24, v26, isUniquelyReferenced_nonNull_native);

  v28 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v29 = sub_185B67D7C();

  [v28 initWithDomain:v22 code:132010 userInfo:v29];

  swift_willThrow();
}

uint64_t sub_185B4B524(uint64_t a1, uint64_t a2)
{
  v6 = sub_185B67D3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 24);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v11 = v10;
  LOBYTE(v10) = sub_185B67D5C();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  v12 = *(v2 + 16);
  if (*(v12 + OBJC_IVAR____TtC13AppProtection27APDaemonPersistentContainer_isAvailable) == 1)
  {
    v13 = [v12 newBackgroundContext];
    v14 = MEMORY[0x1EEE9AC00](v13);
    v33[-4] = a1;
    v33[-3] = a2;
    v33[-2] = v14;
    sub_185B6821C();

    if (!v3)
    {
      v15 = v37;
    }

    return v15 & 1;
  }

  if (qword_1EA8CB718 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v16 = sub_185B67B8C();
  __swift_project_value_buffer(v16, qword_1EA8D2278);
  v17 = sub_185B67B6C();
  v18 = sub_185B6809C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_185AC1000, v17, v18, "Persistent container is unavailable, cannot execute context operation", v19, 2u);
    MEMORY[0x1865FE2F0](v19, -1, -1);
  }

  v20 = *MEMORY[0x1E696A250];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185B6BB60;
  *(inited + 32) = 0x656E694C5041;
  v22 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 220;
  v23 = MEMORY[0x1E69E6158];
  *(inited + 72) = v22;
  *(inited + 80) = 0x636E75465041;
  *(inited + 120) = v23;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0xD000000000000016;
  *(inited + 104) = 0x8000000185B78260;
  v24 = v20;
  v25 = sub_185AD038C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
  swift_arrayDestroy();
  v26 = sub_185B67E4C();
  v28 = v27;
  v36 = v23;
  *&v35 = 0xD00000000000001FLL;
  *(&v35 + 1) = 0x8000000185B78240;
  sub_185AD093C(&v35, v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33[1] = v25;
  sub_185ACFF1C(v34, v26, v28, isUniquelyReferenced_nonNull_native);

  v30 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v31 = sub_185B67D7C();

  [v30 initWithDomain:v24 code:132010 userInfo:v31];

  swift_willThrow();
  return v15 & 1;
}

void sub_185B4B96C(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = sub_185B542E4(a1, a2);
  if (!v3)
  {
    if (v5)
    {
      v6 = v5;
      v7 = [v5 locked];
      v8 = [v6 hidden];
      v9 = [v6 provisional];

      if (v8)
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10 | v7;
      if (v9)
      {
        v12 = 0x10000;
      }

      else
      {
        v12 = 0;
      }

      v13 = v11 | v12;
    }

    else
    {
      v13 = 2;
    }

    *a3 = v13;
    *(a3 + 2) = BYTE2(v13);
  }
}

uint64_t sub_185B4BA2C(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v5 = a3;
  v22 = 0;
  v16 = a1;
  v17 = a2;
  v18 = a3 & 0x101;
  v8 = (a3 >> 8) & 1;
  v19 = BYTE2(a3) & 1;
  v20 = &v22;
  sub_185ACCE00(sub_185B5458C, v15);
  if (!v3)
  {
    v4 = v22;
    if (v22 == 1)
    {
      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v9 = sub_185B67B8C();
      __swift_project_value_buffer(v9, qword_1EA8D2278);

      v10 = sub_185B67B6C();
      v11 = sub_185B680AC();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v21 = v13;
        *v12 = 136315650;
        *(v12 + 4) = sub_185ACB2C4(a1, a2, &v21);
        *(v12 + 12) = 1024;
        *(v12 + 14) = v5 & 1;
        *(v12 + 18) = 1024;
        *(v12 + 20) = v8;
        _os_log_impl(&dword_185AC1000, v10, v11, "changed app preferences for %s to locked: %{BOOL}d, hidden: %{BOOL}d, notifying subscribers", v12, 0x18u);
        __swift_destroy_boxed_opaque_existential_0Tm(v13);
        MEMORY[0x1865FE2F0](v13, -1, -1);
        MEMORY[0x1865FE2F0](v12, -1, -1);
      }
    }
  }

  return v4 & 1;
}

void sub_185B4BC08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, _BYTE *a6)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v10 = sub_185B542E4(a3, a4);
  if (!v6)
  {
    v11 = v10;
    if (v10)
    {
      v12 = [v10 locked];
      v13 = [v11 hidden];
      v14 = [v11 provisional];
      if (((v12 ^ a5) & 1) == 0 && ((v13 ^ ((a5 & 0x100) >> 8)) & 1) == 0 && ((v14 ^ ((a5 & 0x10000) >> 16)) & 1) == 0)
      {

        if ((*a6 & 1) == 0)
        {
          return;
        }

        goto LABEL_11;
      }

      v15 = HIWORD(a5) & 1;
      v16 = (a5 >> 8) & 1;
    }

    else
    {
      v15 = HIWORD(a5) & 1;
      v16 = (a5 >> 8) & 1;
      type metadata accessor for PreferenceSetting();
      v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      v17 = sub_185B67E1C();
      [v11 setBundleid_];
    }

    [v11 setLocked_];
    [v11 setHidden_];
    [v11 setProvisional_];

    *a6 = 1;
LABEL_11:
    v20[0] = 0;
    if ([a1 save_])
    {
      v18 = v20[0];
    }

    else
    {
      v19 = v20[0];
      sub_185B6792C();

      swift_willThrow();
    }
  }
}

uint64_t sub_185B4BE24(void *a1, uint64_t (*a2)(uint64_t, uint64_t, void), uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1865FD870]();
  sub_185B4BF9C(a2, a3, &v14, &v13, &v12);
  if (v3)
  {
    objc_autoreleasePoolPop(v7);
  }

  objc_autoreleasePoolPop(v7);
  v9 = v13;
  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (sub_185B6844C() > 0)
  {
LABEL_6:
    sub_185B4AD14(a1, v9);
  }

LABEL_7:
  if (v14 == 1)
  {
    v12 = 0;
    if ([a1 save_])
    {
      v10 = v12;
    }

    else
    {
      v11 = v12;
      sub_185B6792C();

      swift_willThrow();
    }
  }
}

uint64_t sub_185B4BF9C(uint64_t (*a1)(uint64_t, uint64_t, void), uint64_t a2, _BYTE *a3, void *a4, uint64_t *a5)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v7 = sub_185B67E1C();
  v8 = [v6 initWithEntityName_];

  v42[0] = 0;
  v9 = [v8 execute_];

  v10 = v42[0];
  if (v9)
  {
    type metadata accessor for PreferenceSetting();
    v11 = sub_185B67F6C();
    v12 = v10;

    if (v11 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_185B6844C())
    {
      v14 = 0;
      v38 = v11 & 0xFFFFFFFFFFFFFF8;
      v39 = v11 & 0xC000000000000001;
      v37 = v11;
      while (1)
      {
        if (v39)
        {
          v17 = MEMORY[0x1865FD3E0](v14, v11);
        }

        else
        {
          if (v14 >= *(v38 + 16))
          {
            goto LABEL_29;
          }

          v17 = *(v11 + 8 * v14 + 32);
        }

        v18 = v17;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v41 = v14 + 1;
        v19 = [v17 locked];
        v20 = [v18 hidden];
        v21 = [v18 provisional];
        v22 = [v18 bundleid];
        if (!v22)
        {
          __break(1u);
        }

        v23 = v22;
        v24 = sub_185B67E4C();
        v26 = v25;

        if (v21)
        {
          v27 = 0x10000;
        }

        else
        {
          v27 = 0;
        }

        if (v20)
        {
          v28 = 256;
        }

        else
        {
          v28 = 0;
        }

        v29 = a1(v24, v26, v28 | v19 | v27);

        if (v29 == 2)
        {
          *a3 = 1;
          v30 = [v18 objectID];
          MEMORY[0x1865FCFA0]();
          if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_185B67F8C();
          }

          sub_185B67FAC();
        }

        else
        {
          v31 = v29 & 0xFFFFFF;
          if ((v19 ^ v29) & 1) != 0 || ((v20 ^ ((v29 & 0x100) >> 8)) & 1) != 0 || ((v21 ^ ((v29 & 0x10000u) >> 16)))
          {
            v15 = HIWORD(v31) & 1;
            v16 = (v31 >> 8) & 1;
            *a3 = 1;
            [v18 setLocked_];
            [v18 setHidden_];
            [v18 setProvisional_];
          }
        }

        ++v14;
        v11 = v37;
        if (v41 == i)
        {
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }
  }

  else
  {
    v32 = v42[0];
    v33 = sub_185B6792C();

    result = swift_willThrow();
    *a5 = v33;
  }

  return result;
}

void sub_185B4C344(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, int a9, int a10)
{
  v64 = a7;
  v65 = a8;
  v63 = a6;
  v69 = a4;
  v70 = a5;
  v68 = a1;
  v78 = *MEMORY[0x1E69E9840];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v66 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v55 - v16;
  v18 = sub_185B67AFC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a2;
  sub_185AD04BC(a2, v17, &unk_1EA8CD9A0, &unk_185B6C2C0);
  v22 = *(v19 + 48);
  if (v22(v17, 1, v18) != 1)
  {
    v23 = a3;
    (*(v19 + 32))(v21, v17, v18);
    sub_185B53510();
    if (v10)
    {
      (*(v19 + 8))(v21, v18);
      return;
    }

    v31 = v30;
    (*(v19 + 8))(v21, v18);
    if (v31)
    {
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  v62 = v22;
  sub_185ACF5CC(v17, &unk_1EA8CD9A0, &unk_185B6C2C0);
  v23 = a3;
  v24 = [a3 bundleIdentifier];
  if (v24)
  {
    v25 = v24;
    v26 = sub_185B67E4C();
    v28 = v27;

    sub_185B53884(v26, v28, v69, v70);
    if (v10)
    {

      return;
    }

    v31 = v29;

    if (v31)
    {
      goto LABEL_24;
    }

    v22 = v62;
LABEL_11:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v61 = v23;
      v62 = v22;
      v32 = 1;
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v49 = sub_185B67B8C();
        __swift_project_value_buffer(v49, qword_1EA8D2278);
        v50 = v23;
        v31 = sub_185B67B6C();
        v51 = sub_185B680AC();

        if (os_log_type_enabled(v31, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v52 = 138412290;
          *(v52 + 4) = v50;
          *v53 = v50;
          v54 = v50;
          _os_log_impl(&dword_185AC1000, v31, v51, "bogus bundle %@ of unknown type", v52, 0xCu);
          sub_185ACF5CC(v53, &unk_1EA8CC820, &unk_185B6B2A0);
          MEMORY[0x1865FE2F0](v53, -1, -1);
          MEMORY[0x1865FE2F0](v52, -1, -1);
        }

        goto LABEL_24;
      }

      v61 = v23;
      v62 = v22;
      v32 = 2;
    }

    v60 = v32;
    v33 = v63;
    v34 = v64;
    v58 = a10;
    v59 = a9;
    v56 = HIDWORD(v64);
    v57 = HIDWORD(v63);
    v35 = v65;
    v55 = HIDWORD(v65);
    type metadata accessor for DataAccess();
    v36 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v31 = [v36 initWithContext_];
    v37 = sub_185B67E1C();
    [v31 setAccessed_bundle_id:v37];

    v38 = [v61 bundleIdentifier];
    [v31 setAccessor_bundle_id:v38];

    v71 = __PAIR64__(v57, v33);
    v72 = v34;
    v73 = v56;
    v74 = v35;
    v75 = v55;
    v76 = v59;
    v77 = v58;
    v39 = APDataFromAuditToken(&v71);
    if (v39)
    {
      v40 = v39;
      v41 = sub_185B67A5C();
      v43 = v42;

      v44 = sub_185B67A4C();
      sub_185AE2FC8(v41, v43);
    }

    else
    {
      v44 = 0;
    }

    [v31 setRaw_audit_token:v44];

    [v31 setRaw_accessor_type:v60];
    v45 = v66;
    sub_185AD04BC(v67, v66, &unk_1EA8CD9A0, &unk_185B6C2C0);
    if (v62(v45, 1, v18) == 1)
    {
      v46 = 0;
    }

    else
    {
      v46 = sub_185B67ABC();
      (*(v19 + 8))(v45, v18);
    }

    [v31 setTransaction_uuid:v46];

    v71 = 0;
    if ([v68 save_])
    {
      v47 = v71;
    }

    else
    {
      v48 = v71;
      sub_185B6792C();

      swift_willThrow();
    }

LABEL_24:

    return;
  }

  __break(1u);
}

void sub_185B4C96C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  sub_185ACCE00(sub_185ACCDE4, v3);
}

void sub_185B4CBBC(void *a1, void (*a2)(void))
{
  v8[1] = *MEMORY[0x1E69E9840];
  a2(0);
  v4 = [swift_getObjCClassFromMetadata() fetchRequest];
  v5 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];

  [v5 setResultType_];
  sub_185B4AA0C(a1, v5);

  if (!v2)
  {
    v8[0] = 0;
    if ([a1 save_])
    {
      v6 = v8[0];
    }

    else
    {
      v7 = v8[0];
      sub_185B6792C();

      swift_willThrow();
    }
  }
}

void sub_185B4CCE4(void *a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = sub_185B67AFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185B53510();
  if (!v2)
  {
    v10 = v9;
    v22[1] = 0;
    if (v9)
    {
      [a1 deleteObject_];
      v23[0] = 0;
      if ([a1 save_])
      {
        v11 = v23[0];
      }

      else
      {
        v21 = v23[0];
        sub_185B6792C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v12 = sub_185B67B8C();
      __swift_project_value_buffer(v12, qword_1EA8D2278);
      (*(v6 + 16))(v8, a2, v5);
      v13 = sub_185B67B6C();
      v14 = sub_185B6808C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v23[0] = v16;
        *v15 = 136315138;
        sub_185ACA328(&qword_1ED6F4640, MEMORY[0x1E69695E0]);
        v17 = sub_185B6856C();
        v19 = v18;
        (*(v6 + 8))(v8, v5);
        v20 = sub_185ACB2C4(v17, v19, v23);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_185AC1000, v13, v14, "No known access record with uuid %s...", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x1865FE2F0](v16, -1, -1);
        MEMORY[0x1865FE2F0](v15, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v8, v5);
      }
    }
  }
}

void sub_185B4D000(void *a1, unint64_t a2)
{
  v43 = a2;
  v44 = a1;
  v50 = *MEMORY[0x1E69E9840];
  v3 = sub_185B6794C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v8 = sub_185B67E1C();
  v9 = [v7 initWithEntityName_];

  v46[0] = 0;
  v10 = [v9 execute_];
  if (v10)
  {
    v11 = v10;
    v37 = v9;
    v38 = v4;
    v39 = v3;
    v35 = v2;
    v12 = v46[0];
    v36 = v11;
    sub_185B6823C();
    sub_185B6793C();
    if (v47)
    {
      v40 = HIDWORD(v43);
      v13 = type metadata accessor for DataAccess();
      v14 = MEMORY[0x1E69E7CA0];
      v15 = 0x1EA8CB000uLL;
      v16 = qword_1EA8D2278;
      *&v17 = 138412290;
      v41 = v17;
      v42 = v13;
      do
      {
        if (swift_dynamicCast())
        {
          v18 = *atoken.val;
          if (*(v15 + 1816) != -1)
          {
            swift_once();
          }

          v19 = sub_185B67B8C();
          __swift_project_value_buffer(v19, v16);
          v20 = v18;
          v21 = sub_185B67B6C();
          v22 = sub_185B680AC();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v24 = v14;
            v25 = v16;
            v26 = v15;
            v27 = swift_slowAlloc();
            *v23 = v41;
            *(v23 + 4) = v20;
            *v27 = v20;
            v28 = v20;
            _os_log_impl(&dword_185AC1000, v21, v22, "evaluating %@ for removal", v23, 0xCu);
            sub_185ACF5CC(v27, &unk_1EA8CC820, &unk_185B6B2A0);
            v29 = v27;
            v15 = v26;
            v16 = v25;
            v14 = v24;
            MEMORY[0x1865FE2F0](v29, -1, -1);
            MEMORY[0x1865FE2F0](v23, -1, -1);
          }

          sub_185B4A34C(&v48);
          if ((v49 & 1) != 0 || (atoken = v48, v30 = audit_token_to_pid(&atoken), atoken = v48, v31 = audit_token_to_pidversion(&atoken), v30 == v43) && v31 == v40)
          {
            [v44 deleteObject_];
          }
        }

        sub_185B6793C();
      }

      while (v47);
    }

    (*(v38 + 8))(v6, v39);

    v46[0] = 0;
    if ([v44 save_])
    {
      v32 = v46[0];
    }

    else
    {
      v34 = v46[0];
      sub_185B6792C();

      swift_willThrow();
    }
  }

  else
  {
    v33 = v46[0];
    sub_185B6792C();

    swift_willThrow();
  }
}

uint64_t sub_185B4D474@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = MEMORY[0x1E69E7CC0];

  sub_185B53C3C(a2, a3, v19);

  v9 = v19[0];
  if (v4)
  {
  }

  if (v19[0] >> 62)
  {
    v17 = sub_185B6844C() > 0;
    v10 = sub_185B6844C();
    if (v10)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = *((v19[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v10 != 0;
    if (v10)
    {
LABEL_4:
      if (v10 < 1)
      {
        __break(1u);
      }

      for (i = 0; i != v10; ++i)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1865FD3E0](i, v9);
        }

        else
        {
          v12 = *(v9 + 8 * i + 32);
        }

        v13 = v12;
        [a1 deleteObject_];
      }
    }
  }

  v18 = 0;
  if ([a1 save_])
  {
    v14 = v18;

    *a4 = v17;
    return result;
  }

  v16 = v18;
  sub_185B6792C();

  swift_willThrow();
}

void sub_185B4D640(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v7 = sub_185B542E4(a2, a3);
  if (!v4)
  {
    v8 = v7;
    if (v7)
    {
      [a1 deleteObject_];
      v11[0] = 0;
      if ([a1 save_])
      {
        v9 = v11[0];

        *a4 = 1;
      }

      else
      {
        v10 = v11[0];
        sub_185B6792C();

        swift_willThrow();
      }
    }

    else
    {
      *a4 = 0;
    }
  }
}

void sub_185B4D73C(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v7 = sub_185B542E4(a2, a3);
  if (!v4)
  {
    if (v7)
    {
      v8 = v7;
      if ([v7 provisional])
      {
        [v8 setProvisional_];
        v11[0] = 0;
        if ([a1 save_])
        {
          v9 = v11[0];

          *a4 = 1;
        }

        else
        {
          v10 = v11[0];
          sub_185B6792C();

          swift_willThrow();
        }

        return;
      }
    }

    *a4 = 0;
  }
}

unint64_t sub_185B4D884()
{
  result = qword_1EA8CD618;
  if (!qword_1EA8CD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD618);
  }

  return result;
}

uint64_t sub_185B4D8D8(uint64_t a1, uint64_t a2)
{
  v9[2] = *v2;
  v9[3] = a1;
  v9[4] = a2;
  sub_185B4B0C4(sub_185B41AC8, v9);
  v4 = v3 != 2;
  v5 = v3 & 1;
  if (v3 == 2)
  {
    v5 = 0;
  }

  if ((*&v4 & ((v3 & 0x10000u) >> 16)) != 0)
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  if ((*&v4 & ((v3 & 0x100) >> 8)) != 0)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  return v7 | v5 | v6;
}

void sub_185B4D99C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[2] = a1;
  sub_185ACCE00(sub_185B42920, v3);
}

void sub_185B4D9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v12[2] = a12;
  v12[3] = a7;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a8;
  v12[7] = a9;
  v12[8] = a10;
  v12[9] = a11;
  sub_185ACCE00(sub_185B54064, v12);
}

uint64_t sub_185B4DB24(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[2] = a1;
  return sub_185B4B524(sub_185ADF708, v3) & 1;
}

char *sub_185B4DB70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD630, &qword_185B6EE48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t sub_185B4DC64(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_185B6865C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
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
    sub_185B4E1C8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_185B4DD44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD380, &qword_185B6E0F0);
  result = sub_185B6833C();
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
      sub_185B6866C();
      sub_185B67EEC();
      result = sub_185B686AC();
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

uint64_t sub_185B4DFA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6F0, &qword_185B6EF28);
  result = sub_185B6833C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      result = sub_185B6865C();
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_185B4E1C8(uint64_t result, unint64_t a2, char a3)
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
    sub_185B4DFA4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_185B4E444();
      a2 = v7;
      goto LABEL_12;
    }

    sub_185B4E7BC(v5 + 1);
  }

  v8 = *v3;
  result = sub_185B6865C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v11 + 48) + 8 * a2) = v4;
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
  result = sub_185B685CC();
  __break(1u);
  return result;
}

void sub_185B4E2E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD380, &qword_185B6E0F0);
  v2 = *v0;
  v3 = sub_185B6832C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_185B4E444()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6F0, &qword_185B6EF28);
  v2 = *v0;
  v3 = sub_185B6832C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_185B4E584(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD380, &qword_185B6E0F0);
  result = sub_185B6833C();
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
      sub_185B6866C();

      sub_185B67EEC();
      result = sub_185B686AC();
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

uint64_t sub_185B4E7BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6F0, &qword_185B6EF28);
  result = sub_185B6833C();
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
      result = sub_185B6865C();
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

        goto LABEL_26;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

char *sub_185B4E9AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_185B4EA4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_185B4E9CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_185B4EB58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_185B4E9EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_185B4ECA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_185B4EA0C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_185B4EDD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_185B4EA2C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_185B4EEDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_185B4EA4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD10, &unk_185B6BF10);
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

void *sub_185B4EB58(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD700, &qword_185B6EF38);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD708, &unk_185B6EF40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_185B4ECA0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD528, &qword_185B6E8A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_185B4EDD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6D0, &qword_185B6EF08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_185B4EEDC(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD710, &qword_185B6EFD8);
  v10 = *(type metadata accessor for APStateDumpEncodingWrapper.APStateDumpEncodingWrapperDataAccessRecordEncodingWrapper(0) - 8);
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
  v15 = *(type metadata accessor for APStateDumpEncodingWrapper.APStateDumpEncodingWrapperDataAccessRecordEncodingWrapper(0) - 8);
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

uint64_t sub_185B4F0B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD620, &unk_185B6EE30);
  v33 = v4;
  result = sub_185B6846C();
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
        sub_185AD093C(v24, v34);
      }

      else
      {
        sub_185ACB7C8(v24, v34);
      }

      sub_185B6866C();
      sub_185B67EEC();
      result = sub_185B686AC();
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
      result = sub_185AD093C(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_185B4F3A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_185B6846C();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_185B6866C();
      sub_185B67EEC();
      result = sub_185B686AC();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_185B4F648(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6C0, &qword_185B6EEF8);
  result = sub_185B6846C();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      *&v7 = *(*(v5 + 48) + 8 * v20);
      v30 = v7;
      v21 = *(*(v5 + 56) + 8 * v20);
      if ((v4 & 1) == 0)
      {
      }

      sub_185B6866C();
      sub_185B6869C();
      sub_185B6869C();
      result = sub_185B686AC();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(&v7 + 1) = *(&v30 + 1);
      *(*(v8 + 48) + 8 * v16) = v30;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_185B4F8E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD690, &unk_185B6EEB0);
  v34 = v4;
  result = sub_185B6846C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_185B6866C();
      sub_185B67EEC();
      result = sub_185B686AC();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_185B4FB88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for AuthAssertion(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_185B67AFC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD488, &qword_185B6E818);
  v43 = v4;
  result = sub_185B6846C();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_185B544C4(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_185B54460(v29 + v28 * v24, v47);
      }

      sub_185ACA328(&qword_1EA8CD490, MEMORY[0x1E69695B8]);
      result = sub_185B67DAC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_185B544C4(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_185B4FFD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_185B67AFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6B8, &qword_185B6EEF0);
  v38 = v4;
  result = sub_185B6846C();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v38)
      {
        (*v39)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v35)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      sub_185ACA328(&qword_1EA8CD490, MEMORY[0x1E69695B8]);
      result = sub_185B67DAC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v39)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_185B5039C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6A8, &qword_185B6EED8);
  result = sub_185B6846C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_185B6865C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_185B5060C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD460, &unk_185B6E7F0);
  v36 = v4;
  result = sub_185B6846C();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 3 * v21);
      v26 = *v25;
      v37 = v25[2];
      v38 = v25[1];
      if ((v36 & 1) == 0)
      {
      }

      sub_185B6866C();
      sub_185B67EEC();
      result = sub_185B686AC();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 3 * v15);
      *v17 = v26;
      v17[1] = v38;
      v17[2] = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_185B508D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_185B6846C();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_185B6866C();
      sub_185B67EEC();
      result = sub_185B686AC();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

unint64_t sub_185B50B70(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_185B50BB8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_185B67AFC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for AuthAssertion(0);
  result = sub_185B544C4(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_185B50C94(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_185B67AFC();
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

unint64_t sub_185B50D54(unint64_t result, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 3 * result);
  *v6 = a4 & 1;
  v6[1] = BYTE1(a4) & 1;
  v6[2] = BYTE2(a4) & 1;
  v7 = a5[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v9;
  }

  return result;
}

void sub_185B50DB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD620, &unk_185B6EE30);
  v2 = *v0;
  v3 = sub_185B6845C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_185ACB7C8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_185AD093C(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

void sub_185B50F98(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_185B6845C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}