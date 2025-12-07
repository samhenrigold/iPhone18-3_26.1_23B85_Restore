double sub_1C97E33D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t *__return_ptr, void *)@<X4>, uint64_t a6@<X8>)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;

  a5(&v12, v11);

  *a6 = v12;
  v9 = v14;
  *(a6 + 8) = v13;
  *(a6 + 24) = v9;
  result = *&v15;
  *(a6 + 40) = v15;
  *(a6 + 56) = a4;
  return result;
}

uint64_t sub_1C97E3464(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  result = sub_1C9A6941C(v11);
  v13 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(v13))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = result;
  v15 = sub_1C9A68674((a4 >> 1) - a3, v11);
  result = v14 * v15;
  if ((v15 * v14) >> 64 != result >> 63)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v16 = sub_1C97DD79C(result, 0.0);
  sub_1C97E36AC(a2 + 4 * a3, (a4 >> 1) - a3, &v16, a1, a2, a3, a4, a5);
  if (!v5)
  {
    a4 = sub_1C97DDA50(v16, v14);
  }

  return a4;
}

unsigned int *sub_1C97E3590(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = sub_1C9A6941C(v5);
  v10 = *(a1 + 16);
  if (HIDWORD(v10))
  {
    __break(1u);
  }

  else
  {
    v3 = v6;
    v11 = sub_1C9A68674(*(a1 + 16), v5);
    v12 = v3 * v11;
    if ((v11 * v3) >> 64 == v12 >> 63)
    {
      v2 = sub_1C97DD79C(v12, 0.0);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  sub_1C97E72E0(v2, v7, v8, v9);
  v2 = v15;
LABEL_4:
  if (sub_1C9A68A10(v2 + 32, a1 + 32, v10, v5))
  {
    v5 = sub_1C97DDA50(v2, v3);
  }

  else
  {
    sub_1C97E791C();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }

  return v5;
}

void sub_1C97E36AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v13 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v13;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  sub_1C97E72E0(v13, v15, v16, v17);
  v13 = v20;
  *a3 = v20;
  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_3:
  v18 = (a7 >> 1) - a6;
  if (__OFSUB__(a7 >> 1, a6))
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!HIDWORD(v18))
  {
    if (sub_1C9A68A10(v13 + 32, a1, v18, *(a8 + 16)))
    {
LABEL_11:
      *a3 = v13;
      return;
    }

    v19 = 1;
LABEL_10:
    sub_1C97E791C();
    swift_allocError();
    *v21 = v19;
    swift_willThrow();
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1C97E37D4(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, const void *a4)
{
  swift_beginAccess();
  v11[0] = sub_1C97DDF9C(a4);
  swift_endAccess();
  a1(&v12, v11);

  if (!v4)
  {
    a2 = v12;
    swift_beginAccess();
    sub_1C97E2DB0(a4, &v10);

    sub_1C97DEA80(v8, a4);
    swift_endAccess();
  }

  return a2;
}

uint64_t sub_1C97E38C8(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, const void *a4)
{
  swift_beginAccess();
  v11[0] = sub_1C97DE094(a4);
  swift_endAccess();
  a1(&v12, v11);

  if (!v4)
  {
    a2 = v12;
    swift_beginAccess();
    sub_1C97E82EC(a4, &v10, &qword_1EC3C7360, &unk_1C9AA7DA0);

    sub_1C97DEBF4(v8, a4);
    swift_endAccess();
  }

  return a2;
}

uint64_t sub_1C97E39CC(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, __int16 a4)
{
  swift_beginAccess();
  v10 = sub_1C97DE19C(a4);
  swift_endAccess();
  a1(&v11, &v10);

  if (!v4)
  {
    a2 = v11;
    swift_beginAccess();

    sub_1C97DED98(v8, a4);
    swift_endAccess();
  }

  return a2;
}

uint64_t sub_1C97E3AB4(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, const void *a4)
{
  swift_beginAccess();
  v11[0] = sub_1C97DE274(a4);
  swift_endAccess();
  a1(&v12, v11);

  if (!v4)
  {
    a2 = v12;
    swift_beginAccess();
    sub_1C97E82EC(a4, v10, &qword_1EC3C7690, &qword_1C9A9FD00);

    sub_1C97DEED4(v8, a4);
    swift_endAccess();
  }

  return a2;
}

uint64_t sub_1C97E3BB8(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  swift_beginAccess();
  v19[0] = sub_1C97DE37C(a4, a5, a6, a7, a8);
  swift_endAccess();
  a1(&v20, v19);

  if (!v17)
  {
    a2 = v20;
    swift_beginAccess();
    sub_1C97E82EC(a4, v18, a7, a8);

    sub_1C97DF078(v15, a4, a5, a6, a7, a8);
    swift_endAccess();
  }

  return a2;
}

uint64_t sub_1C97E3CF4(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v10 = sub_1C97DE480(a4);
  swift_endAccess();
  a1(&v11, &v10);

  if (!v4)
  {
    a2 = v11;
    swift_beginAccess();

    sub_1C97DF1E8(v8, a4);
    swift_endAccess();
  }

  return a2;
}

uint64_t sub_1C97E3DDC(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v10 = sub_1C97DE570(a4);
  swift_endAccess();
  a1(&v11, &v10);

  if (!v4)
  {
    a2 = v11;
    swift_beginAccess();

    sub_1C97DF33C(v8, a4);
    swift_endAccess();
  }

  return a2;
}

uint64_t sub_1C97E3ECC(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  swift_beginAccess();
  v12 = sub_1C97DE650(a4, a5);
  swift_endAccess();
  a1(&v13, &v12);

  if (!v5)
  {
    a2 = v13;
    swift_beginAccess();

    sub_1C97DF490(v10, a4, a5);
    swift_endAccess();
  }

  return a2;
}

uint64_t sub_1C97E3FC0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, const void *a4)
{
  swift_beginAccess();
  v11[0] = sub_1C97DE6FC(a4);
  swift_endAccess();
  a1(&v12, v11);

  if (!v4)
  {
    a2 = v12;
    swift_beginAccess();
    sub_1C97A6264(a4, &v10);

    sub_1C97DF58C(v8, a4);
    swift_endAccess();
  }

  return a2;
}

uint64_t sub_1C97E40B4(void (*a1)(uint64_t *__return_ptr, objc_super *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  swift_beginAccess();
  v14 = sub_1C97E89F0();
  v22.receiver = sub_1C97DE9A4(v14, v15, a6, a7);
  swift_endAccess();
  a1(v26, &v22);

  if (!v7)
  {
    a2 = v26[0];
    swift_beginAccess();

    sub_1C97DF978(v16, a4, a5, a6, a7, v17, v18, v19, v21, a7, v22, v23, v24, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6]);
    swift_endAccess();
  }

  return a2;
}

uint64_t sub_1C97E41C8(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v10 = sub_1C97DE7F4(a4);
  swift_endAccess();
  a1(&v11, &v10);

  if (!v4)
  {
    a2 = v11;
    swift_beginAccess();

    sub_1C97DF700(v8, a4);
    swift_endAccess();
  }

  return a2;
}

uint64_t sub_1C97E42B0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  v10 = sub_1C97DE8CC(a4);
  swift_endAccess();
  a1(&v11, &v10);

  if (!v4)
  {
    a2 = v11;
    swift_beginAccess();

    sub_1C97DF83C(v8, a4);
    swift_endAccess();
  }

  return a2;
}

uint64_t sub_1C97E4398(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *), int a3, void *__src)
{
  memcpy(v8, __src, 0x41uLL);
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    a2(&v9, v8);
    if (v4)
    {
      return v4;
    }

    v4 = v9;
  }

  return v4;
}

uint64_t sub_1C97E4424(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *), int a3, void *__src)
{
  memcpy(v8, __src, sizeof(v8));
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    a2(&v9, v8);
    if (v4)
    {
      return v4;
    }

    v4 = v9;
  }

  return v4;
}

uint64_t sub_1C97E44B0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int16 *), uint64_t a3, __int16 a4)
{
  v7 = a4;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a3;
    a2(&v8, &v7);
    if (v4)
    {
      return v5;
    }

    v5 = v8;
  }

  return v5;
}

uint64_t sub_1C97E4514(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *), int a3, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    a2(&v9, __dst);
    if (v4)
    {
      return v4;
    }

    v4 = v9;
  }

  return v4;
}

uint64_t sub_1C97E45A0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *), int a3, void *__src)
{
  memcpy(v8, __src, sizeof(v8));
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    a2(&v9, v8);
    if (v4)
    {
      return v4;
    }

    v4 = v9;
  }

  return v4;
}

uint64_t sub_1C97E462C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _OWORD *), uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v8[0] = *a4;
  v8[1] = v5;
  v8[2] = *(a4 + 32);
  v9 = *(a4 + 48);
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a3;
    a2(&v10, v8);
    if (v4)
    {
      return v6;
    }

    v6 = v10;
  }

  return v6;
}

uint64_t sub_1C97E46A4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, uint64_t a4)
{
  v7 = a4;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a3;
    a2(&v8, &v7);
    if (v4)
    {
      return v5;
    }

    v5 = v8;
  }

  return v5;
}

uint64_t sub_1C97E4708(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a3;
    a2(&v6);
    if (v3)
    {
      return v4;
    }

    v4 = v6;
  }

  return v4;
}

uint64_t sub_1C97E4764(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, char a4)
{
  v7 = a4;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a3;
    a2(&v8, &v7);
    if (v4)
    {
      return v5;
    }

    v5 = v8;
  }

  return v5;
}

uint64_t sub_1C97E47C8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a4;
  v8[1] = a5;
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a3;
    a2(&v9, v8);
    if (v5)
    {
      return v6;
    }

    v6 = v9;
  }

  return v6;
}

uint64_t sub_1C97E482C(uint64_t a1, uint64_t a2, void *a3)
{
  v53[2] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v48 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v46 = 0;
  v47 = v8;
  v49 = v9;
  v50 = v10;
  v51 = v11;
  v52 = v12;
  v13 = v12 - v11;
  if (v12 < v11)
  {
    goto LABEL_36;
  }

  if (__OFSUB__(v12, v11))
  {
    goto LABEL_37;
  }

  v4 = v3;
  v6 = a3;
  v42 = *(a1 + 56);
  sub_1C97E82EC(a1, v45, &qword_1EC3C7470, &qword_1C9A9FC48);
  v41 = v13;
  sub_1C9A6C564(v6);
  v13 = *(a2 + 8);
  v17 = v46;
  v5 = v13 * v46;
  v18 = (v13 * v46) >> 64;
  v19 = v18 != (v13 * v46) >> 63;
  if (v18 != (v13 * v46) >> 63)
  {
    goto LABEL_38;
  }

  if (v5 < 0)
  {
    goto LABEL_39;
  }

  if (!v5)
  {
    v22 = 0;
    v20 = MEMORY[0x1E69E7CC0];
    v21 = v46;
    if (!v19)
    {
      goto LABEL_7;
    }

LABEL_30:
    __break(1u);
LABEL_31:

    goto LABEL_32;
  }

  v20 = sub_1C9A92838();
  *(v20 + 16) = v5;
  v21 = v46;
  v22 = v13 * v46;
  if ((v13 * v46) >> 64 != (v13 * v46) >> 63)
  {
    goto LABEL_30;
  }

LABEL_7:
  if (v5 < v22)
  {
    goto LABEL_40;
  }

  *(v20 + 16) = v22;
  v45[0] = v20;
  v45[1] = v13;
  v45[2] = v17;
  v44 = 0;
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  if (HIDWORD(v21))
  {
    goto LABEL_42;
  }

  v43 = v21;
  v5 = v10 - v9;
  if (__OFSUB__(v10, v9))
  {
    goto LABEL_43;
  }

  v13 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    goto LABEL_44;
  }

  if (v13 > 0x7FFFFFFFFFFFFFFLL)
  {
    goto LABEL_45;
  }

  v23 = 16 * (v13 & ~(v13 >> 63));
  v7 = v23 + 24;
  if (__OFADD__(v23, 24))
  {
    goto LABEL_46;
  }

  if (v7 < 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  isStackAllocationSafe = v6;
  v6 = isStackAllocationSafe;
  if (v7 >= 1025)
  {
    goto LABEL_47;
  }

  do
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v5 < 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v5))
    {
      *v9 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v8;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      goto LABEL_52;
    }

    __break(1u);
LABEL_52:
    sub_1C97E72E0(v8, v25, v26, v27);
    v8 = v40;
    v47 = v40;
LABEL_19:
    v29 = v8[2];
    v53[0] = v8 + 4;
    v53[1] = v29;
    v30 = v4;
    v20 = sub_1C97E4D08(v5, &v47, v53);
    v4 = v20;
    v10 = v30;
    if (!v5)
    {
LABEL_26:
      v5 = v6;
      sub_1C989C804(v45, v5, &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v42, &v46, &v43, &v44, &v54);

      v47 = v8;
      if (!v30)
      {
        goto LABEL_31;
      }

      swift_willThrow();

      goto LABEL_28;
    }

    if (v13 >= *(v20 + 16))
    {
      __break(1u);
      goto LABEL_54;
    }

    v31 = v9 + 4;
    v32 = (v20 + 40);
    v33 = (v20 + 40);
    while (1)
    {
      v35 = *v33;
      v33 += 2;
      v34 = v35;
      if ((v35 - 0x2000000000000000) >> 62 != 3)
      {
        break;
      }

      v36 = 4 * v34;
      if ((v36 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      if (HIDWORD(v36))
      {
        goto LABEL_35;
      }

      v37 = *(v32 - 1);
      *(v31 - 2) = 1;
      *(v31 - 1) = v36;
      *v31 = v37;
      v31 += 2;
      v32 = v33;
      if (!--v5)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
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
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v39 = swift_slowAlloc();
  v8 = v6;
  sub_1C989C4C4(v9, v10, &v47, 4, v45, v8, v41, v41, v42, &v46, &v43, &v44);
  v20 = v39;
  v15 = -1;
  v16 = -1;
  if (v4)
  {
    MEMORY[0x1CCA93280](v39, -1, -1);

LABEL_28:
  }

LABEL_55:
  MEMORY[0x1CCA93280](v20, v15, v16);

LABEL_32:

  return v45[0];
}

void *sub_1C97E4C74(void *result, void *a2, void *a3, void *a4)
{
  v4 = a3[3];
  v5 = a3[4];
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  v8 = v6;
  if (v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v7 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v7)
  {
    v9 = 0;
    v10 = a3[5];
    v11 = (*result + 8);
    do
    {
      v12 = a3[2];
      v13 = v9 * v12;
      if ((v9 * v12) >> 64 != (v9 * v12) >> 63)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v6 = __OFADD__(v13, v10);
      v14 = v13 + v10;
      if (v6)
      {
        goto LABEL_19;
      }

      ++v9;
      v15 = *a4 + 4 * v14;
      if (!*a4)
      {
        v15 = 0;
      }

      *(v11 - 1) = v15;
      *v11 = v12;
      v11 += 2;
    }

    while (v7 != v9);
    v16 = a3[3];
    v17 = a3[4];
    v6 = __OFSUB__(v17, v16);
    v7 = v17 - v16;
    v8 = v6;
  }

  if ((v8 & 1) == 0)
  {
    *a2 = v7;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

int64_t sub_1C97E4D08(int64_t result, void *a2, void *a3)
{
  if (result < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  if (result)
  {
    sub_1C97A2CEC(&qword_1EC3C7478, qword_1C9AAD750);
    v7 = sub_1C9A92838();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = 0;
  v8[0] = v7 + 32;
  v8[1] = v6;
  result = sub_1C97E4C74(v8, &v9, a2, a3);
  if (v3)
  {
    if (v9 <= v6)
    {
      *(v7 + 16) = v9;

      return v7;
    }

    goto LABEL_12;
  }

  if (v9 <= v6)
  {
    *(v7 + 16) = v9;
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1C97E4DEC()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v3)
  {
    v7 = sub_1C97A2CEC(&qword_1EC3C7A48, qword_1C9A9FEB8);
    v8 = sub_1C97E8820(v7);
    sub_1C97E8564(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1C97E8988();
  if (v1)
  {
    if (v3 != v0 || &v10[40 * v2] <= v9)
    {
      memmove(v9, v10, 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1C97E4EE4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C97A2CEC(&unk_1EC3C73F0, &qword_1C9A9FC28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C97E5014()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E86F4();
  if (v2)
  {
    sub_1C97A2CEC(&qword_1EC3C6938, &qword_1C9A9D3F0);
    v7 = sub_1C97BE490();
    v8 = j__malloc_size(v7);
    v7[2] = v3;
    v7[3] = 2 * ((v8 - 32) / 4);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1C97E88C0();
  if (v1)
  {
    if (v7 != v0 || &v10[4 * v3] <= v9)
    {
      memmove(v9, v10, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 4 * v3);
  }
}

void sub_1C97E5120()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v3)
  {
    sub_1C97A2CEC(&qword_1EC3C6A08, &qword_1C9A9D4C0);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1C97E8988();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_1C97E51F0()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E86F4();
  if (v2)
  {
    sub_1C97BE398(v7, v8, v9, v10, v11, v12);
    v13 = sub_1C97BE490();
    j__malloc_size(v13);
    sub_1C97E86AC();
    v13[2] = v3;
    v13[3] = v14;
  }

  v15 = sub_1C97E88C0();
  if (v1)
  {
    sub_1C97E8ABC();
    if (v20)
    {
      v21 = v19 > v17;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      memmove(v17, v18, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v3);
  }
}

void sub_1C97E52A4()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E86F4();
  if (v2)
  {
    v7 = sub_1C97A2CEC(&qword_1EC3C69C0, &qword_1C9A9D478);
    v8 = sub_1C97E89FC(v7);
    sub_1C97E85F8(v8);
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1C97E88C0();
  if (v1)
  {
    if (v8 != v0 || &v11[48 * v3] <= v10)
    {
      memmove(v10, v11, 48 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, 48 * v3);
  }
}

void sub_1C97E537C()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E86F4();
  if (v2)
  {
    v7 = sub_1C97A2CEC(&qword_1EC3C76D0, &qword_1C9A9D490);
    v8 = sub_1C97E89FC(v7);
    sub_1C97E85F8(v8);
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1C97E88C0();
  v12 = 28 * v3;
  if (v1)
  {
    if (v8 != v0 || &v11[v12] <= v10)
    {
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, v12);
  }
}

void sub_1C97E5448()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E86F4();
  if (v2)
  {
    v7 = sub_1C97A2CEC(&unk_1EC3C69D0, &qword_1C9A9D488);
    v8 = sub_1C97E89FC(v7);
    sub_1C97E85F8(v8);
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1C97E88C0();
  if (v1)
  {
    if (v8 != v0 || &v11[24 * v3] <= v10)
    {
      memmove(v10, v11, 24 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, 24 * v3);
  }
}

void sub_1C97E5520()
{
  sub_1C97E8794();
  if (v6)
  {
    sub_1C97BDFD4();
    if (v7 != v8)
    {
      sub_1C97BE12C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v3)
  {
    v9 = sub_1C97A2CEC(&unk_1EC3C7990, &qword_1C9A9FE58);
    v4 = 48;
    v10 = sub_1C97E8820(v9);
    sub_1C97E8564(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1C97E8848();
  if (v1)
  {
    if (v3 != v0 || v5 + 48 * v2 <= v4)
    {
      v12 = sub_1C97E87BC();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3CBA60, &qword_1C9AB0440);
    sub_1C97E8668();
    swift_arrayInitWithCopy();
  }
}

void sub_1C97E5650()
{
  sub_1C97E8900();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8A40();
  if (v3)
  {
    sub_1C97BE398(v7, v8, v9, v10, v11, v12);
    v13 = sub_1C97BE490();
    v14 = j__malloc_size(v13);
    v13[2] = v2;
    v13[3] = 2 * ((v14 - 32) / 32);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v13 != v0 || &v0[4 * v2 + 4] <= v13 + 4)
    {
      memmove(v13 + 4, v0 + 4, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    v16 = sub_1C97BE264();
    v18 = sub_1C97A2CEC(v16, v17);
    sub_1C97E89D0(v18);
  }
}

void sub_1C97E5748()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E86F4();
  if (v2)
  {
    sub_1C97BE398(v7, v8, v9, v10, v11, v12);
    v13 = sub_1C97BE490();
    j__malloc_size(v13);
    sub_1C97E8654();
    v13[2] = v3;
    v13[3] = v14;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1C97E88C0();
  if (v1)
  {
    if (v13 != v0 || &v16[16 * v3] <= v15)
    {
      memmove(v15, v16, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v3);
  }
}

void sub_1C97E5800()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v2)
  {
    v7 = sub_1C97A2CEC(&qword_1EC3C6990, &qword_1C9A9D448);
    v8 = sub_1C97E8800(v7);
    sub_1C97E8564(v8);
  }

  sub_1C97E8848();
  if (v1)
  {
    sub_1C97E8890();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = sub_1C97E87BC();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C6998, &qword_1C9A9D450);
    sub_1C97E8668();
    swift_arrayInitWithCopy();
  }
}

void sub_1C97E58DC()
{
  sub_1C97E8794();
  if (v6)
  {
    sub_1C97BDFD4();
    if (v7 != v8)
    {
      sub_1C97BE12C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v3)
  {
    v9 = sub_1C97A2CEC(&qword_1EC3C7688, &qword_1C9A9FCF8);
    v4 = 56;
    v10 = sub_1C97E8820(v9);
    sub_1C97E8564(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1C97E8848();
  if (v1)
  {
    if (v3 != v0 || v5 + 56 * v2 <= v4)
    {
      v12 = sub_1C97E87BC();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C7680, &qword_1C9AB3590);
    sub_1C97E8668();
    swift_arrayInitWithCopy();
  }
}

void sub_1C97E59C0()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E86F4();
  if (v2)
  {
    v7 = sub_1C97A2CEC(&unk_1EC3CC620, &unk_1C9AB35D0);
    v8 = sub_1C97E89FC(v7);
    sub_1C97E85F8(v8);
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[9 * v3 + 4] <= v8 + 4)
    {
      v11 = sub_1C97E87BC();
      memmove(v11, v12, v13);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1C97A2CEC(&unk_1EC3C7730, &qword_1C9A9FD40);
    sub_1C97E8668();
    swift_arrayInitWithCopy();
  }
}

void sub_1C97E5AB0()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E86F4();
  if (v2)
  {
    sub_1C97A2CEC(&qword_1EC3C79A0, &qword_1C9A9FE60);
    v7 = sub_1C97BE490();
    j__malloc_size(v7);
    sub_1C97E86AC();
    v7[2] = v3;
    v7[3] = v8;
  }

  v9 = sub_1C97E88C0();
  if (v1)
  {
    sub_1C97E8ABC();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_1C97E5B74()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v3)
  {
    sub_1C97A2CEC(&qword_1EC3C7808, &qword_1C9ACE010);
    v7 = sub_1C97BE490();
    j__malloc_size(v7);
    sub_1C97E8654();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1C97E8988();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1C97E5C7C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = a1;
  if (a3)
  {
    sub_1C97BDFD4();
    if (v10 != v11)
    {
      sub_1C97BE12C();
      if (v10)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = *(a4 + 2);
  if (v9 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    sub_1C97BE398(a1, a2, a3, a4, a5, a6);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v14 != a4 || &v17[24 * v12] <= v16)
    {
      memmove(v16, v17, 24 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1C97E5D70(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C97A2CEC(&qword_1EC3C7760, &qword_1C9A9FD50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 32 * v8);
  }

  return v10;
}

void sub_1C97E5E70()
{
  sub_1C97E8794();
  if (v6)
  {
    sub_1C97BDFD4();
    if (v7 != v8)
    {
      sub_1C97BE12C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v3)
  {
    sub_1C97A2CEC(&unk_1EC3C6A50, &qword_1C9A9D508);
    v9 = sub_1C97BE490();
    j__malloc_size(v9);
    sub_1C97E8654();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  sub_1C97E8848();
  if (v1)
  {
    if (v9 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = sub_1C97E87BC();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1C97A2CEC(&unk_1EC3CBA10, &qword_1C9A9D510);
    sub_1C97E8668();
    swift_arrayInitWithCopy();
  }
}

void sub_1C97E5F5C()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v3)
  {
    sub_1C97A2CEC(&qword_1EC3C6A88, &qword_1C9A9D540);
    v7 = sub_1C97BE490();
    sub_1C97E8690(v7);
    sub_1C97E86D4(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1C97E8988();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1C97E6028()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v2)
  {
    v7 = sub_1C97A2CEC(&unk_1EC3C7850, &qword_1C9AC0640);
    v8 = sub_1C97E8800(v7);
    sub_1C97E8564(v8);
  }

  sub_1C97E8848();
  if (v1)
  {
    sub_1C97E8890();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = sub_1C97E87BC();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1C97A2CEC(&unk_1EC3CBA30, &unk_1C9AB0420);
    sub_1C97E8668();
    swift_arrayInitWithCopy();
  }
}

void sub_1C97E6104()
{
  sub_1C97E8794();
  if ((v4 & 1) == 0 || (sub_1C97BDFD4(), v5 == v6))
  {
LABEL_6:
    sub_1C97E8618();
    if (v3)
    {
      v7 = sub_1C97A2CEC(&unk_1EC3C7570, &qword_1C9A9D380);
      v8 = sub_1C97E8800(v7);
      sub_1C97E8564(v8);
      if (v1)
      {
LABEL_8:
        sub_1C97E7044(v0 + 32, v2, v3 + 32);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    sub_1C97E8988();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_1C97BE12C();
  if (!v5)
  {
    sub_1C97BDFC4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C97E620C()
{
  sub_1C97E8900();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8A40();
  if (v3)
  {
    sub_1C97BE398(v7, v8, v9, v10, v11, v12);
    v13 = sub_1C97BE490();
    j__malloc_size(v13);
    sub_1C97E8654();
    v13[2] = v2;
    v13[3] = v14;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v13 != v0 || &v0[2 * v2 + 4] <= v13 + 4)
    {
      memmove(v13 + 4, v0 + 4, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    v16 = sub_1C97BE264();
    v18 = sub_1C97A2CEC(v16, v17);
    sub_1C97E89D0(v18);
  }
}

void sub_1C97E62E4()
{
  sub_1C97E8794();
  if (v6)
  {
    sub_1C97BDFD4();
    if (v7 != v8)
    {
      sub_1C97BE12C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v3)
  {
    sub_1C97A2CEC(&qword_1EC3C78F8, &qword_1C9AA0710);
    v9 = sub_1C97BE490();
    sub_1C97E8690(v9);
    sub_1C97E86D4(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1C97E8848();
  if (v1)
  {
    if (v3 != v0 || v5 + 8 * v2 <= v4)
    {
      v12 = sub_1C97E87BC();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    type metadata accessor for SNDetectorIdentifier(0);
    sub_1C97E8668();
    swift_arrayInitWithCopy();
  }
}

void sub_1C97E63C0()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E86F4();
  if (v2)
  {
    sub_1C97A2CEC(&qword_1EC3C7890, &qword_1C9A9D610);
    v7 = sub_1C97BE490();
    j__malloc_size(v7);
    sub_1C97E86AC();
    v7[2] = v3;
    v7[3] = v8;
  }

  v9 = sub_1C97E88C0();
  if (v1)
  {
    sub_1C97E8ABC();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_1C97E64A8()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v3)
  {
    sub_1C97A2CEC(&unk_1EC3C6C40, &qword_1C9A9D608);
    v7 = sub_1C97BE490();
    sub_1C97E8690(v7);
    sub_1C97E86D4(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1C97E8988();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1C97E6574()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v3)
  {
    sub_1C97A2CEC(&qword_1EC3C6CA0, &qword_1C9A9D660);
    v7 = sub_1C97BE490();
    j__malloc_size(v7);
    sub_1C97E8654();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1C97E8988();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1C97E6644()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v2)
  {
    v7 = sub_1C97A2CEC(&unk_1EC3C69B0, &unk_1C9AAFB70);
    v8 = sub_1C97E8800(v7);
    sub_1C97E8564(v8);
  }

  sub_1C97E8848();
  if (v1)
  {
    sub_1C97E8890();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = sub_1C97E87BC();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1C97A2CEC(&unk_1EC3C76C0, &qword_1C9A9D470);
    sub_1C97E8668();
    swift_arrayInitWithCopy();
  }
}

void sub_1C97E6720()
{
  sub_1C97E8794();
  if (v3)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_1C9A32E08(v7, v4);
  v9 = *(sub_1C97A2CEC(&unk_1EC3C76B0, &unk_1C9AAFB60) - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_1C97E70D8(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1C97E8B2C();
  }
}

void sub_1C97E67F0()
{
  sub_1C97E8794();
  if (v6)
  {
    sub_1C97BDFD4();
    if (v7 != v8)
    {
      sub_1C97BE12C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v3)
  {
    sub_1C97A2CEC(&unk_1EC3C79F0, &qword_1C9A9FE80);
    v9 = sub_1C97BE490();
    sub_1C97E8690(v9);
    sub_1C97E86D4(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1C97E8848();
  if (v1)
  {
    if (v3 != v0 || v5 + 8 * v2 <= v4)
    {
      v12 = sub_1C97E87BC();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    sub_1C97E8668();
    swift_arrayInitWithCopy();
  }
}

void sub_1C97E68FC()
{
  sub_1C97E8794();
  if (v6)
  {
    sub_1C97BDFD4();
    if (v7 != v8)
    {
      sub_1C97BE12C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v3)
  {
    v9 = sub_1C97A2CEC(&unk_1EC3C7590, &qword_1C9AB3BB0);
    v4 = 160;
    v10 = sub_1C97E8820(v9);
    sub_1C97E8564(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1C97E8848();
  if (v1)
  {
    if (v3 != v0 || v5 + 160 * v2 <= v4)
    {
      v12 = sub_1C97E87BC();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1C97A2CEC(&unk_1EC3CBA00, &qword_1C9AB3B50);
    sub_1C97E8668();
    swift_arrayInitWithCopy();
  }
}

void sub_1C97E6A08()
{
  sub_1C97E8794();
  if (v6)
  {
    sub_1C97BDFD4();
    if (v7 != v8)
    {
      sub_1C97BE12C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v3)
  {
    sub_1C97A2CEC(&qword_1EC3C76E8, &unk_1C9AB9520);
    v9 = sub_1C97BE490();
    j__malloc_size(v9);
    sub_1C97E8654();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  sub_1C97E8848();
  if (v1)
  {
    if (v9 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = sub_1C97E87BC();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C76F0, &unk_1C9AB0410);
    sub_1C97E8668();
    swift_arrayInitWithCopy();
  }
}

void sub_1C97E6AF4()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v3)
  {
    sub_1C97A2CEC(&qword_1EC3C7860, &qword_1C9A9FDC0);
    v7 = sub_1C97BE490();
    sub_1C97E8690(v7);
    sub_1C97E86D4(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1C97E8988();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1C97E6BC0()
{
  sub_1C97E8794();
  if (v4)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v2)
  {
    v7 = sub_1C97A2CEC(&qword_1EC3C6CC0, &qword_1C9A9D680);
    v8 = sub_1C97E8800(v7);
    sub_1C97E8564(v8);
  }

  sub_1C97E8848();
  if (v1)
  {
    sub_1C97E8890();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = sub_1C97E87BC();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C6CC8, &qword_1C9A9D688);
    sub_1C97E8668();
    swift_arrayInitWithCopy();
  }
}

void sub_1C97E6C9C()
{
  sub_1C97E8794();
  if (v3)
  {
    sub_1C97BDFD4();
    if (v5 != v6)
    {
      sub_1C97BE12C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_1C9A32F80(v7, v4);
  v9 = *(sub_1C9A91558() - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_1C97E7210(v0 + v10, v7, v8 + v10, MEMORY[0x1E6968FB0]);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1C97E8B2C();
  }
}

void sub_1C97E6D9C()
{
  sub_1C97E8794();
  if (v6)
  {
    sub_1C97BDFD4();
    if (v7 != v8)
    {
      sub_1C97BE12C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v3)
  {
    v9 = sub_1C97A2CEC(&unk_1EC3C6C90, &unk_1C9A9D650);
    v4 = 40;
    v10 = sub_1C97E8820(v9);
    sub_1C97E8564(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1C97E8848();
  if (v1)
  {
    if (v3 != v0 || v5 + 40 * v2 <= v4)
    {
      v12 = sub_1C97E87BC();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C7920, &unk_1C9AA0060);
    sub_1C97E8668();
    swift_arrayInitWithCopy();
  }
}

void sub_1C97E6E84()
{
  sub_1C97E8794();
  if (v6)
  {
    sub_1C97BDFD4();
    if (v7 != v8)
    {
      sub_1C97BE12C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1C97BDFC4();
    }
  }

  sub_1C97E8618();
  if (v3)
  {
    sub_1C97A2CEC(&qword_1EC3C7A00, &qword_1C9A9FE88);
    v9 = sub_1C97BE490();
    sub_1C97E8690(v9);
    sub_1C97E86D4(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1C97E8848();
  if (v1)
  {
    if (v3 != v0 || v5 + 32 * v2 <= v4)
    {
      v12 = sub_1C97E87BC();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C7A08, &qword_1C9AB0450);
    sub_1C97E8668();
    swift_arrayInitWithCopy();
  }
}

char *sub_1C97E6F6C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return sub_1C97E8508(a3, result);
  }

  return result;
}

char *sub_1C97E6FA4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return sub_1C97E8508(a3, result);
  }

  return result;
}

char *sub_1C97E6FC4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_1C97E8508(a3, result);
  }

  return result;
}

char *sub_1C97E6FEC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[52 * a2] <= a3)
  {
    return sub_1C97E8688(a3, result, 52 * a2);
  }

  return result;
}

char *sub_1C97E7018(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[28 * a2] <= a3)
  {
    return sub_1C97E8688(a3, result, 28 * a2);
  }

  return result;
}

unint64_t sub_1C97E7044(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 < result || result + 24 * a2 <= a3)
  {
    return MEMORY[0x1EEE6BD00](a3, result, a2, &type metadata for SNAudioProcessorCache.Entry);
  }

  if (a3 != result)
  {
    return MEMORY[0x1EEE6BCF8](a3, result, a2, &type metadata for SNAudioProcessorCache.Entry);
  }

  return result;
}

char *sub_1C97E7094(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[2 * a2] <= a3)
  {
    return sub_1C97E8508(a3, result);
  }

  return result;
}

char *sub_1C97E70B4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_1C97E8508(a3, result);
  }

  return result;
}

uint64_t sub_1C97E70D8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1C97A2CEC(&unk_1EC3C76B0, &unk_1C9AAFB60), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_1C97A2CEC(&unk_1EC3C76B0, &unk_1C9AAFB60);

    return MEMORY[0x1EEE6BD00](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x1EEE6BCF8](a3, a1, a2, result);
  }

  return result;
}

char *sub_1C97E71C4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1C97E8508(a3, result);
  }

  return result;
}

char *sub_1C97E71E8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[160 * a2] <= a3)
  {
    return sub_1C97E8508(a3, result);
  }

  return result;
}

void sub_1C97E7210(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), sub_1C97DA940(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v12 = sub_1C97BE264();

    MEMORY[0x1EEE6BD00](v12, v13, a2, v14);
  }

  else if (a3 != a1)
  {
    v9 = sub_1C97BE264();

    MEMORY[0x1EEE6BCF8](v9, v10, a2, v11);
  }
}

uint64_t sub_1C97E7398(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C9A934C8();
  }

  return sub_1C9A93618();
}

uint64_t sub_1C97E7464@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C97E1424(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C97E74C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C97E379C(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C97E754C@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_1C97DFAB8(__dst);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C97E7608@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a1[1];
  v12[0] = *a1;
  v12[1] = v6;
  v7 = a1[3];
  v12[2] = a1[2];
  v12[3] = v7;
  result = sub_1C97E482C(v12, a2, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v9;
    a4[2] = v10;
    a4[3] = v11;
  }

  return result;
}

uint64_t sub_1C97E7654@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C978D0C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1C97E76A8@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x41uLL);
  result = sub_1C97DDF54(__dst);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C97E7708@<X0>(void *__src@<X3>, uint64_t *a2@<X0>, void (*a3)(uint64_t *__return_ptr, _BYTE *)@<X1>, int a4@<W2>, void *a5@<X8>)
{
  v9 = *a2;
  memcpy(__dst, __src, 0x41uLL);
  result = sub_1C97E4398(v9, a3, a4, __dst);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1C97E7780@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_1C97DAF20(__dst);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C97E7808@<X0>(void *__src@<X3>, uint64_t *a2@<X0>, void (*a3)(uint64_t *__return_ptr, _BYTE *)@<X1>, int a4@<W2>, void *a5@<X8>)
{
  v9 = *a2;
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_1C97E4424(v9, a3, a4, __dst);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

unint64_t sub_1C97E78C8()
{
  result = qword_1EC3C73E0;
  if (!qword_1EC3C73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C73E0);
  }

  return result;
}

unint64_t sub_1C97E791C()
{
  result = qword_1EC3C7400;
  if (!qword_1EC3C7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7400);
  }

  return result;
}

unint64_t sub_1C97E79C4()
{
  result = qword_1EC3C7440;
  if (!qword_1EC3C7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7440);
  }

  return result;
}

unint64_t sub_1C97E7A18()
{
  result = qword_1EC3CC550;
  if (!qword_1EC3CC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC550);
  }

  return result;
}

uint64_t sub_1C97E7AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C7418, &unk_1C9AAF870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C97E7BF0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v8 = a2[3];
  v10[2] = a2[2];
  v10[3] = v8;
  result = sub_1C97DFADC(v5, v6, v10);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C97E7C44@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C97E47C8(*a1, a2, a3, *a4, a4[1]);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1C97E7C7C@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v3 = a1[3];
  v5[2] = a1[2];
  v5[3] = v3;
  return sub_1C97DFB9C(v5, a2);
}

uint64_t sub_1C97E7CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = *(a1 + 32);
  *(v5 + 13) = *(a1 + 45);
  return sub_1C97E1440(v4, a2);
}

uint64_t sub_1C97E7CF4@<X0>(void *__src@<X3>, uint64_t *a2@<X0>, void (*a3)(uint64_t *__return_ptr, _BYTE *)@<X1>, int a4@<W2>, void *a5@<X8>)
{
  v9 = *a2;
  memcpy(v11, __src, sizeof(v11));
  result = sub_1C97E4514(v9, a3, a4, v11);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1C97E7D6C()
{
  sub_1C97E897C();
  v3 = v2;
  memcpy(__dst, v4, sizeof(__dst));
  v5 = sub_1C97E89F0();
  result = sub_1C97E45A0(v5, v6, v1, v7);
  if (!v0)
  {
    *v3 = result;
  }

  return result;
}

uint64_t sub_1C97E7E28@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C97E14F8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C97E7E88@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v5;
  v9[2] = *(a1 + 32);
  v10 = *(a1 + 48);
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  result = sub_1C97DAF44(v9, v11);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C97E7EEC@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, _OWORD *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *a1;
  v8 = *(a4 + 16);
  v10[0] = *a4;
  v10[1] = v8;
  v10[2] = *(a4 + 32);
  v11 = *(a4 + 48);
  result = sub_1C97E462C(v7, a2, a3, v10);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1C97E7F80@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C97E1504();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C97E8008@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return sub_1C97E1510(v4, a2);
}

void *sub_1C97E8044@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C97E1558(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

unint64_t sub_1C97E80D8()
{
  result = qword_1EC3CD6E0;
  if (!qword_1EC3CD6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD6E0);
  }

  return result;
}

unint64_t sub_1C97E812C()
{
  result = qword_1EC3C7560;
  if (!qword_1EC3C7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7560);
  }

  return result;
}

unint64_t sub_1C97E8180()
{
  result = qword_1EC3CD6F0;
  if (!qword_1EC3CD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD6F0);
  }

  return result;
}

id sub_1C97E81D4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1C97E8230@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, void)@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C97E1590(*a1, *(a1 + 8), a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_1C97E82EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C97A2CEC(a3, a4);
  sub_1C97DA940();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C97E8368()
{

  return swift_deallocObject();
}

size_t sub_1C97E8564(void *a1)
{
  result = j__malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t sub_1C97E85A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1C9A91F48();
}

uint64_t sub_1C97E85D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A91F68();
}

uint64_t sub_1C97E8628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1C9A91FC8();
}

uint64_t sub_1C97E8704(unint64_t *a1)
{
  v4 = MEMORY[0x1E695C058];

  return sub_1C97AE67C(a1, v1, v2, v4);
}

uint64_t sub_1C97E8730(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1C97E8750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1C9A91FC8();
}

uint64_t sub_1C97E87A0(unint64_t *a1)
{

  return sub_1C97AE67C(a1, v2, v3, v1);
}

uint64_t sub_1C97E8800(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1C97E8820(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1C97E8860(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1C97E886C(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1C97E88A0(uint64_t a1)
{

  return swift_once();
}

void *sub_1C97E8914(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char __src, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, char __dst)
{
  v37 = *(v34 + 16);
  *(v35 + 68) = *v34;
  *(v35 + 84) = v37;
  *(v35 + 100) = *(v34 + 32);
  a33 = *(v34 + 48);

  return memcpy(&__dst, &__src, 0x78uLL);
}

uint64_t sub_1C97E89A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C97AE67C(a1, v4, v5, a4);
}

uint64_t sub_1C97E89B8()
{

  return sub_1C97A2CEC(v0, v1);
}

uint64_t sub_1C97E89D0(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1C97E89FC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1C97E8A18()
{

  return sub_1C97A2CEC(v0, v1);
}

void sub_1C97E8A68()
{
  v2 = *(*(v0 + 24) + 16);

  os_unfair_lock_lock(v2);
}

id sub_1C97E8A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{

  return objc_msgSendSuper2(&a9, v9, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1C97E8AA0()
{
}

void sub_1C97E8B0C()
{
  v2 = *(*(v0 + 24) + 16);

  os_unfair_lock_lock(v2);
}

uint64_t sub_1C97E8B2C()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1C97E8B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1C97E82EC(v12, va, v11, v10);
}

void *sub_1C97E8B6C(void *a1)
{

  return memcpy(a1, v1, 0x41uLL);
}

uint64_t sub_1C97E8B84(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C97AE67C(a1, v5, v4, a4);
}

uint64_t sub_1C97E8BB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    v4 = sub_1C97F07C8();
    sub_1C97B7B68(v4, v5, v6);
    v2 = v16;
    type metadata accessor for CMTime(0);
    v7 = a1 + 48;
    do
    {
      sub_1C97A2CEC(&unk_1EC3C76D8, &qword_1C9A9FD18);
      swift_dynamicCast();
      v8 = v13;
      v10 = *(v16 + 16);
      v9 = *(v16 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1C97B7B68((v9 > 1), v10 + 1, 1);
        v8 = v13;
      }

      *(v16 + 16) = v10 + 1;
      v11 = v16 + 28 * v10;
      *(v11 + 32) = v8;
      v7 += 24;
      *(v11 + 48) = v14;
      *(v11 + 56) = v15;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C97E8CE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v18 = MEMORY[0x1E69E7CC0];
    v4 = sub_1C97F07C8();
    sub_1C97B7B88(v4, v5, v6);
    v2 = v18;
    v7 = a1 + 32;
    do
    {
      sub_1C97E82EC(v7, v14, &qword_1EC3CBA60, &qword_1C9AB0440);
      sub_1C97A2CEC(&qword_1EC3CBA60, &qword_1C9AB0440);
      sub_1C97A2CEC(&qword_1EC3C69F0, &qword_1C9AA0070);
      swift_dynamicCast();
      v18 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C97B7B88((v8 > 1), v9 + 1, 1);
        v2 = v18;
      }

      *(v2 + 16) = v9 + 1;
      v10 = (v2 + 48 * v9);
      v11 = v15;
      v12 = v17;
      v10[3] = v16;
      v10[4] = v12;
      v10[2] = v11;
      v7 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C97E8E28(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v4 = sub_1C97F07C8();
    sub_1C97B7BC8(v4, v5, v6);
    v7 = (a1 + 56);
    v2 = v24;
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      sub_1C97CE3DC(v8, v9);
      sub_1C97A2CEC(&unk_1EC3C77B0, &unk_1C9A9FFB0);
      v10 = sub_1C97E87BC();
      sub_1C97A2CEC(v10, v11);
      swift_dynamicCast();
      v12 = v23;
      v13 = *(v24 + 16);
      if (v13 >= *(v24 + 24) >> 1)
      {
        sub_1C97F0A14();
        v20 = v15;
        sub_1C97B7BC8(v16, v17, v18);
        v12 = v20;
      }

      v7 += 4;
      *(v24 + 16) = v13 + 1;
      v14 = v24 + 32 * v13;
      *(v14 + 32) = v21;
      *(v14 + 40) = v22;
      *(v14 + 48) = v12;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C97E8F68(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    v4 = sub_1C97F07C8();
    sub_1C97B7C7C(v4, v5, v6);
    v2 = v17;
    v7 = a1 + 48;
    do
    {

      sub_1C97A2CEC(&unk_1EC3C7B30, &unk_1C9A9D460);
      sub_1C97A2CEC(&qword_1EC3C6998, &qword_1C9A9D450);
      swift_dynamicCast();
      v8 = *(v17 + 16);
      if (v8 >= *(v17 + 24) >> 1)
      {
        sub_1C97F0A14();
        sub_1C97B7C7C(v10, v11, v12);
      }

      *(v17 + 16) = v8 + 1;
      v9 = v17 + 24 * v8;
      *(v9 + 32) = v14;
      *(v9 + 40) = v15;
      *(v9 + 48) = v16;
      v7 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C97E90D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v7 = sub_1C97F08B8();
    sub_1C97B7CDC(v7, v4, 0);
    v5 = v24;
    v8 = (v3 + 48);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v24 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_1C97F0A14();
        sub_1C97B7CDC(v15, v16, v17);
        v5 = v24;
      }

      v22 = a2;
      v14 = a3();
      *&v20 = v9;
      *(&v20 + 1) = v10;
      v23 = v14;
      v21 = v11;
      *(v5 + 16) = v13 + 1;
      sub_1C979B054(&v20, v5 + 40 * v13 + 32);
      v8 += 3;
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t sub_1C97E91D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1C97B7E88(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v11;
    do
    {
      v5 = *v4;
      sub_1C97A2CEC(&unk_1EC3C7580, &qword_1C9A9D390);
      sub_1C97A2CEC(&qword_1EC3C6910, &unk_1C9A9FF80);
      swift_dynamicCast();
      v6 = v10;
      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1C97B7E88((v7 > 1), v8 + 1, 1);
        v6 = v10;
      }

      *(v11 + 16) = v8 + 1;
      *(v11 + 16 * v8 + 32) = v6;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C97E9314(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    v4 = sub_1C97F07C8();
    sub_1C97B7EA8(v4, v5, v6);
    v7 = a1 + 32;
    v2 = v16;
    do
    {

      sub_1C97A2CEC(&unk_1EC3C7B20, &unk_1C9A9FF90);
      v8 = sub_1C97E87BC();
      sub_1C97A2CEC(v8, v9);
      swift_dynamicCast();
      v10 = *(v16 + 16);
      if (v10 >= *(v16 + 24) >> 1)
      {
        sub_1C97F0A14();
        sub_1C97B7EA8(v11, v12, v13);
      }

      *(v16 + 16) = v10 + 1;
      *(v16 + 8 * v10 + 32) = v15;
      v7 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1C97E9434(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1C9A934C8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    sub_1C97F09F0();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      v4 = v9;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = sub_1C97AEB30();
          MEMORY[0x1CCA912B0](v5);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        swift_dynamicCast();
        v9 = v4;
        v7 = *(v4 + 16);
        v6 = *(v4 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1C97B7D80(v6 > 1, v7 + 1, 1);
          v4 = v9;
        }

        ++v3;
        *(v4 + 16) = v7 + 1;
        sub_1C97A2D34(&v8, (v4 + 32 * v7 + 32));
      }

      while (v2 != v3);
    }
  }
}

uint64_t sub_1C97E9580(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1C9A93698();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_1C9A92B88();
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t sub_1C97E9628(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    v4 = sub_1C97F07C8();
    sub_1C97B8358(v4, v5, v6);
    v2 = v17;
    v7 = a1 + 32;
    do
    {
      sub_1C97BD360(v7, v15);
      v8 = sub_1C97F09E4();
      sub_1C97A2CEC(v8, v9);
      swift_dynamicCast();
      v10 = v16;
      v17 = v2;
      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      if (v12 >= v11 >> 1)
      {
        v14 = v16;
        sub_1C97B8358((v11 > 1), v12 + 1, 1);
        v10 = v14;
        v2 = v17;
      }

      *(v2 + 16) = v12 + 1;
      *(v2 + 16 * v12 + 32) = v10;
      v7 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C97E9748(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v8 = sub_1C97F08B8();
    sub_1C97B7D80(v8, v4, 0);
    v5 = v15;
    v9 = (v3 + 32);
    do
    {
      v10 = *v9;
      sub_1C97A2CEC(a2, a3);
      swift_dynamicCast();
      v15 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1C97B7D80(v11 > 1, v12 + 1, 1);
        v5 = v15;
      }

      *(v5 + 16) = v12 + 1;
      sub_1C97A2D34(&v14, (v5 + 32 * v12 + 32));
      v9 += 2;
      --v4;
    }

    while (v4);
  }

  return v5;
}

void sub_1C97E984C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97F09B4();
  a22 = v23;
  a23 = v25;
  v26 = v24;
  if (v24 >> 62)
  {
    v27 = sub_1C9A934C8();
  }

  else
  {
    v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v27)
  {
LABEL_12:
    sub_1C97F099C();
    return;
  }

  sub_1C97F09F0();
  if ((v27 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    v29 = a13;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = sub_1C97AEB30();
        MEMORY[0x1CCA912B0](v30);
      }

      else
      {
        v32 = *(v26 + 8 * v28 + 32);
      }

      type metadata accessor for SNDetectionResult(v31);
      swift_dynamicCast();
      a13 = v29;
      v34 = *(v29 + 16);
      v33 = *(v29 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1C97B7D80(v33 > 1, v34 + 1, 1);
        v29 = a13;
      }

      ++v28;
      *(v29 + 16) = v34 + 1;
      sub_1C97A2D34(&a10, (v29 + 32 * v34 + 32));
    }

    while (v27 != v28);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_1C97E996C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1C9A93698();
    v4 = a1 + 32;
    do
    {
      sub_1C97BD360(v4, &v6);
      type metadata accessor for SNDetectionResult(v5);
      swift_dynamicCast();
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

id sub_1C97E9A68(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if ([v2 addRequest:a1 withObserver:a2 error:v5])
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_1C9A913C8();

  return swift_willThrow();
}

uint64_t sub_1C97E9B84(unint64_t a1, double a2, double a3)
{
  if (a1 >> 62)
  {
    result = sub_1C9A934C8();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < 1)
  {
    return 0;
  }

  v6 = a2 * a3;
  if (COERCE__INT64(fabs(a2 * a3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v6 > -9.22337204e18)
  {
    if (v6 < 9.22337204e18)
    {
      return v6;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void *sub_1C97E9C24(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1C97E82EC(a1, v12, &unk_1EC3C5E60, qword_1C9A9AE10);
  if (!v12[3])
  {
    sub_1C97DA1E0(v12, &unk_1EC3C5E60, qword_1C9A9AE10);
    goto LABEL_6;
  }

  sub_1C97BD318(v5, 0, &qword_1EC3C56D0, 0x1E6958418);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_1C97F043C();
    swift_allocError();
    swift_willThrow();
    goto LABEL_7;
  }

  v6 = v12[5];
  v7 = objc_allocWithZone(ObjectType);
  v8 = sub_1C97E9E40(v6);
  if (v1)
  {
LABEL_7:
    sub_1C97DA1E0(a1, &unk_1EC3C5E60, qword_1C9A9AE10);
    v10 = swift_getObjectType();
    sub_1C97F0A6C(v10);
    return v2;
  }

  v2 = v8;
  sub_1C97DA1E0(a1, &unk_1EC3C5E60, qword_1C9A9AE10);
  v9 = swift_getObjectType();
  sub_1C97F0A6C(v9);
  return v2;
}

void *sub_1C97E9E40(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  sub_1C9A93008();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  sub_1C97F097C();
  v6 = sub_1C9A92158();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1C97AEAD8();
  v9 = (v8 - v7);
  v10 = sub_1C9A93018();
  sub_1C97AE9C8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AEAD8();
  v16 = v15 - v14;
  *&v3[OBJC_IVAR____SNAudioStreamAnalyzer_receivedBufferCount] = 0;
  v17 = OBJC_IVAR____SNAudioStreamAnalyzer_firstPassRecordingPredicate;
  v18 = v3;
  *&v3[OBJC_IVAR____SNAudioStreamAnalyzer_firstPassRecordingPredicate] = 0;
  v19 = a1;
  sub_1C99CCED8(a1);
  if (v85)
  {

    swift_deallocPartialClassInstance();
    return v19;
  }

  v78 = v12;
  v80 = v9;
  if (qword_1EC3C57B8 != -1)
  {
    sub_1C97F0884();
    swift_once();
  }

  v20 = v16;
  v21 = v10;
  v22 = v18;
  if (byte_1EC3D3138 != 1)
  {
    goto LABEL_12;
  }

  if (qword_1EC3C57B0 != -1)
  {
    sub_1C97DA638();
    swift_once();
  }

  if (byte_1EC3D3480 == 1)
  {
    if (qword_1EC3C5BA8 != -1)
    {
      swift_once();
    }

    v23 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();

    v24 = sub_1C99B5FBC();

    v25 = *&v18[v17];
    if (v24)
    {
      *&v22[v17] = v24;
      v26 = v24;

      v27 = sub_1C99B496C();
      CMTimeMakeWithSeconds(&v89, v27, 10000);
      value = v89.value;
      v29 = *&v89.timescale;
      epoch = v89.epoch;
    }

    else
    {
      *&v22[v17] = 0;

      value = *MEMORY[0x1E6960CC0];
      v29 = *(MEMORY[0x1E6960CC0] + 8);
      epoch = *(MEMORY[0x1E6960CC0] + 16);
    }

    v34 = &v22[OBJC_IVAR____SNAudioStreamAnalyzer_firstPassRecordingHistoryDuration];
    *v34 = value;
    v34[1] = v29;
    v34[2] = epoch;
    v35 = sub_1C99B4A4C();
    CMTimeMakeWithSeconds(&v89, v35, 10000);
    v32 = v89.value;
    v33 = *&v89.timescale;
  }

  else
  {
LABEL_12:
    v31 = *&v18[v17];
    *&v18[v17] = 0;

    sub_1C97F0A38(*MEMORY[0x1E6960CC0], *(MEMORY[0x1E6960CC0] + 8));
  }

  sub_1C97F0A38(v32, v33);
  type metadata accessor for SNForwardPassAudioStreamAnalyzer(v36);
  swift_allocObject();
  v37 = v19;
  v76 = v21;
  v39 = v20;
  *&v22[OBJC_IVAR____SNAudioStreamAnalyzer_firstPassAnalyzer] = sub_1C9821A2C(v37);
  sub_1C97BD318(v40, 0, &qword_1EC3C5690, 0x1E696B098);
  sub_1C97EFF00(v41);
  v42 = v22;
  v43 = MEMORY[0x1E69E7CC0];
  *&v22[OBJC_IVAR____SNAudioStreamAnalyzer_firstPassUltronReportOps] = sub_1C9A92348();
  sub_1C97A2CEC(&qword_1EC3C7B10, qword_1C9A9FF48);
  *&v22[OBJC_IVAR____SNAudioStreamAnalyzer_firstPassResultsHistory] = sub_1C9A92348();
  *&v22[OBJC_IVAR____SNAudioStreamAnalyzer_requests] = v43;
  *&v22[OBJC_IVAR____SNAudioStreamAnalyzer_currentFormat] = v37;
  v44 = objc_allocWithZone(SNAudioRingBuffer);
  v45 = v37;
  *&v22[OBJC_IVAR____SNAudioStreamAnalyzer_ringBuffer] = sub_1C97EE100(v45, 1);
  v72 = v45;
  v46 = [objc_allocWithZone(SNAudioBufferList) initWithFormat_];
  *&v22[OBJC_IVAR____SNAudioStreamAnalyzer_ringBufferWriteBufferList] = v46;
  sub_1C97BD318(v47, 0, &qword_1EC3C56B0, 0x1E69E9610);
  v78[13](v39, *MEMORY[0x1E69E8098], v76);
  sub_1C9A92148();
  v89.value = MEMORY[0x1E69E7CC0];
  sub_1C97F03B0(&qword_1EC3C56C0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1C97A2CEC(&unk_1EC3CDC60, &unk_1C9AA0040);
  sub_1C97F0490(&qword_1EC3C56E0, &unk_1EC3CDC60, &unk_1C9AA0040);
  sub_1C9A93428();
  v48 = sub_1C9A93048();
  *&v22[OBJC_IVAR____SNAudioStreamAnalyzer_analyzerQueue] = v48;
  sub_1C97AA878();
  result = swift_allocObject();
  result[2] = sub_1C97BE080;
  v83 = (result + 2);
  result[3] = 0;
  v49 = qword_1EC3D3140 + 1;
  if (!__OFADD__(qword_1EC3D3140, 1))
  {
    v50 = result;
    ++qword_1EC3D3140;
    v89.value = v49;
    v51 = v48;

    v52 = sub_1C9A93A98();
    v54 = v53;
    v55 = &v42[OBJC_IVAR____SNAudioStreamAnalyzer_id];
    *v55 = v52;
    v55[1] = v53;

    v56 = ObjectType;
    sub_1C97EA730(v52, v54, sub_1C97F04E4, v50, v51, v57, v58, v59, v72, "NAudioStreamAnalyzer", v76, v78, v80, v2, v83, 0, ObjectType, v89.value, *&v89.timescale, v89.epoch, v90.receiver, v90.super_class, v91, v92);
    v61 = v60;
    sub_1C97EA8BC(v52, v54, sub_1C97F04E4, v50, v51, v62, v63, v64, v73, v75, v77, v79, v81, v82, v84, v86, v88, v89.value, *&v89.timescale, v89.epoch, v90.receiver, v90.super_class, v91, v92);
    v66 = v65;

    sub_1C97A7DFC();
    v67 = swift_allocObject();
    *(v67 + 2) = sub_1C97F0758;
    *(v67 + 3) = v61;
    *(v67 + 4) = sub_1C97F0560;
    *(v67 + 5) = v66;
    v68 = &v42[OBJC_IVAR____SNAudioStreamAnalyzer_unregisterLogCollectHook];
    *v68 = sub_1C97F04EC;
    v68[1] = v67;
    type metadata accessor for AudioStreamAnalyzer(v69);
    swift_allocObject();
    v70 = v74;

    *&v42[OBJC_IVAR____SNAudioStreamAnalyzer_combineAnalyzer] = sub_1C999D1EC(v70);
    v90.receiver = v42;
    v90.super_class = v56;
    v19 = objc_msgSendSuper2(&v90, sel_init);

    sub_1C97F07FC();
    v71 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    *(v50 + 16) = sub_1C97F0530;
    *(v50 + 24) = v71;

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97EA6C8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);

  v4 = v2(v3);

  return v4;
}

void sub_1C97EA730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(uint64_t a1), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97F09B4();
  a23 = v24;
  a24 = v25;
  sub_1C97F08CC();
  sub_1C9A935B8();

  a9 = 0xD000000000000011;
  a10 = 0x80000001C9AD51E0;
  v26 = sub_1C97A7890();
  MEMORY[0x1CCA90230](v26);
  MEMORY[0x1CCA90230](41, 0xE100000000000000);
  sub_1C97DAA28();
  v27 = swift_allocObject();
  sub_1C97F0A4C(v27);
  v28 = sub_1C9A92478();

  sub_1C97AA878();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1C97F0570;
  *(v29 + 24) = &a9;
  a13 = sub_1C97F0754;
  a14 = v29;
  a9 = MEMORY[0x1E69E9820];
  sub_1C97F0808();
  a11 = v30;
  a12 = &unk_1F492F9F0;
  v31 = _Block_copy(&a9);

  sub_1C97F0960();
  v35 = sub_1C9A77A98(v32, v33, v34);

  _Block_release(v31);

  sub_1C97F07FC();
  *(swift_allocObject() + 16) = v35;
  sub_1C97F099C();
}

void sub_1C97EA8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)@<X0>(uint64_t *x8_0@<X8>), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97F09B4();
  a23 = v24;
  a24 = v25;
  sub_1C97F08CC();
  sub_1C9A935B8();

  a9 = 0xD000000000000013;
  a10 = 0x80000001C9AD51C0;
  v26 = sub_1C97A7890();
  MEMORY[0x1CCA90230](v26);
  MEMORY[0x1CCA90230](41, 0xE100000000000000);
  sub_1C97DAA28();
  v27 = swift_allocObject();
  sub_1C97F0A4C(v27);
  v28 = sub_1C9A92478();

  sub_1C97AA878();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1C97F0538;
  *(v29 + 24) = &a9;
  a13 = sub_1C97F0558;
  a14 = v29;
  a9 = MEMORY[0x1E69E9820];
  sub_1C97F0808();
  a11 = v30;
  a12 = &unk_1F492F950;
  v31 = _Block_copy(&a9);

  sub_1C97F0960();
  v35 = sub_1C9A77A98(v32, v33, v34);

  _Block_release(v31);

  sub_1C97F07FC();
  *(swift_allocObject() + 16) = v35;
  sub_1C97F099C();
}

void *sub_1C97EAA8C(uint64_t (*a1)(void))
{
  v1 = a1();
  if (!v1)
  {
    return sub_1C9A92348();
  }

  v2 = v1;
  if ((sub_1C97EAE84() & 1) == 0)
  {

    return sub_1C9A92348();
  }

  sub_1C97A2CEC(&qword_1EC3D23E0, &qword_1C9ACF7F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  sub_1C9A93548();
  v4 = OBJC_IVAR____SNAudioStreamAnalyzer_requests;
  swift_beginAccess();
  v5 = *&v2[v4];
  v6 = sub_1C97BDEE0();
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
LABEL_15:
    *(inited + 96) = sub_1C97A2CEC(&qword_1EC3C7BF0, &unk_1C9AA0050);
    *(inited + 72) = v7;
    v22 = sub_1C9A92348();

    return v22;
  }

  v8 = v6;
  v23 = inited;
  v24 = v2;
  v26 = MEMORY[0x1E69E7CC0];
  v9 = v6 & ~(v6 >> 63);

  result = sub_1C97B7B08(0, v9, 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v7 = v26;
    v25 = v5 & 0xC000000000000001;
    v12 = v5;
    v13 = v8;
    do
    {
      if (v25)
      {
        v14 = MEMORY[0x1CCA912B0](v11, v5);
      }

      else
      {
        v14 = *(v5 + 8 * v11 + 32);
        swift_unknownObjectRetain();
      }

      v15 = [v14 description];
      v16 = sub_1C9A924A8();
      v18 = v17;
      swift_unknownObjectRelease();

      v20 = *(v26 + 16);
      v19 = *(v26 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1C97B7B08((v19 > 1), v20 + 1, 1);
      }

      ++v11;
      *(v26 + 16) = v20 + 1;
      v21 = v26 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v5 = v12;
    }

    while (v13 != v11);

    v2 = v24;
    inited = v23;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97EAD18(uint64_t (*a1)(void))
{
  v2 = a1();
  if (!v2)
  {
    return sub_1C9A92348();
  }

  v3 = v2;
  if ((sub_1C97EAE84() & 1) == 0)
  {

    return sub_1C9A92348();
  }

  swift_beginAccess();

  sub_1C981FE1C(v4, v8);
  if (v1)
  {

    memset(v8, 0, sizeof(v8));
    sub_1C97DA1E0(v8, &unk_1EC3C5E60, qword_1C9A9AE10);
LABEL_9:
    v6 = sub_1C9A92348();
    goto LABEL_10;
  }

  sub_1C97A2CEC(&qword_1EC3C7BF8, &unk_1C9AB03A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = v7;
LABEL_10:

  return v6;
}

uint64_t sub_1C97EAE84()
{
  if (qword_1EC3C57B8 != -1)
  {
    sub_1C97F0884();
    swift_once();
  }

  if (byte_1EC3D3138 != 1)
  {
    return 0;
  }

  if (qword_1EC3C57B0 != -1)
  {
    sub_1C97DA638();
    swift_once();
  }

  return byte_1EC3D3480;
}

id sub_1C97EAF00()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____SNAudioStreamAnalyzer_unregisterLogCollectHook];

  v2(v3);

  v5 = sub_1C9A0860C(v4);
  sub_1C99ED324(v5);

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1C97EB0B8(uint64_t a1, uint64_t a2)
{
  sub_1C97E82EC(a1, v24, &unk_1EC3C5E60, qword_1C9A9AE10);
  if (!v25)
  {
    goto LABEL_7;
  }

  v3 = sub_1C97A2CEC(&qword_1EC3CB9D0, &qword_1C9A9FF28);
  sub_1C97F0A20(v3, v4, v5, v3, v6, v7, v8, v9, v20, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1C97E82EC(a2, v24, &unk_1EC3C5E60, qword_1C9A9AE10);
  if (!v25)
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_1C97DA1E0(v24, &unk_1EC3C5E60, qword_1C9A9AE10);
    goto LABEL_8;
  }

  v10 = sub_1C97A2CEC(&unk_1EC3CF440, &qword_1C9AA0038);
  sub_1C97F0A20(v10, v11, v12, v10, v13, v14, v15, v16, v21, v23);
  if (swift_dynamicCast())
  {
    v17 = sub_1C97F09E4();
    sub_1C97EB214(v17, v18);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
LABEL_8:
  sub_1C97F043C();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1C97EB214(uint64_t a1, uint64_t a2)
{
  sub_1C97F07FC();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C97F07FC();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C97DAA28();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = v3;
  sub_1C97AA878();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a1;
  sub_1C97F0A2C();
  swift_unknownObjectRetain_n();
  swift_retain_n();

  sub_1C97EB888(a1, sub_1C97EFFB8, v5, sub_1C97EFFC4, v6);
}

void *sub_1C97EB474(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1C97EB590();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    if (a1)
    {
      if ([result respondsToSelector_])
      {
        v10 = a1;
        v11 = sub_1C9A913B8();
        [v9 request:a3 didFailWithError:v11];
      }
    }

    else if ([result respondsToSelector_])
    {
      [v9 requestDidComplete_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C97EB590()
{
  sub_1C97BE460();
  v2 = v0;
  v4 = v3;
  sub_1C9A92128();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  sub_1C97F097C();
  sub_1C9A92158();
  sub_1C97AE9C8();
  v21 = v7;
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v10 = v9 - v8;
  v11 = *(v2 + OBJC_IVAR____SNAudioStreamAnalyzer_analyzerQueue);
  sub_1C97F07FC();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C97AA878();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v4;
  sub_1C97F07D8(v13);
  sub_1C97F083C(COERCE_DOUBLE(1107296256));
  v23[2] = v14;
  v23[3] = &unk_1F492F748;
  v15 = _Block_copy(v23);
  v16 = v11;

  swift_unknownObjectRetain();
  sub_1C9A92148();
  sub_1C97F086C();
  sub_1C97F03B0(v17, v18, MEMORY[0x1E69E7F70]);
  sub_1C97A2CEC(&unk_1EC3C8660, &qword_1C9A9FF20);
  sub_1C97F0490(&qword_1EC3C7AE0, &unk_1EC3C8660, &qword_1C9A9FF20);
  sub_1C9A93428();
  MEMORY[0x1CCA90CE0](0, v10, v1, v15);
  _Block_release(v15);

  v19 = sub_1C97AEB30();
  v20(v19);
  (*(v21 + 8))(v10, v22);

  sub_1C97BE478();
}

void *sub_1C97EB810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result request:a3 didProduceResult:a1];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C97EB888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + OBJC_IVAR____SNAudioStreamAnalyzer_analyzerQueue);
  sub_1C9A93028();
}

id sub_1C97EB908(id a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OBJC_IVAR____SNAudioStreamAnalyzer_requests;
  swift_beginAccess();
  v9 = *(v5 + v8);
  v10 = sub_1C97BDEE0();

  v12 = 0;
  while (v10 != v12)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA912B0](v12, v9);
      v13 = result;
    }

    else
    {
      if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v13 = *(v9 + 8 * v12 + 32);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    result = swift_unknownObjectRelease();
    ++v12;
    if (v13 == a1)
    {

      sub_1C97EBC98(a1);
      goto LABEL_11;
    }
  }

LABEL_11:
  v26 = a1;
  swift_unknownObjectRetain();
  sub_1C97A2CEC(&qword_1EC3CB9D0, &qword_1C9A9FF28);
  sub_1C97A2CEC(&qword_1EC3C7AF0, &qword_1C9A9FF30);
  if (swift_dynamicCast())
  {
    v14 = *(&v24 + 1);
    v15 = v25;
    sub_1C97A5A8C(&v23, *(&v24 + 1));
    v16 = (*(v15 + 8))(v14, v15);
    v18 = v17;
    sub_1C97A592C(&v23);
    ObjectType = swift_getObjectType();
    if ((*(v18 + 24))(ObjectType, v18))
    {
      sub_1C999DE0C(v16, v18, a2, a3, a4, a5);
      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    sub_1C97DA1E0(&v23, &unk_1EC3C7AF8, &qword_1C9A9FF38);
  }

  return sub_1C97EBE58(a1, a2, a3, a4, a5);
}

void sub_1C97EBC98(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____SNAudioStreamAnalyzer_requests;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v5 = sub_1C97EF7A8((v2 + v4), a1);
  if (sub_1C97BDEE0() < v5)
  {
    __break(1u);
    swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_1C97F0820();
    sub_1C97EFA5C(v5, v6, v7, sub_1C98D139C, sub_1C97EFD00);
    swift_endAccess();
    v21 = a1;
    swift_unknownObjectRetain();
    sub_1C97A2CEC(&qword_1EC3CB9D0, &qword_1C9A9FF28);
    sub_1C97A2CEC(&qword_1EC3C7AF0, &qword_1C9A9FF30);
    if (swift_dynamicCast())
    {
      sub_1C979B054(&v18, v22);
      sub_1C97A5A8C(v22, v23);
      v8 = sub_1C97E87BC();
      v10 = v9(v8);
      sub_1C999E048(v10);
      swift_unknownObjectRelease();
      sub_1C97A592C(v22);
    }

    else
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      sub_1C97DA1E0(&v18, &unk_1EC3C7AF8, &qword_1C9A9FF38);
    }

    sub_1C97ECC8C(a1, v11, v12, v13, v14, v15, v16, v17, v18, *(&v18 + 1), v19, *(&v19 + 1), v20, v21, v22[0], v22[1], v22[2], v23, v24, v25, v26, v27, v28, v29);
  }
}

id sub_1C97EBE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C97F07FC();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C97A7DFC();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  sub_1C97F07FC();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C97A7DFC();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a4;
  v12[5] = a5;
  sub_1C97F0A2C();
  swift_unknownObjectRetain_n();

  sub_1C9820924(a1, sub_1C97EFFFC, v10, sub_1C97F004C, v12);

  if (!v16)
  {
    sub_1C97A2CEC(&unk_1EC3C6E20, &qword_1C9A9FF60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9DF30;
    *(inited + 32) = a1;
    sub_1C97F098C();
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1C98CFF8C(inited);
    swift_endAccess();
    return sub_1C97EC058();
  }

  return result;
}

id sub_1C97EC058()
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = OBJC_IVAR____SNAudioStreamAnalyzer_requests;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____SNAudioStreamAnalyzer_currentFormat;
  v4 = *(v0 + OBJC_IVAR____SNAudioStreamAnalyzer_currentFormat);

  [v4 sampleRate];
  v6 = v5;
  v7 = *(v0 + OBJC_IVAR____SNAudioStreamAnalyzer_firstPassRecordingHistoryDuration + 16);
  time.value = *(v0 + OBJC_IVAR____SNAudioStreamAnalyzer_firstPassRecordingHistoryDuration);
  *&time.timescale = *(v0 + OBJC_IVAR____SNAudioStreamAnalyzer_firstPassRecordingHistoryDuration + 8);
  time.epoch = v7;
  Seconds = CMTimeGetSeconds(&time);
  v9 = sub_1C97E9B84(v2, v6, Seconds);

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (HIDWORD(v9))
  {
    goto LABEL_7;
  }

  v10 = *(v0 + OBJC_IVAR____SNAudioStreamAnalyzer_ringBuffer);
  v11 = *(v0 + v3);
  time.value = 0;
  if ([v10 resizeWithFormat:v11 newCapacityFrames:v9 error:&time])
  {
    return time.value;
  }

  v13 = time.value;
  sub_1C9A913C8();

  return swift_willThrow();
}

uint64_t sub_1C97EC1C4(uint64_t a1, CMTimeValue a2, double a3)
{
  v4 = v3;
  type metadata accessor for SNDetectionResult(a3);
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *(v3 + OBJC_IVAR____SNAudioStreamAnalyzer_firstPassRecordingPredicate);
    if (v7)
    {
      v8 = result;
      swift_unknownObjectRetain();
      v79 = v7;
      v83 = v8;
      v9 = [v79 evaluateWithObject_];
      v10 = *(v4 + OBJC_IVAR____SNAudioStreamAnalyzer_currentFormat);
      v77 = OBJC_IVAR____SNAudioStreamAnalyzer_firstPassUltronReportOps;
      v11 = *(v4 + OBJC_IVAR____SNAudioStreamAnalyzer_firstPassUltronReportOps);
      v12 = OBJC_IVAR____SNAudioStreamAnalyzer_firstPassResultsHistory;
      swift_beginAccess();
      v86 = v12;
      v13 = *(v4 + v12);
      v14 = *(v4 + OBJC_IVAR____SNAudioStreamAnalyzer_ringBuffer);
      v74 = *(v4 + OBJC_IVAR____SNAudioStreamAnalyzer_firstPassRecordingHistoryDuration + 8);
      v75 = *(v4 + OBJC_IVAR____SNAudioStreamAnalyzer_firstPassRecordingHistoryDuration);
      v76 = v4 + OBJC_IVAR____SNAudioStreamAnalyzer_firstPassRecordingHistoryDuration;
      v73 = *(v4 + OBJC_IVAR____SNAudioStreamAnalyzer_firstPassRecordingHistoryDuration + 16);
      sub_1C97BD318(v15, 0, &qword_1EC3C5690, 0x1E696B098);
      ObjectType = swift_getObjectType();
      time1.value = a2;
      v82 = v10;

      v80 = v14;
      swift_unknownObjectRetain();
      sub_1C97ED038(&time1);
      v17 = v16;
      v18 = sub_1C98782EC(v16, v11);
      v84 = v19;
      v85 = v20;
      v78 = v17;
      v21 = sub_1C9878364(v17, v13);

      v22 = MEMORY[0x1E69E7CC0];
      if (!v21)
      {
        v21 = MEMORY[0x1E69E7CC0];
      }

      v81 = a2;
      if (v9)
      {
        v23 = sub_1C97E91D8(v21);

        v24 = v18;
        if (v18)
        {

          v25 = v83;
          v26 = v78;
        }

        else
        {
          sub_1C99EF784(v81, v82);
          v71 = v63;
          v72 = v62;
          v18 = v64;
          v65 = *(v23 + 16);
          if (v65)
          {
            v70 = v4;
            time1.value = v22;

            sub_1C9A93698();
            v66 = 32;
            do
            {
              swift_dynamicCastClassUnconditional();
              swift_unknownObjectRetain();
              sub_1C9A93678();
              sub_1C9A936A8();
              sub_1C9A936B8();
              sub_1C9A93688();
              v66 += 16;
              --v65;
            }

            while (v65);

            value = time1.value;
            v4 = v70;
            v69 = v71;
            v68 = v72;
          }

          else
          {

            v68 = v72;

            v69 = v71;

            value = MEMORY[0x1E69E7CC0];
          }

          sub_1C99EF434(v18, v68, v69, v80, value, v75, v74, v73);
          v26 = v78;
          v24 = 0;

          v25 = v83;
        }

        time1.value = v25;
        sub_1C9A91E08();
        if (v18)
        {

          sub_1C97F0960();
          sub_1C97F01A4(v27, v28, v29);
          swift_isUniquelyReferenced_nonNull_native();
          time1.value = v11;
          sub_1C97F0960();
          sub_1C97EE9B4(v30, v31, v32, v26, v33);

          sub_1C97F0960();
          sub_1C97F0058(v34, v35, v36);
          sub_1C97F0058(v24, v84, v85);
          v11 = time1.value;
LABEL_16:
          *(v4 + v77) = v11;

          v47 = *(v4 + v86);
          v48 = *v76;
          v49 = *(v76 + 8);
          v50 = *(v76 + 12);
          v51 = v4;
          v52 = *(v76 + 16);
          v53 = *(v51 + OBJC_IVAR____SNAudioStreamAnalyzer_sysdiagnoseHistoryDuration);
          v54 = *(v51 + OBJC_IVAR____SNAudioStreamAnalyzer_sysdiagnoseHistoryDuration + 8);
          v55 = *(v51 + OBJC_IVAR____SNAudioStreamAnalyzer_sysdiagnoseHistoryDuration + 12);
          v56 = *(v51 + OBJC_IVAR____SNAudioStreamAnalyzer_sysdiagnoseHistoryDuration + 16);
          swift_unknownObjectRetain();

          time1.value = v53;
          time1.timescale = v54;
          time1.flags = v55;
          time1.epoch = v56;
          time2.value = v48;
          time2.timescale = v49;
          time2.flags = v50;
          time2.epoch = v52;
          CMTimeCompare(&time1, &time2);
          SNDetectionResult.timeRange.getter(&time1);
          sub_1C9A92F08();
          v57 = sub_1C9A93128();
          v61 = sub_1C97F00A4(v83, v81, v47, v57, v58, v59, v60);

          swift_unknownObjectRelease_n();
          *(v51 + v86) = v61;
        }
      }

      else
      {

        v26 = v78;
        v24 = v18;
        if (v18)
        {
          time1.value = 0;

          sub_1C9A91DF8();
        }
      }

      v37 = v24;

      v38 = sub_1C9A323E4();
      if (v39)
      {
        v40 = v38;
        swift_isUniquelyReferenced_nonNull_native();
        time1.value = v11;
        sub_1C97A2CEC(&qword_1EC3C7B18, &qword_1C9A9FF68);
        sub_1C9A93748();
        v41 = time1.value;

        v42 = (*(v41 + 56) + 24 * v40);
        v43 = *v42;
        v44 = v42[1];
        v45 = v42[2];
        sub_1C97EFF00(v46);
        sub_1C9A93768();

        v11 = v41;
      }

      else
      {

        v43 = 0;
        v44 = 0;
        v45 = 0;
      }

      sub_1C97F0058(v37, v84, v85);

      sub_1C97F0058(v43, v44, v45);
      goto LABEL_16;
    }
  }

  return result;
}

void sub_1C97EC8C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1C97EB590();
    a4(a1);
  }
}

void sub_1C97EC950(uint64_t a1, uint64_t a2, CMTimeValue a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1C97EC1C4(a1, a3, v8);
    a4(a1);
  }
}

void sub_1C97ECA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97F09B4();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v29 = *&v24[OBJC_IVAR____SNAudioStreamAnalyzer_analyzerQueue];
  sub_1C97AA878();
  v30 = swift_allocObject();
  *(v30 + 16) = v24;
  *(v30 + 24) = v28;
  sub_1C97AA878();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1C97EFF68;
  *(v31 + 24) = v30;
  a13 = sub_1C97EFF90;
  a14 = v31;
  sub_1C97F07A8();
  sub_1C97F0790();
  a11 = v32;
  a12 = &unk_1F492F608;
  v33 = _Block_copy(&a9);
  v34 = v29;
  v35 = v24;
  swift_unknownObjectRetain();

  dispatch_sync(v34, v33);

  _Block_release(v33);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_1C97F099C();
  }
}

void sub_1C97ECC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t ObjectType, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97F09B4();
  a23 = v25;
  a24 = v26;
  v27 = v24;
  v29 = v28;

  sub_1C9820EAC(v29);

  v30 = OBJC_IVAR____SNAudioStreamAnalyzer_firstPassUltronReportOps;

  v31 = sub_1C97AEB30();
  v33 = sub_1C99ED3B0(v31, v32);

  *(v27 + v30) = v33;

  sub_1C97BD318(v34, 0, &qword_1EC3C5690, 0x1E696B098);
  ObjectType = swift_getObjectType();
  a11 = v29;
  swift_unknownObjectRetain();
  sub_1C97ED038(&a11);
  v36 = v35;
  v37 = OBJC_IVAR____SNAudioStreamAnalyzer_requests;
  sub_1C97F098C();
  swift_beginAccess();
  swift_unknownObjectRetain();
  v38 = sub_1C97EF7A8((v27 + v37), v29);
  if (sub_1C97BDEE0() < v38)
  {
    __break(1u);
    swift_once();
    v42 = sub_1C9A91B58();
    sub_1C97BFF6C(v42, qword_1EC3D3108);

    v43 = sub_1C9A91B38();
    v44 = sub_1C9A92FB8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      a11 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_1C9849140(v27, v29, &a11);
      _os_log_impl(&dword_1C9788000, v43, v44, "Would-be Fatal Error! %s", v45, 0xCu);
      sub_1C97A592C(v46);
      MEMORY[0x1CCA93280](v46, -1, -1);
      MEMORY[0x1CCA93280](v45, -1, -1);
    }
  }

  else
  {
    sub_1C97F0820();
    sub_1C97EFA5C(v38, v39, v40, sub_1C98D139C, sub_1C97EFD00);
    swift_endAccess();
    sub_1C97F098C();
    swift_beginAccess();
    v41 = v36;
    sub_1C97EE1CC(v41);
    swift_endAccess();

    sub_1C97EC058();
  }

  sub_1C97F099C();
}

void sub_1C97ECFDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1C97EBC98(a2);
  }
}

void sub_1C97ED038(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v3 = sub_1C97A5A8C(a1, a1[3]);
    v4 = *(v1 - 8);
    MEMORY[0x1EEE9AC00](v3);
    sub_1C97AEAD8();
    v7 = v6 - v5;
    (*(v4 + 16))(v6 - v5);
    v8 = sub_1C9A93B08();
    (*(v4 + 8))(v7, v1);
    sub_1C97A592C(a1);
  }

  else
  {
    v8 = 0;
  }

  v9 = [swift_getObjCClassFromMetadata() valueWithNonretainedObject_];
  swift_unknownObjectRelease();
  sub_1C97F0AAC();
}

void sub_1C97ED174()
{
  sub_1C97BE460();
  sub_1C9A92128();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEAD8();
  sub_1C97F097C();
  v19 = sub_1C9A92158();
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  v9 = *&v0[OBJC_IVAR____SNAudioStreamAnalyzer_analyzerQueue];
  sub_1C97F07FC();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  sub_1C97F07D8(v10);
  sub_1C97F083C(COERCE_DOUBLE(1107296256));
  v20[2] = v11;
  v20[3] = &unk_1F492F590;
  v12 = _Block_copy(v20);
  v13 = v9;
  v14 = v0;
  sub_1C9A92148();
  sub_1C97F086C();
  sub_1C97F03B0(v15, v16, MEMORY[0x1E69E7F70]);
  sub_1C97A2CEC(&unk_1EC3C8660, &qword_1C9A9FF20);
  sub_1C97F0490(&qword_1EC3C7AE0, &unk_1EC3C8660, &qword_1C9A9FF20);
  sub_1C9A93428();
  MEMORY[0x1CCA90CE0](0, v8, v1, v12);
  _Block_release(v12);

  v17 = sub_1C97AEB30();
  v18(v17);
  (*(v4 + 8))(v8, v19);

  sub_1C97BE478();
}

uint64_t sub_1C97ED3B8(uint64_t a1)
{
  v2 = OBJC_IVAR____SNAudioStreamAnalyzer_requests;
  swift_beginAccess();
  v3 = *(a1 + v2);
  result = sub_1C97BDEE0();
  if (!result)
  {
    return sub_1C999E110();
  }

  v5 = result;
  if (result >= 1)
  {

    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCA912B0](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      sub_1C97EBC98(v7);
      swift_unknownObjectRelease();
    }

    return sub_1C999E110();
  }

  __break(1u);
  return result;
}

void sub_1C97ED4E0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    sub_1C97ED540(v3, a2);
  }
}

void sub_1C97ED648(void *a1, uint64_t a2)
{
  v9 = objc_autoreleasePoolPush();
  v10 = *(v3 + OBJC_IVAR____SNAudioStreamAnalyzer_receivedBufferCount);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v2 = v9;
    *(v3 + OBJC_IVAR____SNAudioStreamAnalyzer_receivedBufferCount) = v12;
    sub_1C97A2CEC(&unk_1EC3C7BD0, &qword_1C9AAA880);
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E6530];
    *(v13 + 16) = xmmword_1C9A9EDD0;
    v15 = MEMORY[0x1E69E65A8];
    *(v13 + 56) = v14;
    *(v13 + 64) = v15;
    *(v13 + 32) = v3;
    v6 = sub_1C9A924C8();
    v5 = v16;
    if (qword_1EC3C57A8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v17 = sub_1C9A91AD8();
  v18 = sub_1C97BFF6C(v17, qword_1EC3D3120);
  v23 = v6;
  v24 = v5;

  v19 = sub_1C992299C(v18, "AudioBufferProcessed", 20, 2, &v23);
  if (v4)
  {
    sub_1C97F0A2C();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v21 = v19;
    sub_1C97ED934(v3, a1, a2, v20);
    v23 = "AudioBufferProcessed";
    v24 = 20;
    v25 = 2;
    v22 = v21;
    sub_1C9922720(v18, &v23, &v22);
    sub_1C97F0A2C();
    swift_bridgeObjectRelease_n();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1C97ED800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97F09B4();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v29 = *&v24[OBJC_IVAR____SNAudioStreamAnalyzer_analyzerQueue];
  sub_1C97AA878();
  v30 = swift_allocObject();
  *(v30 + 16) = v24;
  *(v30 + 24) = v28;
  sub_1C97AA878();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1C97F038C;
  *(v31 + 24) = v30;
  a13 = sub_1C97F075C;
  a14 = v31;
  sub_1C97F07A8();
  sub_1C97F0790();
  a11 = v32;
  a12 = &unk_1F492F7C0;
  v33 = _Block_copy(&a9);
  v34 = v29;
  v35 = v24;
  v36 = v28;

  dispatch_sync(v34, v33);

  _Block_release(v33);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_1C97F099C();
  }
}

void sub_1C97ED934(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v30[1] = *MEMORY[0x1E69E9840];
  sub_1C999E1D4(a2, a3, a4);
  if (!v4)
  {

    sub_1C9820F98(a2, a3, v8);

    v10 = sub_1C9A0860C(v9);
    sub_1C99ED554(v10, a2);

    v11 = OBJC_IVAR____SNAudioStreamAnalyzer_ringBuffer;
    v12 = *(a1 + OBJC_IVAR____SNAudioStreamAnalyzer_ringBuffer);
    v30[0] = 0;
    v13 = [v12 capacityFramesWithError_];
    v14 = v30[0];
    if (v13)
    {
      v15 = v13;
      v16 = v30[0];
      v17 = [v15 unsignedIntValue];

      if (!v17)
      {
        return;
      }

      if (v17 >= [a2 frameLength])
      {
        v17 = [a2 frameLength];
      }

      v18 = [a2 frameLength];
      v19 = v18 - v17;
      if (v18 < v17)
      {
        __break(1u);
      }

      else
      {
        v20 = __OFADD__(a3, v19);
        v21 = a3 + v19;
        if (!v20)
        {
          v22 = objc_opt_self();
          v23 = OBJC_IVAR____SNAudioStreamAnalyzer_ringBufferWriteBufferList;
          [v22 unownedViewOfRecentFramesWithSourceBuffer:a2 destinationBuffer:*(a1 + OBJC_IVAR____SNAudioStreamAnalyzer_ringBufferWriteBufferList) numberOfRecentFrames:v17];
          v24 = *(a1 + v11);
          v25 = *(a1 + v23);
          v26 = v24;
          v27 = [v25 bufferList];
          v30[0] = 0;
          LODWORD(v25) = [v26 store:v27 frameCount:v17 frameNumber:v21 error:v30];

          v14 = v30[0];
          if (v25)
          {
            v28 = v30[0];
            return;
          }

          goto LABEL_10;
        }
      }

      __break(1u);
    }

LABEL_10:
    v29 = v14;
    sub_1C9A913C8();

    swift_willThrow();
  }
}

uint64_t sub_1C97EDB64()
{
  v1 = *&v0[OBJC_IVAR____SNAudioStreamAnalyzer_analyzerQueue];
  sub_1C97F07FC();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  sub_1C97AA878();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C97F03F8;
  *(v3 + 24) = v2;
  v10[4] = sub_1C97F075C;
  v10[5] = v3;
  sub_1C97F07A8();
  sub_1C97F0790();
  v10[2] = v4;
  v10[3] = &unk_1F492F838;
  v5 = _Block_copy(v10);
  v6 = v1;
  v7 = v0;

  dispatch_sync(v6, v5);

  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C97EDC94(uint64_t a1)
{

  sub_1C98215BC();

  return sub_1C999E274();
}

uint64_t sub_1C97EDD94()
{
  v1 = *(v0 + OBJC_IVAR____SNAudioStreamAnalyzer_analyzerQueue);
  sub_1C9A93028();

  return v3;
}

uint64_t sub_1C97EDE0C@<X0>(uint64_t *a2@<X8>)
{

  v3 = sub_1C982184C();
  v5 = v4;

  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C97EDE70(uint64_t a1, uint64_t a2)
{

  sub_1C98218A4();
}

uint64_t sub_1C97EDF98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C97EDFB0()
{
  v1 = [v0 impl];
  sub_1C9A93318();
  swift_unknownObjectRelease();
  v3 = type metadata accessor for _SNAudioStreamAnalyzer(v2);
  sub_1C97F0A20(v3, v4, v5, v3, v6, v7, v8, v9, v11, v12);
  swift_dynamicCast();
  return v13;
}

unint64_t sub_1C97EE024(uint64_t a1, uint64_t a2)
{
  result = sub_1C97BDEE0();
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v10 = 0;
LABEL_13:
      swift_unknownObjectRelease();
      return v10;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v9 = sub_1C97E87BC();
    v7 = MEMORY[0x1CCA912B0](v9);
LABEL_6:
    result = swift_unknownObjectRelease();
    if (v7 == a2)
    {
      v10 = v6;
      goto LABEL_13;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_15;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(a1 + 8 * v6 + 32);
    swift_unknownObjectRetain();
    goto LABEL_6;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

id sub_1C97EE100(void *a1, uint64_t a2)
{
  v3 = v2;
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v5 = [v3 initWithFormat:a1 capacityFrames:a2 error:v9];
  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1C97EE1CC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C9A323E4();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  sub_1C97A2CEC(&qword_1EC3C7B08, &qword_1C9A9FF40);
  sub_1C9A93748();

  v6 = *(*(v10 + 56) + 8 * v5);
  sub_1C97BD318(v7, 0, &qword_1EC3C5690, 0x1E696B098);
  sub_1C97A2CEC(&qword_1EC3C7B10, qword_1C9A9FF48);
  sub_1C97EFF00(v8);
  sub_1C9A93768();
  *v2 = v10;
  return v6;
}

uint64_t sub_1C97EE2CC@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1C9A32424(a2);
  if (v5)
  {
    v6 = result;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1C97A2CEC(&qword_1EC3C7BC0, &qword_1C9AA0028);
    sub_1C9A93748();
    v7 = *(v14 + 56) + 48 * v6;
    v12 = *v7;
    v13 = *(v7 + 16);
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    sub_1C97A2CEC(&qword_1EC3C7BC8, &qword_1C9AA0030);
    result = sub_1C9A93768();
    v11 = v12;
    v10 = v13;
    *v2 = v14;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v11 = xmmword_1C9A9C440;
    v10 = 0uLL;
  }

  *a1 = v11;
  *(a1 + 16) = v10;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  return result;
}

uint64_t sub_1C97EE3D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1C9A32230(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  sub_1C97A2CEC(&qword_1EC3C7C08, &qword_1C9AA0078);
  sub_1C9A93748();

  v7 = *(*(v9 + 56) + 8 * v6);
  sub_1C97F09E4();
  sub_1C9A93768();
  *v3 = v9;
  return v7;
}

uint64_t sub_1C97EE500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = sub_1C9A32468();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = v9;
  swift_isUniquelyReferenced_nonNull_native();
  v21 = *v5;
  v12 = sub_1C97A7890();
  sub_1C97A2CEC(v12, v13);
  sub_1C9A93748();
  v14 = *(v21 + 48);
  v15 = sub_1C9A91748();
  sub_1C97DA940();
  (*(v16 + 8))(v14 + *(v16 + 72) * v11, v15);
  v17 = *(*(v21 + 56) + 8 * v11);
  sub_1C97A2CEC(a4, a5);
  sub_1C97F0854();
  sub_1C97F03B0(v18, v19, MEMORY[0x1E69695B8]);
  sub_1C9A93768();
  *v8 = v21;
  return v17;
}

unint64_t sub_1C97EE640()
{
  v1 = sub_1C9A32468();
  v3 = v2;
  if (v2)
  {
    v4 = v1;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *v0;
    sub_1C97A2CEC(&unk_1EC3C7B70, &qword_1C9A9FFE0);
    sub_1C9A93748();
    v5 = *(v12 + 48);
    v6 = sub_1C9A91748();
    sub_1C97DA940();
    (*(v7 + 8))(v5 + *(v7 + 72) * v4, v6);
    v8 = *(*(v12 + 56) + 4 * v4);
    sub_1C97F0854();
    sub_1C97F03B0(v9, v10, MEMORY[0x1E69695B8]);
    sub_1C9A93768();
    *v0 = v12;
  }

  else
  {
    v8 = 0;
  }

  return v8 | (((v3 & 1) == 0) << 32);
}

unint64_t sub_1C97EE774(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C9A323A0(a3 & 1);
  sub_1C97F077C();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_1C9A93BF8();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  v12 = sub_1C97A2CEC(&unk_1EC3C7B40, &unk_1C9A9FFA0);
  if (sub_1C97F0898(v12))
  {
    sub_1C9A323A0(a3 & 1);
    sub_1C97F096C();
    if (!v14)
    {
      goto LABEL_14;
    }

    v10 = v13;
  }

  if (v11)
  {
    v15 = (*(*v3 + 56) + 16 * v10);
    *v15 = a1;
    v15[1] = a2;
    sub_1C97F0AAC();
  }

  else
  {
    sub_1C97F0AAC();

    return sub_1C97EF3A0(v18, v19, v20, v21, v22);
  }
}

id sub_1C97EE878(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1C9A323E4();
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  sub_1C97A2CEC(&qword_1EC3C7B08, &qword_1C9A9FF40);
  if ((sub_1C9A93748() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1C9A323E4();
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    sub_1C97BD318(v9, 0, &qword_1EC3C5690, 0x1E696B098);
    result = sub_1C9A93BF8();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    *(v14[7] + 8 * v10) = a1;
  }

  else
  {
    sub_1C97EF3EC(v10, a2, a1, v14);

    return a2;
  }
}

id sub_1C97EE9B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v10 = *v5;
  v11 = sub_1C9A323E4();
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  sub_1C97A2CEC(&qword_1EC3C7B18, &qword_1C9A9FF68);
  if ((sub_1C9A93748() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_1C9A323E4();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    sub_1C97BD318(v13, 0, &qword_1EC3C5690, 0x1E696B098);
    result = sub_1C9A93BF8();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v6;
  if (v15)
  {
    v19 = (v18[7] + 24 * v14);
    *v19 = a1;
    v19[1] = a2;
    v19[2] = a3;
  }

  else
  {
    sub_1C97EF430(v14, a4, a1, a2, a3, v18);

    return a4;
  }
}

uint64_t sub_1C97EEB2C()
{
  sub_1C97BE460();
  sub_1C97F08F4(v5, v6, v7, v8);
  sub_1C97F077C();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_1C9A93BF8();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  v14 = sub_1C97A2CEC(&qword_1EC3C7BB0, &qword_1C9AA0018);
  if (sub_1C97F0928(v14))
  {
    sub_1C9A32230(v3, v0);
    sub_1C97F096C();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  if (v13)
  {
    v17 = (*(*v4 + 56) + 16 * v12);
    *v17 = v2;
    v17[1] = v1;
    sub_1C97BE478();
  }

  else
  {
    v20 = sub_1C97F09CC();
    sub_1C97EF480(v20, v21, v22, v23, v24, v25);
    sub_1C97BE478();
  }
}

uint64_t sub_1C97EEC24(uint64_t a1, uint64_t a2, char a3, double a4)
{
  sub_1C9A32230(a1, a2);
  sub_1C97F077C();
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v8;
  v12 = v9;
  sub_1C97A2CEC(&qword_1EC3C7C08, &qword_1C9AA0078);
  result = sub_1C9A93748();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1C9A32230(a1, a2);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_11:
    result = sub_1C9A93BF8();
    __break(1u);
    return result;
  }

  v11 = result;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    *(v15[7] + 8 * v11) = a4;
  }

  else
  {
    sub_1C97EF4CC(v11, a1, a2, v15, a4);
  }

  return result;
}

void sub_1C97EED58()
{
  sub_1C97BE460();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v27 = v7;
  v28 = v8;
  v26 = sub_1C9A91748();
  sub_1C97AE9C8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEAD8();
  v14 = v13 - v12;
  sub_1C9A32468();
  sub_1C97F077C();
  if (v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v15;
  v19 = v16;
  v20 = sub_1C97A2CEC(v4, v2);
  if ((sub_1C97F0928(v20) & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = sub_1C9A32468();
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_11:
    sub_1C9A93BF8();
    __break(1u);
    return;
  }

  v18 = v21;
LABEL_5:
  v23 = *v0;
  if (v19)
  {
    v24 = (*(v23 + 56) + 16 * v18);
    *v24 = v27;
    v24[1] = v28;
    sub_1C97BE478();
  }

  else
  {
    (*(v10 + 16))(v14, v6, v26);
    sub_1C97EF514(v18, v14, v27, v28, v23);
    sub_1C97BE478();
  }
}

void sub_1C97EEF18()
{
  sub_1C97BE460();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v25 = v8;
  v24 = sub_1C9A91748();
  sub_1C97AE9C8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEAD8();
  sub_1C97F0A8C();
  sub_1C97F077C();
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v12;
  v16 = v13;
  v17 = sub_1C97A2CEC(v5, v3);
  if ((sub_1C97F0898(v17) & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_1C9A32468();
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_11:
    sub_1C9A93BF8();
    __break(1u);
    return;
  }

  v15 = v18;
LABEL_5:
  v20 = *v0;
  if (v16)
  {
    *(*(v20 + 56) + 8 * v15) = v25;
    sub_1C97BE478();
  }

  else
  {
    (*(v10 + 16))(v1, v7, v24);
    v22 = sub_1C97A7890();
    sub_1C97EF5BC(v22, v23, v25, v20);
    sub_1C97BE478();
  }
}

void sub_1C97EF084()
{
  sub_1C97BE460();
  v2 = v1;
  sub_1C9A91748();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEAD8();
  sub_1C97F0A8C();
  sub_1C97F077C();
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v4;
  v8 = v5;
  v9 = sub_1C97A2CEC(&unk_1EC3C7B70, &qword_1C9A9FFE0);
  if (sub_1C97F0898(v9))
  {
    v10 = sub_1C9A32468();
    if ((v8 & 1) == (v11 & 1))
    {
      v7 = v10;
      goto LABEL_5;
    }

LABEL_10:
    sub_1C9A93BF8();
    __break(1u);
    return;
  }

LABEL_5:
  v12 = *v0;
  if (v8)
  {
    *(v12[7] + 4 * v7) = v2;
  }

  else
  {
    sub_1C97F0960();
    v13();
    v14 = sub_1C97A7890();
    sub_1C97EF65C(v14, v15, v2, v12);
  }

  sub_1C97BE478();
}

uint64_t sub_1C97EF1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C9A32230(a2, a3);
  sub_1C97F077C();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  v12 = sub_1C97A2CEC(&qword_1EC3C7B50, &qword_1C9A9FFC0);
  if ((sub_1C97F0898(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1C97AEB30();
  v15 = sub_1C9A32230(v13, v14);
  if ((v11 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_1C9A93BF8();
    __break(1u);
    return result;
  }

  v10 = v15;
LABEL_5:
  v17 = *v3;
  if (v11)
  {
    *(v17[7] + 8 * v10) = a1;
    sub_1C97F0AAC();
  }

  else
  {
    sub_1C97EF714(v10, a2, a3, a1, v17);
    sub_1C97F0AAC();
  }
}

void sub_1C97EF2D0()
{
  sub_1C97BE460();
  sub_1C97F08F4(v5, v6, v7, v8);
  sub_1C97F077C();
  if (v11)
  {
    __break(1u);
LABEL_12:
    sub_1C9A93BF8();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  v14 = sub_1C97A2CEC(&qword_1EC3C7B68, &qword_1C9A9FFD8);
  if (sub_1C97F0928(v14))
  {
    sub_1C9A32230(v3, v0);
    sub_1C97F096C();
    if (!v16)
    {
      goto LABEL_12;
    }

    v12 = v15;
  }

  if (v13)
  {
    v17 = (*(*v4 + 56) + 16 * v12);
    *v17 = v2;
    v17[1] = v1;
    sub_1C97BE478();
  }

  else
  {
    v18 = sub_1C97F09CC();
    sub_1C97EF75C(v18, v19, v20, v21, v22, v23);
    sub_1C97BE478();
  }
}

unint64_t sub_1C97EF3A0(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2 & 1;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

unint64_t sub_1C97EF3EC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

unint64_t sub_1C97EF430(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t sub_1C97EF480(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1C97F0948(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

unint64_t sub_1C97EF4CC(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1C97EF514(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C97F0948(a1, a5 + 8 * (a1 >> 6));
  v11 = *(v10 + 48);
  sub_1C9A91748();
  sub_1C97DA940();
  result = (*(v12 + 32))(v11 + *(v12 + 72) * a1, a2);
  v14 = (*(a5 + 56) + 16 * a1);
  *v14 = a3;
  v14[1] = a4;
  v15 = *(a5 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v17;
  }

  return result;
}

uint64_t sub_1C97EF5BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C97F0948(a1, a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  sub_1C9A91748();
  sub_1C97DA940();
  result = (*(v10 + 32))(v9 + *(v10 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  v12 = *(a4 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }

  return result;
}

uint64_t sub_1C97EF65C(unint64_t a1, uint64_t a2, int a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1C9A91748();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 4 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1C97EF714(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_1C97EF75C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1C97EF7A8(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  swift_unknownObjectRetain();
  result = sub_1C97EE024(v5, a2);
  v8 = result;
  if (v2)
  {
    goto LABEL_38;
  }

  if (v7)
  {
    v8 = sub_1C97BDEE0();
LABEL_38:
    swift_unknownObjectRelease();
    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      result = v5 >> 62 ? sub_1C9A934C8() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == result)
      {
        goto LABEL_38;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v18 = sub_1C97A7890();
        v10 = MEMORY[0x1CCA912B0](v18);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          break;
        }

        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v10 = *(v5 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      result = swift_unknownObjectRelease();
      if (v10 != a2)
      {
        if (v8 != v9)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1CCA912B0](v8, v5);
            v12 = sub_1C97A7890();
            v13 = MEMORY[0x1CCA912B0](v12);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_44;
            }

            v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v14)
            {
              goto LABEL_45;
            }

            if (v9 >= v14)
            {
              goto LABEL_46;
            }

            v11 = *(v5 + 32 + 8 * v8);
            v13 = *(v5 + 32 + 8 * v9);
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
          {
            v5 = sub_1C97E8450();
            v15 = (v5 >> 62) & 1;
          }

          else
          {
            LODWORD(v15) = 0;
          }

          v16 = v5 & 0xFFFFFFFFFFFFFF8;
          *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v13;
          result = swift_unknownObjectRelease();
          if ((v5 & 0x8000000000000000) != 0 || v15)
          {
            result = sub_1C97E8450();
            v5 = result;
            v16 = result & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          if (v9 >= *(v16 + 16))
          {
            goto LABEL_43;
          }

          *(v16 + 8 * v9 + 32) = v11;
          result = swift_unknownObjectRelease();
          *a1 = v5;
        }

        v17 = __OFADD__(v8++, 1);
        if (v17)
        {
          goto LABEL_42;
        }
      }

      v17 = __OFADD__(v9++, 1);
      if (v17)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C97EFA5C(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;
  v10 = *v5;
  result = sub_1C97B7904(*v5);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v9))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v9 - a2;
  if (__OFSUB__(0, a2 - v9))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = a3(v10);
  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  a4(result, 1);
  v14 = sub_1C97AEB30();

  return a5(v14);
}

void sub_1C97EFB28(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C98D0A80(v4 - v6, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 40 * result);
  sub_1C97A2CEC(&qword_1EC3C7920, &unk_1C9AA0060);
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    sub_1C97F0AAC();
    return;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  sub_1C97E84F8(v9 + 40 * a2, v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1C97EFC18(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for SNAnalyzerInfo(a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_1C9A934C8();
LABEL_6:
  if (__OFSUB__(result, v7))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1C978D33C(&v8[v7], result - v7, (v6 + 8 * v4));
  if (v9)
  {
    result = sub_1C9A934C8();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_18;
  }

  v5[2] = result + v10;
LABEL_12:
  if (v4 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C97EFD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1C97A2CEC(&qword_1EC3CB9D0, &qword_1C9A9FF28);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_1C9A934C8();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1C978D33C(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_1C9A934C8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_1C97EFE44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = *v6;
  v12 = v11 + 32 + 16 * result;
  sub_1C97A2CEC(a4, a5);
  sub_1C97F09E4();
  swift_arrayDestroy();
  v13 = __OFSUB__(a3, v7);
  v14 = a3 - v7;
  if (v13)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *(v11 + 16);
  if (__OFSUB__(v15, a2))
  {
    goto LABEL_11;
  }

  a6(v11 + 32 + 16 * a2, v15 - a2, v12 + 16 * a3);
  v16 = *(v11 + 16);
  v13 = __OFADD__(v16, v14);
  v17 = v16 + v14;
  if (v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (a3 <= 0)
  {
    sub_1C97F0AAC();
    return;
  }

LABEL_13:
  __break(1u);
}

unint64_t sub_1C97EFF00(double a1)
{
  result = qword_1EC3C5688;
  if (!qword_1EC3C5688)
  {
    sub_1C97BD318(a1, 255, &qword_1EC3C5690, 0x1E696B098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C5688);
  }

  return result;
}

uint64_t sub_1C97F0008()
{

  swift_unknownObjectRelease();

  sub_1C97A7DFC();

  return swift_deallocObject();
}

uint64_t sub_1C97F0058(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C97F00A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  sub_1C97BD318(a7, 0, &qword_1EC3C5690, 0x1E696B098);
  v20[3] = swift_getObjectType();
  v20[0] = a2;
  swift_unknownObjectRetain();
  sub_1C97ED038(v20);
  v14 = v13;
  v15 = sub_1C9878364(v13, a3);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1C97F01F0(a1, v16, a4, a5, a6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20[0] = a3;
  sub_1C97EE878(v17, v14, isUniquelyReferenced_nonNull_native);

  return v20[0];
}

uint64_t sub_1C97F01A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C97F01F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C97A2CEC(&unk_1EC3C68D0, &qword_1C9A9D388);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  [a1 copy];
  sub_1C9A93318();
  swift_unknownObjectRelease();
  sub_1C97A2CEC(&unk_1EC3C7580, &qword_1C9A9D390);
  swift_dynamicCast();

  sub_1C98CFFB8(inited);
  sub_1C98202E4(a2, a3, a4, a5);
  v12 = v11;

  return v12;
}

uint64_t sub_1C97F02FC()
{

  swift_unknownObjectRelease();
  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C97F0340(void (*a1)(void))
{
  a1(*(v1 + 24));
  sub_1C97AA878();

  return swift_deallocObject();
}

uint64_t sub_1C97F03B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C97F043C()
{
  result = qword_1EC3C7BE0;
  if (!qword_1EC3C7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7BE0);
  }

  return result;
}

uint64_t sub_1C97F0490(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C97F04EC()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 16))();
  return v1(v2);
}

unint64_t sub_1C97F0590()
{
  result = qword_1EC3D25A0;
  if (!qword_1EC3D25A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D25A0);
  }

  return result;
}

unint64_t sub_1C97F05E4()
{
  result = qword_1EC3C7C00;
  if (!qword_1EC3C7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7C00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for _SNAudioStreamAnalyzer.DomainError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C97F06E8()
{
  result = qword_1EC3C7C10;
  if (!qword_1EC3C7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7C10);
  }

  return result;
}

uint64_t sub_1C97F07D8(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t sub_1C97F0898(uint64_t a1)
{

  return sub_1C9A93748();
}

unint64_t sub_1C97F08F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C9A32230(a3, a4);
}

uint64_t sub_1C97F0928(uint64_t a1)
{

  return sub_1C9A93748();
}

void sub_1C97F09F0()
{

  sub_1C97B7D80(0, v0 & ~(v0 >> 63), 0);
}

void sub_1C97F0A38(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = v4 + v3;
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 16) = v2;
}

uint64_t sub_1C97F0A4C(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v2;
}

uint64_t sub_1C97F0A6C(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

unint64_t sub_1C97F0A8C()
{

  return sub_1C9A32468();
}

uint64_t sub_1C97F0AC0()
{
  sub_1C97FB218();
  sub_1C9A92528();
}

uint64_t sub_1C97F0B20(uint64_t a1, unsigned __int8 a2)
{
  sub_1C9A92528();
}

uint64_t sub_1C97F0BA0(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((sub_1C994A194(a1 & 1, a3 & 1) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SNMLModelHashableUncodableWrapper(v6);
  return sub_1C9889C28(a2, a4) & 1;
}

uint64_t sub_1C97F0BFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001C9AD5580 == a2;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C9AD55A0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

unint64_t sub_1C97F0CD0(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000014;
  }
}

void sub_1C97F0D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97AEB94();
  v26 = v25;
  sub_1C97A2CEC(&qword_1EC3C7F48, &qword_1C9AA1328);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C97AEA4C();
  sub_1C97BE20C(v26, v26[3]);
  sub_1C97FAD9C();
  sub_1C9A93DD8();
  sub_1C97FAE44();
  sub_1C9A93A18();
  if (!v24)
  {
    type metadata accessor for SNMLModelHashableUncodableWrapper(v28);
    sub_1C97FB1D4(&unk_1EC3C7EB0);
    sub_1C9A93A18();
  }

  v29 = sub_1C97AEB30();
  v30(v29);
  sub_1C97AEB5C();
}

uint64_t sub_1C97F0E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C97FB218();
  sub_1C9A92528();

  v3 = sub_1C98884DC();
  sub_1C97FB388(v3, v4);
}

uint64_t sub_1C97F0F04(uint64_t a1)
{
  sub_1C97BE32C(a1);
  sub_1C97FB218();
  sub_1C9A92528();

  sub_1C98884DC();
  sub_1C9A92528();

  return sub_1C9A93D18();
}

uint64_t sub_1C97F0F9C(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3C7F30, &qword_1C9AA1320);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97FB2C8();
  sub_1C97BE20C(a1, a1[3]);
  sub_1C97FAD9C();
  sub_1C9A93DB8();
  sub_1C97FADF0();
  sub_1C9A938F8();
  type metadata accessor for SNMLModelHashableUncodableWrapper(v3);
  sub_1C97FB190(&unk_1EC3C7E60);
  sub_1C9A938F8();
  v4 = sub_1C97FB300();
  v5(v4);
  sub_1C97A592C(a1);
  return v7;
}

BOOL sub_1C97F1160(uint64_t *a1, uint64_t *a2, double a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  v7 = *a2;
  v6 = a2[1];
  v8 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v22 = sub_1C97AEB30();
      sub_1C97F5D50(v22, v23, 0);
      v24 = sub_1C97FB154();
      sub_1C97F5D50(v24, v25, 0);
      if (sub_1C994A194(v4 & 1, v7 & 1))
      {
        type metadata accessor for SNMLModelHashableUncodableWrapper(v26);
        v27 = sub_1C9889C28(v3, v6);
        v28 = sub_1C97FB154();
        sub_1C97A6B9C(v28, v29, 0);
        v30 = sub_1C97AEB30();
        sub_1C97A6B9C(v30, v31, 0);
        return (v27 & 1) != 0;
      }

      v61 = sub_1C97FB154();
      sub_1C97A6B9C(v61, v62, 0);
      v46 = sub_1C97AEB30();
      v48 = 0;
LABEL_17:
      sub_1C97A6B9C(v46, v47, v48);
      return 0;
    }

    goto LABEL_16;
  }

  if (v5 != 1)
  {
    if (v8 == 2)
    {
      type metadata accessor for SNMLModelHashableUncodableWrapper(a3);
      v33 = sub_1C97AEB30();
      sub_1C97F5D50(v33, v34, 2);
      v35 = sub_1C97FB154();
      sub_1C97F5D50(v35, v36, 2);
      v10 = sub_1C9889C28(v4, v7);
      v37 = sub_1C97FB154();
      sub_1C97A6B9C(v37, v38, 2);
      v19 = sub_1C97AEB30();
      v21 = 2;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (v8 != 1)
  {
LABEL_16:
    v40 = sub_1C97AEB30();
    sub_1C97F5D50(v40, v41, v8);
    v42 = sub_1C97FB154();
    sub_1C97F5D50(v42, v43, v5);
    v44 = sub_1C97FB154();
    sub_1C97A6B9C(v44, v45, v5);
    v46 = sub_1C97AEB30();
    v48 = v8;
    goto LABEL_17;
  }

  if (v4 != v7 || v3 != v6)
  {
    sub_1C97FB154();
    v10 = sub_1C9A93B18();
    v11 = sub_1C97AEB30();
    sub_1C97F5D50(v11, v12, 1);
    v13 = sub_1C97FB0FC();
    sub_1C97F5D50(v13, v14, v15);
    v16 = sub_1C97FB0FC();
    sub_1C97A6B9C(v16, v17, v18);
    v19 = sub_1C97AEB30();
    v21 = 1;
LABEL_15:
    sub_1C97A6B9C(v19, v20, v21);
    return v10 & 1;
  }

  v32 = 1;
  v49 = sub_1C97FB0FC();
  sub_1C97F5D50(v49, v50, v51);
  v52 = sub_1C97FB0FC();
  sub_1C97F5D50(v52, v53, v54);
  v55 = sub_1C97FB0FC();
  sub_1C97A6B9C(v55, v56, v57);
  v58 = sub_1C97FB0FC();
  sub_1C97A6B9C(v58, v59, v60);
  return v32;
}

uint64_t sub_1C97F133C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C9AD5540 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C9AD54E0 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001C9AD5560 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

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

unint64_t sub_1C97F1454(char a1)
{
  result = 0xD000000000000010;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000012;
    }

    else
    {
      return 0xD000000000000015;
    }
  }

  return result;
}

void sub_1C97F14AC()
{
  sub_1C97AEB94();
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3C7E90, &qword_1C9AA0D90);
  sub_1C97AE9C8();
  v42 = v6;
  v43 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v38 - v8;
  sub_1C97A2CEC(&qword_1EC3C7E98, &qword_1C9AA0D98);
  sub_1C97AE9C8();
  v39 = v10;
  v40 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97FB2D8();
  v12 = sub_1C97A2CEC(&qword_1EC3C7EA0, &qword_1C9AA0DA0);
  sub_1C97AE9C8();
  v38 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97FB2C8();
  sub_1C97A2CEC(&qword_1EC3C7EA8, &qword_1C9AA0DA8);
  sub_1C97AE9C8();
  v46 = v16;
  v47 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = *v0;
  v44 = v0[1];
  v45 = v20;
  v21 = *(v0 + 16);
  v22 = v4[4];
  sub_1C97BE20C(v4, v4[3]);
  sub_1C97FA41C();
  sub_1C9A93DD8();
  if (v21)
  {
    if (v21 == 1)
    {
      LOBYTE(v48) = 1;
      v23 = sub_1C97FA4C4();
      sub_1C97FB240(&type metadata for DetectorVariant.DetectorIdentifierCodingKeys, &v48, v24, v25, v23);
      v48 = v45;
      v49 = v44;
      sub_1C97A2CEC(&qword_1EC3C7E70, &qword_1C9AA0D88);
      sub_1C97FB178();
      sub_1C97FA518(v26);
      v27 = v40;
      sub_1C9A93A18();
      v28 = *(v39 + 8);
      v29 = v2;
    }

    else
    {
      LOBYTE(v48) = 2;
      v33 = sub_1C97FA470();
      v34 = v41;
      sub_1C97FB240(&type metadata for DetectorVariant.EndToEndDetectorModelCodingKeys, &v48, v35, v36, v33);
      v48 = v45;
      type metadata accessor for SNMLModelHashableUncodableWrapper(v37);
      sub_1C97FB1D4(&unk_1EC3C7EB0);
      v27 = v43;
      sub_1C9A93A18();
      v28 = *(v42 + 8);
      v29 = v34;
    }

    v28(v29, v27);
  }

  else
  {
    LOBYTE(v48) = 0;
    v30 = sub_1C97FA570();
    sub_1C97FB240(&type metadata for DetectorVariant.ComposedDetectorCodingKeys, &v48, v31, v32, v30);
    LOBYTE(v48) = v45 & 1;
    v49 = v44;
    sub_1C97FA654();
    sub_1C9A93A18();
    (*(v38 + 8))(v1, v12);
  }

  (*(v46 + 8))(v19, v22);
  sub_1C97AEB5C();
}

uint64_t sub_1C97F1884(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1CCA91980](1);

      return sub_1C9A92528();
    }

    MEMORY[0x1CCA91980](2);
  }

  else
  {
    MEMORY[0x1CCA91980](0);
    sub_1C97FB218();
    sub_1C9A92528();
  }

  v3 = sub_1C98884DC();
  sub_1C97FB388(v3, v4);
}

uint64_t sub_1C97F1974(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_1C97BE32C(a1);
  sub_1C97F1884(v4);
  return sub_1C9A93D18();
}

void sub_1C97F19C0()
{
  sub_1C97AEB94();
  v4 = v3;
  v50 = v5;
  v49[5] = sub_1C97A2CEC(&qword_1EC3C7E28, &qword_1C9AA0D60);
  sub_1C97AE9C8();
  v49[8] = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v51 = v49 - v8;
  sub_1C97A2CEC(&qword_1EC3C7E30, &qword_1C9AA0D68);
  sub_1C97AE9C8();
  v49[6] = v9;
  v49[7] = v10;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97A2CEC(&qword_1EC3C7E38, &qword_1C9AA0D70);
  sub_1C97AE9C8();
  v49[4] = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97FB2D8();
  v14 = sub_1C97A2CEC(&qword_1EC3C7E40, &qword_1C9AA0D78);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C97E86E4();
  v16 = v4[3];
  v52 = v4;
  sub_1C97BE20C(v4, v16);
  sub_1C97FA41C();
  sub_1C9A93DB8();
  if (v0)
  {
    goto LABEL_9;
  }

  v49[3] = v2;
  sub_1C9A93958();
  sub_1C98EE524();
  if (v18 == v19 >> 1)
  {
LABEL_8:
    v28 = sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v30 = v29;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v30 = &type metadata for DetectorVariant;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    v31 = sub_1C97FB128();
    v32(v31);
LABEL_9:
    v40 = v52;
LABEL_10:
    sub_1C97A592C(v40);
    sub_1C97AEB5C();
    return;
  }

  v49[1] = 0;
  v49[2] = v1;
  if (v18 < (v19 >> 1))
  {
    v20 = v14;
    v21 = *(v17 + v18);
    sub_1C98EE520();
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    if (v23 == v25 >> 1)
    {
      if (v21)
      {
        if (v21 == 1)
        {
          LOBYTE(v53) = 1;
          sub_1C97FA4C4();
          sub_1C97FB348(&type metadata for DetectorVariant.DetectorIdentifierCodingKeys, &v53, v20);
          v26 = v50;
          sub_1C97A2CEC(&qword_1EC3C7E70, &qword_1C9AA0D88);
          sub_1C97FB160();
          sub_1C97FA518(v27);
          sub_1C9A938F8();
          swift_unknownObjectRelease();
          v34 = sub_1C97FB1F8();
          v35(v34);
          v36 = sub_1C97FB128();
          v37(v36);
          v38 = v53;
          v39 = v54;
          v40 = v52;
        }

        else
        {
          LOBYTE(v53) = 2;
          sub_1C97FA470();
          sub_1C97FB348(&type metadata for DetectorVariant.EndToEndDetectorModelCodingKeys, &v53, v20);
          v26 = v50;
          type metadata accessor for SNMLModelHashableUncodableWrapper(v33);
          sub_1C97FB190(&unk_1EC3C7E60);
          sub_1C9A938F8();
          swift_unknownObjectRelease();
          v45 = sub_1C97FB1F8();
          v46(v45);
          v47 = sub_1C97FB1B4();
          v48(v47);
          v39 = 0;
          v40 = v52;
          v38 = v53;
        }
      }

      else
      {
        LOBYTE(v53) = 0;
        sub_1C97FA570();
        sub_1C97FB348(&type metadata for DetectorVariant.ComposedDetectorCodingKeys, &v53, v20);
        sub_1C97FA5C4();
        sub_1C9A938F8();
        swift_unknownObjectRelease();
        v41 = sub_1C97FB3B8();
        v42(v41);
        v43 = sub_1C97FB1B4();
        v44(v43);
        v38 = v53;
        v39 = v54;
        v40 = v52;
        v26 = v50;
      }

      *v26 = v38;
      *(v26 + 8) = v39;
      *(v26 + 16) = v21;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C97F2094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97F0BFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C97F20BC(uint64_t a1)
{
  v2 = sub_1C97FAD9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97F20F8(uint64_t a1)
{
  v2 = sub_1C97FAD9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97F2134@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C97F0F9C(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1C97F21A0()
{
  sub_1C9A93CC8();
  sub_1C9A92528();

  sub_1C9889CF0(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C97F2264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97F133C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C97F228C(uint64_t a1)
{
  v2 = sub_1C97FA41C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97F22C8(uint64_t a1)
{
  v2 = sub_1C97FA41C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97F2304(uint64_t a1)
{
  v2 = sub_1C97FA570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97F2340(uint64_t a1)
{
  v2 = sub_1C97FA570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97F237C(uint64_t a1)
{
  v2 = sub_1C97FA4C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97F23B8(uint64_t a1)
{
  v2 = sub_1C97FA4C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97F23F4(uint64_t a1)
{
  v2 = sub_1C97FA470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97F2430(uint64_t a1)
{
  v2 = sub_1C97FA470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97F24A4()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1C9A93CC8();
  sub_1C97F1884(v3);
  return sub_1C9A93D18();
}

uint64_t sub_1C97F24F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v2;
  v22[2] = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v9 = *(a2 + 16);
  v21[0] = *a2;
  v21[1] = v9;
  v21[2] = *(a2 + 32);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a2 + 72);
  v15 = *(a2 + 80);
  v14 = *(a2 + 88);
  v16 = static TimeRange.== infix(_:_:)(v22, v21);
  result = 0;
  if (v16 && v3 == v10)
  {
    if (v4 == v11 && v5 == v12)
    {
      if (v6 != v13)
      {
        return 0;
      }
    }

    else
    {
      sub_1C97E87BC();
      v19 = sub_1C9A93B18();
      result = 0;
      if (v19 & 1) == 0 || ((v6 ^ v13))
      {
        return result;
      }
    }

    if (v8)
    {
      if (v14)
      {
        v20 = v7 == v15 && v8 == v14;
        if (v20 || (sub_1C9A93B18() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v14)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C97F2624(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465746365746564 && a2 == 0xE800000000000000;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x80000001C9AD54E0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9A93B18();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C97F27E0(char a1)
{
  result = 0x676E6152656D6974;
  switch(a1)
  {
    case 1:
      result = 0x6E656469666E6F63;
      break;
    case 2:
      result = 0x696669746E656469;
      break;
    case 3:
      result = 0x6465746365746564;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C97F2890(void *a1)
{
  sub_1C97A2CEC(&unk_1EC3C7CF0, &qword_1C9AA06E0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEA4C();
  sub_1C97BE20C(a1, a1[3]);
  sub_1C97F998C();
  sub_1C9A93DD8();
  sub_1C97BD12C();
  sub_1C97BE02C();
  sub_1C9A93A18();
  if (!v1)
  {
    sub_1C97BE02C();
    sub_1C9A939E8();
    sub_1C97BE02C();
    sub_1C9A939C8();
    sub_1C97BE02C();
    sub_1C9A939D8();
    sub_1C97BE02C();
    sub_1C9A93998();
  }

  v4 = sub_1C97AEB30();
  v5(v4);
  sub_1C97BE538();
}

uint64_t sub_1C97F2A98(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 88);
  MEMORY[0x1CCA919B0](*v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  v7 = 0.0;
  if (v5 != 0.0)
  {
    v7 = v5;
  }

  MEMORY[0x1CCA919B0](*&v7);
  sub_1C9A92528();
  sub_1C9A93CE8();
  if (!v6)
  {
    return sub_1C9A93CE8();
  }

  sub_1C9A93CE8();

  return sub_1C9A92528();
}

uint64_t sub_1C97F2BD4(uint64_t a1)
{
  sub_1C97BE32C(a1);
  sub_1C97F2A98(v2);
  return sub_1C9A93D18();
}

void sub_1C97F2C0C(void *a1@<X0>, void *a2@<X8>)
{
  v22 = sub_1C97A2CEC(&qword_1EC3C7CD8, &qword_1C9AA06D8);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97E86E4();
  sub_1C97BE20C(a1, a1[3]);
  v9 = sub_1C97F998C();
  sub_1C97FB364(&type metadata for SoundDetection.Result.CodingKeys, v10, v9);
  if (v2)
  {
    sub_1C97A592C(a1);
  }

  else
  {
    v32 = 0;
    sub_1C97BD0D8();
    sub_1C97FB234();
    sub_1C9A938F8();
    v36 = v33;
    v37 = v34;
    v38 = v35;
    sub_1C97FB13C(1);
    sub_1C9A938C8();
    v12 = v11;
    sub_1C97FB13C(2);
    v13 = sub_1C9A938A8();
    v15 = v14;
    v21 = v13;
    sub_1C97FB13C(3);
    v20 = sub_1C9A938B8();
    v31 = 4;
    sub_1C97FB234();
    v16 = sub_1C9A93878();
    v17 = v3;
    v19 = v18;
    (*(v7 + 8))(v17, v22);
    v23[0] = v33;
    v23[1] = v34;
    v23[2] = v35;
    *&v23[3] = v12;
    *(&v23[3] + 1) = v21;
    *&v23[4] = v15;
    BYTE8(v23[4]) = v20 & 1;
    *&v23[5] = v16;
    *(&v23[5] + 1) = v19;
    memcpy(a2, v23, 0x60uLL);
    sub_1C97F9900(v23, v24);
    sub_1C97A592C(a1);
    v24[0] = v36;
    v24[1] = v37;
    v24[2] = v38;
    v25 = v12;
    v26 = v21;
    v27 = v15;
    v28 = v20 & 1;
    v29 = v16;
    v30 = v19;
    sub_1C97F99E0(v24);
  }

  sub_1C97BE538();
}

uint64_t sub_1C97F2EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97F2624(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C97F2F08(uint64_t a1)
{
  v2 = sub_1C97F998C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97F2F44(uint64_t a1)
{
  v2 = sub_1C97F998C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97F2F88()
{
  sub_1C9A93CC8();
  sub_1C97F2A98(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C97F2FF8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v16 = *(a2 + 40);
  v17 = *(a1 + 40);
  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  v21[0] = v2;
  v21[1] = v3;
  v22 = v10;
  v18 = v4;
  v19[0] = v6;
  v19[1] = v7;
  v20 = v11;
  sub_1C97F5D50(v2, v3, v10);
  sub_1C97F5D50(v6, v7, v11);
  v13 = sub_1C97F1160(v21, v19, v12);
  sub_1C97A6B9C(v6, v7, v11);
  sub_1C97A6B9C(v2, v3, v10);
  if (!v13)
  {
    return 0;
  }

  v14 = v18 == v8 && v5 == v9;
  if (!v14 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  return sub_1C994A22C(v17, v16);
}

uint64_t sub_1C97F312C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F746365746564 && a2 == 0xEF746E6169726156;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656449646E756F73 && a2 == 0xEF7265696669746ELL;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x80000001C9AD5280 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

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

uint64_t sub_1C97F3254(char a1)
{
  if (!a1)
  {
    return 0x726F746365746564;
  }

  if (a1 == 1)
  {
    return 0x656449646E756F73;
  }

  return 0xD000000000000012;
}

void sub_1C97F32C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97AEB94();
  v28 = v27;
  v29 = sub_1C97A2CEC(&qword_1EC3C7D58, &qword_1C9AA0708);
  sub_1C97AE9C8();
  v36 = v30;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C97AEA4C();
  v32 = *v24;
  v33 = *(v24 + 8);
  v34 = *(v24 + 16);
  sub_1C97BE20C(v28, v28[3]);
  sub_1C97F5D50(v32, v33, v34);
  sub_1C97F9A94();
  sub_1C9A93DD8();
  sub_1C97F9B90();
  sub_1C9A93A18();
  sub_1C97A6B9C(v32, v33, v34);
  if (!v25)
  {
    sub_1C97FB3CC();

    sub_1C97A2CEC(&qword_1EC3C7D40, &qword_1C9AA0700);
    sub_1C97FB178();
    sub_1C97F9BE4(v35);
    sub_1C97BE02C();
    sub_1C9A93A18();

    sub_1C97F9C3C();
    sub_1C97BE02C();
    sub_1C9A93A18();
  }

  (*(v36 + 8))(v26, v29);
  sub_1C97BE538();
  sub_1C97AEB5C();
}

uint64_t sub_1C97F34F4(uint64_t a1)
{
  sub_1C97FB410(a1);
  sub_1C9A92528();
  sub_1C97FB208();
  sub_1C9A92528();
}

uint64_t sub_1C97F35AC()
{
  sub_1C9A93CC8();
  sub_1C97F1884(v1);
  sub_1C9A92528();
  sub_1C97FB208();
  sub_1C9A92528();

  return sub_1C9A93D18();
}

void sub_1C97F3684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  v25 = v24;
  v27 = v26;
  sub_1C97A2CEC(&qword_1EC3C7D28, &qword_1C9AA06F8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97BE20C(v25, v25[3]);
  sub_1C97F9A94();
  sub_1C9A93DB8();
  if (v23)
  {
    sub_1C97A592C(v25);
  }

  else
  {
    sub_1C97F9AE8();
    sub_1C97FB330();
    sub_1C9A938F8();
    sub_1C97A2CEC(&qword_1EC3C7D40, &qword_1C9AA0700);
    sub_1C97FB3CC();
    sub_1C97FB160();
    sub_1C97F9BE4(v29);
    sub_1C9A938F8();
    sub_1C97F9B3C();
    sub_1C97FB330();
    sub_1C9A938F8();
    v30 = sub_1C97FB2B8();
    v31(v30);
    *v27 = v32;
    *(v27 + 8) = v33;
    *(v27 + 16) = v34;
    *(v27 + 24) = v32;
    *(v27 + 32) = v33;
    *(v27 + 40) = v32;
    sub_1C97F5D50(v32, v33, v34);

    sub_1C97A592C(v25);
    sub_1C97A6B9C(v32, v33, v34);
  }

  sub_1C97BE538();
  sub_1C97AEB5C();
}

uint64_t sub_1C97F3908(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v16 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v5 = *(a1 + 16);
  memcpy(__dst, (a1 + 48), 0x41uLL);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 16);
  memcpy(__src, (a2 + 48), 0x41uLL);
  v20[0] = v3;
  v20[1] = v4;
  LOBYTE(v20[2]) = v5;
  v20[3] = v16;
  v20[4] = v14;
  LOBYTE(v20[5]) = v15;
  v19[0] = v6;
  v19[1] = v7;
  LOBYTE(v19[2]) = v11;
  v19[3] = v9;
  v19[4] = v8;
  LOBYTE(v19[5]) = v10;
  sub_1C97F5D50(v3, v4, v5);

  sub_1C97F5D50(v6, v7, v11);

  LOBYTE(a2) = sub_1C97F2FF8(v20, v19);
  sub_1C97A6B9C(v6, v7, v11);

  sub_1C97A6B9C(v3, v4, v5);

  if (a2)
  {
    memcpy(v18, __dst, 0x41uLL);
    memcpy(v17, __src, 0x41uLL);
    v12 = static AudioConfiguration.== infix(_:_:)(v18, v17);
    memcpy(v19, v17, 0x41uLL);
    sub_1C97A6264(__dst, v20);
    sub_1C97A6264(__src, v20);
    sub_1C97E8084(v19);
    memcpy(v20, v18, 0x41uLL);
    sub_1C97E8084(v20);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1C97F3AC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x80000001C9AD5500 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C9AD5520 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

unint64_t sub_1C97F3BA0(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

void sub_1C97F3BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97AEB94();
  v27 = v26;
  sub_1C97A2CEC(&qword_1EC3C7D20, &qword_1C9AA06F0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97FB2C8();
  v29 = *v24;
  v30 = *(v24 + 8);
  v31 = *(v24 + 32);
  v37 = *(v24 + 24);
  v41 = *(v24 + 40);
  v32 = *(v24 + 16);
  memcpy(v40, (v24 + 48), 0x41uLL);
  sub_1C97BE20C(v27, v27[3]);
  sub_1C97F5D50(v29, v30, v32);
  sub_1C97F9A10();

  sub_1C9A93DD8();
  v39[0] = v29;
  v39[1] = v30;
  LOBYTE(v39[2]) = v32;
  v39[3] = v37;
  v39[4] = v31;
  LOBYTE(v39[5]) = v41;
  LOBYTE(v38[0]) = 0;
  sub_1C97A6B48();
  sub_1C9A93A18();
  sub_1C97A6B9C(v29, v30, v32);

  if (v25)
  {
    sub_1C97DAA58();
    v33 = sub_1C97FB300();
    v34(v33);
  }

  else
  {
    memcpy(v39, v40, 0x41uLL);
    sub_1C97FB3CC();
    sub_1C97A6264(v40, v38);
    sub_1C97A6210();
    sub_1C9A93A18();
    memcpy(v38, v39, 0x41uLL);
    sub_1C97E8084(v38);
    v35 = sub_1C97FB300();
    v36(v35);
  }

  sub_1C97BE538();
  sub_1C97AEB5C();
}

uint64_t sub_1C97F3E1C(uint64_t a1)
{
  sub_1C97FB410(a1);
  sub_1C9A92528();
  sub_1C97FB208();
  sub_1C9A92528();

  memcpy(v4, (v1 + 48), sizeof(v4));
  return AudioConfiguration.hash(into:)(a1);
}

uint64_t sub_1C97F3EE8()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  v4 = *(v1 + 16);
  sub_1C9A93CC8();
  v6[0] = v2;
  v6[1] = v3;
  LOBYTE(v6[2]) = v4;
  sub_1C97F1884(v7);
  sub_1C9A92528();
  sub_1C97FB208();
  sub_1C9A92528();

  memcpy(v6, v1 + 6, 0x41uLL);
  AudioConfiguration.hash(into:)(v7);
  return sub_1C9A93D18();
}

void sub_1C97F3FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97AEB94();
  v26 = v25;
  v38 = v27;
  sub_1C97A2CEC(&qword_1EC3C7D00, &qword_1C9AA06E8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97E86E4();
  sub_1C97BE20C(v26, v26[3]);
  v29 = sub_1C97F9A10();
  sub_1C97FB364(&type metadata for SoundDetection.Request.CodingKeys, v30, v29);
  if (v24)
  {
    sub_1C97A592C(v26);
  }

  else
  {
    LOBYTE(v39[0]) = 0;
    sub_1C97A6C28();
    sub_1C97FB234();
    sub_1C9A938F8();
    v31 = v40;
    v36 = v41;
    v49 = v42;
    v35 = v43;
    v37 = v44;
    v34 = v45;
    sub_1C97FB3CC();
    sub_1C97A62C0();
    sub_1C97FB234();
    sub_1C9A938F8();
    v32 = sub_1C97FB2A8();
    v33(v32);
    memcpy(&v48[7], v47, 0x41uLL);
    v39[0] = v31;
    v39[1] = v36;
    LOBYTE(v39[2]) = v49;
    v39[3] = v35;
    v39[4] = v37;
    LOBYTE(v39[5]) = v34;
    memcpy(&v39[5] + 1, v48, 0x48uLL);
    memcpy(v38, v39, 0x71uLL);
    sub_1C97F9898(v39, &v40);
    sub_1C97A592C(v26);
    v40 = v31;
    v41 = v36;
    v42 = v49;
    v43 = v35;
    v44 = v37;
    v45 = v34;
    memcpy(v46, v48, sizeof(v46));
    sub_1C97F9A64(&v40);
  }

  sub_1C97BE538();
  sub_1C97AEB5C();
}

uint64_t sub_1C97F4250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C97F42A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97F312C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C97F42CC(uint64_t a1)
{
  v2 = sub_1C97F9A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97F4308(uint64_t a1)
{
  v2 = sub_1C97F9A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97F434C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 40);
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_1C9A93CC8();
  sub_1C97F34F4(v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C97F43E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97F3AC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C97F4410(uint64_t a1)
{
  v2 = sub_1C97F9A10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97F444C(uint64_t a1)
{
  v2 = sub_1C97F9A10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97F4490()
{
  sub_1C9A93CC8();
  sub_1C97F3E1C(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C97F4500()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1C97F4590;

  return sub_1C988FB68();
}

uint64_t sub_1C97F4590(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[4] = a1;
  v5[5] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C97F489C, 0, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    v5[6] = v9;
    *v9 = v7;
    v9[1] = sub_1C97F4718;

    return sub_1C98A4288();
  }
}

uint64_t sub_1C97F4718(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 56) = v1;

  if (v1)
  {
    v9 = sub_1C97F48FC;
  }

  else
  {
    *(v5 + 64) = a1;
    v9 = sub_1C97F482C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C97F482C()
{
  sub_1C97AA884();

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_1C97F489C()
{
  sub_1C97AA884();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C97F48FC()
{
  sub_1C97AA884();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C97F4964(uint64_t a1, uint64_t a2)
{
  sub_1C99DC144();
  v5[3] = sub_1C97A2CEC(&unk_1EC3C7D90, &qword_1C9AB3BE0);
  v5[4] = sub_1C97FA398();
  v5[0] = a2;

  sub_1C99DC184(v5, v3);

  return sub_1C97A592C(v5);
}

uint64_t sub_1C97F49F4()
{
  sub_1C97AA884();

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97F4A88;
  sub_1C97FB30C();

  return sub_1C97F4500();
}

uint64_t sub_1C97F4A88()
{
  sub_1C97AA884();
  v3 = v2;
  sub_1C97AA890();
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1C97F4B94()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1C97F4C24;
  sub_1C97FB30C();

  return sub_1C97F49F4();
}

uint64_t sub_1C97F4C24(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

void sub_1C97F4D20()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v28 = sub_1C97A2CEC(&qword_1EC3C7C90, &qword_1C9AA0698);
  sub_1C97AE9C8();
  v29 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v31 = sub_1C97A2CEC(&qword_1EC3C7C98, &qword_1C9AA06A0);
  sub_1C97AE9C8();
  v33 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97FB2D8();
  v30 = sub_1C97A2CEC(&unk_1EC3C7CA0, &unk_1C9AA06A8);
  sub_1C97AE9C8();
  v32 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  memcpy(v35, v4, 0x71uLL);
  v15 = swift_allocObject();
  memcpy((v15 + 16), v4, 0x71uLL);
  sub_1C97D9AF8(v2, v34);
  v16 = swift_allocObject();
  sub_1C979B054(v34, v16 + 16);
  memcpy((v16 + 56), v35, 0x71uLL);
  v17 = swift_allocObject();
  v17[2] = sub_1C97F9848;
  v17[3] = v15;
  v17[4] = sub_1C97F9864;
  v17[5] = v16;
  sub_1C97AA878();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1C97F9884;
  *(v18 + 24) = v17;
  sub_1C97F9898(v35, v34);
  sub_1C97F9898(v35, v34);

  sub_1C97A2CEC(&unk_1EC3CD140, &qword_1C9AA06B8);
  sub_1C97F9CFC(&unk_1EC3C7CB0);
  sub_1C9A91EF8();
  type metadata accessor for SNDetectionResult(v19);
  sub_1C97F9CFC(&unk_1EC3CD150);
  v20 = v28;
  sub_1C9A92048();
  sub_1C97DAA58();
  v21(v8, v20);

  sub_1C97F9CFC(&unk_1EC3C7CC0);
  v22 = v31;
  sub_1C9A91F68();
  sub_1C97DAA58();
  v23(v0, v22);
  sub_1C97E8518();
  sub_1C97F9CFC(v24);
  v25 = v30;
  sub_1C9A91F28();
  sub_1C97DAA58();
  v26(v14, v25);
  sub_1C97AEB5C();
}

id sub_1C97F51BC(__int128 *a1)
{
  v1 = a1[1];
  v10 = *a1;
  v11[0] = v1;
  *(v11 + 9) = *(a1 + 25);
  v2 = type metadata accessor for SNDetectSoundRequest(*(v11 + 9));
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR___SNDetectSoundRequest_impl];
  v5 = *(v11 + 9);
  v6 = v11[0];
  *v4 = v10;
  *(v4 + 1) = v6;
  *(v4 + 25) = v5;
  sub_1C97A6BCC(&v10, v9);
  v8.receiver = v3;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1C97F524C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_1C97A5A8C(a1, v6);
  memcpy(__dst, (a2 + 48), 0x41uLL);
  memcpy(__src, (a2 + 48), 0x41uLL);
  v8 = *(v7 + 8);
  sub_1C97A6264(__dst, v12);
  v9 = v8(__src, v6, v7);
  if (v3)
  {
    memcpy(v12, __src, 0x41uLL);
    return sub_1C97E8084(v12);
  }

  else
  {
    v11 = v9;
    memcpy(v12, __src, 0x41uLL);
    result = sub_1C97E8084(v12);
    *a3 = v11;
  }

  return result;
}

uint64_t sub_1C97F5348@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  memcpy(__dst, (*a1 + OBJC_IVAR___SNDetectionResult_impl), sizeof(__dst));
  memcpy(a2, (v3 + OBJC_IVAR___SNDetectionResult_impl), 0x60uLL);
  return sub_1C97F9900(__dst, &v5);
}

uint64_t sub_1C97F53B4(uint64_t a1)
{
  sub_1C97BE32C(a1);
  MEMORY[0x1CCA91980](0);
  return sub_1C9A93D18();
}

uint64_t sub_1C97F541C()
{
  sub_1C97A2CEC(&qword_1EC3C7D80, &qword_1C9AA0718);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C9AA0140;
  *(v0 + 32) = @"Applause";
  *(v0 + 40) = @"Babble";
  *(v0 + 48) = @"Cheering";
  *(v0 + 56) = @"Laughter";
  *(v0 + 64) = @"Music";
  *(v0 + 72) = @"Speech";
  *(v0 + 80) = @"Smoke Alarm";
  v1 = @"Applause";
  v2 = @"Babble";
  v3 = @"Cheering";
  v4 = @"Laughter";
  v5 = @"Music";
  v6 = @"Speech";
  v7 = @"Smoke Alarm";
  return v0;
}

uint64_t (*sub_1C97F5530(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void)))(void)
{
  a3(a1, a2);
  a4(0);
  sub_1C97FB318();
  sub_1C9A92768();
  sub_1C97FB3E4();

  return a4;
}

uint64_t sub_1C97F558C()
{
  v101 = MEMORY[0x1E69E7CC0];
  sub_1C97A2CEC(&qword_1EC3C78F8, &qword_1C9AA0710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = @"SNVGGishApplauseModel";
  v1 = @"SNVGGishApplauseModel";
  sub_1C98D0140(inited);
  v2 = swift_initStackObject();
  sub_1C97FB0EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
  *(v12 + 32) = @"SNVGGishBabbleModel";
  v13 = @"SNVGGishBabbleModel";
  sub_1C98D0140(inited);
  v14 = swift_initStackObject();
  sub_1C97FB0EC(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  *(v24 + 32) = @"SNVGGishCheeringModel";
  v25 = @"SNVGGishCheeringModel";
  sub_1C98D0140(inited);
  v26 = swift_initStackObject();
  sub_1C97FB0EC(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  *(v36 + 32) = @"SNVGGishLaughterModel";
  v37 = @"SNVGGishLaughterModel";
  sub_1C98D0140(inited);
  v38 = swift_initStackObject();
  sub_1C97FB0EC(v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  *(v48 + 32) = @"SNVGGishMusicModel";
  v49 = @"SNVGGishMusicModel";
  sub_1C98D0140(inited);
  v50 = swift_initStackObject();
  sub_1C97FB0EC(v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
  *(v60 + 32) = @"SNVGGishSpeechModel";
  v61 = @"SNVGGishSpeechModel";
  sub_1C98D0140(inited);
  v62 = swift_initStackObject();
  sub_1C97FB0EC(v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
  *(v72 + 32) = @"SNSoundPrintALaughterModel";
  v73 = @"SNSoundPrintALaughterModel";
  sub_1C98D0140(inited);
  v74 = swift_initStackObject();
  sub_1C97FB0EC(v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  *(v84 + 32) = @"SNSoundPrintAShoutingModel";
  v85 = @"SNSoundPrintAShoutingModel";
  sub_1C98D0140(inited);
  v86 = swift_initStackObject();
  sub_1C97FB0EC(v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
  *(v96 + 32) = @"SNSoundPrintASpeechModel";
  v97 = @"SNSoundPrintASpeechModel";
  sub_1C98D0140(inited);
  v98 = swift_initStackObject();
  *(v98 + 16) = xmmword_1C9A9EDD0;
  *(v98 + 32) = @"SNSoundPrintASmokeAlarmModel";
  v99 = @"SNSoundPrintASmokeAlarmModel";
  sub_1C98D0140(v98);
  return v101;
}

uint64_t sub_1C97F57F4()
{
  v1 = *(v0 + OBJC_IVAR___SNDetectSoundRequest_impl + 24);

  sub_1C9A92478();
  sub_1C97FB3E4();

  return v1;
}

uint64_t sub_1C97F589C(void *a1)
{
  v3 = sub_1C9A924A8();
  v5 = v4;

  v6 = v1 + OBJC_IVAR___SNDetectSoundRequest_impl;
  *(v6 + 24) = v3;
  *(v6 + 32) = v5;
}

id sub_1C97F593C()
{
  v1 = *(v0 + OBJC_IVAR___SNDetectSoundRequest_impl + 40);
  v2 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
  v3 = v2;
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = 3;
    }

    [v2 setComputeUnits_];
  }

  return v3;
}

void sub_1C97F5A04(void *a1)
{
  v3 = sub_1C98C6A9C(a1);

  *(v1 + OBJC_IVAR___SNDetectSoundRequest_impl + 40) = v3;
}

double sub_1C97F5A48@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + OBJC_IVAR___SNDetectSoundRequest_impl + 8);
  v5 = *(v1 + OBJC_IVAR___SNDetectSoundRequest_impl + 24);
  v6 = *(v1 + OBJC_IVAR___SNDetectSoundRequest_impl + 32);
  v7 = *(v1 + OBJC_IVAR___SNDetectSoundRequest_impl + 40);
  v8 = *(v1 + OBJC_IVAR___SNDetectSoundRequest_impl + 16);
  v16[0] = *(v1 + OBJC_IVAR___SNDetectSoundRequest_impl);
  v16[1] = v4;
  v17 = v8;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v9 = sub_1C97E87BC();
  sub_1C97F5D50(v9, v10, v8);

  sub_1C97F5B0C(v16, v21);
  v11 = sub_1C97E87BC();
  sub_1C97A6B9C(v11, v12, v8);

  if (!v2)
  {
    v14 = v21[1];
    *a1 = v21[0];
    a1[1] = v14;
    result = *&v22;
    v15 = v23;
    a1[2] = v22;
    a1[3] = v15;
  }

  return result;
}

double sub_1C97F5B0C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 40);
  v11 = *a1;
  v12 = v4;
  v13 = v5;
  sub_1C97F5D50(v11, v4, v5);
  v7 = sub_1C9A92478();
  sub_1C98B7780(&v11, v6, v14);
  sub_1C97A6B9C(v11, v12, v13);

  if (!v2)
  {
    v9 = v14[1];
    *a2 = v14[0];
    a2[1] = v9;
    result = *&v15;
    v10 = v16;
    a2[2] = v15;
    a2[3] = v10;
  }

  return result;
}

uint64_t sub_1C97F5BBC()
{
  sub_1C97F5A48(v3);
  if (!v1)
  {
    type metadata accessor for SNSoundDetector();
    v0 = swift_allocObject();
    sub_1C97F7D34(v3);
  }

  return v0;
}

void *SNDetectSoundRequest.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = v1 + OBJC_IVAR___SNDetectSoundRequest_impl;
  v5 = *(v1 + OBJC_IVAR___SNDetectSoundRequest_impl);
  v6 = *(v4 + 8);
  v8 = *(v4 + 24);
  v7 = *(v4 + 32);
  v9 = *(v4 + 40);
  v10 = *(v4 + 16);
  v11 = objc_allocWithZone(ObjectType);
  v12 = &v11[OBJC_IVAR___SNDetectSoundRequest_impl];
  *v12 = v5;
  *(v12 + 1) = v6;
  v12[16] = v10;
  *(v12 + 3) = v8;
  *(v12 + 4) = v7;
  v12[40] = v9;
  sub_1C97F5D50(v5, v6, v10);
  v14.receiver = v11;
  v14.super_class = ObjectType;

  result = objc_msgSendSuper2(&v14, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t sub_1C97F5D50(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return v3;
    }
  }
}

void *SNDetectSoundRequest.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNDetectSoundRequest_impl);
  v2 = *(v0 + OBJC_IVAR___SNDetectSoundRequest_impl + 8);
  v3 = *(v0 + OBJC_IVAR___SNDetectSoundRequest_impl + 16);
  sub_1C9A93CC8();
  sub_1C97F5D50(v1, v2, v3);

  sub_1C97F1884(v6);
  sub_1C9A92528();
  sub_1C9A92528();

  sub_1C9A93D18();
  v4 = sub_1C97C926C();
  sub_1C97A6B9C(v4, v2, v3);

  return v6;
}

uint64_t SNDetectSoundRequest.isEqual(_:)(uint64_t a1)
{
  sub_1C97A2C7C(a1, &v5);
  if (v6)
  {
    sub_1C97A2D34(&v5, v4);
    v2 = sub_1C9859978(v4, v1);
    sub_1C97A592C(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}